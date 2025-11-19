void sub_29E06D70C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_editedCycleFactors);
  v4 = *(v3 + 16);
  sub_29E2BF404();
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x29EDCA190];
    do
    {
      v7 = v5;
      while (1)
      {
        if (v7 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v3 + 32 + 16 * v7);
        v5 = v7 + 1;
        v8 = v16;
        v9 = *(&v16 + 1);
        if (sub_29E06FFB4(v8, a1))
        {
          break;
        }

        ++v7;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      aBlock[0] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E180FA4(0, *(v6 + 16) + 1, 1);
        v6 = aBlock[0];
      }

      v10 = v16;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E180FA4((v11 > 1), v12 + 1, 1);
        v10 = v16;
        v6 = aBlock[0];
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 16 * v12 + 32) = v10;
    }

    while (v4 - 1 != v7);
  }

  else
  {
    v6 = MEMORY[0x29EDCA190];
  }

LABEL_15:

  if (*(v6 + 16))
  {
    v13 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers);
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = v6;
    aBlock[4] = sub_29E07018C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF4FA14;
    aBlock[3] = &unk_2A24B9140;
    v15 = _Block_copy(aBlock);

    [v13 notifyObservers_];
    _Block_release(v15);
  }

  else
  {
  }
}

uint64_t sub_29E06D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    sub_29E15B338(a2, a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_29E06D9F8()
{
  sub_29E070064(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);

  sub_29E070064(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_presentation, &qword_2A1A615F0, MEMORY[0x29EDC1D90]);

  return v0;
}

uint64_t sub_29E06DAF8()
{
  sub_29E06D9F8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingUserInfo()
{
  result = qword_2A181B6A8;
  if (!qword_2A181B6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E06DBA4()
{
  sub_29E070194(319, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    sub_29E070194(319, &qword_2A1A615F0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_29E06DD48()
{
  result = qword_2A181B6B8;
  if (!qword_2A181B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B6B8);
  }

  return result;
}

uint64_t sub_29E06DD9C()
{
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCEA4();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E070194(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_29E2C31A4();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_startOfLastMenstrualPeriodDayIndex;
  swift_beginAccess();
  sub_29DE962B4(v0 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29E070064(v10, &qword_2A1A5E340, MEMORY[0x29EDBA2F8]);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
    [v17 setDateStyle_];
    [v17 setTimeStyle_];
    v18 = [*(v0 + 16) currentCalendar];
    sub_29E2BCDC4();

    sub_29E2C3194();
    v19 = sub_29E2BCB04();
    (*(v2 + 8))(v4, v1);
    v20 = [v17 stringFromDate_];

    v21 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    (*(v23 + 8))(v7, v24);
    (*(v12 + 8))(v14, v11);
    return v21;
  }
}

void *sub_29E06E164(char a1)
{
  if (a1)
  {
    v2 = &unk_2A24AF0F0;
    if (!sub_29E204168(1u, *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)) && !*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled))
    {
      return &unk_2A24AF118;
    }
  }

  else
  {
    sub_29E07068C(0, &qword_2A181B6C0, &type metadata for OnboardingUserInfo.Section, MEMORY[0x29EDC9E90]);
    v2 = swift_allocObject();
    *(v2 + 1) = xmmword_29E2CAB20;
    *(v2 + 32) = 0;
    if (*(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 48))
    {
      v2 = sub_29E144C88(1, 2, 1, v2);
      *(v2 + 2) = 2;
      *(v2 + 33) = 4;
    }

    v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds);
    if (sub_29E204168(0, v3) || (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) & 1) != 0 || sub_29E204168(2u, v3) || *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled) == 1)
    {
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_29E144C88((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      *(v2 + v5 + 32) = 1;
    }
  }

  return v2;
}

uint64_t sub_29E06E2E8(unsigned __int8 a1, char a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v32 - v11;
  if ((a2 & 1) == 0)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        v14 = (v7 + 16);
        if (!sub_29E204168(0, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
        {
          sub_29E2C3314();
          (*v14)(v9, v12, v6);
LABEL_20:
          if (qword_2A1A62788 == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_38;
        }

        sub_29E2C3314();
        v15 = *v14;
        goto LABEL_13;
      }

      if (*(*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 48))
      {
        sub_29E204168(2u, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds));
      }

      sub_29E204168(0, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds));
      sub_29E2C3314();
      (*(v7 + 16))(v9, v12, v6);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a1 - 2 < 2)
      {
        return 0;
      }

      v16 = (v7 + 16);
      if (sub_29E204168(2u, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
      {
        sub_29E2C3314();
        v33 = *v16;
        v33(v9, v12, v6);
        if (qword_2A1A62788 == -1)
        {
LABEL_17:
          v17 = qword_2A1A67F80;
          sub_29E2BCC74();
          v18 = v17;
          v32 = sub_29E2C3414();
          v19 = *(v7 + 8);
          v19(v12, v6);
          sub_29E070194(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_29E2CAB20;
          sub_29E2C3314();
          v33(v9, v12, v6);
          sub_29E2BCC74();
          v21 = sub_29E2C3414();
          v23 = v22;
          v19(v12, v6);
          *(v20 + 56) = MEMORY[0x29EDC99B0];
          *(v20 + 64) = sub_29DEB1A44();
          *(v20 + 32) = v21;
          *(v20 + 40) = v23;
LABEL_18:
          v13 = sub_29E2C33B4();

          return v13;
        }

LABEL_39:
        swift_once();
        goto LABEL_17;
      }

      sub_29E2C3314();
      (*v16)(v9, v12, v6);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    swift_once();
LABEL_33:
    v30 = qword_2A1A67F80;
    sub_29E2BCC74();
    v13 = sub_29E2C3414();
    (*(v7 + 8))(v12, v6);
    return v13;
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
LABEL_19:
      sub_29E2C3314();
      (*(v7 + 16))(v9, v12, v6);
      goto LABEL_20;
    }

    if (!sub_29E204168(1u, *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
    {
      if (!*(*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 56))
      {
        goto LABEL_19;
      }

      sub_29E2C3394();
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v24 = qword_2A1A67F80;
      sub_29E2BCC74();
      v25 = v24;
      sub_29E2C3414();
      sub_29E070194(0, &qword_2A1A61CA0, sub_29DEEA958, MEMORY[0x29EDC9E90]);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29E2CAB20;
      sub_29E2C3314();
      (*(v7 + 16))(v9, v12, v6);
      sub_29E2BCC74();
      v27 = sub_29E2C3414();
      v29 = v28;
      (*(v7 + 8))(v12, v6);
      *(v26 + 56) = MEMORY[0x29EDC99B0];
      *(v26 + 64) = sub_29DEB1A44();
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      goto LABEL_18;
    }

    sub_29E2C3314();
    v15 = *(v7 + 16);
LABEL_13:
    v33 = v15;
    v15(v9, v12, v6);
    if (qword_2A1A62788 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  return 0;
}

uint64_t sub_29E06EC3C(uint64_t result, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled;
      }

      else
      {
        *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled) = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) & result & 1;
        v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowProjectionsEnabled;
      }

      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertilityTrackingDisplayTypesVisible;
      goto LABEL_17;
    }

    if (a2 == 3)
    {
      v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_sexualActivityDisplayTypeVisible;
LABEL_17:
      *(v3 + *v4) = result & 1;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled;
      }

      else
      {
        *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = *(v3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) & result & 1;
        v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled;
      }

      goto LABEL_17;
    }

    if (a2 - 2 >= 2)
    {
      v4 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_29E06ED18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E2C2B34();
  v22 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C2B54();
  v11 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v20 = sub_29E2C3CF4();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_29E06F028;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24B8F60;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_29DE8EE38(a3);

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29E06F0E0(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E070194(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  v17 = v20;
  MEMORY[0x29ED804D0](0, v13, v10, v15);
  _Block_release(v15);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

uint64_t sub_29E06F028()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) authorizationStatus];
  result = 0;
  if ((v3 - 2) >= 3)
  {
    if (v3 > 1)
    {
      goto LABEL_6;
    }

    v5 = 0;
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) = 0;
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = 0;
    result = 1;
    v6 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_fertileWindowNotificationsEnabled;
  }

  else
  {
    v5 = 1;
    v6 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized;
  }

  *(v1 + *v6) = v5;
LABEL_6:
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t sub_29E06F0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E06F0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E06F128(uint64_t a1, uint64_t a2)
{
  sub_29E070194(0, &qword_2A1A5E340, MEMORY[0x29EDBA2F8], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E06F1BC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_29E2C4484();
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  while (1)
  {
    v3 = sub_29E151758(v2, 0);
    sub_29E2BF404();
    v1 = sub_29E06F6D8(&v5, (v3 + 32), v2, v1);
    sub_29DF219B8();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

void sub_29E06F26C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_29E2C4484())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E06FCF0();
    sub_29E2C3834();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    sub_29E2BF404();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_29DF219B8();
      return;
    }

    while (1)
    {
      v16 = sub_29E061608(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_29E2C44C4())
      {
        sub_29DE9408C(0, &qword_2A1A61D50);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_29E06F48C(uint64_t a1)
{
  sub_29E070194(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;
    sub_29E2BF404();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_29E061BC8(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_29E070064(v5, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_29E06F6D8(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_29E2C4444();
  sub_29DE9408C(0, &qword_2A1A61D50);
  sub_29E06FCF0();
  result = sub_29E2C3834();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_29E2C44C4())
      {
        goto LABEL_30;
      }

      sub_29DE9408C(0, &qword_2A1A61D50);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_29E06F8F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_29E2BC5F4();
  v42 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_29E06FB98(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {
        sub_29E2BF404();
        goto LABEL_24;
      }

      v11 += 16;
      sub_29E2BF404();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_29E06FCF0()
{
  result = qword_2A181DB70;
  if (!qword_2A181DB70)
  {
    sub_29DE9408C(255, &qword_2A1A61D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DB70);
  }

  return result;
}

void sub_29E06FD60(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_29E2BF404();
    swift_unknownObjectRetain();
    sub_29E2C4444();
    sub_29DE9408C(0, &qword_2A1A61D50);
    sub_29E06FCF0();
    sub_29E2C3834();
    v5 = v18;
    v4 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  while (v5 < 0)
  {
    if (!sub_29E2C44C4() || (sub_29DE9408C(0, &qword_2A1A61D50), swift_dynamicCast(), (v13 = v17) == 0))
    {
LABEL_18:
      sub_29DF219B8();

      return;
    }

LABEL_9:
    sub_29DE9408C(0, &qword_2A1A619F0);
    v14 = sub_29E2C40D4();

    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v16 = *(v4 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

BOOL sub_29E06FFB4(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 40);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 2;
    v5 = *(v2 - 1);
    v6 = *v2;
    sub_29DE9408C(0, &qword_2A1A619F0);
    v7 = v5;
    v8 = v6;
    v9 = sub_29E2C40D4();

    v2 = v4;
  }

  while ((v9 & 1) == 0);
  return v3 == 0;
}

uint64_t sub_29E070064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E070194(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E07013C(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2A1C733A0](v1, 32, 7);
}

void sub_29E070194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E0701F8(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_29E070208(unsigned __int8 a1, char a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v17 - v10;
  if ((a2 & 1) == 0)
  {
    if (a1 == 4)
    {
      sub_29E2C3314();
      (*(v6 + 16))(v8, v11, v5);
      if (qword_2A1A62788 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_29E2C4584();

    v18 = 0xD000000000000014;
    v19 = 0x800000029E2FBCF0;
LABEL_8:
    v17[1] = a1 + 1;
    v12 = sub_29E2C48D4();
    MEMORY[0x29ED7FCC0](v12);

    MEMORY[0x29ED7FCC0](0x454C5449545FLL, 0xE600000000000000);
    sub_29E2C3394();
    (*(v6 + 16))(v8, v11, v5);
    if (qword_2A1A62788 == -1)
    {
LABEL_9:
      v13 = qword_2A1A67F80;
      sub_29E2BCC74();
      v14 = sub_29E2C3414();
      (*(v6 + 8))(v11, v5);
      return v14;
    }

LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  if (a1)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_29E2C4584();

    v18 = 0xD000000000000014;
    v19 = 0x800000029E2FBCB0;
    goto LABEL_8;
  }

  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v16 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

unint64_t sub_29E070610()
{
  result = qword_2A181B6C8;
  if (!qword_2A181B6C8)
  {
    sub_29E07068C(255, &qword_2A181B6D0, &type metadata for OnboardingUserInfo.Section, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B6C8);
  }

  return result;
}

void sub_29E07068C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E0706E0()
{
  result = qword_2A181B6D8;
  if (!qword_2A181B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B6D8);
  }

  return result;
}

id sub_29E070778()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController____lazy_storage___heightAnchor;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController____lazy_storage___heightAnchor];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController____lazy_storage___heightAnchor];
LABEL_6:
    v12 = v2;
    return v3;
  }

  result = [v0 tableView];
  if (result)
  {
    v5 = result;
    v6 = [result heightAnchor];

    result = [v0 tableView];
    if (result)
    {
      v7 = result;
      [result contentSize];
      v9 = v8;

      v10 = [v6 constraintEqualToConstant_];
      [v10 setActive_];
      v11 = *&v0[v1];
      *&v0[v1] = v10;
      v3 = v10;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29E070890(uint64_t a1, uint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v59[-v11];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_tableViewHeight] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController____lazy_storage___heightAnchor] = 0;
  v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_topic] = 0;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo] = a1;
  sub_29DE9DC34(a2, &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_pinnedContentManager]);

  sub_29E2C3314();
  (*(v7 + 16))(v9, v12, v6);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v7 + 8))(v12, v6);
  v14 = sub_29E2C33A4();

  v15 = type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController();
  v60.receiver = v2;
  v60.super_class = v15;
  v16 = objc_msgSendSuper2(&v60, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v14, 0, 0, 1);

  v17 = objc_allocWithZone(MEMORY[0x29EDC7D08]);
  v18 = v16;
  v19 = [v17 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTableView_];

  v20 = [v18 tableView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  type metadata accessor for OnboardingCycleFactorsForcedOffTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = sub_29E2C33A4();
  [v21 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v23];

  v24 = [v18 tableView];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = [objc_opt_self() systemBackgroundColor];
  [v25 setBackgroundColor_];

  v27 = [v18 tableView];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  v29 = [v18 tableView];
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v29;
  v31 = [v18 tableView];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  [v31 hk_onboardingListEdgeInsets];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  [v30 _setSectionContentInset_];
  v41 = [v18 tableView];
  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = v41;
  v43 = [objc_opt_self() reuseIdentifier];
  if (!v43)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v44 = v43;
  sub_29DE9408C(0, &qword_2A181B778);
  [v42 registerClass:swift_getObjCClassFromMetadata() forCellReuseIdentifier:v44];

  v45 = [v18 tableView];
  if (!v45)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v46 = v45;
  type metadata accessor for TappableTableViewFooter();
  v47 = swift_getObjCClassFromMetadata();
  v48 = sub_29E2C33A4();
  [v46 registerClass:v47 forHeaderFooterViewReuseIdentifier:v48];

  v49 = [v18 tableView];
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v50 = v49;
  [v49 setDataSource_];

  v51 = [v18 tableView];
  if (!v51)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v52 = v18;
  [v51 setDelegate_];

  v53 = v52;
  v54 = [v53 navigationItem];
  v55 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:1 target:v53 action:sel_cancelButtonTapped_];

  [v54 setRightBarButtonItem_];
  v56 = [v53 navigationItem];

  v57 = [v56 rightBarButtonItem];
  if (v57)
  {
    if (qword_2A1A60ED8 != -1)
    {
      swift_once();
    }

    *&v59[8] = xmmword_2A1A67E58;
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0xD000000000000011, 0x800000029E2EF140);
    v58 = sub_29E2C33A4();

    [v57 setAccessibilityIdentifier_];
  }

  else
  {
  }

  sub_29DE93B3C(a2);
}

id sub_29E070FF8()
{
  [*(*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers) unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E071130()
{
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  result = [v0 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  [result hk_onboardingListEdgeInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 _setSectionContentInset_];
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_tableViewHeight;
  v13 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_tableViewHeight];
  result = [v0 tableView];
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  [result contentSize];
  v16 = v15;

  if (v13 == v16)
  {
LABEL_10:
    v26.receiver = v0;
    v26.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController();
    return objc_msgSendSuper2(&v26, sel_viewDidLayoutSubviews);
  }

  result = [v0 tableView];
  if (!result)
  {
    goto LABEL_14;
  }

  v17 = result;
  [result contentSize];
  v19 = v18;

  *&v0[v12] = v19;
  result = [v0 tableView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  [result reloadData];

  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = result;
  [result layoutIfNeeded];

  v22 = sub_29E070778();
  result = [v0 tableView];
  if (result)
  {
    v23 = result;
    [result contentSize];
    v25 = v24;

    [v22 setConstant_];
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29E07138C()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MenstrualCyclesOnboardingPeriodTrackingViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo];
  sub_29DE9408C(0, &qword_2A1A626C0);

  v3 = sub_29E2C3CF4();
  [*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_observers) registerObserver:v1 queue:v3];

  v4 = sub_29E08D744();
  [v4 addTarget:v1 action:sel_nextButtonTapped_ forControlEvents:64];
  v5 = [v1 buttonTray];
  [v5 addButton_];

  v6 = [v1 headerView];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v8 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000014, 0x800000029E2FC050);
  v7 = sub_29E2C33A4();

  [v6 setAccessibilityIdentifier_];
}

void sub_29E07158C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E2C0514();
  v77 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v67 - v5;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v67 - v8;
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo;
  sub_29DE9DC34(&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_pinnedContentManager], v78);
  v11 = objc_allocWithZone(type metadata accessor for MenstrualCyclesOnboardingFertilityTrackingViewController());

  sub_29E11C8B0(v12, v78);
  v14 = v13;
  v15 = &v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v71 = v15;
  v16 = *(v15 + 1);
  v72 = v14;
  *&v14[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin56MenstrualCyclesOnboardingFertilityTrackingViewController_delegate + 8] = v16;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_29E2C04B4();
  v76 = v0;
  v17 = v0;
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A34();
  v68 = v17;

  v20 = os_log_type_enabled(v18, v19);
  v74 = v2;
  v75 = v10;
  v69 = v6;
  v70 = ObjectType;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v78[0] = v22;
    *v21 = 136446466;
    v23 = sub_29E2C4AE4();
    v25 = sub_29DFAA104(v23, v24, v78);

    *(v21 + 4) = v25;
    v26 = v76;
    v27 = v77;
    *(v21 + 12) = 2082;
    if (*(*&v26[v10] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled))
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (*(*&v26[v10] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled))
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    v30 = sub_29DFAA104(v28, v29, v78);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Period projections enabled: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v22, -1, -1);
    v31 = v21;
    v2 = v74;
    MEMORY[0x29ED82140](v31, -1, -1);

    v32 = v27;
    v6 = v69;
    v33 = *(v32 + 8);
    v33(v9, v2);
  }

  else
  {

    v33 = *(v77 + 8);
    v33(v9, v2);
  }

  sub_29E2C04B4();
  v34 = v68;
  v35 = sub_29E2C0504();
  v36 = sub_29E2C3A34();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v78[0] = v38;
    *v37 = 136446466;
    v39 = sub_29E2C4AE4();
    v41 = sub_29DFAA104(v39, v40, v78);

    *(v37 + 4) = v41;
    v42 = *&v76[v75];
    *(v37 + 12) = 2082;
    if (*(v42 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled))
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (*(v42 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled))
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    v45 = sub_29DFAA104(v43, v44, v78);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Period notifications enabled: %{public}s", v37, 0x16u);
    swift_arrayDestroy();
    v46 = v38;
    v2 = v74;
    MEMORY[0x29ED82140](v46, -1, -1);
    MEMORY[0x29ED82140](v37, -1, -1);

    v47 = v69;
  }

  else
  {

    v47 = v6;
  }

  v33(v47, v2);
  v48 = v73;
  sub_29E2C04B4();
  v49 = v34;
  v50 = sub_29E2C0504();
  v51 = sub_29E2C3A34();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v78[0] = v53;
    *v52 = 136446466;
    v54 = sub_29E2C4AE4();
    v56 = sub_29DFAA104(v54, v55, v78);

    *(v52 + 4) = v56;
    v57 = *&v76[v75];
    *(v52 + 12) = 2082;
    if (*(v57 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled))
    {
      v58 = 1702195828;
    }

    else
    {
      v58 = 0x65736C6166;
    }

    if (*(v57 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled))
    {
      v59 = 0xE400000000000000;
    }

    else
    {
      v59 = 0xE500000000000000;
    }

    v60 = sub_29DFAA104(v58, v59, v78);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_29DE74000, v50, v51, "[%{public}s] Deviation detection enabled: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v53, -1, -1);
    MEMORY[0x29ED82140](v52, -1, -1);

    v61 = v73;
    v62 = v74;
  }

  else
  {

    v61 = v48;
    v62 = v2;
  }

  v33(v61, v62);
  v63 = v71;
  v64 = v72;
  [v49 showViewController:v72 sender:0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v65 = *(v63 + 1);
    v66 = swift_getObjectType();
    sub_29E199CD0(7, (*(*&v76[v75] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) & 1) == 0, v66, v65);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_29E071CC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_29E071F30(char a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = v21 - v13;
  if (a1)
  {
    v21[0] = a2;
    sub_29DE9408C(0, &qword_2A181B7A0);
    sub_29E2C3314();
    (*(v8 + 16))(v10, v14, v7);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v15 = qword_2A1A67F80;
    sub_29E2BCC74();
    v16 = sub_29E2C3414();
    v18 = v17;
    (*(v8 + 8))(v14, v7);
    v19 = sub_29DE9A604(v16, v18, 1, 0);

    [v21[0] presentViewController:v19 animated:1 completion:0];
  }

  return a3(a1 & 1, v12);
}

uint64_t sub_29E072210(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo;

  v5 = sub_29E2BCFA4();
  v6 = sub_29E06E164(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_topic));
  if (v5 >= v6[2])
  {
    goto LABEL_30;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = *(v6 + v5 + 32);

    if (v7 <= 1)
    {
      if (!v7)
      {
        if (sub_29E204168(0, *(*(v1 + v4) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
        {
LABEL_12:
          v11 = sub_29E2C33A4();
          v12 = sub_29E2BCF24();
          v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:v12];

          type metadata accessor for OnboardingCycleFactorsForcedOffTableViewCell();
          v14 = swift_dynamicCastClassUnconditional();
          sub_29E070208(v7, 0);
          sub_29E000D1C();

          v15 = objc_opt_self();
          v16 = v13;
          v17 = [v15 hkmc_cycleLogCellBackgroundColor];
          [v14 setBackgroundColor_];

          sub_29E104CCC(8, v7, 0);
          v18 = sub_29E2C33A4();

          [v14 setAccessibilityIdentifier_];
LABEL_27:

          return v14;
        }

LABEL_13:
        v19 = [objc_opt_self() reuseIdentifier];
        if (v19)
        {
          v20 = v19;
          v21 = sub_29E2BCF24();
          v22 = [a1 dequeueReusableCellWithIdentifier:v20 forIndexPath:v21];

          objc_opt_self();
          v14 = swift_dynamicCastObjCClassUnconditional();
          [v14 setDelegate_];
          v23 = v22;
          v24 = [v14 textLabel];
          if (v24)
          {
            v25 = v24;
            sub_29E070208(v7, 0);
            v26 = sub_29E2C33A4();

            [v25 setText_];
          }

          v27 = [v14 textLabel];
          if (v27)
          {
            v28 = v27;
            [v27 setNumberOfLines_];
          }

          if (v7 <= 1)
          {
            if (v7)
            {
              v30 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled;
            }

            else
            {
              v30 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled;
            }
          }

          else
          {
            if ((v7 - 2) < 2)
            {
              v29 = 0;
LABEL_26:
              [v14 setOn_];
              v31 = objc_opt_self();
              v16 = v23;
              v32 = [v31 hkmc_cycleLogCellBackgroundColor];
              [v14 setBackgroundColor_];

              sub_29E104CCC(8, v7, 0);
              v18 = sub_29E2C33A4();

              [v14 setAccessibilityIdentifier_];

              goto LABEL_27;
            }

            v30 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled;
          }

          v29 = *(*(v2 + v4) + *v30);
          goto LABEL_26;
        }

        goto LABEL_29;
      }

      v9 = *(v1 + v4);
      v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds;
      if (!sub_29E204168(0, *(v9 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds)))
      {
        goto LABEL_13;
      }

      v8 = *(v9 + v10);
    }

    else
    {
      if ((v7 - 2) < 2)
      {
        goto LABEL_13;
      }

      v8 = *(*(v1 + v4) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_suppressedAnalysisKinds);
    }

    if (sub_29E204168(2u, v8))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

void sub_29E0727E8(void *a1, uint64_t a2)
{
  v5 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C3384();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = v25 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo);

  v14 = sub_29E06E164(0);
  if (*(v14 + 2) <= a2)
  {
  }

  else
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    v25[0] = v7;
    v15 = a1;
    v16 = v14[a2 + 32];

    v13 = sub_29E06E2E8(v16, 0);
    a2 = v17;

    if (a2)
    {
      v18 = sub_29E2C33A4();
      v19 = [v15 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v19)
      {
        type metadata accessor for TappableTableViewFooter();
        swift_dynamicCastClassUnconditional();
        sub_29E2C3314();
        v7 = v25[0];
        (*(v25[0] + 16))(v9, v12, v6);
        if (qword_2A1A62788 == -1)
        {
LABEL_6:
          v20 = qword_2A1A67F80;
          sub_29E2BCC74();
          v21 = sub_29E2C3414();
          v23 = v22;
          (*(v7 + 8))(v12, v6);
          v24 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_29E1054C0(v13, a2, v21, v23, sub_29E073D54, v24);

          return;
        }

LABEL_10:
        swift_once();
        goto LABEL_6;
      }

      __break(1u);
    }
  }
}

void sub_29E072B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*(*(Strong + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_countryGatingHandler) + 48) != 0;
    v2 = Strong;
    v3 = type metadata accessor for LearnMoreViewController();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
    v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
    v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = v1;
    v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 4;
    v7.receiver = v4;
    v7.super_class = v3;
    v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
    sub_29DF91550();
    v6 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v2 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_29E072D18(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v70) = a2;
  v5 = sub_29E2BCEC4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x2A1C7C4A8](v12).n128_u64[0];
  v15 = &v65 - v14;
  v16 = [v3 tableView];
  if (!v16)
  {
    goto LABEL_43;
  }

  if (!a1)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v17 = v16;
  v18 = [v16 indexPathForCell_];

  if (!v18)
  {
    return;
  }

  v68 = v6;
  sub_29E2BCF44();

  (*(v9 + 32))(v15, v11, v8);
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_userInfo;

  v20 = sub_29E2BCFA4();
  v21 = sub_29E06E164(0);
  if (v20 >= v21[2])
  {

    goto LABEL_13;
  }

  if (v20 < 0)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v66 = v5;
  v67 = v15;
  v22 = *(v21 + v20 + 32);

  if (v22 == 1 && (v70 & 1) != 0)
  {
    v23 = *&v3[v19];
    v24 = swift_allocObject();
    v24[2] = v3;
    v24[3] = nullsub_1;
    v24[4] = 0;
    v25 = objc_opt_self();

    v26 = v3;
    v65 = [v25 currentNotificationCenter];
    v27 = swift_allocObject();
    v27[2] = v23;
    v27[3] = sub_29E073D48;
    v27[4] = v24;
    v75 = sub_29DFF5ABC;
    v76 = v27;
    aBlock = MEMORY[0x29EDCA5F8];
    v72 = 1107296256;
    v73 = sub_29DF6E81C;
    v74 = &unk_2A24B9490;
    v28 = _Block_copy(&aBlock);

    v29 = v65;
    [v65 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v28);
  }

  v30 = sub_29E06E164(0);

  v31 = *&v3[v19];
  if (v22 <= 1)
  {
    if (v22)
    {
      v33 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled;
    }

    else
    {
      *(v31 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationNotificationsEnabled) = *(v31 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_isHealthNotificationsAuthorized) & v70 & 1;
      v33 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled;
    }

    v15 = v67;
  }

  else
  {
    v32 = v22 - 2;
    v15 = v67;
    if (v32 < 2)
    {
      goto LABEL_19;
    }

    v33 = &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled;
  }

  *(v31 + *v33) = v70 & 1;
LABEL_19:
  if (*(v31 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_menstruationProjectionsEnabled) == 1)
  {
    v34 = 1;
    if (!sub_29E204168(1u, v30))
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v34 = *(v31 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18OnboardingUserInfo_deviationDetectionEnabled);
  if (v34 == sub_29E204168(1u, v30))
  {
LABEL_27:
    v37 = v30[2];
    v38 = v68;
    if (!v37)
    {
LABEL_31:
      (*(v9 + 8))(v15, v8);

      return;
    }

    v39 = 0;
    while (*(v30 + v39 + 32) != 1)
    {
      if (v37 == ++v39)
      {
        goto LABEL_31;
      }
    }

    v40 = [v3 tableView];
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = v40;
    sub_29E073C80(0, &unk_2A181B780, MEMORY[0x29EDC9E90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_29E2CAB20;
    *(v42 + 32) = v39;
    aBlock = v42;
    sub_29E073C28();
    sub_29E073C80(0, &qword_2A181B790, MEMORY[0x29EDC9A40]);
    sub_29E073CD4();
    v43 = v69;
    v44 = v66;
    sub_29E2C43F4();
    v45 = sub_29E2BCEB4();
    (*(v38 + 8))(v43, v44);
    [v41 reloadSections:v45 withRowAnimation:100];

LABEL_13:
    (*(v9 + 8))(v15, v8);
    return;
  }

LABEL_21:
  v35 = v30[2];
  if (v35)
  {
    v36 = 0;
    while (*(v30 + v36 + 32) != 1)
    {
      if (v35 == ++v36)
      {
        goto LABEL_35;
      }
    }

    v35 = v36;
  }

LABEL_35:

  v46 = [v3 tableView];
  v47 = v46;
  if (!v34)
  {
    if (v46)
    {
      v57 = swift_allocObject();
      v57[2] = a1;
      v57[3] = v3;
      v57[4] = v35;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_29E073B94;
      *(v58 + 24) = v57;
      v75 = sub_29E073BBC;
      v76 = v58;
      aBlock = MEMORY[0x29EDCA5F8];
      v72 = 1107296256;
      v73 = sub_29E21894C;
      v74 = &unk_2A24B92D8;
      v59 = _Block_copy(&aBlock);
      v60 = v3;
      v61 = a1;

      v62 = swift_allocObject();
      *(v62 + 16) = a1;
      v75 = sub_29E073BDC;
      v76 = v62;
      aBlock = MEMORY[0x29EDCA5F8];
      v72 = 1107296256;
      v73 = sub_29E1F3494;
      v74 = &unk_2A24B9328;
      v63 = _Block_copy(&aBlock);
      v64 = v61;

      [v47 performBatchUpdates:v59 completion:v63];
      _Block_release(v63);
      _Block_release(v59);

      (*(v9 + 8))(v67, v8);
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  v70 = v8;
  if (!v46)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v48 = swift_allocObject();
  v48[2] = a1;
  v48[3] = v3;
  v48[4] = v35;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_29E073BF8;
  *(v49 + 24) = v48;
  v75 = sub_29E073D74;
  v76 = v49;
  aBlock = MEMORY[0x29EDCA5F8];
  v72 = 1107296256;
  v73 = sub_29E21894C;
  v74 = &unk_2A24B93A0;
  v50 = _Block_copy(&aBlock);
  v51 = v3;
  v52 = a1;

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = a1;
  v75 = sub_29E073C20;
  v76 = v54;
  aBlock = MEMORY[0x29EDCA5F8];
  v72 = 1107296256;
  v73 = sub_29E1F3494;
  v74 = &unk_2A24B9418;
  v55 = _Block_copy(&aBlock);
  v56 = v52;

  [v47 performBatchUpdates:v50 completion:v55];
  _Block_release(v55);
  _Block_release(v50);

  (*(v9 + 8))(v67, v70);
LABEL_40:
}

void sub_29E0736F8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      [a3 setUserInteractionEnabled_];
      v6 = v5;
      v7 = [v6 tableView];
      if (v7)
      {
        v8 = v7;
        [v7 layoutIfNeeded];

        v9 = sub_29E070778();
        [v9 constant];
        v11 = v10;

        v12 = [v6 tableView];
        if (v12)
        {
          v13 = v12;
          [v12 contentSize];
          v15 = v14;

          v16 = v6;
          if (v11 == v15)
          {
LABEL_10:

            return;
          }

          v17 = [v6 tableView];
          if (v17)
          {
            v18 = v17;
            [v17 contentSize];
            v20 = v19;

            *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController_tableViewHeight] = v20;
            v21 = *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesOnboardingPeriodTrackingViewController____lazy_storage___heightAnchor];
            v22 = [v6 tableView];

            if (v22)
            {
              [v22 contentSize];
              v24 = v23;

              [v21 setConstant_];
              v25 = [v6 view];
              if (v25)
              {
                v16 = v25;
                [v25 layoutIfNeeded];
                goto LABEL_10;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

void sub_29E0738E4(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v8 = sub_29E2BCEC4();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x2A1C7C4A8](a1).n128_u64[0];
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    [v10 setUserInteractionEnabled_];
    v14 = [a2 tableView];
    if (v14)
    {
      v15 = v14;
      sub_29E073C80(0, &unk_2A181B780, MEMORY[0x29EDC9E90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_29E2CAB20;
      *(v16 + 32) = a3;
      v18[1] = v16;
      sub_29E073C28();
      sub_29E073C80(0, &qword_2A181B790, MEMORY[0x29EDC9A40]);
      sub_29E073CD4();
      sub_29E2C43F4();
      v17 = sub_29E2BCEB4();
      (*(v9 + 8))(v13, v8);
      [v15 *a4];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E073B34()
{
  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E073BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E073BDC()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  __break(1u);
  return result;
}

unint64_t sub_29E073C28()
{
  result = qword_2A181D490;
  if (!qword_2A181D490)
  {
    sub_29E2BCEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D490);
  }

  return result;
}

void sub_29E073C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9BA8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E073CD4()
{
  result = qword_2A181D4A0;
  if (!qword_2A181D4A0)
  {
    sub_29E073C80(255, &qword_2A181B790, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181D4A0);
  }

  return result;
}

void sub_29E073F40()
{
  v1 = v0;
  v39 = sub_29E2BE814();
  v2 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 tertiarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v7 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v1 setBackgroundView_];

  v8 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v1 setSelectedBackgroundView_];

  v9 = [v1 selectedBackgroundView];
  if (v9)
  {
    v10 = v9;
    sub_29DE9408C(0, &qword_2A1817FE0);
    v11 = sub_29E2C4054();
    [v10 setBackgroundColor_];
  }

  v12 = [v1 contentView];
  v13 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_textLabel];
  [v12 addSubview_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  [v13 setNumberOfLines_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v15 = [v5 labelColor];
  [v13 setTextColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = objc_opt_self();
  sub_29DE99B54();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E2CE070;
  v18 = [v13 leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 leadingAnchor];

  sub_29E2BE804();
  sub_29E2BE7A4();
  v22 = v21;
  (*(v2 + 8))(v4, v39);
  v23 = [v18 constraintEqualToAnchor:v20 constant:v22];

  *(v17 + 32) = v23;
  v24 = [v13 topAnchor];
  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:12.0];
  *(v17 + 40) = v27;
  v28 = [v1 &selRef_systemFontOfSize_weight_];
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v13 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v17 + 48) = v32;
  v33 = [v1 &selRef_systemFontOfSize_weight_];
  v34 = [v33 bottomAnchor];

  v35 = [v13 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:12.0];

  *(v17 + 56) = v36;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v37 = sub_29E2C3604();

  [v16 activateConstraints_];
}

uint64_t sub_29E0744AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E074504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin8ListCell_item;
  swift_beginAccess();
  sub_29DEF9180(a1, v1 + v3);
  return swift_endAccess();
}

id sub_29E0745C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_29E0746D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x78))();
  return sub_29DF61DA4;
}

uint64_t sub_29E074794(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex);
    if (v3 > 3)
    {
      __break(1u);
      return result;
    }

    v2 = *(&unk_2A24ADDB8 + v3 + 4);
  }

  *(v1 + 32) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_29E21F33C(*MEMORY[0x29EDC3258]);
    [*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setOvulationTestResult_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E074858(uint64_t a1, unint64_t a2)
{
  if (a2 <= 3)
  {
    return sub_29E2ADEF4(*(&unk_2A24ADDB8 + a2 + 4));
  }

  __break(1u);
  return result;
}

void sub_29E074938()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_prepareLayout);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 traitCollection];
    v4 = [v3 horizontalSizeClass];

    v5 = 1.0;
    if (v4 == 2)
    {
      v5 = 3.0;
    }

    [v0 setMinimumLineSpacing_];
    v6 = [v2 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 2)
    {
      v8 = 24.0;
    }

    else
    {
      v8 = 12.0;
    }

    v9 = [v2 traitCollection];

    v10 = [v9 horizontalSizeClass];
    if (v10 == 2)
    {
      v11 = 44.0;
    }

    else
    {
      v11 = 24.0;
    }

    [v0 setItemSize_];
  }
}

void *sub_29E074B04(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = sub_29E144C9C(0, v2, 0, MEMORY[0x29EDCA190]);
  if (v2)
  {
    v4 = *MEMORY[0x29EDC76E0];
    v5 = objc_opt_self();
    sub_29E2BF404();
    v6 = [v5 darkTextColor];
    v7 = [objc_opt_self() systemFontOfSize:10.0 weight:v4];
    v50 = sub_29DE9408C(0, &qword_2A1817B10);
    v8 = sub_29E2C3E84();
    sub_29DF40374(v7, v8, v6);

    v9 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v10 = sub_29E2C33A4();

    type metadata accessor for Key(0);
    sub_29DEA75B0();
    v11 = sub_29E2C31F4();

    v12 = [v9 initWithString:v10 attributes:v11];

    v14 = v3[2];
    v13 = v3[3];
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v55 = sub_29DE9408C(0, &qword_2A1817B40);
      v56 = MEMORY[0x29EDC2CE0];
      v49 = v55;
      *&v54 = v12;
      v3[2] = v15;
      sub_29DE8EE78(&v54, &v3[5 * v14 + 4]);
      v16 = v2 - 1;
      if (v2 == 1)
      {
        break;
      }

      v18 = *MEMORY[0x29EDC76F8];
      v48 = objc_opt_self();
      v47 = objc_opt_self();
      v46 = *MEMORY[0x29EDC7638];
      v45 = *MEMORY[0x29EDC7640];
      v44 = *MEMORY[0x29EDC7650];
      sub_29DEA0390();
      for (i = (v1 + 56); ; i += 2)
      {
        v2 = *(i - 1);
        v1 = *i;
        sub_29E2BF404();
        v20 = [v48 darkTextColor];
        v21 = [v47 systemFontOfSize:10.0 weight:v18];
        v22 = sub_29E2C3E84();
        v51[0] = v46;
        v23 = sub_29DE9408C(0, &unk_2A1A61A00);
        v51[1] = v21;
        v15 = v45;
        v51[4] = v23;
        v52[0] = v45;
        v24 = sub_29DE9408C(0, &qword_2A1817FE0);
        v52[1] = v20;
        v53[4] = v50;
        v52[4] = v24;
        v53[0] = v44;
        v53[1] = v22;
        v12 = sub_29E2C47B4();
        v25 = v46;
        v26 = v45;
        v27 = v44;
        sub_29DEA7608(v51, &v54);
        v14 = v54;
        v28 = sub_29E187A6C(v54);
        if (v29)
        {
          break;
        }

        v15 = (v12 + 8);
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v28;
        *(v12[6] + 8 * v28) = v14;
        sub_29DEA049C((&v54 + 8), (v12[7] + 32 * v28));
        v30 = v12[2];
        v31 = __OFADD__(v30, 1);
        v13 = v30 + 1;
        if (v31)
        {
          goto LABEL_17;
        }

        v12[2] = v13;
        sub_29DEA7608(v52, &v54);
        v14 = v54;
        v32 = sub_29E187A6C(v54);
        if (v33)
        {
          break;
        }

        *(v15 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        *(v12[6] + 8 * v32) = v14;
        sub_29DEA049C((&v54 + 8), (v12[7] + 32 * v32));
        v34 = v12[2];
        v31 = __OFADD__(v34, 1);
        v13 = v34 + 1;
        if (v31)
        {
          goto LABEL_17;
        }

        v12[2] = v13;
        sub_29DEA7608(v53, &v54);
        v14 = v54;
        v35 = sub_29E187A6C(v54);
        if (v36)
        {
          break;
        }

        *(v15 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        *(v12[6] + 8 * v35) = v14;
        sub_29DEA049C((&v54 + 8), (v12[7] + 32 * v35));
        v37 = v12[2];
        v31 = __OFADD__(v37, 1);
        v13 = v37 + 1;
        if (v31)
        {
          goto LABEL_17;
        }

        v12[2] = v13;
        sub_29DEA0430();
        swift_arrayDestroy();
        v38 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
        v39 = sub_29E2C33A4();

        v40 = sub_29E2C31F4();

        v41 = [v38 initWithString:v39 attributes:v40];

        v43 = v3[2];
        v42 = v3[3];
        if (v43 >= v42 >> 1)
        {
          v3 = sub_29E144C9C((v42 > 1), v43 + 1, 1, v3);
        }

        v55 = v49;
        v56 = MEMORY[0x29EDC2CE0];
        *&v54 = v41;
        v3[2] = v43 + 1;
        sub_29DE8EE78(&v54, &v3[5 * v43 + 4]);
        if (!--v16)
        {
          return v3;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v3 = sub_29E144C9C((v13 > 1), v15, 1, v3);
    }
  }

  return v3;
}

uint64_t type metadata accessor for EstimatedDueDateView()
{
  result = qword_2A181B7B8;
  if (!qword_2A181B7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E075144()
{
  sub_29E077E58(319, &qword_2A1819460, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29E077E58(319, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E075244@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDBC518];
  v9 = MEMORY[0x29EDBC388];
  sub_29E077E58(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v16 - v11;
  sub_29E077CB0(v2, &v16 - v11, &qword_2A1819020, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E2C16E4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_29E2C3A24();
    v15 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E075470()
{
  v0 = sub_29E2BCBB4();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v31 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2BC9D4();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E2BCA44();
  v5 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCA54();
  v34 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v28 - v12;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v28 - v15;
  type metadata accessor for EstimatedDueDateView();
  sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v17 = v35;
  if (sub_29E07594C())
  {
    sub_29E1BA268(v16);
    v18 = v34;
  }

  else
  {
    MEMORY[0x29ED78EF0]();
    sub_29E2BCA14();
    sub_29E2BC9B4();
    (*(v5 + 8))(v7, v28);
    v19 = v34;
    v20 = *(v34 + 8);
    v20(v10, v8);
    sub_29E2BC9C4();
    sub_29E2BC994();
    (*(v29 + 8))(v4, v30);
    v20(v13, v8);
    v18 = v19;
  }

  if ((sub_29E0ED838() & 1) != 0 || *(v17 + 17) == 1)
  {
    swift_getKeyPath();
    v35 = v17;
    sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFE4();

    v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
    swift_beginAccess();
    v22 = v31;
    v23 = v32;
    v24 = v17 + v21;
    v25 = v33;
    (*(v32 + 16))(v31, v24, v33);
    sub_29E0776A4(&qword_2A1817C78, MEMORY[0x29EDB9BB0]);
    sub_29E2BCB94();
    (*(v23 + 8))(v22, v25);

    v26 = v36;
  }

  else
  {

    v26 = 45;
  }

  (*(v18 + 8))(v16, v8);
  return v26;
}

BOOL sub_29E07594C()
{
  v0 = sub_29E2BCBB4();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCE84();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCEA4();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  v10 = *MEMORY[0x29EDB9CD0];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_29E2BCBA4();
  v12 = sub_29E2BCE94();
  v20 = *(v24 + 8);
  v21 = v12;
  v20(v2, v25);
  v19 = *(v4 + 8);
  v19(v6, v3);
  v11(v6, v10, v3);
  type metadata accessor for EstimatedDueDateView();
  sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v13 = v26;
  swift_getKeyPath();
  v26 = v13;
  sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__estimatedDueDate;
  swift_beginAccess();
  v15 = v25;
  (*(v24 + 16))(v2, v13 + v14, v25);

  v16 = sub_29E2BCE94();
  v20(v2, v15);
  v19(v6, v3);
  (*(v22 + 8))(v9, v23);
  return v16 != v21;
}

uint64_t sub_29E075D00@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  sub_29E077478();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v75 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0776EC(0);
  v83 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v71 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v72 = &v65 - v6;
  sub_29E077734(0, &qword_2A181B808, sub_29E0777B8, sub_29E0776EC, MEMORY[0x29EDBC7E8]);
  v81 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v82 = &v65 - v8;
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C3384();
  v77 = *(v11 - 8);
  v78 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v85 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v76 = &v65 - v14;
  v74 = sub_29E2C1F14();
  v15 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E077800();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v73 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E0777B8(0);
  v80 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v67 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v68 = &v65 - v23;
  v24 = sub_29E2C16E4();
  v25 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E075244(v27);
  v28 = sub_29E2C16C4();
  (*(v25 + 8))(v27, v24);
  if (v28)
  {
    v29 = sub_29E2C1BD4();
    LOBYTE(v87) = 1;
    sub_29E076B30(&v100);
    v93 = v101;
    v94 = v102;
    v95[0] = v103[0];
    *(v95 + 10) = *(v103 + 10);
    v92 = v100;
    v98 = v102;
    v99[0] = v103[0];
    *(v99 + 10) = *(v103 + 10);
    v96 = v100;
    v97 = v101;
    sub_29E077CB0(&v92, &v89, &qword_2A181B828, sub_29E077968, MEMORY[0x29EDBCC28]);
    sub_29E077D20(&v96, &qword_2A181B828, sub_29E077968);
    *&v86[7] = v92;
    *&v86[65] = *(v95 + 10);
    *&v86[55] = v95[0];
    *&v86[39] = v94;
    *&v86[23] = v93;
    *&v90[33] = *&v86[32];
    *&v90[49] = *&v86[48];
    *&v90[65] = *&v86[64];
    *&v90[1] = *v86;
    v89 = v29;
    v90[0] = v87;
    v90[81] = BYTE9(v95[1]);
    *&v90[17] = *&v86[16];
    sub_29E2C1EE4();
    sub_29E0778B4();
    v31 = v30;
    v32 = sub_29E0776A4(&qword_2A181B840, sub_29E0778B4);
    sub_29E2C24A4();
    (*(v15 + 8))(v17, v74);
    v103[1] = *&v90[48];
    v103[2] = *&v90[64];
    LOWORD(v104) = *&v90[80];
    v100 = v89;
    v101 = *v90;
    v102 = *&v90[16];
    v103[0] = *&v90[32];
    sub_29E077A30(&v100, sub_29E0778B4);
    v33 = v76;
    sub_29E2C3314();
    v35 = v77;
    v34 = v78;
    (*(v77 + 16))(v85, v33, v78);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v36 = qword_2A1A67F80;
    sub_29E2BCC74();
    v37 = sub_29E2C3414();
    v39 = v38;
    (*(v35 + 8))(v33, v34);
    *&v89 = v37;
    *(&v89 + 1) = v39;
    v87 = v31;
    v88 = v32;
    swift_getOpaqueTypeConformance2();
    sub_29DE9DE68();
    v40 = v66;
    v41 = v67;
    v42 = v73;
    sub_29E2C2434();

    (*(v65 + 8))(v42, v40);
    *&v89 = sub_29E075470();
    *(&v89 + 1) = v43;
    type metadata accessor for EstimatedDueDateView();
    sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v44 = v87;
    swift_getKeyPath();
    v87 = v44;
    sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFE4();

    v45 = v68;
    sub_29E2C1714();

    v46 = sub_29E0777B8;
    sub_29E077D90(v41, sub_29E0777B8);
    sub_29E077DF0(v45, v82, sub_29E0777B8);
    swift_storeEnumTagMultiPayload();
    sub_29E077A90();
    sub_29E077BA0();
  }

  else
  {
    v47 = sub_29E2C1AA4();
    LOBYTE(v87) = 1;
    sub_29E076FC8(&v100);
    v94 = v102;
    v95[0] = v103[0];
    v95[1] = v103[1];
    *(&v95[1] + 10) = *(&v103[1] + 10);
    v92 = v100;
    v93 = v101;
    *(&v99[1] + 10) = *(&v103[1] + 10);
    v98 = v102;
    v99[0] = v103[0];
    v99[1] = v103[1];
    v96 = v100;
    v97 = v101;
    sub_29E077CB0(&v92, &v89, &qword_2A181B7D8, sub_29E0775E0, MEMORY[0x29EDBCC28]);
    sub_29E077D20(&v96, &qword_2A181B7D8, sub_29E0775E0);
    *&v91[39] = v94;
    *&v91[55] = v95[0];
    *&v91[71] = v95[1];
    *&v91[81] = *(&v95[1] + 10);
    *&v91[7] = v92;
    *&v91[23] = v93;
    v89 = v47;
    v90[0] = v87;
    *&v90[49] = *&v91[48];
    *&v90[65] = *&v91[64];
    *&v90[81] = *&v91[80];
    *&v90[17] = *&v91[16];
    *&v90[33] = *&v91[32];
    v90[97] = BYTE9(v95[2]);
    *&v90[1] = *v91;
    sub_29E2C1EE4();
    sub_29E07752C();
    v49 = v48;
    v50 = sub_29E0776A4(&qword_2A181B7F8, sub_29E07752C);
    sub_29E2C24A4();
    (*(v15 + 8))(v17, v74);
    v103[1] = *&v90[48];
    v103[2] = *&v90[64];
    v104 = *&v90[80];
    v100 = v89;
    v101 = *v90;
    v105 = *&v90[96];
    v102 = *&v90[16];
    v103[0] = *&v90[32];
    sub_29E077A30(&v100, sub_29E07752C);
    v51 = v76;
    sub_29E2C3314();
    v52 = v77;
    v53 = v78;
    (*(v77 + 16))(v85, v51, v78);
    v54 = v52;
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v55 = qword_2A1A67F80;
    sub_29E2BCC74();
    v56 = sub_29E2C3414();
    v58 = v57;
    (*(v54 + 8))(v51, v53);
    *&v89 = v56;
    *(&v89 + 1) = v58;
    v87 = v49;
    v88 = v50;
    swift_getOpaqueTypeConformance2();
    sub_29DE9DE68();
    v59 = v70;
    v60 = v71;
    v61 = v75;
    sub_29E2C2434();

    (*(v69 + 8))(v61, v59);
    *&v89 = sub_29E075470();
    *(&v89 + 1) = v62;
    type metadata accessor for EstimatedDueDateView();
    sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
    sub_29E2C2A24();
    v63 = v87;
    swift_getKeyPath();
    v87 = v63;
    sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
    sub_29E2BCFE4();

    v45 = v72;
    sub_29E2C1714();

    v46 = sub_29E0776EC;
    sub_29E077D90(v60, sub_29E0776EC);
    sub_29E077DF0(v45, v82, sub_29E0776EC);
    swift_storeEnumTagMultiPayload();
    sub_29E077A90();
    sub_29E077BA0();
  }

  sub_29E2C1C74();
  return sub_29E077D90(v45, v46);
}

uint64_t sub_29E076B30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v44[-v8];
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v50 = v11;
  v51 = v13;
  sub_29DE9DE68();
  v14 = sub_29E2C2294();
  v16 = v15;
  v18 = v17;
  type metadata accessor for EstimatedDueDateView();
  sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v19 = v50;
  swift_getKeyPath();
  v50 = v19;
  sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v20 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v20 == 4)
  {
    v21 = sub_29E2C1DB4();
  }

  else
  {
    v21 = sub_29E2C1DA4();
  }

  LODWORD(v50) = v21;
  v22 = sub_29E2C2224();
  v46 = v23;
  v47 = v24;
  v45 = v25;
  sub_29DED6478(v14, v16, v18 & 1);

  v50 = sub_29E075470();
  v51 = v26;
  v27 = sub_29E2C2294();
  v29 = v28;
  v31 = v30;
  LODWORD(v50) = sub_29E2C1DB4();
  v32 = sub_29E2C2224();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29DED6478(v27, v29, v31 & 1);

  v39 = v45 & 1;
  LOBYTE(v50) = v45 & 1;
  v49 = v45 & 1;
  v48 = v36 & 1;
  v40 = v46;
  v41 = v47;
  *a1 = v22;
  *(a1 + 8) = v40;
  *(a1 + 16) = v39;
  *(a1 + 24) = v41;
  *(a1 + 32) = 256;
  *(a1 + 40) = v32;
  *(a1 + 48) = v34;
  *(a1 + 56) = v36 & 1;
  *(a1 + 64) = v38;
  *(a1 + 72) = 256;
  v42 = v40;
  sub_29DE93208(v22, v40, v39);
  sub_29E2BF404();
  sub_29DE93208(v32, v34, v36 & 1);
  sub_29E2BF404();
  sub_29DED6478(v32, v34, v36 & 1);

  sub_29DED6478(v22, v42, v50);
}

uint64_t sub_29E076FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v44 - v8;
  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A67F80;
  sub_29E2BCC74();
  v11 = sub_29E2C3414();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v51 = v11;
  v52 = v13;
  v44 = sub_29DE9DE68();
  v14 = sub_29E2C2294();
  v16 = v15;
  v18 = v17;
  type metadata accessor for EstimatedDueDateView();
  sub_29E077E58(0, &qword_2A1817CE8, type metadata accessor for PregnancyDatesInputViewModel, MEMORY[0x29EDBCBA8]);
  sub_29E2C2A24();
  v19 = v51;
  swift_getKeyPath();
  v51 = v19;
  sub_29E0776A4(&qword_2A1817D50, type metadata accessor for PregnancyDatesInputViewModel);
  sub_29E2BCFE4();

  v20 = *(v19 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28PregnancyDatesInputViewModel__selectedInputMethod);

  if (v20 == 4)
  {
    v21 = sub_29E2C1DB4();
  }

  else
  {
    v21 = sub_29E2C1DA4();
  }

  LODWORD(v51) = v21;
  v46 = sub_29E2C2224();
  v47 = v22;
  v24 = v23;
  v45 = v25;
  sub_29DED6478(v14, v16, v18 & 1);

  v51 = sub_29E075470();
  v52 = v26;
  v27 = sub_29E2C2294();
  v29 = v28;
  v31 = v30;
  LODWORD(v51) = sub_29E2C1DB4();
  v32 = sub_29E2C2224();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_29DED6478(v27, v29, v31 & 1);

  v39 = v45 & 1;
  LOBYTE(v51) = v45 & 1;
  v50 = v45 & 1;
  v49 = 0;
  v48 = v36 & 1;
  v40 = v46;
  v41 = v47;
  *a1 = v46;
  *(a1 + 8) = v24;
  *(a1 + 16) = v39;
  *(a1 + 24) = v41;
  *(a1 + 32) = 256;
  *(a1 + 40) = 0x4034000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = v32;
  *(a1 + 64) = v34;
  *(a1 + 72) = v36 & 1;
  *(a1 + 80) = v38;
  *(a1 + 88) = 256;
  v42 = v40;
  sub_29DE93208(v40, v24, v39);
  sub_29E2BF404();
  sub_29DE93208(v32, v34, v36 & 1);
  sub_29E2BF404();
  sub_29DED6478(v32, v34, v36 & 1);

  sub_29DED6478(v42, v24, v51);
}

void sub_29E077478()
{
  if (!qword_2A181B7C8)
  {
    sub_29E07752C();
    sub_29E0776A4(&qword_2A181B7F8, sub_29E07752C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181B7C8);
    }
  }
}

void sub_29E07752C()
{
  if (!qword_2A181B7D0)
  {
    sub_29E077E58(255, &qword_2A181B7D8, sub_29E0775E0, MEMORY[0x29EDBCC28]);
    sub_29E0779CC(&qword_2A181B7F0, &qword_2A181B7D8, sub_29E0775E0);
    v0 = sub_29E2C2884();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B7D0);
    }
  }
}

void sub_29E0775E0()
{
  if (!qword_2A181B7E0)
  {
    sub_29E07764C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181B7E0);
    }
  }
}

void sub_29E07764C()
{
  if (!qword_2A181B7E8)
  {
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B7E8);
    }
  }
}

uint64_t sub_29E0776A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E077734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E077800()
{
  if (!qword_2A181B818)
  {
    sub_29E0778B4();
    sub_29E0776A4(&qword_2A181B840, sub_29E0778B4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A181B818);
    }
  }
}

void sub_29E0778B4()
{
  if (!qword_2A181B820)
  {
    sub_29E077E58(255, &qword_2A181B828, sub_29E077968, MEMORY[0x29EDBCC28]);
    sub_29E0779CC(&qword_2A181B838, &qword_2A181B828, sub_29E077968);
    v0 = sub_29E2C28F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B820);
    }
  }
}

void sub_29E077968()
{
  if (!qword_2A181B830)
  {
    sub_29E07764C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181B830);
    }
  }
}

uint64_t sub_29E0779CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E077E58(255, a2, a3, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E077A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_29E077A90()
{
  result = qword_2A181B848;
  if (!qword_2A181B848)
  {
    sub_29E0777B8(255);
    sub_29E0778B4();
    sub_29E0776A4(&qword_2A181B840, sub_29E0778B4);
    swift_getOpaqueTypeConformance2();
    sub_29E0776A4(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B848);
  }

  return result;
}

unint64_t sub_29E077BA0()
{
  result = qword_2A181B850;
  if (!qword_2A181B850)
  {
    sub_29E0776EC(255);
    sub_29E07752C();
    sub_29E0776A4(&qword_2A181B7F8, sub_29E07752C);
    swift_getOpaqueTypeConformance2();
    sub_29E0776A4(&qword_2A1819290, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B850);
  }

  return result;
}

uint64_t sub_29E077CB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_29E077E58(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29E077D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E077E58(0, a2, a3, MEMORY[0x29EDBCC28]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E077D90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E077DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E077E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E077EBC()
{
  result = qword_2A181B858;
  if (!qword_2A181B858)
  {
    sub_29E077734(255, &qword_2A181B860, sub_29E0777B8, sub_29E0776EC, MEMORY[0x29EDBC7F0]);
    sub_29E077A90();
    sub_29E077BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B858);
  }

  return result;
}

char *sub_29E077F80()
{
  ObjectType = swift_getObjectType();
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_textLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_spacerLabel;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_cycleDay;
  v4 = type metadata accessor for CycleDay();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v36.receiver = v0;
  v36.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_spacerLabel;
  v7 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_spacerLabel];
  v8 = v5;
  [v8 addSubview_];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_textLabel;
  [v8 addSubview_];
  v10 = *&v5[v6];
  MEMORY[0x29ED807E0](v8);

  v11 = *&v5[v6];
  v12 = sub_29E2C33A4();
  [v11 setText_];

  [*&v8[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = objc_opt_self();
  sub_29DE99B54();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CDBD0;
  v14 = [*&v8[v9] topAnchor];
  v15 = [v8 topAnchor];

  v16 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v16;
  v17 = [*&v8[v9] leadingAnchor];
  v18 = [v8 layoutMarginsGuide];

  v19 = [v18 leadingAnchor];
  v20 = [v17 constraintEqualToAnchor_];

  *(v13 + 40) = v20;
  v21 = [v8 layoutMarginsGuide];

  v22 = [v21 trailingAnchor];
  v23 = [*&v8[v9] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v13 + 48) = v24;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v25 = sub_29E2C3604();

  [v34 activateConstraints_];

  [*&v8[v9] setNumberOfLines_];
  [*&v5[v6] setNumberOfLines_];
  [*&v8[v9] setTextAlignment_];
  v26 = *&v8[v9];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v27 = sub_29E2C3FD4();
  [v26 setFont_];

  v28 = *&v5[v6];
  v29 = [*&v8[v9] font];
  [v28 setFont_];

  sub_29E079B28(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_29E2CAB20;
  v31 = sub_29E2C0B54();
  v32 = MEMORY[0x29EDC7870];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_29E078598()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v28[-1] - v7;
  v9 = type metadata accessor for CycleDay();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_cycleDay;
  swift_beginAccess();
  sub_29E07939C(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_29E079430(v8);
    sub_29E2C04B4();
    v14 = sub_29E2C0504();
    v15 = sub_29E2C3A34();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      v18 = sub_29E2C4AE4();
      v20 = sub_29DFAA104(v18, v19, v28);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29DE74000, v14, v15, "[%s] Nil cycleDay model for legend", v16, 0xCu);
      sub_29DE93B3C(v17);
      MEMORY[0x29ED82140](v17, -1, -1);
      MEMORY[0x29ED82140](v16, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_29E00C0F0(v8, v12);
    v22 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_textLabel);
    v23 = sub_29E078950(v12);
    if (v24)
    {
      v28[0] = v23;
      v28[1] = v24;
      sub_29DE9DE68();
      sub_29E2C4364();

      v25 = sub_29E2C33A4();
    }

    else
    {
      v25 = 0;
    }

    [v22 setText_];

    v26 = sub_29E078FCC();
    [v22 setTextColor_];

    return sub_29E029468(v12);
  }
}

id sub_29E078950(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v41 - v15;
  result = sub_29E0794BC(a1);
  if (!v18)
  {
    v44 = v14;
    v45 = v16;
    v41 = v6;
    v42 = v3;
    v46 = v9;
    v43 = v4;
    v19 = [v1 menstruationLevel];
    v20 = [v1 fertileWindowLevel];
    if (v19 == 2)
    {
      v21 = (v11 + 16);
LABEL_11:
      v22 = v45;
      sub_29E2C3314();
      (*v21)(v44, v22, v10);
      if (qword_2A1A62788 == -1)
      {
LABEL_12:
        v23 = qword_2A1A67F80;
        sub_29E2BCC74();
        v24 = sub_29E2C3414();
        (*(v11 + 8))(v22, v10);
        return v24;
      }

LABEL_26:
      swift_once();
      goto LABEL_12;
    }

    if (v19 == 1)
    {
      v21 = (v11 + 16);
      goto LABEL_11;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v22 = v45;
          sub_29E2C3314();
          (*(v11 + 16))(v44, v22, v10);
          if (qword_2A1A62788 == -1)
          {
            goto LABEL_12;
          }

          goto LABEL_26;
        }
      }

      else if (v19 < 6 && ((0x39u >> v19) & 1) != 0)
      {
        return 0;
      }

LABEL_19:
      v25 = v41;
      sub_29E2C04B4();
      v26 = v1;
      v27 = sub_29E2C0504();
      v28 = sub_29E2C3A14();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49 = v30;
        *v29 = 136446722;
        v31 = sub_29E2C4AE4();
        v33 = sub_29DFAA104(v31, v32, &v49);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2082;
        v48 = [v26 &selRef_setText_];
        type metadata accessor for HKMCDayViewModelMenstruationLevel(0);
        v34 = sub_29E2C3464();
        v36 = sub_29DFAA104(v34, v35, &v49);

        *(v29 + 14) = v36;
        *(v29 + 22) = 2082;
        v48 = [v26 fertileWindowLevel];
        type metadata accessor for HKMCDayViewModelFertileWindowLevel(0);
        v37 = sub_29E2C3464();
        v39 = sub_29DFAA104(v37, v38, &v49);

        *(v29 + 24) = v39;
        _os_log_impl(&dword_29DE74000, v27, v28, "[%{public}s] Unknown values found when computing legend text. menstruationLevel: %{public}s, fertileWindowLevel: %{public}s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v30, -1, -1);
        MEMORY[0x29ED82140](v29, -1, -1);
      }

      (*(v43 + 8))(v25, v42);
      return 0;
    }

    if (v20 != 2 && v20 != 3)
    {
      goto LABEL_19;
    }

    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v40 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  return result;
}

id sub_29E078FCC()
{
  v1 = [v0 cycleFactors];
  if (v1)
  {
    v2 = v1;
    sub_29DE9408C(0, &qword_2A1A61D50);
    v3 = sub_29E2C3614();

    if (v3 >> 62)
    {
LABEL_26:
      v4 = sub_29E2C4484();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x29ED80D70](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 = [v6 hkmc_cycleFactor];

      if (v8 == 2)
      {

        sub_29DE9408C(0, &qword_2A1817FE0);
        return sub_29E2C4074();
      }
    }
  }

  v9 = [v0 menstruationLevel] - 1;
  v10 = [v0 fertileWindowLevel] - 1;
  if (v9 > 1)
  {
    if (v10 > 2)
    {
      return 0;
    }

    v13 = [v0 fertileWindowLevel];
    v14 = objc_opt_self();
    if (v13 == 3)
    {
      v12 = [v14 hkmc_ovulationDayColor];
    }

    else
    {
      v12 = [v14 hkmc_fertileWindowColor];
    }
  }

  else
  {
    v11 = objc_opt_self();
    if (v10 > 2)
    {
      v12 = [v11 hkmc_menstruationColor];
    }

    else
    {
      v12 = [v11 secondaryLabelColor];
    }
  }

  return v12;
}

uint64_t type metadata accessor for InteractiveTimelineLegendLabel()
{
  result = qword_2A1A603E0;
  if (!qword_2A1A603E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E0792CC()
{
  sub_29E079B28(319, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E07939C(uint64_t a1, uint64_t a2)
{
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E079430(uint64_t a1)
{
  sub_29E079B28(0, qword_2A1A5ED08, type metadata accessor for CycleDay, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_29E0794BC(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v3 = sub_29E2BCBB4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v50 - v8;
  v10 = sub_29E2BCC94();
  v61 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCEA4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_29E2C3384();
  v58 = *(v60 - 8);
  v18 = MEMORY[0x2A1C7C4A8](v60);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v50 - v21;
  v64 = v2;
  result = [v2 cycleFactors];
  if (!result)
  {
    return result;
  }

  v24 = result;
  v51 = v12;
  v53 = v4;
  v54 = v3;
  sub_29DE9408C(0, &qword_2A1A61D50);
  v25 = sub_29E2C3614();

  v52 = v9;
  v55 = v7;
  v56 = v13;
  v50 = v15;
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_27:

    return 0;
  }

LABEL_26:
  v26 = sub_29E2C4484();
  if (!v26)
  {
    goto LABEL_27;
  }

LABEL_4:
  v27 = 0;
  while (1)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x29ED80D70](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v28 = *(v25 + 8 * v27 + 32);
    }

    v29 = v28;
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ([v28 hkmc_cycleFactor] == 2)
    {
      break;
    }

    ++v27;
    if (v30 == v26)
    {
      goto LABEL_27;
    }
  }

  v31 = v64;
  v32 = [v64 pregnancyState];
  v34 = v55;
  v33 = v56;
  if (!v32 || [v31 pregnancyState] == 1)
  {

    return 0;
  }

  if ([v31 pregnancyState] == 4)
  {
    sub_29E2C3314();
    v35 = v58;
    v36 = v60;
    (*(v58 + 16))(v20, v22, v60);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v37 = qword_2A1A67F80;
    sub_29E2BCC74();
    v38 = sub_29E2C3414();

    (*(v35 + 8))(v22, v36);
  }

  else
  {
    v40 = v61;
    v39 = v62;
    v41 = v59;
    (*(v61 + 104))(v59, *MEMORY[0x29EDB9C78], v62);
    v42 = v50;
    sub_29E2BCCA4();
    (*(v40 + 8))(v41, v39);
    v43 = v52;
    sub_29E2C3194();
    v44 = sub_29E2BCCE4();
    v46 = v53;
    v45 = v54;
    if (v44)
    {
      sub_29E2BCBA4();
      (*(v46 + 8))(v43, v45);
      (*(v46 + 32))(v43, v34, v45);
    }

    v47 = objc_opt_self();
    v48 = sub_29E2BCB04();
    v49 = [v47 gestationalAgeStringOnDate:v48 pregnancySample:v29];

    v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    (*(v46 + 8))(v43, v45);
    (*(v33 + 8))(v42, v51);
  }

  return v38;
}

void sub_29E079B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E079B8C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_textLabel);
  sub_29DE9408C(0, &unk_2A1A61A00);
  v3 = sub_29E2C3FD4();
  [v2 setFont_];

  v4 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin30InteractiveTimelineLegendLabel_spacerLabel);
  v5 = [v2 font];
  [v4 setFont_];
}

uint64_t sub_29E079C74(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel;
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel) = a1;
  if (v3)
  {
    v4 = *(v3 + 32);

    [v4 removeObserver_];
  }

  else
  {
  }

  sub_29E07B284();
  v5 = *(v1 + v2);
  if (v5)
  {
    v6 = *(v5 + 32);
    [v6 registerObserver_];
  }
}

id sub_29E079D2C(uint64_t a1)
{
  v20 = a1;
  sub_29E07D7C4(0, &qword_2A1819790, MEMORY[0x29EDC78D0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_29E2C4164();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C4274();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() buttonWithType_];
  sub_29E2C4264();
  v13 = objc_opt_self();
  v14 = [v13 tertiarySystemFillColor];
  sub_29E2C41D4();
  v15 = [v13 systemBlueColor];
  sub_29E2C41E4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC7898], v4);
  sub_29E2C4174();
  (*(v9 + 16))(v3, v11, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  sub_29E2C42A4();
  [v12 addTarget:v19 action:v20 forControlEvents:64];
  LODWORD(v16) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v17];
  [v12 setRole_];
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_29E07A050()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel) = v1;

  v3 = [objc_allocWithZone(type metadata accessor for SingleCycleView()) initWithFrame_];
  v4 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView) = v3;

  v5 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel) = v5;

  v7 = sub_29E079D2C(sel_confirmMenstrualCycle_);
  v8 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton) = v7;

  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton) = sub_29E079D2C(sel_logMenstrualCycle_);

  return MEMORY[0x2A1C71028]();
}

void sub_29E07A168()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel;
  v2 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel];
  if (!v2)
  {
    __break(1u);
    goto LABEL_47;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v0[v1];
  if (!v4)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v3) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v3];
  v5 = *&v0[v1];
  if (!v5)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = objc_opt_self();
  v7 = *MEMORY[0x29EDC8118];
  v8 = v5;
  v74 = v6;
  v9 = [v6 preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = *&v0[v1];
  if (!v10)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v10 setAdjustsFontForContentSizeCategory_];
  v11 = *&v0[v1];
  if (!v11)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  [v13 setTextColor_];

  v15 = *&v0[v1];
  if (!v15)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v15 setNumberOfLines_];
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView;
  v17 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView];
  if (!v17)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = *&v0[v16];
  if (!v18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v18 setUserInteractionEnabled_];
  v19 = *&v0[v16];
  if (!v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v20 = v19;
  v21 = [v12 clearColor];
  [v20 setBackgroundColor_];

  v22 = *&v0[v16];
  if (!v22)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient;
  v24 = *&v22[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_overlayGradient];
  v25 = v22;
  v26 = [v24 superlayer];
  if (v26)
  {
  }

  else
  {
    v27 = [v25 layer];
    [v27 addSublayer_];

    [v25 setNeedsLayout];
  }

  v28 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel;
  v29 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel];
  if (!v29)
  {
    goto LABEL_56;
  }

  [v29 setNumberOfLines_];
  v30 = *&v0[v28];
  if (!v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = *&v0[v28];
  if (!v32)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  LODWORD(v31) = 1132068864;
  [v32 setContentHuggingPriority:1 forAxis:v31];
  v34 = *&v0[v28];
  if (!v34)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  LODWORD(v33) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v33];
  v35 = *&v0[v28];
  if (!v35)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v36 = *MEMORY[0x29EDC80E0];
  v37 = v35;
  v38 = [v74 _preferredFontForTextStyle_variant_];
  [v37 setFont_];

  v39 = *&v0[v28];
  if (!v39)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v40 = v39;
  v41 = [v12 labelColor];
  [v40 setTextColor_];

  v42 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton;
  v43 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton];
  if (!v43)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = *&v0[v42];
  if (!v45)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LODWORD(v44) = 1148846080;
  [v45 setContentHuggingPriority:1 forAxis:v44];
  v46 = *&v0[v42];
  if (!v46)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v47 = [v46 layer];
  [v47 setCornerRadius_];

  v48 = *&v0[v42];
  if (!v48)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v49 = [v48 titleLabel];
  if (v49)
  {
    v50 = v49;
    v51 = [v74 _preferredFontForTextStyle_variant_];
    [v50 setFont_];
  }

  v52 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton;
  v53 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton];
  if (!v53)
  {
    goto LABEL_66;
  }

  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  v55 = *&v0[v52];
  if (!v55)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  LODWORD(v54) = 1148846080;
  [v55 setContentHuggingPriority:1 forAxis:v54];
  v56 = *&v0[v52];
  if (!v56)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v57 = [v56 layer];
  [v57 setCornerRadius_];

  v58 = *&v0[v52];
  if (!v58)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v59 = [v58 titleLabel];
  if (v59)
  {
    v60 = v59;
    v61 = [v74 _preferredFontForTextStyle_variant_];
    [v60 setFont_];
  }

  v62 = [v0 view];
  if (!v62)
  {
    goto LABEL_70;
  }

  if (!*&v0[v1])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v63 = v62;
  [v62 addSubview_];

  v64 = [v0 view];
  if (!v64)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (!*&v0[v16])
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v65 = v64;
  [v64 addSubview_];

  v66 = [v0 view];
  if (!v66)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!*&v0[v28])
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v67 = v66;
  [v66 addSubview_];

  v68 = [v0 view];
  if (!v68)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (!*&v0[v42])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v69 = v68;
  [v68 addSubview_];

  v70 = [v0 view];
  if (!v70)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!*&v0[v52])
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v71 = v70;
  [v70 addSubview_];

  v72 = *&v0[v28];
  if (!v72)
  {
LABEL_80:
    __break(1u);
    return;
  }

  sub_29DE9408C(0, &unk_2A1A61A00);
  v73 = v72;
  v75 = sub_29E2C3FD4();
  [v73 setFont_];
}

void sub_29E07A8AC()
{
  sub_29DE99B54();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E2DBB30;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel];
  if (!v3)
  {
    __break(1u);
    goto LABEL_39;
  }

  v4 = [v3 leadingAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v6 = v5;
  v7 = [v5 leadingAnchor];

  v8 = [v4 constraintEqualToAnchor:v7 constant:16.0];
  *(v1 + 32) = v8;
  v9 = *&v0[v2];
  if (!v9)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = [v9 trailingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:-16.0];
  *(v1 + 40) = v14;
  v15 = *&v0[v2];
  if (!v15)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = [v15 topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor:v19 constant:20.0];
  *(v1 + 48) = v20;
  v21 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView;
  v22 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView];
  if (!v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = [v22 leadingAnchor];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v25 = v24;
  v26 = [v24 leadingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v1 + 56) = v27;
  v28 = *&v0[v21];
  if (!v28)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = [v28 trailingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v1 + 64) = v33;
  v34 = *&v0[v21];
  if (!v34)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v35 = [v34 topAnchor];
  v36 = *&v0[v2];
  if (!v36)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v37 = [v36 bottomAnchor];
  v38 = [v35 constraintEqualToAnchor:v37 constant:8.0];

  *(v1 + 72) = v38;
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel;
  v40 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel];
  if (!v40)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v41 = [v40 leadingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v41 constraintEqualToAnchor:v44 constant:16.0];
  *(v1 + 80) = v45;
  v46 = *&v0[v39];
  if (!v46)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v47 = [v46 trailingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [v47 constraintEqualToAnchor:v50 constant:-16.0];
  *(v1 + 88) = v51;
  v52 = *&v0[v39];
  if (!v52)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v53 = [v52 topAnchor];
  v54 = *&v0[v21];
  if (!v54)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v55 = [v54 bottomAnchor];
  v56 = [v53 constraintEqualToAnchor:v55 constant:26.0];

  *(v1 + 96) = v56;
  v57 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton;
  v58 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton];
  if (!v58)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v59 = [v58 leadingAnchor];
  v60 = [v0 view];
  if (!v60)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v61 = v60;
  v62 = [v60 leadingAnchor];

  v63 = [v59 constraintEqualToAnchor:v62 constant:16.0];
  *(v1 + 104) = v63;
  v64 = *&v0[v57];
  if (!v64)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v65 = [v64 trailingAnchor];
  v66 = [v0 view];
  if (!v66)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v67 = v66;
  v68 = [v66 trailingAnchor];

  v69 = [v65 constraintEqualToAnchor:v68 constant:-16.0];
  *(v1 + 112) = v69;
  v70 = *&v0[v57];
  if (!v70)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v71 = [v70 topAnchor];
  v72 = *&v0[v39];
  if (!v72)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v73 = [v72 bottomAnchor];
  v74 = [v71 constraintEqualToAnchor:v73 constant:18.0];

  *(v1 + 120) = v74;
  v75 = *&v0[v57];
  if (!v75)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v76 = [v75 heightAnchor];
  v77 = [v76 constraintGreaterThanOrEqualToConstant_];

  *(v1 + 128) = v77;
  v78 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton;
  v79 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton];
  if (!v79)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v80 = [v79 leadingAnchor];
  v81 = [v0 view];
  if (!v81)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v82 = v81;
  v83 = [v81 leadingAnchor];

  v84 = [v80 constraintEqualToAnchor:v83 constant:16.0];
  *(v1 + 136) = v84;
  v85 = *&v0[v78];
  if (!v85)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v86 = [v85 trailingAnchor];
  v87 = [v0 view];
  if (!v87)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v88 = v87;
  v89 = [v87 trailingAnchor];

  v90 = [v86 constraintEqualToAnchor:v89 constant:-16.0];
  *(v1 + 144) = v90;
  v91 = *&v0[v78];
  if (!v91)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v92 = [v91 topAnchor];
  v93 = *&v0[v57];
  if (!v93)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v94 = [v93 bottomAnchor];
  v95 = [v92 constraintEqualToAnchor:v94 constant:8.0];

  *(v1 + 152) = v95;
  v96 = *&v0[v78];
  if (!v96)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v97 = [v96 bottomAnchor];
  v98 = [v0 view];
  if (!v98)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v99 = v98;
  v100 = [v98 bottomAnchor];

  v101 = [v97 constraintEqualToAnchor:v100 constant:-16.0];
  *(v1 + 160) = v101;
  v102 = *&v0[v78];
  if (!v102)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v103 = objc_opt_self();
  v104 = [v102 heightAnchor];
  v105 = [v104 constraintGreaterThanOrEqualToConstant_];

  *(v1 + 168) = v105;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v106 = sub_29E2C3604();

  [v103 activateConstraints_];
}

void sub_29E07B284()
{
  v1 = v0;
  sub_29E07D7C4(0, &qword_2A1A5E2A0, sub_29DEC65FC, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v140 = &v129 - v3;
  sub_29DEC6594();
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v139 = &v129 - v9;
  v10 = sub_29E2C31A4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v141 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v129 - v14;
  sub_29DEC65FC();
  v137 = *(v16 - 8);
  v138 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v143 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29E2C3384();
  v144 = *(v21 - 8);
  v145 = v21;
  MEMORY[0x2A1C7C4A8](v21);
  v142 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v129 - v24;
  v26 = sub_29E2C0514();
  v146 = *(v26 - 1);
  v147 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x2A1C7C4A8](v29).n128_u64[0];
  v32 = &v129 - v31;
  if ([v1 isViewLoaded])
  {
    v132 = v7;
    v33 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel];
    if (v33)
    {
      v130 = v5;
      v133 = v11;
      v135 = v15;

      sub_29E2C04B4();
      v34 = v1;
      v35 = sub_29E2C0504();
      v36 = sub_29E2C3A34();

      v37 = os_log_type_enabled(v35, v36);
      v136 = v33;
      v131 = v10;
      v134 = v18;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v149 = v39;
        *v38 = 136446210;
        ObjectType = swift_getObjectType();
        sub_29E07D67C();
        v40 = sub_29E2C3424();
        v42 = sub_29DFAA104(v40, v41, &v149);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_29DE74000, v35, v36, "[%{public}s] Updating subviews", v38, 0xCu);
        sub_29DE93B3C(v39);
        MEMORY[0x29ED82140](v39, -1, -1);
        MEMORY[0x29ED82140](v38, -1, -1);
      }

      (*(v146 + 8))(v32, v147);
      v43 = v144;
      v52 = *&v34[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel];
      v53 = v145;
      if (v52)
      {
        v54 = v52;
        sub_29E0C961C();
        v56 = v55;
        [v54 setAttributedText_];

        v57 = *&v34[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel];
        if (!v57)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v58 = v57;
        sub_29E0CA03C();
        v59 = sub_29E2C33A4();

        [v58 setText_];

        v147 = v34;
        v60 = *&v34[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton];
        if (!v60)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v61 = v60;
        sub_29E2C3314();
        v62 = v142;
        v146 = *(v43 + 2);
        (v146)(v142, v25, v53);
        if (qword_2A1A62788 != -1)
        {
          swift_once();
        }

        v63 = qword_2A1A67F80;
        sub_29E2BCC74();
        v64 = v63;
        sub_29E2C3414();
        v144 = *(v43 + 1);
        (v144)(v25, v53);
        v65 = sub_29E2C33A4();

        [v61 setTitle:v65 forState:0];

        v66 = v147;
        v67 = *&v147[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton];
        if (!v67)
        {
          goto LABEL_32;
        }

        v68 = v67;
        sub_29E2C3314();
        (v146)(v62, v25, v53);
        sub_29E2BCC74();
        sub_29E2C3414();
        (v144)(v25, v53);
        v69 = sub_29E2C33A4();

        [v68 setTitle:v69 forState:0];

        v70 = *&v66[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView];
        if (!v70)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v71 = v136;
        v72 = *(v136 + 16);
        v73 = v70;
        v74 = [v66 view];
        v75 = v135;
        if (!v74)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v76 = v74;
        [v74 bounds];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;

        v152.origin.x = v78;
        v152.origin.y = v80;
        v152.size.width = v82;
        v152.size.height = v84;
        Width = CGRectGetWidth(v152);
        v86 = *(v71 + 32);
        v146 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28LastMenstrualPeriodViewModel_today;
        v73[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_filter] = 51;
        v87 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource;
        v88 = *&v73[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource];
        v147 = v86;
        if (v88)
        {
          v89 = *(v88 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle);
          sub_29DE9408C(0, &qword_2A1A5E0A0);
          v90 = v89;
          v91 = v72;
          v92 = v86;
          v93 = v90;
          v94 = sub_29E2C40D4();

          if (v94)
          {

            return;
          }

          v145 = v87;
        }

        else
        {
          v145 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_cycleDataSource;
          v95 = v86;
          v93 = 0;
        }

        v96 = [v72 menstruationSegment];
        v97 = [v96 days];

        sub_29E1CB854(Width);
        if (__OFADD__(v97, v98))
        {
          __break(1u);
        }

        else
        {
          v99 = [v72 lastDayIndex];
          if (v99)
          {
            v100 = v99;
            [v99 integerValue];
          }

          v143 = v93;
          v144 = v73;
          v101 = [v72 menstruationSegment];
          [v101 days];

          sub_29E2C30D4();
          v102 = v141;
          sub_29E2C30D4();
          sub_29DEF60A0();
          v142 = v72;
          v103 = v131;
          if (sub_29E2C32B4())
          {
            v104 = v133;
            v105 = *(v133 + 32);
            v106 = v139;
            v105(v139, v75, v103);
            v107 = v130;
            v105((v106 + *(v130 + 48)), v102, v103);
            v108 = v132;
            sub_29E07D828(v106, v132, sub_29DEC6594);
            v109 = *(v107 + 48);
            v110 = v134;
            v105(v134, v108, v103);
            v111 = *(v104 + 8);
            v111(v108 + v109, v103);
            v141 = v111;
            sub_29DEC704C(v106, v108);
            v112 = *(v107 + 48);
            v113 = v138;
            v105((v110 + *(v138 + 36)), (v108 + v112), v103);
            v111(v108, v103);
            v114 = v140;
            sub_29E07D828(v110, v140, sub_29DEC65FC);
            (*(v137 + 56))(v114, 0, 1, v113);
            v115 = v147;
            v149 = [v147 activeDayRange];
            v150 = v116;
            sub_29E2C3AB4();
            [v115 setActiveDayRange_];
            v117 = *(v133 + 16);
            v118 = v135;
            v117(v135, v136 + v146, v103);
            v119 = type metadata accessor for SingleCycleViewDataSource();
            v120 = objc_allocWithZone(v119);
            v120[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_dataFetchingState] = 0;
            v121 = v142;
            *&v120[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycle] = v142;
            *&v120[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_cycleViewModelProvider] = v115;
            v117(&v120[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25SingleCycleViewDataSource_today], v118, v103);
            v148.receiver = v120;
            v148.super_class = v119;
            v122 = v121;
            v123 = v115;
            v124 = objc_msgSendSuper2(&v148, sel_init);
            (v141)(v118, v103);
            v125 = v144;
            v126 = *&v144[v145];
            *&v144[v145] = v124;
            v127 = v124;

            v128 = *&v125[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin15SingleCycleView_collectionView];
            [v128 setDataSource_];

            [v128 reloadData];
            sub_29DEF637C(v134);

            return;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_30;
    }

    sub_29E2C04B4();
    v44 = v1;
    v45 = sub_29E2C0504();
    v46 = sub_29E2C3A14();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v149 = v48;
      *v47 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29E07D67C();
      v49 = sub_29E2C3424();
      v51 = sub_29DFAA104(v49, v50, &v149);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_29DE74000, v45, v46, "[%{public}s] View model is nil, skipping updating the cycle view", v47, 0xCu);
      sub_29DE93B3C(v48);
      MEMORY[0x29ED82140](v48, -1, -1);
      MEMORY[0x29ED82140](v47, -1, -1);
    }

    (*(v146 + 8))(v28, v147);
  }
}

id sub_29E07C100(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton] = 0;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton] = 0;
  if (a2)
  {
    v6 = sub_29E2C33A4();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for LastMenstrualPeriodViewController();
  v7 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v6, a3);

  v8 = v7;
  sub_29E07A050();

  return v8;
}

id sub_29E07C250(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_dateRangeLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_confirmCycleButton] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_logLastCycleButton] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for LastMenstrualPeriodViewController();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_29E07A050();
  }

  return v5;
}

id sub_29E07C344()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2C0514();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MenstrualPeriodViewController = type metadata accessor for LastMenstrualPeriodViewController();
  v25.receiver = v1;
  v25.super_class = MenstrualPeriodViewController;
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  sub_29E2C04B4();
  v8 = v1;
  v9 = sub_29E2C0504();
  v10 = sub_29E2C3A34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23[1] = ObjectType;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446210;
    v23[2] = swift_getObjectType();
    sub_29E07D67C();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] View did load", v12, 0xCu);
    sub_29DE93B3C(v13);
    MEMORY[0x29ED82140](v13, -1, -1);
    MEMORY[0x29ED82140](v12, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  result = [v8 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor_];

    sub_29E07A168();
    sub_29E07A8AC();
    sub_29E07B284();
    sub_29E07D7C4(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29E2CAB20;
    v21 = sub_29E2C0B54();
    v22 = MEMORY[0x29EDC7870];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    sub_29E2C3C64();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E07C6BC(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v34 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if (!HKShowSensitiveLogItems())
  {
    goto LABEL_7;
  }

  if (a1)
  {
    if (HKShowSensitiveLogItems())
    {
      sub_29E2C04B4();
      v13 = v12;
      v14 = sub_29E2C0504();
      v15 = sub_29E2C3A34();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36 = v17;
        *v16 = 136446210;
        ObjectType = swift_getObjectType();
        sub_29E07D67C();
        v18 = sub_29E2C3424();
        v20 = sub_29DFAA104(v18, v19, &v36);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Confirmed period not yet started", v16, 0xCu);
        sub_29DE93B3C(v17);
        MEMORY[0x29ED82140](v17, -1, -1);
        MEMORY[0x29ED82140](v16, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v10, v4);
      return;
    }

LABEL_7:

    return;
  }

  sub_29E2C04B4();
  v21 = v12;
  v22 = a2;
  v23 = sub_29E2C0504();
  v24 = sub_29E2C3A14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v25 = 136446466;
    ObjectType = swift_getObjectType();
    sub_29E07D67C();
    v26 = sub_29E2C3424();
    v28 = sub_29DFAA104(v26, v27, &v36);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    ObjectType = a2;
    v29 = a2;
    sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
    v30 = sub_29E2C3424();
    v32 = sub_29DFAA104(v30, v31, &v36);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_29DE74000, v23, v24, "[%{public}s] Failed to confirm period not yet started with error: %{public}s", v25, 0x16u);
    v33 = v34;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v33, -1, -1);
    MEMORY[0x29ED82140](v25, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
}

void sub_29E07CAA4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

id sub_29E07CB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LastMenstrualPeriodViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E07CC6C()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCEA4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler;
  swift_beginAccess();
  sub_29E07D6C0(v0 + v9, v17);
  if (!v18)
  {
    return sub_29E07D73C(v17);
  }

  sub_29DE9DC34(v17, v16);
  sub_29E07D73C(v17);
  v10 = *sub_29DE966D4(v16, v16[3]);
  (*(v2 + 104))(v4, *MEMORY[0x29EDB9C78], v1);
  sub_29E2BCCA4();
  (*(v2 + 8))(v4, v1);
  v11 = sub_29E2BCD84();
  (*(v6 + 8))(v8, v5);
  v12 = HKMCTodayIndex();

  v13 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [*(v10 + 24) setLastMenstrualPeriodDismissalDay_];

  return sub_29DE93B3C(v16);
}

void sub_29E07CEB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler;
    swift_beginAccess();
    sub_29E07D6C0(v0 + v2, v5);
    if (v6)
    {
      sub_29DE9DC34(v5, v4);

      sub_29E07D73C(v5);
      sub_29DE966D4(v4, v4[3]);
      v3 = *(v1 + 24);
      sub_29DFD8800(v3);

      sub_29DE93B3C(v4);
    }

    else
    {
      sub_29E07D73C(v5);
    }
  }
}

uint64_t sub_29E07CF80()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v38[-1] - v7;
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v9 = v1;
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A34();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v12 = 136446210;
      v38[0] = swift_getObjectType();
      sub_29E07D67C();
      v13 = sub_29E2C3424();
      v15 = v5;
      v16 = v2;
      v17 = v3;
      v18 = sub_29DFAA104(v13, v14, v39);

      *(v12 + 4) = v18;
      v3 = v17;
      v2 = v16;
      v5 = v15;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Confirming period not yet started", v12, 0xCu);
      v19 = v37;
      sub_29DE93B3C(v37);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  v20 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_viewModel];
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_eventHandler;
    swift_beginAccess();
    sub_29E07D6C0(&v1[v22], v39);
    if (v39[3])
    {
      sub_29DE9DC34(v39, v38);
      v23 = v21;
      sub_29E07D73C(v39);
      v24 = sub_29DE966D4(v38, v38[3]);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = *v24;
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = sub_29E07D7B0;
      v27[4] = v25;
      swift_retain_n();

      sub_29DFD8AB0(sub_29E07D7B8, v27);

      return sub_29DE93B3C(v38);
    }

    else
    {
      return sub_29E07D73C(v39);
    }
  }

  else
  {
    sub_29E2C04B4();
    v29 = v1;
    v30 = sub_29E2C0504();
    v31 = sub_29E2C3A14();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39[0] = v33;
      *v32 = 136446210;
      v38[0] = swift_getObjectType();
      sub_29E07D67C();
      v34 = sub_29E2C3424();
      v36 = sub_29DFAA104(v34, v35, v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_29DE74000, v30, v31, "[%{public}s] Cycle is nil, aborting", v32, 0xCu);
      sub_29DE93B3C(v33);
      MEMORY[0x29ED82140](v33, -1, -1);
      MEMORY[0x29ED82140](v32, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_29E07D3C4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_detailsLabel);
  if (v1)
  {
    sub_29DE9408C(0, &unk_2A1A61A00);
    v2 = v1;
    v3 = sub_29E2C3FD4();
    [v2 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29E07D490()
{
  v1 = sub_29E2C0514();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v5 = v0;
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E07D67C();
    v10 = sub_29E2C3424();
    v12 = sub_29DFAA104(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Received update from view model provider", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LastMenstrualPeriodViewController_cycleView];
  if (v13)
  {
    v14 = v13;
    sub_29E1CAA78();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29E07D67C()
{
  result = qword_2A181B8B0;
  if (!qword_2A181B8B0)
  {
    type metadata accessor for LastMenstrualPeriodViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181B8B0);
  }

  return result;
}

uint64_t sub_29E07D6C0(uint64_t a1, uint64_t a2)
{
  sub_29DEF964C(0, &qword_2A1819D80, &qword_2A1819D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E07D73C(uint64_t a1)
{
  sub_29DEF964C(0, &qword_2A1819D80, &qword_2A1819D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E07D7C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E07D828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E07D890@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v191 = a2;
  v145 = sub_29E2C0254();
  v146 = *(v145 - 8);
  MEMORY[0x2A1C7C4A8](v145);
  v134 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v183 = &v134 - v7;
  v182 = sub_29E2C01F4();
  v210 = *(v182 - 8);
  MEMORY[0x2A1C7C4A8](v182);
  v181 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29E07FC68(0, &qword_2A1A61B88, MEMORY[0x29EDC49B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v180 = &v134 - v11;
  v179 = sub_29E2C0234();
  v186 = *(v179 - 8);
  MEMORY[0x2A1C7C4A8](v179);
  v206 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v205 = &v134 - v14;
  v204 = sub_29E2C0214();
  v209 = *(v204 - 8);
  MEMORY[0x2A1C7C4A8](v204);
  v178 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v203 = (&v134 - v17);
  v202 = sub_29E2C0194();
  v199 = *(v202 - 8);
  MEMORY[0x2A1C7C4A8](v202);
  v211 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_29E2C0204();
  v19 = *(v214 - 8);
  MEMORY[0x2A1C7C4A8](v214);
  v176 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v213 = &v134 - v22;
  v177 = sub_29E2BC5F4();
  v198 = *(v177 - 8);
  MEMORY[0x2A1C7C4A8](v177);
  v207 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_29E2C31A4();
  v24 = *(v185 - 8);
  MEMORY[0x2A1C7C4A8](v185);
  v184 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_29E2BCBB4();
  v26 = *(v201 - 8);
  MEMORY[0x2A1C7C4A8](v201);
  v175 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v212 = &v134 - v29;
  sub_29E07FC68(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], v9);
  MEMORY[0x2A1C7C4A8](v30 - 8);
  v32 = &v134 - v31;
  v33 = sub_29E2BCC94();
  v34 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v36 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_29E2BCEA4();
  v135 = *(v136 - 8);
  v37 = MEMORY[0x2A1C7C4A8](v136);
  v39 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 104))(v36, *MEMORY[0x29EDB9C78], v33, v37);
  sub_29E2BCCA4();
  (*(v34 + 8))(v36, v33);
  sub_29E2BCC74();
  v40 = sub_29E2BCC84();
  (*(*(v40 - 8) + 56))(v32, 0, 1, v40);
  v193 = v39;
  sub_29E2BCE34();
  v187 = [a1 mostLikelyDays];
  v147 = v41;
  v188 = a1;
  v144 = [a1 allDays];
  v140 = v42;
  v43 = sub_29E07F2FC(v144, v42);
  v45 = v44;
  if (v43 == sub_29E2BC244())
  {
    sub_29E2C01C4();
    v24 = v193;
    goto LABEL_15;
  }

  v174 = a3;
  v46 = v43 + v45;
  if (__OFADD__(v43, v45))
  {
    goto LABEL_75;
  }

  if (v46 < v43)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v43 != v46)
  {
    v194 = objc_opt_self();
    v56 = v43;
    v208 = 0;
    v173 = (v24 + 8);
    v190 = (v19 + 104);
    v189 = (v19 + 8);
    v164 = (v26 + 16);
    v172 = *MEMORY[0x29EDB9CC0];
    if (v191)
    {
      v57 = 0x57656C6974726566;
    }

    else
    {
      v57 = 0x61757274736E656DLL;
    }

    v163 = v57;
    v58 = 0xEC0000006E6F6974;
    if (v191)
    {
      v58 = 0xED0000776F646E69;
    }

    v162 = v58;
    v200 = (v209 + 104);
    v171 = *MEMORY[0x29EDB9CD0];
    v161 = (v209 + 16);
    v160 = (v19 + 16);
    v170 = *MEMORY[0x29EDB9CD8];
    v159 = (v199 + 2);
    v158 = (v199 + 7);
    v157 = (v210 + 104);
    v169 = *MEMORY[0x29EDB9CB8];
    v156 = (v209 + 8);
    v155 = (v199 + 1);
    v168 = *MEMORY[0x29EDB9CF0];
    v154 = (v198 + 8);
    v153 = (v26 + 8);
    v167 = *MEMORY[0x29EDC4F10];
    v152 = -v45;
    v166 = xmmword_29E2D06A0;
    v143 = *MEMORY[0x29EDC4F20];
    v138 = *MEMORY[0x29EDC4F48];
    v142 = *MEMORY[0x29EDC4F40];
    v137 = *MEMORY[0x29EDC4F28];
    v151 = *MEMORY[0x29EDC4F08];
    v150 = (v186 + 16);
    v149 = v186 + 32;
    v148 = (v186 + 8);
    v141 = v146 + 32;
    v209 = v43 - v187;
    v139 = -v144;
    v47 = MEMORY[0x29EDCA190];
    v192 = MEMORY[0x29EDCA190];
    v24 = v193;
    v165 = v43 + v45;
    while (1)
    {
      if (v56 >= v46)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v199 = v47;
      v59 = v184;
      v210 = v56;
      sub_29E2C30D4();
      sub_29E2C3194();
      (*v173)(v59, v185);
      sub_29E07FC68(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
      v60 = sub_29E2BCE84();
      v61 = *(v60 - 8);
      v62 = *(v61 + 72);
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v166;
      v65 = v64 + v63;
      v66 = *(v61 + 104);
      v66(v65, v172, v60);
      v66(v65 + v62, v171, v60);
      v66(v65 + 2 * v62, v170, v60);
      v66(v65 + 3 * v62, v169, v60);
      v66(v65 + 4 * v62, v168, v60);
      sub_29DE924A4(v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_29E2BCD14();

      v67 = sub_29E2BCCE4();
      if (v191)
      {
        v68 = [v188 predictionPrimarySource];
        v69 = v210;
        if (v68 != 3 && [v188 predictionPrimarySource] != 4)
        {
          goto LABEL_31;
        }

        v70 = [v188 mostLikelyDays];
        v72 = 0x7FFFFFFFFFFFFFFFLL;
        if (v71 > 0)
        {
          v72 = v70 + v71 - 1;
        }

        v73 = &selRef_hkmc_ovulationDayCycleTimelineColor;
        v74 = &selRef_hkmc_ovulationDayCycleTimelineColor;
        if (v69 != v72)
        {
LABEL_31:
          v73 = &selRef_hkmc_fertilityProjectionColor;
          v74 = &selRef_hkmc_fertilityProjectionColor;
        }
      }

      else
      {
        v74 = &selRef_hkmc_menstruationProjectionHighColor;
        v73 = &selRef_hkmc_menstruationProjectionLowColor;
        v69 = v210;
      }

      v75 = v194;
      v76 = [v194 *v74];
      v77 = [v75 *v73];
      v78 = [v75 clearColor];
      v79 = [v75 clearColor];
      v80 = [v75 labelColor];
      v81 = *v190;
      (*v190)(v213, v167, v214);
      v197 = v77;
      v198 = v76;
      if (v187 <= v69 && v209 < v147)
      {
        break;
      }

      if (v144 <= v69 && v139 + v69 < v140)
      {

        v78 = v77;
        v90 = v79;
        v91 = v194;
        v84 = [v194 whiteColor];

        v86 = [v91 blackColor];
        v89 = 1;
LABEL_41:
        v196 = v86;
        v79 = v84;
        goto LABEL_42;
      }

      if (v67)
      {
        v111 = v79;
        v112 = v194;
        v113 = [v194 labelColor];

        v114 = [v112 whiteColor];
        v115 = [v112 hkmc_projectionTextColor];

        v117 = v213;
        v116 = v214;
        (*v189)(v213, v214);
        v81(v117, v143, v116);
        v89 = 0;
        v196 = v115;
        v79 = v114;
        v78 = v113;
      }

      else
      {
        v196 = v80;
        v89 = 0;
      }

LABEL_42:
      v24 = v78;
      v92 = sub_29E2BC554();
      if (v93)
      {
        goto LABEL_82;
      }

      v215 = v92;
      sub_29DEA68FC();
      v94 = sub_29E2C43C4();
      v96 = v95;
      v97 = sub_29E2BC554();
      if (v98)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v215 = 0;
        v216 = 0xE000000000000000;
        sub_29E2C4584();

        v215 = 0xD000000000000027;
        v216 = 0x800000029E2FC540;
        sub_29E07FCCC();
        v133 = sub_29E2C48D4();
        MEMORY[0x29ED7FCC0](v133);

        result = sub_29E2C4724();
        __break(1u);
        return result;
      }

      v195 = v79;
      if (v97 == 1 || !v208)
      {
        v99 = sub_29E2BCD34();
        v100 = sub_29E2BC5B4();
        if (v101)
        {
          goto LABEL_81;
        }

        v102 = v100 - 1;
        if (__OFSUB__(v100, 1))
        {
          goto LABEL_72;
        }

        if ((v102 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }

        if (v102 >= *(v99 + 16))
        {
          goto LABEL_74;
        }

        v103 = v99 + 16 * v102;
        v104 = v67;
        v105 = *(v103 + 32);
        v106 = *(v103 + 40);
        sub_29E2BF404();

        v215 = v105;
        v216 = v106;
        sub_29DE9DE68();
        sub_29E2C4364();
        v67 = v104;
      }

      (*v164)(v175, v212, v201);
      sub_29E2C0184();
      v107 = *v200;
      if (!v89)
      {
        if (v67)
        {
LABEL_55:
          v108 = v203;
          *v203 = v94;
          v108[1] = v96;
          v110 = &v176;
        }

        else
        {
          v108 = v203;
          *v203 = v94;
          v108[1] = v96;
          v110 = &v172;
        }

        v109 = *(v110 - 64);
        goto LABEL_60;
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_55;
      }

      v108 = v203;
      *v203 = v94;
      v108[1] = v96;
      v109 = v137;
      v108[2] = 0x3FC999999999999ALL;
LABEL_60:
      v118 = v204;
      v107(v108, v109, v204);
      (*v161)(v178, v108, v118);
      (*v160)(v176, v213, v214);
      v119 = v180;
      v120 = v202;
      (*v159)(v180, v211, v202);
      (*v158)(v119, 0, 1, v120);
      (*v157)(v181, v151, v182);
      v121 = v24;
      v122 = v195;
      v123 = v196;
      v124 = v205;
      sub_29E2C0224();
      v125 = v179;
      (*v150)(v206, v124, v179);
      v47 = v199;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_29E14436C(0, v47[2] + 1, 1, v47);
      }

      v24 = v193;
      v126 = v207;
      v128 = v47[2];
      v127 = v47[3];
      v129 = v128 + 1;
      if (v128 >= v127 >> 1)
      {
        v47 = sub_29E14436C(v127 > 1, v128 + 1, 1, v47);
      }

      v47[2] = v129;
      (*(v186 + 32))(v47 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v128, v206, v125);
      if (v129 == sub_29E2C01D4())
      {
        sub_29E2C0244();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = sub_29E144338(0, v192[2] + 1, 1, v192);
        }

        v131 = v192[2];
        v130 = v192[3];
        if (v131 >= v130 >> 1)
        {
          v192 = sub_29E144338(v130 > 1, v131 + 1, 1, v192);
        }

        (*v148)(v205, v125);
        (*v156)(v203, v204);
        (*v155)(v211, v202);
        (*v189)(v213, v214);
        (*v154)(v126, v177);
        (*v153)(v212, v201);
        v132 = v192;
        v192[2] = v131 + 1;
        (*(v146 + 32))(v132 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v131, v183, v145);
        v47 = MEMORY[0x29EDCA190];
      }

      else
      {

        (*v148)(v205, v125);
        (*v156)(v203, v204);
        (*v155)(v211, v202);
        (*v189)(v213, v214);
        (*v154)(v126, v177);
        (*v153)(v212, v201);
      }

      v46 = v165;
      --v208;
      ++v209;
      v56 = v210 + 1;
      if (v152 == v208)
      {
        goto LABEL_7;
      }
    }

    v78 = v76;
    v82 = v79;
    v83 = v194;
    v84 = [v194 whiteColor];

    v85 = &selRef_blackColor;
    if ((v191 & 1) == 0)
    {
      v85 = &selRef_whiteColor;
    }

    v86 = [v83 *v85];

    v88 = v213;
    v87 = v214;
    (*v189)(v213, v214);
    v81(v88, v143, v87);
    v89 = 1;
    goto LABEL_41;
  }

  v47 = MEMORY[0x29EDCA190];
  v192 = MEMORY[0x29EDCA190];
  v24 = v193;
LABEL_7:
  if (!v47[2])
  {
    goto LABEL_12;
  }

  sub_29E2BF404();
  sub_29E2C0244();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v49 = v192[2];
    v48 = v192[3];
    if (v49 >= v48 >> 1)
    {
      v192 = sub_29E144338(v48 > 1, v49 + 1, 1, v192);
    }

    v50 = v192;
    v192[2] = v49 + 1;
    (*(v146 + 32))(v50 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v49, v134, v145);
LABEL_12:
    v51 = sub_29E2BCD94();
    v52 = sub_29E2C01D4();
    if (v52 < 0)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    sub_29E07FAB8(0, v52, v51);

    v53 = sub_29E2BCDB4();
    v54 = sub_29E2C01D4();
    if ((v54 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    v192 = sub_29E144338(0, v192[2] + 1, 1, v192);
  }

  sub_29E07FAB8(0, v54, v53);

  sub_29E2C01C4();
LABEL_15:

  return (*(v135 + 8))(v24, v136);
}

uint64_t sub_29E07F2FC(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_29E2BC5F4();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E07FC68(0, &unk_2A1A626B0, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_29E2BCC94();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BCEA4();
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x29EDB9C78], v15, v20);
  sub_29E2BCCA4();
  (*(v16 + 8))(v18, v15);
  sub_29E2BCC74();
  v23 = sub_29E2BCC84();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  sub_29E2BCE34();
  v24 = sub_29E2C01D4();
  v25 = sub_29E2BCD84();
  HKMCTodayIndex();

  v26 = v57;
  result = HKUnionDayIndexRange();
  if ((v24 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (4 * v24 < v28)
  {
    v29 = v26;
  }

  else
  {
    a1 = result;
    v29 = v28;
  }

  sub_29E2C30D4();
  sub_29E2C3194();
  (*(v6 + 8))(v8, v5);
  sub_29E07FC68(0, &qword_2A1A61CF0, MEMORY[0x29EDB9D00], MEMORY[0x29EDC9E90]);
  v30 = sub_29E2BCE84();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29E2CAB20;
  (*(v31 + 104))(v33 + v32, *MEMORY[0x29EDB9CF0], v30);
  sub_29DE924A4(v33);
  swift_setDeallocating();
  (*(v31 + 8))(v33 + v32, v30);
  swift_deallocClassInstance();
  v34 = v56;
  v35 = v11;
  sub_29E2BCD14();

  result = sub_29E2BC5C4();
  v36 = v34;
  if (v37)
  {
    v38 = a1;
    v39 = v29;
  }

  else
  {
    v40 = result;
    result = sub_29E2BCCD4();
    v38 = a1;
    v39 = v29;
    if (v40 != result)
    {
      v41 = v40 + v24;
      if (__OFADD__(v40, v24))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      result = sub_29E2BCCD4();
      v42 = v41 - result;
      if (__OFSUB__(v41, result))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (!v24)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v42 == 0x8000000000000000 && v24 == -1)
      {
        goto LABEL_49;
      }

      v43 = v42 % v24;
      v38 = a1 - v43;
      if (__OFSUB__(a1, v43))
      {
        goto LABEL_45;
      }

      v44 = __OFADD__(v29, v43);
      v39 = v29 + v43;
      if (v44)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }
  }

  if (!v24)
  {
    goto LABEL_38;
  }

  if (v39 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_40;
  }

  v45 = (v24 + v39 / v24 * v24 - v39) % v24;
  v46 = v39 + v45;
  if (__OFADD__(v39, v45))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = 2 * v24;
  if (v46 >= 2 * v24)
  {
    goto LABEL_24;
  }

  (*(v54 + 8))(v36, v55);
  (*(v52 + 8))(v35, v53);
  result = (*(v50 + 8))(v22, v51);
  v44 = __OFSUB__(v38, v24);
  v38 -= v24;
  if (v44)
  {
    goto LABEL_41;
  }

  v44 = __OFADD__(v46, v47);
  v46 += v47;
  if (!v44)
  {
    return v38;
  }

  __break(1u);
LABEL_24:
  if (v46 >= 3 * v24)
  {
LABEL_35:
    (*(v54 + 8))(v36, v55);
    (*(v52 + 8))(v35, v53);
    (*(v50 + 8))(v22, v51);
    return v38;
  }

  if (__OFSUB__(a1, v38))
  {
    goto LABEL_46;
  }

  v48 = v38 + v46 - 1;
  if (v29 <= 0)
  {
    v49 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v49 = v29 + a1 - 1;
  }

  (*(v54 + 8))(v36, v55);
  (*(v52 + 8))(v35, v53);
  result = (*(v50 + 8))(v22, v51);
  if (__OFSUB__(v48, v49))
  {
    goto LABEL_48;
  }

  if (a1 - v38 >= v48 - v49 || (v44 = __OFSUB__(v38, v24), v38 -= v24, !v44))
  {
    if (!__OFADD__(v46, v24))
    {
      return v38;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_29E07FAB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v4 = MEMORY[0x29EDCA190];
  if (!v3)
  {
    return v4;
  }

  v6 = result;
  v21 = MEMORY[0x29EDCA190];
  result = sub_29E1811FC(0, v3 & ~(v3 >> 63), 0);
  if (a2 >= v6 && (v3 & 0x8000000000000000) == 0)
  {
    v17 = v3;
    v7 = 0;
    v4 = v21;
    v18 = a3 + 32;
    v19 = *(a3 + 16);
    while (v7 < v3)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_20;
      }

      result = sub_29E2BCCD4();
      v9 = v6 + v7 + result;
      if (__OFADD__(v6 + v7, result))
      {
        goto LABEL_21;
      }

      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        goto LABEL_22;
      }

      result = sub_29E2C01D4();
      if (!result)
      {
        goto LABEL_23;
      }

      if (v10 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_26;
      }

      if (v10 % result >= v19)
      {
        goto LABEL_24;
      }

      v11 = (v18 + 16 * (v10 % result));
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v21 + 16);
      v14 = *(v21 + 24);
      result = sub_29E2BF404();
      if (v15 >= v14 >> 1)
      {
        result = sub_29E1811FC((v14 > 1), v15 + 1, 1);
      }

      *(v21 + 16) = v15 + 1;
      v16 = v21 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v7;
      if ((v6 + v7 - 1) >= a2)
      {
        goto LABEL_25;
      }

      v3 = v17;
      if (v8 == v17)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_29E07FC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E07FCCC()
{
  result = qword_2A181B8B8;
  if (!qword_2A181B8B8)
  {
    sub_29E2BC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181B8B8);
  }

  return result;
}

uint64_t sub_29E07FD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v41 = a2;
  v2 = sub_29E2BCD24();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E2BCD74();
  v36 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E2BCCF4();
  v31 = *(v34 - 8);
  v5 = v31;
  MEMORY[0x2A1C7C4A8](v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF33490(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v30 - v9;
  sub_29DF33490(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_29E2BC5F4();
  v32 = *(v14 - 8);
  v33 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E2BCEA4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v19(v13, 1, 1, v17);
  v20 = sub_29E2BCF04();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_29E2BC5D4();
  (*(v18 + 16))(v13, v43, v17);
  v19(v13, 0, 1, v17);
  sub_29E2BC5E4();
  sub_29E2BC584();
  v21 = *(v5 + 104);
  v22 = v34;
  v21(v7, *MEMORY[0x29EDB9C88], v34);
  v23 = v35;
  v24 = v36;
  v25 = v38;
  (*(v36 + 104))(v35, *MEMORY[0x29EDB9C98], v38);
  v27 = v39;
  v26 = v40;
  v28 = v37;
  (*(v39 + 104))(v37, *MEMORY[0x29EDB9C90], v40);
  sub_29E2BCE54();
  (*(v27 + 8))(v28, v26);
  (*(v24 + 8))(v23, v25);
  (*(v31 + 8))(v7, v22);
  return (*(v32 + 8))(v16, v33);
}

uint64_t sub_29E0802A0()
{
  sub_29E0826D0(0, &unk_2A181B920, type metadata accessor for HeaderWithActionButtonItem);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v19[-v2];
  v4 = type metadata accessor for HeaderWithActionButtonItem();
  v5 = *(v4 - 1);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(&v0[v8], v20);
  if (v21)
  {
    sub_29DF61DEC();
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      sub_29E0824CC(v3, v7);
      v10 = v4[6];
      v11 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_listContentConfiguration;
      swift_beginAccess();
      v12 = sub_29E2C08B4();
      (*(*(v12 - 8) + 24))(&v0[v11], &v7[v10], v12);
      swift_endAccess();
      v13 = v4[7];
      v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonConfiguration;
      swift_beginAccess();
      v15 = sub_29E2C4274();
      (*(*(v15 - 8) + 24))(&v0[v14], &v7[v13], v15);
      swift_endAccess();
      v16 = sub_29E0805F8();
      v17 = *&v7[v4[8]];
      [v16 setHidden_];

      [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton] addAction:v17 forControlEvents:0x2000];
      [v0 setNeedsUpdateConfiguration];
      sub_29E080760(*(v7 + 2), *(v7 + 3));
      return sub_29E082674(v7);
    }
  }

  else
  {
    sub_29E082470(v20, &qword_2A18180D8, sub_29DF61DEC);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_29E082470(v3, &unk_2A181B920, type metadata accessor for HeaderWithActionButtonItem);
}

id sub_29E0805F8()
{
  v1 = sub_29E2C4274();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton;
  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton);
  }

  else
  {
    sub_29DE9408C(0, &qword_2A1819798);
    v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonConfiguration;
    swift_beginAccess();
    (*(v2 + 16))(v4, v0 + v8, v1);
    v9 = v0;
    v10 = sub_29E2C4284();
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v5);
    *(v9 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

void sub_29E080760(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_29E2C33A4();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_29E081ADC();
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x656C7469542ELL, 0xE600000000000000);
    v5 = sub_29E2C33A4();

    [v4 setAccessibilityIdentifier_];

    v6 = sub_29E0805F8();
    sub_29E2BF404();
    MEMORY[0x29ED7FCC0](0x6C69617465442ELL, 0xE700000000000000);
    v8 = sub_29E2C33A4();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    v7 = sub_29E081ADC();
    [v7 setAccessibilityIdentifier_];

    v8 = sub_29E0805F8();
    [v8 setAccessibilityIdentifier_];
  }
}

id sub_29E0808D0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  sub_29E2C0844();
  sub_29E2C4244();
  v11 = MEMORY[0x29EDCA190];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_sideBySideConstraints] = MEMORY[0x29EDCA190];
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_stackedConstraints] = v11;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_hiddenButtonConstraints] = v11;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel] = 0;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E0809F0();

  return v12;
}

void sub_29E0809F0()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 setEdgesPreservingSuperviewLayoutMargins_];

  v3 = [v1 contentView];
  v4 = sub_29E081ADC();
  [v3 addSubview_];

  v5 = [v1 contentView];
  v6 = sub_29E0805F8();
  [v5 addSubview_];

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton;
  LODWORD(v8) = 1148846080;
  [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton] setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [*&v1[v7] setContentCompressionResistancePriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [*&v1[v7] setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [*&v1[v7] setContentHuggingPriority:1 forAxis:v11];
  sub_29DE99B54();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E2D2410;
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel;
  v14 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel] leadingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v18;
  v19 = [v1 contentView];
  v20 = [v19 &off_29F3632A8 + 1];

  v21 = [v20 trailingAnchor];
  v22 = [*&v1[v13] &selRef_bounds + 4];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor_];

  *(v12 + 40) = v23;
  v24 = [*&v1[v7] leadingAnchor];
  v25 = [v1 contentView];
  v26 = [v25 layoutMarginsGuide];

  v27 = [v26 leadingAnchor];
  v28 = [v24 &selRef_currentPoint + 7];

  *(v12 + 48) = v28;
  v29 = [*&v1[v13] topAnchor];
  v30 = [v1 contentView];
  v31 = [v30 layoutMarginsGuide];

  v32 = [v31 topAnchor];
  v33 = [v29 constraintEqualToAnchor_];

  *(v12 + 56) = v33;
  v34 = [*&v1[v7] topAnchor];
  v35 = [v1 contentView];
  v36 = [v35 layoutMarginsGuide];

  v37 = [v36 topAnchor];
  v38 = [v34 constraintGreaterThanOrEqualToAnchor_];

  *(v12 + 64) = v38;
  v39 = [v1 contentView];
  v40 = [v39 layoutMarginsGuide];

  v41 = [v40 bottomAnchor];
  v42 = [*&v1[v7] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v12 + 72) = v43;
  v44 = objc_opt_self();
  sub_29DE9408C(0, &qword_2A1A61A10);
  v45 = sub_29E2C3604();
  [v44 activateConstraints_];

  v46 = [*&v1[v7] trailingAnchor];
  v47 = [v1 contentView];
  v48 = [v47 layoutMarginsGuide];

  v49 = [v48 trailingAnchor];
  swift_beginAccess();
  sub_29E2C4184();
  v51 = v50;
  swift_endAccess();
  v52 = [v46 constraintEqualToAnchor:v49 constant:v51];

  v53 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint;
  v54 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint] = v52;

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_29E2CE070;
  v56 = [*&v1[v13] lastBaselineAnchor];
  v57 = [*&v1[v7] lastBaselineAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v55 + 32) = v58;
  v59 = [*&v1[v7] leadingAnchor];
  v60 = [*&v1[v13] trailingAnchor];
  v61 = [v59 constraintEqualToSystemSpacingAfterAnchor:v60 multiplier:1.0];

  *(v55 + 40) = v61;
  v62 = *&v1[v53];
  if (v62)
  {
    *(v55 + 48) = v62;
    v63 = v62;
    v64 = [v1 contentView];
    v65 = [v64 layoutMarginsGuide];

    v66 = [v65 bottomAnchor];
    v67 = [*&v1[v13] &selRef_setDuration_ + 5];
    v68 = [v66 constraintGreaterThanOrEqualToAnchor_];

    *(v55 + 56) = v68;
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_sideBySideConstraints] = v55;

    v69 = [v1 contentView];
    v70 = [v69 layoutMarginsGuide];

    v71 = [v70 leadingAnchor];
    v72 = [*&v1[v7] leadingAnchor];
    swift_beginAccess();
    sub_29E2C4184();
    v74 = v73;
    swift_endAccess();
    v75 = [v71 constraintEqualToAnchor:v72 constant:v74];

    v76 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint;
    v77 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint];
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint] = v75;

    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_29E2CDBD0;
    v79 = [*&v1[v7] topAnchor];
    v80 = [*&v1[v13] bottomAnchor];
    v81 = [v79 constraintEqualToSystemSpacingBelowAnchor:v80 multiplier:1.0];

    *(v78 + 32) = v81;
    v82 = *&v1[v76];
    if (v82)
    {
      v83 = v82;

      *(v78 + 40) = v83;
      v84 = [v1 contentView];
      v85 = [v84 layoutMarginsGuide];

      v86 = [v85 trailingAnchor];
      v87 = [*&v1[v7] trailingAnchor];
      v88 = [v86 constraintGreaterThanOrEqualToAnchor_];

      *(v78 + 48) = v88;
      *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_stackedConstraints] = v78;

      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_29E2CE220;
      v90 = [v1 contentView];
      v91 = [v90 layoutMarginsGuide];

      v92 = [v91 bottomAnchor];
      v93 = [*&v1[v13] bottomAnchor];
      v94 = [v92 constraintEqualToAnchor_];

      *(v89 + 32) = v94;
      *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_hiddenButtonConstraints] = v89;

      sub_29E081C68();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E081538(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_29E0826D0(0, &qword_2A1819790, MEMORY[0x29EDC78D0]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v50 = &v49 - v6;
  v49 = sub_29E2C07C4();
  v7 = *(v49 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2C08B4();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v49 - v15;
  v17 = sub_29E2C0654();
  v52.receiver = v2;
  v52.super_class = ObjectType;
  objc_msgSendSuper2(&v52, sel__bridgedUpdateConfigurationUsingState_, v17);

  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_listContentConfiguration;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v18], v10);
  v19 = sub_29E2C0674();
  v51[3] = v19;
  v51[4] = MEMORY[0x29EDC77A8];
  v20 = sub_29DEBB7E8(v51);
  (*(*(v19 - 8) + 16))(v20, a1, v19);
  sub_29E2C0894();
  (*(v11 + 8))(v13, v10);
  sub_29DE93B3C(v51);
  swift_beginAccess();
  (*(v11 + 40))(&v2[v18], v16, v10);
  swift_endAccess();
  v21 = [v2 contentView];
  swift_beginAccess();
  sub_29E2C0814();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  swift_endAccess();
  [v21 setDirectionalLayoutMargins_];

  v30 = sub_29E081ADC();
  swift_beginAccess();
  sub_29E2C07E4();
  swift_endAccess();
  sub_29E081B64();

  (*(v7 + 8))(v9, v49);
  v31 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel];
  swift_beginAccess();
  v32 = v31;
  sub_29E2C0854();
  v34 = v33;
  swift_endAccess();
  if (v34)
  {
    v35 = sub_29E2C33A4();
  }

  else
  {
    v35 = 0;
  }

  [v32 setText_];

  v36 = sub_29E0805F8();
  v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonConfiguration;
  swift_beginAccess();
  v38 = sub_29E2C4274();
  v39 = *(v38 - 8);
  v40 = v50;
  (*(v39 + 16))(v50, &v2[v37], v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  sub_29E2C42A4();

  v41 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint];
  if (v41)
  {
    swift_beginAccess();
    v42 = v41;
    sub_29E2C4184();
    v44 = v43;
    swift_endAccess();
    [v42 setConstant_];
  }

  v45 = *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint];
  if (v45)
  {
    swift_beginAccess();
    v46 = v45;
    sub_29E2C4184();
    v48 = v47;
    swift_endAccess();
    [v46 setConstant_];
  }

  sub_29E081C68();
}

id sub_29E081ADC()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E081B64()
{
  v1 = sub_29E2C0784();
  [v0 setFont_];

  v2 = sub_29E2C07A4();
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  [v0 setAdjustsFontSizeToFitWidth_];
  sub_29E2C0754();
  [v0 setMinimumScaleFactor_];
  [v0 setAllowsDefaultTighteningForTruncation_];
  v3 = sub_29E2C0724() & 1;

  return [v0 setAdjustsFontForContentSizeCategory_];
}

void sub_29E081C68()
{
  v1 = v0;
  v2 = sub_29E0805F8();
  v3 = [v2 isHidden];

  if (v3)
  {
    v4 = objc_opt_self();
    sub_29DE9408C(0, &qword_2A1A61A10);
    sub_29E2BF404();
    v5 = sub_29E2C3604();

    [v4 activateConstraints_];

    v15 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_sideBySideConstraints];
    sub_29E2BF404();
    v6 = sub_29E2BF404();
    sub_29DFCBB84(v6);
    v12 = sub_29E2C3604();

    [v4 deactivateConstraints_];
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 preferredContentSizeCategory];

    LOBYTE(v7) = sub_29E2C3E14();
    if ((v7 & 1) == 0)
    {
      sub_29E082530();
    }

    v9 = objc_opt_self();
    v16 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_hiddenButtonConstraints];
    sub_29E2BF404();
    v10 = sub_29E2BF404();
    sub_29DFCBB84(v10);
    sub_29DE9408C(0, &qword_2A1A61A10);
    v11 = sub_29E2C3604();

    [v9 deactivateConstraints_];

    sub_29E2BF404();
    v14 = sub_29E2C3604();

    [v9 activateConstraints_];
  }
}

uint64_t type metadata accessor for HeaderWithActionButtonCollectionViewCell()
{
  result = qword_2A181B910;
  if (!qword_2A181B910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E0821DC()
{
  result = sub_29E2C08B4();
  if (v1 <= 0x3F)
  {
    result = sub_29E2C4274();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E0822D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E08232C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E0802A0();
  return sub_29E082470(a1, &qword_2A18180D8, sub_29DF61DEC);
}

uint64_t (*sub_29E0823B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E082418;
}

uint64_t sub_29E082418(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E0802A0();
  }

  return result;
}

uint64_t sub_29E082470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E0826D0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E0824CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderWithActionButtonItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_29E082530()
{
  v1 = sub_29E081ADC();
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  [v1 systemLayoutSizeFittingSize_];
  v8 = v7;

  v9 = sub_29E0805F8();
  v10 = [v0 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  [v9 systemLayoutSizeFittingSize_];
  v16 = v15;

  v17 = v8 + v16;
  v18 = [v0 contentView];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v28.origin.x = v20;
  v28.origin.y = v22;
  v28.size.width = v24;
  v28.size.height = v26;
  return CGRectGetWidth(v28) < v17;
}

uint64_t sub_29E082674(uint64_t a1)
{
  v2 = type metadata accessor for HeaderWithActionButtonItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E0826D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E082724()
{
  v1 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_29E2C0844();
  sub_29E2C4244();
  v2 = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_sideBySideConstraints) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonTrailingSideBySideConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_stackedConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_hiddenButtonConstraints) = v2;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell_actionButtonLeadingStackedConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___actionButton) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40HeaderWithActionButtonCollectionViewCell____lazy_storage___titleLabel) = 0;
  sub_29E2C4724();
  __break(1u);
}

uint64_t sub_29E082828(void *a1)
{
  v2 = v1;
  v105 = a1;
  sub_29DFA3830();
  v99 = v3;
  v98 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v97 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E088954();
  v101 = *(v5 - 8);
  v102 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v100 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF38698(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v96 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E088A20();
  v92 = v9;
  v91 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E088AB4();
  v95 = v11;
  v94 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_29E2C0514();
  v13 = *(v104 - 8);
  MEMORY[0x2A1C7C4A8](v104);
  v103 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v87 - v16;
  sub_29E08BA48(0, &qword_2A181B9A8, sub_29E013B94, MEMORY[0x29EDB8B00]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v87 - v21;
  v23 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_settingsManager;
  *&v2[v23] = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
  v24 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_healthStore;
  *&v2[v24] = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_analysis] = 0;
  v25 = &v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfiguration];
  v25[2] = 0;
  *v25 = 2;
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepStore;
  v27 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v28 = sub_29E2C33A4();
  v29 = [v27 initWithIdentifier_];

  *&v2[v26] = v29;
  v30 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel__requirements;
  v31 = MEMORY[0x29EDCA190];
  v106 = MEMORY[0x29EDCA190];
  sub_29E013B94(0);
  sub_29E2C11D4();
  (*(v20 + 32))(&v2[v30], v22, v19);
  if (v31 >> 62 && sub_29E2C4484())
  {
    v32 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v32 = MEMORY[0x29EDCA1A0];
  }

  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_subscriptions] = v32;
  v33 = v105;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_analysisProvider] = v105;
  v34 = *MEMORY[0x29EDBA708];
  v35 = *&v2[v24];
  v36 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
  v105 = v33;
  v37 = [v36 initWithFeatureIdentifier:v34 healthStore:v35];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_menstrualCyclesStatusManager] = v37;
  v38 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA760] healthStore:*&v2[v24]];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_wristTemperatureMeasurementsStatusManager] = v38;
  v39 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA720] healthStore:*&v2[v24]];
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_wristTemperatureInputStatusManager] = v39;
  v40 = *&v2[v24];
  sub_29E2C04B4();
  v106 = 0;
  v107 = 0xE000000000000000;
  sub_29E2C4584();

  v106 = 0xD000000000000015;
  v107 = 0x800000029E2F8E10;
  MEMORY[0x29ED7FCC0](0xD000000000000023, 0x800000029E2F9130);
  v41 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v42 = v40;
  v43 = sub_29E2C33A4();

  v44 = [v41 initWithIdentifier:v43 healthStore:v42 options:2];

  v46 = v103;
  v45 = v104;
  (*(v13 + 16))(v103, v17, v104);
  v47 = objc_allocWithZone(type metadata accessor for SleepMeasurementsConfigurationProvider());
  v48 = sub_29E110474(v44, v46);

  (*(v13 + 8))(v17, v45);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfigurationProvider] = v48;
  v49 = type metadata accessor for InternalLunaLiveOnSettingsModel(0);
  v109.receiver = v2;
  v109.super_class = v49;
  v50 = objc_msgSendSuper2(&v109, sel_init);
  v51 = *&v50[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_settingsManager];
  sub_29DE9408C(0, &qword_2A1A626C0);
  v52 = v50;
  v53 = v51;
  v54 = sub_29E2C3CF4();
  [v53 addObserver:v52 queue:v54];

  [v105 registerObserver_];
  v55 = *&v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepStore];
  [v55 addObserver_];

  sub_29DF27598(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CDBD0;
  v57 = *&v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_menstrualCyclesStatusManager];
  *(inited + 32) = v57;
  v58 = *&v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_wristTemperatureMeasurementsStatusManager];
  *(inited + 40) = v58;
  v59 = *&v52[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_wristTemperatureInputStatusManager];
  *(inited + 48) = v59;
  swift_getKeyPath();
  v106 = MEMORY[0x29EDCA190];
  v60 = v57;
  v61 = v58;
  v62 = v59;
  result = sub_29E2C4634();
  v64 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x29ED80D70](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v65 = *(inited + 32);
  }

  v108 = v65;
  v66 = v65;
  swift_getAtKeyPath();

  sub_29E2C4614();
  sub_29E2C4644();
  sub_29E2C4654();
  result = sub_29E2C4624();
  if (!v64)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v67 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v67 = MEMORY[0x29ED80D70](1, inited);
LABEL_10:
  v108 = v67;
  v68 = v67;
  swift_getAtKeyPath();

  sub_29E2C4614();
  sub_29E2C4644();
  sub_29E2C4654();
  result = sub_29E2C4624();
  if (v64)
  {
    v69 = MEMORY[0x29ED80D70](2, inited);
LABEL_14:
    v70 = v69;

    v108 = v70;
    v71 = v70;
    swift_getAtKeyPath();

    sub_29E2C4614();
    sub_29E2C4644();
    sub_29E2C4654();
    sub_29E2C4624();

    sub_29DF691DC();
    sub_29E08A640(0);
    sub_29E08B898(&qword_2A1A5E728, sub_29DF691DC);
    sub_29E08B898(&qword_2A181BB00, sub_29E08A640);
    v72 = v90;
    sub_29E2C0FE4();
    v73 = sub_29E2C3CF4();
    v106 = v73;
    v74 = sub_29E2C3CE4();
    v75 = *(v74 - 8);
    v103 = *(v75 + 56);
    v104 = v75 + 56;
    v76 = v96;
    (v103)(v96, 1, 1, v74);
    sub_29E08B898(&unk_2A181BAE8, sub_29E088A20);
    v89 = sub_29DF4D6CC();
    v77 = v93;
    v78 = v92;
    sub_29E2C1354();
    v88 = sub_29DF38698;
    sub_29E08BB14(v76, sub_29DF38698);

    (*(v91 + 8))(v72, v78);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = MEMORY[0x29EDB89E8];
    sub_29E08B898(&qword_2A181BB08, sub_29E088AB4);
    v79 = v52;
    v80 = v95;
    sub_29E2C1384();

    (*(v94 + 8))(v77, v80);
    swift_beginAccess();
    sub_29E2C1034();
    swift_endAccess();

    v81 = v98;
    v82 = v97;
    v83 = v99;
    (*(v98 + 16))(v97, *&v79[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfigurationProvider] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher, v99);
    v84 = sub_29E2C3CF4();
    v106 = v84;
    (v103)(v76, 1, 1, v74);
    sub_29E08B898(&qword_2A1A5EB20, sub_29DFA3830);
    v85 = v100;
    sub_29E2C1354();
    sub_29E08BB14(v76, v88);

    (*(v81 + 8))(v82, v83);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29E08B898(&unk_2A181BB10, sub_29E088954);
    v86 = v102;
    sub_29E2C1384();

    (*(v101 + 8))(v85, v86);
    swift_beginAccess();
    sub_29E2C1034();
    swift_endAccess();

    sub_29E083718();

    return v79;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v69 = *(inited + 48);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29E083718()
{
  v1 = v0;
  v2 = type metadata accessor for InternalLiveOnRequirement(0);
  v3 = *(v2 - 1);
  MEMORY[0x2A1C7C4A8](v2);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v46 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v46 - v9;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v46 - v12;
  sub_29E083BF4(&v46 - v12);
  v14 = sub_29E1446C4(0, 1, 1, MEMORY[0x29EDCA190]);
  v16 = v14[2];
  v15 = v14[3];
  v47 = v7;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_29E1446C4(v15 > 1, v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v18 = *(v3 + 72);
  sub_29E08B9E0(v13, v14 + v17 + v18 * v16, type metadata accessor for InternalLiveOnRequirement);
  v19 = HKImproveHealthAndActivityAnalyticsAllowed();
  sub_29E2BCC14();
  v10[v2[5]] = v19;
  v20 = &v10[v2[6]];
  *v20 = 0xD000000000000023;
  *(v20 + 1) = 0x800000029E2FC980;
  v21 = &v10[v2[7]];
  *v21 = 0xD000000000000027;
  *(v21 + 1) = 0x800000029E2FC9B0;
  v10[v2[8]] = 0;
  v23 = v14[2];
  v22 = v14[3];
  if (v23 >= v22 >> 1)
  {
    v14 = sub_29E1446C4(v22 > 1, v23 + 1, 1, v14);
  }

  v14[2] = v23 + 1;
  v24 = v17;
  sub_29E08B9E0(v10, v14 + v17 + v23 * v18, type metadata accessor for InternalLiveOnRequirement);
  v25 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_analysis];
  v26 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_settingsManager];
  v27 = v25;
  v28 = v47;
  sub_29E083DE8(v25, v26, v47);

  v30 = v14[2];
  v29 = v14[3];
  if (v30 >= v29 >> 1)
  {
    v14 = sub_29E1446C4(v29 > 1, v30 + 1, 1, v14);
  }

  v14[2] = v30 + 1;
  sub_29E08B9E0(v28, v14 + v24 + v30 * v18, type metadata accessor for InternalLiveOnRequirement);
  v49 = v14;
  v31 = sub_29E08A790(v26);
  sub_29DFCBD2C(v31);
  v32 = sub_29E083FB0();
  sub_29DFCBD2C(v32);
  sub_29E084338();
  sub_29DFCBD2C(v33);
  sub_29E084338();
  sub_29DFCBD2C(v34);
  v35 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfiguration] | (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfiguration + 2] << 16);
  if (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_sleepMeasurementConfiguration] != 2)
  {
    v36 = v46;
    sub_29E2BCC14();
    *(v36 + v2[5]) = BYTE2(v35) & 1;
    v37 = (v36 + v2[6]);
    *v37 = 0xD000000000000012;
    v37[1] = 0x800000029E2FC9E0;
    v38 = (v36 + v2[7]);
    *v38 = 0xD000000000000016;
    v38[1] = 0x800000029E2FCA00;
    *(v36 + v2[8]) = 1;
    v39 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_29E1446C4(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    if (v41 >= v40 >> 1)
    {
      v39 = sub_29E1446C4(v40 > 1, v41 + 1, 1, v39);
    }

    v39[2] = v41 + 1;
    sub_29E08B9E0(v36, v39 + v24 + v41 * v18, type metadata accessor for InternalLiveOnRequirement);
    v49 = v39;
  }

  v42 = sub_29E0848A0();
  sub_29DFCBD2C(v42);
  v43 = v49;
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v43;
  v44 = v1;
  return sub_29E2C1224();
}

int *sub_29E083BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v3 = sub_29E2C33A4();
  v4 = [v2 initWithSuiteName_];

  if (v4 && (v5 = sub_29E2C33A4(), v6 = [v4 stringForKey_], v4, v5, v6))
  {
    v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v9 = v8;

    v10 = v7 == 0x7972726163 && v9 == 0xE500000000000000;
    if (v10 || (sub_29E2C4914() & 1) != 0 || v7 == 0x756F62616B6C6177 && v9 == 0xE900000000000074)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_29E2C4914();
    }
  }

  else
  {
    v11 = 0;
  }

  sub_29E2BCC14();
  result = type metadata accessor for InternalLiveOnRequirement(0);
  *(a1 + result[5]) = v11 & 1;
  v13 = (a1 + result[6]);
  *v13 = 0xD00000000000001ALL;
  v13[1] = 0x800000029E2FCD30;
  v14 = (a1 + result[7]);
  *v14 = 0xD00000000000001ELL;
  v14[1] = 0x800000029E2FCD50;
  *(a1 + result[8]) = 1;
  return result;
}

int *sub_29E083DE8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = [a1 ongoingCycleFactors];
    sub_29DE9408C(0, &qword_2A1A61D50);
    v6 = sub_29E2C3614();

    if (v6 >> 62)
    {
LABEL_18:
      v7 = sub_29E2C4484();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x29ED80D70](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v11 = [v9 hkmc_cycleFactor];

      ++v8;
      if (v11 != 3)
      {

        v12 = [a2 internalCycleFactorsOverrideEnabled];
        goto LABEL_15;
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 1;
  }

LABEL_15:
  sub_29E2BCC14();
  result = type metadata accessor for InternalLiveOnRequirement(0);
  *(a3 + result[5]) = v12;
  v14 = (a3 + result[6]);
  *v14 = 0xD00000000000001CLL;
  v14[1] = 0x800000029E2FCDD0;
  v15 = (a3 + result[7]);
  *v15 = 0xD000000000000019;
  v15[1] = 0x800000029E2FCDF0;
  *(a3 + result[8]) = 1;
  return result;
}

uint64_t sub_29E083FB0()
{
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BFC94();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A5E120);
  sub_29E2BFCD4();
  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v7, v3, v4);
  v8 = [v0 featureIdentifier];
  v9 = sub_29E086558();
  v11 = v10;

  sub_29E08BA48(0, &unk_2A181BB20, type metadata accessor for InternalLiveOnRequirement, MEMORY[0x29EDC9E90]);
  v12 = (type metadata accessor for InternalLiveOnRequirement(0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E2CAB20;
  v15 = v14 + v13;
  v25 = sub_29E2BFC84();
  v26 = v9;
  v27 = v11;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6472616F626E4F20, 0xEA00000000006465);
  v16 = v26;
  v24 = v27;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_29E2C4584();

  v26 = v9;
  v27 = v11;
  MEMORY[0x29ED7FCC0](0x626E4F20746F4E20, 0xEE0064656472616FLL);
  v17 = v26;
  v18 = v27;
  sub_29E2BCC14();
  *(v15 + v12[7]) = v25 & 1;
  v19 = (v15 + v12[8]);
  v20 = v24;
  *v19 = v16;
  v19[1] = v20;
  v21 = (v15 + v12[9]);
  *v21 = v17;
  v21[1] = v18;
  *(v15 + v12[10]) = 1;
  (*(v5 + 8))(v7, v4);
  return v14;
}

void sub_29E084338()
{
  v1 = type metadata accessor for InternalLiveOnRequirement(0);
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v51 - v6;
  sub_29DF952D8(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BFC94();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A5E120);
  sub_29E2BFCD4();
  v61 = v7;
  (*(v12 + 56))(v10, 0, 1, v11);
  v53 = v12;
  v54 = v11;
  (*(v12 + 32))(v14, v10, v11);
  v15 = [v0 featureIdentifier];
  v60 = sub_29E086558();
  v62 = v16;

  v52 = sub_29E2BFCA4();
  v17 = sub_29E2C3FB4();
  v18 = v17;
  v19 = v14;
  v63 = *(v17 + 16);
  if (v63)
  {
    v57 = v4;
    v58 = v2;
    v59 = v1;
    v20 = 0;
    v21 = (v17 + 40);
    v22 = MEMORY[0x29EDCA190];
    v55 = v17;
    v56 = v14;
    while (v20 < *(v18 + 16))
    {
      v23 = *v21;
      v24 = *(v21 - 1);
      v25 = sub_29E086794();
      if (v26)
      {
        v29 = v25;
        v30 = v26;
        v31 = v28;
        v68 = v22;
        v69 = 10272;
        v70 = 0xE200000000000000;
        v32 = v60;
        v67 = v24;
        v33 = v62;
        v64 = v27;
        MEMORY[0x29ED7FCC0](v60, v62);
        MEMORY[0x29ED7FCC0](0x29656761735520, 0xE700000000000000);
        v66 = v23;
        v35 = v69;
        v34 = v70;
        v69 = v29;
        v70 = v30;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](v35, v34);

        v36 = v69;
        v65 = v70;
        v69 = 10272;
        v70 = 0xE200000000000000;
        v37 = v32;
        v22 = v68;
        MEMORY[0x29ED7FCC0](v37, v33);
        MEMORY[0x29ED7FCC0](0x29656761735520, 0xE700000000000000);
        v38 = v69;
        v39 = v70;
        v69 = v64;
        v70 = v31;
        sub_29E2BF404();
        MEMORY[0x29ED7FCC0](v38, v39);

        v40 = v69;
        v41 = v70;
        v42 = v57;
        sub_29E2BCC14();

        v43 = v59;
        *(v42 + v59[5]) = v66;
        v44 = (v42 + v43[6]);
        v45 = v65;
        *v44 = v36;
        v44[1] = v45;
        v46 = (v42 + v43[7]);
        *v46 = v40;
        v46[1] = v41;
        *(v42 + v43[8]) = 1;
        v47 = v42;
        v48 = v61;
        sub_29E08B9E0(v47, v61, type metadata accessor for InternalLiveOnRequirement);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_29E1446C4(0, v22[2] + 1, 1, v22);
        }

        v50 = v22[2];
        v49 = v22[3];
        if (v50 >= v49 >> 1)
        {
          v22 = sub_29E1446C4(v49 > 1, v50 + 1, 1, v22);
        }

        v22[2] = v50 + 1;
        sub_29E08B9E0(v48, v22 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v50, type metadata accessor for InternalLiveOnRequirement);
        v18 = v55;
        v19 = v56;
      }

      else
      {
      }

      ++v20;
      v21 += 2;
      if (v63 == v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    (*(v53 + 8))(v19, v54);
  }
}

uint64_t sub_29E0848A0()
{
  v33[1] = *MEMORY[0x29EDCA608];
  v33[0] = 0;
  v1 = [v0 currentSleepSettingsWithError_];
  v2 = v33[0];
  if (!v1)
  {
    v7 = v33[0];
    v8 = sub_29E2BC7E4();

    swift_willThrow();
    return MEMORY[0x29EDCA190];
  }

  v3 = v1;
  v33[0] = 0;
  v4 = v2;
  v5 = [v0 currentSleepScheduleWithError_];
  v6 = v5;
  if (v33[0])
  {

    return MEMORY[0x29EDCA190];
  }

  if (!v5)
  {
    v31 = 0;
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

  v10 = v5;
  if ([v10 isEnabled])
  {
    v11 = [v10 weekdaysWithOccurrences] != 0;
  }

  else
  {
    v11 = 0;
  }

  v31 = v11;
  if (![v10 isEnabled])
  {

    goto LABEL_14;
  }

  v12 = [v10 weekdaysWithoutOccurrences];

  v32 = v12 == 0;
LABEL_15:
  sub_29E08BA48(0, &unk_2A181BB20, type metadata accessor for InternalLiveOnRequirement, MEMORY[0x29EDC9E90]);
  v13 = (type metadata accessor for InternalLiveOnRequirement(0) - 8);
  v14 = *(*v13 + 72);
  v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v30 = 2 * v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E2CE0D0;
  v17 = v16 + v15;
  v18 = [v3 watchSleepFeaturesEnabled];
  sub_29E2BCC14();
  *(v17 + v13[7]) = v18;
  v19 = (v17 + v13[8]);
  *v19 = 0xD00000000000001BLL;
  v19[1] = 0x800000029E2FCA20;
  v20 = (v17 + v13[9]);
  *v20 = 0xD00000000000001FLL;
  v20[1] = 0x800000029E2FCA40;
  *(v17 + v13[10]) = 1;
  v21 = v17 + v14;
  LOBYTE(v14) = [v3 scheduledSleepMode];
  sub_29E2BCC14();
  *(v21 + v13[7]) = v14;
  v22 = (v21 + v13[8]);
  *v22 = 0xD000000000000018;
  v22[1] = 0x800000029E2FCA60;
  v23 = (v21 + v13[9]);
  *v23 = 0xD00000000000001CLL;
  v23[1] = 0x800000029E2FCA80;
  *(v21 + v13[10]) = 0;
  if (v31)
  {
    v24 = 0xD000000000000022;
  }

  else
  {
    v24 = 0xD000000000000019;
  }

  if (v31)
  {
    v25 = "Sleep Schedule Set Up";
  }

  else
  {
    v25 = "Sleep Focus is Not Scheduled";
  }

  v26 = v25 | 0x8000000000000000;
  v27 = v17 + v30;
  sub_29E2BCC14();
  *(v27 + v13[7]) = v32;
  v28 = (v27 + v13[8]);
  *v28 = 0xD000000000000015;
  v28[1] = 0x800000029E2FCAC0;
  v29 = (v27 + v13[9]);
  *v29 = v24;
  v29[1] = v26;
  *(v27 + v13[10]) = 0;

  return v16;
}

void sub_29E084E74()
{
  sub_29E08BA48(319, &qword_2A181B9A8, sub_29E013B94, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E084F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalLunaLiveOnSettingsModel(0);
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29E084FD0(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_analysis);
  *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalLunaLiveOnSettingsModel_analysis) = a2;
  v3 = a2;

  return sub_29E083718();
}

char *sub_29E085248()
{
  v1 = v0;
  sub_29DFA3830();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v68 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E088954();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v71 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF38698(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v67 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DF69110();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v64 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E2C0514();
  v10 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v62 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = v58 - v13;
  sub_29E08BA48(0, &qword_2A181B9A8, sub_29E013B94, MEMORY[0x29EDB8B00]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = v58 - v18;
  v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_healthStore;
  *&v1[v20] = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v21 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfiguration];
  v21[2] = 0;
  *v21 = 2;
  v22 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepStore;
  v23 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v24 = sub_29E2C33A4();
  v25 = [v23 initWithIdentifier_];

  *&v1[v22] = v25;
  v26 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel__requirements;
  v27 = MEMORY[0x29EDCA190];
  v74 = MEMORY[0x29EDCA190];
  sub_29E013B94(0);
  sub_29E2C11D4();
  (*(v17 + 32))(&v1[v26], v19, v16);
  if (v27 >> 62 && sub_29E2C4484())
  {
    v28 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v28 = MEMORY[0x29EDCA1A0];
  }

  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_subscriptions] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:*MEMORY[0x29EDBA760] healthStore:*&v1[v20]];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_wristTemperatureMeasurementsStatusManager] = v29;
  v30 = *&v1[v20];
  sub_29E2C04B4();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_29E2C4584();

  v74 = 0xD000000000000015;
  v75 = 0x800000029E2F8E30;
  MEMORY[0x29ED7FCC0](0xD000000000000023, 0x800000029E2F9130);
  v31 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v32 = v30;
  v33 = sub_29E2C33A4();

  v34 = [v31 initWithIdentifier:v33 healthStore:v32 options:2];

  v36 = v62;
  v35 = v63;
  (*(v10 + 16))(v62, v14, v63);
  v37 = objc_allocWithZone(type metadata accessor for SleepMeasurementsConfigurationProvider());
  v38 = sub_29E110474(v34, v36);

  (*(v10 + 8))(v14, v35);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfigurationProvider] = v38;
  v39 = type metadata accessor for InternalKaliLiveOnSettingsModel(0);
  v77.receiver = v1;
  v77.super_class = v39;
  v40 = objc_msgSendSuper2(&v77, sel_init);
  v41 = *&v40[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepStore];
  v42 = v40;
  [v41 addObserver_];
  v43 = *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_wristTemperatureMeasurementsStatusManager];
  sub_29DE9408C(0, &qword_2A1A5E120);
  v44 = v43;
  v45 = sub_29E2BFCE4();

  v74 = v45;
  sub_29DE9408C(0, &qword_2A1A626C0);
  v46 = sub_29E2C3CF4();
  v76 = v46;
  v62 = sub_29E2C3CE4();
  v47 = *(v62 - 1);
  v61 = *(v47 + 56);
  v63 = v47 + 56;
  v48 = v67;
  v61(v67, 1, 1, v62);
  sub_29DF691DC();
  sub_29E08B898(&qword_2A1A5E728, sub_29DF691DC);
  v60 = sub_29DF4D6CC();
  v49 = v64;
  sub_29E2C1354();
  v59 = sub_29DF38698;
  sub_29E08BB14(v48, sub_29DF38698);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v58[1] = MEMORY[0x29EDB89E8];
  sub_29E08B898(&unk_2A181BB30, sub_29DF69110);
  v50 = v66;
  sub_29E2C1384();

  (*(v65 + 8))(v49, v50);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  v52 = v68;
  v51 = v69;
  v53 = v70;
  (*(v69 + 16))(v68, *&v42[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfigurationProvider] + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin38SleepMeasurementsConfigurationProvider_configurationPublisher, v70);
  v54 = sub_29E2C3CF4();
  v74 = v54;
  v61(v48, 1, 1, v62);
  sub_29E08B898(&qword_2A1A5EB20, sub_29DFA3830);
  v55 = v71;
  sub_29E2C1354();
  sub_29E08BB14(v48, v59);

  (*(v51 + 8))(v52, v53);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E08B898(&unk_2A181BB10, sub_29E088954);
  v56 = v73;
  sub_29E2C1384();

  (*(v72 + 8))(v55, v56);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  sub_29E085DA8();

  return v42;
}

void sub_29E085C78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_29E085CD4(unsigned __int8 *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v7)
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = Strong + *a3;
    *(v11 + 2) = v8 != 0;
    *v11 = v10 | v6;
    v12 = Strong;
    a4();
  }
}

uint64_t sub_29E085DA8()
{
  v1 = type metadata accessor for InternalLiveOnRequirement(0);
  v2 = *(v1 - 1);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v36 - v6;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v36 - v9;
  sub_29E083BF4(&v36 - v9);
  v11 = sub_29E1446C4(0, 1, 1, MEMORY[0x29EDCA190]);
  v13 = v11[2];
  v12 = v11[3];
  v37 = v4;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_29E1446C4(v12 > 1, v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = *(v2 + 72);
  sub_29E08B9E0(v10, v11 + v14 + v15 * v13, type metadata accessor for InternalLiveOnRequirement);
  v16 = HKImproveHealthAndActivityAnalyticsAllowed();
  sub_29E2BCC14();
  v7[v1[5]] = v16;
  v17 = &v7[v1[6]];
  *v17 = 0xD000000000000023;
  *(v17 + 1) = 0x800000029E2FC980;
  v18 = &v7[v1[7]];
  *v18 = 0xD000000000000027;
  *(v18 + 1) = 0x800000029E2FC9B0;
  v7[v1[8]] = 0;
  v20 = v11[2];
  v19 = v11[3];
  if (v20 >= v19 >> 1)
  {
    v11 = sub_29E1446C4(v19 > 1, v20 + 1, 1, v11);
  }

  v21 = v0;
  v11[2] = v20 + 1;
  v22 = v11 + v14 + v20 * v15;
  v23 = v15;
  sub_29E08B9E0(v7, v22, type metadata accessor for InternalLiveOnRequirement);
  v39 = v11;
  sub_29E084338();
  sub_29DFCBD2C(v24);
  v25 = *&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfiguration] | (v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfiguration + 2] << 16);
  if (*&v21[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31InternalKaliLiveOnSettingsModel_sleepMeasurementConfiguration] != 2)
  {
    v26 = v37;
    sub_29E2BCC14();
    *(v26 + v1[5]) = BYTE2(v25) & 1;
    v27 = (v26 + v1[6]);
    *v27 = 0xD000000000000012;
    v27[1] = 0x800000029E2FC9E0;
    v28 = (v26 + v1[7]);
    *v28 = 0xD000000000000016;
    v28[1] = 0x800000029E2FCA00;
    *(v26 + v1[8]) = 1;
    v29 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_29E1446C4(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_29E1446C4(v30 > 1, v31 + 1, 1, v29);
    }

    v29[2] = v31 + 1;
    sub_29E08B9E0(v26, v29 + v14 + v31 * v23, type metadata accessor for InternalLiveOnRequirement);
    v39 = v29;
  }

  v32 = sub_29E0848A0();
  sub_29DFCBD2C(v32);
  v33 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v33;
  v34 = v21;
  return sub_29E2C1224();
}

id sub_29E0862D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29E08642C()
{
  sub_29E08BA48(319, &qword_2A181B9A8, sub_29E013B94, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E086518@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalKaliLiveOnSettingsModel(0);
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29E086558()
{
  v0 = 0x725420656C637943;
  v1 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v3 = v2;
  if (v1 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_29E2C4914();

  if (v6)
  {
    return v0;
  }

  v0 = 1634628940;
  v7 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v9 == v10)
  {
    goto LABEL_13;
  }

  v12 = sub_29E2C4914();

  if (v12)
  {
    return v0;
  }

  v0 = 1768710475;
  v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v15 = v14;
  if (v13 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v15 == v16)
  {
LABEL_13:

    return v0;
  }

  v18 = sub_29E2C4914();

  if (v18)
  {
    return v0;
  }

  sub_29E2C4584();

  v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  MEMORY[0x29ED7FCC0](v19);

  result = sub_29E2C4724();
  __break(1u);
  return result;
}

unint64_t sub_29E086794()
{
  v0 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v2 == v3)
  {

    return 0;
  }

  v5 = sub_29E2C4914();

  if (v5)
  {
    return 0;
  }

  v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v8 == v9)
  {

    return 0xD000000000000014;
  }

  v11 = sub_29E2C4914();

  if (v11)
  {
    return 0xD000000000000014;
  }

  v12 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v14 = v13;
  if (v12 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v14 == v15)
  {

    return 0xD000000000000016;
  }

  v17 = sub_29E2C4914();

  if (v17)
  {
    return 0xD000000000000016;
  }

  v18 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v20 = v19;
  if (v18 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v20 == v21)
  {

    return 0xD000000000000013;
  }

  v22 = sub_29E2C4914();

  if (v22)
  {
    return 0xD000000000000013;
  }

  v23 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v25 = v24;
  if (v23 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v25 == v26)
  {

    return 0xD000000000000015;
  }

  v27 = sub_29E2C4914();

  if (v27)
  {
    return 0xD000000000000015;
  }

  v28 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v30 = v29;
  if (v28 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v30 == v31)
  {

    return 0xD000000000000028;
  }

  v32 = sub_29E2C4914();

  if (v32)
  {
    return 0xD000000000000028;
  }

  v33 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v35 = v34;
  if (v33 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v35 == v36)
  {

    return 0xD000000000000016;
  }

  v37 = sub_29E2C4914();

  if (v37)
  {
    return 0xD000000000000016;
  }

  v38 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4584();

  v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  MEMORY[0x29ED7FCC0](v39);

  return v38;
}

int *sub_29E086CBC@<X0>(id a1@<X1>, _BYTE *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v16 = [a1 fertileWindowProjectionsEnabled];
      v5 = "Fertility Notifications";
      v6 = 0xD000000000000013;
    }

    else
    {
      v16 = [a1 fertileWindowNotificationsEnabled];
      v5 = "Device Not Configured as Carry";
      v6 = 0xD000000000000017;
    }
  }

  else if (*a2)
  {
    v16 = [a1 menstruationNotificationsEnabled];
    v5 = "ed";
    v6 = 0xD000000000000014;
  }

  else
  {
    v16 = [a1 menstruationProjectionsEnabled];
    v5 = "Fertility Estimates";
    v6 = 0xD000000000000012;
  }

  MEMORY[0x29ED7FCC0](v6, v5 | 0x8000000000000000);

  MEMORY[0x29ED7FCC0](0x64656C62616E4520, 0xE800000000000000);
  v7 = "Fertility Estimates";
  v8 = "Fertility Notifications";
  v9 = 0xD000000000000017;
  if (v4 == 2)
  {
    v9 = 0xD000000000000013;
  }

  else
  {
    v8 = "Device Not Configured as Carry";
  }

  v10 = 0xD000000000000014;
  if (v4)
  {
    v7 = "ed";
  }

  else
  {
    v10 = 0xD000000000000012;
  }

  if (v4 <= 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v4 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x29ED7FCC0](v11, v12 | 0x8000000000000000);

  MEMORY[0x29ED7FCC0](0x616E4520746F4E20, 0xEC00000064656C62);
  sub_29E2BCC14();
  result = type metadata accessor for InternalLiveOnRequirement(0);
  *(a3 + result[5]) = v16;
  v14 = (a3 + result[6]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (a3 + result[7]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *(a3 + result[8]) = 1;
  return result;
}

uint64_t sub_29E086EFC()
{
  sub_29E2C4A04();
  sub_29E2BCC24();
  sub_29E08B898(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  sub_29E2C3254();
  type metadata accessor for InternalLiveOnRequirement(0);
  sub_29E2C4A24();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29E086FE8()
{
  sub_29E2BCC24();
  sub_29E08B898(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  sub_29E2C3254();
  sub_29E2C4A24();
  sub_29E2C34B4();
  sub_29E2C34B4();
  return sub_29E2C4A24();
}

uint64_t sub_29E0870B4()
{
  sub_29E2C4A04();
  sub_29E2BCC24();
  sub_29E08B898(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  sub_29E2C3254();
  sub_29E2C4A24();
  sub_29E2C34B4();
  sub_29E2C34B4();
  sub_29E2C4A24();
  return sub_29E2C4A54();
}

uint64_t sub_29E0871A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E087214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E2BCC24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id sub_29E08727C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = [*a1 valueForProperty_];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29DEA049C(v11, v12);
  sub_29DE9408C(0, &qword_2A1A5E0B0);
  swift_dynamicCast();
  v5 = [v9 BOOLValue];

  result = [v3 valueForProperty_];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_29E2C43D4();
  swift_unknownObjectRelease();
  sub_29DEA049C(v11, v12);
  swift_dynamicCast();
  result = [v3 valueForProperty_];
  if (result)
  {
    sub_29E2C43D4();
    swift_unknownObjectRelease();
    sub_29DEA049C(v11, v12);
    swift_dynamicCast();
    sub_29E2BCC14();
    v6 = type metadata accessor for InternalLiveOnDevicesModel.Device(0);
    *(a2 + v6[5]) = v5;
    v7 = (a2 + v6[6]);
    *v7 = v9;
    v7[1] = v10;
    v8 = (a2 + v6[7]);
    *v8 = v9;
    v8[1] = v10;
    return (*(*(v6 - 1) + 56))(a2, 0, 1, v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_29E0874A0()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26InternalLiveOnDevicesModel__devices;
  sub_29E08BA48(0, &qword_2A181AA20, sub_29E014270, MEMORY[0x29EDB8B00]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_29E087594()
{
  sub_29E08BA48(319, &qword_2A181AA20, sub_29E014270, MEMORY[0x29EDB8B00]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E087674()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E0876EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternalLiveOnDevicesModel(0);
  result = sub_29E2C1084();
  *a1 = result;
  return result;
}

uint64_t sub_29E08772C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();
}

uint64_t sub_29E0877A4()
{
  sub_29E08BA48(0, &unk_2A181BA78, sub_29DEB3B00, MEMORY[0x29EDB8B00]);
  v24 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v23 - v3;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v23 - v9;
  sub_29E0883D4();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel__sampleCount;
  v25 = 0;
  v26 = 1;
  sub_29DF27598(0, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  sub_29E2C11D4();
  (*(v13 + 32))(v0 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel__deliveryDate;
  v18 = sub_29E2BCBB4();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_29E08BAAC(v10, v7, sub_29DEB3B00);
  sub_29E2C11D4();
  sub_29E08BB14(v10, sub_29DEB3B00);
  (*(v2 + 32))(v0 + v17, v4, v24);
  v19 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel_healthStore;
  v20 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  *(v0 + v19) = v20;
  v21 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA760] healthStore:v20];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel_featureAvailabilityStore) = v21;
  sub_29E087AF4();
  return v0;
}

uint64_t sub_29E087AF4()
{
  v22[1] = *MEMORY[0x29EDCA608];
  sub_29E08BA48(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v22 - v2;
  sub_29DEB3B00(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x2A1C7C4A8](v7).n128_u64[0];
  v10 = v22 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin29InternalLiveOnStatisticsModel_featureAvailabilityStore);
  v22[0] = 0;
  v12 = [v11 earliestDateLowestOnboardingVersionCompletedWithError_];
  v13 = v22[0];
  if (v12)
  {
    v14 = v12;
    sub_29E2BCB44();
    v15 = v13;

    v16 = sub_29E2BCBB4();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  }

  else
  {
    v17 = sub_29E2BCBB4();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = v13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E08BAAC(v10, v6, sub_29DEB3B00);

  sub_29E2C1224();
  sub_29E08BB14(v10, sub_29DEB3B00);
  v19 = sub_29E2C3734();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v0;

  sub_29DFE96C0(0, 0, v3, &unk_29E2DBFC0, v20);
}
void sub_29E220B2C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v6 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary);
      if (a2 == 2)
      {
        v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
        [v4 setBleedingAfterPregnancyFlow_];
      }

      else
      {
        v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
        [v4 setOvulationTestResult_];
      }
    }

    else
    {
      v5 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary);
      if (a2)
      {
        v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
        [v4 setBleedingInPregnancyFlow_];
      }

      else
      {
        v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
        [v4 setMenstrualFlow_];
      }
    }
  }

  else if (a2 <= 5u)
  {
    v7 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary);
    if (a2 == 4)
    {
      v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
      [v4 setPregnancyTestResult_];
    }

    else
    {
      v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
      [v4 setProgesteroneTestResult_];
    }
  }

  else if (a2 == 6)
  {
    v8 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary);
    v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
    [v4 setSexualActivity_];
  }

  else
  {
    if (a2 != 7)
    {
      sub_29E21B484();
      return;
    }

    v3 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary);
    v4 = *(a3 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary);
    [v4 setCervicalMucusQuality_];
  }

  swift_beginAccess();
  sub_29E06652C(0);
  swift_endAccess();
  swift_beginAccess();
  v9 = sub_29E2BF404();
  sub_29E21DFEC(v9);
}

uint64_t sub_29E220E0C()
{
  swift_beginAccess();
  sub_29E06652C(0);
  swift_endAccess();
  swift_beginAccess();
  v0 = sub_29E2BF404();
  sub_29E21DFEC(v0);
}

void sub_29E220E98(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v53 = type metadata accessor for BleedingInPregnancyAlertView();
  MEMORY[0x2A1C7C4A8](v53);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCEA4();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C31A4();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BCBB4();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  if (v17 >= 3)
  {
    v39 = v16;
    sub_29E2C04B4();
    v40 = v39;
    v41 = sub_29E2C0504();
    v42 = sub_29E2C3A34();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59 = v44;
      *v43 = 136446210;
      v45 = sub_29E2C4AE4();
      v47 = sub_29DFAA104(v45, v46, &v59);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_29DE74000, v41, v42, "[%{public}s] Unrecognized bleeding type", v43, 0xCu);
      sub_29DE93B3C(v44);
      MEMORY[0x29ED82140](v44, -1, -1);
      MEMORY[0x29ED82140](v43, -1, -1);
    }

    (*(v14 + 8))(v40, v13);
    sub_29E2C4724();
    __break(1u);
  }

  else
  {
    v18 = off_29F362A98[v17];
    v19 = off_29F362AB0[v17];
    v20 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary;
    v21 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary];
    v58 = **(&unk_29F362A80 + v17);
    v22 = [v21 *v18];
    [*&v2[v20] *v19];
    sub_29E21F33C(v58);

    if (v17 == 1 && (*(a1 + 32) - 2) < 4 && (v22 - 2) > 3)
    {
      [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary] dayIndex];
      sub_29E2C30D4();
      v24 = [*&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_calendarCache] currentCalendar];
      sub_29E2BCDC4();

      v25 = v52;
      sub_29E2C3194();
      (*(v50 + 8))(v7, v51);
      (*(v48 + 8))(v10, v49);
      v26 = *(a1 + 32);
      v28 = v53;
      v27 = v54;
      v30 = v55;
      v29 = v56;
      (*(v54 + 16))(&v56[*(v53 + 20)], v25, v55);
      v31 = swift_allocObject();
      v32 = ObjectType;
      *(v31 + 16) = v2;
      *(v31 + 24) = v32;
      *v29 = v26;
      v33 = (v29 + *(v28 + 24));
      *v33 = sub_29E2222F8;
      v33[1] = v31;
      v34 = *(v28 + 28);
      *(v29 + v34) = swift_getKeyPath();
      sub_29E22418C(0, &unk_2A18199F0, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
      swift_storeEnumTagMultiPayload();
      sub_29DF8ABF8();
      v36 = objc_allocWithZone(v35);
      v37 = v2;
      v38 = sub_29E2C1C34();
      [v37 presentViewController:v38 animated:1 completion:0];

      (*(v27 + 8))(v25, v30);
    }

    else
    {
      v23 = v58;
    }
  }
}

uint64_t sub_29E2214DC(char *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 dismissViewControllerAnimated:0 completion:{0, v4}];
  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v7 = sub_29E2C0504();
    v8 = sub_29E2C3A34();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      v11 = sub_29E2C4AE4();
      v13 = sub_29DFAA104(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Calling loggingCardCarouselViewControllerDelegate after tapping done from bleedingFlowLoggingCard", v9, 0xCu);
      sub_29DE93B3C(v10);
      MEMORY[0x29ED82140](v10, -1, -1);
      MEMORY[0x29ED82140](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *&a1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary];
    sub_29E263F2C(v15);
    [a1 dismissViewControllerAnimated:1 completion:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E221700(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E146028(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_29E22176C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_29E22176C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_29E2C48C4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x29EDCA190];
      }

      else
      {
        type metadata accessor for HKMCDaySummarySymptoms(0);
        v5 = sub_29E2C3664();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_29E22197C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_29E221868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_29E221868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v13 = v6;
    while (1)
    {
      sub_29E229E7C();
      sub_29E229E7C();
      sub_29DE9DE68();
      v9 = sub_29E2C4384();

      if (v9 != -1)
      {
LABEL_4:
        ++v4;
        v6 = v13 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *v6;
      result = v6[1];
      *v6 = result;
      v6[1] = v10;
      --v6;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_29E22197C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x29EDCA190];
    v88 = result;
    while (1)
    {
      v11 = v9++;
      if (v9 < v8)
      {
        v91 = v8;
        v86 = v5;
        v12 = *v6 + 8 * v11 + 16;
        sub_29E229E7C();
        sub_29E229E7C();
        sub_29DE9DE68();
        v13 = v11;
        v14 = sub_29E2C4384();

        v15 = (v13 + 2);
        while (1)
        {
          v9 = v91;
          if (v91 == v15)
          {
            break;
          }

          sub_29E229E7C();
          sub_29E229E7C();
          v16 = sub_29E2C4384();

          ++v15;
          v12 += 8;
          if ((v14 == -1) == (v16 != -1))
          {
            v9 = (v15 - 1);
            break;
          }
        }

        v5 = v86;
        v7 = v88;
        v6 = a3;
        if (v14 == -1)
        {
          v11 = v13;
          if (v9 < v13)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v13 < v9)
          {
            v17 = v9 - 1;
            v18 = v13;
            do
            {
              if (v18 != v17)
              {
                v21 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v21 + 8 * v18);
                *(v21 + 8 * v18) = *(v21 + 8 * v17);
                *(v21 + 8 * v17) = v19;
              }
            }

            while (++v18 < v17--);
          }
        }

        else
        {
          v11 = v13;
        }
      }

      v22 = v6[1];
      if (v9 < v22)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_116;
        }

        if (v9 - v11 < a4)
        {
          v23 = (v11 + a4);
          if (__OFADD__(v11, a4))
          {
            goto LABEL_117;
          }

          if (v23 >= v22)
          {
            v23 = v6[1];
          }

          if (v23 < v11)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v9 != v23)
          {
            v85 = v11;
            v87 = v5;
            v24 = *v6;
            v25 = *v6 + 8 * v9 - 8;
            v26 = v11 - v9;
            v90 = v23;
            do
            {
              v92 = v9;
              v27 = v26;
              v28 = v25;
              do
              {
                sub_29E229E7C();
                sub_29E229E7C();
                sub_29DE9DE68();
                v29 = sub_29E2C4384();

                if (v29 != -1)
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_121;
                }

                v30 = *v28;
                *v28 = v28[1];
                v28[1] = v30;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v9;
              v25 += 8;
              --v26;
            }

            while (v92 + 1 != v90);
            v9 = v90;
            v5 = v87;
            v7 = v88;
            v6 = a3;
            v11 = v85;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_29E143B40(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v33 = *(v10 + 2);
      v32 = *(v10 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        result = sub_29E143B40((v32 > 1), v33 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v34;
      v35 = &v10[16 * v33];
      *(v35 + 4) = v11;
      *(v35 + 5) = v9;
      v36 = *v7;
      if (!*v7)
      {
        goto LABEL_125;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v38 = *(v10 + 4);
            v39 = *(v10 + 5);
            v48 = __OFSUB__(v39, v38);
            v40 = v39 - v38;
            v41 = v48;
LABEL_57:
            if (v41)
            {
              goto LABEL_104;
            }

            v54 = &v10[16 * v34];
            v56 = *v54;
            v55 = *(v54 + 1);
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_107;
            }

            v60 = &v10[16 * v37 + 32];
            v62 = *v60;
            v61 = *(v60 + 1);
            v48 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v48)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v58, v63))
            {
              goto LABEL_111;
            }

            if (v58 + v63 >= v40)
            {
              if (v40 < v63)
              {
                v37 = v34 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v64 = &v10[16 * v34];
          v66 = *v64;
          v65 = *(v64 + 1);
          v48 = __OFSUB__(v65, v66);
          v58 = v65 - v66;
          v59 = v48;
LABEL_71:
          if (v59)
          {
            goto LABEL_106;
          }

          v67 = &v10[16 * v37];
          v69 = *(v67 + 4);
          v68 = *(v67 + 5);
          v48 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v48)
          {
            goto LABEL_109;
          }

          if (v70 < v58)
          {
            goto LABEL_3;
          }

LABEL_78:
          v75 = v37 - 1;
          if (v37 - 1 >= v34)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
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
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v76 = *&v10[16 * v75 + 32];
          v77 = *&v10[16 * v37 + 40];
          sub_29E222004((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36);
          if (v5)
          {
          }

          if (v77 < v76)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_29E14D410(v10);
          }

          if (v75 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v78 = &v10[16 * v75];
          *(v78 + 4) = v76;
          *(v78 + 5) = v77;
          result = sub_29E14D384(v37);
          v34 = *(v10 + 2);
          if (v34 <= 1)
          {
            goto LABEL_3;
          }
        }

        v42 = &v10[16 * v34 + 32];
        v43 = *(v42 - 64);
        v44 = *(v42 - 56);
        v48 = __OFSUB__(v44, v43);
        v45 = v44 - v43;
        if (v48)
        {
          goto LABEL_102;
        }

        v47 = *(v42 - 48);
        v46 = *(v42 - 40);
        v48 = __OFSUB__(v46, v47);
        v40 = v46 - v47;
        v41 = v48;
        if (v48)
        {
          goto LABEL_103;
        }

        v49 = &v10[16 * v34];
        v51 = *v49;
        v50 = *(v49 + 1);
        v48 = __OFSUB__(v50, v51);
        v52 = v50 - v51;
        if (v48)
        {
          goto LABEL_105;
        }

        v48 = __OFADD__(v40, v52);
        v53 = v40 + v52;
        if (v48)
        {
          goto LABEL_108;
        }

        if (v53 >= v45)
        {
          v71 = &v10[16 * v37 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v48 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v48)
          {
            goto LABEL_112;
          }

          if (v40 < v74)
          {
            v37 = v34 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v88;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }
  }

  v10 = MEMORY[0x29EDCA190];
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_29E14D410(v10);
    v10 = result;
  }

  v79 = *(v10 + 2);
  if (v79 >= 2)
  {
    while (1)
    {
      v80 = *v6;
      if (!*v6)
      {
        goto LABEL_123;
      }

      v6 = (v79 - 1);
      v81 = *&v10[16 * v79];
      v82 = *&v10[16 * v79 + 24];
      sub_29E222004((v80 + 8 * v81), (v80 + 8 * *&v10[16 * v79 + 16]), (v80 + 8 * v82), v9);
      if (v5)
      {
      }

      if (v82 < v81)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_29E14D410(v10);
      }

      if (v79 - 2 >= *(v10 + 2))
      {
        goto LABEL_114;
      }

      v83 = &v10[16 * v79];
      *v83 = v81;
      *(v83 + 1) = v82;
      result = sub_29E14D384(v79 - 1);
      v79 = *(v10 + 2);
      v6 = a3;
      if (v79 <= 1)
      {
      }
    }
  }
}

uint64_t sub_29E222004(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v19 = __dst;
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v19 > v6)
    {
      v28 = v4;
LABEL_27:
      v27 = v19;
      v20 = v19 - 8;
      v5 -= 8;
      v21 = v14;
      do
      {
        v22 = v5 + 8;
        v21 -= 8;
        v23 = v20;
        sub_29E229E7C();
        sub_29E229E7C();
        sub_29DE9DE68();
        v24 = sub_29E2C4384();

        if (v24 == -1)
        {
          v25 = v23;
          if (v22 != v27)
          {
            *v5 = *v23;
          }

          v4 = v28;
          if (v14 <= v28 || (v19 = v25, v25 <= v6))
          {
            v19 = v25;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v22 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v20 = v23;
      }

      while (v21 > v28);
      v14 = v21;
      v19 = v27;
      v4 = v28;
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      while (1)
      {
        sub_29E229E7C();
        sub_29E229E7C();
        sub_29DE9DE68();
        v16 = sub_29E2C4384();

        if (v16 != -1)
        {
          break;
        }

        v17 = v15;
        v18 = v6 == v15;
        v15 += 8;
        if (!v18)
        {
          goto LABEL_14;
        }

LABEL_15:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_37;
        }
      }

      v17 = v4;
      v18 = v6 == v4;
      v4 += 8;
      if (v18)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v6 = *v17;
      goto LABEL_15;
    }

LABEL_37:
    v19 = v6;
  }

LABEL_39:
  if (v19 != v4 || v19 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v19, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void sub_29E222300()
{
  v1 = v0;
  v2 = sub_29E2C2B34();
  v30 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v31[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v9 = &v31[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;

    v16 = [v1 traitCollection];
    sub_29E0C2594(v16, v34, v13, v15);
    v17 = &v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
    v18 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 80];
    v32[4] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 64];
    v32[5] = v18;
    v33 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 96];
    v19 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 16];
    v32[0] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration];
    v32[1] = v19;
    v20 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 48];
    v32[2] = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration + 32];
    v32[3] = v20;
    v21 = v34[1];
    *v17 = v34[0];
    *(v17 + 1) = v21;
    v22 = v34[2];
    v23 = v34[3];
    v24 = v34[4];
    v25 = v34[5];
    *(v17 + 12) = v35;
    *(v17 + 4) = v24;
    *(v17 + 5) = v25;
    *(v17 + 2) = v22;
    *(v17 + 3) = v23;
    sub_29DE9DC98(v34, v31);
    sub_29DE9DC98(v34, v31);
    sub_29E224334(v32);
    sub_29E218998();
    sub_29DE9DE14(v34);
    sub_29DE9DE14(v34);

    sub_29E218CA4();
    if (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard] == 1 && (v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8] & 1) == 0)
    {
      sub_29DE9408C(0, &qword_2A1A626C0);
      v26 = sub_29E2C3CF4();
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      v31[4] = sub_29E22443C;
      v31[5] = v27;
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 1107296256;
      v31[2] = sub_29DF49BB8;
      v31[3] = &unk_2A24BFC48;
      v28 = _Block_copy(v31);
      v29 = v1;

      sub_29E2C2B44();
      v31[0] = MEMORY[0x29EDCA190];
      sub_29E2242EC(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
      sub_29E22418C(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29DF4B408();
      sub_29E2C43F4();
      MEMORY[0x29ED804D0](0, v9, v4, v28);
      _Block_release(v28);

      (*(v30 + 8))(v4, v2);
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E222730()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v115[0] = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, v115);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Done tapped", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_editOrdering;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v113 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary;
    v114 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_originalDaySummary;
    v111[9] = *MEMORY[0x29EDC3230];
    v111[8] = *MEMORY[0x29EDC3228];
    v111[7] = *MEMORY[0x29EDC3258];
    v111[6] = *MEMORY[0x29EDC3260];
    v111[5] = *MEMORY[0x29EDC3268];
    v111[4] = *MEMORY[0x29EDC3270];
    v111[3] = *MEMORY[0x29EDC3238];
    v111[2] = *MEMORY[0x29EDC3248];
    v111[1] = *MEMORY[0x29EDC3278];
    v111[0] = *MEMORY[0x29EDC3220];
    sub_29E2BF404();
    v16 = 0;
    v17 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
LABEL_119:
        v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
LABEL_114:
        v109 = *(v17 + 2);
        v108 = *(v17 + 3);
        if (v109 >= v108 >> 1)
        {
          v17 = sub_29E1456A4((v108 > 1), v109 + 1, 1, v17);
        }

        *(v17 + 2) = v109 + 1;
        v17[v109 + 32] = 8;
        goto LABEL_117;
      }

      v18 = *(v14 + 8 * v16 + 32);
      v19 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v21 = v20;
      if (v19 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v21 == v22)
      {
        v29 = v18;

LABEL_17:
        v30 = *(v1 + v114);
        v31 = [v30 menstrualFlow];
        if (v31 == [*(v1 + v113) menstrualFlow] || objc_msgSend(v30, sel_menstrualFlowSampleCount) <= 1)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v33 = *(v17 + 2);
          v32 = *(v17 + 3);
          if (v33 >= v32 >> 1)
          {
            v17 = sub_29E1456A4((v32 > 1), v33 + 1, 1, v17);
          }

          *(v17 + 2) = v33 + 1;
          v17[v33 + 32] = 0;
        }

        goto LABEL_6;
      }

      v24 = sub_29E2C4914();
      v112 = v18;

      if (v24)
      {
        goto LABEL_17;
      }

      v25 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v27 = v26;
      if (v25 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v27 == v28)
      {

LABEL_25:
        v35 = *(v1 + v114);
        v36 = [v35 bleedingInPregnancyFlow];
        if (v36 != [*(v1 + v113) bleedingInPregnancyFlow] && objc_msgSend(v35, sel_bleedingInPregnancyFlowSampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v38 = *(v17 + 2);
          v37 = *(v17 + 3);
          if (v38 >= v37 >> 1)
          {
            v17 = sub_29E1456A4((v37 > 1), v38 + 1, 1, v17);
          }

          *(v17 + 2) = v38 + 1;
          v17[v38 + 32] = 1;
          goto LABEL_6;
        }

        goto LABEL_102;
      }

      v34 = sub_29E2C4914();

      if (v34)
      {
        goto LABEL_25;
      }

      v39 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v41 = v40;
      if (v39 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v41 == v42)
      {

LABEL_36:
        v44 = *(v1 + v114);
        v45 = [v44 bleedingAfterPregnancyFlow];
        if (v45 != [*(v1 + v113) bleedingAfterPregnancyFlow] && objc_msgSend(v44, sel_bleedingInPregnancyFlowSampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v47 = *(v17 + 2);
          v46 = *(v17 + 3);
          if (v47 >= v46 >> 1)
          {
            v17 = sub_29E1456A4((v46 > 1), v47 + 1, 1, v17);
          }

          *(v17 + 2) = v47 + 1;
          v17[v47 + 32] = 2;
          goto LABEL_6;
        }

        goto LABEL_102;
      }

      v43 = sub_29E2C4914();

      if (v43)
      {
        goto LABEL_36;
      }

      v48 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v50 = v49;
      if (v48 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v50 == v51)
      {

LABEL_47:
        v53 = *(v1 + v114);
        v54 = [v53 ovulationTestResult];
        if (v54 != [*(v1 + v113) ovulationTestResult] && objc_msgSend(v53, sel_ovulationTestResultSampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v56 = *(v17 + 2);
          v55 = *(v17 + 3);
          if (v56 >= v55 >> 1)
          {
            v17 = sub_29E1456A4((v55 > 1), v56 + 1, 1, v17);
          }

          *(v17 + 2) = v56 + 1;
          v17[v56 + 32] = 3;
          goto LABEL_6;
        }

        goto LABEL_102;
      }

      v52 = sub_29E2C4914();

      if (v52)
      {
        goto LABEL_47;
      }

      v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v59 = v58;
      if (v57 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v59 == v60)
      {

LABEL_58:
        v62 = *(v1 + v114);
        v63 = [v62 pregnancyTestResult];
        if (v63 != [*(v1 + v113) pregnancyTestResult] && objc_msgSend(v62, sel_pregnancyTestResultSampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v65 = *(v17 + 2);
          v64 = *(v17 + 3);
          if (v65 >= v64 >> 1)
          {
            v17 = sub_29E1456A4((v64 > 1), v65 + 1, 1, v17);
          }

          *(v17 + 2) = v65 + 1;
          v17[v65 + 32] = 4;
          goto LABEL_6;
        }

        goto LABEL_102;
      }

      v61 = sub_29E2C4914();

      if (v61)
      {
        goto LABEL_58;
      }

      v66 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v68 = v67;
      if (v66 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v68 == v69)
      {

LABEL_69:
        v71 = *(v1 + v114);
        v72 = [v71 progesteroneTestResult];
        if (v72 != [*(v1 + v113) progesteroneTestResult] && objc_msgSend(v71, sel_progesteroneTestResultSampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v74 = *(v17 + 2);
          v73 = *(v17 + 3);
          if (v74 >= v73 >> 1)
          {
            v17 = sub_29E1456A4((v73 > 1), v74 + 1, 1, v17);
          }

          *(v17 + 2) = v74 + 1;
          v17[v74 + 32] = 5;
          goto LABEL_6;
        }

        goto LABEL_102;
      }

      v70 = sub_29E2C4914();

      if (v70)
      {
        goto LABEL_69;
      }

      v75 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v77 = v76;
      if (v75 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v77 == v78)
      {
        break;
      }

      v79 = sub_29E2C4914();

      if (v79)
      {
        goto LABEL_80;
      }

      v84 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v86 = v85;
      if (v84 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v86 == v87)
      {

LABEL_91:
        v89 = *(v1 + v114);
        v90 = [v89 cervicalMucusQuality];
        if (v90 != [*(v1 + v113) cervicalMucusQuality] && objc_msgSend(v89, sel_cervicalMucusQualitySampleCount) > 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
          }

          v92 = *(v17 + 2);
          v91 = *(v17 + 3);
          if (v92 >= v91 >> 1)
          {
            v17 = sub_29E1456A4((v91 > 1), v92 + 1, 1, v17);
          }

          *(v17 + 2) = v92 + 1;
          v17[v92 + 32] = 7;
          goto LABEL_6;
        }

LABEL_102:

        goto LABEL_6;
      }

      v88 = sub_29E2C4914();

      if (v88)
      {
        goto LABEL_91;
      }

      v93 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v95 = v94;
      if (v93 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v95 != v96)
      {
        v97 = sub_29E2C4914();

        if (v97)
        {
          goto LABEL_102;
        }

        v98 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v100 = v99;
        if (v98 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v100 != v101)
        {
          v102 = sub_29E2C4914();

          if (v102)
          {
            goto LABEL_102;
          }

          v103 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
          v105 = v104;
          if (v103 != _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() || v105 != v106)
          {
            v107 = sub_29E2C4914();

            if ((v107 & 1) == 0)
            {
              result = sub_29E2C4724();
              __break(1u);
              return result;
            }

            goto LABEL_102;
          }
        }
      }

LABEL_6:
      if (v15 == ++v16)
      {

        goto LABEL_112;
      }
    }

LABEL_80:
    v80 = *(v1 + v114);
    v81 = [v80 sexualActivity];
    if (v81 != [*(v1 + v113) sexualActivity] && objc_msgSend(v80, sel_sexualActivitySampleCount) > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_29E1456A4(0, *(v17 + 2) + 1, 1, v17);
      }

      v83 = *(v17 + 2);
      v82 = *(v17 + 3);
      if (v83 >= v82 >> 1)
      {
        v17 = sub_29E1456A4((v82 > 1), v83 + 1, 1, v17);
      }

      *(v17 + 2) = v83 + 1;
      v17[v83 + 32] = 6;
      goto LABEL_6;
    }

    goto LABEL_102;
  }

  v17 = MEMORY[0x29EDCA190];
LABEL_112:
  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardValidationResult) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_114;
  }

LABEL_117:
  sub_29E21DFEC(v17);
}

void sub_29E2235E4()
{
  v1 = sub_29E2BCC94();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_hasCollectionViewFocusedInitialCard) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout) = 0;
  (*(v2 + 104))(v5, *MEMORY[0x29EDB9C78], v1, v3);
  sub_29E2BCCA4();
  (*(v2 + 8))(v5, v1);
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_infiniteRepeatCount) = 4;
  v6 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_cardProgressLabel) = 0;
  v8 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_configuration;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0;
  v9 = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) = MEMORY[0x29EDCA190];
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardValidationResult) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCardCarouselViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_temperatureFormatter;
  v11 = [objc_allocWithZone(MEMORY[0x29EDBA030]) init];
  [v11 setUnitStyle_];
  [v11 setUnitOptions_];
  v12 = [objc_allocWithZone(MEMORY[0x29EDBA078]) init];
  [v12 setMaximumFractionDigits_];
  [v12 setMinimumFractionDigits_];
  [v11 setNumberFormatter_];

  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_editOrdering) = v9;
  v13 = (v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_previousSize);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewToDateLabelConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_topToDateLabelSpacingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewContentHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_verticalShadowPadding) = 0x4034000000000000;
  v14 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_containerView;
  v15 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_bottomSpacer;
  v17 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController____lazy_storage___dateLabel) = 0;
  sub_29E2C4724();
  __break(1u);
}

void *sub_29E223960(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[3] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x29EDCA190];
  a4[4] = a1;
  a4[5] = v7;
  v8 = &unk_2A24AFAB8;
  if (!a2)
  {
    v8 = &unk_2A24AFA90;
  }

  a4[6] = v7;
  a4[7] = v8;
  v14 = sub_29E22A34C(a2);
  sub_29E2BF404();
  sub_29E221700(&v14);

  a4[5] = v14;

  v9 = 0;
  v10 = 0x20u;
  do
  {
    v11 = *(&unk_2A24AEAE8 + v10);
    if ((v11 & ~v9) == 0 || (v11 & ~a2) == 0)
    {
      v11 = 0;
    }

    v9 |= v11;
    v10 += 8;
  }

  while (v10 != 208);
  v14 = sub_29E22A34C(v9);
  sub_29E2BF404();
  sub_29E221700(&v14);

  a4[6] = v14;

  a4[3] = &off_2A24BF9D0;
  swift_unknownObjectWeakAssign();
  return a4;
}

void sub_29E223AB0(void *a1)
{
  v3 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v4 = sub_29E2C33A4();
  v5 = [v3 BOOLForKey_];

  if (*(*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) + 16) < 3uLL || v5 != 0)
  {
    v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionViewFlowLayout);
    if (v7)
    {
      [v7 itemSize];
      [a1 bounds];
      CGRectGetWidth(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_29E223BC8()
{
  v1 = [objc_opt_self() hkmc_menstrualCyclesDefaults];
  v2 = sub_29E2C33A4();
  v3 = [v1 BOOLForKey_];

  result = *(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_loggingCards) + 16);
  if (result >= 3 && (v3 & 1) == 0)
  {
    if (result >> 61)
    {
      __break(1u);
    }

    else
    {
      result *= 4;
    }
  }

  return result;
}

void sub_29E223C7C(char a1)
{
  v3 = sub_29E2BCFB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return;
  }

  v7 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging);
  v9 = v7;
  MEMORY[0x29ED79740](v8, 0);
  v10 = sub_29E2BCF24();
  (*(v4 + 8))(v6, v3);
  v11 = [v9 cellForItemAtIndexPath_];

  if (v11)
  {
    type metadata accessor for LoggingCardCarouselCollectionViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController);
      if (v13)
      {
        [*(v13 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView) flashScrollIndicators];
      }
    }
  }
}

void sub_29E223E0C()
{
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8))
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging);
  v7 = v5;
  MEMORY[0x29ED79740](v6, 0);
  v8 = sub_29E2BCF24();
  (*(v2 + 8))(v4, v1);
  v9 = [v7 cellForItemAtIndexPath_];

  if (v9)
  {
    type metadata accessor for LoggingCardCarouselCollectionViewCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController);
      if (v11)
      {
        [*(v11 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView) flashScrollIndicators];
      }
    }
  }
}

void sub_29E223F94()
{
  v1 = sub_29E2BCFB4();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x2A1C7C4A8](v1).n128_u64[0];
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView;
  v7 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  [v7 contentOffset];
  v8 = v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_contentOffsetXBeforeDragging;
  *v8 = v9;
  *(v8 + 8) = 0;
  v10 = *(v0 + v6);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging + 8))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_indexOfCellBeforeDragging);
  v12 = v10;
  MEMORY[0x29ED79740](v11, 0);
  v13 = sub_29E2BCF24();
  (*(v2 + 8))(v5, v1);
  v14 = [v12 cellForItemAtIndexPath_];

  if (v14)
  {
    type metadata accessor for LoggingCardCarouselCollectionViewCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37LoggingCardCarouselCollectionViewCell_loggingCardViewController);
      if (v16)
      {
        [*(v16 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView) flashScrollIndicators];
      }
    }
  }
}

id sub_29E224148()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_collectionView);
  if (result)
  {
    return [result setContentOffset:0 animated:{*(v0 + 24), *(v0 + 32)}];
  }

  __break(1u);
  return result;
}

uint64_t sub_29E224174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E22418C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E2241F0(uint64_t a1, uint64_t a2)
{
  sub_29E187048();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E224254(uint64_t a1)
{
  sub_29E187048();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E2242EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E224334(uint64_t a1)
{
  sub_29DF27598(0, &qword_2A181FDD8, &type metadata for LoggingCardCarouselConfiguration, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E2243B4(uint64_t a1, uint64_t a2)
{
  sub_29DF27598(0, &qword_2A181FDD8, &type metadata for LoggingCardCarouselConfiguration, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E224484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E2244CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E224528()
{
  v1 = *(v0 + 26);
  if (v1 == 2)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    sub_29E2C4584();

    if (v1)
    {
      v4 = 0x746E6573657250;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    MEMORY[0x29ED7FCC0](v4, v5);

    v2 = 0xD000000000000018;
    v3 = 0x800000029E307970;
  }

  sub_29E2C4584();

  sub_29E2C3164();
  v6 = sub_29E2C48D4();
  MEMORY[0x29ED7FCC0](v6);

  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E307930);
  if (*(v0 + 24))
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 1701736270;
  }

  if (*(v0 + 24))
  {
    v8 = 0x800000029E307950;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x29ED7FCC0](v7, v8);

  MEMORY[0x29ED7FCC0](v2, v3);

  *(v0 + 32) = 0x7865646E49796144;
  *(v0 + 40) = 0xE90000000000003ALL;
  return result;
}

uint64_t sub_29E2246EC(uint64_t a1)
{
  v2 = sub_29E2251D0();

  return MEMORY[0x2A1C60910](a1, v2);
}

void sub_29E224864()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v8);
  if (v8[3])
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v5 = v0;
      goto LABEL_8;
    }

    v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel);
    if (v2)
    {
      v3 = v2;
      v4 = sub_29E2C33A4();

      [v3 setText_];

      return;
    }

    __break(1u);
  }

  v5 = v0;
  sub_29DF61E50(v8);
LABEL_8:
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_29E2C4584();

  v8[0] = 0xD000000000000011;
  v8[1] = 0x800000029E307A20;
  sub_29DEC3518(v5 + v1, v7);
  sub_29DEC357C();
  v6 = sub_29E2C3424();
  MEMORY[0x29ED7FCC0](v6);

  sub_29E2C4724();
  __break(1u);
}

void sub_29E224A24()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = [v1 tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];

  sub_29E2BD084();
  sub_29E2C3FE4();
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel;
  v5 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel];
  *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel] = v3;
  v6 = v3;

  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  v7 = *&v0[v4];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v1 labelColor];
  [v8 setTextColor_];

  v10 = *&v0[v4];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v10 setNumberOfLines_];
  v11 = [v0 contentView];
  if (!*&v0[v4])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  [v11 addSubview_];

  sub_29DE99B54();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_29E2CE070;
  v14 = *&v0[v4];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  *(v13 + 32) = v18;
  v19 = *&v0[v4];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = [v19 leadingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v13 + 40) = v23;
  v24 = *&v0[v4];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = [v24 trailingAnchor];
  v26 = [v0 contentView];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-16.0];
  *(v13 + 48) = v28;
  v29 = *&v0[v4];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = objc_opt_self();
  v31 = [v29 bottomAnchor];
  v32 = [v0 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor:v33 constant:-16.0];
  *(v13 + 56) = v34;
  sub_29DEB8834();
  v35 = sub_29E2C3604();

  [v30 activateConstraints_];

  v36 = *&v0[v4];
  if (!v36)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v37 = objc_opt_self();
  v38 = *MEMORY[0x29EDC80E0];
  v39 = v36;
  v40 = [v37 preferredFontForTextStyle_];
  [v39 setFont_];

  sub_29DEAC750();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29E2CAB20;
  v42 = sub_29E2C0B54();
  v43 = MEMORY[0x29EDC7870];
  *(v41 + 32) = v42;
  *(v41 + 40) = v43;
  sub_29E2C4034();
  swift_unknownObjectRelease();
}

id sub_29E224F0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AboutTextCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E224FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_item;
  swift_beginAccess();
  return sub_29DEC3518(v1 + v3, a1);
}

uint64_t sub_29E225008(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_item;
  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E224864();
  return sub_29DF61E50(a1);
}

void (*sub_29E225074(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E2250D8;
}

void sub_29E2250D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E224864();
  }
}

void sub_29E22510C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27AboutTextCollectionViewCell_detailTextLabel);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = *MEMORY[0x29EDC80E0];
    v4 = v1;
    v5 = [v2 preferredFontForTextStyle_];
    [v4 setFont_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_29E2251D0()
{
  result = qword_2A181FE50;
  if (!qword_2A181FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FE50);
  }

  return result;
}

void sub_29E225224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v49 = a2;
  sub_29E22579C();
  v60 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v58 = &v48 - v7;
  MEMORY[0x2A1C7C4A8](v8);
  v57 = &v48 - v9;
  MEMORY[0x2A1C7C4A8](v10);
  v56 = &v48 - v11;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x29EDCA190];
  if (v12)
  {
    aBlock[0] = MEMORY[0x29EDCA190];
    sub_29E181770(0, v12, 0);
    v63 = aBlock[0];
    v14 = a1 + 64;
    v15 = sub_29E2C4404();
    v16 = 0;
    v17 = *(a1 + 36);
    v52 = a1 + 72;
    v53 = v12;
    v54 = v17;
    v55 = a1 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      if (v17 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v61 = v16;
      v20 = *(a1 + 48);
      v21 = sub_29E2C31A4();
      v22 = *(v21 - 8);
      v23 = v56;
      (*(v22 + 16))(v56, v20 + *(v22 + 72) * v15, v21);
      v24 = *(*(a1 + 56) + 8 * v15);
      v25 = v57;
      (*(v22 + 32))(v57, v23, v21);
      v26 = v60;
      *(v25 + *(v60 + 48)) = v24;
      v27 = v58;
      sub_29E225B54(v25, v58);
      v62 = sub_29E2C3164();
      v28 = *(v22 + 8);
      v28(v27, v21);
      v29 = a1;
      v30 = v59;
      sub_29DF576D0(v25, v59);
      v31 = *(v30 + *(v26 + 48));
      v28(v30, v21);
      v32 = v63;
      aBlock[0] = v63;
      v34 = *(v63 + 16);
      v33 = *(v63 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_29E181770((v33 > 1), v34 + 1, 1);
        v32 = aBlock[0];
      }

      *(v32 + 16) = v34 + 1;
      v35 = v32 + 16 * v34;
      *(v35 + 32) = v62;
      *(v35 + 40) = v31;
      v18 = 1 << *(v29 + 32);
      if (v15 >= v18)
      {
        goto LABEL_28;
      }

      a1 = v29;
      v14 = v55;
      v36 = *(v55 + 8 * v19);
      if ((v36 & (1 << v15)) == 0)
      {
        goto LABEL_29;
      }

      v63 = v32;
      LODWORD(v17) = v54;
      if (v54 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v37 = v36 & (-2 << (v15 & 0x3F));
      if (v37)
      {
        v18 = __clz(__rbit64(v37)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v19 << 6;
        v39 = v19 + 1;
        v40 = (v52 + 8 * v19);
        while (v39 < (v18 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_29DF49948(v15, v54, 0);
            v18 = __clz(__rbit64(v41)) + v38;
            goto LABEL_4;
          }
        }

        sub_29DF49948(v15, v54, 0);
      }

LABEL_4:
      v16 = v61 + 1;
      v15 = v18;
      if (v61 + 1 == v53)
      {
        v13 = v63;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (v13[2])
    {
      v43 = v13;
      sub_29E225BB8();
      v44 = sub_29E2C47B4();
      v13 = v43;
    }

    else
    {
      v44 = MEMORY[0x29EDCA198];
    }

    aBlock[0] = v44;
    v45 = v13;
    sub_29E2BF404();
    sub_29E225810(v45, 1, aBlock);

    sub_29E0D9ECC(aBlock[0]);

    sub_29DED1758();
    sub_29DEE8BBC();
    v46 = sub_29E2C31F4();

    aBlock[4] = v49;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    aBlock[3] = &unk_2A24BFCF8;
    v47 = _Block_copy(aBlock);

    [v51 saveMenstrualFlowByDayIndex:v46 completion:v47];
    _Block_release(v47);
  }
}

void sub_29E22579C()
{
  if (!qword_2A1819388)
  {
    sub_29E2C31A4();
    type metadata accessor for HKMCDaySummaryBleedingFlow(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1819388);
    }
  }
}

void sub_29E225810(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_29E184608(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_29E00681C(v15, a2 & 1);
    v10 = sub_29E184608(v8);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_29E2C4964();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_29E00AE4C();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_29DE96670();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_29E2C4584();
    MEMORY[0x29ED7FCC0](0xD00000000000001BLL, 0x800000029E3004F0);
    sub_29E2C4664();
    MEMORY[0x29ED7FCC0](39, 0xE100000000000000);
    sub_29E2C4724();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = sub_29E184608(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_29E00681C(v33, 1);
        v29 = sub_29E184608(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      *(v36[7] + 8 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v36[2] = v38;
      v24 += 2;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

uint64_t sub_29E225B54(uint64_t a1, uint64_t a2)
{
  sub_29E22579C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E225BB8()
{
  if (!qword_2A181A8F0)
  {
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A8F0);
    }
  }
}

uint64_t sub_29E225C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E225C2C(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 <= 2)
  {
    if (a1 != 1 && a1 != 2)
    {
      return v10;
    }
  }

  else if (a1 != 3 && a1 != 4 && a1 != 5)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_29E225EAC(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13[-v8];
  v10 = 0;
  if (a1 <= 2)
  {
    if (a1 != 1 && a1 != 2)
    {
      return v10;
    }
  }

  else if (a1 != 3 && a1 != 4 && a1 != 5)
  {
    return v10;
  }

  sub_29E2C3314();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v11 = qword_2A1A67F80;
  sub_29E2BCC74();
  v10 = sub_29E2C3414();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_29E226198@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v19[-v10];
  *(swift_allocObject() + 16) = v1;
  v12 = v1;
  sub_29E2C3314();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v6 + 8))(v11, v5);
  sub_29E2BF794();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_29E2BC6E4();

  sub_29E2C0844();
  v16 = sub_29E2BE0B4();
  swift_allocObject();
  v17 = sub_29E2BE094();
  a1[3] = v16;
  a1[4] = sub_29E227EA4(&unk_2A181CC00, MEMORY[0x29EDC1C30]);

  *a1 = v17;
  return result;
}

void sub_29E226534(void *a1, uint64_t a2)
{
  v4 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2C3384();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v10 = MEMORY[0x2A1C7C4A8](v9).n128_u64[0];
  v12 = &v23[-v11 - 8];
  v13 = [a1 viewController];
  if (v13)
  {
    v22 = v13;
    v14 = [v13 navigationController];
    if (v14)
    {
      v15 = v14;
      sub_29E2BD664();
      sub_29DE9DC34(a2 + qword_2A181FE58, v24);
      sub_29E2C3314();
      (*(v6 + 16))(v8, v12, v5);
      if (qword_2A1A62788 != -1)
      {
        swift_once();
      }

      v16 = qword_2A1A67F80;
      sub_29E2BCC74();
      sub_29E2C3414();
      (*(v6 + 8))(v12, v5);
      sub_29DECE8A4(0, &qword_2A1A62780);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_29E2CD7A0;
      *(v17 + 32) = sub_29E2BD684();
      *(v17 + 40) = v18;
      *(v17 + 48) = sub_29E2BD674();
      *(v17 + 56) = v19;
      objc_allocWithZone(type metadata accessor for MenstrualCyclesAllHighlightsViewController());
      sub_29DE9DC34(v24, v23);
      v20 = sub_29E2BDFD4();
      sub_29DE93B3C(v24);
      [v15 pushViewController:v20 animated:1];
    }

    else
    {
      v21 = v22;
    }
  }
}

id sub_29E22691C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenstrualCyclesHighlightsRoomDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E226A20(void *a1, int a2, uint64_t a3)
{
  v24 = a3;
  v25 = a1;
  v23 = a2;
  sub_29E227674();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A181FE78) = 2;
  *(v3 + qword_2A181FE80) = 1;
  sub_29DE9DC34(a3, v26);
  v10 = sub_29E2276DC(v26, 2);
  sub_29E18648C(&unk_2A24AF088);
  sub_29E227E10();
  swift_allocObject();
  v11 = v10;
  sub_29E2BF894();
  sub_29E227EA4(&qword_2A181FEB0, sub_29E227E10);
  v12 = sub_29E2BE744();
  sub_29E13A33C();
  v13 = swift_allocObject();
  v22 = xmmword_29E2CAB20;
  *(v13 + 16) = xmmword_29E2CAB20;
  v14 = sub_29E227EA4(&qword_2A181FEB8, sub_29E227EEC);
  *(v13 + 32) = v12;
  *(v13 + 40) = v14;
  sub_29E2BF134();
  swift_allocObject();

  v15 = sub_29E2BF154();
  type metadata accessor for CycleTrackingDataSourceWithLayout(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v22;
  v17 = MEMORY[0x29EDC2570];
  *(v16 + 32) = v15;
  *(v16 + 40) = v17;

  sub_29E2BF164();
  v18 = v23;
  *(v3 + qword_2A181FE70) = v23;
  v19 = MEMORY[0x29EDC2000];
  if ((v18 & 1) == 0)
  {
    v19 = MEMORY[0x29EDC1FF8];
  }

  (*(v7 + 104))(v9, *v19, v6);
  v20 = sub_29E2BE674();

  sub_29DE93B3C(v24);
  return v20;
}

uint64_t sub_29E226D34()
{
  v1 = sub_29E2BE414();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BE404();
  v5 = sub_29E2BE3E4();
  if (v0)
  {
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = v5;
    (*(v2 + 8))(v4, v1);
    v7 = [objc_opt_self() estimatedDimension_];
    v1 = sub_29E2C3F24();
  }

  return v1;
}

uint64_t sub_29E226E84(uint64_t a1, char a2)
{
  v3 = v2;
  v40 = *v2;
  sub_29E227674();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2C0514();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C2B84();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v16 = sub_29E2C3CF4();
  (*(v14 + 104))(v16, *MEMORY[0x29EDCA278], v13);
  v17 = sub_29E2C2BA4();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_29E2C04B4();
    v19 = sub_29E2C0504();
    v20 = sub_29E2C3A34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = v21;
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v21 = 136315138;
      v22 = sub_29E2C4AE4();
      v24 = v10;
      v25 = v8;
      v26 = v3;
      v27 = v7;
      v28 = a2;
      v29 = a1;
      v30 = sub_29DFAA104(v22, v23, v48);

      v31 = v38;
      *(v38 + 1) = v30;
      a1 = v29;
      a2 = v28;
      v7 = v27;
      v3 = v26;
      v8 = v25;
      v10 = v24;
      v32 = v31;
      _os_log_impl(&dword_29DE74000, v19, v20, "[%s] Notifying data sources of onboarding changes", v31, 0xCu);
      v33 = v39;
      sub_29DE93B3C(v39);
      MEMORY[0x29ED82140](v33, -1, -1);
      MEMORY[0x29ED82140](v32, -1, -1);
    }

    (*(v41 + 8))(v43, v42);
    v34 = *(v3 + qword_2A181FE70);
    *(v3 + qword_2A181FE70) = a2 & 1;
    if (v34 != (a2 & 1))
    {
      v35 = MEMORY[0x29EDC2000];
      if ((a2 & 1) == 0)
      {
        v35 = MEMORY[0x29EDC1FF8];
      }

      (*(v8 + 104))(v10, *v35, v7);
      sub_29E2BE644();
    }

    v46 = sub_29E2BE5F4();
    v47 = MEMORY[0x29EDC2570];
    sub_29DF942BC(0, &qword_2A181DB40);
    sub_29DF942BC(0, &qword_2A181BF90);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      sub_29DF3CBE8(v44, v48);
      v36 = v49;
      v37 = v50;
      sub_29DE966D4(v48, v49);
      (*(v37 + 8))(a1, a2 & 1, v36, v37);
      sub_29DE93B3C(v48);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_29E00CBB8(v44);
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E227378()
{
  sub_29E2BE694();

  return swift_deallocClassInstance();
}

uint64_t sub_29E2273D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = a2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = a1;
    v13 = v12;
    v22[0] = v12;
    *v11 = 136315138;
    v14 = sub_29E2C4AE4();
    v16 = sub_29DFAA104(v14, v15, v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Notifying data sources of onboarding changes", v11, 0xCu);
    sub_29DE93B3C(v13);
    v17 = v13;
    a1 = v20;
    MEMORY[0x29ED82140](v17, -1, -1);
    v18 = v11;
    a2 = v21;
    MEMORY[0x29ED82140](v18, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_29E2BE5F4();
  v22[1] = &unk_2A25093B8;
  [swift_dynamicCastObjCProtocolUnconditional() analysisProvider:a1 didUpdateAnalysis:a2];
}

uint64_t sub_29E227608(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;

  sub_29E2273D4(v5, v6);
}

void sub_29E227674()
{
  if (!qword_2A181FE98)
  {
    type metadata accessor for CycleTrackingDataSourceWithLayout(255);
    v0 = sub_29E2BE624();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FE98);
    }
  }
}

uint64_t sub_29E2276DC(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  sub_29E227F80(0, &qword_2A1A616F0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_29E2BCEA4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_29E2BCBB4();
  v9 = *(v42 - 8);
  MEMORY[0x2A1C7C4A8](v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v46 = sub_29E2BC3A4();
  v50 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v49 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9DC34(a1, v51);
  sub_29E227F80(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v14 = sub_29E2BD234();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v41 = xmmword_29E2CAB20;
  *(v17 + 16) = xmmword_29E2CAB20;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x29EDC3788], v14);
  sub_29DECE8A4(0, &qword_2A1A619B0);
  v43 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E2CE220;
  v20 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v21 = sub_29E2C33A4();
  v22 = [v20 initWithKey:v21 ascending:1];

  *(v19 + 32) = v22;
  sub_29DECE8A4(0, &qword_2A181CC70);
  v23 = swift_allocObject();
  *(v23 + 16) = v41;
  *(v23 + 32) = sub_29E2BD274();
  *&v41 = sub_29E2BD664();
  sub_29E2BCE44();
  sub_29E2BCBA4();
  sub_29E2BCCC4();
  (*(v9 + 8))(v11, v42);
  (*(v44 + 8))(v8, v45);
  sub_29E2BCA84();
  v24 = v49;
  sub_29E2BC374();
  v45 = objc_allocWithZone(type metadata accessor for MenstrualCyclesHighlightsRoomDataSource(0));
  sub_29DE9DC34(v51, v45 + qword_2A181FE58);
  sub_29E2BDCA4();
  v25 = MEMORY[0x29ED7A440]();
  sub_29DE9408C(0, &qword_2A1A61D48);
  v26 = sub_29E2C3604();

  [v25 setSortDescriptors_];

  v27 = v50;
  v28 = v46;
  (*(v50 + 16))(v5, v24, v46);
  v29 = *(v27 + 56);
  v29(v5, 0, 1, v28);
  v30 = MEMORY[0x29ED7A3D0](v17, 0, v5, v23);
  sub_29DF3DEB8(v5);
  v29(v5, 1, 1, v28);
  v31 = sub_29E2BDC24();

  sub_29DF3DEB8(v5);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29E2CD3B0;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  sub_29DE9408C(0, &qword_2A1A5E280);
  v33 = v30;
  v34 = v31;
  v35 = sub_29E2C3604();

  v36 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v25 setPredicate_];
  [v25 setFetchLimit_];
  sub_29DE966D4(v51, v51[3]);
  v37 = v25;
  v38 = sub_29E2BD144();
  [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v37 managedObjectContext:v38 sectionNameKeyPath:0 cacheName:0];

  v39 = sub_29E2BF6F4();
  sub_29DE93B3C(v47);
  (*(v50 + 8))(v49, v28);
  sub_29DE93B3C(v51);
  return v39;
}

void sub_29E227E10()
{
  if (!qword_2A181FEA0)
  {
    type metadata accessor for MenstrualCyclesHighlightsRoomDataSource(255);
    sub_29E227EA4(&qword_2A181FEA8, type metadata accessor for MenstrualCyclesHighlightsRoomDataSource);
    v0 = sub_29E2BF8A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FEA0);
    }
  }
}

uint64_t sub_29E227EA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E227EEC()
{
  if (!qword_2A181FEC0)
  {
    sub_29E227E10();
    sub_29E227EA4(&qword_2A181FEB0, sub_29E227E10);
    v0 = sub_29E2BE984();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FEC0);
    }
  }
}

void sub_29E227F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E227FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_29E1422AC(v2, v3);
  }
}

id sub_29E228028(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  ObjectType = swift_getObjectType();
  v24 = MEMORY[0x29EDCA298];
  sub_29E229974(0, &qword_2A1A61D40, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v21 - v7;
  sub_29E2297B0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_subscriptions] = MEMORY[0x29EDCA1A0];
  v22 = a1;
  *&v2[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin39DeviationsCompactCalendarViewController_viewModel] = a1;
  v14 = objc_allocWithZone(type metadata accessor for CompactCalendarViewLayout());

  v15 = [v14 init];
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v27, sel_initWithCollectionViewLayout_, v15);

  v25 = a2;
  sub_29DEB1E60();
  v17 = v16;
  v18 = sub_29E2C3CF4();
  v26 = v18;
  v19 = sub_29E2C3CE4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_29E2297EC();
  sub_29E229E34(&qword_2A181FEF0, sub_29E2297EC);
  sub_29E229E34(&qword_2A1A61D38, sub_29DEB1E60);
  sub_29E2C1354();
  sub_29E2299C8(v8, &qword_2A1A61D40, v24);

  swift_getKeyPath();
  v25 = v22;
  sub_29E229E34(&qword_2A181FEF8, sub_29E2297B0);
  sub_29E2C1394();

  (*(v11 + 8))(v13, v10);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  return v17;
}

uint64_t sub_29E2283D4(__int128 *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[4];
  v6 = a1[2];
  v17 = a1[3];
  v4 = v17;
  v18 = v5;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  v16[0] = v2;
  v16[1] = v7;
  v16[2] = v6;
  v10 = (*a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31DeviationsConfirmationViewModel_ongoingChanges);
  v19[0] = *v10;
  v11 = v10[4];
  v13 = v10[1];
  v12 = v10[2];
  v19[3] = v10[3];
  v19[4] = v11;
  v19[1] = v13;
  v19[2] = v12;
  *v10 = v9;
  v10[1] = v3;
  v10[2] = v8;
  v10[3] = v4;
  v10[4] = a1[4];
  sub_29DEA6A00(v16, v15);
  sub_29DF0B0B0(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v15[0] = 0;

  return sub_29E2C1224();
}

id sub_29E228540()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E02067C(0, &qword_2A181FF08, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8AF0]);
  v4 = v3;
  v5 = *(v3 - 8);
  *&v6 = MEMORY[0x2A1C7C4A8](v3).n128_u64[0];
  v8 = &v14 - v7;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewDidLoad, v6);
  result = [v1 collectionView];
  if (result)
  {
    v10 = result;
    v11 = [objc_opt_self() systemBackgroundColor];
    [v10 setBackgroundColor_];

    result = [v1 collectionView];
    if (result)
    {
      v12 = result;
      type metadata accessor for CalendarMonthCell(0);
      sub_29E229E34(&qword_2A181FF00, type metadata accessor for CalendarMonthCell);
      sub_29E2C3B74();

      swift_beginAccess();
      sub_29E02067C(0, &qword_2A181C938, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8B00]);

      sub_29E2C11E4();
      swift_endAccess();

      sub_29E229B48();
      v13 = sub_29E2C1274();
      (*(v5 + 8))(v8, v4);
      sub_29E2287D4(v13);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E2287D4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v22 = MEMORY[0x29EDCA298];
  sub_29E229974(0, &qword_2A1A61D40, MEMORY[0x29EDCA298]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v21 - v3;
  sub_29E229BC4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E229D44();
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_29DEB1E60();
  v14 = sub_29E2C3CF4();
  v27 = v14;
  v15 = sub_29E2C3CE4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_29E229CE4();
  sub_29E229E34(&qword_2A181FF28, sub_29E229CE4);
  sub_29E229E34(&qword_2A1A61D38, sub_29DEB1E60);
  sub_29E2C1354();
  sub_29E2299C8(v4, &qword_2A1A61D40, v22);

  sub_29E229E34(&qword_2A181FF38, sub_29E229BC4);
  sub_29E229DD8();
  sub_29E2C1374();
  (*(v7 + 8))(v9, v6);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = ObjectType;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  sub_29E229E34(&qword_2A181FF48, sub_29E229D44);
  v19 = v23;
  sub_29E2C1384();

  (*(v24 + 8))(v13, v19);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();
}

id sub_29E228C48(uint64_t *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6)
    {
      result = [Strong collectionView];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      [result reloadData];
    }

    else
    {

      sub_29E0E7884();
    }
  }

  sub_29E2C04B4();
  sub_29E2BF404();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446466;
    v15 = sub_29E2C4AE4();
    v17 = sub_29DFAA104(v15, v16, &v21);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    if (v6)
    {
      v18 = 0x64656863746566;
    }

    else
    {
      v18 = 0x647055736465656ELL;
    }

    if (v6)
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEB00000000657461;
    }

    v20 = sub_29DFAA104(v18, v19, &v21);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] ReviewState updated to %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v14, -1, -1);
    MEMORY[0x29ED82140](v13, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_29E22903C(void *a1)
{
  sub_29E229974(0, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for CompactCalendarMonthViewModel(0);
  v20 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalendarMonthCell(0);
  sub_29E229E34(&qword_2A181FF00, type metadata accessor for CalendarMonthCell);
  sub_29E2BE2B4();
  v11 = sub_29E2C33A4();

  v12 = sub_29E2BCF24();
  v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v12];

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;

    sub_29E0E7690(v7);

    v16 = v20;
    if ((*(v20 + 48))(v7, 1, v8) == 1)
    {
      sub_29E2299C8(v7, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel);
    }

    else
    {
      sub_29E229A24(v7, v10);
      sub_29E229AE4(v10, v4);
      (*(v16 + 56))(v4, 0, 1, v8);
      sub_29E1C2C40(v4);
      sub_29E1C31FC(v10);
      sub_29E1C358C(v10);
      sub_29E229A88(v10);
    }

    return v15;
  }

  else
  {

    v17 = objc_allocWithZone(MEMORY[0x29EDC79B0]);

    return [v17 init];
  }
}

void sub_29E229470(void *a1)
{
  sub_29E229974(0, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CompactCalendarMonthViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E0E7690(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_29E2299C8(v4, &qword_2A181F0E0, type metadata accessor for CompactCalendarMonthViewModel);
  }

  else
  {
    sub_29E229A24(v4, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29DF0AB74(v8);
      swift_unknownObjectRelease();
    }

    sub_29E229A88(v8);
  }

  v9 = sub_29E2BCF24();
  [a1 deselectItemAtIndexPath:v9 animated:1];
}

uint64_t sub_29E22976C()
{
  if (*v0)
  {
    return 0x64656863746566;
  }

  else
  {
    return 0x647055736465656ELL;
  }
}

void sub_29E2297EC()
{
  if (!qword_2A181FEE8)
  {
    sub_29E02067C(255, &qword_2A1817C80, &type metadata for CalendarChanges, MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FEE8);
    }
  }
}

uint64_t sub_29E229878@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E2298F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

void sub_29E229974(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E2299C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E229974(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E229A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactCalendarMonthViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E229A88(uint64_t a1)
{
  v2 = type metadata accessor for CompactCalendarMonthViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E229AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactCalendarMonthViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E229B48()
{
  result = qword_2A181FF10;
  if (!qword_2A181FF10)
  {
    sub_29E02067C(255, &qword_2A181FF08, &type metadata for DeviationsCompactCalendarViewController.State, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FF10);
  }

  return result;
}

void sub_29E229C00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29DEB1E60();
    sub_29E229E34(a4, a5);
    sub_29E229E34(&qword_2A1A61D38, sub_29DEB1E60);
    v8 = sub_29E2C0FF4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E229CE4()
{
  if (!qword_2A181FF20)
  {
    v0 = sub_29E2C1024();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FF20);
    }
  }
}

void sub_29E229D44()
{
  if (!qword_2A181FF30)
  {
    sub_29E229BC4(255);
    sub_29E229E34(&qword_2A181FF38, sub_29E229BC4);
    v0 = sub_29E2C0F04();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181FF30);
    }
  }
}

unint64_t sub_29E229DD8()
{
  result = qword_2A181FF40;
  if (!qword_2A181FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FF40);
  }

  return result;
}

uint64_t sub_29E229E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E229E7C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E22A34C(uint64_t a1)
{
  v2 = MEMORY[0x29EDCA190];
  v3 = 0x20u;
  do
  {
    v6 = *(&unk_2A24AEAE8 + v3);
    if ((v6 & ~a1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E1817E0(0, *(v2 + 16) + 1, 1);
      }

      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_29E1817E0((v4 > 1), v5 + 1, 1);
      }

      *(v2 + 16) = v5 + 1;
      *(v2 + 8 * v5 + 32) = v6;
    }

    v3 += 8;
  }

  while (v3 != 208);
  return v2;
}

uint64_t sub_29E22A42C()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v11[-v6];
  sub_29E2C3314();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v8 = qword_2A1A67F80;
  sub_29E2BCC74();
  v9 = sub_29E2C3414();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_29E22A8B8(uint64_t a1)
{
  if (a1 > 2047)
  {
    if (a1 < 0x10000)
    {
      if (a1 < 0x2000)
      {
        if (a1 == 2048)
        {
          return 0x61657375616ELL;
        }

        if (a1 == 4096)
        {
          v2 = 0x6369766C6570;
          return v2 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x2000:
            return 0x6168437065656C73;
          case 0x4000:
            return 0x65756769746166;
          case 0x8000:
            return 0x446C616E69676176;
        }
      }
    }

    else if (a1 >= 0x80000)
    {
      switch(a1)
      {
        case 0x80000:
          return 0x6E696B53797264;
        case 0x100000:
          return 0xD000000000000013;
        case 0x200000:
          return 0x614C79726F6D656DLL;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10000:
          return 0x657753746867696ELL;
        case 0x20000:
          return 0x736C6C696863;
        case 0x40000:
          return 0x73736F4C72696168;
      }
    }
  }

  else
  {
    if (a1 > 31)
    {
      if (a1 > 255)
      {
        switch(a1)
        {
          case 256:
            return 0x6873616C46746F68;
          case 512:
            return 0x6361427265776F6CLL;
          case 1024:
            return 0x6E616843646F6F6DLL;
        }
      }

      else
      {
        switch(a1)
        {
          case 32:
            return 0x61706974736E6F63;
          case 64:
            return 0x6165687272616964;
          case 128:
            return 0x6568636164616568;
        }
      }

      return 0x726568746FLL;
    }

    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return 0x616E696D6F646261;
      }

      if (a1 == 2)
      {
        return 1701733217;
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          return 0x6574697465707061;
        case 8:
          return 0x676E6974616F6C62;
        case 16:
          v2 = 0x747361657262;
          return v2 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
      }
    }
  }

  return 0x726568746FLL;
}

uint64_t sub_29E22AC10(uint64_t a1)
{
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v23[-v8];
  v10 = sub_29E22A34C(a1);
  if (*(v10 + 16))
  {
    v11 = v10;
    sub_29E22A42C();
    v12 = sub_29E2C33A4();

    v13 = [v12 hk_localizedFirstWordCapitalizedString];

    v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v16 = v15;

    sub_29E2C3314();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v17 = qword_2A1A67F80;
    sub_29E2BCC74();
    sub_29E2C3414();
    (*(v4 + 8))(v9, v3);
    sub_29DEB19DC();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_29E2CD7A0;
    v19 = *(v11 + 16);

    v20 = MEMORY[0x29EDC9C10];
    *(v18 + 56) = MEMORY[0x29EDC9BA8];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19 - 1;
    *(v18 + 96) = MEMORY[0x29EDC99B0];
    *(v18 + 104) = sub_29DEB1A44();
    *(v18 + 72) = v14;
    *(v18 + 80) = v16;
    v21 = sub_29E2C33B4();
  }

  else
  {

    return 0;
  }

  return v21;
}

uint64_t sub_29E22AF0C()
{
  [v0[3] stopObservation_];

  return swift_deallocClassInstance();
}

uint64_t sub_29E22AF8C(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_29E2C3B54();
}

uint64_t sub_29E22B054(char a1, void *a2, char a3, uint64_t a4)
{
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v44 - v13;
  if (!a2 && (a1 & 1) != 0)
  {
    sub_29E2C04B4();
    v15 = sub_29E2C0504();
    v16 = sub_29E2C3A34();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      v47 = a4;
      *v17 = 136315394;
      swift_getMetatypeMetadata();
      v19 = sub_29E2C3424();
      v21 = sub_29DFAA104(v19, v20, &v46);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      if (a3)
      {
        v22 = 1702195828;
      }

      else
      {
        v22 = 0x65736C6166;
      }

      if (a3)
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = sub_29DFAA104(v22, v23, &v46);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_29DE74000, v15, v16, "[%s] Set needCycleTrackingEducation to %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v17, -1, -1);
    }

    v25 = *(v9 + 8);
    v26 = v14;
    return v25(v26, v8);
  }

  sub_29E2C04B4();
  v27 = a2;
  v28 = sub_29E2C0504();
  v29 = sub_29E2C3A14();

  if (!os_log_type_enabled(v28, v29))
  {

    v25 = *(v9 + 8);
    v26 = v11;
    return v25(v26, v8);
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v47 = v31;
  *v30 = 136315650;
  v32 = sub_29E2C4AE4();
  v34 = sub_29DFAA104(v32, v33, &v47);
  v45 = v8;
  v35 = v34;

  *(v30 + 4) = v35;
  *(v30 + 12) = 2080;
  if (a3)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (a3)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  v38 = sub_29DFAA104(v36, v37, &v47);

  *(v30 + 14) = v38;
  *(v30 + 22) = 2080;
  v46 = a2;
  v39 = a2;
  sub_29E22BF0C(0, &qword_2A1A5DFD0, sub_29DE96670);
  v40 = sub_29E2C3424();
  v42 = sub_29DFAA104(v40, v41, &v47);

  *(v30 + 24) = v42;
  _os_log_impl(&dword_29DE74000, v28, v29, "[%s] Could not set needCycleTrackingEducation to %s: %s", v30, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x29ED82140](v31, -1, -1);
  MEMORY[0x29ED82140](v30, -1, -1);

  return (*(v9 + 8))(v11, v45);
}

uint64_t sub_29E22B454()
{
  v0 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v0);
  return sub_29E2C3B24();
}

void sub_29E22B6F4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v3);
  sub_29DE9A5B4();
  if (sub_29E2C40D4())
  {
    v4 = sub_29E2C3B24();
    v5 = v1[2];
    v6 = swift_allocObject();
    *(v6 + 16) = v4 & 1;
    *(v6 + 24) = v2;
    aBlock[4] = sub_29E22BEE8;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF4FA14;
    aBlock[3] = &unk_2A24BFEF8;
    v7 = _Block_copy(aBlock);

    [v5 notifyObservers_];
    _Block_release(v7);
  }
}

uint64_t sub_29E22BA40(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_29E22BF0C(0, &qword_2A1A5E2F0, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_29E2C0514();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  swift_unknownObjectRetain();
  v11 = sub_29E2C0504();
  v12 = sub_29E2C3A04();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v2;
    v2 = v13;
    v14 = swift_slowAlloc();
    v29 = v6;
    v15 = v14;
    v32 = v14;
    *v2 = 136446466;
    v16 = sub_29E2C4AE4();
    v18 = sub_29DFAA104(v16, v17, &v32);

    *(v2 + 4) = v18;
    *(v2 + 12) = 2080;
    v31 = a1;
    sub_29E22C024();
    swift_unknownObjectRetain();
    v19 = sub_29E2C3424();
    v21 = sub_29DFAA104(v19, v20, &v32);

    *(v2 + 14) = v21;
    _os_log_impl(&dword_29DE74000, v11, v12, "[%{public}s] Updating observers: %s", v2, 0x16u);
    swift_arrayDestroy();
    v22 = v15;
    v6 = v29;
    MEMORY[0x29ED82140](v22, -1, -1);
    v23 = v2;
    LOBYTE(v2) = v30;
    MEMORY[0x29ED82140](v23, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v24 = sub_29E2C3734();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_29E2C3714();
  swift_unknownObjectRetain();
  v25 = sub_29E2C3704();
  v26 = swift_allocObject();
  v27 = MEMORY[0x29EDCA390];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = a1;
  *(v26 + 40) = v2 & 1;
  sub_29E13C63C(0, 0, v6, &unk_29E2E7248, v26);
}

uint64_t sub_29E22BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_29E2C3714();
  *(v5 + 24) = sub_29E2C3704();
  v7 = sub_29E2C36A4();

  return MEMORY[0x2A1C73D48](sub_29E22BE14, v7, v6);
}

uint64_t sub_29E22BE14()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [v2 shouldShowCycleTrackingEducationTileUpdatedWithDidUpdate_];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29E22BEF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E22BF0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29E22BF60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29DE9657C;

  return sub_29E22BD78(a1, v4, v5, v6, v7);
}

unint64_t sub_29E22C024()
{
  result = qword_2A181FF50;
  if (!qword_2A181FF50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A181FF50);
  }

  return result;
}

uint64_t type metadata accessor for SleepOnboardingTileViewActionHandler()
{
  result = qword_2A181FF68;
  if (!qword_2A181FF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29E22C120()
{
  v1 = sub_29E2BF504();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A181FF58;
  v6 = *(v0 + qword_2A181FF58);
  if (v6)
  {
    v7 = *(v0 + qword_2A181FF58);
  }

  else
  {
    v8 = HKLogMenstrualCyclesCategory();
    v9 = v0;
    sub_29E2BF7A4();
    sub_29E2BF4D4();
    (*(v2 + 8))(v4, v1);
    sub_29DE966D4(v16, v16[3]);
    v10 = sub_29E2BF484();
    sub_29DE93B3C(v16);
    v11 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v8 healthDataSource:v10];

    v12 = *(v9 + v5);
    *(v9 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

id sub_29E22C2A4()
{
  v1 = sub_29E2BF504();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A181FF60;
  v6 = *(v0 + qword_2A181FF60);
  if (v6)
  {
    v7 = *(v0 + qword_2A181FF60);
  }

  else
  {
    v8 = v0;
    sub_29E2BF7A4();
    sub_29E2BF4D4();
    (*(v2 + 8))(v4, v1);
    sub_29DE966D4(v17, v17[3]);
    v9 = sub_29E2BF484();
    sub_29DE93B3C(v17);
    v10 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v11 = sub_29E2C33A4();
    v12 = [v10 initWithIdentifier:v11 healthStore:v9];

    v13 = *(v8 + v5);
    *(v8 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

void sub_29E22C440()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BF504();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_29DE966D4(aBlock, v24);
  v9 = sub_29E2BF4B4();
  v11 = v10;
  sub_29E2C04B4();
  sub_29E2BC2B4();
  swift_allocObject();
  v12 = sub_29E2BC2A4();
  v13 = sub_29E0DFAEC(v9, v11, v12, v3);
  sub_29DE93B3C(aBlock);
  if (v13 != 3)
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
    v22 = v8;
    type metadata accessor for RoomInteractionEvent();
    v15 = swift_allocObject();
    *(v15 + 16) = 0xD00000000000002ALL;
    *(v15 + 24) = 0x800000029E2EEF80;
    *(v15 + 32) = 8;
    *(v15 + 33) = 8 - v13;
    *(v15 + 34) = 2;
    *(v15 + 40) = v14;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    v16 = v14;
    v17 = sub_29E22C120();
    v18 = swift_allocObject();
    *(v18 + 16) = ObjectType;
    v25 = sub_29E22CC68;
    v26 = v18;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DFE9648;
    v24 = &unk_2A24BFF90;
    v19 = _Block_copy(aBlock);

    [v17 submitEvent:v15 completion:v19];
    _Block_release(v19);

    sub_29E2BF7A4();
    v20 = sub_29E2BF4E4();
    v22(v7, v4);
    sub_29E22D1BC(v13, v20);
  }
}

void sub_29E22C78C(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DF57668();
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E22C9A4(uint64_t a1)
{
  v3 = sub_29E2BF504();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  *&v7[qword_2A181FF58] = 0;
  *&v7[qword_2A181FF60] = 0;
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29E2BF7B4();
  (*(v4 + 8))(a1, v3);
  return v8;
}

void sub_29E22CABC()
{
  v1 = *(v0 + qword_2A181FF60);
}

id sub_29E22CAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingTileViewActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E22CB34(uint64_t a1)
{
  v2 = *(a1 + qword_2A181FF60);
}

uint64_t sub_29E22CC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E22CC70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for OvulationConfirmationHelpTileActionHandler()
{
  result = qword_2A1A5F178;
  if (!qword_2A1A5F178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E22CD38()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

uint64_t sub_29E22CEAC()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E2C3394();
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A67F80;
  sub_29E2BCC74();
  return sub_29E2C3414();
}

uint64_t sub_29E22D020(__int16 a1)
{
  v1 = HIBYTE(a1);
  v2 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E2C3384();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  if (v1 == 3)
  {
    sub_29E2C3394();
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v4 = qword_2A1A67F80;
    sub_29E2BCC74();
    return sub_29E2C3414();
  }

  else
  {

    return sub_29DFC8078();
  }
}

uint64_t sub_29E22D1D4(char a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  sub_29E22F7C8(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v23 - v10;
  v12 = sub_29E2BD0A4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v17 = MEMORY[0x29EDC6A60];
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v17 = MEMORY[0x29EDC6A68];
LABEL_5:
    (*(v13 + 104))(v16, *v17, v12, v14);
    a3(a2, v16);
    return (*(v13 + 8))(v16, v12);
  }

  v19 = HKSPSleepFocusOnboardingURL();
  if (v19)
  {
    v20 = v19;
    sub_29E2BC8D4();

    v21 = sub_29E2BC904();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  }

  else
  {
    v21 = sub_29E2BC904();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  sub_29E22F6EC(v8, v11);
  sub_29E2BC904();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    return sub_29DEBDA84(v11);
  }

  sub_29E2BC8A4();
  return (*(v22 + 8))(v11, v21);
}

uint64_t sub_29E22D4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v28 = sub_29E2BD0F4();
  MEMORY[0x2A1C7C4A8](v28);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BD0A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E2BD0C4();
  v10 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v25 - v14;
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC6800] presentation:*MEMORY[0x29EDC67A0]];
  (*(v7 + 16))(v9, a2, v6);
  sub_29E2BD0B4();
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin46SleepingWristTemperatureHelpTileViewController_context;
  swift_beginAccess();
  result = sub_29DF45C10(v3 + v16, v30);
  v18 = v31;
  if (v31)
  {
    v25[1] = sub_29E2BD104();
    v19 = sub_29DE966D4(v30, v18);
    v20 = *(v18 - 8);
    v21 = MEMORY[0x2A1C7C4A8](v19);
    v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    sub_29E2BF484();
    (*(v20 + 8))(v23, v18);
    sub_29DE93B3C(v30);
    sub_29E0E0734();
    [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
    v24 = v26;
    (*(v10 + 16))(v12, v15, v26);
    v30[0] = MEMORY[0x29EDCA190];
    sub_29E22F780(&qword_2A181FF98, MEMORY[0x29EDC6AD8]);
    sub_29E22F7C8(0, &qword_2A181FFA0, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9A40]);
    sub_29E22F82C();
    sub_29E2C43F4();
    sub_29E2BD0E4();
    sub_29E2BD0D4();

    return (*(v10 + 8))(v15, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E22D938(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v23 = a1;
  v22 = sub_29E2BD0F4();
  MEMORY[0x2A1C7C4A8](v22);
  v21 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E2BF504();
  v3 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BD0A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E2BD0C4();
  v10 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v18 - v14;
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67C0] presentation:*MEMORY[0x29EDC6768]];
  (*(v7 + 16))(v9, v18, v6);
  sub_29E2BD0B4();
  v18 = sub_29E2BD104();
  sub_29E2BF7A4();
  sub_29E2BF4D4();
  (*(v3 + 8))(v5, v20);
  sub_29DE966D4(v24, v24[3]);
  sub_29E2BF484();
  sub_29DE93B3C(v24);
  sub_29E22C2A4();
  [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v16 = v19;
  (*(v10 + 16))(v12, v15, v19);
  v24[0] = MEMORY[0x29EDCA190];
  sub_29E22F780(&qword_2A181FF98, MEMORY[0x29EDC6AD8]);
  sub_29E22F7C8(0, &qword_2A181FFA0, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9A40]);
  sub_29E22F82C();
  sub_29E2C43F4();
  sub_29E2BD0E4();
  sub_29E2BD0D4();

  return (*(v10 + 8))(v15, v16);
}

uint64_t sub_29E22DD78(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v23 = a1;
  v22 = sub_29E2BD0F4();
  MEMORY[0x2A1C7C4A8](v22);
  v21 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29E2BF6C4();
  v3 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BD0A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BD0C4();
  v10 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v18 - v14;
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67B8] presentation:*MEMORY[0x29EDC6768]];
  (*(v7 + 16))(v9, v19, v6);
  sub_29E2BD0B4();
  v19 = sub_29E2BD104();
  sub_29E2BF414();
  sub_29E2BF694();
  (*(v3 + 8))(v5, v20);
  sub_29E2BE8F4();

  sub_29E22E574();
  [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  v16 = v18;
  (*(v10 + 16))(v12, v15, v18);
  v24 = MEMORY[0x29EDCA190];
  sub_29E22F780(&qword_2A181FF98, MEMORY[0x29EDC6AD8]);
  sub_29E22F7C8(0, &qword_2A181FFA0, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9A40]);
  sub_29E22F82C();
  sub_29E2C43F4();
  sub_29E2BD0E4();
  sub_29E2BD0D4();

  return (*(v10 + 8))(v15, v16);
}

uint64_t sub_29E22E19C(void *a1, __int16 a2)
{
  v3 = HIBYTE(a2);
  sub_29E22F688(0, &qword_2A181FF90, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v11[-v8];
  sub_29DE966D4(a1, a1[3]);
  sub_29E22F634();
  sub_29E2C4AA4();
  v11[15] = 0;
  sub_29E2C4894();
  if (!v2)
  {
    v11[14] = v3;
    v11[13] = 1;
    sub_29DF6BF50();
    sub_29E2C4884();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_29E22E328()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_29E22E368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x800000029E3082C0 == a2 || (sub_29E2C4914() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029E2F3A60 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_29E2C4914();

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

uint64_t sub_29E22E454(uint64_t a1)
{
  v2 = sub_29E22F634();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E22E490(uint64_t a1)
{
  v2 = sub_29E22F634();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E22E4CC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29E22F468(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result);
  }

  return result;
}

uint64_t sub_29E22E528(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 3)
  {
    if (v4 == 3)
    {
      return 1;
    }
  }

  else if (v4 != 3 && v3 == v4)
  {
    return 1;
  }

  return 0;
}

id sub_29E22E574()
{
  v1 = sub_29E2BF6C4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A1A5F1A8;
  v6 = *(v0 + qword_2A1A5F1A8);
  if (v6)
  {
    v7 = *(v0 + qword_2A1A5F1A8);
  }

  else
  {
    v8 = v0;
    sub_29E2BF414();
    sub_29E2BF694();
    (*(v2 + 8))(v4, v1);
    v9 = sub_29E2BE8F4();

    v10 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v11 = sub_29E2C33A4();
    v12 = [v10 initWithIdentifier:v11 healthStore:v9];

    v13 = *(v8 + v5);
    *(v8 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

uint64_t sub_29E22E72C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E2BF6C4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_2A1A5F1A0;
  *(v1 + qword_2A1A5F1A0) = 2;
  *(v1 + qword_2A1A5F1A8) = 0;
  v12 = sub_29E2BF6A4();
  v14 = v13;
  sub_29E2BC2B4();
  swift_allocObject();
  v15 = sub_29E2BC2A4();
  sub_29E2C04B4();
  *(v2 + v11) = sub_29E0DFDD0(v12, v14, v15, v10);
  v16 = HKLogMenstrualCyclesCategory();
  sub_29E2BF694();
  v17 = sub_29E2BE8F4();

  v18 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v16 healthDataSource:v17];

  *(v2 + qword_2A1A5F1B0) = v18;
  (*(v5 + 16))(v7, a1, v4);
  v19 = sub_29E2BF424();
  (*(v5 + 8))(a1, v4);
  return v19;
}

uint64_t sub_29E22E94C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = [objc_allocWithZone(MEMORY[0x29EDC33F0]) init];
  if (*(v2 + qword_2A1A5F1A0) == 2)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0x9010203u >> ((*(v2 + qword_2A1A5F1A0) >> 5) & 0xF8);
  }

  type metadata accessor for RoomInteractionEvent();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD00000000000002ALL;
  *(v7 + 24) = 0x800000029E2EEF80;
  *(v7 + 32) = 8;
  *(v7 + 33) = v6;
  *(v7 + 34) = 2;
  *(v7 + 40) = v5;
  *(v7 + 48) = a1 & 1;
  *(v7 + 56) = 0;
  v8 = *(v2 + qword_2A1A5F1B0);
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v14[4] = sub_29E22F8B4;
  v14[5] = v9;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29DFE9648;
  v14[3] = &unk_2A24C0080;
  v10 = _Block_copy(v14);
  v11 = v5;
  v12 = v8;

  [v12 submitEvent:v7 completion:v10];
  _Block_release(v10);
}

void sub_29E22EB34(char a1, void *a2)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E2C04B4();
    v8 = a2;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_29E2C4AE4();
      v15 = sub_29DFAA104(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29DEF964C(0, &qword_2A1A5DFD0, &qword_2A1A61C90);
      v17 = sub_29E2C3434();
      v19 = sub_29DFAA104(v17, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Error submitting analytics event: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v12, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_29E22ED64()
{
  v1 = sub_29E2BF6C4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_2A1A5F1A0);
  v6 = 2;
  if (*(v0 + qword_2A1A5F1A0) != 2)
  {
    v7 = v5 >> 8;
    if (v5 >> 8 != 3)
    {
      sub_29E2BF414();
      v12 = sub_29E2BF6B4();
      (*(v2 + 8))(v4, v1);
      sub_29E22D1D4(v7, v12, sub_29E22DD78);
      goto LABEL_8;
    }

    if (*(v0 + qword_2A1A5F1A0))
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

  sub_29E2BF414();
  v8 = sub_29E2BF6B4();
  (*(v2 + 8))(v4, v1);
  v9 = type metadata accessor for LearnMoreViewController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController____lazy_storage___doneBarButtonItem] = 0;
  v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_presentedModally] = 1;
  v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreType] = v6;
  v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin23LearnMoreViewController_learnMoreSource] = 2;
  v20.receiver = v10;
  v20.super_class = v9;
  v11 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  sub_29DF91550();
  v12 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];

  [v8 presentViewController:v12 animated:1 completion:0];
LABEL_8:

  v13 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v15 = v14;
  sub_29E22E94C(0);
  sub_29E22F41C();
  v16 = sub_29E2C3B64();
  v19[0] = v13;
  v19[1] = v15;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  sub_29E2C33A4();

  v17 = objc_allocWithZone(sub_29E2BDF64());
  v18 = sub_29E2BDF54();
  [v16 addOperation_];
}

void sub_29E22F060()
{
  v1 = *(v0 + qword_2A1A5F1A8);
}

uint64_t sub_29E22F0A0()
{
  v0 = sub_29E2BF434();
  v1 = *(v0 + qword_2A1A5F1B0);

  v2 = *(v0 + qword_2A1A5F1A8);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for OvulationConfirmationHelpTileActionHandler.Model(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for OvulationConfirmationHelpTileActionHandler.Model(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

void sub_29E22F284()
{
  type metadata accessor for OvulationConfirmationHelpTileActionHandler();
  sub_29E2BF864();
  sub_29E22E94C(1);
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E22F41C();
  v0 = sub_29E2C3B64();
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6574616470752ELL, 0xE700000000000000);
  sub_29E2C33A4();

  v1 = objc_allocWithZone(sub_29E2BDF64());
  v2 = sub_29E2BDF54();
  [v0 addOperation_];
}

unint64_t sub_29E22F41C()
{
  result = qword_2A1819A60;
  if (!qword_2A1819A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1819A60);
  }

  return result;
}

uint64_t sub_29E22F468(void *a1)
{
  sub_29E22F688(0, &qword_2A181FF80, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11[-v6];
  sub_29DE966D4(a1, a1[3]);
  sub_29E22F634();
  sub_29E2C4A94();
  if (v1)
  {
    return sub_29DE93B3C(a1);
  }

  v11[15] = 0;
  v8 = sub_29E2C4834();
  v11[13] = 1;
  sub_29DF6BE94();
  sub_29E2C4824();
  (*(v5 + 8))(v7, v4);
  v9 = v11[14];
  sub_29DE93B3C(a1);
  return v8 & 1 | (v9 << 8);
}

unint64_t sub_29E22F634()
{
  result = qword_2A181FF88;
  if (!qword_2A181FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FF88);
  }

  return result;
}

void sub_29E22F688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E22F634();
    v7 = a3(a1, &type metadata for OvulationConfirmationHelpTileActionHandler.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E22F6EC(uint64_t a1, uint64_t a2)
{
  sub_29E22F7C8(0, &qword_2A181A1F0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E22F780(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E22F7C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E22F82C()
{
  result = qword_2A181FFA8;
  if (!qword_2A181FFA8)
  {
    sub_29E22F7C8(255, &qword_2A181FFA0, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFA8);
  }

  return result;
}

uint64_t sub_29E22F8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E22F8E8()
{
  result = qword_2A181FFB0;
  if (!qword_2A181FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFB0);
  }

  return result;
}

unint64_t sub_29E22F940()
{
  result = qword_2A181FFB8;
  if (!qword_2A181FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFB8);
  }

  return result;
}

unint64_t sub_29E22F998()
{
  result = qword_2A181FFC0;
  if (!qword_2A181FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFC0);
  }

  return result;
}

uint64_t type metadata accessor for CycleFactorsReminderUserData()
{
  result = qword_2A1A60B90;
  if (!qword_2A1A60B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E22FA68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_29DF298C4();
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E22FFBC(0, &qword_2A181FFC8, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for CycleFactorsReminderUserData();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE966D4(a1, a1[3]);
  sub_29E22FF04();
  sub_29E2C4A94();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_29E001794(&qword_2A181A818);
    sub_29E2C4844();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_29E22FF58(v13, v18);
  }

  return sub_29DE93B3C(a1);
}

uint64_t sub_29E22FD00(uint64_t a1)
{
  v2 = sub_29E22FF04();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E22FD3C(uint64_t a1)
{
  v2 = sub_29E22FF04();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E22FD90(void *a1)
{
  sub_29E22FFBC(0, &qword_2A181FFD8, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29DE966D4(a1, a1[3]);
  sub_29E22FF04();
  sub_29E2C4AA4();
  sub_29DF298C4();
  sub_29E001794(&unk_2A1A5E398);
  sub_29E2C48A4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_29E22FF04()
{
  result = qword_2A181FFD0;
  if (!qword_2A181FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFD0);
  }

  return result;
}

uint64_t sub_29E22FF58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CycleFactorsReminderUserData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E22FFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E22FF04();
    v7 = a3(a1, &type metadata for CycleFactorsReminderUserData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E230034()
{
  result = qword_2A181FFE0;
  if (!qword_2A181FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFE0);
  }

  return result;
}

unint64_t sub_29E23008C()
{
  result = qword_2A181FFE8;
  if (!qword_2A181FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFE8);
  }

  return result;
}

unint64_t sub_29E2300E4()
{
  result = qword_2A181FFF0;
  if (!qword_2A181FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181FFF0);
  }

  return result;
}

char *sub_29E230138(void *a1)
{
  v2 = v1;
  v32 = a1;
  v30 = sub_29E2BCBB4();
  v3 = *(v30 - 8);
  MEMORY[0x2A1C7C4A8](v30);
  v4 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v31 = sub_29E2C31A4();
  v5 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CycleDay();
  v9 = v8 - 8;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear] = 0;
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel;
  sub_29DE9408C(0, &qword_2A1820010);
  *&v1[v12] = sub_29E230AF4();
  (*(v3 + 56))(&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cachedStartOfCurrentYear], 1, 1, v30);
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_previousYearsFormatter] = 0;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_currentYearFormatter] = 0;
  v13 = v32;
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_calendarCache] = v32;
  v14 = v13;
  v15 = [v14 currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C3144();
  v16 = v31;
  (*(v5 + 16))(v11, v7, v31);
  v17 = [objc_opt_self() unfetchedDayViewModel];
  (*(v5 + 8))(v7, v16);
  *&v11[*(v9 + 28)] = v17;
  sub_29E00C0F0(v11, v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cycleDay);
  v18 = type metadata accessor for InteractiveTimelineDateIndicator();
  v33.receiver = v2;
  v33.super_class = v18;
  v19 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel];
  v21 = v19;
  [v21 addSubview_];
  sub_29E23059C();
  sub_29E2308AC();
  v22 = [objc_opt_self() defaultCenter];
  [v22 addObserver:v21 selector:sel_significantTimeChange name:*MEMORY[0x29EDC8028] object:0];

  sub_29E231B74(0, &qword_2A1817FF0, sub_29DEA6B18, MEMORY[0x29EDC9E90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_29E2CD7A0;
  v24 = sub_29E2C0B54();
  v25 = MEMORY[0x29EDC7870];
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  v26 = sub_29E2C08C4();
  v27 = MEMORY[0x29EDC7810];
  *(v23 + 48) = v26;
  *(v23 + 56) = v27;
  MEMORY[0x29ED807F0](v23, sel_respondToTraitChanges);

  swift_unknownObjectRelease();

  return v21;
}

void sub_29E23059C()
{
  v1 = v0;
  sub_29DE99B54();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CE070;
  v3 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  v8 = 25.0;
  if (v7 == 2)
  {
    v8 = 20.0;
  }

  v9 = [v4 constraintEqualToAnchor:v5 constant:v8];

  *(v2 + 32) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v3 bottomAnchor];
  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 2)
  {
    v14 = 12.0;
  }

  else
  {
    v14 = 8.0;
  }

  v15 = objc_opt_self();
  v16 = [v10 constraintEqualToAnchor:v11 constant:v14];

  *(v2 + 40) = v16;
  v17 = [v3 leadingAnchor];
  v18 = [v1 layoutMarginsGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v2 + 48) = v20;
  v21 = [v1 layoutMarginsGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v3 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v2 + 56) = v24;
  sub_29DE9408C(0, &qword_2A1A61A10);
  v25 = sub_29E2C3604();

  [v15 activateConstraints_];
}

void sub_29E2308AC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = sub_29E2C3E14();
  objc_allocWithZone(type metadata accessor for RelativeWeekdayWithMonthAndDayFormatter());
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = sub_29DFAB334((v4 & 1) == 0);
  v7 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_currentYearFormatter];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_currentYearFormatter] = v6;

  v8 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  [v8 setDateStyle_];
  [v8 setTimeStyle_];

  v9 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_previousYearsFormatter];
  *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_previousYearsFormatter] = v8;
  v10 = v8;

  [v10 setFormattingContext_];
}

id sub_29E230AF4()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setAdjustsFontSizeToFitWidth_];
  [v0 setNumberOfLines_];
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A67E58;
  v7 = unk_2A1A67E60;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x656E696C656D6954, 0xED0000657461442ELL);
  v2 = sub_29E2C33A4();

  [v0 setAccessibilityIdentifier_];

  LODWORD(v3) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v3];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v4 = sub_29E2C3FD4();
  [v0 setFont_];

  return v0;
}

uint64_t sub_29E230D00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2BCBB4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCEA4();
  v25 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E231B74(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cachedStartOfCurrentYear;
  swift_beginAccess();
  sub_29DEAA194(v2 + v17, v16);
  if ((*(v5 + 48))(v16, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v16, v4);
  }

  sub_29DE93920(v16);
  sub_29E2BCE44();
  v18 = sub_29E2BCD84();
  v24 = v8;
  v19 = a1;
  v20 = v18;
  sub_29E2BCBA4();
  v21 = sub_29E2BCB04();
  (*(v5 + 8))(v7, v4);
  v22 = [v20 hk:v21 startOfYearForDate:0 addingYears:?];

  sub_29E2BCB44();
  (*(v25 + 8))(v10, v24);
  (*(v5 + 16))(v14, v19, v4);
  (*(v5 + 56))(v14, 0, 1, v4);
  swift_beginAccess();
  sub_29E027B70(v14, v2 + v17);
  return swift_endAccess();
}

uint64_t sub_29E231050()
{
  v1 = sub_29E2C2B34();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C2B54();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A626C0);
  v9 = sub_29E2C3CF4();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_29E231B54;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DF49BB8;
  aBlock[3] = &unk_2A24C01F0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_29E2C2B44();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29E1689E8(&qword_2A1A626F0, MEMORY[0x29EDCA248]);
  sub_29E231B74(0, &qword_2A1A626E0, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29DF4B408();
  sub_29E2C43F4();
  MEMORY[0x29ED804D0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_29E231338(uint64_t a1)
{
  sub_29E231B74(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_29E2BCBB4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cachedStartOfCurrentYear;
  swift_beginAccess();
  sub_29E027B70(v4, a1 + v6);
  swift_endAccess();
  return sub_29E231494();
}

uint64_t sub_29E231494()
{
  v1 = v0;
  v2 = sub_29E2BCEA4();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C31A4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v28 - v14;
  v16 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_cycleDay;
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v16, v5);
  v17 = [*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_calendarCache) currentCalendar];
  sub_29E2BCDC4();

  sub_29E2C3194();
  (*(v29 + 8))(v4, v30);
  (*(v6 + 8))(v8, v5);
  sub_29E230D00(v13);
  sub_29E1689E8(&qword_2A1A616E0, MEMORY[0x29EDB9BC8]);
  LOBYTE(v8) = sub_29E2C32A4();
  v18 = *(v10 + 8);
  result = v18(v13, v9);
  if ((v8 & 1) != 0 || *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear) == 1)
  {
    v20 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_currentYearFormatter);
    if (v20)
    {
      v21 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel);
      v22 = v20;
      v23 = sub_29E2BCB04();
      v24 = [v22 stringFromDate_];

LABEL_5:
      [v21 setText_];

      return v18(v15, v9);
    }

    __break(1u);
  }

  else
  {
    v25 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_previousYearsFormatter);
    if (v25)
    {
      v21 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_dateLabel);
      v26 = v25;
      v27 = sub_29E2BCB04();
      v24 = [v26 stringFromDate_];

      if (!v24)
      {
        _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
        v24 = sub_29E2C33A4();
      }

      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id sub_29E23191C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTimelineDateIndicator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InteractiveTimelineDateIndicator()
{
  result = qword_2A1A61AD0;
  if (!qword_2A1A61AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E231A34()
{
  sub_29E231B74(319, &unk_2A1A62850, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CycleDay();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_29E231B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E231B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29E231BD8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  v12[4] = a1;
  v12[5] = a6;
  v12[2] = a2;
  v12[3] = a7;
  sub_29DE8EE78(a3, (v12 + 6));
  return v12;
}

void sub_29E231C44(void *a1, void *a2)
{
  v4 = sub_29E2C00B4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2C0514();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v12 = a1;
      sub_29E232008(v12);
    }

    else
    {
      swift_getObjectType();
      sub_29E2BFEB4();

      v13 = a2;
      v14 = sub_29E2C0504();
      v15 = sub_29E2C3A14();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v31 = v15;
        v17 = v16;
        v32 = swift_slowAlloc();
        v34 = v32;
        *v17 = 136315394;
        sub_29E2C00A4();
        sub_29E232E40(&qword_2A1820018, 255, MEMORY[0x29EDC35C8]);
        v29 = v14;
        v18 = sub_29E2C48D4();
        v30 = v9;
        v20 = v19;
        (*(v5 + 8))(v7, v4);
        v21 = sub_29DFAA104(v18, v20, &v34);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        v33 = a2;
        v22 = a2;
        sub_29DF57668();
        v23 = sub_29E2C3424();
        v25 = sub_29DFAA104(v23, v24, &v34);

        *(v17 + 14) = v25;
        v26 = v29;
        _os_log_impl(&dword_29DE74000, v29, v31, "[%s] Error observing cycle analysis: %s", v17, 0x16u);
        v27 = v32;
        swift_arrayDestroy();
        MEMORY[0x29ED82140](v27, -1, -1);
        MEMORY[0x29ED82140](v17, -1, -1);

        (*(v30 + 8))(v11, v8);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }
    }
  }
}

uint64_t sub_29E232008(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_29E2C00B4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E1C032C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29E2C0514();
  v12 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v15 = a1;
  v16 = sub_29E2C0504();
  v17 = sub_29E2C3A34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v7;
    v21 = v20;
    v42 = v20;
    *v19 = 136315394;
    v22 = sub_29E2C4AE4();
    v38 = v4;
    v24 = sub_29DFAA104(v22, v23, &v42);
    v37 = v9;
    v25 = v24;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v41 = v15;
    sub_29DEBAF28();
    v26 = v15;
    v27 = sub_29E2C3464();
    v29 = sub_29DFAA104(v27, v28, &v42);

    *(v19 + 14) = v29;
    v9 = v37;
    _os_log_impl(&dword_29DE74000, v16, v17, "[%s] Received analysis update: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v21, -1, -1);
    v30 = v19;
    v10 = v36;
    MEMORY[0x29ED82140](v30, -1, -1);
  }

  (*(v12 + 8))(v14, v39);
  sub_29E2C00A4();
  sub_29DEBAF28();
  sub_29E232E40(&qword_2A1A5E278, 255, sub_29DEBAF28);
  v31 = v15;
  v32 = v40;
  sub_29E2C00E4();
  swift_getObjectType();
  v42 = v2;
  sub_29E232E40(qword_2A1A60DC8, v33, type metadata accessor for CycleAnalysisInputSignal);
  sub_29E2C0004();
  return (*(v10 + 8))(v32, v9);
}

uint64_t sub_29E232420()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%s] Stopping observation", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = v1[9];
  v14 = v1[10];
  sub_29DE966D4(v1 + 6, v13);
  return (*(v14 + 16))(v13, v14);
}

uint64_t sub_29E232620()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_29DE93B3C(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_29E23271C(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E232E40(qword_2A1A60DC8, a2, type metadata accessor for CycleAnalysisInputSignal);

  return MEMORY[0x2A1C64680](a1, v3);
}

id sub_29E232788(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if (*a1)
  {
    [*(a2 + 16) stopQuery_];
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = objc_allocWithZone(MEMORY[0x29EDC3368]);
  v14[4] = sub_29E232EFC;
  v14[5] = v9;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29DF4B010;
  v14[3] = &unk_2A24C0300;
  v11 = _Block_copy(v14);

  v12 = [v10 initWithUpdateHandler_];
  _Block_release(v11);

  *a1 = v12;
  return [*(a2 + 16) executeQuery_];
}

uint64_t sub_29E2328CC()
{

  return swift_deallocClassInstance();
}

void sub_29E232940()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_29E232EDC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_29E23299C()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_29E232E88((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void *sub_29E232A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Observer = type metadata accessor for CycleAnalysisInputSignal.QueryObserver();
  v13 = swift_allocObject();
  sub_29E232B54();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  v18 = Observer;
  v19 = &off_2A24C0298;
  *&v17 = v13;
  v15 = swift_allocObject();
  v15[4] = a1;
  v15[5] = a7;
  v15[2] = a2;
  v15[3] = a3;
  sub_29DE8EE78(&v17, (v15 + 6));
  return v15;
}

void sub_29E232B54()
{
  if (!qword_2A1A5E068)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_29E2C45F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E068);
    }
  }
}

uint64_t sub_29E232BB4()
{
  v1 = v0;
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[9];
  v7 = v0[10];
  sub_29DE966D4(v0 + 6, v6);
  (*(v7 + 16))(v6, v7);
  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A34();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Starting analysis observation", v10, 0xCu);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v15 = v1[9];
  v16 = v1[10];
  sub_29DE966D4(v1 + 6, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *(v16 + 8);

  v18(sub_29E232E38, v17, v15, v16);
}

uint64_t sub_29E232E40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29E232E88(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    [*(v1 + 16) stopQuery_];

    *a1 = 0;
  }
}

uint64_t sub_29E232F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E232F44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v13 + 16) && (v0 = sub_29E184478(2), (v1 & 1) != 0))
  {
    v2 = *(*(v13 + 56) + v0);

    if (v2)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v13 + 16) && (v3 = sub_29E184478(3), (v4 & 1) != 0))
  {
    v5 = *(*(v13 + 56) + v3);

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v13 + 16) && (v6 = sub_29E184478(0), (v7 & 1) != 0))
  {
    v8 = *(*(v13 + 56) + v6);

    if (v8)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v13 + 16) && (v10 = sub_29E184478(1), (v11 & 1) != 0))
  {
    v9 = *(*(v13 + 56) + v10);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_29E233164(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  if (*(v6 + 16) && (v2 = sub_29E184478(a1), (v3 & 1) != 0))
  {
    v4 = *(*(v6 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_29E23320C(char a1, uint64_t a2)
{
  v3 = v2;
  v19 = *v2;
  sub_29DFDA4A4();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = sub_29E2C1204();
  v11 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_29E0095CC(a1, a2, isUniquelyReferenced_nonNull_native);
  *v11 = v20;

  v9(v21, 0);

  v13 = sub_29E2C3734();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_29E2C3714();

  v14 = sub_29E2C3704();
  v15 = swift_allocObject();
  v16 = MEMORY[0x29EDCA390];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v3;
  *(v15 + 40) = a1;
  v17 = v19;
  *(v15 + 48) = a2;
  *(v15 + 56) = v17;
  sub_29E13C63C(0, 0, v8, &unk_29E2E7A10, v15);
}

BOOL sub_29E233420()
{
  v0 = 0;
  do
  {
    v1 = v0;
    if (v0 == 32)
    {
      break;
    }

    v2 = *(&unk_2A24AF910 + v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    if (!*(v7 + 16) || (v3 = sub_29E184478(v2), (v4 & 1) == 0))
    {

      return v1 == 32;
    }

    v5 = *(*(v7 + 56) + v3);

    v0 = v1 + 8;
  }

  while ((v5 & 1) != 0);
  return v1 == 32;
}

void sub_29E233514(void *a1)
{
  if (a1)
  {
    v25 = MEMORY[0x29EDCA190];
    v1 = a1;
    sub_29E1814C4(0, 4, 0);
    v2 = v25;
    v3 = [v1 deviationDetectionEnabledForType_];
    v5 = *(v25 + 16);
    v4 = *(v25 + 24);
    if (v5 >= v4 >> 1)
    {
      v21 = v3;
      sub_29E1814C4((v4 > 1), v5 + 1, 1);
      v3 = v21;
      v2 = v25;
    }

    *(v2 + 16) = v5 + 1;
    v6 = v2 + 16 * v5;
    *(v6 + 32) = 2;
    *(v6 + 40) = v3;
    v7 = [v1 deviationDetectionEnabledForType_];
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v9 >= v8 >> 1)
    {
      v22 = v7;
      sub_29E1814C4((v8 > 1), v9 + 1, 1);
      v7 = v22;
      v2 = v25;
    }

    *(v2 + 16) = v9 + 1;
    v10 = v2 + 16 * v9;
    *(v10 + 32) = 3;
    *(v10 + 40) = v7;
    v11 = [v1 deviationDetectionEnabledForType_];
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      v23 = v11;
      sub_29E1814C4((v12 > 1), v13 + 1, 1);
      v11 = v23;
    }

    v14 = v25;
    *(v25 + 16) = v13 + 1;
    v15 = v14 + 16 * v13;
    *(v15 + 32) = 0;
    *(v15 + 40) = v11;
    v16 = [v1 deviationDetectionEnabledForType_];
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v18 >= v17 >> 1)
    {
      v24 = v16;
      sub_29E1814C4((v17 > 1), v18 + 1, 1);
      v16 = v24;
      v14 = v25;
    }

    *(v14 + 16) = v18 + 1;
    v19 = v14 + 16 * v18;
    *(v19 + 32) = 1;
    *(v19 + 40) = v16;
    sub_29E234118(0, &qword_2A181A8B0, MEMORY[0x29EDC9E70]);
    v25 = sub_29E2C47B4();
    sub_29E23418C(v14, 1, &v25);

    v20 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v20;

    sub_29E2C1224();
  }
}

void sub_29E2337B4(void *a1)
{
  sub_29E233514(a1);
  v3 = *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel_featureSettings);
  *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel_featureSettings) = a1;
}

uint64_t sub_29E2337FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  return v1;
}

uint64_t sub_29E233870@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  *a1 = v3;
  return result;
}

uint64_t sub_29E2338F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2BF404();

  return sub_29E2C1224();
}

uint64_t sub_29E23396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 112) = a5;
  *(v7 + 24) = a4;
  v8 = sub_29E2C0514();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  sub_29E2C3714();
  *(v7 + 72) = sub_29E2C3704();
  v10 = sub_29E2C36A4();
  *(v7 + 80) = v10;
  *(v7 + 88) = v9;

  return MEMORY[0x2A1C73D48](sub_29E233A68, v10, v9);
}

uint64_t sub_29E233A68()
{
  swift_getObjectType();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_29E233B18;
  v2 = *(v0 + 32);
  v3 = *(v0 + 112);

  return sub_29E2918EC(v3, v2);
}

uint64_t sub_29E233B18()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_29E233C54;
  }

  else
  {
    v5 = sub_29E003254;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29E233C54()
{
  v24 = v0;
  v1 = *(v0 + 104);

  sub_29E2C04B4();
  v2 = v1;
  v3 = sub_29E2C0504();
  v4 = sub_29E2C3A14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 56);
    v22 = *(v0 + 64);
    v7 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 16) = v5;
    v13 = v5;
    sub_29DE96670();
    v14 = sub_29E2C3424();
    v16 = sub_29DFAA104(v14, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_29DE74000, v3, v4, "[%{public}s] Error updated deviation setting: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_29E233E78()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28DeviationsFeatureStatusModel__deviationDetectionEnabledByType;
  sub_29E0E67E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_29E233EE0()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsSettingVisibilityRequirements;
  sub_29DF687B4();
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__meetsUsageRequirements, v3);
  v4(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin18FeatureStatusModel__isOnboardingRecordPresent, v3);

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin28DeviationsFeatureStatusModel__deviationDetectionEnabledByType;
  sub_29E0E67E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviationsFeatureStatusModel()
{
  result = qword_2A1820028;
  if (!qword_2A1820028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E234088()
{
  sub_29E0E67E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29E234118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKMCDeviationType(255);
    v7 = v6;
    v8 = sub_29E0E683C();
    v9 = a3(a1, v7, MEMORY[0x29EDC9A98], v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E23418C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;
  result = sub_29E184478(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_29E005E0C(v14, v5 & 1);
    result = sub_29E184478(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for HKMCDeviationType(0);
    result = sub_29E2C4964();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v7;
    *(v17[7] + result) = v8;
    v19 = v17[2];
    v13 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v20;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v18 = result;
  sub_29E00A73C();
  result = v18;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v17[7] + result) = *(v17[7] + result);
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v21 = *a3;
      result = sub_29E184478(v6);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v13 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v22;
      if (v21[3] < v25)
      {
        sub_29E005E0C(v25, 1);
        result = sub_29E184478(v6);
        if ((v7 & 1) != (v26 & 1))
        {
          goto LABEL_5;
        }
      }

      v27 = *a3;
      if (v7)
      {
        *(v27[7] + result) = *(v27[7] + result);
      }

      else
      {
        v27[(result >> 6) + 8] |= 1 << result;
        *(v27[6] + 8 * result) = v6;
        *(v27[7] + result) = v8;
        v28 = v27[2];
        v13 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v27[2] = v29;
      }

      v5 += 16;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_29E2343AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29DE9657C;

  return sub_29E23396C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29E234484()
{
  sub_29E082674(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_headerItem);
}

uint64_t sub_29E2344C4()
{

  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_headerItem;

  sub_29E082674(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoricalAnalysisHeaderDataSource()
{
  result = qword_2A1820040;
  if (!qword_2A1820040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E2345C0()
{
  result = type metadata accessor for HeaderWithActionButtonItem();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29E2346C0(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 sender])
  {
    sub_29E2C43D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_29DE9408C(0, &qword_2A1820068);
    if (swift_dynamicCast())
    {
      v7 = v15[1];
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_29E2A078C(v7);
      }

      return;
    }
  }

  else
  {
    sub_29DEC0CB4(v18);
  }

  sub_29E2C04B4();
  v8 = sub_29E2C0504();
  v9 = sub_29E2C3A14();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v18[0] = v11;
    *v10 = 136315138;
    v12 = sub_29E2C4AE4();
    v14 = sub_29DFAA104(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29DE74000, v8, v9, "[%s] Trying to present PDF viewer without a parent view to anchor", v10, 0xCu);
    sub_29DE93B3C(v11);
    MEMORY[0x29ED82140](v11, -1, -1);
    MEMORY[0x29ED82140](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_29E2349C4()
{
  type metadata accessor for HeaderWithActionButtonCollectionViewCell();
  sub_29E2356C8(&qword_2A1820058, type metadata accessor for HeaderWithActionButtonCollectionViewCell);
  return sub_29E2C3B74();
}

void *sub_29E234A7C(uint64_t a1, char a2)
{
  v5 = sub_29E2C4274();
  v37 = *(v5 - 8);
  *&v38 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v8 = sub_29E2C3384();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for HeaderWithActionButtonItem();
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v2;
  *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_navigationHandler) = a1;
  if (a2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  v35 = 0x800000029E308690;

  sub_29E2C3314();
  (*(v9 + 16))(v11, v14, v8);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v9 + 8))(v14, v8);
  v20 = v36;
  sub_29DFE1438();
  sub_29DE9408C(0, &qword_2A181A5D8);
  v21 = sub_29E2C4114();
  v22 = v35;
  *v17 = 0xD00000000000001CLL;
  *(v17 + 1) = v22;
  v24 = v37;
  v23 = v38;
  (*(v37 + 16))(&v17[*(v15 + 28)], v20, v38);
  *&v17[*(v15 + 32)] = v21;
  sub_29E2C0844();
  sub_29E2BF404();
  sub_29E2C0864();
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v25 = xmmword_2A1A67E58;

  v40 = v25;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0x6C63794372756F59, 0xEA00000000007365);
  v27 = *(&v40 + 1);
  v26 = v40;
  (*(v24 + 8))(v20, v23);
  *(v17 + 1) = __PAIR128__(v27, v26);
  v28 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_headerItem;
  v29 = v39;
  sub_29E0824CC(v17, v39 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_headerItem);
  sub_29DEA7DD8(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
  sub_29E2BEBB4();
  v30 = swift_allocObject();
  v38 = xmmword_29E2CAB20;
  *(v30 + 16) = xmmword_29E2CAB20;
  sub_29DEA7DD8(0, &unk_2A181B3C0, sub_29DEA7E2C);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  *(v31 + 56) = v15;
  *(v31 + 64) = sub_29E2356C8(&qword_2A1820060, type metadata accessor for HeaderWithActionButtonItem);
  v32 = sub_29DEBB7E8((v31 + 32));
  sub_29E235710(v29 + v28, v32);
  sub_29E2BEBA4();
  return sub_29E0018F0(v30, 1);
}

void *sub_29E235058()
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

uint64_t sub_29E235260(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_29E0D9A40();
  v6 = v5;
  v7 = *(v5 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v5).n128_u64[0];
  v10 = &v29[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 statistics];
  [v11 numberOfCycles];

  sub_29DE9408C(0, &qword_2A181A5D8);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v4;
  v14 = sub_29E2C4114();
  v15 = (v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34HistoricalAnalysisHeaderDataSource_headerItem);
  v16 = type metadata accessor for HeaderWithActionButtonItem();
  v17 = *(v16 + 32);
  v18 = *(v15 + v17);
  *(v15 + v17) = v14;

  sub_29E2BE684();
  v19 = v15[1];
  v29[0] = *v15;
  v29[1] = v19;
  sub_29E2C08E4();
  LOBYTE(v14) = v20;
  (*(v7 + 8))(v10, v6);
  if ((v14 & 1) == 0)
  {
    sub_29E2BE5F4();
    sub_29DF80C94(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29E2CAB20;
    v22 = v15[1];
    *(v21 + 32) = *v15;
    *(v21 + 40) = v22;
    sub_29E2BF404();
    v23 = sub_29E2BED14();
    sub_29E2C0964();

    v23(v29, 0);
  }

  sub_29DEA7DD8(0, &unk_2A1819BC0, MEMORY[0x29EDC2240]);
  sub_29E2BEBB4();
  v24 = swift_allocObject();
  v28 = xmmword_29E2CAB20;
  *(v24 + 16) = xmmword_29E2CAB20;
  sub_29DEA7DD8(0, &unk_2A181B3C0, sub_29DEA7E2C);
  v25 = swift_allocObject();
  *(v25 + 16) = v28;
  *(v25 + 56) = v16;
  *(v25 + 64) = sub_29E2356C8(&qword_2A1820060, type metadata accessor for HeaderWithActionButtonItem);
  v26 = sub_29DEBB7E8((v25 + 32));
  sub_29E235710(v15, v26);
  sub_29E2BEBA4();
  sub_29E2BE5F4();
  sub_29E2BEC74();
}

uint64_t sub_29E2356C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E235710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderWithActionButtonItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E235774(uint64_t a1)
{
  v29 = a1;
  v31 = sub_29E2BD624();
  v1 = *(v31 - 8);
  v30 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E237924(0, &unk_2A1A5E3F0, MEMORY[0x29EDB8AF0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v28 - v6;
  sub_29DEBAF74();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2379A8();
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29E237924(0, &qword_2A1A5E3C0, MEMORY[0x29EDB8B00]);
  sub_29E2C11E4();
  swift_endAccess();
  sub_29DEBAFFC();
  sub_29E2C1284();
  (*(v5 + 8))(v7, v4);
  sub_29E237BA8(&qword_2A1A5EB70, sub_29DEBAF74);
  v17 = v29;
  v18 = sub_29E2C1244();
  (*(v10 + 8))(v12, v9);
  v35 = v18;
  v19 = v28;
  v20 = v17;
  v21 = v31;
  (*(v1 + 16))(v28, v20, v31);
  v22 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v23 = (v30 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v1 + 32))(v24 + v22, v19, v21);
  *(v24 + v23) = v34;
  sub_29E09E3C4();
  sub_29DEB1BC4(0, &qword_2A1A62680);
  sub_29E237BA8(&unk_2A1A5E630, sub_29E09E3C4);
  sub_29E2C12A4();

  sub_29E237BA8(&unk_2A1A5EAC8, sub_29E2379A8);
  v25 = v32;
  v26 = sub_29E2C1274();
  (*(v33 + 8))(v16, v25);
  return v26;
}

uint64_t sub_29E235C58@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v65 = a3;
  sub_29E237B10(0);
  v70 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v78 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_29E2BD564();
  v77 = *(v64 - 8);
  MEMORY[0x2A1C7C4A8](v64);
  v76 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29E2BE194();
  v72 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v71 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BD594();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v75 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E2BD624();
  v63 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v73 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C0514();
  v62 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v57 - v17;
  sub_29DF1D934(0);
  v68 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v69 = &v57 - v22;
  v23 = *a1;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_29E2C4584();

  v80 = 0xD00000000000002DLL;
  v81 = 0x800000029E308730;
  v79 = a2;
  v24 = sub_29E2BD5D4();
  v25 = sub_29E2BD254();
  v27 = v26;

  MEMORY[0x29ED7FCC0](v25, v27);

  v29 = v80;
  v28 = v81;
  v66 = v80;
  v61 = v81;
  if (v23 == 1)
  {
    sub_29E2C04B4();
    v30 = sub_29E2C0504();
    v31 = sub_29E2C3A34();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v80 = v59;
      *v32 = 136446210;
      v33 = sub_29E2C4AE4();
      v35 = sub_29DFAA104(v33, v34, &v80);
      v60 = v11;
      v58 = v13;
      v36 = v35;

      *(v32 + 4) = v36;
      v11 = v60;
      _os_log_impl(&dword_29DE74000, v30, v31, "[%{public}s] Creating menstrual cycles notifications settings feed item", v32, 0xCu);
      v37 = v59;
      sub_29DE93B3C(v59);
      MEMORY[0x29ED82140](v37, -1, -1);
      MEMORY[0x29ED82140](v32, -1, -1);

      (*(v62 + 8))(v18, v58);
    }

    else
    {

      (*(v62 + 8))(v18, v13);
    }

    v46 = v69;
    sub_29E236518(v79, v29, v28, v69);
  }

  else
  {
    sub_29E2C04B4();
    v38 = sub_29E2C0504();
    v39 = sub_29E2C3A34();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80 = v41;
      *v40 = 136446210;
      v42 = sub_29E2C4AE4();
      v44 = v13;
      v45 = sub_29DFAA104(v42, v43, &v80);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_29DE74000, v38, v39, "[%{public}s]: Omitting menstrual cycles notifications settings feed item: not onboarded", v40, 0xCu);
      sub_29DE93B3C(v41);
      MEMORY[0x29ED82140](v41, -1, -1);
      MEMORY[0x29ED82140](v40, -1, -1);

      (*(v62 + 8))(v15, v44);
    }

    else
    {

      (*(v62 + 8))(v15, v13);
    }

    v47 = sub_29E2BD4C4();
    v46 = v69;
    (*(*(v47 - 8) + 56))(v69, 1, 1, v47);
  }

  (*(v63 + 16))(v73, v79, v11);
  sub_29E2BD5D4();
  sub_29E237B44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v48 = sub_29E2BD234();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_29E2CAB20;
  (*(v49 + 104))(v51 + v50, *MEMORY[0x29EDC3780], v48);
  v52 = v71;
  sub_29E110B7C(v71);
  sub_29E2BE184();
  (*(v72 + 8))(v52, v74);
  (*(v77 + 104))(v76, *MEMORY[0x29EDC3898], v64);
  sub_29E2BD574();
  sub_29DFA3470(v46, v67);
  sub_29E2C1164();
  v53 = sub_29E2BD644();
  v54 = MEMORY[0x29EDC38C8];
  v55 = v65;
  v65[3] = v53;
  v55[4] = v54;
  sub_29DEBB7E8(v55);
  sub_29E237BA8(&qword_2A1A5E550, sub_29E237B10);
  sub_29E2BD634();
  return sub_29E02C2DC(v46);
}

uint64_t sub_29E236518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v45 = a1;
  v63 = a4;
  v4 = sub_29E2C0514();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v54 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E2BE194();
  v52 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29E2BDED4();
  v49 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E2BD234();
  v42 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v10 = sub_29E2C3384();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v39 - v15;
  v41 = sub_29E2BE2E4();
  v40 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v58 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E2BE954();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v60 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C3314();
  v59 = *(v11 + 16);
  v59(v13, v16, v10);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  sub_29E2BCC74();
  v21 = v20;
  sub_29E2C3414();
  v57 = *(v11 + 8);
  v57(v16, v10);
  v22 = v58;
  sub_29E2BE2C4();
  sub_29E2C3314();
  v59(v13, v16, v10);
  sub_29E2BCC74();
  sub_29E2C3414();
  v57(v16, v10);
  v23 = v60;
  sub_29E2BE924();
  v24 = sub_29E2BE944();
  v26 = v25;
  type metadata accessor for MenstrualCyclesNotificationSettingsDisclosureCellViewController();
  sub_29E2BF404();
  sub_29E2BD284();
  v27 = v22;
  (*(v42 + 104))(v44, *MEMORY[0x29EDC3780], v43);
  sub_29DF1DE4C(v24, v26);
  v28 = v26;
  sub_29E2BD5D4();
  v59 = v24;
  v29 = v63;
  sub_29E2BD374();
  sub_29E2BE934();
  sub_29E2BE2D4();
  (*(v40 + 8))(v27, v41);
  sub_29E2BD364();
  sub_29DF27598(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  *(inited + 32) = sub_29E2BD6C4();
  *(inited + 40) = v31;
  sub_29DE930AC(inited);
  swift_setDeallocating();
  sub_29DECE1D4(inited + 32);
  sub_29E2BD4A4();
  v32 = v49;
  v33 = v48;
  v34 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x29EDC19A0], v50);
  sub_29E2BDEC4();
  (*(v32 + 8))(v33, v34);
  sub_29E2BD4B4();
  sub_29E2BD354();
  v35 = v51;
  sub_29E110B7C(v51);
  v36 = sub_29E2BE184();
  (*(v52 + 8))(v35, v53);
  sub_29E14ED1C(v36);

  sub_29E2BD3A4();
  sub_29DEB5BF8(v59, v28);
  (*(v61 + 8))(v23, v62);
  v37 = sub_29E2BD4C4();
  return (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
}

uint64_t sub_29E236FB8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_domain;
  v2 = sub_29E2BD594();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_context;
  v4 = sub_29E2BD624();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MenstrualCyclesNotificationsSettingsGeneratorPipeline()
{
  result = qword_2A1A610A8;
  if (!qword_2A1A610A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E2370F8()
{
  result = sub_29E2BD594();
  if (v1 <= 0x3F)
  {
    result = sub_29E2BD624();
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

uint64_t sub_29E2371E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_domain;
  v5 = sub_29E2BD594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_29E237260(uint64_t a1, uint64_t a2)
{
  v52 = *v2;
  v53 = a2;
  v4 = sub_29E2BD624();
  v41 = v4;
  v43 = *(v4 - 8);
  v5 = v43;
  v50 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v49 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEBAC20();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x2A1C7C4A8](v7);
  v51 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BD564();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29E2BE194();
  v12 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E2BD594();
  v15 = *(v45 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v45);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v5 + 16);
  v40 = a1;
  v42(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_context, a1, v4, v16);
  v38 = sub_29E2BD5D4();
  sub_29E237B44(0, &qword_2A1A61CE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v19 = sub_29E2BD234();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E2CAB20;
  (*(v20 + 104))(v22 + v21, *MEMORY[0x29EDC3780], v19);
  sub_29E110B7C(v14);
  sub_29E2BE184();
  (*(v12 + 8))(v14, v44);
  (*(v47 + 104))(v46, *MEMORY[0x29EDC3898], v48);
  sub_29E2BD574();
  v23 = v39;
  (*(v15 + 32))(v39 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_domain, v18, v45);
  v24 = v49;
  v26 = v40;
  v25 = v41;
  (v42)(v49, v40, v41);
  v27 = v43;
  v28 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v29 = (v50 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = v30 + v28;
  v32 = v25;
  (*(v27 + 32))(v31, v24, v25);
  v33 = v52;
  *(v30 + v29) = v53;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
  sub_29E021350();
  sub_29E237BA8(&qword_2A1A61EB0, sub_29E021350);

  v34 = v51;
  sub_29E2C11B4();
  sub_29E237BA8(&unk_2A1A5E470, sub_29DEBAC20);
  v35 = v54;
  v36 = sub_29E2C1274();
  (*(v27 + 8))(v26, v32);
  (*(v55 + 8))(v34, v35);
  result = v23;
  *(v23 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin53MenstrualCyclesNotificationsSettingsGeneratorPipeline_publisher) = v36;
  return result;
}

uint64_t sub_29E237884@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E2BD624() - 8);
  result = sub_29E235774(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  *a1 = result;
  return result;
}

void sub_29E237924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29DF27598(255, &qword_2A1A5E2F8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9C68]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E2379A8()
{
  if (!qword_2A1A5EAC0)
  {
    sub_29E09E3C4();
    sub_29DEB1BC4(255, &qword_2A1A62680);
    sub_29E237BA8(&unk_2A1A5E630, sub_29E09E3C4);
    v0 = sub_29E2C0F24();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5EAC0);
    }
  }
}

uint64_t sub_29E237A64@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29E2BD624() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29E235C58(a1, v6, a2);
}

void sub_29E237B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E237BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E237BF0()
{
  v1 = sub_29E2C3384();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v59 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v58 = v53 - v4;
  v62 = sub_29E2BCC84();
  v64 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v54 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_29E2BCE84();
  v6 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCBB4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = v53 - v14;
  v55 = sub_29E2BCEA4();
  v16 = *(v55 - 8);
  MEMORY[0x2A1C7C4A8](v55);
  v18 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCE44();
  v19 = [v0 startDate];
  sub_29E2BCB44();

  v63 = v0;
  v20 = [v0 endDate];
  sub_29E2BCB44();

  v21 = v57;
  (*(v6 + 104))(v8, *MEMORY[0x29EDB9CD0], v57);
  v53[3] = sub_29E2BCE24();
  (*(v6 + 8))(v8, v21);
  v22 = *(v10 + 8);
  v22(v12, v9);
  v23 = v15;
  v56 = v9;
  v57 = v10 + 8;
  v22(v15, v9);
  (*(v16 + 8))(v18, v55);
  v24 = v54;
  v25 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v26 = sub_29E2BCC44();
  v27 = *(v64 + 8);
  v64 += 8;
  v27(v24, v62);
  [v25 setLocale_];

  v28 = sub_29E2C33A4();
  [v25 setLocalizedDateFormatFromTemplate_];

  v29 = [v63 startDate];
  sub_29E2BCB44();

  v30 = sub_29E2BCB04();
  v31 = v56;
  v22(v23, v56);
  v32 = [v25 stringFromDate_];

  v55 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v34 = v33;

  v35 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v36 = sub_29E2BCC44();
  v27(v24, v62);
  [v35 setLocale_];

  v37 = sub_29E2C33A4();
  [v35 setLocalizedDateFormatFromTemplate_];

  v38 = [v63 endDate];
  sub_29E2BCB44();

  v39 = sub_29E2BCB04();
  v22(v23, v31);
  v40 = [v35 stringFromDate_];

  v41 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v43 = v42;

  v44 = v58;
  sub_29E2C3314();
  v45 = v60;
  v46 = v61;
  (*(v60 + 16))(v59, v44, v61);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v47 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v45 + 8))(v44, v46);
  sub_29DEB19DC();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_29E2CD7A0;
  v49 = MEMORY[0x29EDC99B0];
  *(v48 + 56) = MEMORY[0x29EDC99B0];
  v50 = sub_29DEB1A44();
  *(v48 + 32) = v55;
  *(v48 + 40) = v34;
  *(v48 + 96) = v49;
  *(v48 + 104) = v50;
  *(v48 + 64) = v50;
  *(v48 + 72) = v41;
  *(v48 + 80) = v43;
  v51 = sub_29E2C3404();

  return v51;
}

uint64_t sub_29E238530()
{
  v28 = sub_29E2BCBB4();
  v0 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E2BCC84();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C3384();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v27 - v12;
  sub_29E2C3314();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v8 + 8))(v13, v7);
  sub_29DEB19DC();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E2CAB20;
  v16 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v17 = sub_29E2BCC44();
  (*(v4 + 8))(v6, v3);
  [v16 setLocale_];

  v18 = sub_29E2C33A4();
  [v16 setLocalizedDateFormatFromTemplate_];

  v19 = [v27[1] startDate];
  sub_29E2BCB44();

  v20 = sub_29E2BCB04();
  (*(v0 + 8))(v2, v28);
  v21 = [v16 stringFromDate_];

  v22 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v24 = v23;

  *(v15 + 56) = MEMORY[0x29EDC99B0];
  *(v15 + 64) = sub_29DEB1A44();
  *(v15 + 32) = v22;
  *(v15 + 40) = v24;
  v25 = sub_29E2C3404();

  return v25;
}

id sub_29E23894C()
{
  v0 = sub_29E2BCEA4();
  v71 = *(v0 - 8);
  v72 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v70 = v61 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2BCBB4();
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  MEMORY[0x2A1C7C4A8](v2);
  v69 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v68 = v61 - v6;
  MEMORY[0x2A1C7C4A8](v7);
  v75 = v61 - v8;
  v9 = sub_29E2BCC84();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2C3384();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v19 = v61 - v18;
  sub_29E2C3314();
  v66 = *(v14 + 16);
  v67 = v14 + 16;
  v66(v16, v19, v13);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v20 = qword_2A1A67F80;
  v21 = qword_2A1A67F80;
  sub_29E2BCC74();
  v22 = v21;
  v65 = v20;
  v73 = sub_29E2C3414();
  v23 = *(v14 + 8);
  v61[1] = v14 + 8;
  v64 = v23;
  v23(v19, v13);
  sub_29DEB19DC();
  v63 = v24;
  v25 = swift_allocObject();
  v62 = v13;
  v26 = v25;
  *(v25 + 16) = xmmword_29E2CAB20;
  v27 = [objc_allocWithZone(MEMORY[0x29EDB9F78]) init];
  sub_29E2BCC74();
  v28 = sub_29E2BCC44();
  (*(v10 + 8))(v12, v9);
  [v27 setLocale_];

  v29 = sub_29E2C33A4();
  [v27 setLocalizedDateFormatFromTemplate_];

  v30 = v74;
  v31 = [v74 startDate];
  v32 = v75;
  sub_29E2BCB44();

  v33 = sub_29E2BCB04();
  v34 = *(v77 + 8);
  v77 += 8;
  v34(v32, v76);
  v35 = [v27 stringFromDate_];

  v36 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  v38 = v37;

  v26[7] = MEMORY[0x29EDC99B0];
  v61[0] = sub_29DEB1A44();
  v26[8] = v61[0];
  v26[4] = v36;
  v26[5] = v38;
  v39 = sub_29E2C3404();
  v41 = v40;

  result = [v30 startDate];
  if (result)
  {
    v43 = result;
    sub_29E2C3314();
    v44 = v62;
    v66(v16, v19, v62);
    sub_29E2BCC74();
    v45 = sub_29E2C3414();
    v73 = v46;
    v74 = v45;
    v64(v19, v44);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_29E2CD7A0;
    v48 = v61[0];
    *(v47 + 56) = MEMORY[0x29EDC99B0];
    *(v47 + 64) = v48;
    *(v47 + 32) = v39;
    *(v47 + 40) = v41;
    v49 = v75;
    sub_29E2BCBA4();
    v50 = v69;
    sub_29E151FB4(1, v69);
    v51 = v68;
    sub_29E15177C(v68);
    v52 = v76;
    v34(v50, v76);
    v34(v49, v52);
    v53 = sub_29E2BCB04();
    v34(v51, v52);
    v54 = v70;
    sub_29E2BCE44();
    v55 = sub_29E2BCD84();
    (*(v71 + 8))(v54, v72);
    v56 = [v43 hkmc:v53 durationStringToEndDate:v55 calendar:?];

    v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v59 = v58;

    *(v47 + 96) = MEMORY[0x29EDC99B0];
    *(v47 + 104) = v48;
    *(v47 + 72) = v57;
    *(v47 + 80) = v59;
    v60 = sub_29E2C3404();

    return v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E239064(void *a1, int a2)
{
  v54 = a2;
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v59 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C3384();
  v55 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v58 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v45 - v8;
  v10 = sub_29E2BCA54();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29E2BCBB4();
  v14 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A61D70);
  v17 = [swift_getObjCClassFromMetadata() pregnancyType];
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v53 = v5;
  v19 = a1;
  v20 = sub_29E2C40D4();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_29DE9408C(0, &qword_2A1817D48);
  sub_29E2C3ED4();
  sub_29E1BA268(v13);
  sub_29DF3BCB4();
  sub_29E2BCB94();
  (*(v11 + 8))(v13, v10);
  v21 = *(v14 + 8);
  v51 = v14 + 8;
  v48 = v21;
  v21(v16, v56);
  v23 = v60;
  v22 = v61;
  sub_29E2C3314();
  v52 = "EDING_ALERT_MESSAGE";
  v24 = v55;
  v25 = v53;
  v50 = *(v55 + 16);
  v50(v58, v9, v53);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A67F80;
  v47 = qword_2A1A67F80;
  sub_29E2BCC74();
  v49 = v26;
  sub_29E2C3414();
  v27 = *(v24 + 8);
  v27(v9, v25);
  sub_29DEB19DC();
  v55 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_29E2CAB20;
  *(v29 + 56) = MEMORY[0x29EDC99B0];
  v46 = sub_29DEB1A44();
  *(v29 + 64) = v46;
  *(v29 + 32) = v23;
  *(v29 + 40) = v22;
  v30 = sub_29E2C3404();
  v32 = v31;

  if (v54)
  {
    v33 = objc_opt_self();
    sub_29E2BCBA4();
    v34 = sub_29E2BCB04();
    v48(v16, v56);
    v35 = [v33 gestationalAgeStringOnDate:v34 pregnancySample:v57];

    v57 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v36 = v27;
    v38 = v37;

    sub_29E2C3314();
    v39 = v53;
    v50(v58, v9, v53);
    v40 = v47;
    sub_29E2BCC74();
    sub_29E2C3414();
    v36(v9, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_29E2CD7A0;
    v42 = MEMORY[0x29EDC99B0];
    v43 = v46;
    *(v41 + 56) = MEMORY[0x29EDC99B0];
    *(v41 + 64) = v43;
    *(v41 + 32) = v57;
    *(v41 + 40) = v38;
    *(v41 + 96) = v42;
    *(v41 + 104) = v43;
    *(v41 + 72) = v30;
    *(v41 + 80) = v32;
    v30 = sub_29E2C3404();
  }

  return v30;
}

char *sub_29E2396D8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role] = 0;
  v11 = objc_allocWithZone(type metadata accessor for CycleChartLeadingAxisOverhangView());
  v12 = sub_29E2BF404();
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_overhang] = sub_29E23A498(v12, 0, a2, a3, a4, a5);
  *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = a1;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for CycleChart();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a2, a3, a4, a5);
  sub_29DEC8D40();
  v14 = v13;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor_];

  [v16 setClipsToBounds_];
  [v16 addSubview_];
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v16;
}

void sub_29E239958()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CycleChartLeadingAxisView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_overhang];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = v3;
      [v4 bounds];
      Width = CGRectGetWidth(v7);
      [v0 bounds];
      if (Width > CGRectGetWidth(v8))
      {
        break;
      }

      v3 = [v4 superview];

      if (!v3)
      {
        return;
      }
    }

    [v4 bounds];
    CGRectGetWidth(v9);
    [v1 frame];
    [v1 setFrame_];
  }
}

id sub_29E239ADC()
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
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Color appearance changed", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 setNeedsDisplay];
}

void sub_29E239CA0(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = sub_29E2C0514();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CycleChartLeadingAxisView();
  v26.receiver = v4;
  v26.super_class = v13;
  objc_msgSendSuper2(&v26, sel_drawRect_, a1, a2, a3, a4);
  v14 = UIGraphicsGetCurrentContext();
  if (v14)
  {
    if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role))
    {
      if (*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role) == 1)
      {
        v15 = v14;
        sub_29E239F64(v14);
      }

      else
      {
      }
    }

    else
    {
      v23 = v14;
      sub_29E23A11C(v14);
    }
  }

  else
  {
    sub_29E2C04B4();
    v16 = sub_29E2C0504();
    v17 = sub_29E2C3A14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136446210;
      v20 = sub_29E2C4AE4();
      v22 = sub_29DFAA104(v20, v21, &v25);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29DE74000, v16, v17, "[%{public}s] Skipping drawing with no current context", v18, 0xCu);
      sub_29DE93B3C(v19);
      MEMORY[0x29ED82140](v19, -1, -1);
      MEMORY[0x29ED82140](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_29E239F64(CGContext *a1)
{
  CGContextSaveGState(a1);
  v3 = [objc_opt_self() systemBackgroundColor];
  v4 = [v1 traitCollection];
  v5 = [v3 resolvedColorWithTraitCollection_];

  v6 = [v5 CGColor];
  CGContextSetFillColorWithColor(a1, v6);

  [v1 bounds];
  CGContextFillRect(a1, v20);
  CGContextRestoreGState(a1);
  v7 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
  if (v7[2])
  {
    v8 = v7[7];
    v9 = v7[8];
    sub_29DE966D4(v7 + 4, v8);
    [v1 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v1 traitCollection];
    sub_29E0AED38(a1, v18, v8, v9, v11, v13, v15, v17);
  }
}

uint64_t sub_29E23A11C(CGContext *a1)
{
  v2 = v1;
  [v1 bounds];
  v38 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
  result = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
  v8 = *(result + 16);
  if (v8)
  {
    v9 = v4;
    MaxY = v5;
    v11 = v6;
    v37 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_overhang];
    v12 = result + 32;
    sub_29E2BF404();
    v13 = 0.0;
    while (1)
    {
      sub_29DE9DC34(v12, v42);
      v45.origin.x = v9;
      v45.origin.y = MaxY;
      v45.size.width = v11;
      v45.size.height = v13;
      MaxY = CGRectGetMaxY(v45);
      v15 = v43;
      v14 = v44;
      sub_29DE966D4(v42, v43);
      v13 = (*(*(v14 + 8) + 72))(v15);
      CGContextSaveGState(a1);
      [v37 bounds];
      Width = CGRectGetWidth(v46);
      v17 = v43;
      v18 = v44;
      sub_29DE966D4(v42, v43);
      v19 = [v2 traitCollection];
      (*(*(v18 + 8) + 96))(a1, v19, v17, v9, MaxY, Width, v13);

      v20 = v43;
      v21 = v44;
      sub_29DE966D4(v42, v43);
      v22 = (*(v21 + 24))(v20, v21);
      v24 = v23;
      v25 = *&v2[v38];
      v26 = *(v25 + 16);
      if (!v26)
      {
        break;
      }

      v27 = v22;
      sub_29DE9DC34(v25 + 40 * v26 - 8, v39);
      v28 = v40;
      v29 = v41;
      sub_29DE966D4(v39, v40);
      v30 = (*(v29 + 24))(v28, v29);
      v32 = v31;
      sub_29DE93B3C(v39);
      if (v27 == v30 && v24 == v32)
      {
      }

      else
      {
        v33 = sub_29E2C4914();

        if ((v33 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_4:
      CGContextRestoreGState(a1);
      sub_29DE93B3C(v42);
      v12 += 40;
      if (!--v8)
      {
      }
    }

LABEL_11:
    v34 = v43;
    v35 = v44;
    sub_29DE966D4(v42, v43);
    v36 = [v2 traitCollection];
    (*(*(v35 + 8) + 88))(a1, v36, v34, v9, MaxY, v11, v13);

    goto LABEL_4;
  }

  return result;
}

id sub_29E23A498(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  swift_getObjectType();
  v6[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_F8F01C631BBF3C2F43B88E7CE0C17F3933CycleChartLeadingAxisOverhangView_role] = a2;
  *&v6[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = a1;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for CycleChart();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a3, a4, a5, a6);
  sub_29DEC8D40();
  v14 = v13;
  sub_29E2C3D24();
  sub_29E2C4034();

  swift_unknownObjectRelease();

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor_];

  [v16 setUserInteractionEnabled_];
  return v16;
}

void sub_29E23A668(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_29E2C0514();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for CycleChartLeadingAxisOverhangView();
  v62.receiver = v5;
  v62.super_class = v17;
  objc_msgSendSuper2(&v62, sel_drawRect_, a1, a2, a3, a4);
  sub_29E2C04B4();
  v18 = sub_29E2C0504();
  v19 = sub_29E2C3A04();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v57 = v13;
    v58 = v10;
    v22 = v11;
    v23 = v21;
    v59[0] = v21;
    *v20 = 136446210;
    v24 = sub_29E2C4AE4();
    v26 = sub_29DFAA104(v24, v25, v59);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_29DE74000, v18, v19, "[%{public}s] Drawing", v20, 0xCu);
    sub_29DE93B3C(v23);
    v27 = v23;
    v11 = v22;
    v13 = v57;
    v10 = v58;
    MEMORY[0x29ED82140](v27, -1, -1);
    MEMORY[0x29ED82140](v20, -1, -1);
  }

  v28 = *(v11 + 8);
  v28(v16, v10);
  v29 = UIGraphicsGetCurrentContext();
  if (!v29)
  {
    sub_29E2C04B4();
    v49 = sub_29E2C0504();
    v50 = sub_29E2C3A14();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59[0] = v52;
      *v51 = 136446210;
      v53 = sub_29E2C4AE4();
      v55 = sub_29DFAA104(v53, v54, v59);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_29DE74000, v49, v50, "[%{public}s] Skipping drawing with no current context", v51, 0xCu);
      sub_29DE93B3C(v52);
      MEMORY[0x29ED82140](v52, -1, -1);
      MEMORY[0x29ED82140](v51, -1, -1);
    }

    v28(v13, v10);
    return;
  }

  v30 = v29;
  [v5 bounds];
  v34 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
  v35 = *(v34 + 16);
  if (!v35)
  {
    goto LABEL_13;
  }

  v36 = v31;
  MaxY = v32;
  v38 = v33;
  v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_F8F01C631BBF3C2F43B88E7CE0C17F3933CycleChartLeadingAxisOverhangView_role;
  v40 = v34 + 32;
  v58 = *&v5[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
  sub_29E2BF404();
  v41 = 0.0;
  do
  {
    sub_29DE9DC34(v40, v59);
    CGContextSaveGState(v30);
    v63.origin.x = v36;
    v63.origin.y = MaxY;
    v63.size.width = v38;
    v63.size.height = v41;
    MaxY = CGRectGetMaxY(v63);
    v46 = v60;
    v45 = v61;
    sub_29DE966D4(v59, v60);
    v41 = (*(*(v45 + 8) + 72))(v46);
    if (!v5[v39])
    {
      v43 = v60;
      v42 = v61;
      sub_29DE966D4(v59, v60);
      v44 = [v5 traitCollection];
      (*(*(v42 + 8) + 80))(v30, v44, v43, v36, MaxY, v38, v41);
LABEL_7:

      goto LABEL_8;
    }

    if (v5[v39] != 1)
    {
      v48 = v60;
      v47 = v61;
      sub_29DE966D4(v59, v60);
      v44 = [v5 traitCollection];
      (*(*(v47 + 8) + 96))(v30, v44, v48, v36, MaxY, v38, v41);
      goto LABEL_7;
    }

LABEL_8:
    CGContextRestoreGState(v30);
    sub_29DE93B3C(v59);
    v40 += 40;
    --v35;
  }

  while (v35);

LABEL_13:
}

id sub_29E23AC20(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29E23AC90()
{
  result = qword_2A1820088;
  if (!qword_2A1820088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1820088);
  }

  return result;
}

uint64_t type metadata accessor for InternalSettingsNotification()
{
  result = qword_2A1820090;
  if (!qword_2A1820090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E23AD7C()
{
  result = sub_29E2BC5F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E23AE00(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_getObjectType();
  v4 = sub_29E2C0514();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E23AED0, 0, 0);
}

uint64_t sub_29E23AED0()
{
  v28 = v0;
  swift_getObjectType();
  v1 = sub_29E2BD204();
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    type metadata accessor for MenstrualCyclesHealthPluginDelegate();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v0[11] = v8;
    v23 = v0[6];
    v24 = swift_task_alloc();
    v0[12] = v24;
    v24[2] = v2;
    v24[3] = v6;
    v24[4] = v8;
    v24[5] = v23;
    v25 = swift_task_alloc();
    v0[13] = v25;
    sub_29E23BB44();
    *v25 = v0;
    v25[1] = sub_29E23B1E0;

    return MEMORY[0x2A1C73C80](v0 + 2, 0, 0, 0xD000000000000018, 0x800000029E308970, sub_29E23BB38, v24, v26);
  }

  else
  {
    sub_29E2C04B4();
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136446210;
      v17 = sub_29E2C4AE4();
      v19 = sub_29DFAA104(v17, v18, &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Unable to build summary transaction builder", v15, 0xCu);
      sub_29DE93B3C(v16);
      MEMORY[0x29ED82140](v16, -1, -1);
      MEMORY[0x29ED82140](v15, -1, -1);
    }

    (*(v13 + 8))(v12, v14);

    v20 = v0[1];
    v21 = MEMORY[0x29EDCA190];

    return v20(v21);
  }
}

uint64_t sub_29E23B1E0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_29E23B378;
  }

  else
  {

    v2 = sub_29E23B304;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E23B304()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_29E23B378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E23B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29E23BB9C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10);
  (*(v12 + 16))(&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  (*(v12 + 32))(&v16[v15], &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *&v16[(v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  sub_29E2BF404();

  sub_29E2BDB14();
}

uint64_t sub_29E23B584(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v62 = a7;
  v63 = a4;
  v11 = sub_29E2BCC24();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_29E2C0514();
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v56[-v21];
  if ((a2 & 1) == 0)
  {
    v64 = a1;
    sub_29E23BB9C();
    sub_29E2BF404();
    return sub_29E2C36C4();
  }

  v59 = v20;
  v60 = v19;
  v61 = a6;
  v23 = sub_29E2BC7D4();
  v24 = [v23 hk_isObjectNotFoundError];

  if (v24)
  {
    sub_29E2C04B4();
    sub_29E2BF404();

    v25 = sub_29E2C0504();
    v26 = sub_29E2C3A34();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66 = v58;
      *v27 = 136446722;
      v28 = sub_29E2C4AE4();
      LODWORD(v62) = v26;
      v30 = sub_29DFAA104(v28, v29, &v66);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      sub_29E2BDB24();
      v31 = sub_29E2BCBD4();
      v33 = v32;
      (*(v12 + 8))(v14, v11);
      v34 = sub_29DFAA104(v31, v33, &v66);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2080;
      v64 = v63;
      v65 = a5;
      sub_29E23BCC0();
      sub_29E2BF404();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, &v66);

      *(v27 + 24) = v37;
      _os_log_impl(&dword_29DE74000, v25, v62, "[%{public}s] No summaries were found for transaction %s with identifier %s", v27, 0x20u);
      v38 = v58;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v38, -1, -1);
      MEMORY[0x29ED82140](v27, -1, -1);
    }

    (*(v59 + 8))(v17, v60);
    v64 = MEMORY[0x29EDCA190];
    sub_29E23BB9C();
    return sub_29E2C36C4();
  }

  sub_29E2C04B4();
  sub_29E2BF404();

  v40 = sub_29E2C0504();
  v41 = sub_29E2C3A14();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v66 = v58;
    *v42 = 136446722;
    v43 = sub_29E2C4AE4();
    v62 = v40;
    v45 = sub_29DFAA104(v43, v44, &v66);
    v57 = v41;
    v46 = v45;

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    sub_29E2BDB24();
    v47 = sub_29E2BCBD4();
    v49 = v48;
    (*(v12 + 8))(v14, v11);
    v50 = sub_29DFAA104(v47, v49, &v66);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2080;
    v64 = v63;
    v65 = a5;
    sub_29E23BCC0();
    sub_29E2BF404();
    v51 = sub_29E2C3424();
    v53 = sub_29DFAA104(v51, v52, &v66);

    *(v42 + 24) = v53;
    v40 = v62;
    _os_log_impl(&dword_29DE74000, v62, v57, "[%{public}s] Could not get summaries for transaction %s with identifier %s", v42, 0x20u);
    v54 = v58;
    swift_arrayDestroy();
    MEMORY[0x29ED82140](v54, -1, -1);
    MEMORY[0x29ED82140](v42, -1, -1);
  }

  (*(v59 + 8))(v22, v60);
  v64 = a1;
  v55 = a1;
  sub_29E23BB9C();
  return sub_29E2C36B4();
}

void sub_29E23BB44()
{
  if (!qword_2A181ABA0)
  {
    sub_29E016150();
    v0 = sub_29E2C3684();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181ABA0);
    }
  }
}

void sub_29E23BB9C()
{
  if (!qword_2A18200A0)
  {
    sub_29E23BB44();
    sub_29DE96670();
    v0 = sub_29E2C36D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18200A0);
    }
  }
}

uint64_t sub_29E23BC0C(void *a1, char a2)
{
  sub_29E23BB9C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E23B584(a1, a2 & 1, v8, v9, v10, v2 + v7, v11);
}

void sub_29E23BCC0()
{
  if (!qword_2A1A5E338)
  {
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A5E338);
    }
  }
}

uint64_t sub_29E23BD10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_29E2C1A64();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E241CC8(0, &qword_2A1819020, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v14 - v9;
  sub_29DF5F0F4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E2C16E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_29E2C3A24();
    v13 = sub_29E2C1F84();
    sub_29E2C03B4();

    sub_29E2C1A54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_29E23BF1C()
{
  v1 = (v0 + *(type metadata accessor for PregnancySuggestedFeatureAdjustmentTile() + 20));
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    v4 = v1[1];
  }

  else
  {
    v4 = MEMORY[0x29EDCA190];
  }

  sub_29E2BF404();
  sub_29E2C2AB4();
  sub_29E2C1564();
  LOBYTE(v6) = v3 == 0;
  *(&v6 + 1) = v2;
  *&v7 = v4;
  sub_29E24191C(0, &qword_2A1820100, &type metadata for TileIcon, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  sub_29E240F34();
  sub_29E2C2494();
  v11[2] = v8;
  v11[3] = v9;
  v12 = v10;
  v11[0] = v6;
  v11[1] = v7;
  return sub_29E241034(v11);
}

uint64_t sub_29E23C03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_29E24052C();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E24045C();
  v79 = *(v5 - 8);
  v80 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v73 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E241CC8(0, &qword_2A1820150, sub_29E24045C, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v83 = &v73 - v10;
  sub_29E2400F8(0);
  v12 = v11 - 8;
  MEMORY[0x2A1C7C4A8](v11);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v73 - v15;
  v17 = (a1 + *(type metadata accessor for PregnancySuggestedFeatureAdjustmentTile() + 20));
  v18 = v17[3];
  *&v91 = v17[2];
  *(&v91 + 1) = v18;
  v19 = sub_29DE9DE68();
  sub_29E2BF404();
  v78 = v19;
  v20 = sub_29E2C2294();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  KeyPath = swift_getKeyPath();
  LOBYTE(v19) = v24 & 1;
  LOBYTE(v91) = v24 & 1;
  v28 = sub_29E2C2054();
  v29 = swift_getKeyPath();
  *&v91 = v20;
  *(&v91 + 1) = v22;
  LOBYTE(v92) = v19;
  *(&v92 + 1) = v26;
  LOWORD(v93) = 256;
  *(&v93 + 1) = KeyPath;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v29;
  v95 = v28;
  sub_29E2C20B4();
  sub_29E24014C();
  sub_29E2402F0();
  sub_29E2C2344();
  v98[2] = v93;
  v98[3] = v94;
  v99 = v95;
  v98[0] = v91;
  v98[1] = v92;
  sub_29E2418BC(v98, sub_29E24014C);
  v30 = sub_29E2C26A4();
  v31 = swift_getKeyPath();
  v32 = v16;
  v33 = &v16[*(v12 + 44)];
  *v33 = v31;
  v33[1] = v30;
  if (v17[5] && (v34 = v17[6]) != 0)
  {
    MEMORY[0x2A1C7C4A8](v31);
    *(&v73 - 2) = v36;
    *(&v73 - 1) = v35;
    MEMORY[0x2A1C7C4A8](v37);
    *(&v73 - 2) = v34;
    sub_29E0DEE84();
    sub_29E241F34(&qword_2A181C7D0, sub_29E0DEE84, sub_29E0DF174);
    v38 = v34;
    v39 = v74;
    sub_29E2C2794();
    sub_29E241FB8(&qword_2A1820168, sub_29E24052C);
    sub_29E2405DC();
    v40 = v73;
    v41 = v76;
    sub_29E2C2364();

    (*(v75 + 8))(v39, v41);
    v43 = v79;
    v42 = v80;
    v44 = v83;
    (*(v79 + 32))(v83, v40, v80);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v83;
    v43 = v79;
    v42 = v80;
  }

  (*(v43 + 56))(v44, v45, 1, v42);
  v46 = v17[8];
  *&v91 = v17[7];
  *(&v91 + 1) = v46;
  sub_29E2BF404();
  v47 = sub_29E2C2294();
  v79 = v49;
  v80 = v48;
  v51 = v50;
  v78 = swift_getKeyPath();
  v52 = v44;
  LOBYTE(v91) = v51 & 1;
  v53 = v51 & 1;
  LODWORD(v75) = v53;
  v54 = sub_29E2C2044();
  v74 = v54;
  v55 = swift_getKeyPath();
  v76 = sub_29E2C2624();
  v56 = swift_getKeyPath();
  v57 = v32;
  v77 = v32;
  v58 = v84;
  sub_29E240EBC(v57, v84, sub_29E2400F8);
  v59 = v81;
  sub_29DE8C67C(v52, v81);
  v60 = v58;
  v61 = v82;
  sub_29E240EBC(v60, v82, sub_29E2400F8);
  sub_29E240040();
  v63 = v62;
  sub_29DE8C67C(v59, v61 + *(v62 + 48));
  v64 = v61 + *(v63 + 64);
  v65 = v47;
  *&v85 = v47;
  v66 = v79;
  v67 = v80;
  *(&v85 + 1) = v80;
  LOBYTE(v86) = v53;
  *(&v86 + 1) = v79;
  LOWORD(v87) = 256;
  v68 = v78;
  *(&v87 + 1) = v78;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = v55;
  *&v89 = v54;
  v69 = v76;
  *(&v89 + 1) = v56;
  v90 = v76;
  v70 = v88;
  *(v64 + 32) = v87;
  *(v64 + 48) = v70;
  *(v64 + 80) = v69;
  v71 = v86;
  *v64 = v85;
  *(v64 + 16) = v71;
  *(v64 + 64) = v89;
  sub_29E241780(&v85, &v91, sub_29E240630);
  sub_29DE8C710(v83);
  sub_29E2417E8(v77, sub_29E2400F8);
  *&v91 = v65;
  *(&v91 + 1) = v67;
  LOBYTE(v92) = v75;
  *(&v92 + 1) = v66;
  LOWORD(v93) = 256;
  *(&v93 + 1) = v68;
  LOBYTE(v94) = 0;
  *(&v94 + 1) = v55;
  v95 = v74;
  v96 = v56;
  v97 = v69;
  sub_29E2418BC(&v91, sub_29E240630);
  sub_29DE8C710(v59);
  return sub_29E2417E8(v84, sub_29E2400F8);
}

uint64_t sub_29E23C784@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_29E2C2714();
  v5 = a1;
  result = sub_29E2C2654();
  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_29E23C7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E23FF8C();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20 - v8;
  v10 = MEMORY[0x29EDBC3E0];
  sub_29E23FF04(0, &qword_2A18200F8, &qword_2A1820100, &type metadata for TileIcon, MEMORY[0x29EDBC3E0]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v20 - v15;
  sub_29E23BF1C();
  *v9 = sub_29E2C1BD4();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  sub_29E240DC8();
  sub_29E23C03C(a1, &v9[*(v17 + 44)]);
  sub_29E241848(v16, v13, &qword_2A18200F8, &qword_2A1820100, &type metadata for TileIcon, v10);
  sub_29E240EBC(v9, v6, sub_29E23FF8C);
  sub_29E241848(v13, a2, &qword_2A18200F8, &qword_2A1820100, &type metadata for TileIcon, v10);
  sub_29E23FE74();
  sub_29E240EBC(v6, a2 + *(v18 + 48), sub_29E23FF8C);
  sub_29E2417E8(v9, sub_29E23FF8C);
  sub_29E240E60(v16, &qword_2A18200F8, &qword_2A1820100, &type metadata for TileIcon, v10);
  sub_29E2417E8(v6, sub_29E23FF8C);
  return sub_29E240E60(v13, &qword_2A18200F8, &qword_2A1820100, &type metadata for TileIcon, v10);
}

uint64_t sub_29E23CA24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  sub_29E240738(0, &qword_2A1820190, MEMORY[0x29EDBCB28]);
  v23[0] = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v23 - v4;
  sub_29E23FDCC(0, &qword_2A18201F0, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v23 - v7;
  sub_29E240738(0, &qword_2A18200E0, MEMORY[0x29EDBCB50]);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v23 - v10;
  v12 = sub_29E2C16E4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E23BD10(v15);
  v16 = sub_29E2C16C4();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    *v11 = sub_29E2C1BD4();
    *(v11 + 1) = 0x4010000000000000;
    v11[16] = 0;
    sub_29E240CC4(0, &qword_2A1820200);
    sub_29E23C7E0(v2, &v11[*(v17 + 44)]);
    v18 = &qword_2A18200E0;
    v19 = MEMORY[0x29EDBCB50];
    sub_29E240D5C(v11, v8, &qword_2A18200E0, MEMORY[0x29EDBCB50]);
    swift_storeEnumTagMultiPayload();
    sub_29E240C24(&qword_2A18201D8, &qword_2A18200E0, v19);
    sub_29E240C24(&qword_2A18201E0, &qword_2A1820190, MEMORY[0x29EDBCB28]);
    sub_29E2C1C74();
    v20 = v11;
  }

  else
  {
    *v5 = sub_29E2C1A94();
    *(v5 + 1) = 0;
    v5[16] = 1;
    sub_29E240CC4(0, &qword_2A18201F8);
    sub_29E23C7E0(v2, &v5[*(v21 + 44)]);
    v18 = &qword_2A1820190;
    v19 = MEMORY[0x29EDBCB28];
    sub_29E240D5C(v5, v8, &qword_2A1820190, MEMORY[0x29EDBCB28]);
    swift_storeEnumTagMultiPayload();
    sub_29E240C24(&qword_2A18201D8, &qword_2A18200E0, MEMORY[0x29EDBCB50]);
    sub_29E240C24(&qword_2A18201E0, &qword_2A1820190, v19);
    sub_29E2C1C74();
    v20 = v5;
  }

  return sub_29E240C68(v20, v18, v19);
}

uint64_t sub_29E23CE5C@<X0>(uint64_t a1@<X8>)
{
  sub_29E2415B8();
  v3 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2413E0();
  v7 = v6 - 8;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v27 - v11;
  sub_29E24121C();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v27 - v17;
  *v18 = sub_29E2C1AA4();
  *(v18 + 1) = 0;
  v18[16] = 0;
  sub_29E2416E8();
  sub_29E23D158(&v18[*(v19 + 44)]);
  sub_29E2C1E64();
  v20 = sub_29E2C2044();
  KeyPath = swift_getKeyPath();
  v22 = &v5[*(v3 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_29E2C20B4();
  sub_29E241638();
  sub_29E2C2344();
  sub_29E2418BC(v5, sub_29E2415B8);
  v23 = sub_29E2C2624();
  sub_29E24145C(0, &qword_2A1820270, sub_29E2414F4);
  *&v12[*(v24 + 36)] = v23;
  *&v12[*(v7 + 44)] = 256;
  sub_29E241780(v18, v15, sub_29E24121C);
  sub_29E240EBC(v12, v9, sub_29E2413E0);
  sub_29E241780(v15, a1, sub_29E24121C);
  sub_29E2411AC();
  sub_29E240EBC(v9, a1 + *(v25 + 48), sub_29E2413E0);
  sub_29E2417E8(v12, sub_29E2413E0);
  sub_29E2418BC(v18, sub_29E24121C);
  sub_29E2417E8(v9, sub_29E2413E0);
  return sub_29E2418BC(v15, sub_29E24121C);
}

uint64_t sub_29E23D158@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  sub_29E23FF04(0, &qword_2A1820258, &qword_2A181B7E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5E8]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v41 = &v40 - v4;
  sub_29E241360();
  v6 = v5 - 8;
  MEMORY[0x2A1C7C4A8](v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v40 - v9;
  sub_29E2C1E44();
  v11 = sub_29E2C2134();
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(v6 + 44)];
  *v13 = KeyPath;
  v13[1] = v11;
  sub_29E2C1B34();
  v14 = sub_29E2C2274();
  v16 = v15;
  v18 = v17;
  sub_29E2C2044();
  v19 = sub_29E2C2254();
  v21 = v20;
  v23 = v22;

  sub_29DED6478(v14, v16, v18 & 1);

  sub_29E2C20B4();
  v24 = sub_29E2C2204();
  v26 = v25;
  LOBYTE(v16) = v27;
  v29 = v28;
  sub_29DED6478(v19, v21, v23 & 1);

  v45 = v24;
  v46 = v26;
  v47 = v16 & 1;
  v48 = v29;
  v49 = 256;
  sub_29E24191C(0, &qword_2A181B7E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5E8], MEMORY[0x29EDBC558]);
  sub_29E1C6D80();
  v30 = v41;
  sub_29E2C2494();
  sub_29DED6478(v24, v26, v16 & 1);

  v31 = v42;
  sub_29E241780(v10, v42, sub_29E241360);
  v32 = v43;
  v33 = MEMORY[0x29EDBCA18];
  v34 = MEMORY[0x29EDBC5E8];
  sub_29E241848(v30, v43, &qword_2A1820258, &qword_2A181B7E8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5E8]);
  v35 = v31;
  v36 = v31;
  v37 = v44;
  sub_29E241780(v35, v44, sub_29E241360);
  sub_29E2412D0();
  sub_29E241848(v32, v37 + *(v38 + 48), &qword_2A1820258, &qword_2A181B7E8, v33, v34);
  sub_29E240E60(v30, &qword_2A1820258, &qword_2A181B7E8, v33, v34);
  sub_29E2418BC(v10, sub_29E241360);
  sub_29E240E60(v32, &qword_2A1820258, &qword_2A181B7E8, v33, v34);
  return sub_29E2418BC(v36, sub_29E241360);
}

uint64_t sub_29E23D52C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E2C1A94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29E241114();
  return sub_29E23CE5C(a1 + *(v2 + 44));
}

uint64_t sub_29E23D574()
{
  v0 = sub_29E2C1F14();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E23FCC0(0);
  v5 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E23CA24(v7);
  v8 = sub_29E2C1FC4();
  sub_29E23FD50();
  v10 = &v7[*(v9 + 36)];
  *v10 = v8;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  v11 = sub_29E2C1FC4();
  sub_29E23FD08(0);
  v13 = &v7[*(v12 + 36)];
  *v13 = 4;
  v13[8] = v11;
  v14 = &v7[*(v5 + 36)];
  v15 = *(sub_29E2C1794() + 20);
  v16 = *MEMORY[0x29EDBC6F8];
  v17 = sub_29E2C1B64();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #26.0 }

  *v14 = _Q0;
  sub_29E117918();
  *&v14[*(v23 + 36)] = 256;
  sub_29E2C1EF4();
  sub_29E240938();
  sub_29E2C24A4();
  (*(v1 + 8))(v3, v0);
  return sub_29E2417E8(v7, sub_29E23FCC0);
}

double sub_29E23D7A8@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_29E2C2724();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v9 + 104))(v12, *MEMORY[0x29EDBCAB8], v8, v10);
    v13 = sub_29E2C2774();
    (*(v9 + 8))(v12, v8);
    v18 = v13;
    v19 = 0;
    v20 = 1;
    v21 = 1;
    sub_29E24191C(0, &qword_2A181C640, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29E241970();
    sub_29E2419C4();
  }

  else
  {
    v18 = a2;
    v19 = a3;
    v20 = 0;
    v21 = 0;
    sub_29E24191C(0, &qword_2A181C640, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    sub_29E241970();
    sub_29E2419C4();

    sub_29E2BF404();
  }

  sub_29E2C1C74();
  result = *&v22;
  v15 = v23;
  v16 = v24;
  *a4 = v22;
  *(a4 + 16) = v15;
  *(a4 + 18) = v16;
  return result;
}

double sub_29E23D9E0@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29E241CC8(0, &qword_2A181A460, MEMORY[0x29EDBC990], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = v42 - v6;
  sub_29E241CC8(0, &qword_2A18202E0, MEMORY[0x29EDBC7D0], v4);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = v42 - v9;
  v11 = a1[2];
  if (v11 == 3)
  {
    sub_29E2C1BE4();
    v25 = sub_29E2C1BF4();
    (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
    v26 = sub_29E2C2744();
    sub_29E241D2C(v10, &qword_2A18202E0, MEMORY[0x29EDBC7D0]);
    v27 = sub_29E2C2074();
    (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
    v28 = sub_29E2C20C4();
    sub_29E241D2C(v7, &qword_2A181A460, MEMORY[0x29EDBC990]);
    KeyPath = swift_getKeyPath();
    v31 = a1[4];
    v30 = a1[5];
    v32 = a1[6];
    *&v43 = v26;
    *(&v43 + 1) = KeyPath;
    v42[2] = v26;
    v42[3] = v31;
    *&v44 = v28;
    *(&v44 + 1) = v31;
    *&v45 = v30;
    *(&v45 + 1) = v32;
    LOBYTE(v46) = 0;
    sub_29E241D9C(0);
    v42[1] = v33;
    sub_29E1A5C10();
    sub_29E241E54();
    sub_29E241F34(&qword_2A1820300, sub_29E1A5C10, sub_29E1315C4);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_29E2C1C74();
    v48 = v50;
    v47 = 1;
    v51 = 1;
    sub_29E242000(0);
    sub_29E24211C(0);
    sub_29E241B3C(&qword_2A1820338, sub_29E242000, sub_29E242164, sub_29E242214);
    sub_29E2422F4();
    sub_29E2C1C74();
  }

  else
  {
    if (v11 == 2)
    {
      sub_29E2C1BE4();
      v18 = sub_29E2C1BF4();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
      v19 = sub_29E2C2744();
      sub_29E241D2C(v10, &qword_2A18202E0, MEMORY[0x29EDBC7D0]);
      v20 = sub_29E2C2074();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      v21 = sub_29E2C20C4();
      sub_29E241D2C(v7, &qword_2A181A460, MEMORY[0x29EDBC990]);
      v22 = swift_getKeyPath();
      v24 = a1[4];
      v23 = a1[5];
      *&v43 = v19;
      *(&v43 + 1) = v22;
      *&v44 = v21;
      *(&v44 + 1) = v24;
      *&v45 = v23;
      BYTE8(v45) = 1;
      sub_29E242048(0);
      sub_29E242068(0);
      sub_29E242164();
      sub_29E242214();
      swift_retain_n();
      swift_retain_n();

      sub_29E2C1C74();
      v48 = BYTE8(v49);
      v47 = 0;
      v51 = 0;
      sub_29E242000(0);
      sub_29E24211C(0);
      sub_29E241B3C(&qword_2A1820338, sub_29E242000, sub_29E242164, sub_29E242214);
      sub_29E2422F4();
      sub_29E2C1C74();
    }

    else
    {
      if (v11 != 1)
      {
        sub_29E2C1BE4();
        v34 = sub_29E2C1BF4();
        (*(*(v34 - 8) + 56))(v10, 0, 1, v34);
        v35 = sub_29E2C2744();
        sub_29E241D2C(v10, &qword_2A18202E0, MEMORY[0x29EDBC7D0]);
        v36 = sub_29E2C2074();
        (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
        v37 = sub_29E2C20C4();
        sub_29E241D2C(v7, &qword_2A181A460, MEMORY[0x29EDBC990]);
        v38 = swift_getKeyPath();
        *&v43 = v35;
        *(&v43 + 1) = v38;
        v44 = v37;
        v45 = 0uLL;
        LOBYTE(v46) = 1;
        sub_29E241D9C(0);
        sub_29E1A5C10();
        sub_29E241E54();
        sub_29E241F34(&qword_2A1820300, sub_29E1A5C10, sub_29E1315C4);

        sub_29E2C1C74();
        v48 = v50;
        v47 = 1;
        v51 = 1;
        sub_29E242000(0);
        sub_29E24211C(0);
        sub_29E241B3C(&qword_2A1820338, sub_29E242000, sub_29E242164, sub_29E242214);
        sub_29E2422F4();
        sub_29E2C1C74();

        goto LABEL_9;
      }

      sub_29E2C1BE4();
      v12 = sub_29E2C1BF4();
      (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
      v13 = sub_29E2C2744();
      sub_29E241D2C(v10, &qword_2A18202E0, MEMORY[0x29EDBC7D0]);
      v14 = sub_29E2C2074();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      v15 = sub_29E2C20C4();
      sub_29E241D2C(v7, &qword_2A181A460, MEMORY[0x29EDBC990]);
      v16 = swift_getKeyPath();
      v17 = a1[4];
      *&v43 = v13;
      *(&v43 + 1) = v16;
      *&v44 = v15;
      *(&v44 + 1) = v17;
      *&v45 = 0;
      BYTE8(v45) = 0;
      sub_29E242048(0);
      sub_29E242068(0);
      sub_29E242164();
      sub_29E242214();
      swift_retain_n();

      sub_29E2C1C74();
      v48 = BYTE8(v49);
      v47 = 0;
      v51 = 0;
      sub_29E242000(0);
      sub_29E24211C(0);
      sub_29E241B3C(&qword_2A1820338, sub_29E242000, sub_29E242164, sub_29E242214);
      sub_29E2422F4();
      sub_29E2C1C74();
    }
  }

LABEL_9:

  v49 = v45;
  v39 = v46;
  v40 = v44;
  *a2 = v43;
  *(a2 + 16) = v40;
  result = *&v49;
  *(a2 + 32) = v49;
  *(a2 + 48) = v39;
  return result;
}
uint64_t sub_29D6E634C(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  sub_29D6E8304();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v9, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v8;
  sub_29D6E8398();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = a2;
  sub_29D938368();
  sub_29D6E86B4(&qword_2A17B20B0, sub_29D6E8398);

  sub_29D938378();
  sub_29D6E86B4(&qword_2A17B20B8, sub_29D6E8304);
  v22 = sub_29D938418();

  (*(v11 + 8))(v15, v10);
  return v22;
}

uint64_t sub_29D6E65A0(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_29D6B805C(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if (!a4)
  {
    v36 = Strong;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = *sub_29D693E2C((v36 + 16), *(v36 + 40));

    *&v49 = sub_29D8F0ED8();
    v39 = swift_allocObject();
    v39[2] = sub_29D6E8418;
    v39[3] = v18;
    v39[4] = v37;
    v39[5] = a7;
    v40 = swift_allocObject();
    v40[2] = v36;
    v40[3] = sub_29D6E8418;
    v40[4] = v18;
    v40[5] = a7;
    sub_29D6E85E4();
    sub_29D6E86B4(&qword_2A17B20E0, sub_29D6E85E4);

    v41 = sub_29D938478();

    swift_beginAccess();
    v42 = *(v37 + 16);
    *(v37 + 16) = v41;
  }

  if (a4 == 1)
  {
    v24 = Strong;

    v48[0] = a5;
    v48[1] = a6;
    sub_29D695734(0, &qword_2A17B20C0);
    sub_29D695734(0, &qword_2A17B20C8);
    v25 = a5;
    if (swift_dynamicCast())
    {
      v26 = *(*sub_29D693E2C(&v49, *(&v50 + 1)) + qword_2A17B2330);
      v27 = sub_29D76FC80();
      sub_29D69417C(&v49);
      if (HIBYTE(v27) == 2 || v27 == 2)
      {
        goto LABEL_20;
      }

      if ((v27 & 0x100) == 0)
      {
        *&v49 = 0;
        v43 = 2;
        goto LABEL_21;
      }

      if ((v27 & 1) == 0)
      {
        *&v49 = 3;
        v43 = 2;
        goto LABEL_21;
      }

      v29 = *(*sub_29D693E2C((v24 + 16), *(v24 + 40)) + 104);
      v30 = *(*v29 + *MEMORY[0x29EDC9DE8] + 16);
      v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v29 + v31));
      sub_29D6E8508(v29 + v30, v17);
      os_unfair_lock_unlock((v29 + v31));

      v32 = sub_29D9371A8();
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(v17, 1, v32) != 1)
      {
        v45 = *MEMORY[0x29EDBA5A0];
        v46 = sub_29D9371B8();
        (*(v33 + 8))(v17, v32);
        v47 = [v46 isRequirementSatisfiedWithIdentifier_];

        if ((v47 & 1) == 0)
        {
          *&v49 = 0;
          v43 = 64;
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v34 = sub_29D6B805C;
      v35 = v17;
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v34 = sub_29D6E849C;
      v35 = &v49;
    }

    sub_29D6E856C(v35, v34);
LABEL_20:
    *&v49 = 0;
    v43 = 128;
LABEL_21:
    WORD4(v49) = v43;
    a1(&v49);
  }

  if (a4 != 6)
  {

    goto LABEL_20;
  }

  v20 = sub_29D693E2C((Strong + 56), *(Strong + 80));
  v21 = swift_allocObject();
  v21[2] = sub_29D6E8418;
  v21[3] = v18;
  v21[4] = a7;
  v22 = *v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_29D6E845C;
  *(v23 + 24) = v21;

  sub_29D933ED8();
}

uint64_t sub_29D6E6B88(void **a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*a1)
  {
    v7 = v5;
    v8 = sub_29D933588();
    v9 = [v8 code];

    if (v9 == 109)
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v10 = sub_29D937898();
      sub_29D69C6C0(v10, qword_2A1A2BF28);
      v11 = sub_29D937878();
      v12 = sub_29D93A2A8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29[0] = v14;
        *v13 = 136315138;
        v15 = sub_29D93AF08();
        v17 = sub_29D6C2364(v15, v16, v29);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_29D677000, v11, v12, "[%s] Location unavailable error encountered, returning cannot proceed with location unavailable", v13, 0xCu);
        sub_29D69417C(v14);
        MEMORY[0x29ED6BE30](v14, -1, -1);
        MEMORY[0x29ED6BE30](v13, -1, -1);
      }

      v18 = 2;
    }

    else
    {
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v19 = sub_29D937898();
      sub_29D69C6C0(v19, qword_2A1A2BF28);
      v20 = sub_29D937878();
      v21 = sub_29D93A2A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v29[0] = v23;
        *v22 = 136315138;
        v24 = sub_29D93AF08();
        v26 = sub_29D6C2364(v24, v25, v29);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_29D677000, v20, v21, "[%s] Location unavailable error encountered, returning cannot proceed with location unavailable", v22, 0xCu);
        sub_29D69417C(v23);
        MEMORY[0x29ED6BE30](v23, -1, -1);
        MEMORY[0x29ED6BE30](v22, -1, -1);
      }

      v18 = 5;
    }

    a2(v18, 2);
  }

  swift_beginAccess();
  v27 = *(a4 + 16);
  *(a4 + 16) = 0;
}

uint64_t sub_29D6E6E70(void **a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  sub_29D6B805C(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v92 - v17;
  v19 = *a1;
  if ([v19 isEligible])
  {
    v92[1] = a5;
    v92[2] = a4;
    v20 = a3;
    v21 = *(*sub_29D693E2C((a2 + 16), *(a2 + 40)) + 104);
    v22 = MEMORY[0x29EDC9DE8];
    v23 = *(*v21 + *MEMORY[0x29EDC9DE8] + 16);
    v24 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v21 + v24));
    sub_29D6E8508(v21 + v23, v18);
    os_unfair_lock_unlock((v21 + v24));

    v25 = sub_29D9371A8();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (v27(v18, 1, v25) == 1)
    {
      sub_29D6E856C(v18, sub_29D6B805C);
    }

    else
    {
      v44 = *MEMORY[0x29EDBA5A0];
      v45 = sub_29D9371B8();
      (*(v26 + 8))(v18, v25);
      v46 = [v45 isRequirementSatisfiedWithIdentifier_];

      if ((v46 & 1) == 0)
      {
        if (qword_2A1A24660 != -1)
        {
          swift_once();
        }

        v75 = sub_29D937898();
        sub_29D69C6C0(v75, qword_2A1A2BF28);
        v76 = sub_29D937878();
        v77 = sub_29D93A2A8();
        a3 = v20;
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v93[0] = v79;
          *v78 = 136315138;
          v80 = sub_29D93AF08();
          v82 = sub_29D6C2364(v80, v81, v93);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_29D677000, v76, v77, "[%s] Heart rate disabled, returning cannot proceed", v78, 0xCu);
          sub_29D69417C(v79);
          MEMORY[0x29ED6BE30](v79, -1, -1);
          MEMORY[0x29ED6BE30](v78, -1, -1);
        }

        v42 = 1;
        v43 = 2;
        return a3(v42, v43);
      }
    }

    v47 = *(*sub_29D693E2C((a2 + 16), *(a2 + 40)) + 104);
    v48 = *(*v47 + *v22 + 16);
    v49 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v47 + v49));
    sub_29D6E8508(v47 + v48, v15);
    os_unfair_lock_unlock((v47 + v49));

    if (v27(v15, 1, v25) == 1)
    {
      sub_29D6E856C(v15, sub_29D6B805C);
      a3 = v20;
LABEL_19:
      if (qword_2A1A24660 != -1)
      {
        swift_once();
      }

      v67 = sub_29D937898();
      sub_29D69C6C0(v67, qword_2A1A2BF28);
      v68 = sub_29D937878();
      v69 = sub_29D93A2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v93[0] = v71;
        *v70 = 136315138;
        v72 = sub_29D93AF08();
        v74 = sub_29D6C2364(v72, v73, v93);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_29D677000, v68, v69, "[%s] Determined can proceed", v70, 0xCu);
        sub_29D69417C(v71);
        MEMORY[0x29ED6BE30](v71, -1, -1);
        MEMORY[0x29ED6BE30](v70, -1, -1);
      }

      v42 = 0;
      v43 = 128;
      return a3(v42, v43);
    }

    v64 = *MEMORY[0x29EDBA5A0];
    v65 = sub_29D9371B8();
    (*(v26 + 8))(v15, v25);
    v66 = [v65 isRequirementSatisfiedWithIdentifier_];

    a3 = v20;
    if (v66)
    {
      goto LABEL_19;
    }

    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v83 = sub_29D937898();
    sub_29D69C6C0(v83, qword_2A1A2BF28);
    v84 = sub_29D937878();
    v85 = sub_29D93A2A8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v93[0] = v87;
      *v86 = 136315138;
      v88 = sub_29D93AF08();
      v90 = sub_29D6C2364(v88, v89, v93);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_29D677000, v84, v85, "[%s] Wrist detect disabled, returning cannot proceed", v86, 0xCu);
      sub_29D69417C(v87);
      MEMORY[0x29ED6BE30](v87, -1, -1);
      MEMORY[0x29ED6BE30](v86, -1, -1);
    }

    v42 = 6;
    v43 = 2;
  }

  else if (([v19 ineligibilityReasons] & 0x39) != 0)
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v28 = sub_29D937898();
    sub_29D69C6C0(v28, qword_2A1A2BF28);
    v29 = v19;
    v30 = sub_29D937878();
    v31 = sub_29D93A2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 136315394;
      v34 = sub_29D93AF08();
      v36 = sub_29D6C2364(v34, v35, v93);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = [v29 ineligibilityReasonsDescription];
      v38 = sub_29D939D68();
      v40 = v39;

      v41 = sub_29D6C2364(v38, v40, v93);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_29D677000, v30, v31, "[%s] Cannot proceed due to location based onboarding ineligibility (%s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v33, -1, -1);
      MEMORY[0x29ED6BE30](v32, -1, -1);
    }

    v42 = [v29 ineligibilityReasons];
    v43 = 1;
  }

  else
  {
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v50 = sub_29D937898();
    sub_29D69C6C0(v50, qword_2A1A2BF28);
    v51 = v19;
    v52 = sub_29D937878();
    v53 = sub_29D93A2A8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v93[0] = v55;
      *v54 = 136315394;
      v56 = sub_29D93AF08();
      v58 = sub_29D6C2364(v56, v57, v93);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2080;
      v59 = [v51 ineligibilityReasonsDescription];
      v60 = sub_29D939D68();
      v62 = v61;

      v63 = sub_29D6C2364(v60, v62, v93);

      *(v54 + 14) = v63;
      _os_log_impl(&dword_29D677000, v52, v53, "[%s] Cannot proceed due to generic onboarding ineligibility (%s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v55, -1, -1);
      MEMORY[0x29ED6BE30](v54, -1, -1);
    }

    v42 = [v51 ineligibilityReasons];
    v43 = 0;
  }

  return a3(v42, v43);
}

uint64_t sub_29D6E7878(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (a1 == 1)
  {
    v3 = 64;
  }

  else if (a1 == 2)
  {
    a1 = 0;
    v3 = 128;
  }

  else
  {
    v4 = a1;
    if (qword_2A1A24660 != -1)
    {
      swift_once();
    }

    v5 = sub_29D937898();
    sub_29D69C6C0(v5, qword_2A1A2BF28);
    v6 = sub_29D937878();
    v7 = sub_29D93A298();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315394;
      v10 = sub_29D93AF08();
      v12 = sub_29D6C2364(v10, v11, &v14);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v4;
      _os_log_impl(&dword_29D677000, v6, v7, "[%s] User encountered notification authorization status other than authorized or denied (%ld), proceeding", v8, 0x16u);
      sub_29D69417C(v9);
      MEMORY[0x29ED6BE30](v9, -1, -1);
      MEMORY[0x29ED6BE30](v8, -1, -1);
    }

    a1 = 0;
    v3 = 128;
  }

  return a2(a1, v3);
}

uint64_t sub_29D6E7A24()
{
  sub_29D69417C((v0 + 16));
  sub_29D69417C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingStage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for AFibBurdenOnboardingCannotProgressReason(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingCannotProgressReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingCannotProgressReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_29D6E7C78(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_29D6E7C90(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_29D6E7D00()
{
  if (!qword_2A17B2080)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2080);
    }
  }
}

unint64_t sub_29D6E7D54()
{
  result = qword_2A17B2088;
  if (!qword_2A17B2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2088);
  }

  return result;
}

uint64_t sub_29D6E7DA8()
{
  sub_29D6E7F3C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v1, v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *sub_29D693E2C((*v0 + 16), *(*v0 + 40));
  v12 = sub_29D8F1944();
  v11[7] = 0;
  sub_29D6D05A0();
  sub_29D6E86B4(&qword_2A1A24AA0, sub_29D6D05A0);
  sub_29D938448();

  sub_29D6E86B4(&qword_2A17B2098, sub_29D6E7F3C);
  v9 = sub_29D938418();
  (*(v3 + 8))(v7, v2);
  return v9;
}

void sub_29D6E7F3C()
{
  if (!qword_2A17B2090)
  {
    sub_29D6D05A0();
    sub_29D6E86B4(&qword_2A1A24AA0, sub_29D6D05A0);
    v0 = sub_29D9380A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2090);
    }
  }
}

BOOL sub_29D6E7FD0(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      if ((a4 & 0xC0) == 0x40)
      {
        return ((a3 ^ a1) & 1) == 0;
      }
    }

    else if ((a4 & 0xC0) == 0x80 && !a3 && a4 == 128)
    {
      return 1;
    }
  }

  else if (a4 <= 0x3Fu)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a4 == 1 && a1 == a3)
        {
          return 1;
        }
      }

      else if (a1 <= 2)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            if (a4 == 2 && a3 == 1)
            {
              return 1;
            }
          }

          else if (a4 == 2 && a3 == 2)
          {
            return 1;
          }
        }

        else if (a4 == 2 && !a3)
        {
          return 1;
        }
      }

      else if (a1 > 4)
      {
        if (a1 == 5)
        {
          if (a4 == 2 && a3 == 5)
          {
            return 1;
          }
        }

        else if (a4 == 2 && a3 == 6)
        {
          return 1;
        }
      }

      else if (a1 == 3)
      {
        if (a4 == 2 && a3 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 2 && a3 == 4)
      {
        return 1;
      }
    }

    else if (!a4 && a1 == a3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_29D6E813C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a4 == 1)
    {
      return a1 == a3;
    }

    return 0;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (a4 != 2 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      if (a4 != 2 || a3 != 5)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3 != 6)
    {
      return 0;
    }
  }

  else if (a1 == 3)
  {
    if (a4 != 2 || a3 != 3)
    {
      return 0;
    }
  }

  else if (a4 != 2 || a3 != 4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_29D6E8234(uint64_t result)
{
  if (result == 7)
  {
    return 0;
  }

  if (byte_2A243CF88 == result)
  {
    v1 = 0;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF89 == result)
  {
    v1 = 1u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8A == result)
  {
    v1 = 2u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8B == result)
  {
    v1 = 3u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8C == result)
  {
    v1 = 4u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8D == result)
  {
    v1 = 5u;
    return *(&unk_2A243CF68 + v1 + 33);
  }

  if (byte_2A243CF8E == result)
  {
    return 7;
  }

  __break(1u);
  return result;
}

void sub_29D6E8304()
{
  if (!qword_2A17B20A0)
  {
    sub_29D6E8398();
    sub_29D6E86B4(&qword_2A17B20B0, sub_29D6E8398);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B20A0);
    }
  }
}

void sub_29D6E8398()
{
  if (!qword_2A17B20A8)
  {
    v0 = sub_29D938358();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B20A8);
    }
  }
}

uint64_t sub_29D6E8418(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 0x1FF;
  return v3(&v6);
}

uint64_t sub_29D6E845C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_29D6E7878(a1, *(v1 + 16));
}

uint64_t sub_29D6E8468(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2([a1 authorizationStatus]);
}

void sub_29D6E849C()
{
  if (!qword_2A17B20D0)
  {
    sub_29D695734(255, &qword_2A17B20C8);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B20D0);
    }
  }
}

uint64_t sub_29D6E8508(uint64_t a1, uint64_t a2)
{
  sub_29D6B805C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E856C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D6E85E4()
{
  if (!qword_2A17B20D8)
  {
    sub_29D6E8668();
    sub_29D695734(255, &qword_2A1A24850);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B20D8);
    }
  }
}

unint64_t sub_29D6E8668()
{
  result = qword_2A17B7B30;
  if (!qword_2A17B7B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B7B30);
  }

  return result;
}

uint64_t sub_29D6E86B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingProgressionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 9))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingProgressionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_29D6E87A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_29D6E87D0(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenOnboardingWarningReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AFibBurdenOnboardingWarningReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29D6E8960()
{
  result = qword_2A17B20E8;
  if (!qword_2A17B20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B20E8);
  }

  return result;
}

id sub_29D6E89B4(uint64_t a1)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v3 = result;
    v4 = sub_29D93A138();
    v5 = [v3 displayTypeWithIdentifier_];

    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x29EDC47D8]) initWithDisplayType:v5 healthStore:a1 shouldEmbedInScrollView:0];

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_29D6E8A7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 1)
  {
    sub_29D6EA34C(0, v5);
    v7 = (a2 + *(v6 + 80));
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *a2 = sub_29D9334A8();
    a2[1] = v8;
    a2[2] = sub_29D9334A8();
    a2[3] = v9;
    v10 = *MEMORY[0x29EDC43E0];
    sub_29D939D68();
    v23 = sub_29D939E88();
    v24 = v11;
    sub_29D939E38();
    a2[4] = v23;
    a2[5] = v24;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *v7 = sub_29D6EA5B4;
    v7[1] = v12;
    v13 = *MEMORY[0x29EDC15B8];
    v14 = sub_29D934538();
    (*(*(v14 - 8) + 104))(v7, v13, v14);
    v15 = *MEMORY[0x29EDC15E8];
    v16 = sub_29D934548();
    (*(*(v16 - 8) + 104))(a2, v15, v16);

    return a1;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *a2 = sub_29D9334A8();
    a2[1] = v18;
    *(a2 + 16) = 0;
    v19 = *MEMORY[0x29EDC1630];
    v20 = sub_29D934548();
    v21 = *(*(v20 - 8) + 104);

    return v21(a2, v19, v20);
  }
}

void sub_29D6E8E08(void *a1, void *a2)
{
  v3 = a2;
  sub_29D93A388();
  v4 = objc_allocWithZone(sub_29D936F58());
  v7 = sub_29D936F48();
  [v7 setAccessType_];
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }
}

void sub_29D6E8EC8(void *a1)
{
  v2 = sub_29D934548();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v140 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6E9F34(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v125 = v122 - v10;
  sub_29D6E9F00(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v11, v15);
  v18 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v139 = v122 - v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = (v122 - v23);
  v25 = v3;
  v28 = *(v3 + 56);
  v27 = v3 + 56;
  v26 = v28;
  v28((v122 - v23), 1, 1, v2);
  v123 = a1;
  v29 = sub_29D6E89B4(a1);
  if (v29)
  {
    v30 = v29;
    sub_29D6EA550(v24);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *v24 = sub_29D6EA5AC;
    v24[1] = v31;
    (*(v25 + 104))(v24, *MEMORY[0x29EDC15A0], v2);
    v26(v24, 0, 1, v2);
  }

  v138 = v18;
  sub_29D6E9F34(0, &qword_2A17B20F8, sub_29D6E9F00, MEMORY[0x29EDC9E90]);
  v32 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v129 = *(v13 + 72);
  v33 = swift_allocObject();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v124 = v24;
  v34 = qword_2A1A2C038;
  v35 = sub_29D939D28();
  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

  if (!v36)
  {
    __break(1u);
    goto LABEL_18;
  }

  v122[2] = v12;
  v122[1] = v33;
  v37 = v33 + v32;
  *v37 = v36;
  *(v37 + 8) = 0;
  v38 = *(v25 + 104);
  v38(v33 + v32, *MEMORY[0x29EDC1608], v2);
  v26((v33 + v32), 0, 1, v2);
  v136 = v26;
  v39 = (v33 + v32 + v129);
  v133 = v27;
  v127 = "verview_article_hero";
  *v39 = sub_29D9334A8();
  v39[1] = v40;
  v41 = *MEMORY[0x29EDC1610];
  v128 = v2;
  v38(v39, v41, v2);
  v135 = v38;
  v26(v39, 0, 1, v2);
  v42 = v129;
  v43 = v37 + 2 * v129;
  v137 = v25;
  *v43 = sub_29D9334A8();
  *(v43 + 8) = v44;
  *(v43 + 16) = 0;
  v45 = *MEMORY[0x29EDC1630];
  v46 = v34;
  v47 = v128;
  v38(v37 + 2 * v42, v45, v128);
  v48 = v136;
  v136(v37 + 2 * v42, 0, 1, v47);
  v49 = v37 + 3 * v42;
  *v49 = sub_29D9334A8();
  *(v49 + 8) = v50;
  *(v49 + 16) = 0;
  v130 = v45;
  v51 = v45;
  v52 = v128;
  v134 = v25 + 104;
  v135(v49, v51, v128);
  v48(v49, 0, 1, v52);
  v126 = v37;
  v53 = (v37 + 4 * v42);
  v131 = 0xD000000000000013;
  *v53 = sub_29D9334A8();
  v53[1] = v54;
  v132 = v46;
  v53[2] = sub_29D9334A8();
  v53[3] = v55;
  v56 = *MEMORY[0x29EDC43E0];
  v57 = sub_29D939D68();
  v143 = 0xD00000000000003ELL;
  v144 = 0x800000029D95A520;
  v141 = v57;
  v142 = v58;
  v59 = v42;
  v141 = sub_29D939E88();
  v142 = v60;
  sub_29D939E38();
  v61 = v142;
  v53[4] = v141;
  v53[5] = v61;
  v62 = v125;
  sub_29D9336E8();
  v63 = sub_29D9336F8();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v62, 1, v63);
  v67 = v128;
  if (v65 == 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_29D6EA34C(0, v66);
  v69 = *(v68 + 80);
  (*(v64 + 32))(v53 + v69, v62, v63);
  v70 = *MEMORY[0x29EDC15C0];
  v71 = sub_29D934538();
  (*(*(v71 - 8) + 104))(v53 + v69, v70, v71);
  v72 = v135;
  v135(v53, *MEMORY[0x29EDC15E8], v67);
  v73 = v136;
  v136(v53, 0, 1, v67);
  v74 = v126;
  v75 = (v126 + 5 * v59);
  *v75 = sub_29D9334A8();
  v75[1] = v76;
  v75[2] = 0;
  LODWORD(v125) = *MEMORY[0x29EDC15D0];
  v77 = v125;
  v72(v74 + 5 * v59, v125, v67);
  v73(v74 + 5 * v59, 0, 1, v67);
  sub_29D6EA488(v124, v74 + 6 * v59);
  v78 = 7 * v59;
  v79 = 8 * v59;
  v122[0] = v79;
  v80 = (v74 + v78);
  *v80 = sub_29D9334A8();
  v80[1] = v81;
  v80[2] = 0;
  v82 = v135;
  v135(v80, v77, v67);
  v83 = v136;
  v136(v80, 0, 1, v67);
  v84 = v74 + v79;
  *v84 = sub_29D9334A8();
  *(v84 + 8) = v85;
  *(v84 + 16) = 0;
  v82(v74 + v79, v130, v67);
  v83(v74 + v79, 0, 1, v67);
  v86 = v129;
  v87 = v122[0] + v129;
  sub_29D6E8A7C(v123, (v74 + v122[0] + v129));
  v83(v74 + v87, 0, 1, v67);
  v88 = (v74 + 10 * v86);
  *v88 = sub_29D9334A8();
  v88[1] = v89;
  v88[2] = 0;
  v90 = v135;
  v135(v88, v125, v67);
  v83(v88, 0, 1, v67);
  v91 = v74 + 11 * v86;
  *v91 = sub_29D9334A8();
  *(v91 + 8) = v92;
  *(v91 + 16) = 0;
  v90(v91, v130, v67);
  v93 = v136;
  v136(v91, 0, 1, v67);
  v94 = (v74 + 12 * v86);
  *v94 = sub_29D9334A8();
  v94[1] = v95;
  v94[2] = 0;
  v90(v94, v125, v67);
  v93(v94, 0, 1, v67);
  v96 = v74 + 13 * v86;
  *v96 = sub_29D9334A8();
  *(v96 + 8) = v97;
  *(v96 + 16) = 0;
  v90(v96, v130, v67);
  v98 = v136;
  v136(v96, 0, 1, v67);
  v99 = (v74 + 14 * v86);
  *v99 = sub_29D9334A8();
  v99[1] = v100;
  v99[2] = 0;
  v90(v99, v125, v67);
  v98(v99, 0, 1, v67);
  v125 = (16 * v86);
  v101 = v126;
  v102 = v86;
  v103 = v126 + 15 * v86;
  *v103 = sub_29D9334A8();
  *(v103 + 8) = v104;
  *(v103 + 16) = 0;
  v105 = v130;
  v106 = v135;
  v135(v103, v130, v67);
  v107 = v136;
  v136(v103, 0, 1, v67);
  v108 = &v125[v101];
  *v108 = sub_29D9334A8();
  *(v108 + 1) = v109;
  v108[16] = 0;
  v106(v108, v105, v67);
  v107(v108, 0, 1, v67);
  v110 = v138;
  v111 = (v137 + 48);
  v112 = (v137 + 32);
  v113 = MEMORY[0x29EDCA190];
  v114 = 17;
  v115 = v67;
  v116 = v67;
  do
  {
    v117 = v139;
    sub_29D6EA488(v101, v139);
    sub_29D6EA4EC(v117, v110);
    if ((*v111)(v110, 1, v115) == 1)
    {
      sub_29D6EA550(v110);
    }

    else
    {
      v118 = *v112;
      (*v112)(v140, v110, v115);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_29D68FA8C(0, v113[2] + 1, 1, v113);
      }

      v120 = v113[2];
      v119 = v113[3];
      if (v120 >= v119 >> 1)
      {
        v113 = sub_29D68FA8C(v119 > 1, v120 + 1, 1, v113);
      }

      v113[2] = v120 + 1;
      v121 = v113 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v120;
      v115 = v116;
      v118(v121, v140, v116);
      v110 = v138;
    }

    v101 += v102;
    --v114;
  }

  while (v114);
  sub_29D6EA550(v124);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

void sub_29D6E9F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6E9FFC()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D6EA0A4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

void sub_29D6EA144()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29D6EA208()
{
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 48) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  v1 = sub_29D7AF2C4(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  swift_arrayDestroy();
  return v1;
}

void sub_29D6EA34C(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B2100)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D6C5040(255, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D934538();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B2100);
    }
  }
}

uint64_t sub_29D6EA488(uint64_t a1, uint64_t a2)
{
  sub_29D6E9F00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6EA4EC(uint64_t a1, uint64_t a2)
{
  sub_29D6E9F00(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6EA550(uint64_t a1)
{
  sub_29D6E9F00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BloodPressurePDFPregnancyChart()
{
  result = qword_2A17B2110;
  if (!qword_2A17B2110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6EA674()
{
  sub_29D9339F8();
  if (v0 <= 0x3F)
  {
    sub_29D6EA774(319);
    if (v1 <= 0x3F)
    {
      sub_29D6A08F8();
      if (v2 <= 0x3F)
      {
        sub_29D6F0DFC(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
        if (v3 <= 0x3F)
        {
          sub_29D6EA5E0(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_29D6EA7A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v143 = a1;
  v136 = a2;
  sub_29D6D6C48();
  v127 = v2;
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v126 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v123 = &v116 - v8;
  sub_29D6D6634();
  v135 = v9;
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v133 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F17A0(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F08C0();
  v19 = *(v18 - 8);
  v139 = v18;
  v140 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18, v21);
  v137 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F07C8();
  v144 = v23;
  v141 = *(v23 - 8);
  v24 = *(v141 + 64);
  MEMORY[0x2A1C7C4A8](v23, v25);
  v138 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0650();
  v124 = v27;
  v122 = *(v27 - 8);
  v28 = *(v122 + 64);
  MEMORY[0x2A1C7C4A8](v27, v29);
  v145 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0488();
  v130 = v31;
  v128 = *(v31 - 8);
  v32 = *(v128 + 64);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v125 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F024C();
  v134 = v35;
  v132 = *(v35 - 8);
  v36 = *(v132 + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v131 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v142 = &v116 - v41;
  sub_29D6F17D4(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v42 - 8, v44);
  v46 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_29D6EB490();
  v148 = v47;
  sub_29D69AB60();
  v48 = sub_29D9392F8();
  v50 = v49;
  v52 = v51;
  sub_29D939198();
  v53 = sub_29D939168();
  (*(*(v53 - 8) + 56))(v46, 1, 1, v53);
  sub_29D9391A8();
  sub_29D6F1810(v46, sub_29D6F17D4);
  v54 = sub_29D9392C8();
  v56 = v55;
  v58 = v57;

  sub_29D69ABB4(v48, v50, v52 & 1);

  v59 = [objc_opt_self() systemGrayColor];
  v147 = sub_29D939528();
  v119 = sub_29D9392B8();
  v121 = v60;
  v120 = v61;
  v63 = v62;
  sub_29D69ABB4(v54, v56, v58 & 1);

  v64 = v143;
  v146 = v143;
  sub_29D6F0924();
  sub_29D6F0C40();
  v65 = v137;
  sub_29D937E58();
  v151 = &unk_2A243CF90;
  v66 = sub_29D938028();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v118 = v66;
  v117 = v68;
  v116 = v67 + 56;
  (v68)(v17, 1, 1);
  sub_29D6F0DFC(0, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  v70 = v69;
  v71 = sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0);
  v72 = sub_29D6F0E4C();
  v73 = v138;
  v74 = v139;
  sub_29D939358();
  v129 = v17;
  sub_29D6F1810(v17, sub_29D6F17A0);
  (*(v140 + 8))(v65, v74);
  sub_29D6F0EE0(0);
  v76 = v75;
  v147 = v74;
  v148 = v70;
  v149 = v71;
  v150 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0);
  v79 = v144;
  sub_29D939338();
  (*(v141 + 8))(v73, v79);
  v80 = v64 + *(type metadata accessor for BloodPressurePDFPregnancyChart() + 20);
  v81 = sub_29D9339F8();
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v82 = v64;
  result = sub_29D939CD8();
  if (result)
  {
    v84 = *(v81 - 8);
    v139 = v78;
    v140 = OpaqueTypeConformance2;
    v85 = v84;
    v86 = *(v84 + 16);
    v141 = v63;
    v87 = v123;
    v86(v123, v82, v81);
    v88 = v127;
    v86((v87 + *(v127 + 48)), v80, v81);
    v89 = v126;
    sub_29D6F1870(v87, v126, sub_29D6D6C48);
    v90 = *(v88 + 48);
    v91 = *(v85 + 32);
    v92 = v133;
    v91(v133, v89, v81);
    v138 = v76;
    v93 = *(v85 + 8);
    v93(v89 + v90, v81);
    sub_29D6F1E34(v87, v89, sub_29D6D6C48);
    v94 = *(v88 + 48);
    v95 = v135;
    v91((v92 + *(v135 + 9)), v89 + v94, v81);
    v93(v89, v81);
    v96 = v129;
    v117(v129, 1, 1, v118);
    v147 = v144;
    v148 = v138;
    v149 = v140;
    v150 = v139;
    v97 = swift_getOpaqueTypeConformance2();
    v98 = sub_29D6D66C8();
    v99 = v125;
    v100 = v124;
    v101 = v145;
    sub_29D939348();
    sub_29D6F1810(v96, sub_29D6F17A0);
    sub_29D6F1810(v92, sub_29D6D6634);
    v102 = (*(v122 + 8))(v101, v100);
    v145 = &v116;
    MEMORY[0x2A1C7C4A8](v102, v103);
    *(&v116 - 2) = v143;
    sub_29D6F0F1C();
    v147 = v100;
    v148 = v95;
    v149 = v97;
    v150 = v98;
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2260, sub_29D6F0F1C);
    v104 = v142;
    v105 = v130;
    sub_29D939328();
    (*(v128 + 8))(v99, v105);
    LOBYTE(v147) = v120 & 1;
    v106 = v132;
    v107 = *(v132 + 16);
    v108 = v131;
    v109 = v104;
    v110 = v134;
    v107(v131, v109, v134);
    LOBYTE(v97) = v147;
    v111 = v136;
    v112 = v119;
    v113 = v121;
    *v136 = v119;
    v111[1] = v113;
    *(v111 + 16) = v97;
    v111[3] = v141;
    sub_29D6F01E4();
    v107(v111 + *(v114 + 48), v108, v110);
    sub_29D6F18E0(v112, v113, v97);
    v115 = *(v106 + 8);
    sub_29D935E88();
    v115(v142, v110);
    v115(v108, v110);
    sub_29D69ABB4(v112, v113, v147);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29D6EB490()
{
  sub_29D6F1DA0(0, &qword_2A17B22C8, sub_29D6F1E00);
  v163 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v165 = &v156 - v4;
  sub_29D6A08F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v166 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_29D9339F8();
  v172 = *(v180 - 8);
  v9 = *(v172 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v180, v10);
  v158 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v167 = &v156 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v156 = &v156 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v159 = &v156 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v169 = &v156 - v24;
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v178 = &v156 - v27;
  MEMORY[0x2A1C7C4A8](v26, v28);
  v30 = &v156 - v29;
  v31 = type metadata accessor for BloodPressurePDFSampleInterval();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v31, v34);
  v157 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35, v37);
  v162 = &v156 - v39;
  v41 = MEMORY[0x2A1C7C4A8](v38, v40);
  v160 = &v156 - v42;
  v44 = MEMORY[0x2A1C7C4A8](v41, v43);
  v161 = &v156 - v45;
  v47 = MEMORY[0x2A1C7C4A8](v44, v46);
  v164 = &v156 - v48;
  v50 = MEMORY[0x2A1C7C4A8](v47, v49);
  v52 = &v156 - v51;
  v54 = MEMORY[0x2A1C7C4A8](v50, v53);
  v168 = &v156 - v55;
  MEMORY[0x2A1C7C4A8](v54, v56);
  v58 = &v156 - v57;
  sub_29D6F1E00(0);
  v60 = *(*(v59 - 8) + 64);
  v62 = MEMORY[0x2A1C7C4A8](v59 - 8, v61);
  v171 = &v156 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v62, v64);
  v66 = (&v156 - v65);
  v173 = type metadata accessor for BloodPressurePDFPregnancyChart();
  v174 = v0;
  v67 = *(v0 + v173[6]);
  v68 = *(v67 + 16);
  v181 = v31;
  v179 = v32;
  v170 = v66;
  v177 = v30;
  if (v68)
  {
    v69 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v176 = v67;
    v70 = v67 + v69;
    sub_29D6F1870(v67 + v69, v58, type metadata accessor for BloodPressurePDFSampleInterval);
    v175 = v68;
    v71 = v68 == 1;
    v72 = v32;
    if (!v71)
    {
      v66 = (v172 + 8);
      v110 = 1;
      while (v110 < *(v176 + 16))
      {
        sub_29D6F1870(v70 + *(v72 + 72) * v110, v52, type metadata accessor for BloodPressurePDFSampleInterval);
        v111 = &v58[*(v31 + 20)];
        sub_29D9331A8();
        v112 = &v52[*(v31 + 20)];
        v113 = v178;
        sub_29D9331A8();
        LOBYTE(v112) = sub_29D933978();
        v114 = *v66;
        v115 = v180;
        (*v66)(v113, v180);
        v114(v30, v115);
        if (v112)
        {
          sub_29D6F1810(v58, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D6F1E34(v52, v58, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D6F1810(v52, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v110;
        v31 = v181;
        v72 = v179;
        if (v175 == v110)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_4:
    v66 = v170;
    sub_29D6F1E34(v58, v170, type metadata accessor for BloodPressurePDFSampleInterval);
    v73 = *(v72 + 56);
    v73(v66, 0, 1, v31);
  }

  else
  {
    v73 = *(v32 + 56);
    v73(v66, 1, 1, v31);
    v72 = v32;
  }

  v74 = *(v174 + v173[8]);
  v75 = *(v74 + 16);
  v31 = v168;
  if (v75)
  {
    v76 = v74 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v175 = v73;
    v176 = v76;
    sub_29D6F1870(v76, v168, type metadata accessor for BloodPressurePDFSampleInterval);
    v77 = v164;
    if (v75 != 1)
    {
      v66 = (v172 + 8);
      v116 = 1;
      while (v116 < *(v74 + 16))
      {
        sub_29D6F1870(v176 + *(v72 + 72) * v116, v77, type metadata accessor for BloodPressurePDFSampleInterval);
        v117 = v181;
        v118 = v31 + *(v181 + 20);
        v119 = v177;
        sub_29D9331A8();
        v120 = v77 + *(v117 + 20);
        v121 = v178;
        sub_29D9331A8();
        LOBYTE(v120) = sub_29D933978();
        v122 = *v66;
        v123 = v121;
        v124 = v180;
        (*v66)(v123, v180);
        v122(v119, v124);
        if (v120)
        {
          sub_29D6F1810(v31, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D6F1E34(v77, v31, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D6F1810(v77, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v116;
        v72 = v179;
        if (v75 == v116)
        {
          goto LABEL_8;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_8:
    v78 = v31;
    v31 = v171;
    sub_29D6F1E34(v78, v171, type metadata accessor for BloodPressurePDFSampleInterval);
    v79 = 0;
    v66 = v170;
    v73 = v175;
  }

  else
  {
    v79 = 1;
    v31 = v171;
  }

  v80 = v181;
  v73(v31, v79, 1, v181);
  v81 = v72;
  v82 = v166;
  sub_29D6F1870(v174 + v173[7], v166, sub_29D6A08F8);
  v83 = v172;
  v84 = v180;
  v85 = (*(v172 + 48))(v82, 1, v180);
  v86 = v167;
  if (v85 == 1)
  {
    sub_29D6F1810(v82, sub_29D6A08F8);
    if (qword_2A1A24658 == -1)
    {
LABEL_12:
      v87 = sub_29D937898();
      sub_29D69C6C0(v87, qword_2A1A2BF10);
      v88 = sub_29D937878();
      v89 = sub_29D93A288();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = v31;
        v92 = swift_slowAlloc();
        v182[0] = v92;
        *v90 = 136642819;
        *(v90 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, v182);
        _os_log_impl(&dword_29D677000, v88, v89, "[%{sensitive}s] Most recent start date not found", v90, 0xCu);
        sub_29D69417C(v92);
        v93 = v92;
        v31 = v91;
        MEMORY[0x29ED6BE30](v93, -1, -1);
        MEMORY[0x29ED6BE30](v90, -1, -1);
      }

      if (qword_2A17B0D98 != -1)
      {
        swift_once();
      }

      v94 = sub_29D9334A8();
      goto LABEL_17;
    }

LABEL_52:
    swift_once();
    goto LABEL_12;
  }

  v179 = 0x800000029D95A780;
  (*(v83 + 32))(v169, v82, v84);
  v96 = v31;
  v97 = *(v163 + 48);
  v98 = v165;
  sub_29D6F1870(v66, v165, sub_29D6F1E00);
  sub_29D6F1870(v96, v98 + v97, sub_29D6F1E00);
  v99 = *(v81 + 48);
  v100 = v99(v98, 1, v80);
  v101 = v99(v98 + v97, 1, v80);
  if (v100 == 1)
  {
    if (v101 == 1)
    {
      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v102 = sub_29D937898();
      sub_29D69C6C0(v102, qword_2A1A2BF10);
      v103 = sub_29D937878();
      v104 = sub_29D93A288();
      v105 = os_log_type_enabled(v103, v104);
      v106 = v169;
      if (v105)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v182[0] = v108;
        *v107 = 136642819;
        *(v107 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, v182);
        _os_log_impl(&dword_29D677000, v103, v104, "[%{sensitive}s] None found", v107, 0xCu);
        sub_29D69417C(v108);
        MEMORY[0x29ED6BE30](v108, -1, -1);
        MEMORY[0x29ED6BE30](v107, -1, -1);
      }

      v109 = v172;
      if (qword_2A17B0D98 != -1)
      {
        swift_once();
      }

      v94 = sub_29D9334A8();
      (*(v109 + 8))(v106, v84);
      v31 = v171;
    }

    else
    {
      v134 = v157;
      sub_29D6F1E34(v165 + v97, v157, type metadata accessor for BloodPressurePDFSampleInterval);
      v135 = v134 + *(v80 + 20);
      v136 = v177;
      sub_29D9331A8();
      v94 = sub_29D6EF914(v136, 0xD000000000000022, v179);
      v137 = *(v172 + 8);
      v137(v136, v84);
      sub_29D6F1810(v134, type metadata accessor for BloodPressurePDFSampleInterval);
      v137(v169, v84);
      v31 = v171;
    }
  }

  else
  {
    v125 = 0x800000029D95A760;
    if (v101 == 1)
    {
      v126 = 0xD000000000000022;
      v127 = v162;
      sub_29D6F1E34(v165, v162, type metadata accessor for BloodPressurePDFSampleInterval);
      v128 = v172;
      v129 = *(v172 + 16);
      v129(v86, v169, v84);
      v130 = v127 + *(v181 + 20);
      v131 = v86;
      v132 = v158;
      sub_29D933178();
      v133 = v173[5];
      if (sub_29D933978())
      {
        (*(v128 + 8))(v131, v84);
        v129(v131, v132, v84);
        v125 = v179;
      }

      else
      {
        v126 = 0xD00000000000001DLL;
      }

      v94 = sub_29D6EF914(v131, v126, v125);

      v154 = *(v128 + 8);
      v154(v132, v84);
      v154(v131, v84);
      sub_29D6F1810(v162, type metadata accessor for BloodPressurePDFSampleInterval);
      v154(v169, v84);
      v31 = v171;
    }

    else
    {
      v178 = 0x800000029D95A760;
      v138 = 0xD000000000000022;
      v139 = v165;
      v140 = v161;
      sub_29D6F1E34(v165, v161, type metadata accessor for BloodPressurePDFSampleInterval);
      v141 = v160;
      sub_29D6F1E34(v139 + v97, v160, type metadata accessor for BloodPressurePDFSampleInterval);
      v142 = v181;
      v143 = v140 + *(v181 + 20);
      v144 = v159;
      sub_29D933178();
      v145 = *(v142 + 20);
      v146 = v177;
      sub_29D9331A8();
      LOBYTE(v143) = sub_29D933968();
      v147 = v172;
      v148 = *(v172 + 8);
      v148(v146, v84);
      if (v143)
      {
        v149 = *(v147 + 16);
        v150 = v156;
        v151 = v180;
        v149(v156, v169, v180);
        v152 = v173[5];
        if (sub_29D933978())
        {
          v148(v150, v151);
          v149(v150, v144, v151);
          v153 = v179;
          v66 = v170;
          v31 = v171;
        }

        else
        {
          v138 = 0xD00000000000001DLL;
          v66 = v170;
          v31 = v171;
          v153 = v178;
        }

        v94 = sub_29D6EF914(v150, v138, v153);

        v148(v150, v151);
        v148(v144, v151);
        sub_29D6F1810(v160, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D6F1810(v161, type metadata accessor for BloodPressurePDFSampleInterval);
        v148(v169, v151);
      }

      else
      {
        sub_29D9331A8();
        v94 = sub_29D6EF914(v146, 0xD000000000000022, v179);
        v155 = v180;
        v148(v146, v180);
        v148(v144, v155);
        sub_29D6F1810(v141, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D6F1810(v161, type metadata accessor for BloodPressurePDFSampleInterval);
        v148(v169, v155);
        v66 = v170;
        v31 = v171;
      }
    }
  }

LABEL_17:
  sub_29D6F1810(v31, sub_29D6F1E00);
  sub_29D6F1810(v66, sub_29D6F1E00);
  return v94;
}

uint64_t sub_29D6EC5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  sub_29D6F1DA0(0, &qword_2A17B22B0, sub_29D6F098C);
  v4 = *(v3 - 8);
  v70 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v6);
  v69 = &v55 - v7;
  v8 = type metadata accessor for BloodPressurePDFPregnancyChart();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8, v12);
  v63 = v13;
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v14;
  sub_29D6F098C();
  v61 = v15;
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15, v17);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v72 = &v55 - v22;
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v66 = &v55 - v25;
  MEMORY[0x2A1C7C4A8](v24, v26);
  v28 = &v55 - v27;
  v77 = *(a1 + *(v9 + 32));
  v64 = a1;
  v65 = type metadata accessor for BloodPressurePDFPregnancyChart;
  sub_29D6F1870(a1, v14, type metadata accessor for BloodPressurePDFPregnancyChart);
  v29 = *(v10 + 80);
  v60 = (v29 + 16) & ~v29;
  v30 = swift_allocObject();
  v62 = type metadata accessor for BloodPressurePDFPregnancyChart;
  sub_29D6F1E34(v14, v30 + ((v29 + 16) & ~v29), type metadata accessor for BloodPressurePDFPregnancyChart);
  sub_29D6EA774(0);
  sub_29D9339F8();
  sub_29D6F0A90();
  v58 = v31;
  v57 = sub_29D6F00D4(&qword_2A17B21A0, sub_29D6EA774);
  sub_29D6F0BA8();
  v33 = v32;
  v34 = sub_29D938F48();
  v35 = sub_29D937EA8();
  sub_29D935E88();
  v73 = v35;
  v74 = MEMORY[0x29EDBCA98];
  v75 = MEMORY[0x29EDB8698];
  v76 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890]);
  v73 = v33;
  v74 = v34;
  v75 = OpaqueTypeConformance2;
  v76 = v37;
  v55 = swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B22B8, type metadata accessor for BloodPressurePDFSampleInterval);
  v56 = v28;
  sub_29D9397B8();
  v73 = *(v64 + *(v9 + 40));
  v38 = v59;
  sub_29D6F1870(v64, v59, v65);
  v39 = v60;
  v40 = swift_allocObject();
  sub_29D6F1E34(v38, v40 + v39, v62);
  sub_29D935E88();
  v41 = v66;
  sub_29D9397B8();
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = v72;
  v45 = v61;
  v43(v72, v28, v61);
  v46 = v67;
  v47 = v41;
  v43(v67, v41, v45);
  sub_29D6F0CC0();
  v48 = v69;
  v43(v69, v44, v45);
  v49 = v70;
  v50 = *(v70 + 56);
  v43(&v48[v50], v46, v45);
  v51 = *(v42 + 32);
  v52 = v71;
  v51(v71, v48, v45);
  v51(v52 + *(v49 + 56), &v48[v50], v45);
  v53 = *(v42 + 8);
  v53(v47, v45);
  v53(v56, v45);
  v53(v46, v45);
  return (v53)(v72, v45);
}

uint64_t sub_29D6ECBEC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v71 = sub_29D938F48();
  v5 = *(*(v71 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v71, v6);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F1D4C(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v66 = &v56 - v11;
  sub_29D6F1734(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v59 = &v56 - v18;
  v67 = sub_29D937EA8();
  v65 = *(v67 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v67, v20);
  v61 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0BA8();
  v69 = *(v22 - 8);
  v70 = v22;
  v23 = *(v69 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v68 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D9339F8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = &v56 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = &v56 - v38;
  sub_29D6ED340();
  v62 = sub_29D939528();
  v40 = *(type metadata accessor for BloodPressurePDFSampleInterval() + 20);
  v64 = a1;
  sub_29D9331A8();
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v41 = sub_29D939CC8();
  v60 = v27;
  if (v41)
  {
    (*(v27 + 32))(v39, v36, v26);
  }

  else
  {
    (*(v27 + 8))(v36, v26);
    (*(v27 + 16))(v39, a2, v26);
  }

  sub_29D938C18();
  sub_29D937D48();

  sub_29D938C18();
  v58 = v39;
  sub_29D933178();
  sub_29D937D48();

  v64 = *(v60 + 8);
  v64(v32, v26);
  sub_29D938C18();
  v73 = 0;
  sub_29D937D48();

  v42 = v61;
  sub_29D937E98();
  v73 = v62;
  v43 = MEMORY[0x29EDBCA98];
  v45 = v67;
  v44 = v68;
  sub_29D937C48();
  (*(v65 + 8))(v42, v45);
  v46 = *(v71 + 20);
  v47 = *MEMORY[0x29EDBC6F8];
  v48 = sub_29D938C38();
  v49 = v57;
  (*(*(v48 - 8) + 104))(&v57[v46], v47, v48);
  sub_29D938E28();
  *v49 = v50;
  v49[1] = v51;
  v49[2] = v52;
  v49[3] = v53;
  v73 = v45;
  v74 = v43;
  v75 = MEMORY[0x29EDB8698];
  v76 = MEMORY[0x29EDBCA88];
  swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890]);
  v54 = v70;
  sub_29D937C88();

  sub_29D6F1810(v49, MEMORY[0x29EDBC890]);
  (*(v69 + 8))(v44, v54);
  return (v64)(v58, v26);
}

id sub_29D6ED340()
{
  v0 = [objc_opt_self() pregnancyColors];
  v1 = [v0 keyColor];

  if (v1)
  {
    return v1;
  }

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2BF10);
  v4 = sub_29D937878();
  v5 = sub_29D93A288();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136642819;
    *(v6 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, &v9);
    _os_log_impl(&dword_29D677000, v4, v5, "[%{sensitive}s] Could not fetch key color", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v8 = [objc_opt_self() systemMintColor];

  return v8;
}

uint64_t sub_29D6ED500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v68 = sub_29D938F48();
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v68, v6);
  v69 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F1D4C(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v63 = v57 - v11;
  sub_29D6F1734(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v60 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v57[2] = v57 - v18;
  v64 = sub_29D937EA8();
  v61 = *(v64 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v64, v20);
  v59 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0BA8();
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = *(v66 + 64);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v65 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29D9339F8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v32 = v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v30, v33);
  v36 = v57 - v35;
  MEMORY[0x2A1C7C4A8](v34, v37);
  v39 = v57 - v38;
  sub_29D6ED340();
  sub_29D939528();
  v58 = sub_29D9395A8();

  v40 = *(type metadata accessor for BloodPressurePDFSampleInterval() + 20);
  v62 = a1;
  sub_29D9331A8();
  sub_29D933948();
  v41 = *(v27 + 8);
  v41(v32, v26);
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v42 = sub_29D939CC8();
  v57[1] = v27 + 8;
  v71 = v41;
  if (v42)
  {
    (*(v27 + 32))(v39, v36, v26);
  }

  else
  {
    v41(v36, v26);
    (*(v27 + 16))(v39, a2, v26);
  }

  sub_29D938C18();
  sub_29D937D48();

  sub_29D938C18();
  v57[0] = v39;
  sub_29D933178();
  sub_29D937D48();

  v71(v32, v26);
  sub_29D938C18();
  v72 = 0;
  sub_29D937D48();

  v43 = v59;
  sub_29D937E98();
  v72 = v58;
  v44 = MEMORY[0x29EDBCA88];
  v45 = v64;
  v46 = v65;
  sub_29D937C48();
  (*(v61 + 8))(v43, v45);
  v47 = *(v68 + 20);
  v48 = *MEMORY[0x29EDBC6F8];
  v49 = sub_29D938C38();
  v50 = v69;
  (*(*(v49 - 8) + 104))(&v69[v47], v48, v49);
  sub_29D938E28();
  *v50 = v51;
  v50[1] = v52;
  v50[2] = v53;
  v50[3] = v54;
  v72 = v45;
  v73 = MEMORY[0x29EDBCA98];
  v74 = MEMORY[0x29EDB8698];
  v75 = v44;
  swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890]);
  v55 = v67;
  sub_29D937C88();

  sub_29D6F1810(v50, MEMORY[0x29EDBC890]);
  (*(v66 + 8))(v46, v55);
  return (v71)(v57[0], v26);
}

uint64_t sub_29D6EDC90()
{
  v0 = sub_29D937D68();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v3 = sub_29D937CB8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D937BE8();
  return sub_29D937FA8();
}

uint64_t sub_29D6EDDB0()
{
  if (qword_2A17B0DB8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  return sub_29D937BD8();
}

uint64_t sub_29D6EDE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v2 = sub_29D937D68();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v5 = sub_29D937CB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v8 = type metadata accessor for BloodPressurePDFPregnancyChart();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v11);
  sub_29D6F18F0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29D933CC8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29D937CF8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  (*(v18 + 104))(v22, *MEMORY[0x29EDB9CB8], v17);
  v26 = sub_29D933CE8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_29D937CD8();
  sub_29D6F1810(v16, sub_29D6F18F0);
  (*(v18 + 8))(v22, v17);
  sub_29D6F1870(v30[0], v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFPregnancyChart);
  v27 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v28 = swift_allocObject();
  sub_29D6F1E34(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for BloodPressurePDFPregnancyChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D6F0FB0();
  sub_29D6F153C(&qword_2A17B2230, sub_29D6F0FB0, sub_29D6F1350);
  return sub_29D937F88();
}

uint64_t sub_29D6EE21C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v229 = a1;
  v231 = a2;
  sub_29D6F1038(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v220 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F193C(0, &qword_2A17B2288, MEMORY[0x29EDB8550], sub_29D6F1114);
  v217 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v216 = &v178 - v9;
  sub_29D6F10E0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8, v12);
  v218 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x29EDB86C8];
  sub_29D6F193C(0, &qword_2A17B2290, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v206 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v205 = &v178 - v18;
  sub_29D6F119C(0, &qword_2A17B2210, sub_29D6F121C, v14);
  v215 = v19;
  v214 = *(v19 - 8);
  v20 = *(v214 + 64);
  MEMORY[0x2A1C7C4A8](v19, v21);
  v207 = &v178 - v22;
  v23 = sub_29D937EE8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v202 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_29D937F08();
  v203 = *(v204 - 8);
  v27 = *(v203 + 64);
  v29 = MEMORY[0x2A1C7C4A8](v204, v28);
  v213 = &v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v212 = &v178 - v32;
  v33 = sub_29D937E18();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v33 - 8, v35);
  v201 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29D937E48();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v37 - 8, v39);
  v198 = &v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_29D933828();
  v195 = *(v197 - 8);
  v41 = *(v195 + 64);
  MEMORY[0x2A1C7C4A8](v197, v42);
  v192 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_29D9338A8();
  v187 = *(v189 - 8);
  v44 = *(v187 + 64);
  MEMORY[0x2A1C7C4A8](v189, v45);
  v186 = &v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_29D9338F8();
  v188 = *(v193 - 8);
  v47 = *(v188 + 64);
  v49 = MEMORY[0x2A1C7C4A8](v193, v48);
  v184 = &v178 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x2A1C7C4A8](v49, v51);
  v185 = &v178 - v53;
  MEMORY[0x2A1C7C4A8](v52, v54);
  v190 = &v178 - v55;
  sub_29D6F1D4C(0, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v196 = v56;
  v194 = *(v56 - 8);
  v57 = *(v194 + 64);
  MEMORY[0x2A1C7C4A8](v56, v58);
  v191 = &v178 - v59;
  sub_29D6F121C();
  v200 = v60;
  v199 = *(v60 - 8);
  v61 = *(v199 + 64);
  v63 = MEMORY[0x2A1C7C4A8](v60, v62);
  v210 = &v178 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v63, v65);
  v209 = &v178 - v66;
  sub_29D6F1114();
  v68 = *(*(v67 - 8) + 64);
  v70 = MEMORY[0x2A1C7C4A8](v67 - 8, v69);
  v211 = &v178 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v70, v72);
  v219 = &v178 - v73;
  v74 = sub_29D937BE8();
  v225 = *(v74 - 8);
  v226 = v74;
  v75 = *(v225 + 64);
  v77 = MEMORY[0x2A1C7C4A8](v74, v76);
  v224 = &v178 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v77, v79);
  v228 = &v178 - v80;
  sub_29D6F106C(0, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
  v82 = v81;
  v230 = *(v81 - 8);
  v83 = *(v230 + 64);
  MEMORY[0x2A1C7C4A8](v81, v84);
  v227 = &v178 - v85;
  v221 = sub_29D933CC8();
  v86 = *(v221 - 8);
  v87 = *(v86 + 64);
  MEMORY[0x2A1C7C4A8](v221, v88);
  v90 = &v178 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_29D933CE8();
  v222 = *(v91 - 8);
  v223 = v91;
  v92 = *(v222 + 64);
  MEMORY[0x2A1C7C4A8](v91, v93);
  v95 = &v178 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8();
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v96 - 8, v98);
  v100 = &v178 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_29D9339F8();
  v102 = *(v101 - 8);
  v103 = *(v102 + 64);
  v105 = MEMORY[0x2A1C7C4A8](v101, v104);
  v208 = &v178 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x2A1C7C4A8](v105, v107);
  v110 = &v178 - v109;
  MEMORY[0x2A1C7C4A8](v108, v111);
  v113 = &v178 - v112;
  sub_29D937FD8();
  if ((*(v102 + 48))(v100, 1, v101) != 1)
  {
    v183 = v82;
    (*(v102 + 32))(v113, v100, v101);
    sub_29D933C88();
    sub_29D933AD8();
    v117 = v221;
    (*(v86 + 104))(v90, *MEMORY[0x29EDB9CF0], v221);
    v182 = v113;
    v181 = sub_29D933CD8();
    (*(v86 + 8))(v90, v117);
    sub_29D6F1E9C(0, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v118 = *(v102 + 72);
    v119 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_29D93F680;
    v121 = v120 + v119;
    v221 = v102;
    v122 = *(v102 + 16);
    v123 = v229;
    v122(v121, v229, v101);
    v124 = type metadata accessor for BloodPressurePDFPregnancyChart();
    v122(v121 + v118, &v123[*(v124 + 20)], v101);
    v125 = sub_29D719CC4(v110, v120);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v181 == sub_29D933AF8())
    {
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v181 = v95;
      v126 = *(&xmmword_2A17D1000 + 1);
      v232 = xmmword_2A17D0FF0;
      v233 = xmmword_2A17D1000;
      v234 = qword_2A17D1010;
      sub_29D935E88();
      sub_29D937BD8();
      v127 = v208;
      sub_29D933948();
      v229 = v110;
      v128 = sub_29D933978();
      v129 = *(v221 + 8);
      v130 = v101;
      v221 += 8;
      v208 = v129;
      v131 = (v129)(v127, v101);
      v132 = 1;
      if (v128)
      {
        v179 = v101;
        v180 = v126;
        v133 = v184;
        MEMORY[0x29ED634A0](v131);
        v134 = v186;
        sub_29D933898();
        v135 = v185;
        sub_29D933808();
        (*(v187 + 8))(v134, v189);
        v136 = *(v188 + 8);
        v137 = v193;
        v136(v133, v193);
        v138 = v192;
        sub_29D933818();
        sub_29D9337C8();
        (*(v195 + 8))(v138, v197);
        v136(v135, v137);
        sub_29D937E38();
        sub_29D937E08();
        sub_29D6F00D4(&qword_2A17B22A8, MEMORY[0x29EDB9BB0]);
        v139 = v191;
        sub_29D937D08();
        if (qword_2A17B0DA8 != -1)
        {
          swift_once();
        }

        sub_29D6F12CC();
        v140 = v209;
        v141 = v196;
        sub_29D937EC8();
        (*(v194 + 8))(v139, v141);
        sub_29D935E88();
        sub_29D937ED8();
        v142 = v212;
        sub_29D937EF8();
        v143 = v199;
        v144 = *(v199 + 16);
        v145 = v210;
        v146 = v200;
        v144(v210, v140, v200);
        v147 = v203;
        v148 = *(v203 + 16);
        v149 = v204;
        v148(v213, v142, v204);
        v150 = v205;
        v144(v205, v145, v146);
        v151 = v206;
        v152 = *(v206 + 48);
        v153 = v213;
        v148(&v150[v152], v213, v149);
        v154 = v207;
        (*(v143 + 32))(v207, v150, v146);
        (*(v147 + 32))(v154 + *(v151 + 48), &v150[v152], v149);
        v155 = *(v147 + 8);
        v155(v212, v149);
        v156 = *(v143 + 8);
        v156(v209, v146);
        v155(v153, v149);
        v156(v210, v146);
        sub_29D6F1A20(v154, v219, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8], sub_29D6F119C);
        v132 = 0;
        v130 = v179;
      }

      v157 = v219;
      (*(v214 + 56))(v219, v132, 1, v215);
      v158 = v224;
      v159 = v225;
      v160 = *(v225 + 16);
      v161 = v226;
      v160(v224, v228, v226);
      v162 = v211;
      sub_29D67C494(v157, v211);
      v163 = v216;
      v160(v216, v158, v161);
      sub_29D6F153C(&qword_2A17B2250, sub_29D6F1114, sub_29D6F15B8);
      v164 = v217;
      v165 = *(v217 + 48);
      sub_29D67C494(v162, &v163[v165]);
      v166 = v218;
      (*(v159 + 32))(v218, v163, v161);
      sub_29D6F19B8(&v163[v165], v166 + *(v164 + 48), sub_29D6F1114);
      sub_29D67C4F8(v157);
      v167 = *(v159 + 8);
      v167(v228, v161);
      v168 = v208;
      (v208)(v229, v130);
      (*(v222 + 8))(v181, v223);
      v168(v182, v130);
      v115 = v231;
      sub_29D67C4F8(v162);
      v167(v158, v161);
      v169 = v220;
      sub_29D6F19B8(v166, v220, sub_29D6F10E0);
      sub_29D6F106C(0, &qword_2A17B22A0, sub_29D6F10E0, MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v170 = v227;
      sub_29D6F19B8(v169, v227, sub_29D6F1038);
    }

    else
    {
      if (v125)
      {
        v115 = v231;
        v116 = v183;
        v171 = v182;
        if (qword_2A17B0DB8 != -1)
        {
          swift_once();
        }

        v232 = xmmword_2A17D0FF0;
        v233 = xmmword_2A17D1000;
        v234 = qword_2A17D1010;
        sub_29D935E88();
        v172 = v224;
        sub_29D937BD8();
        v173 = *(v221 + 8);
        v173(v110, v101);
        (*(v222 + 8))(v95, v223);
        v173(v171, v101);
        v174 = v220;
        (*(v225 + 32))(v220, v172, v226);
        sub_29D6F106C(0, &qword_2A17B22A0, sub_29D6F10E0, MEMORY[0x29EDB8648]);
        swift_storeEnumTagMultiPayload();
        v170 = v227;
        sub_29D6F19B8(v174, v227, sub_29D6F1038);
        goto LABEL_17;
      }

      v234 = 0;
      v232 = 0u;
      v233 = 0u;
      v175 = v224;
      sub_29D937BD8();
      v176 = *(v221 + 8);
      v176(v110, v101);
      (*(v222 + 8))(v95, v223);
      v176(v182, v101);
      v170 = v227;
      (*(v225 + 32))(v227, v175, v226);
      v115 = v231;
    }

    v116 = v183;
LABEL_17:
    sub_29D6F106C(0, &qword_2A17B2298, sub_29D6F1038, MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    sub_29D6F1A20(v170, v115, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650], sub_29D6F106C);
    v114 = 0;
    return (*(v230 + 56))(v115, v114, 1, v116);
  }

  sub_29D6F1810(v100, sub_29D6A08F8);
  v114 = 1;
  v115 = v231;
  v116 = v82;
  return (*(v230 + 56))(v115, v114, 1, v116);
}

uint64_t sub_29D6EF914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a3;
  sub_29D69A444(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D933788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9337B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933798();
  sub_29D933768();
  v20 = sub_29D9339C8();
  v22 = v21;
  (*(v9 + 8))(v13, v8);
  (*(v15 + 8))(v19, v14);
  v23 = sub_29D933AA8();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  if (qword_2A17B0D98 != -1)
  {
    swift_once();
  }

  sub_29D6F1E9C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_29D93DDB0;
  *(v24 + 56) = MEMORY[0x29EDC99B0];
  *(v24 + 64) = sub_29D69AD24();
  *(v24 + 32) = v20;
  *(v24 + 40) = v22;
  v25 = sub_29D9334A8();
  if (*(v24 + 16))
  {
    v26 = sub_29D939D78();
  }

  else
  {
    v26 = v25;
  }

  sub_29D6F1810(v7, sub_29D69A444);
  return v26;
}

void sub_29D6EFC74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6F011C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 36)) == 1)
  {
    v10 = sub_29D938C88();
  }

  else
  {
    v10 = sub_29D938C78();
  }

  *v9 = v10;
  *(v9 + 1) = 0x4014000000000000;
  v9[16] = 0;
  sub_29D6F16CC();
  sub_29D6EA7A8(v2, &v9[*(v11 + 44)]);
  v12 = *(v2 + *(a1 + 40));
  sub_29D6F19B8(v9, a2, sub_29D6F011C);
  sub_29D6F1734(0, &qword_2A17B2278, sub_29D6F011C, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
  v14 = (a2 + *(v13 + 36));
  *v14 = v12;
  v14[1] = 0;
}

uint64_t sub_29D6EFDA8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_29D6EFDBC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_29D6EFE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6F00D4(&qword_2A17B2138, type metadata accessor for BloodPressurePDFPregnancyChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D6EFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D6F00D4(&qword_2A17B2138, type metadata accessor for BloodPressurePDFPregnancyChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D6EFF4C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D6F00D4(&qword_2A17B2128, type metadata accessor for BloodPressurePDFPregnancyChart);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D6F00D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D6F011C()
{
  if (!qword_2A17B2140)
  {
    sub_29D6F01B0(255);
    sub_29D6F00D4(&qword_2A17B2268, sub_29D6F01B0);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2140);
    }
  }
}

void sub_29D6F01E4()
{
  if (!qword_2A17B2150)
  {
    sub_29D6F024C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2150);
    }
  }
}

void sub_29D6F024C()
{
  if (!qword_2A17B2158)
  {
    sub_29D6F0488();
    sub_29D6F0F1C();
    sub_29D6F0650();
    sub_29D6D6634();
    sub_29D6F07C8();
    sub_29D6F0EE0(255);
    sub_29D6F08C0();
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0);
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2260, sub_29D6F0F1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2158);
    }
  }
}

void sub_29D6F0488()
{
  if (!qword_2A17B2160)
  {
    sub_29D6F0650();
    sub_29D6D6634();
    sub_29D6F07C8();
    sub_29D6F0EE0(255);
    sub_29D6F08C0();
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0);
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2160);
    }
  }
}

void sub_29D6F0650()
{
  if (!qword_2A17B2168)
  {
    sub_29D6F07C8();
    sub_29D6F0EE0(255);
    sub_29D6F08C0();
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2168);
    }
  }
}

void sub_29D6F07C8()
{
  if (!qword_2A17B2170)
  {
    sub_29D6F08C0();
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0);
    sub_29D6F0E4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2170);
    }
  }
}

void sub_29D6F08C0()
{
  if (!qword_2A17B2178)
  {
    sub_29D6F0924();
    sub_29D6F0C40();
    v0 = sub_29D937E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2178);
    }
  }
}

void sub_29D6F0924()
{
  if (!qword_2A17B2180)
  {
    sub_29D6F098C();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2180);
    }
  }
}

void sub_29D6F098C()
{
  if (!qword_2A17B2188)
  {
    sub_29D6EA774(255);
    sub_29D9339F8();
    sub_29D6F0A90();
    sub_29D6F00D4(&qword_2A17B21A0, sub_29D6EA774);
    sub_29D6F00D4(&qword_2A17B1360, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2188);
    }
  }
}

void sub_29D6F0A90()
{
  if (!qword_2A17B2190)
  {
    sub_29D6F0BA8();
    sub_29D938F48();
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2190);
    }
  }
}

void sub_29D6F0BA8()
{
  if (!qword_2A17B1EE0)
  {
    sub_29D937EA8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1EE0);
    }
  }
}

unint64_t sub_29D6F0C40()
{
  result = qword_2A17B21A8;
  if (!qword_2A17B21A8)
  {
    sub_29D6F0924();
    sub_29D6F0CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21A8);
  }

  return result;
}

unint64_t sub_29D6F0CC0()
{
  result = qword_2A17B21B0;
  if (!qword_2A17B21B0)
  {
    sub_29D6F098C();
    sub_29D6F0BA8();
    sub_29D938F48();
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21B0);
  }

  return result;
}

void sub_29D6F0DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6F0E4C()
{
  result = qword_2A17B21C8;
  if (!qword_2A17B21C8)
  {
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21C8);
  }

  return result;
}

void sub_29D6F0F1C()
{
  if (!qword_2A17B21E0)
  {
    sub_29D6F0FB0();
    sub_29D6F153C(&qword_2A17B2230, sub_29D6F0FB0, sub_29D6F1350);
    v0 = sub_29D937FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B21E0);
    }
  }
}

void sub_29D6F0FB0()
{
  if (!qword_2A17B21E8)
  {
    sub_29D6F106C(255, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B21E8);
    }
  }
}

void sub_29D6F106C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D937BE8();
    v9 = a4(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D6F1114()
{
  if (!qword_2A17B2208)
  {
    sub_29D6F119C(255, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2208);
    }
  }
}

void sub_29D6F119C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6F121C()
{
  if (!qword_2A17B2218)
  {
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D6F12CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2218);
    }
  }
}

unint64_t sub_29D6F12CC()
{
  result = qword_2A17B2228;
  if (!qword_2A17B2228)
  {
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2228);
  }

  return result;
}

unint64_t sub_29D6F1350()
{
  result = qword_2A17B2238;
  if (!qword_2A17B2238)
  {
    sub_29D6F106C(255, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
    sub_29D6F1400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2238);
  }

  return result;
}

unint64_t sub_29D6F1400()
{
  result = qword_2A17B2240;
  if (!qword_2A17B2240)
  {
    sub_29D6F1038(255);
    sub_29D6F1480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2240);
  }

  return result;
}

unint64_t sub_29D6F1480()
{
  result = qword_2A17B2248;
  if (!qword_2A17B2248)
  {
    sub_29D6F10E0(255);
    sub_29D6F153C(&qword_2A17B2250, sub_29D6F1114, sub_29D6F15B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2248);
  }

  return result;
}

uint64_t sub_29D6F153C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6F15B8()
{
  result = qword_2A17B2258;
  if (!qword_2A17B2258)
  {
    sub_29D6F119C(255, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D6F12CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2258);
  }

  return result;
}

void sub_29D6F16CC()
{
  if (!qword_2A17B2270)
  {
    sub_29D6F01B0(255);
    v0 = sub_29D938788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2270);
    }
  }
}

void sub_29D6F1734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29D6F1810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6F1870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6F18E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29D935E88();
  }
}

void sub_29D6F193C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

uint64_t sub_29D6F19B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6F1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_29D6F1AAC()
{
  v1 = type metadata accessor for BloodPressurePDFPregnancyChart();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);
  v8 = *(v0 + v3 + v1[6]);

  v9 = v1[7];
  if (!(*(v6 + 48))(v0 + v3 + v9, 1, v5))
  {
    v7(v4 + v9, v5);
  }

  v10 = *(v4 + v1[8]);

  v11 = v1[13];
  v12 = sub_29D9356C8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v15, v2 | 7);
}

uint64_t sub_29D6F1CB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BloodPressurePDFPregnancyChart() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_29D6F1D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6F1DA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_29D6F1E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D6F1E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6F1F00()
{
  result = qword_2A17B22D8;
  if (!qword_2A17B22D8)
  {
    sub_29D6F1734(255, &qword_2A17B2278, sub_29D6F011C, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    sub_29D6F00D4(&qword_2A17B22E0, sub_29D6F011C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B22D8);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController()
{
  result = qword_2A17B2308;
  if (!qword_2A17B2308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F2098(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (v1[qword_2A17B22F8] == 1)
  {
    sub_29D936C68();
  }

  else
  {
    v2 = *&v1[qword_2A17B22F0];
    sub_29D7B2224(1, 2);
  }
}

id sub_29D6F2124()
{
  v1 = v0;
  v2 = sub_29D9339F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[qword_2A17B22F0];
  sub_29D7B2224(1, 1);
  v9 = *&v1[qword_2A17B22E8];
  if (v9)
  {
    v10 = *&v1[qword_2A17B2300];
    v11 = *&v1[qword_2A17B22E8];
    swift_unknownObjectRetain();
    sub_29D9339E8();
    sub_29D81D22C();
    (*(v3 + 8))(v7, v2);
    sub_29D831EC0(v1, v9);
    return sub_29D936978();
  }

  else
  {

    return [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29D6F2284()
{
  v1 = *(v0 + qword_2A17B22E8);
  sub_29D936978();
  v2 = *(v0 + qword_2A17B22F0);

  v3 = *(v0 + qword_2A17B2300);
}

id sub_29D6F22D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6F230C(uint64_t a1)
{
  v2 = *(a1 + qword_2A17B22E8);
  sub_29D936978();
  v3 = *(a1 + qword_2A17B22F0);

  v4 = *(a1 + qword_2A17B2300);
}

uint64_t sub_29D6F2370(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B22E8);
  v4 = *(v2 + qword_2A17B22E8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D6F238C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D933CE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938AD8();
  return sub_29D6F2410(v6, a1);
}

uint64_t sub_29D6F2410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9376C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D933CE8();
  (*(*(v10 - 8) + 32))(a2, a1, v10);
  v11 = type metadata accessor for MonitorHypertensionJournalViewSpecs();
  *(a2 + v11[5]) = 0x4018000000000000;
  *(a2 + v11[6]) = 0x4030000000000000;
  v12 = v11[7];
  [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithRed:0.9 green:0.9 blue:0.92 alpha:1.0];
  *(a2 + v12) = sub_29D939528();
  v13 = v11[8];
  v14 = [objc_opt_self() secondaryLabelColor];
  *(a2 + v13) = sub_29D939528();
  *(a2 + v11[9]) = 0x3FF0000000000000;
  v15 = v11[10];
  if (qword_2A17B0DF8 != -1)
  {
    swift_once();
  }

  v16 = sub_29D69C6C0(v4, qword_2A17D10D8);
  (*(v5 + 16))(v9, v16, v4);
  result = sub_29D9395E8();
  *(a2 + v15) = result;
  *(a2 + v11[11]) = 0x4014000000000000;
  return result;
}

uint64_t type metadata accessor for MonitorHypertensionJournalViewSpecs()
{
  result = qword_2A17B2318;
  if (!qword_2A17B2318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6F2684()
{
  result = sub_29D933CE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for HighHeartRateNotificationsFeatureStatusActionHandler()
{
  result = qword_2A1A24490;
  if (!qword_2A1A24490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F279C()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9346E8();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D934C58();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v62 = &v58 - v16;
  v17 = sub_29D936638();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v23 = MEMORY[0x29EDC2970];
  sub_29D6F3184(&qword_2A17B1E40, MEMORY[0x29EDC2970]);
  sub_29D6F3184(&qword_2A17B3920, v23);
  sub_29D936628();
  v24 = *(v18 + 8);
  v24(v22, v17);
  if (!v67[0])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v41 = sub_29D937898();
    sub_29D69C6C0(v41, qword_2A1A2C008);
    v37 = sub_29D937878();
    v42 = sub_29D93A298();
    if (os_log_type_enabled(v37, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67[0] = v44;
      *v43 = 136315138;
      v45 = sub_29D93AF08();
      v47 = sub_29D6C2364(v45, v46, v67);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_29D677000, v37, v42, "[%s] Could not access action handler user data!", v43, 0xCu);
      sub_29D69417C(v44);
      MEMORY[0x29ED6BE30](v44, -1, -1);
      MEMORY[0x29ED6BE30](v43, -1, -1);
    }

LABEL_16:

    return;
  }

  v59 = v4;
  sub_29D936B88();
  sub_29D936608();
  v24(v22, v17);
  sub_29D693E2C(v67, v67[3]);
  v25 = sub_29D936588();
  sub_29D69417C(v67);
  sub_29D936B88();
  v26 = sub_29D936618();
  v24(v22, v17);
  sub_29D936B88();
  v27 = v62;
  sub_29D9347B8();
  v24(v22, v17);
  sub_29D9369B8();
  v29 = v63;
  v28 = v64;
  v30 = (*(v63 + 88))(v9, v64);
  v31 = v27;
  if (v30 == *MEMORY[0x29EDC1760])
  {
    v33 = v65;
    v32 = v66;
    v34 = v25;
    v35 = v61;
    (*(v65 + 16))(v61, v31, v66);
    v36 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsViewController(0));
    v37 = v34;
    v38 = sub_29D743DA0(v37, v35);

    v39 = [v26 navigationController];
    if (v39)
    {
      v40 = v39;
      [v39 pushViewController:v38 animated:1];

LABEL_11:
      (*(v33 + 8))(v31, v32);
      return;
    }

    (*(v33 + 8))(v31, v32);

    goto LABEL_16;
  }

  v48 = v25;
  v33 = v65;
  v32 = v66;
  if (v30 == *MEMORY[0x29EDC1768])
  {
    v49 = v61;
    (*(v65 + 16))(v61, v31, v66);
    v50 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsViewController(0));
    v51 = v48;
    v52 = sub_29D743DA0(v51, v49);

    sub_29D7D0030();
    v53 = v52;
    sub_29D9365C8();

    v54 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v26 presentViewController:v54 animated:1 completion:0];

    goto LABEL_11;
  }

  if (v30 == *MEMORY[0x29EDC1758] || v30 == *MEMORY[0x29EDC1750])
  {
    v55 = v59;
    sub_29D9369D8();
    v56 = sub_29D9336F8();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v55, 1, v56) == 1)
    {
      (*(v33 + 8))(v31, v32);

      sub_29D6D96C0(v55);
    }

    else
    {
      sub_29D9336A8();

      (*(v33 + 8))(v31, v32);
      (*(v57 + 8))(v55, v56);
    }
  }

  else
  {
    (*(v65 + 8))(v31, v66);

    (*(v29 + 8))(v9, v28);
  }
}

uint64_t sub_29D6F2FB0(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D6F30B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighHeartRateNotificationsFeatureStatusActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6F3184(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AFibBurdenOnboardingGetStartedViewController()
{
  result = qword_2A17B2340;
  if (!qword_2A17B2340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D6F327C()
{
  *(v0 + qword_2A17B2328 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_2A17B2338) = 0;
  StartedDataSource = type metadata accessor for AFibBurdenGetStartedDataSource();
  v2 = *(StartedDataSource + 48);
  v3 = *(StartedDataSource + 52);
  swift_allocObject();
  sub_29D76FD58();
  v4 = qword_2A17B2330;
  *(v0 + qword_2A17B2330) = v5;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  v6 = *(v0 + v4);

  v7 = sub_29D9365F8();
  v8 = *&v7[qword_2A17B2330];
  sub_29D6F39CC();
  v9 = v7;

  sub_29D936AC8();

  return v9;
}

void sub_29D6F3468()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AFibBurdenOnboardingGetStartedViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);

  sub_29D88BBC8(&unk_2A243D1B0);
  v2 = sub_29D939F18();

  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D6AA360(aContinuebutton_2);
    v4 = [v1 hxui:v3 addContinueButtonWithAccessibilityIdentifier:?];

    v5 = *&v1[qword_2A17B2338];
    *&v1[qword_2A17B2338] = v4;
    v6 = v4;

    v7 = *&v1[qword_2A17B2330];
    v8 = sub_29D76FC80() != 2 && (sub_29D76FC80() & 0xFF00) != 512;
    [v6 setEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D6F35C0(void *a1)
{
  v1 = a1;
  sub_29D6F3468();
}

void sub_29D6F3608(char *a1)
{
  v2 = &a1[qword_2A17B2328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D6F36C8(char *a1)
{
  v2 = &a1[qword_2A17B2328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D6F37B8()
{
  sub_29D68B77C(v0 + qword_2A17B2328);
  v1 = *(v0 + qword_2A17B2330);

  v2 = *(v0 + qword_2A17B2338);
}

id sub_29D6F3808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingGetStartedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6F3840(uint64_t a1)
{
  sub_29D68B77C(a1 + qword_2A17B2328);
  v2 = *(a1 + qword_2A17B2330);

  v3 = *(a1 + qword_2A17B2338);
}

uint64_t sub_29D6F38A4()
{
  v1 = v0 + qword_2A17B2328;
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_29D6F38D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B2328 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D6F3928()
{
  v1 = *(v0 + qword_2A17B2338);
  if (v1)
  {
    v2 = *(v0 + qword_2A17B2330);
    v4 = v1;
    v3 = sub_29D76FC80() != 2 && (sub_29D76FC80() & 0xFF00) != 512;
    [v4 setEnabled_];
  }
}

unint64_t sub_29D6F39CC()
{
  result = qword_2A17B2350;
  if (!qword_2A17B2350)
  {
    type metadata accessor for AFibBurdenOnboardingGetStartedViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2350);
  }

  return result;
}

uint64_t sub_29D6F3A24(void *a1, void *a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 startDate];
  sub_29D933998();

  v11 = sub_29D933958();
  v12 = *(v5 + 8);
  v12(v9, v4);
  v13 = [a2 endDate];
  sub_29D933998();

  v14 = sub_29D933958();
  v12(v9, v4);
  v15 = [a1 stringFromDate:v11 toDate:v14];

  v16 = sub_29D939D68();
  return v16;
}

uint64_t sub_29D6F3BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HypertensionNotificationDetailView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  sub_29D6F8828(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = a2;
  v29 = a1;
  sub_29D9390B8();
  sub_29D6FAF70(0, &qword_2A17B23B0, sub_29D6F88D8);
  sub_29D6F9928();
  sub_29D938688();
  sub_29D938748();
  sub_29D9398A8();
  sub_29D938718();
  v16 = &v15[*(v11 + 36)];
  v17 = v31;
  *v16 = v30;
  v16[1] = v17;
  v16[2] = v32;
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  sub_29D6F9B6C();
  sub_29D939438();

  sub_29D6FB39C(v15, sub_29D6F8828);
  sub_29D6FB2D4(a2, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for HypertensionNotificationDetailView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_29D6F8744(&v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v18);
  sub_29D6FAF70(0, &qword_2A17B2568, sub_29D6F9DC4);
  v21 = (a3 + *(v20 + 36));
  *v21 = sub_29D6F9DAC;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  sub_29D6FB2D4(a2, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for HypertensionNotificationDetailView);
  v22 = swift_allocObject();
  sub_29D6F8744(&v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v18);
  sub_29D6F9EB0();
  v24 = (a3 + *(v23 + 36));
  v25 = v24 + *(sub_29D938778() + 20);
  result = sub_29D93A008();
  *v24 = &unk_29D942548;
  v24[1] = v22;
  return result;
}

__n128 sub_29D6F3EEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a3;
  sub_29D6F8950();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8928(0);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8900(0);
  v72 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F88D8(0);
  v73 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v74 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_29D938C68();
  *(v8 + 1) = 0x4034000000000000;
  v8[16] = 0;
  sub_29D6FA0E4(0, &qword_2A17B2588, sub_29D6F89E4);
  sub_29D6F44EC(a1, &v8[*(v24 + 44)]);
  sub_29D6FA094(0, &qword_2A17B2590, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  v26 = sub_29D939108();
  *(inited + 32) = v26;
  v27 = sub_29D939128();
  *(inited + 33) = v27;
  v28 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v26)
  {
    v28 = sub_29D939118();
  }

  sub_29D939118();
  if (sub_29D939118() != v27)
  {
    v28 = sub_29D939118();
  }

  v29 = objc_opt_self();
  v30 = [v29 sharedBehavior];
  if (!v30)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    sub_29D93A298();
    v70 = sub_29D9390A8();
    sub_29D937758();

    goto LABEL_12;
  }

  v31 = v30;
  v26 = [v30 isiPad];

  sub_29D938618();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_29D6FA2BC(v8, v14, sub_29D6F8950);
  v40 = &v14[*(v10 + 36)];
  *v40 = v28;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v31) = sub_29D9390E8();
  v41 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v31)
  {
    v41 = sub_29D939118();
  }

  v42 = [v29 sharedBehavior];
  if (!v42)
  {
    goto LABEL_14;
  }

  v43 = v42;
  [v42 isiPad];

  sub_29D938618();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_29D6FA2BC(v14, v19, sub_29D6F8928);
  v52 = &v19[*(v72 + 36)];
  *v52 = v41;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = sub_29D9390F8();
  v54 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v53)
  {
    v54 = sub_29D939118();
  }

  sub_29D938618();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v26 = v74;
  sub_29D6FA2BC(v19, v74, sub_29D6F8900);
  v63 = &v26[*(v73 + 36)];
  *v63 = v54;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  sub_29D938748();
  sub_29D9398A8();
LABEL_12:
  sub_29D9388E8();
  v64 = v76;
  sub_29D6FA2BC(v26, v76, sub_29D6F88D8);
  sub_29D6FAF70(0, &qword_2A17B23B0, sub_29D6F88D8);
  v66 = v64 + *(v65 + 36);
  v67 = v82;
  *(v66 + 64) = v81;
  *(v66 + 80) = v67;
  *(v66 + 96) = v83;
  v68 = v78;
  *v66 = v77;
  *(v66 + 16) = v68;
  result = v80;
  *(v66 + 32) = v79;
  *(v66 + 48) = result;
  return result;
}

uint64_t sub_29D6F44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6F9154(0);
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = *(v133 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v127 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_29D938FE8();
  v123 = *(v125 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x2A1C7C4A8](v125, v9);
  v122 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HypertensionNotificationDetailView();
  v112 = *(v11 - 8);
  v113 = v11;
  v12 = *(v112 + 64);
  MEMORY[0x2A1C7C4A8](v11, v13);
  v128 = v14;
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F94E4(0);
  v115 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v114 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F9444();
  v117 = *(v20 - 8);
  v118 = v20;
  v21 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v129 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F9324();
  v121 = v24;
  v119 = *(v24 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v116 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F91F0();
  v120 = v28;
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v126 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31, v33);
  v124 = &v109 - v34;
  sub_29D6F9120(0);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x2A1C7C4A8](v35 - 8, v37);
  v132 = &v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v38, v40);
  v135 = &v109 - v41;
  sub_29D6F8B2C();
  v43 = *(*(v42 - 8) + 64);
  v45 = MEMORY[0x2A1C7C4A8](v42 - 8, v44);
  v131 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45, v47);
  v136 = (&v109 - v48);
  v49 = sub_29D939628();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v49, v52);
  v54 = &v109 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v55 = qword_2A1A2C038;
  sub_29D939678();
  (*(v50 + 104))(v54, *MEMORY[0x29EDBCAB8], v49);
  v130 = sub_29D939668();

  (*(v50 + 8))(v54, v49);
  sub_29D9398A8();
  sub_29D938718();
  LOBYTE(v140) = 1;
  *&v145[3] = *&v145[27];
  *&v145[11] = *&v145[35];
  *&v145[19] = *&v145[43];
  v56 = sub_29D938C78();
  v57 = v136;
  *v136 = v56;
  v57[1] = 0;
  *(v57 + 16) = 0;
  sub_29D6FA0E4(0, &qword_2A17B2598, sub_29D6F8BC0);
  sub_29D6F5234(a1, v57 + *(v58 + 44));
  v59 = sub_29D6F5C38();
  v60 = 1;
  if (v59)
  {
    v110 = v15;
    v111 = type metadata accessor for HypertensionNotificationDetailView;
    sub_29D6FB2D4(a1, v15, type metadata accessor for HypertensionNotificationDetailView);
    v61 = (*(v112 + 80) + 16) & ~*(v112 + 80);
    v62 = swift_allocObject();
    v63 = sub_29D6F8744(v15, v62 + v61);
    v112 = a2;
    MEMORY[0x2A1C7C4A8](v63, v64);
    sub_29D6FA324(0, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    v65 = a1;
    sub_29D6F9734();
    v66 = v114;
    sub_29D9396C8();
    sub_29D939898();
    sub_29D938718();
    v67 = v115;
    v68 = (v66 + *(v115 + 36));
    v69 = *&v145[59];
    *v68 = *&v145[51];
    v68[1] = v69;
    v68[2] = *&v145[67];
    v70 = v65 + *(v113 + 24);
    v71 = *v70;
    v72 = *(v70 + 8);
    LOBYTE(v137) = v71;
    v138 = v72;
    sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
    sub_29D9396B8();
    v73 = v110;
    sub_29D6FB2D4(v65, v110, v111);
    v74 = swift_allocObject();
    sub_29D6F8744(v73, v74 + v61);
    v75 = sub_29D6F9824();
    v108 = sub_29D6F98D4();
    sub_29D9394A8();

    sub_29D6FB39C(v66, sub_29D6F94E4);
    v76 = v122;
    sub_29D938FD8();
    v140 = v67;
    v141 = &type metadata for BloodPressureJournalCreationFromHypertensionNotificationMainView;
    *v142 = v75;
    *&v142[8] = v108;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v78 = sub_29D6FB6F0(&qword_2A17B2510, MEMORY[0x29EDBC098]);
    v79 = v116;
    v80 = v118;
    v81 = v125;
    v82 = v129;
    sub_29D9393A8();
    (*(v123 + 8))(v76, v81);
    (*(v117 + 8))(v82, v80);
    static String.hypertensionAccessibilityIdentifier(_:)();
    swift_arrayDestroy();
    v140 = v80;
    v141 = v81;
    *v142 = OpaqueTypeConformance2;
    *&v142[8] = v78;
    swift_getOpaqueTypeConformance2();
    v83 = v124;
    v84 = v121;
    sub_29D939438();

    (*(v119 + 8))(v79, v84);
    v85 = sub_29D939558();
    KeyPath = swift_getKeyPath();
    sub_29D6F9288();
    v88 = (v83 + *(v87 + 36));
    *v88 = KeyPath;
    v88[1] = v85;
    v89 = (v83 + *(v120 + 36));
    sub_29D6FAB24(0, &qword_2A17B2520, MEMORY[0x29EDBC380], MEMORY[0x29EDBC938]);
    v91 = *(v90 + 28);
    v92 = *MEMORY[0x29EDBC378];
    v93 = sub_29D9386C8();
    (*(*(v93 - 8) + 104))(v89 + v91, v92, v93);
    *v89 = swift_getKeyPath();
    a2 = v112;
    v94 = v126;
    sub_29D6FA148(v83, v126, sub_29D6F91F0);
    v95 = v127;
    *v127 = 0;
    *(v95 + 8) = 1;
    sub_29D6F9188();
    sub_29D6FA148(v94, v95 + *(v96 + 48), sub_29D6F91F0);
    sub_29D6FB39C(v83, sub_29D6F91F0);
    sub_29D6FB39C(v94, sub_29D6F91F0);
    sub_29D6FA2BC(v95, v135, sub_29D6F9154);
    v60 = 0;
  }

  v97 = v135;
  (*(v133 + 56))(v135, v60, 1, v134);
  v98 = v131;
  sub_29D6FA148(v136, v131, sub_29D6F8B2C);
  v99 = v132;
  sub_29D6FA148(v97, v132, sub_29D6F9120);
  v100 = v130;
  v137 = v130;
  v138 = 0;
  v139[0] = 1;
  v139[1] = 0;
  *&v139[2] = *v145;
  *&v139[18] = *&v145[8];
  *&v139[34] = *&v145[16];
  *&v139[48] = *&v145[23];
  v101 = v130;
  v102 = *v139;
  v103 = *&v139[16];
  v104 = *&v139[32];
  *(a2 + 64) = *&v145[23];
  *(a2 + 32) = v103;
  *(a2 + 48) = v104;
  *a2 = v101;
  *(a2 + 16) = v102;
  sub_29D6F8A18();
  v106 = v105;
  sub_29D6FA148(v98, a2 + *(v105 + 48), sub_29D6F8B2C);
  sub_29D6FA148(v99, a2 + *(v106 + 64), sub_29D6F9120);
  sub_29D6FB2D4(&v137, &v140, sub_29D6F8AA0);
  sub_29D6FB39C(v97, sub_29D6F9120);
  sub_29D6FB39C(v136, sub_29D6F8B2C);
  sub_29D6FB39C(v99, sub_29D6F9120);
  sub_29D6FB39C(v98, sub_29D6F8B2C);
  v140 = v100;
  v141 = 0;
  v142[0] = 1;
  v142[1] = 0;
  *&v142[2] = *v145;
  v143 = *&v145[8];
  *v144 = *&v145[16];
  *&v144[14] = *&v145[23];
  return sub_29D6FB33C(&v140, sub_29D6F8AA0);
}

uint64_t sub_29D6F5234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v105 = a2;
  sub_29D6F90C0();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v106 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v104 = &v93 - v8;
  sub_29D6F8F7C();
  v99 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v98 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8F5C(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v102 = &v93 - v19;
  sub_29D6FB3FC(0, &qword_2A17B2410, sub_29D6F8CCC, sub_29D6F8DB8);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v20, v24);
  v26 = &v93 - v25;
  sub_29D6F8C90(0);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x2A1C7C4A8](v27 - 8, v29);
  v101 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v107 = &v93 - v33;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v97 = qword_2A17D0F10;
  v96 = *algn_2A17D0F18;
  *&v116 = sub_29D9334A8();
  *(&v116 + 1) = v34;
  v95 = sub_29D69AB60();
  v35 = sub_29D9392F8();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  KeyPath = swift_getKeyPath();
  v43 = sub_29D9391C8();
  v44 = swift_getKeyPath();
  LOBYTE(v108) = v39 & 1;
  *&v116 = v35;
  *(&v116 + 1) = v37;
  LOBYTE(v117) = v39 & 1;
  *(&v117 + 1) = v41;
  *&v118 = KeyPath;
  BYTE8(v118) = 0;
  *&v119 = v44;
  *(&v119 + 1) = v43;
  sub_29D939178();
  sub_29D6F8CCC();
  v46 = v45;
  v47 = sub_29D6F8DB8();
  sub_29D939398();
  v113[0] = v116;
  v113[1] = v117;
  v113[2] = v118;
  v113[3] = v119;
  v94 = sub_29D6F8CCC;
  sub_29D6FB33C(v113, sub_29D6F8CCC);
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  *&v116 = v46;
  *(&v116 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  sub_29D939438();

  (*(v22 + 8))(v26, v21);
  *&v116 = sub_29D9334A8();
  *(&v116 + 1) = v48;
  v49 = sub_29D9392F8();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = swift_getKeyPath();
  v57 = sub_29D9391C8();
  v58 = swift_getKeyPath();
  v112 = v53 & 1;
  *&v108 = v49;
  *(&v108 + 1) = v51;
  LOBYTE(v109) = v53 & 1;
  *(&v109 + 1) = *v115;
  DWORD1(v109) = *&v115[3];
  *(&v109 + 1) = v55;
  *&v110 = v56;
  BYTE8(v110) = 0;
  *(&v110 + 9) = *v114;
  HIDWORD(v110) = *&v114[3];
  *&v111 = v58;
  *(&v111 + 1) = v57;
  sub_29D939188();
  v59 = v98;
  sub_29D939398();
  v116 = v108;
  v117 = v109;
  v118 = v110;
  v119 = v111;
  sub_29D6FB33C(&v116, v94);
  v60 = [objc_opt_self() secondaryLabelColor];
  v61 = sub_29D939528();
  sub_29D6F8FFC();
  *(v59 + *(v62 + 36)) = v61;
  v63 = swift_getKeyPath();
  v64 = v59 + *(v99 + 36);
  *v64 = v63;
  *(v64 + 8) = 0;
  *(v64 + 16) = 1;
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  sub_29D6FA410();
  v65 = v102;
  sub_29D939438();

  sub_29D6FB39C(v59, sub_29D6F8F7C);
  v66 = type metadata accessor for HypertensionNotificationDetailView();
  *&v108 = sub_29D6F3A24(*(v100 + *(v66 + 32)), *(v100 + *(v66 + 32) + 8));
  *(&v108 + 1) = v67;
  v68 = sub_29D9392F8();
  v70 = v69;
  LOBYTE(v46) = v71;
  sub_29D939148();
  v72 = sub_29D9392C8();
  v74 = v73;
  LOBYTE(v57) = v75;

  sub_29D69ABB4(v68, v70, v46 & 1);

  sub_29D939178();
  v76 = sub_29D939298();
  v78 = v77;
  LOBYTE(v70) = v79;
  v81 = v80;
  sub_29D69ABB4(v72, v74, v57 & 1);

  *&v108 = v76;
  *(&v108 + 1) = v78;
  LOBYTE(v109) = v70 & 1;
  *(&v109 + 1) = v81;
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  v82 = v104;
  sub_29D939438();

  sub_29D69ABB4(v76, v78, v70 & 1);

  v83 = v107;
  v84 = v101;
  sub_29D6FA148(v107, v101, sub_29D6F8C90);
  v85 = v103;
  sub_29D6FA148(v65, v103, sub_29D6F8F5C);
  v86 = v106;
  sub_29D6FB2D4(v82, v106, sub_29D6F90C0);
  v87 = v105;
  sub_29D6FA148(v84, v105, sub_29D6F8C90);
  sub_29D6F8BF4();
  v89 = v88;
  sub_29D6FA148(v85, v87 + v88[12], sub_29D6F8F5C);
  v90 = v87 + v89[16];
  *v90 = 0x4034000000000000;
  *(v90 + 8) = 0;
  sub_29D6FB2D4(v86, v87 + v89[20], sub_29D6F90C0);
  v91 = v87 + v89[24];
  *v91 = 0x4040000000000000;
  *(v91 + 8) = 0;
  sub_29D6FB33C(v82, sub_29D6F90C0);
  sub_29D6FB39C(v65, sub_29D6F8F5C);
  sub_29D6FB39C(v83, sub_29D6F8C90);
  sub_29D6FB33C(v86, sub_29D6F90C0);
  sub_29D6FB39C(v85, sub_29D6F8F5C);
  return sub_29D6FB39C(v84, sub_29D6F8C90);
}

uint64_t sub_29D6F5C38()
{
  v1 = sub_29D9371A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v1, v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = v31 - v9;
  v11 = *(v0 + *(type metadata accessor for HypertensionNotificationDetailView() + 20));
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v12 = *MEMORY[0x29EDC5128];
  v13 = sub_29D9371B8();
  v14 = [v13 areAllRequirementsSatisfied];

  if (v14)
  {
    (*(v2 + 8))(v10, v1);
    return 1;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v16 = sub_29D937898();
    sub_29D69C6C0(v16, qword_2A1A2C008);
    (*(v2 + 16))(v7, v10, v1);
    v17 = sub_29D937878();
    v18 = sub_29D93A288();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v19 = 136315394;
      *(v19 + 4) = sub_29D6C2364(0xD000000000000022, 0x800000029D942460, v31);
      *(v19 + 12) = 2080;
      v20 = *MEMORY[0x29EDBA548];
      v21 = sub_29D9371B8();
      v22 = [v21 unsatisfiedRequirementIdentifiersDescription];

      v23 = sub_29D939D68();
      v25 = v24;

      v26 = *(v2 + 8);
      v26(v7, v1);
      v27 = sub_29D6C2364(v23, v25, v31);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_29D677000, v17, v18, "[%s] Blood Pressure Journal is not enabled due to failing requirements: %s", v19, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v28, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);

      v26(v10, v1);
    }

    else
    {

      v29 = *(v2 + 8);
      v29(v7, v1);
      v29(v10, v1);
    }

    return 0;
  }
}

void sub_29D6F6144(uint64_t a1)
{
  v2 = sub_29D9336F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for HypertensionNotificationDetailView();
  v9 = (a1 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 1);
  v23 = v10;
  v24 = v11;
  sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  if (v20 == 1)
  {
    v12 = [objc_opt_self() sharedApplication];
    v13 = HKHRBloodPressureDetailRoomBaseLink();
    sub_29D9336D8();

    v14 = sub_29D9336B8();
    (*(v3 + 8))(v7, v2);
    sub_29D73F168(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29D6FB6F0(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey);
    v15 = sub_29D939C58();

    [v12 openURL:v14 options:v15 completionHandler:0];
  }

  else
  {
    v16 = (a1 + *(v8 + 24));
    v18 = *(v16 + 1);
    v23 = *v16;
    v17 = v23;
    v24 = v18;

    sub_29D939698();
    v20 = v17;
    v21 = v18;
    v19[7] = (v22 & 1) == 0;
    sub_29D9396A8();

    sub_29D6F63D4();
  }
}

uint64_t sub_29D6F63D4()
{
  v1 = HKLogHeartRateCategory();
  v2 = type metadata accessor for HypertensionNotificationDetailView();
  v3 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v1 healthDataSource:*(v0 + *(v2 + 36))];

  LOBYTE(v1) = *(v0 + *(v2 + 32) + 16);
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v4 = swift_allocObject();
  v4[16] = 2;
  v4[17] = v1;
  v4[18] = 2;
  v7[4] = sub_29D6F7394;
  v7[5] = 0;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1107296256;
  v7[2] = sub_29D8E44F0;
  v7[3] = &unk_2A2441EB0;
  v5 = _Block_copy(v7);

  [v3 submitEvent:v4 completion:v5];
  _Block_release(v5);
}

uint64_t sub_29D6F651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45[1] = a2;
  sub_29D6FA324(0, &qword_2A17B25A0, MEMORY[0x29EDBC7E8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = v45 - v6;
  sub_29D6F958C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v8, v12);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = v45 - v17;
  v19 = (a1 + *(type metadata accessor for HypertensionNotificationDetailView() + 28));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v55) = v20;
  *(&v55 + 1) = v21;
  sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  if (v46 == 1)
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    *&v55 = sub_29D9334A8();
    *(&v55 + 1) = v22;
    sub_29D69AB60();
    v23 = sub_29D9392F8();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_29D9398A8();
    sub_29D9388E8();
    v64 = v27 & 1;
    *&v46 = v23;
    *(&v46 + 1) = v25;
    LOBYTE(v47) = v27 & 1;
    *(&v47 + 1) = v29;
    sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    v31 = v30;
    v32 = sub_29D6F9690();
    sub_29D939478();
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v55 = v46;
    v56 = v47;
    sub_29D6FA388(&v55);
    (*(v10 + 16))(v7, v18, v9);
    swift_storeEnumTagMultiPayload();
    *&v46 = v31;
    *(&v46 + 1) = v32;
    swift_getOpaqueTypeConformance2();
    sub_29D938DE8();
    return (*(v10 + 8))(v18, v9);
  }

  else
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    *&v55 = sub_29D9334A8();
    *(&v55 + 1) = v34;
    sub_29D69AB60();
    v35 = sub_29D9392F8();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_29D9398A8();
    sub_29D9388E8();
    v64 = v39 & 1;
    *&v46 = v35;
    *(&v46 + 1) = v37;
    LOBYTE(v47) = v39 & 1;
    *(&v47 + 1) = v41;
    sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    v43 = v42;
    v44 = sub_29D6F9690();
    sub_29D939478();
    v61 = v52;
    v62 = v53;
    v63 = v54;
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v55 = v46;
    v56 = v47;
    sub_29D6FA388(&v55);
    (*(v10 + 16))(v7, v15, v9);
    swift_storeEnumTagMultiPayload();
    *&v46 = v43;
    *(&v46 + 1) = v44;
    swift_getOpaqueTypeConformance2();
    sub_29D938DE8();
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_29D6F6AEC(uint64_t a1)
{
  v2 = sub_29D933DF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  (*(v6 + 104))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC50E8]);
  v7 = *MEMORY[0x29EDC5270];
  sub_29D939D68();
  v8 = sub_29D933DE8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_29D933DD8();
  v12 = HKLogHeartRateCategory();
  v13 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v12 healthDataSource:*(a1 + *(type metadata accessor for HypertensionNotificationDetailView() + 36))];

  aBlock[4] = sub_29D6F6CE0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  aBlock[3] = &unk_2A2441E38;
  v14 = _Block_copy(aBlock);

  [v13 submitEvent:v11 completion:v14];
  _Block_release(v14);
}

void sub_29D6F6CE0(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (HKShowSensitiveLogItems())
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v4 = sub_29D937898();
      sub_29D69C6C0(v4, qword_2A1A2C008);
      v5 = a2;
      v6 = sub_29D937878();
      v7 = sub_29D93A288();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136446466;
        type metadata accessor for HypertensionNotificationDetailView();
        sub_29D6FA04C();
        v10 = sub_29D939DA8();
        v12 = sub_29D6C2364(v10, v11, &v17);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2082;
        v13 = a2;
        sub_29D6A0CD0();
        v14 = sub_29D939DA8();
        v16 = sub_29D6C2364(v14, v15, &v17);

        *(v8 + 14) = v16;
        _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to submit to HTN analytics with error: %{public}s", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v9, -1, -1);
        MEMORY[0x29ED6BE30](v8, -1, -1);

        return;
      }
    }
  }
}

uint64_t sub_29D6F6EF8(uint64_t a1)
{
  v1[19] = a1;
  sub_29D939FF8();
  v1[20] = sub_29D939FE8();
  v3 = sub_29D939FD8();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2A1C73D48](sub_29D6F6F90, v3, v2);
}

uint64_t sub_29D6F6F90()
{
  v1 = v0[19];
  v2 = type metadata accessor for HypertensionNotificationDetailView();
  v0[23] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D6F70D8;
  v4 = swift_continuation_init();
  sub_29D6F9F3C();
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D6B458C;
  v0[13] = &unk_2A2441E10;
  v0[14] = v4;
  [v3 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6F70D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_29D6F7314;
  }

  else
  {
    v6 = sub_29D6F7208;
  }

  return MEMORY[0x2A1C73D48](v6, v5, v4);
}

uint64_t sub_29D6F7208()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 144);
  if (v2)
  {
    v3 = *(v0 + 152) + *(*(v0 + 184) + 28);
    v4 = *(v3 + 8);
    *(v0 + 80) = *v3;
    v5 = *(v0 + 192);
    *(v0 + 88) = v4;
    *(v0 + 144) = 1;
    sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

    sub_29D9396A8();
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_29D6F7314()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[20];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_29D6F7394(char a1, void *a2)
{
  if ((a1 & 1) == 0 && HKShowSensitiveLogItems())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v6 = 136446466;
      *(v6 + 4) = sub_29D6C2364(0xD000000000000022, 0x800000029D942460, &v13);
      *(v6 + 12) = 2112;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v6 + 14) = v10;
      *v7 = v11;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{public}s] Failed to submit to HTN analytics with error: %@", v6, 0x16u);
      sub_29D6ACA3C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D6F7580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8, a2);
  sub_29D6FB2D4(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HypertensionNotificationDetailView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_29D6F8744(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_29D6F87A8;
  a3[1] = v8;
  return result;
}

uint64_t sub_29D6F7680@<X0>(uint64_t a1@<X8>)
{
  result = sub_29D938C68();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_29D6F76B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_29D938B88();
  sub_29D6F7680(&v7);
  v3 = v8;
  v4 = v9;
  v5 = v10;
  result = v7;
  *a1 = v2;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return result;
}

uint64_t sub_29D6F7728@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  sub_29D6FB3FC(0, &qword_2A17B26B8, sub_29D6FB48C, sub_29D6FB598);
  v17[0] = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = v17 - v5;
  v7 = sub_29D939618();
  v8 = [objc_opt_self() systemBlueColor];
  v9 = sub_29D939528();
  v10 = sub_29D939158();
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v9;
  v20 = KeyPath;
  v21 = v10;
  sub_29D939198();
  sub_29D6FB48C();
  v13 = v12;
  v14 = sub_29D6FB598();
  sub_29D939398();

  v18 = v13;
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v17[0];
  sub_29D939418();
  return (*(v2 + 8))(v6, v15);
}

uint64_t sub_29D6F7934@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  sub_29D6FAE00(0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v62 = &v59 - v7;
  sub_29D6FAC8C(0);
  v60 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FAC00(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13 - 8, v15);
  v61 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v65 = &v59 - v19;
  if (qword_2A17B0BE0 != -1)
  {
    swift_once();
  }

  v73 = xmmword_2A17B2358;
  v20 = sub_29D69AB60();
  sub_29D935E88();
  v59 = v20;
  v21 = sub_29D9392F8();
  v23 = v22;
  v25 = v24;
  sub_29D939148();
  v26 = sub_29D9392C8();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_29D69ABB4(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  *&v73 = v26;
  *(&v73 + 1) = v28;
  LOBYTE(v74) = v30 & 1;
  *(&v74 + 1) = v32;
  *&v75 = KeyPath;
  BYTE8(v75) = 0;
  sub_29D939198();
  sub_29D69A8C4();
  sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
  sub_29D939398();
  sub_29D69ABB4(v26, v28, v30 & 1);

  v34 = objc_opt_self();
  v35 = [v34 labelColor];
  *&v12[*(v60 + 36)] = sub_29D939528();
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  sub_29D6FAFD4();
  sub_29D939438();

  sub_29D6FB39C(v12, sub_29D6FAC8C);
  if (qword_2A17B0BE8 != -1)
  {
    swift_once();
  }

  v73 = xmmword_2A17B2368;
  sub_29D935E88();
  v36 = sub_29D9392F8();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = swift_getKeyPath();
  v44 = v40 & 1;
  LOBYTE(v73) = v40 & 1;
  LOBYTE(v66) = 1;
  v45 = sub_29D939148();
  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v48 = [v34 secondaryLabelColor];
  v49 = sub_29D939528();
  *&v66 = v36;
  *(&v66 + 1) = v38;
  LOBYTE(v67) = v44;
  *(&v67 + 1) = v42;
  v68 = v43;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = 256;
  *(&v69 + 1) = v46;
  *&v70 = v45;
  *(&v70 + 1) = v47;
  LOBYTE(v71) = 0;
  *(&v71 + 1) = *v72;
  DWORD1(v71) = *&v72[3];
  *(&v71 + 1) = v49;
  static String.hypertensionAccessibilityIdentifier(_:)();
  swift_arrayDestroy();
  sub_29D6FAE20(0);
  sub_29D6FB0BC(&qword_2A17B2698, sub_29D6FAE20, sub_29D6FB148, sub_29D6FA560);
  v50 = v62;
  sub_29D939438();

  v75 = v68;
  v76 = v69;
  v77 = v70;
  v78 = v71;
  v73 = v66;
  v74 = v67;
  sub_29D6FB33C(&v73, sub_29D6FAE20);
  v51 = v65;
  v52 = v61;
  sub_29D6FA148(v65, v61, sub_29D6FAC00);
  v53 = v64;
  sub_29D6FB2D4(v50, v64, sub_29D6FAE00);
  v54 = v63;
  sub_29D6FA148(v52, v63, sub_29D6FAC00);
  sub_29D6FAB88();
  v56 = v55;
  sub_29D6FB2D4(v53, v54 + *(v55 + 48), sub_29D6FAE00);
  v57 = v54 + *(v56 + 64);
  *v57 = 0;
  *(v57 + 8) = 1;
  sub_29D6FB33C(v50, sub_29D6FAE00);
  sub_29D6FB39C(v51, sub_29D6FAC00);
  sub_29D6FB33C(v53, sub_29D6FAE00);
  return sub_29D6FB39C(v52, sub_29D6FAC00);
}

uint64_t sub_29D6F800C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29D938C78();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29D6FA0E4(0, &qword_2A17B2638, sub_29D6FAAF0);
  return sub_29D6F7934(a1 + *(v2 + 44));
}

void sub_29D6F8068()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v0 = qword_2A17D0F10;
  sub_29D935E88();
  v1 = sub_29D9334A8();
  v3 = v2;

  qword_2A17B2358 = v1;
  unk_2A17B2360 = v3;
}

void sub_29D6F8140()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v0 = qword_2A17D0F10;
  sub_29D935E88();
  v1 = sub_29D9334A8();
  v3 = v2;

  qword_2A17B2368 = v1;
  unk_2A17B2370 = v3;
}

uint64_t sub_29D6F8218(uint64_t a1)
{
  v2 = sub_29D9386C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return MEMORY[0x29ED68D90](v6);
}

id sub_29D6F82E0()
{
  v0 = sub_29D933AA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v0, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v19 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  sub_29D933A98();
  v11 = sub_29D933A68();
  v12 = *(v1 + 8);
  v12(v9, v0);
  [v10 setLocale_];

  v13 = sub_29D939D28();
  v14 = [v10 locale];
  if (v14)
  {
    v15 = v14;
    sub_29D933A88();

    v16 = sub_29D933A68();
    v12(v6, v0);
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_opt_self() dateFormatFromTemplate:v13 options:0 locale:v16];

  [v10 setDateTemplate_];
  return v10;
}

uint64_t type metadata accessor for HypertensionNotificationDetailView()
{
  result = qword_2A17B2380;
  if (!qword_2A17B2380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F8544()
{
  sub_29D6FAB24(319, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (v0 <= 0x3F)
  {
    sub_29D69567C(319, &qword_2A1A221E0, 0x29EDBABB0);
    if (v1 <= 0x3F)
    {
      sub_29D6FA094(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v2 <= 0x3F)
      {
        sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_29D6F867C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D6F8690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_29D6F86D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D6F8744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6F87A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HypertensionNotificationDetailView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D6F3BB0(a1, v6, a2);
}

void sub_29D6F8850()
{
  if (!qword_2A17B23A8)
  {
    sub_29D6FAF70(255, &qword_2A17B23B0, sub_29D6F88D8);
    sub_29D6F9928();
    v0 = sub_29D938678();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B23A8);
    }
  }
}

void sub_29D6F8950()
{
  if (!qword_2A17B23D0)
  {
    sub_29D6F89E4(255);
    sub_29D6FB6F0(&qword_2A17B2528, sub_29D6F89E4);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B23D0);
    }
  }
}

void sub_29D6F8A18()
{
  if (!qword_2A17B23E0)
  {
    sub_29D6F8AA0();
    sub_29D6F8B2C();
    sub_29D6F9120(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B23E0);
    }
  }
}

void sub_29D6F8AA0()
{
  if (!qword_2A17B23E8)
  {
    sub_29D6F963C(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B23E8);
    }
  }
}

void sub_29D6F8B2C()
{
  if (!qword_2A17B23F0)
  {
    sub_29D6F8BC0(255);
    sub_29D6FB6F0(&qword_2A17B2478, sub_29D6F8BC0);
    v0 = sub_29D939758();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B23F0);
    }
  }
}

void sub_29D6F8BF4()
{
  if (!qword_2A17B2400)
  {
    sub_29D6F8C90(255);
    sub_29D6F8F5C(255);
    sub_29D6F90C0();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B2400);
    }
  }
}

void sub_29D6F8CCC()
{
  if (!qword_2A17B2418)
  {
    sub_29D69A8C4();
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2418);
    }
  }
}

void sub_29D6F8D4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D6FA094(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D6F8DB8()
{
  result = qword_2A17B2430;
  if (!qword_2A17B2430)
  {
    sub_29D6F8CCC();
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2430);
  }

  return result;
}

unint64_t sub_29D6F8E90()
{
  result = qword_2A17B2440;
  if (!qword_2A17B2440)
  {
    sub_29D6FA094(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2440);
  }

  return result;
}

uint64_t sub_29D6F8F0C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6F8D4C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6F8F7C()
{
  if (!qword_2A17B2458)
  {
    sub_29D6F8FFC();
    sub_29D6F8D4C(255, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2458);
    }
  }
}

void sub_29D6F8FFC()
{
  if (!qword_2A17B2460)
  {
    sub_29D6FB3FC(255, &qword_2A17B2410, sub_29D6F8CCC, sub_29D6F8DB8);
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2460);
    }
  }
}

void sub_29D6F90C0()
{
  if (!qword_2A17B2470)
  {
    sub_29D939098();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2470);
    }
  }
}

void sub_29D6F9188()
{
  if (!qword_2A17B2490)
  {
    sub_29D6F91F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2490);
    }
  }
}

void sub_29D6F91F0()
{
  if (!qword_2A17B2498)
  {
    sub_29D6F9288();
    sub_29D6FAB24(255, &qword_2A17B2520, MEMORY[0x29EDBC380], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2498);
    }
  }
}

void sub_29D6F9288()
{
  if (!qword_2A17B24A0)
  {
    sub_29D6FAC20(255, &qword_2A17B24A8, sub_29D6F9324);
    sub_29D6F8D4C(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B24A0);
    }
  }
}

void sub_29D6F9324()
{
  if (!qword_2A17B24B0)
  {
    sub_29D6F9444();
    sub_29D938FE8();
    sub_29D6F94E4(255);
    sub_29D6F9824();
    sub_29D6F98D4();
    swift_getOpaqueTypeConformance2();
    sub_29D6FB6F0(&qword_2A17B2510, MEMORY[0x29EDBC098]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24B0);
    }
  }
}

void sub_29D6F9444()
{
  if (!qword_2A17B24B8)
  {
    sub_29D6F94E4(255);
    sub_29D6F9824();
    sub_29D6F98D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24B8);
    }
  }
}

void sub_29D6F950C()
{
  if (!qword_2A17B24C8)
  {
    sub_29D6FA324(255, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    sub_29D6F9734();
    v0 = sub_29D939718();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B24C8);
    }
  }
}

void sub_29D6F958C()
{
  if (!qword_2A17B24D8)
  {
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29D6F9690();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24D8);
    }
  }
}

void sub_29D6F963C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D6F9690()
{
  result = qword_2A17B24E8;
  if (!qword_2A17B24E8)
  {
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24E8);
  }

  return result;
}

unint64_t sub_29D6F9734()
{
  result = qword_2A17B24F0;
  if (!qword_2A17B24F0)
  {
    sub_29D6FA324(255, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29D6F9690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24F0);
  }

  return result;
}

unint64_t sub_29D6F9824()
{
  result = qword_2A17B24F8;
  if (!qword_2A17B24F8)
  {
    sub_29D6F94E4(255);
    sub_29D6FB6F0(&qword_2A17B2500, sub_29D6F950C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24F8);
  }

  return result;
}

unint64_t sub_29D6F98D4()
{
  result = qword_2A17B2508;
  if (!qword_2A17B2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2508);
  }

  return result;
}

unint64_t sub_29D6F9928()
{
  result = qword_2A17B2530;
  if (!qword_2A17B2530)
  {
    sub_29D6FAF70(255, &qword_2A17B23B0, sub_29D6F88D8);
    sub_29D6F99FC(&qword_2A17B2538, sub_29D6F88D8, sub_29D6F9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2530);
  }

  return result;
}

uint64_t sub_29D6F99FC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6F9AB4()
{
  result = qword_2A17B2548;
  if (!qword_2A17B2548)
  {
    sub_29D6F8928(255);
    sub_29D6FB6F0(&qword_2A17B2550, sub_29D6F8950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2548);
  }

  return result;
}

unint64_t sub_29D6F9B6C()
{
  result = qword_2A17B2558;
  if (!qword_2A17B2558)
  {
    sub_29D6F8828(255);
    sub_29D6FB6F0(&qword_2A17B2560, sub_29D6F8850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2558);
  }

  return result;
}

uint64_t sub_29D6F9C1C()
{
  v1 = type metadata accessor for HypertensionNotificationDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_29D6FAB24(0, &qword_2A17B2398, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D938738();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[6] + 8);

  v9 = *(v5 + v1[7] + 8);

  v10 = (v5 + v1[8]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D6F9DE4()
{
  v2 = *(type metadata accessor for HypertensionNotificationDetailView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_29D6AC948;

  return sub_29D6F6EF8(v0 + v3);
}

void sub_29D6F9EB0()
{
  if (!qword_2A17B2578)
  {
    sub_29D6FAF70(255, &qword_2A17B2568, sub_29D6F9DC4);
    sub_29D938778();
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2578);
    }
  }
}

void sub_29D6F9F3C()
{
  if (!qword_2A1A22250)
  {
    sub_29D6F9FC4(255, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0);
    sub_29D6A0CD0();
    v0 = sub_29D93A038();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A22250);
    }
  }
}

void sub_29D6F9FC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    v5 = sub_29D93A7F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D6FA034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D6FA04C()
{
  result = qword_2A17B2580;
  if (!qword_2A17B2580)
  {
    type metadata accessor for HypertensionNotificationDetailView();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B2580);
  }

  return result;
}

void sub_29D6FA094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D6FA0E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938788();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6FA148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6FA1C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HypertensionNotificationDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_29D6FA244@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for HypertensionNotificationDetailView();
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 36));
  *a1 = v4;

  return v4;
}

uint64_t sub_29D6FA2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D6FA324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6F958C();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D6FA388(uint64_t a1)
{
  sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FA410()
{
  result = qword_2A17B25A8;
  if (!qword_2A17B25A8)
  {
    sub_29D6F8F7C();
    sub_29D6FA4B0();
    sub_29D6F8F0C(&qword_2A17B17F0, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25A8);
  }

  return result;
}

unint64_t sub_29D6FA4B0()
{
  result = qword_2A17B25B0;
  if (!qword_2A17B25B0)
  {
    sub_29D6F8FFC();
    sub_29D6F8CCC();
    sub_29D6F8DB8();
    swift_getOpaqueTypeConformance2();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25B0);
  }

  return result;
}

unint64_t sub_29D6FA560()
{
  result = qword_2A17B25B8;
  if (!qword_2A17B25B8)
  {
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25B8);
  }

  return result;
}

void sub_29D6FA5F4()
{
  if (!qword_2A17B25C8)
  {
    sub_29D6F9EB0();
    sub_29D6FB0BC(&qword_2A17B25D0, sub_29D6F9EB0, sub_29D6FA69C, sub_29D6FA7B8);
    v0 = sub_29D938798();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B25C8);
    }
  }
}

unint64_t sub_29D6FA69C()
{
  result = qword_2A17B25D8;
  if (!qword_2A17B25D8)
  {
    sub_29D6FAF70(255, &qword_2A17B2568, sub_29D6F9DC4);
    sub_29D6FB0BC(&qword_2A17B25E0, sub_29D6F9DC4, sub_29D6F9B6C, sub_29D6FA784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25D8);
  }

  return result;
}

void sub_29D6FA828()
{
  if (!qword_2A17B25F8)
  {
    sub_29D6FA8BC(255);
    sub_29D6FB6F0(&qword_2A17B2630, sub_29D6FA8BC);
    v0 = sub_29D939728();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B25F8);
    }
  }
}

void sub_29D6FA8F0()
{
  if (!qword_2A17B2608)
  {
    sub_29D6FA990(255, &qword_2A17B2610, sub_29D6FAA24, &qword_2A17B2628, sub_29D6FAA24);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2608);
    }
  }
}

void sub_29D6FA990(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6FB6F0(a4, a5);
    v8 = sub_29D939758();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6FAA58()
{
  if (!qword_2A17B2620)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2620);
    }
  }
}

void sub_29D6FAB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D6FAB88()
{
  if (!qword_2A17B2648)
  {
    sub_29D6FAC00(255);
    sub_29D6FAE00(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B2648);
    }
  }
}

void sub_29D6FAC20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D939098();
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6FACAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6FAD44()
{
  if (!qword_2A17B2660)
  {
    sub_29D69A8C4();
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2660);
    }
  }
}

void sub_29D6FAE40()
{
  if (!qword_2A17B2678)
  {
    sub_29D6FAECC();
    sub_29D6FA094(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2678);
    }
  }
}

void sub_29D6FAECC()
{
  if (!qword_2A17B2680)
  {
    sub_29D6FAF70(255, &qword_2A17B2688, sub_29D69D93C);
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2680);
    }
  }
}

void sub_29D6FAF70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D6FAFD4()
{
  result = qword_2A17B2690;
  if (!qword_2A17B2690)
  {
    sub_29D6FAC8C(255);
    sub_29D69A8C4();
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    swift_getOpaqueTypeConformance2();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2690);
  }

  return result;
}

uint64_t sub_29D6FB0BC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6FB190()
{
  result = qword_2A17B26A8;
  if (!qword_2A17B26A8)
  {
    sub_29D6FAECC();
    sub_29D6FB230();
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26A8);
  }

  return result;
}

unint64_t sub_29D6FB230()
{
  result = qword_2A17B26B0;
  if (!qword_2A17B26B0)
  {
    sub_29D6FAF70(255, &qword_2A17B2688, sub_29D69D93C);
    sub_29D69DCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26B0);
  }

  return result;
}

uint64_t sub_29D6FB2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6FB33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6FB39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D6FB3FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D6FB48C()
{
  if (!qword_2A17B26C0)
  {
    sub_29D6FB50C();
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B26C0);
    }
  }
}

void sub_29D6FB50C()
{
  if (!qword_2A17B26C8)
  {
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B26C8);
    }
  }
}

unint64_t sub_29D6FB598()
{
  result = qword_2A17B26D0;
  if (!qword_2A17B26D0)
  {
    sub_29D6FB48C();
    sub_29D6FB670(&qword_2A17B26D8, sub_29D6FB50C, sub_29D6FA560);
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26D0);
  }

  return result;
}

uint64_t sub_29D6FB670(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6FB6F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D6FB774()
{
  result = qword_2A17B26F8;
  if (!qword_2A17B26F8)
  {
    sub_29D6FB85C(255, &qword_2A17B2700, &qword_2A17B26B8, sub_29D6FB48C, sub_29D6FB598);
    sub_29D6FB48C();
    sub_29D6FB598();
    swift_getOpaqueTypeConformance2();
    sub_29D6FA784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26F8);
  }

  return result;
}

void sub_29D6FB85C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_29D6FB3FC(255, a3, a4, a5);
    sub_29D939098();
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D6FB910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D933A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v32[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC9E90];
  sub_29D6FC800(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v12 = *(sub_29D9359D8() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v31 = xmmword_29D93DDB0;
  *(v15 + 16) = xmmword_29D93DDB0;
  sub_29D6FC800(0, &qword_2A17B1138, sub_29D6FC5F4, v11);
  v16 = swift_allocObject();
  *(v16 + 16) = v31;
  *(v16 + 56) = sub_29D935DA8();
  *(v16 + 64) = sub_29D6FC74C(&qword_2A17B2708, MEMORY[0x29EDC23F8]);
  v17 = sub_29D693F78((v16 + 32));
  sub_29D6FBCAC(a2, a3, v17);
  sub_29D933A48();
  sub_29D933A18();
  v18 = *(v6 + 8);
  v18(v10, v5);
  sub_29D9359C8();
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v32, "MutableArray<");
  HIWORD(v32[1]) = -4864;
  sub_29D933A48();
  v19 = sub_29D933A18();
  v21 = v20;
  v18(v10, v5);
  MEMORY[0x29ED6A240](v19, v21);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  v22 = sub_29D935B98();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_29D935B28();
  v25 = sub_29D9355C8();

  v26 = sub_29D936338();
  sub_29D6FC658();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  return sub_29D88C5D0(v25, v26, 1);
}

uint64_t sub_29D6FBCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = a3;
  v30 = sub_29D936BE8();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v30, v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC800(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v27 = &v27 - v9;
  v10 = sub_29D935C78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D937B88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v22 = [objc_opt_self() systemBlueColor];
  v23 = sub_29D937A98();
  sub_29D937A68();
  v23(v34, 0);
  v34[3] = v16;
  v34[4] = MEMORY[0x29EDC7800];
  v24 = sub_29D693F78(v34);
  (*(v17 + 16))(v24, v21, v16);
  *v15 = 1;
  (*(v11 + 104))(v15, *MEMORY[0x29EDC22C0], v10);
  v25 = sub_29D9379E8();
  (*(*(v25 - 8) + 56))(v27, 1, 1, v25);
  (*(v28 + 104))(v29, *MEMORY[0x29EDC2A38], v30);
  sub_29D935E88();
  sub_29D935D98();
  return (*(v17 + 8))(v21, v16);
}

uint64_t sub_29D6FC104()
{
  v0 = sub_29D935D08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v6 = sub_29D935CF8();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_29D6FC1D8(void *a1)
{
  v2 = sub_29D939968();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D939998();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v14 = sub_29D93A468();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_29D6FC7E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2441FE0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D6FC74C(&qword_2A1A249D0, MEMORY[0x29EDCA248]);
  sub_29D6FC800(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v13, v7, v16);
  _Block_release(v16);

  (*(v3 + 8))(v7, v2);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_29D6FC4B0()
{
  type metadata accessor for BloodPressureDataTypeDetailViewController();
  if (swift_dynamicCastClass())
  {
    v0 = sub_29D7D0C64();
  }

  else
  {
    v0 = 5;
  }

  v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v2 = type metadata accessor for BloodPressurePDFProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  sub_29D935EC8();
  v4 = v1;
  *(v3 + 24) = sub_29D935E98();
  *(v3 + 32) = 0x416E285000000000;
  *(v3 + 40) = 1;
  *(v3 + 41) = v0;
  v6[3] = v2;
  v6[4] = sub_29D6FC74C(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider);
  v6[0] = v3;
  sub_29D93A398();
  return sub_29D69417C(v6);
}

unint64_t sub_29D6FC5F4()
{
  result = qword_2A17B1140;
  if (!qword_2A17B1140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1140);
  }

  return result;
}

void sub_29D6FC658()
{
  if (!qword_2A17B2710)
  {
    sub_29D6FC6EC();
    sub_29D6FC74C(&qword_2A17B2720, sub_29D6FC6EC);
    v0 = type metadata accessor for BloodPressureJournalHideableDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2710);
    }
  }
}

void sub_29D6FC6EC()
{
  if (!qword_2A17B2718)
  {
    sub_29D935B98();
    v0 = sub_29D9357B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2718);
    }
  }
}

uint64_t sub_29D6FC74C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29D6FC794()
{
  result = qword_2A1A248D0;
  if (!qword_2A1A248D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A248D0);
  }

  return result;
}

uint64_t sub_29D6FC7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D6FC800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6FC864()
{
  result = qword_2A1A24980;
  if (!qword_2A1A24980)
  {
    sub_29D6FC800(255, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24980);
  }

  return result;
}

uint64_t sub_29D6FC8EC()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D934178();
  sub_29D6FD494(v6, qword_2A1A2BFA0);
  sub_29D69C6C0(v6, qword_2A1A2BFA0);
  sub_29D933FE8();
  sub_29D6FD4F8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v7 = sub_29D933F58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29D93DDB0;
  (*(v8 + 104))(v11 + v10, *MEMORY[0x29EDC3790], v7);
  sub_29D6E4080(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(inited);
  v14 = v13;
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  sub_29D8E8608(v14);

  (*(v1 + 104))(v5, *MEMORY[0x29EDC3898], v0);
  return sub_29D934168();
}

uint64_t sub_29D6FCBD8()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6FCCA0()
{
  v0 = type metadata accessor for AFibBurdenPromotionTileActionHandler();
  sub_29D6FD55C();
  return v0;
}

uint64_t sub_29D6FCCD4()
{
  v0 = sub_29D934798();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  sub_29D934788();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  return sub_29D9349E8();
}

uint64_t sub_29D6FCF20()
{
  v1 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPromotionGenerator()
{
  result = qword_2A1A23F70;
  if (!qword_2A1A23F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_29D6FD060(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = *v4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D9341E8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = type metadata accessor for AFibBurdenSettingsManager();
  v35[4] = &off_2A244C248;
  v34 = a3;
  v35[0] = a2;
  v20 = v15[2];
  v31 = v14;
  v20(v19, a3, v14);
  v21 = qword_2A1A247A0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_29D69C6C0(v8, qword_2A1A2BFA0);
  v33 = v9;
  v23 = *(v9 + 16);
  v23(v13, v22, v8);
  *(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_featurePromotionResult) = a1;
  v23(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain, v13, v8);
  if (a1 > 1u)
  {

    v25 = 0;
  }

  else
  {
    v24 = sub_29D93AD78();

    v25 = v24 ^ 1;
  }

  v26 = sub_29D8A8360(a1, v25 & 1, v19, v35, 0, 0xF000000000000000);
  v27 = v15[1];
  v28 = v31;
  v27(v34, v31);
  (*(v33 + 8))(v13, v8);
  v27(v19, v28);
  sub_29D6FD3A4(v35);
  *(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher) = v26;
  return v4;
}

uint64_t sub_29D6FD3A4(uint64_t a1)
{
  sub_29D6FD4F8(0, &qword_2A1A233D8, sub_29D6FD430, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FD430()
{
  result = qword_2A1A233E0[0];
  if (!qword_2A1A233E0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2A1A233E0);
  }

  return result;
}

uint64_t *sub_29D6FD494(uint64_t a1, uint64_t *a2)
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

void sub_29D6FD4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6FD55C()
{
  result = qword_2A17B2738;
  if (!qword_2A17B2738)
  {
    type metadata accessor for AFibBurdenPromotionTileActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2738);
  }

  return result;
}

uint64_t type metadata accessor for ElectrocardiogramPromotionTileActionHandler()
{
  result = qword_2A17B2758;
  if (!qword_2A17B2758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_29D6FD664@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = qword_2A17B2750;
  swift_beginAccess();
  sub_29D6FE77C(v1 + v9, v16);
  if (v17)
  {
    return sub_29D6940E0(v16, a1);
  }

  sub_29D6FE6B0(v16);
  v11 = v1;
  sub_29D936B88();
  sub_29D936608();
  (*(v4 + 8))(v8, v3);
  sub_29D693E2C(v16, v17);
  v12 = sub_29D936588();
  v13 = [v12 viewControllerFactory];

  sub_29D69417C(v16);
  v14 = [v13 createElectrocardiogramListDataProvider];

  sub_29D93A868();
  sub_29D936978();
  sub_29D694294(a1, v16);
  swift_beginAccess();
  sub_29D6FE808(v16, v11 + v9);
  return swift_endAccess();
}

void sub_29D6FD844()
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = v0;
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    swift_getObjectType();
    sub_29D6FE734();
    v7 = sub_29D939DA8();
    v9 = sub_29D6C2364(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, &v10);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s.%{public}s] On-boarding button tapped", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  sub_29D6FDD60();
}

void sub_29D6FD9F4(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v26[-1] - v11;
  [*(v1 + qword_2A17B2748) dismissOnboarding];
  v13 = *(v1 + qword_2A17B2740);
  type metadata accessor for ElectrocardiogramPromotionTileActionHandler();
  sub_29D6FE668(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler);
  v14 = sub_29D936AF8();
  if (v14)
  {
    v15 = v14;
    sub_29D936B88();
    sub_29D936608();
    v16 = *(v4 + 8);
    v16(v12, v3);
    sub_29D693E2C(v26, v27);
    v17 = sub_29D936588();
    v18 = [v17 viewControllerFactory];

    sub_29D69417C(v26);
    sub_29D6FD664(v26);
    sub_29D693E2C(v26, v27);
    v19 = sub_29D93AD68();
    sub_29D69417C(v26);
    v20 = [v18 createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:a1 dataProvider:v19];

    sub_29D936978();
    sub_29D936B88();
    v21 = sub_29D936618();
    v16(v9, v3);
    v22 = [v21 tabBarController];

    if (v22)
    {
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_29D940030;
      *(v23 + 32) = v20;
      v24 = v20;
      sub_29D74DA28(v15, v23, 0);
    }
  }
}

void sub_29D6FDCF8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D6FD9F4(v4);
}

void sub_29D6FDD60()
{
  v1 = sub_29D933CE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D936638();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v33 = *(v8 + 8);
  v33(v12, v7);
  sub_29D693E2C(v35, v35[3]);
  v13 = sub_29D936588();
  sub_29D933C88();
  v14 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v15 = sub_29D933BB8();
  v16 = [v14 initWithCalendar_];

  (*(v2 + 8))(v6, v1);
  LOBYTE(v31) = 1;
  v17 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v13 dateCache:v16 provenance:3 delegate:v0 isSampleInteractive:v31];

  sub_29D69417C(v35);
  v18 = *&v0[qword_2A17B2748];
  *&v0[qword_2A17B2748] = v17;
  v19 = v17;

  if (v19 && (v20 = [v19 onboardingNavigationController], v19, v20))
  {
    [v20 setModalInPresentation_];
    sub_29D936B88();
    v21 = sub_29D936618();
    v33(v12, v7);
    [v21 showViewController:v20 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v22 = sub_29D937898();
    sub_29D69C6C0(v22, qword_2A1A2C008);
    v23 = v0;
    v24 = sub_29D937878();
    v25 = sub_29D93A298();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D6FE734();
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, v35);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95AC80, v35);
      _os_log_impl(&dword_29D677000, v24, v25, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }
  }
}

uint64_t sub_29D6FE1B0(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  v10 = qword_2A17B2740;
  *&v9[v10] = [objc_opt_self() electrocardiogramType];
  *&v9[qword_2A17B2748] = 0;
  v11 = &v9[qword_2A17B2750];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  (*(v4 + 16))(v8, a1, v3);
  v12 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v12;
}

uint64_t sub_29D6FE2FC()
{
  v1 = v0 + qword_2A17B2750;

  return sub_29D6FE6B0(v1);
}

id sub_29D6FE34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramPromotionTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6FE384(uint64_t a1)
{
  v2 = a1 + qword_2A17B2750;

  return sub_29D6FE6B0(v2);
}

uint64_t sub_29D6FE3EC(uint64_t a1)
{
  v1 = *(a1 + qword_2A17B2748);
  *(a1 + qword_2A17B2748) = 0;
  return MEMORY[0x2A1C71028]();
}

void sub_29D6FE400()
{
  v1 = v0;
  v2 = sub_29D936638();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + qword_2A17B2748);
  *(v0 + qword_2A17B2748) = 0;

  sub_29D936B88();
  v9 = sub_29D936618();
  (*(v3 + 8))(v7, v2);
  v10 = [v9 tabBarController];

  if (v10)
  {
    v11 = *(v1 + qword_2A17B2740);
    type metadata accessor for ElectrocardiogramPromotionTileActionHandler();
    sub_29D6FE668(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler);
    v12 = sub_29D936AF8();
    if (v12)
    {
      v13 = v12;
      sub_29D74E500(v12, 0);

      v10 = v13;
    }
  }
}

void sub_29D6FE590(void *a1)
{
  v1 = a1;
  sub_29D6FE400();
}

uint64_t sub_29D6FE668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6FE6B0(uint64_t a1)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FE734()
{
  result = qword_2A17B2788;
  if (!qword_2A17B2788)
  {
    type metadata accessor for ElectrocardiogramPromotionTileActionHandler();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B2788);
  }

  return result;
}

uint64_t sub_29D6FE77C(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6FE808(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CardioFitnessRetroComputeFeedItemState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CardioFitnessRetroComputeFeedItemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_29D6FE93C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_29D6FE978(void *a1, uint64_t a2, int a3)
{
  v43 = a3;
  v41 = a2;
  v4 = MEMORY[0x29EDC9E88];
  sub_29D6FFBD0(0, &qword_2A17B27D0, sub_29D6FFA80, &type metadata for CardioFitnessRetroComputeFeedItemState.CompletedCodingKeys, MEMORY[0x29EDC9E88]);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v38 = &v34 - v8;
  sub_29D6FFBD0(0, &qword_2A17B27D8, sub_29D6FFAD4, &type metadata for CardioFitnessRetroComputeFeedItemState.InProgressCodingKeys, v4);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v34 - v12;
  sub_29D6FFBD0(0, &qword_2A17B27E0, sub_29D6FFB28, &type metadata for CardioFitnessRetroComputeFeedItemState.AvailableCodingKeys, v4);
  v15 = v14;
  v35 = *(v14 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v19 = &v34 - v18;
  sub_29D6FFBD0(0, &qword_2A17B27E8, sub_29D6FFB7C, &type metadata for CardioFitnessRetroComputeFeedItemState.CodingKeys, v4);
  v42 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v34 - v24;
  v26 = a1[4];
  sub_29D693E2C(a1, a1[3]);
  sub_29D6FFB7C();
  v27 = v43;
  sub_29D93AED8();
  if (!(v27 >> 6))
  {
    v31 = v35;
    v44 = 0;
    sub_29D6FFB28();
    v29 = v42;
    sub_29D93ACA8();
    sub_29D93ACF8();
    (*(v31 + 8))(v19, v15);
    return (*(v21 + 8))(v25, v29);
  }

  if (v27 >> 6 == 1)
  {
    v46 = 2;
    sub_29D6FFA80();
    v28 = v38;
    v29 = v42;
    sub_29D93ACA8();
    v30 = v40;
    sub_29D93ACC8();
    (*(v39 + 8))(v28, v30);
    return (*(v21 + 8))(v25, v29);
  }

  v45 = 1;
  sub_29D6FFAD4();
  v33 = v42;
  sub_29D93ACA8();
  (*(v36 + 8))(v13, v37);
  return (*(v21 + 8))(v25, v33);
}

uint64_t sub_29D6FEE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746F6D6F7270 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29D6FEE9C(uint64_t a1)
{
  v2 = sub_29D6FFB28();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FEED8(uint64_t a1)
{
  v2 = sub_29D6FFB28();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FEF14()
{
  v1 = 0x6572676F72506E69;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_29D6FEF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D6FF2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D6FEFA0(uint64_t a1)
{
  v2 = sub_29D6FFB7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FEFDC(uint64_t a1)
{
  v2 = sub_29D6FFB7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FF034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000029D95ACA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29D93AD78();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D6FF0C8(uint64_t a1)
{
  v2 = sub_29D6FFA80();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FF104(uint64_t a1)
{
  v2 = sub_29D6FFA80();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FF140(uint64_t a1)
{
  v2 = sub_29D6FFAD4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FF17C(uint64_t a1)
{
  v2 = sub_29D6FFAD4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FF1D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29D6FF3E0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_29D6FF220(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      if ((a4 & 0xC0) == 0x40)
      {
        if (a2)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && *&a1 == *&a3)
        {
          return 1;
        }
      }
    }

    else if ((a4 & 0xC0) == 0x80 && *&a3 == 0.0 && a4 == 128)
    {
      return 1;
    }
  }

  else if (a4 < 0x40u)
  {
    return (a3 ^ a1 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_29D6FF2AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D93AD78();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_29D6FF3E0(uint64_t *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D6FFBD0(0, &qword_2A17B2790, sub_29D6FFA80, &type metadata for CardioFitnessRetroComputeFeedItemState.CompletedCodingKeys, MEMORY[0x29EDC9E80]);
  v45 = v3;
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v50 = &v43 - v6;
  sub_29D6FFBD0(0, &qword_2A17B27A0, sub_29D6FFAD4, &type metadata for CardioFitnessRetroComputeFeedItemState.InProgressCodingKeys, v2);
  v46 = v7;
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v49 = &v43 - v10;
  sub_29D6FFBD0(0, &qword_2A17B27B0, sub_29D6FFB28, &type metadata for CardioFitnessRetroComputeFeedItemState.AvailableCodingKeys, v2);
  v12 = v11;
  v43 = *(v11 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v43 - v15;
  sub_29D6FFBD0(0, &qword_2A17B27C0, sub_29D6FFB7C, &type metadata for CardioFitnessRetroComputeFeedItemState.CodingKeys, v2);
  v18 = v17;
  v48 = *(v17 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v43 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v52 = a1;
  sub_29D693E2C(a1, v23);
  sub_29D6FFB7C();
  v25 = v51;
  sub_29D93AEC8();
  if (!v25)
  {
    v26 = v12;
    v28 = v49;
    v27 = v50;
    v29 = v48;
    v30 = sub_29D93AC98();
    v31 = (2 * *(v30 + 16)) | 1;
    v53 = v30;
    v54 = v30 + 32;
    v55 = 0;
    v56 = v31;
    v32 = sub_29D8741F4();
    if (v32 == 3 || v55 != v56 >> 1)
    {
      v16 = sub_29D93AA78();
      swift_allocError();
      v34 = v33;
      sub_29D6CA748();
      v35 = v22;
      v37 = *(v36 + 48);
      *v34 = &type metadata for CardioFitnessRetroComputeFeedItemState;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v16 - 8) + 104))(v34, *MEMORY[0x29EDC9DB8], v16);
      swift_willThrow();
      (*(v29 + 8))(v35, v18);
      sub_29D936978();
    }

    else if (v32)
    {
      if (v32 == 1)
      {
        v57 = 1;
        sub_29D6FFAD4();
        sub_29D93AC08();
        (*(v44 + 8))(v28, v46);
        (*(v29 + 8))(v22, v18);
        sub_29D936978();
        v16 = 0;
      }

      else
      {
        v57 = 2;
        sub_29D6FFA80();
        sub_29D93AC08();
        v40 = v45;
        v16 = sub_29D93AC38();
        (*(v47 + 8))(v27, v40);
        (*(v29 + 8))(v22, v18);
        sub_29D936978();
      }
    }

    else
    {
      v57 = 0;
      sub_29D6FFB28();
      v39 = v16;
      sub_29D93AC08();
      v41 = v22;
      v42 = sub_29D93AC68();
      (*(v43 + 8))(v39, v26);
      (*(v29 + 8))(v41, v18);
      sub_29D936978();
      v16 = v42 & 1;
    }
  }

  sub_29D69417C(v52);
  return v16;
}

unint64_t sub_29D6FFA80()
{
  result = qword_2A17B2798;
  if (!qword_2A17B2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2798);
  }

  return result;
}

unint64_t sub_29D6FFAD4()
{
  result = qword_2A17B27A8;
  if (!qword_2A17B27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27A8);
  }

  return result;
}

unint64_t sub_29D6FFB28()
{
  result = qword_2A17B27B8;
  if (!qword_2A17B27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27B8);
  }

  return result;
}

unint64_t sub_29D6FFB7C()
{
  result = qword_2A17B27C8;
  if (!qword_2A17B27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27C8);
  }

  return result;
}

void sub_29D6FFBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D6FFC7C()
{
  result = qword_2A17B27F0;
  if (!qword_2A17B27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27F0);
  }

  return result;
}

unint64_t sub_29D6FFCD4()
{
  result = qword_2A17B27F8;
  if (!qword_2A17B27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27F8);
  }

  return result;
}

unint64_t sub_29D6FFD2C()
{
  result = qword_2A17B2800;
  if (!qword_2A17B2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2800);
  }

  return result;
}

unint64_t sub_29D6FFD84()
{
  result = qword_2A17B2808;
  if (!qword_2A17B2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2808);
  }

  return result;
}

unint64_t sub_29D6FFDDC()
{
  result = qword_2A17B2810;
  if (!qword_2A17B2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2810);
  }

  return result;
}

unint64_t sub_29D6FFE34()
{
  result = qword_2A17B2818;
  if (!qword_2A17B2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2818);
  }

  return result;
}

unint64_t sub_29D6FFE8C()
{
  result = qword_2A17B2820;
  if (!qword_2A17B2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2820);
  }

  return result;
}

unint64_t sub_29D6FFEE4()
{
  result = qword_2A17B2828;
  if (!qword_2A17B2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2828);
  }

  return result;
}

unint64_t sub_29D6FFF3C()
{
  result = qword_2A17B2830;
  if (!qword_2A17B2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2830);
  }

  return result;
}

unint64_t sub_29D6FFF94()
{
  result = qword_2A17B2838;
  if (!qword_2A17B2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2838);
  }

  return result;
}

unint64_t sub_29D6FFFEC()
{
  result = qword_2A17B2840;
  if (!qword_2A17B2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2840);
  }

  return result;
}

uint64_t sub_29D700040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

char *sub_29D7000B8()
{
  v1 = *(v0 + 6);
  [v1 removeHeartRhythmAvailabilityObserver_];
  v2 = *(v0 + 7);
  [v2 unregisterObserver_];
  v3 = *(v0 + 3);

  v4 = *(v0 + 5);

  v5 = *(v0 + 8);

  v6 = *(v0 + 9);

  v7 = OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  sub_29D7007C0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t sub_29D7001AC()
{
  sub_29D7000B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TachycardiaFeatureStatusAvailability()
{
  result = qword_2A1A24FF0;
  if (!qword_2A1A24FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D700258()
{
  sub_29D7007C0(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D70034C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29D9347C8())
  {
    if (![objc_opt_self() activePairedWatchSupportsHeartRateMotionContexts] || (v9 = *(v1 + 48), sub_29D9339E8(), v10 = sub_29D933958(), (*(v4 + 8))(v8, v3), v11 = objc_msgSend(v9, sel_isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate_, v10), v10, v11))
    {
      v12 = MEMORY[0x29EDC1750];
LABEL_5:
      v13 = *v12;
      v14 = sub_29D9346E8();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a1, v13, v14);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    v19 = objc_opt_self();
    if (([v19 isBackgroundHeartRateEnabled] & 1) == 0)
    {
      v12 = MEMORY[0x29EDC1758];
      goto LABEL_5;
    }

    v20 = [v19 isTachycardiaDetectionEnabled];
    v21 = sub_29D9346E8();
    v22 = *(v21 - 8);
    v23 = (v22 + 56);
    if (v20)
    {
      v24 = MEMORY[0x29EDC1760];
    }

    else
    {
      v24 = MEMORY[0x29EDC1768];
    }

    (*(v22 + 104))(a1, *v24, v21);
    return (*v23)(a1, 0, 1, v21);
  }

  else
  {
    v17 = sub_29D9346E8();
    v18 = *(*(v17 - 8) + 56);

    return v18(a1, 1, 1, v17);
  }
}

void sub_29D70061C()
{
  v1 = v0;
  [*(v0 + 48) addHeartRhythmAvailabilityObserver_];
  [*(v0 + 56) registerObserver_];
  v2 = *(v0 + 16);
  v3 = v1[3];
  v4 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v5 = sub_29D939D28();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v1[4];
    v8 = v1[5];
    v9 = v6;
    v10 = sub_29D930B78(v6, v7, v8);

    v11 = v1[8];
    v1[8] = v10;

    v12 = v1[8];
    v13 = sub_29D935E88();
    sub_29D930DB4(v13);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_29D700D4C;
    *(v15 + 24) = v14;
    sub_29D700D5C();
    sub_29D700DC0();
    v16 = sub_29D938588();

    v17 = v1[9];
    v1[9] = v16;
  }
}

void sub_29D7007C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D700824()
{
  sub_29D6D278C(0);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D70034C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D700C8C(v8, v5);
    sub_29D9383D8();
    return sub_29D700CF0(v8);
  }

  return result;
}

uint64_t sub_29D700B14(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D700B90(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v15 - v11;
  sub_29D700C8C(a1, &v15 - v11);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v12, v9);

  sub_29D9383D8();
  return sub_29D700CF0(v12);
}

uint64_t sub_29D700C8C(uint64_t a1, uint64_t a2)
{
  sub_29D6D278C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D700CF0(uint64_t a1)
{
  sub_29D6D278C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D700D5C()
{
  if (!qword_2A1A24A88)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A88);
    }
  }
}

unint64_t sub_29D700DC0()
{
  result = qword_2A1A24A90;
  if (!qword_2A1A24A90)
  {
    sub_29D700D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24A90);
  }

  return result;
}

char *sub_29D700E18(void *a1)
{
  sub_29D7007C0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3, v7);
  v9 = &v29 - v8;
  sub_29D6D278C(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v29 - v17;
  v19 = *MEMORY[0x29EDBB050];
  *(v1 + 2) = sub_29D939D68();
  *(v1 + 3) = v20;
  v21 = *MEMORY[0x29EDBB048];
  *(v1 + 4) = sub_29D939D68();
  *(v1 + 5) = v22;
  v23 = [objc_allocWithZone(MEMORY[0x29EDBAEB8]) init];
  v24 = MEMORY[0x29EDCA190];
  *(v1 + 7) = v23;
  *(v1 + 8) = v24;
  *(v1 + 9) = 0;
  v25 = OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v26 = sub_29D9346E8();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_29D700C8C(v18, v15);
  sub_29D938398();
  sub_29D700CF0(v18);
  (*(v5 + 32))(&v1[v25], v9, v4);
  *(v1 + 6) = a1;
  v27 = a1;
  sub_29D70034C(v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v18, v15);

  sub_29D9383D8();
  sub_29D700CF0(v18);
  sub_29D70061C();
  return v1;
}

uint64_t sub_29D7010AC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_29D93A898();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_29D703F90(v3, *(a1 + 36), 0, a1);
  sub_29D935E88();
  return v5;
}

uint64_t sub_29D701128(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_29D93A8C8();
    v5 = v4;
    v6 = sub_29D93A968();
    v8 = v7;
    v9 = MEMORY[0x29ED6ACF0](v3, v5, v6, v7);
    sub_29D703574(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_29D703574(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_29D93A898();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_29D703A8C(v3, v5, v2 != 0, a1, &unk_2A17B37A0, 0x29EDBAD60);
  v13 = v12;
  sub_29D703574(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_29D701254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_29D702D40(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D701344, 0, 0);
}

uint64_t sub_29D701344()
{
  v1 = v0[6];
  v24 = v0[10];
  v25 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v0[11] = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  v4 = objc_opt_self();
  v5 = sub_29D933958();
  v6 = sub_29D933958();
  v7 = [v4 predicateForSamplesWithStartDate:v5 endDate:v6 options:0];
  v0[12] = v7;

  v8 = MEMORY[0x29EDBA210];
  sub_29D702DA8(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D702D40(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v8);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v0[13] = sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  v12 = v7;
  sub_29D939AB8();

  v13 = MEMORY[0x29EDB9980];
  sub_29D702DA8(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
  sub_29D702D40(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v13);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  if (v1)
  {
    v18 = v1;
  }

  else
  {
    v18 = v25;
  }

  v19 = *(MEMORY[0x29EDBA230] + 4);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_29D7016A4;
  v21 = v0[10];
  v22 = v0[8];

  return MEMORY[0x2A1C5B578](v18, v22);
}

uint64_t sub_29D7016A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_29D701D8C;
  }

  else
  {
    v5 = sub_29D7017B8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29D7017B8()
{
  v60 = v0;
  v1 = v0[15];
  v58 = MEMORY[0x29EDCA190];
  if (v1 >> 62)
  {
LABEL_30:
    v54 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_29D93A928();
    v3 = v0[15];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_31:
    v1 = MEMORY[0x29EDCA190];
    goto LABEL_32;
  }

  v54 = v1 & 0xFFFFFFFFFFFFFF8;
  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[15];
  if (!v2)
  {
    goto LABEL_31;
  }

LABEL_3:
  v4 = 0;
  v51 = v3 + 32;
  v52 = v1 & 0xC000000000000001;
  v49 = *MEMORY[0x29EDBA890];
  v48 = *MEMORY[0x29EDBA888];
  v1 = MEMORY[0x29EDCA190];
  v50 = v2;
  while (2)
  {
    v47 = v1;
    v5 = v4;
    while (1)
    {
      if (v52)
      {
        v6 = MEMORY[0x29ED6AE30](v5, v0[15]);
      }

      else
      {
        if (v5 >= *(v54 + 16))
        {
          goto LABEL_29;
        }

        v6 = *(v51 + 8 * v5);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        v22 = v0[15];

        if (qword_2A1A24658 != -1)
        {
          swift_once();
        }

        v23 = sub_29D937898();
        sub_29D69C6C0(v23, qword_2A1A2BF10);
        v24 = v7;
        v25 = sub_29D937878();
        v26 = sub_29D93A288();

        v27 = os_log_type_enabled(v25, v26);
        v29 = v0[11];
        v28 = v0[12];
        v31 = v0[9];
        v30 = v0[10];
        v32 = v0[8];
        if (v27)
        {
          v55 = v0[10];
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v53 = v32;
          v35 = swift_slowAlloc();
          v59 = v35;
          *v33 = 136446466;
          *(v33 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v59);
          *(v33 + 12) = 2112;
          v36 = [v24 sampleType];
          *(v33 + 14) = v36;
          *v34 = v36;
          _os_log_impl(&dword_29D677000, v25, v26, "[%{public}s] Found unexpected sample of type: %@", v33, 0x16u);
          sub_29D6ACA3C(v34);
          MEMORY[0x29ED6BE30](v34, -1, -1);
          sub_29D69417C(v35);
          MEMORY[0x29ED6BE30](v35, -1, -1);
          MEMORY[0x29ED6BE30](v33, -1, -1);

          (*(v31 + 8))(v55, v53);
        }

        else
        {

          (*(v31 + 8))(v30, v32);
        }

        v37 = 0;
        goto LABEL_33;
      }

      v9 = v8;
      v10 = v0[13];
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v11 = v7;
      v12 = MEMORY[0x29ED6A6C0](v49);
      v13 = [v9 objectsForType_];

      sub_29D702E20();
      v14 = sub_29D93A0D8();

      v15 = sub_29D701128(v14);

      if (v15)
      {
      }

      v16 = v57[13];
      v17 = MEMORY[0x29ED6A6C0](v48);
      v18 = [v9 objectsForType_];

      v19 = sub_29D93A0D8();
      v1 = sub_29D701128(v19);

      if (v1)
      {

        if (v15)
        {
          break;
        }
      }

      ++v5;
      v0 = v57;
      if (v4 == v50)
      {
        v1 = v47;
        goto LABEL_32;
      }
    }

    v20 = v11;
    MEMORY[0x29ED6A300]();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_29D939F78();
    }

    sub_29D939FA8();

    v0 = v57;
    v1 = v58;
    if (v4 != v50)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v38 = v0[15];
  v40 = v0[11];
  v39 = v0[12];
  v41 = v0[9];
  v56 = v0[10];
  v42 = v0[8];

  v0[3] = v1;
  swift_getKeyPath();
  sub_29D702D40(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
  sub_29D702E94();
  sub_29D702F18();
  v43 = sub_29D939E98();

  v37 = sub_29D702068(v43);

  (*(v41 + 8))(v56, v42);
LABEL_33:
  v44 = v0[10];

  v45 = v0[1];

  return v45(v37);
}

uint64_t sub_29D701D8C()
{
  v25 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v6)
  {
    v22 = *(v0 + 96);
    v23 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v21 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v24);
    *(v12 + 12) = 2080;
    *(v0 + 16) = v7;
    v14 = v7;
    sub_29D6A0CD0();
    v15 = sub_29D939DB8();
    v17 = sub_29D6C2364(v15, v16, &v24);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Error querying for samples: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    (*(v9 + 8))(v23, v21);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = *(v0 + 80);

  v19 = *(v0 + 8);

  return v19(0);
}

void sub_29D70200C(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_29D933998();
}

unint64_t sub_29D702068(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_29D93A928();
    if (v19)
    {
      v20 = v19;
      v1 = sub_29D702BB8(v19, 0);
      sub_29D703348(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x29EDCA190];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_29D93A928();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x29ED6AE30]();
          v11 = MEMORY[0x29ED6AE30](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_29D702C48(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_29D702C48(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_29D702278()
{
  v0 = sub_29D933CE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x29EDB8DB0]) init];
  v7 = [v6 dateByAddingTimeInterval_];

  sub_29D933C88();
  v8 = sub_29D933BB8();
  (*(v1 + 8))(v5, v0);
  v9 = [v7 hk:v8 dateBeforeDateForCalendar:0x2000 rangeUnit:?];

  if (v9)
  {
    sub_29D933998();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D7023D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_29D9339F8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7024A0, 0, 0);
}

uint64_t sub_29D7024A0()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_29D702278();
  sub_29D9339E8();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_29D702548;
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  v7 = v0[3];

  return sub_29D701254(v5, v4, v6, v7);
}

uint64_t sub_29D702548(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v12 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  if (v1)
  {
    v10 = sub_29D7028C0;
  }

  else
  {
    v10 = sub_29D7026EC;
  }

  return MEMORY[0x2A1C73D48](v10, 0, 0);
}

uint64_t sub_29D7026EC()
{
  v16 = v0;
  v1 = v0[9];
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v13 = v0[9];
      }

      v14 = v0[9];
      v2 = sub_29D93A928();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v2 > 0;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF10);
    v5 = sub_29D937878();
    v6 = sub_29D93A288();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v15);
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Could not fetch samples", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  v10 = v0[6];
  v9 = v0[7];

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_29D7028C0()
{
  v18 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v17);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Could not fetch samples with error: %@", v8, 0x16u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[6];
  v13 = v0[7];

  v15 = v0[1];

  return v15(0);
}
uint64_t sub_29E6D5A94(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E754C98())
  {
    v12 = sub_29E609B5C(0, a2, a3);
    v13 = sub_29E6D5C00(a4, a2, a3);
    result = MEMORY[0x29ED96E90](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x29ED976A0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_29E754C98();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E6D5C00(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E609B5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6D5C4C()
{
  if (!qword_2A1A7D530)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E66257C();
    sub_29E6D5D94();
    v0 = sub_29E752608();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D530);
    }
  }
}

void sub_29E6D5CF8()
{
  if (!qword_2A1A7D4A0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E6D6564(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_29E754098();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D4A0);
    }
  }
}

unint64_t sub_29E6D5D94()
{
  result = qword_2A1A7D4E0;
  if (!qword_2A1A7D4E0)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D4E0);
  }

  return result;
}

void sub_29E6D5E1C()
{
  if (!qword_2A1A7D518)
  {
    sub_29E6D6178(255, &qword_2A1A7D4D8, sub_29E6D5CF8, MEMORY[0x29EDB8A60]);
    sub_29E6D5D94();
    v0 = sub_29E752658();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D518);
    }
  }
}

void sub_29E6D5EB0()
{
  if (!qword_2A1A7D528)
  {
    sub_29E6D5E1C();
    sub_29E66257C();
    sub_29E6D6564(&qword_2A1A7D520, sub_29E6D5E1C);
    v0 = sub_29E752638();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D528);
    }
  }
}

uint64_t sub_29E6D5F5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(sub_29E74FEB8() - 8) + 80);

  return sub_29E6D3C1C(a1, a2);
}

uint64_t sub_29E6D5FDC()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E6D6064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(sub_29E74FEB8() - 8) + 80);

  return sub_29E6D3858(a1, a2);
}

void sub_29E6D60E4()
{
  if (!qword_2A1A7D4B0)
  {
    sub_29E6D6178(255, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
    sub_29E6D623C();
    v0 = sub_29E752858();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D4B0);
    }
  }
}

void sub_29E6D6178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6D61EC()
{
  if (!qword_2A1A7D498)
  {
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D498);
    }
  }
}

unint64_t sub_29E6D623C()
{
  result = qword_2A1A7D500;
  if (!qword_2A1A7D500)
  {
    sub_29E6D6178(255, &qword_2A1A7D4F8, sub_29E6D61EC, MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D500);
  }

  return result;
}

uint64_t sub_29E6D62C8()
{
  v1 = sub_29E74FEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E6D6364@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29E74FEB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29E7153C0(v1 + v4, v5, a1);
}

void sub_29E6D6400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6D6464()
{
  if (!qword_2A1A7D508)
  {
    sub_29E622640();
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E6D6564(&qword_2A1A7D4F0, sub_29E622640);
    sub_29E6D5C00(&qword_2A1A7D430, &unk_2A1A7D420, 0x29EDB8E48);
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D508);
    }
  }
}

uint64_t sub_29E6D6564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6D65D0(uint64_t a1)
{
  sub_29E6D6400(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SleepCoachingOnboardingTileActionHandler()
{
  result = qword_2A1A7D320;
  if (!qword_2A1A7D320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_29E6D6704@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A7D338;
  swift_beginAccess();
  sub_29E6A127C(v1 + v3, &v6);
  if (*(&v7 + 1) == 1)
  {
    sub_29E6D6FD4(&v6);
    sub_29E7499A4(0xD000000000000019, 0x800000029E75ECE0, 0);
    sub_29E69FA08(a1, &v6);
    swift_beginAccess();
    sub_29E6A12E0(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_29E6D67DC()
{
  ObjectType = swift_getObjectType();
  v53 = sub_29E74F488();
  v51 = *(v53 - 8);
  v1 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_29E74F4A8();
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x2A1C7C4A8](v52);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E7515A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E750698();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v42 - v20;
  sub_29E7518B8();
  sub_29E751578();
  (*(v10 + 8))(v13, v9);
  sub_29E601938(v55, v55[3]);
  sub_29E751538();
  sub_29E5FECBC(v55);
  sub_29E752048();
  v22 = v15[2];
  v54 = v14;
  v22(v19, v21, v14);
  v45 = v8;
  v23 = sub_29E752088();
  v24 = sub_29E7546C8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55[0] = v43;
    *v25 = 136446466;
    v26 = sub_29E755178();
    v28 = sub_29E6B9C90(v26, v27, v55);
    ObjectType = v0;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    sub_29E6D70A0(&qword_2A1858B18, MEMORY[0x29EDC1D90]);
    v30 = v54;
    v31 = sub_29E754FD8();
    v33 = v32;
    v34 = v30;
    v35 = v15[1];
    v35(v19, v34);
    v36 = sub_29E6B9C90(v31, v33, v55);

    *(v25 + 14) = v36;
    _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s] Sleep coaching onboarding button tapped (presentation: %{public}s", v25, 0x16u);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v37, -1, -1);
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  else
  {

    v35 = v15[1];
    v35(v19, v54);
  }

  (*(v46 + 8))(v45, v47);
  v38 = *MEMORY[0x29EDC67E0];
  v39 = sub_29E71237C();
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v38 presentation:v39];

  (*(v51 + 104))(v49, *MEMORY[0x29EDC6A60], v53);
  v40 = v48;
  sub_29E74F498();
  sub_29E749B58(v40, 0, 0);
  (*(v50 + 8))(v40, v52);
  return (v35)(v21, v54);
}

uint64_t sub_29E6D6DB8(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = &v8[qword_2A1A7D338];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_29E768E70;
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29E6D6EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepCoachingOnboardingTileActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E6D6FD4(uint64_t a1)
{
  sub_29E6D704C(0, &qword_2A1A7CF88, sub_29E63DE6C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6D704C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6D70A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LatestSleepScoreSnapshotDataSource()
{
  result = qword_2A18596E0;
  if (!qword_2A18596E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D7190(void *a1, int a2)
{
  v116 = a2;
  v131 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6D884C(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v120 = &v107 - v5;
  sub_29E6D884C(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v117 = &v107 - v8;
  v122 = sub_29E74FB08();
  v121 = *(v122 - 8);
  v9 = *(v121 + 64);
  MEMORY[0x2A1C7C4A8](v122);
  v118 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_29E754048();
  v113 = *(v114 - 8);
  v11 = *(v113 + 64);
  MEMORY[0x2A1C7C4A8](v114);
  v126 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74F0D8();
  v14 = *(v13 - 8);
  v135 = v13;
  v136 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v125 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v107 - v18;
  v127 = sub_29E74ED28();
  v137 = *(v127 - 8);
  v20 = v137[8];
  v21 = MEMORY[0x2A1C7C4A8](v127);
  v124 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v134 = &v107 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v107 - v25;
  v27 = sub_29E74EDB8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v27);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_29E74EE78();
  v107 = *(v32 - 8);
  v33 = v107;
  v34 = *(v107 + 64);
  v35 = MEMORY[0x2A1C7C4A8](v32);
  v123 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v39 = &v107 - v38;
  v109 = &v107 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37);
  v42 = &v107 - v41;
  MEMORY[0x2A1C7C4A8](v40);
  v44 = &v107 - v43;
  (*(v28 + 104))(v31, *MEMORY[0x29EDB9C78], v27);
  v133 = v44;
  sub_29E74EDC8();
  (*(v28 + 8))(v31, v27);
  v132 = v26;
  sub_29E74ECE8();
  sub_29E74F148();
  sub_29E74F138();
  v119 = v19;
  sub_29E74F128();

  v45 = *(v33 + 16);
  v45(v42, v44, v32);
  v47 = v137 + 2;
  v46 = v137[2];
  v48 = v134;
  v49 = v26;
  v50 = v127;
  v46(v134, v49, v127);
  v112 = v47;
  v111 = v46;
  (*(v136 + 16))(v125, v19, v135);
  v110 = v45;
  v45(v39, v42, v32);
  v51 = v48;
  v52 = v48;
  v53 = v50;
  v46(v124, v52, v50);
  v45(v123, v42, v32);
  v54 = v131;
  v108 = v54;
  v55 = v126;
  sub_29E754008();
  v56 = v137[1];
  ++v137;
  v131 = v56;
  (v56)(v51, v53);
  v57 = v107;
  v58 = *(v107 + 8);
  v129 = v107 + 8;
  v130 = v58;
  v58(v42, v32);
  v59 = type metadata accessor for SleepScoreRoomModelProvider();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  v62 = swift_allocObject();
  v63 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  v64 = type metadata accessor for SleepScoreRoomModel();
  (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_currentUserModel) = 0;
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepQueryStatus) = 0;
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_observerQuery) = 0;
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) = 0;
  v65 = (v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_updateHandler);
  *v65 = 0;
  v65[1] = 0;
  *(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_healthStore) = v54;
  v66 = *(v57 + 32);
  v67 = v109;
  v66(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_gregorianCalendar, v109, v32);
  (*(v113 + 32))(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_today, v55, v114);
  (*(v136 + 32))(v62 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_algorithmVersion, v125, v135);
  v114 = qword_2A18596C8;
  *(v128 + qword_2A18596C8) = v62;
  v68 = v42;
  v69 = v110;
  v110(v42, v133, v32);
  v70 = v134;
  v71 = v111;
  v111(v134, v132, v53);
  v69(v67, v68, v32);
  v71(v124, v70, v53);
  v115 = v32;
  v69(v123, v68, v32);
  v72 = v108;
  v125 = v72;
  v73 = v126;
  sub_29E754008();
  v74 = type metadata accessor for VitalsRoomModelProvider();
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v77 = sub_29E6B2018(v72, v67, v73);

  (v131)(v134, v53);
  v130(v68, v32);
  v78 = qword_2A18596D0;
  v79 = v128;
  *(v128 + qword_2A18596D0) = v77;
  LOBYTE(v19) = v116;
  *(v79 + qword_2A18596D8) = v116;
  v80 = MEMORY[0x29EDC9E90];
  sub_29E6D884C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v81 = *(sub_29E750CA8() - 8);
  v82 = *(v81 + 72);
  v83 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6D884C(0, &qword_2A185A510, sub_29E61BFEC, v80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_29E764170;
  v85 = *(v79 + v114);
  v86 = OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_sleepScoreRoomModel;
  swift_beginAccess();
  v87 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
  *(v84 + 56) = v87;
  *(v84 + 64) = sub_29E6D88B0(&qword_2A18596F8, type metadata accessor for LatestSleepScoreVisualizationItem);
  v88 = sub_29E5FEBF4((v84 + 32));
  sub_29E62D760(v85 + v86, v88);
  *(v88 + *(v87 + 20)) = (*(v85 + OBJC_IVAR____TtC20SleepHealthAppPlugin27SleepScoreRoomModelProvider_hasReceivedQueryResult) & 1) == 0;
  v89 = sub_29E74FAA8();
  (*(*(v89 - 8) + 56))(v117, 1, 1, v89);
  v90 = sub_29E74FAD8();
  (*(*(v90 - 8) + 56))(v120, 1, 1, v90);
  v91 = v118;
  sub_29E74FAE8();
  v92 = type metadata accessor for SleepStageWidgetItem(0);
  *(v84 + 96) = v92;
  *(v84 + 104) = sub_29E6D88B0(&qword_2A1859700, type metadata accessor for SleepStageWidgetItem);
  v93 = sub_29E5FEBF4((v84 + 72));
  (*(v121 + 32))(v93, v91, v122);
  *(v93 + *(v92 + 20)) = v19;
  v94 = *(v79 + v78);
  v95 = OBJC_IVAR____TtC20SleepHealthAppPlugin23VitalsRoomModelProvider_vitalsRoomModel;
  swift_beginAccess();
  v96 = type metadata accessor for VitalsWidgetItem(0);
  *(v84 + 136) = v96;
  *(v84 + 144) = sub_29E6D88B0(&qword_2A1859708, type metadata accessor for VitalsWidgetItem);
  v97 = sub_29E5FEBF4((v84 + 112));
  v98 = sub_29E7500C8();
  (*(*(v98 - 8) + 16))(v97, v94 + v95, v98);
  *(v97 + *(v96 + 20)) = v19;
  sub_29E750C98();
  v99 = sub_29E750D08();
  v100 = *(v99 + qword_2A18596C8);
  v101 = swift_allocObject();
  swift_weakInit();
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v19;
  swift_retain_n();

  sub_29E6B610C(sub_29E6D88F8, v102);

  v103 = *(v99 + qword_2A18596D0);
  v104 = swift_allocObject();
  swift_weakInit();

  v105 = swift_allocObject();
  *(v105 + 16) = v104;
  *(v105 + 24) = v19;

  sub_29E6AFF88(sub_29E6D8904, v105);

  (*(v136 + 8))(v119, v135);
  (v131)(v132, v127);
  v130(v133, v115);

  return v99;
}

uint64_t sub_29E6D80A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x29EDC9C68];
  sub_29E6D884C(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v28 = v29 - v8 + 16;
  v9 = sub_29E74FB18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_29E6D884C(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v5);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = v29 - v16 + 16;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v18 = type metadata accessor for LatestSleepScoreVisualizationItem(0);
    v30 = v18;
    v31 = sub_29E6D88B0(&qword_2A18596F8, type metadata accessor for LatestSleepScoreVisualizationItem);
    v19 = a3;
    v20 = sub_29E5FEBF4(v29);
    sub_29E6D8910(a1, v20);
    v21 = type metadata accessor for SleepScoreRoomModel();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    *(v20 + *(v18 + 20)) = 0;
    a3 = v19;
    sub_29E750D38();

    sub_29E5FECBC(v29);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E6163F8();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_29E764160;
    *(v23 + 32) = sub_29E74EFF8();
    (*(v10 + 104))(v13, *MEMORY[0x29EDC6C60], v9);
    sub_29E74FA98();
    v24 = sub_29E74FAA8();
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    v25 = sub_29E74FAD8();
    (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
    v26 = type metadata accessor for SleepStageWidgetItem(0);
    v30 = v26;
    v31 = sub_29E6D88B0(&qword_2A1859700, type metadata accessor for SleepStageWidgetItem);
    v27 = sub_29E5FEBF4(v29);
    sub_29E74FAE8();
    *(v27 + *(v26 + 20)) = a3;
    sub_29E750D38();

    return sub_29E5FECBC(v29);
  }

  return result;
}

uint64_t sub_29E6D84C0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for VitalsWidgetItem(0);
    v9[3] = v6;
    v9[4] = sub_29E6D88B0(&qword_2A1859708, type metadata accessor for VitalsWidgetItem);
    v7 = sub_29E5FEBF4(v9);
    v8 = sub_29E7500C8();
    (*(*(v8 - 8) + 16))(v7, a1, v8);
    *(v7 + *(v6 + 20)) = a3;
    sub_29E750D38();

    return sub_29E5FECBC(v9);
  }

  return result;
}

uint64_t sub_29E6D8608()
{
  v1 = *(v0 + qword_2A18596C8);

  v2 = *(v0 + qword_2A18596D0);
}

uint64_t sub_29E6D8648()
{
  v0 = sub_29E750D58();
  v1 = *(v0 + qword_2A18596C8);

  v2 = *(v0 + qword_2A18596D0);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6D86DC()
{
  v0 = [sub_29E751098() traitCollection];
  sub_29E751758();
  v1 = [v0 preferredContentSizeCategory];

  v2 = [sub_29E751098() traitCollection];
  sub_29E751758();
  v3 = sub_29E754938();

  v4 = v1;
  v5 = sub_29E6B3B54(v3, v4);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v12 = v11;
  sub_29E6D8800();
  v13 = sub_29E6B338C(v10, v12, v7, v9);
  v14 = sub_29E754A38();

  return v14;
}

unint64_t sub_29E6D8800()
{
  result = qword_2A18596F0;
  if (!qword_2A18596F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A18596F0);
  }

  return result;
}

void sub_29E6D884C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6D88B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6D8910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreRoomModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6D89A0@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_29E754A58();
  a3[3] = &type metadata for SharingChartItem;
  a3[4] = sub_29E62E3FC();
  v7 = a2;
  v8 = a1;

  *a3 = v7;
  a3[1] = v8;
  a3[2] = v6;
  return result;
}

uint64_t sub_29E6D8A74()
{
  v1 = sub_29E7511A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_29E751198();
  v7 = sub_29E751188();
  v9 = v8;
  (*(v2 + 8))(v5, v1);

  return v7;
}

void sub_29E6D8B84(uint64_t a1)
{
  v2 = sub_29E750528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E752098();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = sub_29E7504F8();
  v10 = [v9 categoryID];

  if (v10 == 5)
  {
    sub_29E6E78F8(a1);
  }

  else
  {
    (*(v3 + 16))(v6, a1, v2);
    sub_29E750A78();
    sub_29E750A58();
    sub_29E750A88();
    v11 = objc_allocWithZone(sub_29E750CC8());
    sub_29E750CB8();
  }
}

uint64_t type metadata accessor for ScheduleOffDataSource()
{
  result = qword_2A1859728;
  if (!qword_2A1859728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6D8FB4(uint64_t a1)
{
  sub_29E6212E4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C();
  v34 = v6;
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6D9940();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x2A1C7C4A8](v10);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v33 - v17;
  v19 = type metadata accessor for SleepRoomDisabledScheduleSection();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_29E748360();
  sub_29E7527B8();
  if (BYTE1(v37) & 1 | ((v37 & BYTE2(v37) & 1) == 0))
  {
    v22 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v22 = MEMORY[0x29EDC2000];
  }

  (*(v12 + 104))(v18, *v22, v11);
  v23 = type metadata accessor for ScheduleOffDataSource();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  *(swift_allocObject() + qword_2A1859710) = MEMORY[0x29EDCA1A0];
  (*(v12 + 16))(v16, v18, v11);

  v26 = sub_29E750918();
  (*(v12 + 8))(v18, v11);
  v37 = a1;
  sub_29E602DD4();
  swift_retain_n();
  v27 = sub_29E754908();
  v38 = v27;
  v28 = sub_29E7548D8();
  (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
  sub_29E621428();
  sub_29E6D99AC(&qword_2A18572A8, sub_29E621428);
  sub_29E6D99AC(&qword_2A18568B8, sub_29E602DD4);
  sub_29E752968();
  sub_29E6214E8(v5);

  v29 = swift_allocObject();
  swift_weakInit();

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a1;
  v30[4] = v35;
  sub_29E6D99AC(&qword_2A18572B8, sub_29E62133C);

  v31 = v34;
  sub_29E7529A8();

  (*(v36 + 8))(v9, v31);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  return v26;
}

uint64_t sub_29E6D948C()
{
  v1 = *(v0 + 16);
  type metadata accessor for ScheduleOffDataSource();

  sub_29E6D8FB4(v2);
  sub_29E6D99AC(&qword_2A1859738, type metadata accessor for ScheduleOffDataSource);
  sub_29E750828();

  v3 = sub_29E750818();

  return v3;
}

uint64_t sub_29E6D954C()
{
  sub_29E6D9940();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if (v8[6] & 1 | ((v8[5] & v8[7] & 1) == 0))
    {
      v6 = MEMORY[0x29EDC1FF8];
    }

    else
    {
      v6 = MEMORY[0x29EDC2000];
    }

    (*(v2 + 104))(v5, *v6, v1);
    sub_29E750908();
  }
}

uint64_t sub_29E6D9700(uint64_t a1, uint64_t a2)
{
  sub_29E6D9940();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  *(swift_allocObject() + qword_2A1859710) = MEMORY[0x29EDCA1A0];
  (*(v6 + 16))(v9, a2, v5);
  v12 = sub_29E750918();
  (*(v6 + 8))(a2, v5);
  return v12;
}

uint64_t sub_29E6D9834()
{
  v0 = *(sub_29E750938() + qword_2A1859710);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6D988C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E6D98D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_29E6D9940()
{
  if (!qword_2A1859740)
  {
    type metadata accessor for SleepRoomDisabledScheduleSection();
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859740);
    }
  }
}

uint64_t sub_29E6D99A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29E6D954C();
}

uint64_t sub_29E6D99AC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_29E6D99F4()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) initWithFrame_];
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView;
  *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView] = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_imageView] = v3;
  sub_29E6163F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E7655E0;
  v5 = *&v0[v2];
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  v6 = objc_allocWithZone(MEMORY[0x29EDC7C90]);
  sub_29E609B5C(0, &qword_2A1859770, 0x29EDC7DA0);
  v7 = v3;
  v8 = v5;
  v9 = sub_29E7543D8();

  v10 = [v6 initWithArrangedSubviews_];

  *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView] = v10;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for IllustratedListItemView();
  v11 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins_];
  v12 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_textView];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setNumberOfLines_];
  v13 = sub_29E754198();
  [v12 setText_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 setFont_];

  sub_29E6D9EAC();

  sub_29E6DA0EC();
  sub_29E6DA5DC();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_29E762F30;
  v16 = sub_29E752288();
  v17 = MEMORY[0x29EDC7870];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E6DA6E8();
  sub_29E754B18();

  sub_29E751758();

  return v11;
}

void sub_29E6D9D28()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E6DA3E4();
  }

  else
  {
  }
}

void sub_29E6D9EAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_imageView);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A7FA18;
  v3 = sub_29E754198();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  [v1 setImage_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setContentMode_];
  [v1 setClipsToBounds_];
  v5 = objc_opt_self();
  sub_29E6163F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E7655E0;
  v7 = [v1 heightAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v6 + 32) = v8;
  v9 = [v1 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  *(v6 + 40) = v10;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v11 = sub_29E7543D8();

  [v5 activateConstraints_];
}

void sub_29E6DA0EC()
{
  sub_29E6DA3E4();
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView];
  [v1 setSpacing_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = objc_opt_self();
  sub_29E6163F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E7678B0;
  v4 = [v1 topAnchor];
  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v1 bottomAnchor];
  v13 = [v0 layoutMarginsGuide];
  v14 = [v13 bottomAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v1 trailingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;
  sub_29E609B5C(0, &qword_2A185AC70, 0x29EDBA008);
  v20 = sub_29E7543D8();

  [v2 activateConstraints_];
}

id sub_29E6DA3E4()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_29E7549D8();
  v4 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23IllustratedListItemView_stackView];
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  [v4 setAxis_];

  return [v4 setAlignment_];
}

id sub_29E6DA528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IllustratedListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E6DA5DC()
{
  if (!qword_2A1859778)
  {
    sub_29E6DA634();
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859778);
    }
  }
}

unint64_t sub_29E6DA634()
{
  result = qword_2A1859780;
  if (!qword_2A1859780)
  {
    sub_29E6DA67C();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A1859780);
  }

  return result;
}

unint64_t sub_29E6DA67C()
{
  result = qword_2A1859788;
  if (!qword_2A1859788)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859788);
  }

  return result;
}

unint64_t sub_29E6DA6E8()
{
  result = qword_2A1859790;
  if (!qword_2A1859790)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1859790);
  }

  return result;
}

uint64_t sub_29E6DA778(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29E6DADA0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29E6DA86C(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_29E6DB1E8(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_29E6DCB60(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_29E6DB1E8((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_29E6D5C44();
  *v1 = v4;
  return result;
}

void *sub_29E6DAB28(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29E6DB584(result, v11, 1, v3, &qword_2A1A7D3F0, &qword_2A1A7D6B8);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29E609CF8(0, &qword_2A1A7D6B8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29E6DAC78(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_29E754C98();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_29E754C98();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_29E6DAD78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_29E6DADA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859798);
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

char *sub_29E6DAEE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A18597C0);
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

char *sub_29E6DAFDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1859810, sub_29E6DD268);
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

char *sub_29E6DB0F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A18597B8);
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

char *sub_29E6DB1E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1A7BCF0);
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

char *sub_29E6DB314(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859828);
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

void *sub_29E6DB41C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7D3E8, sub_29E6C1224);
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
    sub_29E6C1224();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E6DB584(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
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
    sub_29E6DD09C(0, a5, a6);
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
    sub_29E609CF8(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29E6DB70C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1A7BD20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E6DB82C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7BCE8, type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification);
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

size_t sub_29E6DB974(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_29E6DD0F4(0, a5, a6);
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

void *sub_29E6DBB54(void *a1, int64_t a2, char a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A185A510, &qword_2A1856FF0);
  *v3 = result;
  return result;
}

char *sub_29E6DBB8C(char *a1, int64_t a2, char a3)
{
  result = sub_29E6DBF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E6DBBAC(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597E0, type metadata accessor for SleepOnboardingScheduleItem, type metadata accessor for SleepOnboardingScheduleItem);
  *v3 = result;
  return result;
}

char *sub_29E6DBBFC(char *a1, int64_t a2, char a3)
{
  result = sub_29E6DC044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E6DBC1C(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597C8, MEMORY[0x29EDC4358], MEMORY[0x29EDC4358]);
  *v3 = result;
  return result;
}

void *sub_29E6DBC6C(void *a1, int64_t a2, char a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A18587B0, &qword_2A1858798);
  *v3 = result;
  return result;
}

char *sub_29E6DBCA4(char *a1, int64_t a2, char a3)
{
  result = sub_29E6DC14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E6DBCC4(void *a1, int64_t a2, char a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A1858F38, &qword_2A1858F40);
  *v3 = result;
  return result;
}

size_t sub_29E6DBCFC(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597A0, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F8]);
  *v3 = result;
  return result;
}

void *sub_29E6DBD4C(void *a1, int64_t a2, char a3)
{
  result = sub_29E6DC254(a1, a2, a3, *v3, &qword_2A18568D0, &qword_2A1858310);
  *v3 = result;
  return result;
}

size_t sub_29E6DBD84(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1859800, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
  *v3 = result;
  return result;
}

size_t sub_29E6DBDD4(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597F8, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
  *v3 = result;
  return result;
}

size_t sub_29E6DBE24(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

size_t sub_29E6DBE74(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A18597D0, sub_29E6DD148, sub_29E6DD148);
  *v3 = result;
  return result;
}

size_t sub_29E6DBEC4(size_t a1, int64_t a2, char a3)
{
  result = sub_29E6DC3A8(a1, a2, a3, *v3, &qword_2A1A7BD00, type metadata accessor for BreathingDisturbancesData, type metadata accessor for BreathingDisturbancesData);
  *v3 = result;
  return result;
}

char *sub_29E6DBF14(char *a1, int64_t a2, char a3)
{
  result = sub_29E6DC588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E6DBF34(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859798);
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

char *sub_29E6DC044(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859820);
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

char *sub_29E6DC14C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E67905C(0, &qword_2A1859828);
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

void *sub_29E6DC254(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
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
    sub_29E6DD09C(0, a5, a6);
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
    sub_29E609CF8(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_29E6DC3A8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_29E6DD0F4(0, a5, a6);
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

char *sub_29E6DC588(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E6DD0F4(0, &qword_2A1A7BCE8, type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification);
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

uint64_t sub_29E6DC69C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_29E754C98();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_29E754D98();
    *v1 = result;
  }

  return result;
}

uint64_t sub_29E6DC758(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_29E754C98();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_29E754D98();
  *v1 = result;
  return result;
}

uint64_t sub_29E6DC7F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E754C98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29E754C98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E6DD1B0(0, &qword_2A18597E8, &qword_2A1856EA0, 0x29EDC47C8);
          sub_29E6DD208(&qword_2A18597F0, &qword_2A18597E8, &qword_2A1856EA0, 0x29EDC47C8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E6D4CA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29E609B5C(0, &qword_2A1856EA0, 0x29EDC47C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6DC9AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E754C98();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29E754C98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E6DD1B0(0, &qword_2A18597A8, &qword_2A1A7D490, 0x29EDBACB8);
          sub_29E6DD208(&qword_2A18597B0, &qword_2A18597A8, &qword_2A1A7D490, 0x29EDBACB8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E6D4CA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29E6DCB60(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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

uint64_t sub_29E6DCCB8()
{
  v48 = sub_29E74EF88();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v48);
  v47 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E754188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E67905C(0, &qword_2A1859798);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E762F40;
  sub_29E754118();
  v9 = sub_29E65B0B4(v7);
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v7, v3);
  sub_29E754118();
  v13 = sub_29E65B0B4(v7);
  v15 = v14;
  v12(v7, v3);
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 48) = v13;
  *(v8 + 56) = v15;
  sub_29E754118();
  v16 = sub_29E65B0B4(v7);
  v18 = v17;
  v12(v7, v3);
  sub_29E754118();
  v19 = sub_29E65B0B4(v7);
  v21 = v20;
  v12(v7, v3);
  *(v8 + 64) = v16;
  *(v8 + 72) = v18;
  *(v8 + 80) = v19;
  *(v8 + 88) = v21;
  v42 = v8;
  v22 = sub_29E74EF78();
  v23 = *(v22 + 16);
  if (v23)
  {
    v49 = MEMORY[0x29EDCA190];
    sub_29E6DBB8C(0, v23, 0);
    v24 = v49;
    v26 = *(v0 + 16);
    v25 = v0 + 16;
    v27 = *(v25 + 64);
    v41[1] = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v44 = *(v25 + 56);
    v45 = v26;
    v43 = (v25 - 8);
    v46 = v25;
    do
    {
      v30 = v47;
      v29 = v48;
      v45(v47, v28, v48);
      v31 = sub_29E74EF58();
      v33 = v32;
      v34 = sub_29E74EF68();
      v36 = v35;
      (*v43)(v30, v29);
      v49 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_29E6DBB8C((v37 > 1), v38 + 1, 1);
        v24 = v49;
      }

      *(v24 + 16) = v38 + 1;
      v39 = (v24 + 32 * v38);
      v39[4] = v31;
      v39[5] = v33;
      v39[6] = v34;
      v39[7] = v36;
      v28 += v44;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x29EDCA190];
  }

  v49 = v42;
  sub_29E6DA778(v24);
  return v49;
}

void sub_29E6DD09C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29E609CF8(255, a3);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6DD0F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6DD148()
{
  if (!qword_2A18597D8)
  {
    _s20SleepHealthAppPlugin22ScheduleOccurrenceItemVMa_0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18597D8);
    }
  }
}

void sub_29E6DD1B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_29E609B5C(255, a3, a4);
    v5 = sub_29E754448();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6DD208(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6DD1B0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6DD268()
{
  if (!qword_2A1859818)
  {
    v0 = sub_29E7545A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859818);
    }
  }
}

uint64_t sub_29E6DD2C0()
{
  v1 = v0;
  v2 = *v0;
  sub_29E754B98();
  v3 = v1[1];
  if (v3)
  {
    sub_29E7550E8();
    v4 = v3;
    sub_29E754B98();

    v5 = v1[2];
    if (v5)
    {
LABEL_3:
      sub_29E7550E8();
      v6 = v5;
      sub_29E754B98();

      goto LABEL_6;
    }
  }

  else
  {
    sub_29E7550E8();
    v5 = v1[2];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_29E7550E8();
LABEL_6:
  v7 = v1[3];
  v8 = v1[4];

  return sub_29E7542D8();
}

uint64_t sub_29E6DD380()
{
  sub_29E7550C8();
  sub_29E6DD2C0();
  return sub_29E755108();
}

uint64_t sub_29E6DD3C4()
{
  sub_29E7550C8();
  sub_29E6DD2C0();
  return sub_29E755108();
}

uint64_t sub_29E6DD400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_29E6DDA84(v5, v7) & 1;
}

uint64_t sub_29E6DD44C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_29E6DD47C(uint64_t a1)
{
  v2 = sub_29E621E84();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E6DD4C8(void *a1, void *a2)
{
  v4 = sub_29E74EE78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v13 = a2;
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();

  v16 = os_log_type_enabled(v14, v15);
  v45 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v42 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v41 = v8;
    v20 = v19;
    *&v47[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_29E6B9C90(0x6574497472616843, 0xE90000000000006DLL, v47);
    *(v18 + 12) = 2082;
    v46 = a2;
    sub_29E750648();
    v21 = v5;
    v22 = v4;
    v23 = v13;
    v24 = sub_29E754248();
    v26 = sub_29E6B9C90(v24, v25, v47);

    *(v18 + 14) = v26;
    v4 = v22;
    v5 = v21;
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Creating sleep chart with context: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v20, -1, -1);
    v27 = v18;
    a1 = v42;
    MEMORY[0x29ED98410](v27, -1, -1);

    (*(v9 + 8))(v12, v41);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v28 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  v29 = v44;
  sub_29E74EE28();

  v30 = objc_allocWithZone(MEMORY[0x29EDC6C18]);
  v31 = sub_29E74EE08();
  v32 = sub_29E754198();
  v33 = [v30 initWithCalendar:v31 queryIdentifier:v32];

  [a1 setSleepDataSourceProvider_];
  v34 = [a1 healthStore];
  v35 = [objc_allocWithZone(MEMORY[0x29EDC6C20]) initWithHealthStore_];

  [a1 setSleepChartFormatter_];
  v36 = v43;
  if (*(v43 + 16))
  {
    v37 = sub_29E754A28();
  }

  else
  {
    v37 = 0;
  }

  v38 = *(v36 + 16);
  v47[0] = *v36;
  v47[1] = v38;
  v48 = *(v36 + 32);
  sub_29E6DD938();
  v39 = sub_29E7510F8();

  (*(v5 + 8))(v29, v4);
  return v39;
}

void *sub_29E6DD908()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

unint64_t sub_29E6DD938()
{
  result = qword_2A1859830;
  if (!qword_2A1859830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859830);
  }

  return result;
}

uint64_t sub_29E6DD98C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29E6DD9D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E6DDA30()
{
  result = qword_2A1859838;
  if (!qword_2A1859838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859838);
  }

  return result;
}

uint64_t sub_29E6DDA84(uint64_t *a1, uint64_t *a2)
{
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  v4 = *a1;
  v5 = *a2;
  if ((sub_29E754B88() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
    v8 = v7;
    v9 = v6;
    v10 = sub_29E754B88();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = a1[2];
  v12 = a2[2];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  sub_29E609B5C(0, &qword_2A1857610, 0x29EDC4440);
  v13 = v12;
  v14 = v11;
  v15 = sub_29E754B88();

  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_29E755028();
}

uint64_t type metadata accessor for OnboardingDataSource()
{
  result = qword_2A1859858;
  if (!qword_2A1859858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6DDC80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v42 = a1;
  sub_29E6212E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C();
  v41 = v10;
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6DE6C8();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v39 - v21;
  sub_29E602E20(a1, v46);
  v40 = a2;
  v23 = a2[4];
  sub_29E601938(a2, a2[3]);
  v24 = sub_29E74F4E8();
  v25 = type metadata accessor for OnboardingSection(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_29E619EF0(v46, v24);
  sub_29E7527B8();
  if (BYTE2(v46[0]) & 1 | ((v46[0] & 1) == 0))
  {
    v28 = MEMORY[0x29EDC1FF8];
  }

  else
  {
    v28 = MEMORY[0x29EDC2000];
  }

  (*(v16 + 104))(v22, *v28, v15);
  v29 = type metadata accessor for OnboardingDataSource();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  *(swift_allocObject() + qword_2A1859840) = MEMORY[0x29EDCA1A0];
  (*(v16 + 16))(v20, v22, v15);

  v32 = sub_29E750918();
  (*(v16 + 8))(v22, v15);
  v46[0] = a3;
  sub_29E602DD4();
  swift_retain_n();
  v33 = sub_29E754908();
  v45 = v33;
  v34 = sub_29E7548D8();
  (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
  sub_29E621428();
  sub_29E6DE734(&qword_2A18572A8, sub_29E621428);
  sub_29E6DE734(&qword_2A18568B8, sub_29E602DD4);
  sub_29E752968();
  sub_29E6214E8(v9);

  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = a3;
  v36[4] = v43;
  sub_29E6DE734(&qword_2A18572B8, sub_29E62133C);

  v37 = v41;
  sub_29E7529A8();

  (*(v44 + 8))(v13, v37);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E5FECBC(v42);
  sub_29E5FECBC(v40);
  return v32;
}

uint64_t sub_29E6DE1A8()
{
  type metadata accessor for OnboardingDataSource();
  sub_29E602E20(v0 + 16, v5);
  sub_29E602E20(v0 + 56, v4);
  v1 = *(v0 + 96);

  sub_29E6DDC80(v5, v4, v1);
  sub_29E6DE734(&qword_2A1859868, type metadata accessor for OnboardingDataSource);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

uint64_t sub_29E6DE298()
{
  sub_29E6DE6C8();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E7527B8();
    if (v8[7] & 1 | ((v8[5] & 1) == 0))
    {
      v6 = MEMORY[0x29EDC1FF8];
    }

    else
    {
      v6 = MEMORY[0x29EDC2000];
    }

    (*(v2 + 104))(v5, *v6, v1);
    sub_29E750908();
  }
}

uint64_t sub_29E6DE444(uint64_t a1, uint64_t a2)
{
  sub_29E6DE6C8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  *(swift_allocObject() + qword_2A1859840) = MEMORY[0x29EDCA1A0];
  (*(v6 + 16))(v9, a2, v5);
  v12 = sub_29E750918();
  (*(v6 + 8))(a2, v5);
  return v12;
}

uint64_t sub_29E6DE578()
{
  v0 = *(sub_29E750938() + qword_2A1859840);

  return swift_deallocClassInstance();
}

__n128 sub_29E6DE5D0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_29E6DE5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_29E6DE644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E6DE6C8()
{
  if (!qword_2A1859870)
  {
    type metadata accessor for OnboardingSection(255);
    v0 = sub_29E7508F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859870);
    }
  }
}

uint64_t sub_29E6DE728()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_29E6DE298();
}

uint64_t sub_29E6DE734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepApneaEventSummaryViewModel()
{
  result = qword_2A1859878;
  if (!qword_2A1859878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6DE7F0()
{
  result = sub_29E74ED28();
  if (v1 <= 0x3F)
  {
    result = sub_29E609B5C(319, &qword_2A1859888, 0x29EDBABE8);
    if (v2 <= 0x3F)
    {
      result = sub_29E609B5C(319, &qword_2A1859890, 0x29EDBAA00);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E6DE8B4(char a1, void *a2)
{
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v26 - v10;
  if (a1)
  {
    sub_29E752068();
    v12 = sub_29E752088();
    v13 = sub_29E754688();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_29E6B9C90(0xD00000000000001FLL, 0x800000029E76AB50, &v27);
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_29E752068();
    v17 = a2;
    v18 = sub_29E752088();
    v19 = sub_29E7546A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v20 = 136446466;
      *(v20 + 4) = sub_29E6B9C90(0xD00000000000001FLL, 0x800000029E76AB50, &v27);
      *(v20 + 12) = 2112;
      if (a2)
      {
        v23 = a2;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v20 + 14) = v24;
      *v21 = v25;
      _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Failed to submit analytics with error: %@", v20, 0x16u);
      sub_29E6764FC(v21);
      MEMORY[0x29ED98410](v21, -1, -1);
      sub_29E5FECBC(v22);
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_29E6DEC10()
{
  sub_29E65AA20(319);
  if (v0 <= 0x3F)
  {
    sub_29E74F5F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6DECB8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_29E753C88();
}

uint64_t sub_29E6DEEAC(uint64_t a1)
{
  v2 = sub_29E74F718();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D18();
}

void sub_29E6DEF74(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E6E08D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E10FC(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29E752FF8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859958, sub_29E6E0964);
  sub_29E6DF180(v2, &v7[*(v13 + 44)]);
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E6E1124(v7, v12, sub_29E6E08D0);
  v14 = &v12[*(v9 + 44)];
  v15 = v28[5];
  *(v14 + 4) = v28[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v28[6];
  v16 = v28[1];
  *v14 = v28[0];
  *(v14 + 1) = v16;
  v17 = v28[3];
  *(v14 + 2) = v28[2];
  *(v14 + 3) = v17;
  LOBYTE(v7) = sub_29E7533A8();
  sub_29E7529C8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_29E6E1124(v12, a1, sub_29E6E10FC);
  sub_29E6E118C(0);
  v27 = a1 + *(v26 + 36);
  *v27 = v7;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
}

uint64_t sub_29E6DF180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v105 = a2;
  sub_29E6E0EB4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_29E752C88();
  v96 = *(v92 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x2A1C7C4A8](v92);
  v11 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1024();
  v97 = v12;
  v95 = *(v12 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0F7C(0);
  v94 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v100 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v93 = v88 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v99 = v88 - v22;
  sub_29E6E0EF0(0);
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23);
  v98 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v106 = v88 - v28;
  sub_29E6E0E80(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x2A1C7C4A8](v29 - 8);
  v104 = v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v101 = v88 - v33;
  sub_29E6E0A8C();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x2A1C7C4A8](v34 - 8);
  v103 = v88 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36);
  v39 = v88 - v38;
  sub_29E7544C8();
  v102 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v39 = sub_29E753368();
  sub_29E6E11B4();
  sub_29E6DFA6C(a1, &v39[*(v40 + 44)]);
  v41 = sub_29E6E0428();
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v89 = v8;
    v90 = v5;
    v91 = v4;
    v45 = v106;
    sub_29E753AF8();
    v46 = sub_29E7533B8();
    sub_29E7529C8();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_29E6C3B78(0);
    v56 = v45 + *(v55 + 36);
    *v56 = v46;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    v57 = sub_29E7533C8();
    sub_29E7529C8();
    v58 = v45 + *(v24 + 36);
    *v58 = v57;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    *(v58 + 32) = v62;
    *(v58 + 40) = 0;
    v108 = v43;
    v109 = v44;
    sub_29E60DE10();
    v63 = sub_29E753608();
    v65 = v64;
    v67 = v66;
    v108 = v63;
    v109 = v64;
    v110 = v66 & 1;
    v111 = v68;
    v69 = *(a1 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24));
    if (v69 == 1)
    {
      sub_29E752C78();
      v70 = v92;
    }

    else
    {
      v107 = MEMORY[0x29EDCA190];
      v88[1] = sub_29E6E0D0C(&qword_2A1857CE8, MEMORY[0x29EDBC588]);
      sub_29E6505BC(0);
      sub_29E6E0D0C(&qword_2A1857CF8, sub_29E6505BC);
      v70 = v92;
      sub_29E754C58();
    }

    sub_29E7538A8();
    (*(v96 + 8))(v11, v70);
    sub_29E60DB44(v63, v65, v67 & 1);

    v73 = sub_29E753C68();
    v74 = v93;
    (*(v95 + 32))(v93, v15, v97);
    v75 = v74 + *(v94 + 36);
    *v75 = v73;
    *(v75 + 8) = v69;
    v76 = v99;
    sub_29E6E1124(v74, v99, sub_29E6E0F7C);
    v77 = v106;
    v78 = v98;
    sub_29E6E1274(v106, v98, sub_29E6E0EF0);
    v79 = v100;
    sub_29E6E12DC(v76, v100, sub_29E6E0F7C);
    v80 = v89;
    sub_29E6E1274(v78, v89, sub_29E6E0EF0);
    sub_29E6E39DC(0, &qword_2A1859928, sub_29E6E0EF0, sub_29E6E0F7C);
    sub_29E6E12DC(v79, v80 + *(v81 + 48), sub_29E6E0F7C);
    sub_29E6E1344(v76, sub_29E6E0F7C);
    sub_29E6E13A4(v77, sub_29E6E0EF0);
    sub_29E6E1344(v79, sub_29E6E0F7C);
    sub_29E6E13A4(v78, sub_29E6E0EF0);
    v72 = v101;
    sub_29E6E1124(v80, v101, sub_29E6E0EB4);
    v71 = 0;
    v4 = v91;
    v5 = v90;
  }

  else
  {
    v71 = 1;
    v72 = v101;
  }

  (*(v5 + 56))(v72, v71, 1, v4);
  v82 = v103;
  sub_29E6E1274(v39, v103, sub_29E6E0A8C);
  v83 = v104;
  sub_29E6E12DC(v72, v104, sub_29E6E0E80);
  v84 = v105;
  *v105 = 0x4020000000000000;
  *(v84 + 8) = 0;
  sub_29E6E09FC();
  v86 = v85;
  sub_29E6E1274(v82, v84 + *(v85 + 64), sub_29E6E0A8C);
  sub_29E6E12DC(v83, v84 + *(v86 + 80), sub_29E6E0E80);
  sub_29E6E1344(v72, sub_29E6E0E80);
  sub_29E6E13A4(v39, sub_29E6E0A8C);
  sub_29E6E1344(v83, sub_29E6E0E80);
  sub_29E6E13A4(v82, sub_29E6E0A8C);
}

uint64_t sub_29E6DFA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  sub_29E6E0E48(0);
  v47 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v45 = &v43 - v7;
  sub_29E6E0D6C(0);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v43 - v13;
  sub_29E6E0BDC(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v43 - v21;
  sub_29E65AA20(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23 - 8);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v27 - 8);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v46 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6E1274(a1, v26, sub_29E65AA20);
  v31 = type metadata accessor for SleepScoreRoomModel();
  if ((*(*(v31 - 8) + 48))(v26, 1, v31) == 1)
  {
    sub_29E6E13A4(v26, sub_29E65AA20);
    v32 = sub_29E74F2D8();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  }

  else
  {
    sub_29E6E1274(&v26[*(v31 + 20)], v30, sub_29E631834);
    sub_29E6E13A4(v26, type metadata accessor for SleepScoreRoomModel);
  }

  sub_29E6E1274(v30, v22, sub_29E631834);
  v33 = *(a1 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24));
  sub_29E6E0008(&v22[*(v16 + 40)]);
  v22[*(v16 + 36)] = v33;
  v44 = v30;
  sub_29E6E1274(v30, v14, sub_29E631834);
  sub_29E6E0008(&v14[*(v9 + 40)]);
  v14[*(v9 + 36)] = v33;
  v34 = v30;
  v35 = v45;
  sub_29E6E1274(v34, v45, sub_29E631834);
  v36 = v47;
  sub_29E6E0008(v35 + *(v47 + 40));
  *(v35 + *(v36 + 36)) = v33;
  sub_29E6E1274(v22, v20, sub_29E6E0BDC);
  v37 = v49;
  sub_29E6E1274(v14, v49, sub_29E6E0D6C);
  v38 = v50;
  sub_29E6E1274(v35, v50, sub_29E6E0E48);
  v39 = v48;
  sub_29E6E1274(v20, v48, sub_29E6E0BDC);
  sub_29E6E0B54();
  v41 = v40;
  sub_29E6E1274(v37, v39 + *(v40 + 48), sub_29E6E0D6C);
  sub_29E6E1274(v38, v39 + *(v41 + 64), sub_29E6E0E48);
  sub_29E6E13A4(v35, sub_29E6E0E48);
  sub_29E6E13A4(v14, sub_29E6E0D6C);
  sub_29E6E13A4(v22, sub_29E6E0BDC);
  sub_29E6E13A4(v44, sub_29E631834);
  sub_29E6E13A4(v38, sub_29E6E0E48);
  sub_29E6E13A4(v37, sub_29E6E0D6C);
  sub_29E6E13A4(v20, sub_29E6E0BDC);
}

double sub_29E6E0008@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v39 = sub_29E74F5F8();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29E74F618();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0FB0(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  v20 = v19;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v37 - v22;
  v24 = v2;
  sub_29E6E1274(v2, v10, sub_29E65AA20);
  v25 = type metadata accessor for SleepScoreRoomModel();
  if ((*(*(v25 - 8) + 48))(v10, 1, v25) == 1)
  {
    sub_29E6E13A4(v10, sub_29E65AA20);
    v26 = sub_29E74F2D8();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  else
  {
    sub_29E6E1274(&v10[*(v25 + 20)], v14, sub_29E631834);
    sub_29E6E13A4(v10, type metadata accessor for SleepScoreRoomModel);
  }

  v27 = type metadata accessor for SleepScoreRoomTileContent(0);
  (*(v3 + 16))(v6, v24 + *(v27 + 20), v39);
  sub_29E74F608();
  KeyPath = swift_getKeyPath();
  v29 = &v23[*(v20 + 36)];
  sub_29E6C59DC(0);
  v31 = v29 + *(v30 + 28);
  sub_29E74F6F8();
  *v29 = KeyPath;
  (*(v15 + 32))(v23, v18, v38);
  sub_29E753C48();
  sub_29E752AB8();
  v32 = v40;
  sub_29E6E1438(v23, v40);
  sub_29E6C594C();
  v34 = (v32 + *(v33 + 36));
  v35 = v42;
  *v34 = v41;
  v34[1] = v35;
  result = *&v43;
  v34[2] = v43;
  return result;
}

uint64_t sub_29E6E0428()
{
  v40 = sub_29E754188();
  v1 = *(v40 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F048();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1404(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74F0C8();
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E65AA20(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SleepScoreRoomModel();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for SleepScoreRoomTileContent(0) + 24)))
  {
    sub_29E754118();
    v26 = sub_29E65B0B4(v4);
    (*(v1 + 8))(v4, v40);
  }

  else
  {
    sub_29E6E1274(v0, v20, sub_29E65AA20);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      v27 = sub_29E65AA20;
      v28 = v20;
    }

    else
    {
      sub_29E6E3B10(v20, v25, type metadata accessor for SleepScoreRoomModel);
      (*(v36 + 16))(v8, v25, v37);
      v29 = &v25[*(v21 + 24)];
      v30 = *v29;
      v31 = *(v29 + 1);

      sub_29E74F0A8();
      v33 = v38;
      v32 = v39;
      if ((*(v38 + 48))(v12, 1, v39) != 1)
      {
        (*(v33 + 32))(v16, v12, v32);
        v26 = sub_29E74F0B8();
        (*(v33 + 8))(v16, v32);
        sub_29E6E13A4(v25, type metadata accessor for SleepScoreRoomModel);
        return v26;
      }

      sub_29E6E13A4(v25, type metadata accessor for SleepScoreRoomModel);
      v27 = sub_29E6E1404;
      v28 = v12;
    }

    sub_29E6E13A4(v28, v27);
    return 0;
  }

  return v26;
}

void sub_29E6E08D0()
{
  if (!qword_2A18598A8)
  {
    sub_29E6E0964(255);
    sub_29E6E0D0C(&qword_2A1859948, sub_29E6E0964);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18598A8);
    }
  }
}

void sub_29E6E0998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E6E09FC()
{
  if (!qword_2A18598B8)
  {
    sub_29E6E0A8C();
    sub_29E6E0E80(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A18598B8);
    }
  }
}

void sub_29E6E0A8C()
{
  if (!qword_2A18598C0)
  {
    sub_29E6E0B20(255);
    sub_29E6E0D0C(&qword_2A1859910, sub_29E6E0B20);
    v0 = sub_29E752A98();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18598C0);
    }
  }
}

void sub_29E6E0B54()
{
  if (!qword_2A18598D0)
  {
    sub_29E6E0BDC(255);
    sub_29E6E0D6C(255);
    sub_29E6E0E48(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A18598D0);
    }
  }
}

unint64_t sub_29E6E0BFC()
{
  result = qword_2A18598E8;
  if (!qword_2A18598E8)
  {
    sub_29E6E0FB0(255, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
    sub_29E6E0D0C(&qword_2A18598F0, MEMORY[0x29EDC6AA0]);
    sub_29E6E0D0C(&qword_2A18598F8, sub_29E6C59DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18598E8);
  }

  return result;
}

uint64_t sub_29E6E0D0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6E0D8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6C594C();
    v7 = v6;
    v8 = sub_29E6E1AF4(&qword_2A18598E0, sub_29E6C594C, sub_29E6E0BFC);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E6E0F18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E6E0FB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29E752C28();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6E1024()
{
  if (!qword_2A1859940)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859940);
    }
  }
}

void sub_29E6E10A4()
{
  if (!qword_2A1857CB0)
  {
    v0 = sub_29E752F88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857CB0);
    }
  }
}

uint64_t sub_29E6E1124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6E11B4()
{
  if (!qword_2A1859968)
  {
    sub_29E6E0B20(255);
    sub_29E6E1220();
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859968);
    }
  }
}

unint64_t sub_29E6E1220()
{
  result = qword_2A1859970;
  if (!qword_2A1859970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859970);
  }

  return result;
}

uint64_t sub_29E6E1274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E12DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E1344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6E13A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6E1438(uint64_t a1, uint64_t a2)
{
  sub_29E6E0FB0(0, &qword_2A1859298, MEMORY[0x29EDC6AA0], sub_29E6C59DC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6E14CC(uint64_t a1)
{
  sub_29E631834();
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

uint64_t sub_29E6E155C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_29E74F2D8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  if (v10 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v12 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v12;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v16)
  {
    v18 = ((v14 + v17 + 1) & ~v14) + v15;
    v19 = 8 * v18;
    if (v18 > 3)
    {
      goto LABEL_16;
    }

    v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v21 >= 2)
    {
LABEL_16:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

LABEL_23:
      v22 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v22 = 0;
      }

      if (v18)
      {
        if (v18 <= 3)
        {
          v23 = v18;
        }

        else
        {
          v23 = 4;
        }

        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v24 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v24 = *a1;
          }
        }

        else if (v23 == 1)
        {
          v24 = *a1;
        }

        else
        {
          v24 = *a1;
        }
      }

      else
      {
        v24 = 0;
      }

      v30 = v16 + (v24 | v22);
      return (v30 + 1);
    }
  }

LABEL_36:
  if (v10 == v16)
  {
    if (v8 >= 2)
    {
      v25 = (*(v7 + 48))(a1);
      if (v25 >= 2)
      {
        return v25 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v27 = a1 + v17;
  if (v12 <= 0xFE)
  {
    v28 = *v27;
    if (v28 < 2)
    {
      return 0;
    }

    v30 = (v28 + 2147483646) & 0x7FFFFFFF;
    return (v30 + 1);
  }

  v29 = *(*(*(a3 + 16) - 8) + 48);

  return v29(&v27[v14 + 1] & ~v14, v11);
}

void sub_29E6E17E0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_29E74F2D8() - 8);
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

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (v12 <= v14)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  if (!v11)
  {
    ++v15;
  }

  v19 = ((v16 + v15 + 1) & ~v16) + *(v13 + 64);
  if (a3 <= v18)
  {
    goto LABEL_23;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v8 = 4;
      if (v18 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }

LABEL_23:
    if (v18 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v8 = 1;
  if (v18 >= a2)
  {
LABEL_33:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v19] = 0;
    }

    else if (v8)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v12 == v18)
    {
      v25 = *(v10 + 56);

      v25(a1, (a2 + 1));
    }

    else
    {
      v26 = &a1[v15];
      if (v17 > 0xFE)
      {
        v27 = *(v13 + 56);

        v27(&v26[v16 + 1] & ~v16, a2, v14);
      }

      else
      {
        *v26 = a2 + 1;
      }
    }

    return;
  }

LABEL_24:
  v22 = ~v18 + a2;
  if (v19 >= 4)
  {
    bzero(a1, v19);
    *a1 = v22;
    v23 = 1;
    if (v8 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_52:
    if (v8 > 1)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, v19);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_52;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v8 > 1)
    {
LABEL_56:
      if (v8 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v8 > 1)
    {
      goto LABEL_56;
    }
  }

LABEL_53:
  if (v8)
  {
    a1[v19] = v23;
  }
}

uint64_t sub_29E6E1AF4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_29E6E1BF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_29E6E4548(255);
  v5 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753A78();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18[-v12];
  sub_29E752EE8();
  v14 = *(a1 + 24);
  v19 = v5;
  v20 = v14;
  v21 = v2;
  sub_29E753A68();
  swift_getWitnessTable();
  v15 = v7[2];
  v15(v13, v11, v6);
  v16 = v7[1];
  v16(v11, v6);
  v15(a2, v13, v6);
  return (v16)(v13, v6);
}

uint64_t sub_29E6E1DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v57 = a1;
  v60 = a4;
  v56 = *(a2 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x2A1C7C4A8](a1);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v58 = &v53 - v8;
  sub_29E6E38B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E3888(0);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E4548(0);
  v54 = v18;
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v53 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v24 = &v53 - v23;
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v53 - v25;
  sub_29E7544C8();
  v55 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v12 = sub_29E752FF8();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859B48, sub_29E6E3944);
  v28 = v57;
  v29 = v59;
  sub_29E6E3540(v57, a2, v59, 86, type metadata accessor for PreferredScoreLayout, 1, 0, &v12[*(v27 + 44)]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6E3B10(v12, v17, sub_29E6E38B0);
  v30 = &v17[*(v14 + 36)];
  v31 = v71;
  *(v30 + 4) = v70;
  *(v30 + 5) = v31;
  *(v30 + 6) = v72;
  v32 = v67;
  *v30 = v66;
  *(v30 + 1) = v32;
  v33 = v69;
  *(v30 + 2) = v68;
  *(v30 + 3) = v33;
  v34 = sub_29E7533E8();
  sub_29E7529C8();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_29E6E3B10(v17, v24, sub_29E6E3888);
  v43 = v54;
  v44 = &v24[*(v54 + 36)];
  *v44 = v34;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  sub_29E6E3B10(v24, v26, sub_29E6E4548);
  v45 = type metadata accessor for PreferredScoreLayout();
  v46 = v56;
  v47 = *(v56 + 16);
  v48 = v58;
  v47(v58, v28 + *(v45 + 40), a2);
  v49 = v53;
  sub_29E6E1274(v26, v53, sub_29E6E4548);
  v65[0] = v49;
  v50 = v61;
  v47(v61, v48, a2);
  v65[1] = v50;
  v64[0] = v43;
  v64[1] = a2;
  v62 = sub_29E6E1AF4(&qword_2A1859B78, sub_29E6E4548, sub_29E6E3B78);
  v63 = v29;
  sub_29E6DECB8(v65, 2uLL, v64);
  v51 = *(v46 + 8);
  v51(v48, a2);
  sub_29E6E13A4(v26, sub_29E6E4548);
  v51(v50, a2);
  sub_29E6E13A4(v49, sub_29E6E4548);
}

uint64_t sub_29E6E23D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  type metadata accessor for ScoreLevelTitle(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  sub_29E753A78();
  sub_29E752C28();
  type metadata accessor for SleepScoreRoomScoreBreakdown(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753AA8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18[-v12];
  sub_29E752FF8();
  v14 = *(a1 + 24);
  v19 = v5;
  v20 = v14;
  v21 = v2;
  sub_29E753A98();
  swift_getWitnessTable();
  v15 = v7[2];
  v15(v13, v11, v6);
  v16 = v7[1];
  v16(v11, v6);
  v15(a2, v13, v6);
  return (v16)(v13, v6);
}

uint64_t sub_29E6E2640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v42 = a4;
  v40 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v6 = *(*(v40 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v40);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v41 = &v35 - v9;
  type metadata accessor for ScoreLevelTitle(255);
  v44 = a2;
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v10 = sub_29E753A78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v35 - v13;
  v36 = sub_29E752C28();
  v38 = *(v36 - 8);
  v15 = *(v38 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v36);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v35 - v19;
  sub_29E7544C8();
  v37 = sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  *(&v35 - 4) = v44;
  *(&v35 - 3) = a3;
  v35 = a3;
  v22 = v39;
  *(&v35 - 2) = v39;
  sub_29E752EF8();
  sub_29E753A68();
  sub_29E7533C8();
  WitnessTable = swift_getWitnessTable();
  sub_29E753888();
  (*(v11 + 8))(v14, v10);
  v48[2] = WitnessTable;
  v48[3] = MEMORY[0x29EDBC490];
  v24 = v36;
  v25 = swift_getWitnessTable();
  v26 = v38;
  v27 = *(v38 + 16);
  v27(v20, v18, v24);
  v38 = *(v26 + 8);
  (v38)(v18, v24);
  LOBYTE(WitnessTable) = *(v22 + *(type metadata accessor for SecondaryScoreLayout() + 36));
  v28 = v22;
  v29 = v41;
  sub_29E6E1274(v28, v41, sub_29E631834);
  v30 = v40;
  *(v29 + *(v40 + 20)) = WitnessTable;
  v31 = v29 + *(v30 + 24);
  *v31 = 0;
  *(v31 + 8) = 1;
  v27(v18, v20, v24);
  v48[0] = v18;
  v32 = v43;
  sub_29E6E1274(v29, v43, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v48[1] = v32;
  v47[0] = v24;
  v47[1] = v30;
  v45 = v25;
  v46 = sub_29E6E0D0C(&qword_2A1859B60, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6DECB8(v48, 2uLL, v47);
  sub_29E6E13A4(v29, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v33 = v38;
  (v38)(v20, v24);
  sub_29E6E13A4(v32, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v33(v18, v24);
}

uint64_t sub_29E6E2B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  v30 = a4;
  v27 = type metadata accessor for ScoreLevelTitle(0);
  v6 = *(*(v27 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v27);
  v28 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = v26 - v10;
  v12 = *(a2 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x2A1C7C4A8](v9);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = v26 - v17;
  sub_29E7544C8();
  v26[1] = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = v29;
  v20 = type metadata accessor for SecondaryScoreLayout();
  v21 = v12[2];
  v21(v18, a1 + *(v20 + 40), a2);
  LOBYTE(v20) = *(a1 + *(v20 + 36));
  sub_29E6E1274(a1, v11, sub_29E631834);
  v22 = v27;
  v11[*(v27 + 20)] = v20;
  v21(v16, v18, a2);
  v34[0] = v16;
  v23 = v28;
  sub_29E6E1274(v11, v28, type metadata accessor for ScoreLevelTitle);
  v34[1] = v23;
  v33[0] = a2;
  v33[1] = v22;
  v31 = v19;
  v32 = sub_29E6E0D0C(&qword_2A1859B68, type metadata accessor for ScoreLevelTitle);
  sub_29E6DECB8(v34, 2uLL, v33);
  sub_29E6E13A4(v11, type metadata accessor for ScoreLevelTitle);
  v24 = v12[1];
  v24(v18, a2);
  sub_29E6E13A4(v23, type metadata accessor for ScoreLevelTitle);
  v24(v16, a2);
}

uint64_t sub_29E6E2ED8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_29E6E3888(255);
  swift_getTupleTypeMetadata2();
  sub_29E753C78();
  swift_getWitnessTable();
  v6 = sub_29E753AA8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v18[-v12];
  sub_29E752FF8();
  v14 = *(a1 + 24);
  v19 = v5;
  v20 = v14;
  v21 = v2;
  sub_29E753A98();
  swift_getWitnessTable();
  v15 = v7[2];
  v15(v13, v11, v6);
  v16 = v7[1];
  v16(v11, v6);
  v15(a2, v13, v6);
  return (v16)(v13, v6);
}

uint64_t sub_29E6E30D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  sub_29E6E38B0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E3888(0);
  v44 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v42 - v16;
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v43 = &v42 - v19;
  v20 = *(a2 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x2A1C7C4A8](v18);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = &v42 - v25;
  sub_29E7544C8();
  v42 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = type metadata accessor for TertiaryScoreLayout();
  v28 = v20[2];
  v28(v26, a1 + *(v27 + 40), a2);
  *v10 = sub_29E752FF8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_29E6E3AAC(0, &qword_2A1859B48, sub_29E6E3944);
  v30 = *(v29 + 44);
  v31 = a1;
  v32 = a3;
  sub_29E6E3540(v31, a2, a3, 130, type metadata accessor for TertiaryScoreLayout, 0, 1, &v10[v30]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6E3B10(v10, v17, sub_29E6E38B0);
  v33 = v44;
  v34 = &v17[*(v44 + 36)];
  v35 = v56;
  *(v34 + 4) = v55;
  *(v34 + 5) = v35;
  *(v34 + 6) = v57;
  v36 = v52;
  *v34 = v51;
  *(v34 + 1) = v36;
  v37 = v54;
  *(v34 + 2) = v53;
  *(v34 + 3) = v37;
  v38 = v43;
  sub_29E6E3B10(v17, v43, sub_29E6E3888);
  v28(v24, v26, a2);
  v50[0] = v24;
  v39 = v45;
  sub_29E6E1274(v38, v45, sub_29E6E3888);
  v50[1] = v39;
  v49[0] = a2;
  v49[1] = v33;
  v47 = v32;
  v48 = sub_29E6E3B78();
  sub_29E6DECB8(v50, 2uLL, v49);
  sub_29E6E13A4(v38, sub_29E6E3888);
  v40 = v20[1];
  v40(v26, a2);
  sub_29E6E13A4(v39, sub_29E6E3888);
  v40(v24, a2);
}

uint64_t sub_29E6E3540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v38 = a5;
  v39 = a6;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v42 = a8;
  v9 = type metadata accessor for SleepScoreRoomScoreBreakdown(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v35 - v14;
  sub_29E6E3A58(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v16);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v35 - v22;
  sub_29E7544C8();
  v41 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = *(a1 + *(v38(0, v36, v37) + 36));
  sub_29E6E1274(a1, v23, sub_29E631834);
  v23[*(type metadata accessor for ScoreLevelTitle(0) + 20)] = v24;
  v25 = sub_29E7533C8();
  sub_29E7529C8();
  v26 = &v23[*(v17 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_29E6E1274(a1, v15, sub_29E631834);
  v15[*(v9 + 20)] = v24;
  v31 = &v15[*(v9 + 24)];
  *v31 = v39;
  v31[8] = v40 & 1;
  sub_29E6E1274(v23, v21, sub_29E6E3A58);
  sub_29E6E1274(v15, v13, type metadata accessor for SleepScoreRoomScoreBreakdown);
  v32 = v42;
  sub_29E6E1274(v21, v42, sub_29E6E3A58);
  sub_29E6E39DC(0, &qword_2A1859B30, sub_29E6E3A58, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E1274(v13, v32 + *(v33 + 48), type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v15, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v23, sub_29E6E3A58);
  sub_29E6E13A4(v13, type metadata accessor for SleepScoreRoomScoreBreakdown);
  sub_29E6E13A4(v21, sub_29E6E3A58);
}

void sub_29E6E38B0()
{
  if (!qword_2A1859B20)
  {
    sub_29E6E3944(255);
    sub_29E6E0D0C(&qword_2A1859B40, sub_29E6E3944);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859B20);
    }
  }
}

void sub_29E6E3980(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6E39DC(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6E39DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_29E6E3AAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6E3B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E6E3BB4(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_29E6E0D0C(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6E3C54@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v60 = sub_29E752FB8();
  v58 = *(v60 - 8);
  v1 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v60);
  v57 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_29E752C88();
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v54);
  v55 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E637500(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E753508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1024();
  v53 = v14;
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v49 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E0F7C(0);
  v50 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v52 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_29E6E4274();
  v63 = v20;
  sub_29E60DE10();
  v21 = sub_29E753608();
  v23 = v22;
  v25 = v24;
  v48[1] = v26;
  v27 = v9;
  (*(v10 + 104))(v13, *MEMORY[0x29EDBC9B8], v9);
  v28 = *MEMORY[0x29EDBC988];
  v29 = sub_29E753448();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v8, v28, v29);
  (*(v30 + 56))(v8, 0, 1, v29);
  sub_29E753458();
  sub_29E753498();
  sub_29E6E13A4(v8, sub_29E637500);
  (*(v10 + 8))(v13, v27);
  v31 = sub_29E7535D8();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_29E60DB44(v21, v23, v25 & 1);

  v62 = v31;
  v63 = v33;
  v64 = v35 & 1;
  v65 = v37;
  v38 = *(v48[2] + *(type metadata accessor for ScoreLevelTitle(0) + 20));
  if (v38 == 1)
  {
    v39 = v55;
    sub_29E752C78();
    v40 = v54;
  }

  else
  {
    v61 = MEMORY[0x29EDCA190];
    sub_29E6E0D0C(&qword_2A1857CE8, MEMORY[0x29EDBC588]);
    sub_29E6505BC(0);
    sub_29E6E0D0C(&qword_2A1857CF8, sub_29E6505BC);
    v39 = v55;
    v41 = v54;
    sub_29E754C58();
    v40 = v41;
  }

  v42 = v49;
  sub_29E7538A8();
  (*(v56 + 8))(v39, v40);
  sub_29E60DB44(v31, v33, v35 & 1);

  v43 = sub_29E753C68();
  v44 = v52;
  (*(v51 + 32))(v52, v42, v53);
  v45 = v44 + *(v50 + 36);
  *v45 = v43;
  *(v45 + 8) = v38;
  v46 = v57;
  sub_29E752FA8();
  sub_29E6E4634();
  sub_29E753828();
  (*(v58 + 8))(v46, v60);
  return sub_29E6E1344(v44, sub_29E6E0F7C);
}

uint64_t sub_29E6E4274()
{
  v1 = v0;
  v2 = sub_29E754188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EF88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E631834();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6E1274(v1, v15, sub_29E631834);
  v16 = sub_29E74F2D8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E6E13A4(v15, sub_29E631834);
    sub_29E754118();
    v18 = sub_29E65B0B4(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_29E74F2C8();
    (*(v17 + 8))(v15, v16);
    v18 = sub_29E74EF58();
    (*(v8 + 8))(v11, v7);
  }

  return v18;
}

void sub_29E6E45A4()
{
  sub_29E631834();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_29E6E4634()
{
  result = qword_2A1859B90;
  if (!qword_2A1859B90)
  {
    sub_29E6E0F7C(255);
    swift_getOpaqueTypeConformance2();
    sub_29E6E0D0C(&qword_2A1859B98, sub_29E6E10A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859B90);
  }

  return result;
}

unint64_t sub_29E6E4714()
{
  result = qword_2A1859BA0;
  if (!qword_2A1859BA0)
  {
    sub_29E6E0FB0(255, &qword_2A1859BA8, sub_29E6E0F7C, MEMORY[0x29EDBC0A8]);
    sub_29E6E4634();
    sub_29E6E0D0C(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859BA0);
  }

  return result;
}

uint64_t sub_29E6E4804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29E6E93EC(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = v27 - v11;
  sub_29E6B1E70(a3, v27 - v11);
  v13 = sub_29E7544F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29E6E7B98(v12, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29E7544E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_29E754468();
    v20 = v19;
    sub_29E751758();
    if (a2)
    {
LABEL_6:
      v21 = sub_29E754228() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29E6E7B98(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29E6E7B98(a3, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_29E6E4B28(void *a1, uint64_t a2)
{
  v55 = a2;
  v49 = a1;
  swift_getObjectType();
  v3 = sub_29E7513C8();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v57 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E7513D8();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v50 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E752098();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48[1] = v2;
    v18 = v17;
    v56[0] = v17;
    *v16 = 136446210;
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, v56);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Creating sleep analysis detail view from context", v16, 0xCu);
    sub_29E5FECBC(v18);
    MEMORY[0x29ED98410](v18, -1, -1);
    MEMORY[0x29ED98410](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = v55;
  sub_29E7513B8();
  v23 = sub_29E7508E8();
  v25 = v24;
  if (v23 == sub_29E7508E8() && v25 == v26)
  {
    goto LABEL_5;
  }

  v27 = sub_29E755028();

  if (v27)
  {
    goto LABEL_7;
  }

  sub_29E7513B8();
  v37 = sub_29E7508E8();
  v39 = v38;
  if (v37 == sub_29E7508E8() && v39 == v40)
  {
LABEL_5:
  }

  else
  {
    v41 = sub_29E755028();

    if ((v41 & 1) == 0)
    {
      v42 = objc_opt_self();
      v43 = sub_29E751388();
      v44 = [v42 sharedInstanceForHealthStore_];

      v45 = v57;
      (*(v53 + 16))(v57, v22, v54);
      v46 = [objc_opt_self() unknownProvenance];
      v47 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
      v35 = sub_29E69F6AC(v44, v45, v46);

      return v35;
    }
  }

LABEL_7:
  v28 = v49;
  v29 = v50;
  sub_29E751228();
  v30 = v28;
  sub_29E751298();
  v56[3] = &_s26SleepSharingChartComponentVN;
  v31 = sub_29E6E7554();
  v56[0] = v30;
  v56[1] = 0xD000000000000011;
  v56[4] = v31;
  v56[2] = 0x800000029E75F290;
  v32 = v30;
  v33 = v52;
  sub_29E7518F8();

  sub_29E6E7B98(v56, &qword_2A18582F0, sub_29E6CEF90);
  sub_29E751148();
  (*(v53 + 16))(v57, v22, v54);
  objc_allocWithZone(sub_29E751498());
  v34 = v32;
  v35 = sub_29E751478();
  (*(v51 + 8))(v29, v33);
  return v35;
}

id sub_29E6E5098(void *a1, uint64_t a2)
{
  v3 = v2;
  v88 = a2;
  v84 = a1;
  swift_getObjectType();
  v4 = sub_29E751468();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E7513C8();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = v81[8];
  MEMORY[0x2A1C7C4A8](v7);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E7513D8();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v78 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v80 = &v72 - v15;
  v16 = sub_29E752098();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v21 = sub_29E752088();
  v22 = sub_29E7546C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v74 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v79 = v11;
    v26 = v25;
    *&v85 = v25;
    *v24 = 136446210;
    v27 = sub_29E755178();
    v29 = sub_29E6B9C90(v27, v28, &v85);
    v73 = v16;
    v30 = v29;

    *(v24 + 4) = v30;
    v3 = v2;
    _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Creating sleep apnea event detail view from context", v24, 0xCu);
    sub_29E5FECBC(v26);
    v31 = v26;
    v11 = v79;
    MEMORY[0x29ED98410](v31, -1, -1);
    v32 = v24;
    v10 = v74;
    MEMORY[0x29ED98410](v32, -1, -1);

    (*(v17 + 8))(v20, v73);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v33 = v88;
  sub_29E7513B8();
  v34 = sub_29E7508E8();
  v36 = v35;
  if (v34 == sub_29E7508E8() && v36 == v37)
  {
    goto LABEL_6;
  }

  v38 = sub_29E755028();

  if (v38)
  {
    goto LABEL_8;
  }

  sub_29E7513B8();
  v45 = sub_29E7508E8();
  v47 = v46;
  if (v45 == sub_29E7508E8() && v47 == v48)
  {
LABEL_6:

LABEL_8:
    v39 = v80;
    v40 = v84;
    sub_29E73C7C0(v84, v80);
    sub_29E751148();
    (v81[2])(v83, v33, v82);
    v41 = objc_allocWithZone(sub_29E751498());
    v42 = v40;
    v43 = sub_29E751478();
    (*(v11 + 8))(v39, v10);
    return v43;
  }

  v49 = sub_29E755028();

  if (v49)
  {
    goto LABEL_8;
  }

  v79 = v11;
  v50 = sub_29E751388();
  v51 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v52 = sub_29E754198();
  v53 = [v51 initWithIdentifier:v52 healthStore:v50];

  v54 = v53;
  v55 = sub_29E751388();
  v56 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v54 healthDataSource:v55];

  result = [v56 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v57 = result;
    v58 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
    v80 = v56;
    v59 = [v58 initWithFeatureAvailabilityProviding:v57 healthDataSource:v56 currentCountryCode:0];
    sub_29E751758();
    v60 = sub_29E751388();
    v86 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v87 = MEMORY[0x29EDC2EA8];
    *&v85 = v59;
    type metadata accessor for SleepApneaEventDataTypeDetailDataSource();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    sub_29E5FAEE4(&v85, v61 + 24);
    v62 = v59;
    v63 = v84;
    v43 = v61;
    sub_29E6A3360(v84, v78);
    if (v3)
    {
    }

    else
    {
      v73 = sub_29E751148();
      v74 = v54;
      v72 = v81[2];
      v64 = v83;
      v81 = v62;
      v65 = v82;
      v72(v83, v33, v82);
      v66 = v63;
      v67 = v75;
      sub_29E751458();
      type metadata accessor for SleepApneaChartOverlayVersionProviding();
      swift_allocObject();
      sub_29E751448();
      v72(v64, v33, v65);
      v68 = v77;
      v86 = v77;
      v87 = MEMORY[0x29EDC2780];
      v69 = sub_29E5FEBF4(&v85);
      v70 = v76;
      (*(v76 + 16))(v69, v67, v68);
      v71 = objc_allocWithZone(sub_29E751498());
      v43 = sub_29E751488();

      (*(v70 + 8))(v67, v68);
      (*(v79 + 8))(v78, v10);
    }

    return v43;
  }

  __break(1u);
  return result;
}

id sub_29E6E5878(void *a1, uint64_t a2)
{
  v113 = a1;
  swift_getObjectType();
  sub_29E6E93EC(0, &qword_2A1859CB0, MEMORY[0x29EDC2B18]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v105 = &v99 - v6;
  v7 = sub_29E751468();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29E7513C8();
  v120 = *(v115 - 8);
  v10 = *(v120 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v115);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  MEMORY[0x2A1C7C4A8](v11);
  v114 = &v99 - v14;
  v15 = sub_29E7513D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v108 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v110 = &v99 - v20;
  v21 = sub_29E752098();
  v111 = *(v21 - 8);
  v112 = v21;
  v22 = *(v111 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v25 = sub_29E752088();
  v26 = sub_29E7546C8();
  v27 = os_log_type_enabled(v25, v26);
  v116 = v2;
  v103 = v13;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v117[0] = v102;
    *v28 = 136446210;
    v29 = sub_29E755178();
    v31 = a2;
    v32 = v16;
    v33 = v15;
    v34 = sub_29E6B9C90(v29, v30, v117);

    *(v28 + 4) = v34;
    v15 = v33;
    v16 = v32;
    a2 = v31;
    _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Creating breathing disturbances detail view from context", v28, 0xCu);
    v35 = v102;
    sub_29E5FECBC(v102);
    MEMORY[0x29ED98410](v35, -1, -1);
    MEMORY[0x29ED98410](v28, -1, -1);
  }

  (*(v111 + 8))(v24, v112);
  sub_29E7513B8();
  v36 = sub_29E7508E8();
  v38 = v37;
  v39 = sub_29E7508E8();
  v41 = v120;
  if (v36 == v39 && v38 == v40)
  {
    goto LABEL_5;
  }

  v42 = sub_29E755028();

  if (v42)
  {
    goto LABEL_7;
  }

  sub_29E7513B8();
  v50 = sub_29E7508E8();
  v52 = v51;
  if (v50 == sub_29E7508E8() && v52 == v53)
  {
LABEL_5:

LABEL_7:
    v43 = v110;
    v44 = v113;
    sub_29E751228();
    sub_29E751298();
    v118 = &_s42BreathingDisturbancesSharingChartComponentVN;
    v119 = sub_29E6E78A4();
    sub_29E7518F8();

    sub_29E6E7B98(v117, &qword_2A18582F0, sub_29E6CEF90);
    sub_29E751148();
    (*(v41 + 16))(v114, a2, v115);
    objc_allocWithZone(sub_29E751498());
    v45 = v44;
    v46 = sub_29E751478();
    v47 = v43;
    v48 = v15;
LABEL_8:
    (*(v16 + 1))(v47, v48);
    return v46;
  }

  v54 = sub_29E755028();

  if (v54)
  {
    goto LABEL_7;
  }

  v110 = v16;
  v111 = v15;
  v55 = a2;
  v56 = sub_29E751388();
  v57 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v58 = sub_29E754198();
  v59 = [v57 initWithIdentifier:v58 healthStore:v56];

  v60 = v59;
  v61 = sub_29E751388();
  v62 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v60 healthDataSource:v61];
  v102 = v60;

  v64 = *(v41 + 16);
  v63 = v41 + 16;
  v65 = v103;
  v101 = v55;
  v66 = v115;
  v64(v103, v55, v115);
  v67 = type metadata accessor for BreathingDisturbancesDataTypeDetailConfigurationProvider();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v112 = v64;
  v64(v70 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context, v65, v66);
  *(v70 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureAvailabilityDataSource) = v62;
  v71 = *MEMORY[0x29EDBA748];
  v72 = v62;
  v100 = v71;
  result = [v72 featureAvailabilityProvidingForFeatureIdentifier_];
  if (result)
  {
    v73 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureAvailabilityProviding:result healthDataSource:v72 currentCountryCode:0];
    sub_29E751758();
    v74 = (v70 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider);
    v75 = sub_29E609B5C(0, &qword_2A1A7BD80, 0x29EDBABB0);
    v76 = MEMORY[0x29EDC2EA8];
    v74[3] = v75;
    v74[4] = v76;

    *v74 = v73;
    v77 = *(v120 + 8);
    v77(v65, v66);
    v78 = v113;
    sub_29E66C82C();
    swift_setDeallocating();
    v77(v70 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_context, v66);

    sub_29E5FECBC((v70 + OBJC_IVAR____TtC20SleepHealthAppPlugin56BreathingDisturbancesDataTypeDetailConfigurationProvider_featureStatusProvider));
    v79 = *(*v70 + 48);
    v80 = *(*v70 + 52);
    swift_deallocClassInstance();
    v81 = v101;
    v103 = sub_29E751148();
    v82 = v114;
    v83 = v81;
    v112(v114, v81, v66);
    v84 = v78;
    v85 = v109;
    sub_29E751458();
    v113 = v72;
    if (![v72 featureAvailabilityProvidingForFeatureIdentifier_] || (swift_getObjectType(), v86 = sub_29E754A78(), sub_29E751758(), (v86 & 1) == 0))
    {
      type metadata accessor for SleepApneaChartOverlayVersionProviding();
      swift_allocObject();
      sub_29E751448();
    }

    v87 = v83;
    v88 = v83;
    v89 = v112;
    v112(v82, v88, v66);
    v100 = v63;
    v90 = v107;
    v118 = v107;
    v119 = MEMORY[0x29EDC2780];
    v91 = sub_29E5FEBF4(v117);
    v92 = v106;
    (*(v106 + 16))(v91, v85, v90);
    v93 = objc_allocWithZone(sub_29E751AB8());

    v46 = sub_29E751AA8();
    v89(v82, v87, v66);
    v94 = v120;
    v95 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v96 = swift_allocObject();
    (*(v94 + 32))(v96 + v95, v82, v66);
    v97 = v105;
    sub_29E751A68();
    v98 = sub_29E751A78();
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    sub_29E751A88();

    (*(v92 + 8))(v109, v90);
    v16 = v110;
    v48 = v111;
    v47 = v108;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6E62F8()
{
  v0 = MEMORY[0x29EDC1D90];
  sub_29E6E93EC(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = &v10[-v3 - 8];
  v5 = sub_29E6E99BC();
  sub_29E754858();
  sub_29E754838();
  v6 = [v5 profileIdentifier];
  v7 = sub_29E750698();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  MEMORY[0x29ED931F0](v6, v4);

  sub_29E6E7B98(v4, &qword_2A1858AE0, v0);
  sub_29E602E20(v11, v10);
  sub_29E751378();
  return sub_29E5FECBC(v11);
}

uint64_t sub_29E6E646C(void *a1)
{
  v2 = MEMORY[0x29EDC1D90];
  sub_29E6E93EC(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v14[-v5];
  v7 = sub_29E7513C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E754838();
  v9 = sub_29E6E99BC();
  sub_29E754858();
  sub_29E602E20(v19, v17);
  sub_29E602E20(v18, v16);
  sub_29E602E20(v19, v15);
  v10 = [v9 profileIdentifier];
  v11 = sub_29E750698();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  MEMORY[0x29ED931F0](v10, v6);

  sub_29E6E7B98(v6, &qword_2A1858AE0, v2);
  sub_29E602E20(v18, v14);
  sub_29E751378();
  v12 = a1;
  sub_29E750FB8();
  sub_29E5FECBC(v18);
  return sub_29E5FECBC(v19);
}

void sub_29E6E6734()
{
  if (!qword_2A1859BC0)
  {
    sub_29E65ECF0(255, &qword_2A1859BC8, &qword_2A1859BD0, 0x29EDC68C8);
    v0 = sub_29E7500E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859BC0);
    }
  }
}

id sub_29E6E67A4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_29E6E67D8(uint64_t a1)
{
  if (a1 != 6)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29E6E6810(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2A1C63378](ObjectType, a2);
}

void sub_29E6E684C(uint64_t a1)
{
  v31[1] = *MEMORY[0x29EDCA608];
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = HKSPLogForCategory();
  v8 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v7 healthDataSource:v8];

  v10 = [objc_allocWithZone(MEMORY[0x29EDC69B0]) initWithNotificationResponse_];
  v31[0] = 0;
  if ([v9 submitEvent:v10 error:v31])
  {
    v11 = v31[0];
  }

  else
  {
    v12 = v31[0];
    v13 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752048();
    v14 = v13;
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v3;
      v20 = v19;
      v31[0] = v19;
      *v17 = 136446466;
      v21 = sub_29E755178();
      v23 = sub_29E6B9C90(v21, v22, v31);
      v29 = v2;
      v24 = v23;

      *(v17 + 4) = v24;
      *(v17 + 12) = 2112;
      v25 = v13;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v26;
      *v18 = v26;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Error trying to send notification interacted analytics event: %@", v17, 0x16u);
      sub_29E6E9960(v18, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738);
      MEMORY[0x29ED98410](v18, -1, -1);
      sub_29E5FECBC(v20);
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);

      (*(v30 + 8))(v6, v29);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  v27 = *MEMORY[0x29EDCA608];
}

unint64_t sub_29E6E6BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_29E6A8458();
    v2 = sub_29E754EB8();
  }

  else
  {
    v2 = MEMORY[0x29EDCA198];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_29E68CE40(*(a1 + 48) + 40 * v14, v29);
        sub_29E606008(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_29E68CE40(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_29E606008(v27 + 8, v22);
        sub_29E6E96E4(v26);
        v23 = v20;
        sub_29E61FF28(v22, v24);
        v15 = v23;
        sub_29E61FF28(v24, v25);
        sub_29E61FF28(v25, &v23);
        result = sub_29E68A9D0(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_29E5FECBC(v12);
          result = sub_29E61FF28(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_29E61FF28(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_29E6E96E4(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_29E6E6EC8(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

uint64_t sub_29E6E6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E6E7020, v6, v5);
}

uint64_t sub_29E6E7020()
{
  v1 = v0[3];

  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    if ([v4 respondsToSelector_])
    {
      v5 = v0[2];
      v6 = [v2 sharedApplication];
      sub_29E68B6A8(MEMORY[0x29EDCA190]);
      v7 = sub_29E74EAC8();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29E6E9918(&qword_2A1856620, 255, type metadata accessor for OpenURLOptionsKey);
      v8 = sub_29E754068();
      [v4 application:v6 openURL:v7 options:v8];
    }

    sub_29E751758();
  }

  v9 = v0[1];

  return v9();
}

id sub_29E6E71C0(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E609B5C(0, &qword_2A1A7D0B0, 0x29EDC9738);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v9 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v10 = sub_29E754B88();

  if (v10)
  {
    sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
    v11 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
    v12 = sub_29E6E5878(v11, a2);

    return v12;
  }

  else
  {
    sub_29E752048();
    v14 = a1;
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446466;
      v19 = sub_29E755178();
      v21 = sub_29E6B9C90(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = [v14 identifier];
      v23 = sub_29E7541D8();
      v25 = v24;

      v26 = sub_29E6B9C90(v23, v25, &v28);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Received non-apnea event type: %s, returning nil view controller", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v18, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }
}

unint64_t sub_29E6E7554()
{
  result = qword_2A1859CA0;
  if (!qword_2A1859CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859CA0);
  }

  return result;
}

id sub_29E6E75A8(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_29E7513C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E752098();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v1;
    v15 = v14;
    v27 = swift_slowAlloc();
    v28 = a1;
    v32 = v27;
    *v15 = 136446210;
    v16 = sub_29E755178();
    v18 = v4;
    v19 = v7;
    v20 = v3;
    v21 = sub_29E6B9C90(v16, v17, &v32);

    *(v15 + 4) = v21;
    v3 = v20;
    v7 = v19;
    v4 = v18;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Creating sleep score event detail view from context", v15, 0xCu);
    v22 = v27;
    sub_29E5FECBC(v27);
    v23 = v22;
    a1 = v28;
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  (*(v30 + 8))(v11, v31);
  (*(v4 + 16))(v7, a1, v3);
  v24 = objc_allocWithZone(type metadata accessor for SleepScoreRoomViewController());
  return SleepScoreRoomViewController.init(context:)(v7);
}

uint64_t sub_29E6E7834(void *a1)
{
  v3 = *(sub_29E7513C8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_29E73BAE4(a1, v4);
}

unint64_t sub_29E6E78A4()
{
  result = qword_2A1859CB8;
  if (!qword_2A1859CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859CB8);
  }

  return result;
}

void sub_29E6E78F8(uint64_t a1)
{
  v2 = sub_29E7513C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750528();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedBehavior];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = [v11 features];

  if (!v13)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v14 = [v13 sleepDetails];

  if (v14)
  {
    (*(v7 + 16))(v10, a1, v6);
    sub_29E750A78();
    sub_29E750A58();
    sub_29E750A88();
    v15 = objc_allocWithZone(sub_29E750CC8());
    sub_29E750CB8();
  }

  else
  {
    v16 = objc_opt_self();
    v17 = sub_29E750A78();
    v18 = [v16 sharedInstanceForHealthStore_];

    sub_29E750A58();
    sub_29E750A78();
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_29E751378();
    v19 = [objc_opt_self() unknownProvenance];
    v20 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
    sub_29E69F6AC(v18, v5, v19);
  }
}

uint64_t sub_29E6E7B98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E6E93EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6E7C08(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v219 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6E93EC(0, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v209 = &v209 - v7;
  sub_29E6E93EC(0, &qword_2A1859CD0, MEMORY[0x29EDCA398]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v217 = &v209 - v10;
  sub_29E6E93EC(0, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v212 = &v209 - v13;
  v14 = sub_29E74EAF8();
  v220 = *(v14 - 8);
  v15 = *(v220 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v210 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v214 = &v209 - v19;
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v215 = v22;
  v216 = &v209 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v211 = &v209 - v23;
  v224 = sub_29E752098();
  v24 = *(v224 - 1);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v224);
  v222 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26);
  v29 = &v209 - v28;
  sub_29E752048();
  v30 = a1;
  v31 = sub_29E752088();
  v32 = sub_29E7546C8();

  v33 = os_log_type_enabled(v31, v32);
  v34 = &selRef_restoreUserActivityState_;
  v35 = &off_29F370000;
  v218 = a3;
  v221 = v24;
  if (v33)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v225[0] = v37;
    *v36 = 136446723;
    v38 = sub_29E755178();
    v40 = sub_29E6B9C90(v38, v39, v225);

    *(v36 + 4) = v40;
    v213 = v14;
    *(v36 + 12) = 2081;
    v41 = [v30 notification];
    v42 = [v41 request];

    v43 = [v42 identifier];
    v44 = sub_29E7541D8();
    v45 = v24;
    v46 = v30;
    v48 = v47;

    v49 = sub_29E6B9C90(v44, v48, v225);

    *(v36 + 14) = v49;
    *(v36 + 22) = 2081;
    v50 = [v46 actionIdentifier];
    v51 = sub_29E7541D8();
    v53 = v52;

    v54 = v51;
    v30 = v46;
    v55 = sub_29E6B9C90(v54, v53, v225);
    v34 = &selRef_restoreUserActivityState_;

    *(v36 + 24) = v55;
    _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Received notification: %{private}s, response action: %{private}s", v36, 0x20u);
    swift_arrayDestroy();
    v56 = v37;
    v35 = &off_29F370000;
    MEMORY[0x29ED98410](v56, -1, -1);
    MEMORY[0x29ED98410](v36, -1, -1);

    v57 = *(v45 + 8);
    v57(v29, v224);
    v14 = v213;
  }

  else
  {

    v57 = *(v24 + 8);
    v57(v29, v224);
  }

  v58 = [v30 v34[71]];
  v59 = [v58 request];

  v60 = [v59 *(v35 + 263)];
  v61 = sub_29E7541D8();
  v63 = v62;

  v64 = *MEMORY[0x29EDC69A0];
  if (v61 == sub_29E7541D8() && v63 == v65)
  {

    goto LABEL_8;
  }

  v66 = sub_29E755028();

  if (v66)
  {
LABEL_8:
    sub_29E6E684C(v30);
    v67 = [v30 notification];
    v68 = [v67 &selRef_delegate];

    v69 = [v68 content];
    v70 = [v69 userInfo];

    v71 = sub_29E754078();
    v72 = sub_29E6E6BB0(v71);

    if (v72)
    {
      v73 = *MEMORY[0x29EDBB058];
      v74 = sub_29E7541D8();
      if (*(v72 + 16))
      {
        v76 = sub_29E68A9D0(v74, v75);
        v78 = v77;

        if (v78)
        {
          sub_29E606008(*(v72 + 56) + 32 * v76, v225);

          if (swift_dynamicCast())
          {
            v79 = v212;
            sub_29E74EAE8();

            if ((*(v220 + 48))(v79, 1, v14) != 1)
            {
              v115 = v220;
              v116 = v14;
              v117 = *(v220 + 32);
              v118 = v211;
              v117(v211, v79, v14);
              v119 = sub_29E7544F8();
              v120 = v217;
              (*(*(v119 - 8) + 56))(v217, 1, 1, v119);
              v121 = v216;
              (*(v115 + 16))(v216, v118, v116);
              sub_29E7544C8();
              v122 = sub_29E7544B8();
              v123 = (*(v115 + 80) + 32) & ~*(v115 + 80);
              v124 = swift_allocObject();
              v125 = MEMORY[0x29EDCA390];
              *(v124 + 16) = v122;
              *(v124 + 24) = v125;
              v117((v124 + v123), v121, v116);
              sub_29E6E4804(0, 0, v120, &unk_29E76AF18, v124);

              v219(v126);
              (*(v115 + 8))(v118, v116);
              return;
            }

            sub_29E6E7B98(v79, qword_2A1A7CFF0, MEMORY[0x29EDB9B18]);
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }

LABEL_19:
    v88 = v222;
    sub_29E752048();
    v89 = sub_29E752088();
    v90 = sub_29E7546A8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v225[0] = v92;
      *v91 = 136446210;
      v93 = sub_29E755178();
      v95 = sub_29E6B9C90(v93, v94, v225);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_29E5ED000, v89, v90, "[%{public}s] Could not get URL from notification user info, will not redirect to room.", v91, 0xCu);
      sub_29E5FECBC(v92);
      MEMORY[0x29ED98410](v92, -1, -1);
      MEMORY[0x29ED98410](v91, -1, -1);
    }

    v57(v88, v224);
    return;
  }

  v80 = [v30 notification];
  v81 = [v80 &selRef_delegate];

  v82 = [v81 v35 + 1656];
  v83 = sub_29E7541D8();
  v85 = v84;

  v86 = *MEMORY[0x29EDC69A8];
  if (v83 == sub_29E7541D8() && v85 == v87)
  {

LABEL_23:
    sub_29E6E684C(v30);
    v97 = v216;
    sub_29E74EA78();
    v98 = sub_29E7544F8();
    v99 = v217;
    (*(*(v98 - 8) + 56))(v217, 1, 1, v98);
    v100 = v14;
    v101 = v220;
    v102 = v214;
    (*(v220 + 16))(v214, v97, v100);
    sub_29E7544C8();
    v103 = sub_29E7544B8();
    v104 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v105 = swift_allocObject();
    v106 = MEMORY[0x29EDCA390];
    *(v105 + 16) = v103;
    *(v105 + 24) = v106;
    (*(v101 + 32))(v105 + v104, v102, v100);
    sub_29E6E4804(0, 0, v99, &unk_29E76AF10, v105);

    v107 = (*(v101 + 8))(v97, v100);
    v219(v107);
    return;
  }

  v96 = sub_29E755028();

  if (v96)
  {
    goto LABEL_23;
  }

  v213 = v14;
  v108 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67D0] presentation:*MEMORY[0x29EDC6770]];
  v109 = [v30 actionIdentifier];
  v110 = sub_29E7541D8();
  v112 = v111;

  v113 = *MEMORY[0x29EDC6750];
  if (v110 != sub_29E7541D8() || v112 != v114)
  {
    v127 = sub_29E755028();

    if (v127)
    {
      goto LABEL_30;
    }

    v143 = [v30 notification];
    v144 = [v143 &selRef_delegate];

    v145 = [v144 content];
    v146 = [v145 categoryIdentifier];

    v147 = sub_29E7541D8();
    v149 = v148;

    v150 = *MEMORY[0x29EDC6880];
    if (v147 == sub_29E7541D8() && v149 == v151)
    {
      goto LABEL_35;
    }

    v152 = sub_29E755028();

    if (v152)
    {
      goto LABEL_37;
    }

    v168 = [v30 notification];
    v169 = [v168 &selRef_delegate];

    v170 = [v169 content];
    v171 = [v170 categoryIdentifier];

    v172 = sub_29E7541D8();
    v174 = v173;

    v175 = *MEMORY[0x29EDC6878];
    if (v172 == sub_29E7541D8() && v174 == v176)
    {
LABEL_35:

LABEL_37:
      v153 = *MEMORY[0x29EDC6848];
      v154 = sub_29E74F7F8();
      v155 = v209;
      (*(*(v154 - 8) + 56))(v209, 1, 1, v154);
      v156 = v216;
      sub_29E74EA88();
      sub_29E6E7B98(v155, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
      v157 = sub_29E7544F8();
      v158 = v217;
      (*(*(v157 - 8) + 56))(v217, 1, 1, v157);
      v159 = v220;
      v160 = v108;
      v161 = v213;
      v162 = v214;
      (*(v220 + 16))(v214, v156, v213);
      sub_29E7544C8();
      v163 = sub_29E7544B8();
      v164 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v165 = swift_allocObject();
      v166 = MEMORY[0x29EDCA390];
      *(v165 + 16) = v163;
      *(v165 + 24) = v166;
      (*(v159 + 32))(v165 + v164, v162, v161);
      sub_29E6E4804(0, 0, v158, &unk_29E76AF00, v165);

      v167 = (*(v159 + 8))(v156, v161);
      v219(v167);

      return;
    }

    v177 = sub_29E755028();

    if (v177)
    {
      goto LABEL_37;
    }

    v178 = [v30 actionIdentifier];
    v179 = sub_29E7541D8();
    v181 = v180;

    v182 = *MEMORY[0x29EDC6758];
    if (v179 == sub_29E7541D8() && v181 == v183)
    {
    }

    else
    {
      v184 = sub_29E755028();

      if ((v184 & 1) == 0)
      {
        v201 = [v30 actionIdentifier];
        v202 = sub_29E7541D8();
        v204 = v203;

        v205 = *MEMORY[0x29EDC6760];
        if (v202 == sub_29E7541D8() && v204 == v206)
        {

          v187 = v213;
        }

        else
        {
          v207 = sub_29E755028();

          v187 = v213;
          if ((v207 & 1) == 0)
          {
            v185 = v108;
            v224 = &unk_29E76AEE8;
            goto LABEL_46;
          }
        }

        v185 = v108;
        v208 = *MEMORY[0x29EDC6858];
        v224 = &unk_29E76AEF0;
LABEL_46:
        v188 = sub_29E74F7F8();
        v189 = v209;
        (*(*(v188 - 8) + 56))(v209, 1, 1, v188);
        v190 = v216;
        sub_29E74EA88();
        sub_29E6E7B98(v189, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
        v191 = sub_29E7544F8();
        v192 = v217;
        (*(*(v191 - 8) + 56))(v217, 1, 1, v191);
        v193 = v220;
        v194 = v214;
        (*(v220 + 16))(v214, v190, v187);
        sub_29E7544C8();
        v195 = sub_29E7544B8();
        v196 = v187;
        v197 = (*(v193 + 80) + 32) & ~*(v193 + 80);
        v198 = swift_allocObject();
        v199 = MEMORY[0x29EDCA390];
        *(v198 + 16) = v195;
        *(v198 + 24) = v199;
        (*(v193 + 32))(v198 + v197, v194, v196);
        sub_29E6E4804(0, 0, v192, v224, v198);

        v200 = (*(v193 + 8))(v190, v196);
        v219(v200);

        return;
      }
    }

    v185 = v108;
    v186 = *MEMORY[0x29EDC6850];
    v224 = &unk_29E76AEF8;
    v187 = v213;
    goto LABEL_46;
  }

LABEL_30:
  v128 = [objc_allocWithZone(MEMORY[0x29EDC1568]) init];
  v129 = [v128 URLForNotificationSettings];
  if (v129)
  {
    v130 = v210;
    v131 = v129;
    sub_29E74EAD8();

    v132 = sub_29E7544F8();
    v133 = v217;
    (*(*(v132 - 8) + 56))(v217, 1, 1, v132);
    v134 = v220;
    v135 = v108;
    v136 = v216;
    v137 = v213;
    (*(v220 + 16))(v216, v130, v213);
    sub_29E7544C8();
    v138 = sub_29E7544B8();
    v139 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v140 = swift_allocObject();
    v141 = MEMORY[0x29EDCA390];
    *(v140 + 16) = v138;
    *(v140 + 24) = v141;
    v142 = v136;
    v108 = v135;
    (*(v134 + 32))(v140 + v139, v142, v137);
    sub_29E6E4804(0, 0, v133, &unk_29E76AF08, v140);

    v129 = (*(v134 + 8))(v130, v137);
  }

  v219(v129);
}

uint64_t sub_29E6E9180(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v11 = a1;
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[1] = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136446467;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v30);
    v29 = a2;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2081;
    v21 = [v11 request];
    v22 = [v21 identifier];

    v23 = sub_29E7541D8();
    v25 = v24;

    v26 = sub_29E6B9C90(v23, v25, &v30);

    *(v15 + 14) = v26;
    a2 = v29;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Received foreground notification presentation: %{private}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v16, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return a2(27);
}

void sub_29E6E93EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6E9440(uint64_t a1)
{
  v4 = *(sub_29E74EAF8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E66A9A0;

  return sub_29E6E6F88(a1, v6, v7, v1 + v5);
}

uint64_t sub_29E6E9530(uint64_t a1)
{
  v4 = *(sub_29E74EAF8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29E605728;

  return sub_29E6E6F88(a1, v6, v7, v1 + v5);
}

uint64_t sub_29E6E9620()
{
  v1 = sub_29E74EAF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  sub_29E751758();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E6E96E4(uint64_t a1)
{
  sub_29E6E9740();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6E9740()
{
  if (!qword_2A1859CE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859CE8);
    }
  }
}

uint64_t sub_29E6E97A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E66A9A0;

  return sub_29E6683F4(a1, v5);
}

uint64_t sub_29E6E9860(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29E605728;

  return sub_29E6683F4(a1, v5);
}

uint64_t sub_29E6E9918(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29E6E9960(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  sub_29E65ECF0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E6E99BC()
{
  v1 = v0;
  result = sub_29E754828();
  if (!result)
  {
    sub_29E754D78();
    v3 = [v0 description];
    v4 = sub_29E7541D8();
    v6 = v5;

    MEMORY[0x29ED96C20](v4, v6);

    MEMORY[0x29ED96C20](0xD00000000000002ELL, 0x800000029E75F310);
    v7 = [v1 parentViewController];
    sub_29E6E9B58();
    v8 = sub_29E7541F8();
    MEMORY[0x29ED96C20](v8);

    MEMORY[0x29ED96C20](0x746E657365727020, 0xED0000203A676E69);
    [v1 presentingViewController];
    v9 = sub_29E7541F8();
    MEMORY[0x29ED96C20](v9);

    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

void sub_29E6E9B58()
{
  if (!qword_2A1859CF0)
  {
    sub_29E6E9BB0();
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859CF0);
    }
  }
}

unint64_t sub_29E6E9BB0()
{
  result = qword_2A185A670;
  if (!qword_2A185A670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A670);
  }

  return result;
}

uint64_t type metadata accessor for WindDownSection()
{
  result = qword_2A1859D50;
  if (!qword_2A1859D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E6E9CCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v42 = a4;
  v6 = sub_29E74F848();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v37 = &v36 - v10;
  v11 = sub_29E750EE8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v36 - v17;
  v36 = a1;
  sub_29E7527B8();
  sub_29E6EB7A0(v43, SBYTE8(v43), a2, v18);
  v19 = v12[2];
  v19(v16, v18, v11);
  v20 = sub_29E6DAD84(0, 1, 1, MEMORY[0x29EDCA190]);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_29E6DAD84((v21 > 1), v22 + 1, 1, v20);
  }

  v44 = v11;
  v45 = sub_29E6EBE2C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
  v23 = sub_29E5FEBF4(&v43);
  v19(v23, v16, v11);
  v20[2] = v22 + 1;
  sub_29E5FAEE4(&v43, &v20[5 * v22 + 4]);
  v24 = v12[1];
  v24(v16, v11);
  sub_29E7527B8();
  if (v43 == 1)
  {
    v25 = sub_29E754548();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v25 + 8 * v26 + 24);

      v28 = v37;
      sub_29E74F838();
      v38 = *(v40 + 16);
      v38(v39, v28, v41);
      v30 = v20[2];
      v29 = v20[3];
      v36 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v20 = sub_29E6DAD84((v29 > 1), v30 + 1, 1, v20);
      }

      v40 = *(v40 + 8);
      v31 = v28;
      v32 = v41;
      (v40)(v31, v41);
      v44 = v32;
      v45 = sub_29E6EBE2C(&qword_2A1859D68, MEMORY[0x29EDC6B48]);
      v33 = sub_29E5FEBF4(&v43);
      v34 = v39;
      v38(v33, v39, v32);
      v20[2] = v36;
      sub_29E5FAEE4(&v43, &v20[5 * v30 + 4]);
      (v40)(v34, v32);
    }

    else
    {
    }
  }

  sub_29E6CC108(v20);

  sub_29E750C98();
  return (v24)(v18, v11);
}

uint64_t sub_29E6EA130(uint64_t a1)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v29 = v3;
    sub_29E752048();
    v11 = sub_29E752088();
    v12 = sub_29E7546C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *&v14 = COERCE_DOUBLE(swift_slowAlloc());
      v28 = v7;
      v15 = v14;
      v30 = *&v14;
      *v13 = 136446210;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v30);
      v27 = v2;
      v19 = v8;
      v20 = v18;

      *(v13 + 4) = v20;
      v8 = v19;
      _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Responding to wind down duration change", v13, 0xCu);
      sub_29E5FECBC(v15);
      v21 = v15;
      v7 = v28;
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v13, -1, -1);

      (*(v29 + 8))(v6, v27);
    }

    else
    {

      (*(v29 + 8))(v6, v2);
    }

    v22 = qword_2A1859D28;
    v23 = *(v10 + qword_2A1859D28);
    sub_29E7527B8();
    if (v31)
    {
      if ((v8 & 1) == 0)
      {
LABEL_15:
        *(v10 + qword_2A1859D38) = 1;
        v25 = *(v10 + v22);
        v30 = v7;
        v31 = v8;
        sub_29E7527C8();
LABEL_16:
      }
    }

    else if ((v8 & 1) != 0 || v30 != v7)
    {
      goto LABEL_15;
    }

    v24 = qword_2A1859D48;
    if (*(v10 + qword_2A1859D48) != 1)
    {
      *(v10 + qword_2A1859D48) = 1;
      sub_29E6EADC0();
      *(v10 + v24) = 0;
    }

    goto LABEL_16;
  }
}

uint64_t sub_29E6EA448()
{
  v22 = sub_29E752098();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E753D78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v10 = Strong;
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v8 = sub_29E754908();
  (*(v5 + 104))(v8, *MEMORY[0x29EDCA278], v4);
  v11 = sub_29E753DA8();
  result = (*(v5 + 8))(v8, v4);
  if (v11)
  {
    sub_29E752048();
    v13 = sub_29E752088();
    v14 = sub_29E7546C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Responding to tap on wind down goal", v15, 0xCu);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    (*(v0 + 8))(v3, v22);
    v20 = qword_2A1859D48;
    if (*(v10 + qword_2A1859D48) != 1)
    {
      *(v10 + qword_2A1859D48) = 1;
      sub_29E6EADC0();
      *(v10 + v20) = 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6EA7A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v9[2] = a2;
  v9[3] = v5;
  v10 = v6;
  v11 = a3;
  sub_29E607C50(sub_29E6EC0B0, v9);
}

uint64_t sub_29E6EA8B8(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v36 = a3;
  v34 = *&a2;
  v35 = sub_29E752098();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v35);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v9 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_29E752048();
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32[1] = v9;
      v16 = v15;
      v39 = v15;
      *v14 = 136446466;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, &v39);
      v33 = v3;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v37 = v34;
      v38 = v36 & 1;
      sub_29E602B04();
      v21 = sub_29E7541F8();
      v23 = sub_29E6B9C90(v21, v22, &v39);
      v4 = v33;

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Responding to new wind down goal: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v35);
    v24 = qword_2A1859D38;
    if (*(v11 + qword_2A1859D38))
    {
      goto LABEL_15;
    }

    if (*(v11 + qword_2A1859D40 + 8))
    {
      if (v36)
      {
LABEL_15:
        *(v11 + v24) = 0;
        v30 = qword_2A1859D48;
        if (*(v11 + qword_2A1859D48) != 1)
        {
          *(v11 + qword_2A1859D48) = 1;
          sub_29E6EADC0();
          *(v11 + v30) = 0;
        }
      }
    }

    else if ((v36 & 1) == 0 && *(v11 + qword_2A1859D40) == v34)
    {
      goto LABEL_15;
    }

    v25 = v11 + qword_2A1859CF8;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v35 = *(v25 + 8);
      v26 = v34;
      v27 = v36 & 1;
      swift_getObjectType();
      v33 = v4;
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v26;
      *(v29 + 32) = v27;

      sub_29E74F768();

      sub_29E751758();
    }

    goto LABEL_15;
  }
}

uint64_t sub_29E6EACDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + qword_2A1859D38) = 1;
    v5 = *(result + qword_2A1859D28);
    v9 = *(result + qword_2A1859D40);
    v10 = *(result + qword_2A1859D40 + 8);
    sub_29E7527C8();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = result + qword_2A1859D40;
    *v8 = a3;
    *(v8 + 8) = a4 & 1;
  }
}

uint64_t sub_29E6EADC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_29E752098();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62BD1C();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E750CA8();
  v14 = *(v13 - 8);
  v41 = v13;
  v42 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + qword_2A1859D00);
  sub_29E7527B8();
  v19 = v43[0];
  if (v43[0])
  {
    sub_29E6E9CCC(*(v1 + qword_2A1859D28), *(v1 + qword_2A1859D20), v43[0], v17);
    sub_29E750D48();
    v43[0] = sub_29E750C68();
    v43[1] = v20;
    sub_29E752268();
    v22 = v21;

    (*(v9 + 8))(v12, v8);
    if (v22)
    {
      sub_29E6EBE74(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
      v23 = v42;
      v24 = *(v42 + 72);
      v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_29E762F30;
      v27 = v41;
      (*(v23 + 16))(v26 + v25, v17, v41);
      sub_29E750D18();
    }

    else
    {
      sub_29E750C88();
      sub_29E750D28();

      v27 = v41;
      v23 = v42;
    }

    return (*(v23 + 8))(v17, v27);
  }

  else
  {
    v41 = v3;
    v28 = v40;
    sub_29E752068();
    v29 = sub_29E752088();
    v30 = sub_29E7546A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43[0] = v32;
      *v31 = 136446210;
      v33 = sub_29E755178();
      v35 = sub_29E6B9C90(v33, v34, v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29E5ED000, v29, v30, "[%{public}s] cannot update wind down section for nil schedule", v31, 0xCu);
      sub_29E5FECBC(v32);
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v31, -1, -1);
    }

    (*(v28 + 8))(v6, v41);
    sub_29E6EBE74(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
    v36 = *(v42 + 72);
    v37 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    *(swift_allocObject() + 16) = xmmword_29E762F30;
    sub_29E750C78();
    sub_29E750D18();
  }
}

uint64_t sub_29E6EB2E0()
{
  sub_29E5F0140(v0 + qword_2A1859CF8);
  v1 = *(v0 + qword_2A1859D00);

  v2 = *(v0 + qword_2A1859D08);

  v3 = *(v0 + qword_2A1859D10);

  v4 = *(v0 + qword_2A1859D18);

  v5 = *(v0 + qword_2A1859D20);

  v6 = *(v0 + qword_2A1859D28);

  v7 = *(v0 + qword_2A1859D30);
}

uint64_t sub_29E6EB380()
{
  v0 = sub_29E750D58();
  sub_29E5F0140(v0 + qword_2A1859CF8);
  v1 = *(v0 + qword_2A1859D00);

  v2 = *(v0 + qword_2A1859D08);

  v3 = *(v0 + qword_2A1859D10);

  v4 = *(v0 + qword_2A1859D18);

  v5 = *(v0 + qword_2A1859D20);

  v6 = *(v0 + qword_2A1859D28);

  v7 = *(v0 + qword_2A1859D30);

  return v0;
}

uint64_t sub_29E6EB428()
{
  sub_29E6EB380();

  return swift_deallocClassInstance();
}

uint64_t sub_29E6EB460()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v5 = sub_29E750E68();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E6EB590@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v4 = sub_29E750458();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_29E750438();
  a1[3] = v4;
  result = sub_29E6EBE2C(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_29E6EB71C()
{
  sub_29E751A58();
  sub_29E7547D8();
  return sub_29E7547C8();
}

id sub_29E6EB7A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v35 = a1;
  v46 = a4;
  v5 = sub_29E751908();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74F698();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EBE74(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v37 = &v35 - v13;
  v14 = sub_29E750DC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E752258();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E752228();
  if (a2)
  {
    sub_29E74E9D8();
  }

  else
  {
    sub_29E609B5C(0, &qword_2A1859D70, 0x29EDB9F70);
    sub_29E754A48();
  }

  sub_29E752198();
  result = HKHealthTintColor();
  if (result)
  {
    v25 = sub_29E7521D8();
    sub_29E7521B8();
    v25(v47, 0);
    v26 = v19;
    v47[3] = v19;
    v47[4] = MEMORY[0x29EDC7800];
    v36 = v19;
    v27 = sub_29E5FEBF4(v47);
    v28 = v20;
    (*(v20 + 16))(v27, v23, v26);
    v29 = swift_allocObject();
    v30 = v39;
    *(v29 + 16) = v42;
    *(v29 + 24) = v30;
    *v18 = 1;
    (*(v15 + 104))(v18, *MEMORY[0x29EDC22C0], v14);
    v31 = sub_29E752178();
    (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
    v33 = v40;
    v32 = v41;
    v34 = v38;
    (*(v40 + 104))(v38, *MEMORY[0x29EDC6AC8], v41);

    sub_29E754298();
    (*(v33 + 8))(v34, v32);
    (*(v44 + 104))(v43, *MEMORY[0x29EDC2A38], v45);
    sub_29E750ED8();
    return (*(v28 + 8))(v23, v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E6EBD7C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6EBEE0();
}

uint64_t sub_29E6EBE2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6EBE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E6EBED8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E6EBD7C();
}

uint64_t sub_29E6EBEE0()
{
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v5 = sub_29E752088();
  v6 = sub_29E7546C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    v9 = sub_29E755178();
    v11 = sub_29E6B9C90(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Edit wind down tapped", v7, 0xCu);
    sub_29E5FECBC(v8);
    MEMORY[0x29ED98410](v8, -1, -1);
    MEMORY[0x29ED98410](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_29E7527B8();
  v14 = (v15 & 1) == 0;
  return sub_29E752798();
}

uint64_t sub_29E6EC0F0()
{
  v1 = v0;
  sub_29E7504A8();
  v2 = v0[4];
  sub_29E601938(v1, v1[3]);
  sub_29E750718();
  CGRectGetHeight(v8);
  v3 = v0[4];
  sub_29E601938(v1, v1[3]);
  sub_29E750728();
  sub_29E750468();
  sub_29E750468();
  CGRectGetWidth(v9);
  sub_29E750468();
  CGRectGetHeight(v10);
  sub_29E750478();
  sub_29E750498();
  v4 = v0[9];
  sub_29E601938(v1 + 5, v1[8]);
  v5 = *(v4 + 8);
  sub_29E750728();
}

double sub_29E6EC22C()
{
  sub_29E7504B8();
  v2 = v1;
  sub_29E7504B8();
  CGRectGetWidth(v6);
  v3 = v0[9];
  sub_29E601938(v0 + 5, v0[8]);
  sub_29E751BE8();
  if (v4)
  {
    sub_29E7504B8();
    CGRectGetHeight(v7);
  }

  return v2;
}

uint64_t sub_29E6EC2DC(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29E6EC3E0();
  *v4 = v1;
  v4[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

unint64_t sub_29E6EC38C()
{
  result = qword_2A1859D78;
  if (!qword_2A1859D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859D78);
  }

  return result;
}

unint64_t sub_29E6EC3E0()
{
  result = qword_2A1859D80;
  if (!qword_2A1859D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859D80);
  }

  return result;
}

void sub_29E6EC448()
{
  v0 = sub_29E74FA88();
  v1 = *(v0 - 8);
  v108 = v0;
  v109 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EE5FC(0, &qword_2A18572F8, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v5 = sub_29E750108();
  v6 = *(*(v5 - 8) + 72);
  v7 = *(v5 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E76B150;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A7FA18;
  v11 = sub_29E754198();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (v12)
  {
    v89 = v9;
    v13 = v9 + v8;
    *v13 = v12;
    *(v13 + 8) = 0;
    v14 = *(v7 + 104);
    (v14)(v13, *MEMORY[0x29EDC1608], v5);
    v15 = (v13 + v6);
    v16 = v13;
    *v15 = sub_29E74E9D8();
    v15[1] = v17;
    (v14)(v13 + v6, *MEMORY[0x29EDC1610], v5);
    v18 = v13 + 2 * v6;
    v103 = "sleep-stages-art";
    *v18 = sub_29E74E9D8();
    *(v18 + 8) = v19;
    *(v18 + 16) = 0;
    v107 = *MEMORY[0x29EDC1630];
    v105 = v14;
    v93 = v7 + 104;
    v14(v18);
    v20 = v13 + 3 * v6;
    *v20 = sub_29E6EDF64;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v21 = *MEMORY[0x29EDC15A8];
    (v14)();
    v22 = 4 * v6;
    v104 = v10;
    v23 = (v13 + 4 * v6);
    v24 = sub_29E74E9D8();
    v106 = v6;
    v99 = v24;
    v88 = v25;
    v91 = *MEMORY[0x29EDC6BC8];
    v26 = v91;
    v97 = sub_29E74FA68();
    v27 = *(v97 - 8);
    v102 = *(v27 + 104);
    v94 = v27 + 104;
    v102(v4, v26, v97);
    v98 = *MEMORY[0x29EDC6BC0];
    v29 = v108;
    v28 = v109;
    v30 = *(v109 + 104);
    v100 = v109 + 104;
    v101 = v30;
    v30(v4);
    v31 = sub_29E74FA78();
    v96 = *(v28 + 8);
    v109 = v28 + 8;
    v96(v4, v29);
    v95 = objc_opt_self();
    v32 = v5;
    v33 = [v95 hk_sleepAwakeColor];
    v34 = [v31 imageWithTintColor_];

    v35 = v88;
    *v23 = v99;
    v23[1] = v35;
    v23[2] = v34;
    LODWORD(v99) = *MEMORY[0x29EDC15D0];
    v92 = v32;
    v36 = v105;
    v105(v23);
    v37 = v106;
    v90 = v16;
    v38 = v16 + v22 + v106;
    *v38 = sub_29E74E9D8();
    *(v38 + 8) = v39;
    *(v38 + 16) = 0;
    v36(v38, v107, v32);
    v40 = (v16 + 6 * v37);
    v41 = sub_29E74E9D8();
    v43 = v42;
    v44 = v91;
    v102(v4, v91, v97);
    v45 = v108;
    v101(v4, v98, v108);
    v46 = sub_29E74FA78();
    v96(v4, v45);
    v47 = [v95 hk_sleepAsleepREMColor];
    v48 = [v46 imageWithTintColor_];

    *v40 = v41;
    v40[1] = v43;
    v40[2] = v48;
    v49 = v92;
    v50 = v105;
    (v105)(v40, v99, v92);
    v51 = 8 * v106;
    v52 = v90;
    v53 = v90 + 7 * v106;
    *v53 = sub_29E74E9D8();
    *(v53 + 8) = v54;
    *(v53 + 16) = 0;
    v55 = v107;
    v50(v53, v107, v49);
    v56 = (v52 + v51);
    v88 = sub_29E74E9D8();
    v58 = v57;
    v102(v4, v44, v97);
    v59 = v108;
    v101(v4, v98, v108);
    v60 = sub_29E74FA78();
    v96(v4, v59);
    v61 = [v95 hk_sleepAsleepCoreColor];
    v62 = [v60 imageWithTintColor_];

    *v56 = v88;
    v56[1] = v58;
    v56[2] = v62;
    v63 = v92;
    v64 = v105;
    (v105)(v56, v99, v92);
    v65 = v106;
    v66 = v90;
    v67 = v90 + v51 + v106;
    *v67 = sub_29E74E9D8();
    *(v67 + 8) = v68;
    *(v67 + 16) = 0;
    v64(v67, v55, v63);
    v69 = (v66 + 10 * v65);
    v70 = sub_29E74E9D8();
    v72 = v71;
    v102(v4, v91, v97);
    v73 = v108;
    v101(v4, v98, v108);
    v74 = sub_29E74FA78();
    v96(v4, v73);
    v75 = [v95 hk_sleepAsleepDeepColor];
    v76 = [v74 imageWithTintColor_];

    *v69 = v70;
    v69[1] = v72;
    v69[2] = v76;
    v77 = v99;
    v78 = v92;
    v79 = v105;
    (v105)(v69, v99, v92);
    v80 = v106;
    v81 = v66 + 11 * v106;
    *v81 = sub_29E74E9D8();
    *(v81 + 8) = v82;
    *(v81 + 16) = 0;
    v79(v81, v107, v78);
    v83 = (v66 + 12 * v80);
    *v83 = sub_29E74E9D8();
    v83[1] = v84;
    v83[2] = 0;
    v79(v83, v77, v78);
    v85 = v66 + 13 * v80;
    *v85 = sub_29E74E9D8();
    *(v85 + 8) = v86;
    *(v85 + 16) = 0;
    v79(v85, v107, v78);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E6ED00C()
{
  sub_29E6EE11C(0, &qword_2A1859D88, sub_29E6EDF68);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E6ED0A8(&v6 - v2);
  sub_29E6EE49C();
  v4 = objc_allocWithZone(v3);
  return sub_29E752BB8();
}

double sub_29E6ED0A8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F458();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = sub_29E74F2F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6EE000();
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6ED544(v8);
  v14 = MEMORY[0x29EDC6A40];
  sub_29E6EE5FC(0, &qword_2A1859E00, MEMORY[0x29EDC6A40], MEMORY[0x29EDC9E90]);
  v15 = *(v3 + 72);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_29E762F40;
  sub_29E74F448();
  sub_29E74F438();
  v36 = v17;
  sub_29E6EE454(&qword_2A1859E08, MEMORY[0x29EDC6A40]);
  sub_29E6EE5FC(0, &qword_2A1859E10, v14, MEMORY[0x29EDC9A40]);
  sub_29E6EE660();
  sub_29E754C58();
  v18 = objc_allocWithZone(sub_29E74F788());
  sub_29E74F778();
  sub_29E74F428();
  v19 = sub_29E7533A8();
  sub_29E6EE11C(0, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
  v21 = &v13[*(v20 + 36)];
  *v21 = v19;
  *(v21 + 8) = xmmword_29E76B160;
  *(v21 + 24) = xmmword_29E76B160;
  v21[40] = 0;
  sub_29E6EE068();
  v23 = &v13[*(v22 + 36)];
  sub_29E6EE5FC(0, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
  v25 = *(v24 + 28);
  v26 = *MEMORY[0x29EDBC360];
  v27 = sub_29E752A38();
  (*(*(v27 - 8) + 104))(v23 + v25, v26, v27);
  *v23 = swift_getKeyPath();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v28 = qword_2A1A7FA18;
  v29 = sub_29E753988();
  v30 = sub_29E7533A8();
  v31 = &v13[*(v10 + 36)];
  *v31 = v29;
  v31[8] = v30;
  v36 = sub_29E753938();
  sub_29E6EE1D0();
  sub_29E753658();

  sub_29E6EE7B0(v13);
  LOBYTE(v29) = sub_29E7533A8();
  sub_29E6EE11C(0, &qword_2A1859D88, sub_29E6EDF68);
  v33 = a1 + *(v32 + 36);
  *v33 = v29;
  result = 0.0;
  *(v33 + 8) = xmmword_29E76B170;
  *(v33 + 24) = xmmword_29E76B170;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_29E6ED544@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_29E74F318();
  v76 = *(v1 - 8);
  v77 = v1;
  v2 = *(v76 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v78 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v75 = &v58 - v5;
  v6 = sub_29E74E838();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v72 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v68 = &v58 - v10;
  v74 = sub_29E74ED28();
  v11 = *(v74 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v74);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v58 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v58 - v19;
  sub_29E74EC58();
  v79[32] = 2;
  sub_29E754558();
  v80 = v21;
  v81 = 3;
  sub_29E754558();
  v82 = v22;
  v83 = 0;
  sub_29E754558();
  v84 = v23;
  v85 = 2;
  sub_29E754558();
  v86 = v24;
  v87 = 3;
  sub_29E754558();
  v88 = v25;
  v89 = 2;
  sub_29E754558();
  v90 = v26;
  v91 = 1;
  sub_29E754558();
  v92 = v27;
  v93 = 2;
  sub_29E754558();
  v94 = v28;
  v95 = 3;
  sub_29E754558();
  v96 = v29;
  v97 = 2;
  sub_29E754558();
  v98 = v30;
  v99 = 1;
  sub_29E754558();
  v100 = v31;
  v101 = 2;
  sub_29E754558();
  v102 = v32;
  v103 = 1;
  sub_29E754558();
  v104 = v33;
  v105 = 2;
  sub_29E754558();
  v106 = v34;
  v107 = 1;
  v35 = v74;
  sub_29E754558();
  v108 = v36;
  v37 = *(v11 + 16);
  v11 += 16;
  v59 = v20;
  v67 = v37;
  v37(v18, v20, v35);
  v38 = 0;
  v39 = v77;
  v65 = (v76 + 16);
  v66 = (v73 + 16);
  v63 = v76 + 8;
  v64 = v76 + 32;
  v40 = (v73 + 8);
  v73 = v11 - 8;
  v71 = v11;
  v61 = (v11 + 16);
  v62 = v40;
  v41 = v18;
  v42 = MEMORY[0x29EDCA190];
  v43 = v75;
  v69 = v6;
  v70 = v41;
  do
  {
    v44 = *&v79[v38 + 40];
    v45 = v79[v38 + 32];
    v67(v15, v41, v35);
    v46 = v68;
    sub_29E74E818();
    (*v66)(v72, v46, v6);
    sub_29E74F308();
    (*v65)(v78, v43, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = sub_29E6DB6D8(0, v42[2] + 1, 1, v42);
    }

    v50 = v48[2];
    v49 = v48[3];
    v51 = v46;
    if (v50 >= v49 >> 1)
    {
      v48 = sub_29E6DB6D8(v49 > 1, v50 + 1, 1, v48);
    }

    v41 = v70;
    v48[2] = v50 + 1;
    v53 = v76;
    v52 = v77;
    v54 = v48 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v50;
    v42 = v48;
    (*(v76 + 32))(v54, v78, v77);
    v55 = v51;
    sub_29E74E7F8();
    v43 = v75;
    v39 = v52;
    (*(v53 + 8))();
    v6 = v69;
    (*v62)(v55, v69);
    v35 = v74;
    v56 = *v73;
    (*v73)(v41, v74);
    (*v61)(v41, v15, v35);
    v38 += 16;
  }

  while (v38 != 240);
  sub_29E74F2E8();
  v56(v41, v35);
  return (v56)(v59, v35);
}

uint64_t sub_29E6EDB3C()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x29EDC6B18], v0);
  v5 = sub_29E74F7E8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_29E6EDC78()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E6EDD20()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E6EDDC0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29E6EDE84()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v4);
  v5 = sub_29E750518();
  (*(v1 + 8))(v4, v0);
  v6 = sub_29E6D5A34(v5);

  return v6;
}

void sub_29E6EDF68()
{
  if (!qword_2A1859D90)
  {
    sub_29E6EE000();
    sub_29E6EE1D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859D90);
    }
  }
}

void sub_29E6EE000()
{
  if (!qword_2A1859D98)
  {
    sub_29E6EE068();
    sub_29E6EE178();
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859D98);
    }
  }
}

void sub_29E6EE068()
{
  if (!qword_2A1859DA0)
  {
    sub_29E6EE11C(255, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
    sub_29E6EE5FC(255, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859DA0);
    }
  }
}

void sub_29E6EE11C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}
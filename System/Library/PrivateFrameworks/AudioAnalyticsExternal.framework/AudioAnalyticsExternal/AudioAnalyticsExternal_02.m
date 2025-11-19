uint64_t sub_2239F3388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_223A21380();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_2239F3408(uint64_t a1)
{
  v2 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  if (!v2)
  {
    v27 = sub_223A20FB0();
    v28 = sub_223A214E0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2239C7000, v27, v28, "Failed to unwrap RTC reporting token.", v29, 2u);
      MEMORY[0x223DF1300](v29, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B60;
  result = *MEMORY[0x277D44038];
  if (!*MEMORY[0x277D44038])
  {
    __break(1u);
    goto LABEL_15;
  }

  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v8 = sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  *(inited + 72) = v8;
  *(inited + 48) = v7;
  result = *MEMORY[0x277D44048];
  if (!*MEMORY[0x277D44048])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 80) = sub_223A21220();
  *(inited + 88) = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 120) = v8;
  *(inited + 96) = v10;
  result = *MEMORY[0x277D44078];
  if (!*MEMORY[0x277D44078])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(inited + 128) = sub_223A21220();
  *(inited + 136) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  *(inited + 168) = v8;
  *(inited + 144) = v12;
  result = *MEMORY[0x277D44018];
  if (!*MEMORY[0x277D44018])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(inited + 176) = sub_223A21220();
  *(inited + 184) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 216) = v8;
  *(inited + 192) = v14;
  result = *MEMORY[0x277D44060];
  if (!*MEMORY[0x277D44060])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 224) = sub_223A21220();
  *(inited + 232) = v15;
  *(inited + 264) = sub_2239E7EF4(0, &qword_27D0A4970, 0x277D43FE8);
  *(inited + 240) = v3;
  v16 = v3;
  v17 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_223A22B70;
  result = *MEMORY[0x277D44088];
  if (!*MEMORY[0x277D44088])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v18 + 32) = sub_223A21220();
  *(v18 + 40) = v19;
  v20 = MEMORY[0x277D837D0];
  *(v18 + 72) = MEMORY[0x277D837D0];
  *(v18 + 48) = 0xD000000000000011;
  *(v18 + 56) = 0x8000000223A24EE0;
  result = *MEMORY[0x277D440A0];
  if (*MEMORY[0x277D440A0])
  {
    *(v18 + 80) = sub_223A21220();
    *(v18 + 88) = v21;
    *(v18 + 120) = v20;
    *(v18 + 96) = 0xD000000000000014;
    *(v18 + 104) = 0x8000000223A24F00;
    v22 = sub_2239DC6E4(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_2239D6C54(v17);

    sub_2239D6C54(v22);

    v23 = objc_allocWithZone(MEMORY[0x277D43FE8]);
    v24 = sub_223A21100();

    v25 = sub_223A21100();

    v26 = [v23 initWithSessionInfo:v24 userInfo:v25 frameworksToCheck:0];

    return v26;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t AirPodManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  v3 = sub_223A20FC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation);

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation);

  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample);

  return v0;
}

uint64_t AirPodManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  v3 = sub_223A20FC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation);

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation);

  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_2239F39C4()
{
  v7 = MEMORY[0x277D84F90];
  result = sub_223A02CBC(0, 20, 0);
  v1 = 0;
  v2 = v7;
  v3 = *(v7 + 16);
  do
  {
    v4 = byte_2837028C8[v1 + 32];
    v8 = v2;
    v5 = *(v2 + 24);
    if (v3 >= v5 >> 1)
    {
      result = sub_223A02CBC((v5 > 1), v3 + 1, 1);
    }

    ++v1;
    v6 = dword_223A22BEC[v4];
    v2 = v8;
    *(v8 + 16) = v3 + 1;
    *(v8 + 4 * v3++ + 32) = v6;
  }

  while (v1 != 20);
  off_27D0A4930 = v8;
  return result;
}

uint64_t sub_2239F3AAC()
{
  result = sub_223A20FC0();
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

unint64_t sub_2239F3BA8()
{
  result = qword_27D0A4980;
  if (!qword_27D0A4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4980);
  }

  return result;
}

uint64_t sub_2239F3BFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2239F3DF8();
  result = MEMORY[0x223DF0570](v2, &type metadata for AirPodInformation, v3);
  v16 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 176);
      v17[10] = *(v5 + 160);
      v17[11] = v6;
      v17[12] = *(v5 + 192);
      v18 = *(v5 + 208);
      v7 = *(v5 + 112);
      v17[6] = *(v5 + 96);
      v17[7] = v7;
      v8 = *(v5 + 144);
      v17[8] = *(v5 + 128);
      v17[9] = v8;
      v9 = *(v5 + 48);
      v17[2] = *(v5 + 32);
      v17[3] = v9;
      v10 = *(v5 + 80);
      v17[4] = *(v5 + 64);
      v17[5] = v10;
      v11 = *(v5 + 16);
      v17[0] = *v5;
      v17[1] = v11;
      sub_2239EF1D4(v17, v14);
      sub_223A04AB0(v12, v17);
      v14[10] = v12[10];
      v14[11] = v12[11];
      v14[12] = v12[12];
      v15 = v13;
      v14[6] = v12[6];
      v14[7] = v12[7];
      v14[8] = v12[8];
      v14[9] = v12[9];
      v14[2] = v12[2];
      v14[3] = v12[3];
      v14[4] = v12[4];
      v14[5] = v12[5];
      v14[0] = v12[0];
      v14[1] = v12[1];
      sub_2239EF230(v14);
      v5 += 216;
      --v2;
    }

    while (v2);
    return v16;
  }

  return result;
}

uint64_t sub_2239F3D2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A48E0, &unk_223A22800);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2239F3DA4()
{
  result = qword_27D0A4990;
  if (!qword_27D0A4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4990);
  }

  return result;
}

unint64_t sub_2239F3DF8()
{
  result = qword_27D0A4998;
  if (!qword_27D0A4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4998);
  }

  return result;
}

unint64_t sub_2239F3E90()
{
  v1 = v0;
  v2 = sub_223A20440();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223A20400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223A20460();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_223A203C0();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v45);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_223A208C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22C40;
  *(inited + 32) = 0xD000000000000010;
  v51 = inited + 32;
  *(inited + 40) = 0x8000000223A24F60;
  v57 = *(v1 + 136);
  v20 = MEMORY[0x277D837D0];
  *(inited + 48) = v57;
  *(inited + 72) = v20;
  *(inited + 80) = 0x7372655665736143;
  *(inited + 88) = 0xEB000000006E6F69;
  v56 = *(v1 + 152);
  *(inited + 96) = v56;
  *(inited + 120) = v20;
  *(inited + 128) = 0x676E69737546;
  *(inited + 136) = 0xE600000000000000;
  v55 = *(v1 + 200);
  *(inited + 144) = *(v1 + 200);
  *(inited + 168) = v20;
  *(inited + 176) = 0x6E6E6F437473616CLL;
  *(inited + 184) = 0xEF57576465746365;
  v21 = *(v1 + 120);
  sub_2239F8A08(&v57, &v54);
  sub_2239F8A08(&v56, &v54);
  sub_2239F8A08(&v55, &v54);
  sub_223A203A0();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9830], v6);
  sub_223A20410();
  (*(v7 + 8))(v10, v6);
  sub_223A20420();
  sub_223A20430();
  v23 = v49;
  v22 = v50;
  (*(v49 + 104))(v5, *MEMORY[0x277CC9940], v50);
  v24 = sub_223A20450();
  (*(v23 + 8))(v5, v22);
  (*(v47 + 8))(v14, v48);
  (*(v15 + 8))(v18, v45);
  v25 = MEMORY[0x277D83B88];
  *(inited + 192) = v24;
  *(inited + 216) = v25;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000223A24F80;
  v26 = *(v1 + 8);
  v54 = v26;
  v27 = (v1 + 24);
  v28 = (v1 + 32);
  v29 = *(v1 + 56);
  v30 = v46;
  if (v46)
  {
    v28 = (v1 + 48);
  }

  v31 = *v28;
  if (v46)
  {
    v27 = (v1 + 40);
  }

  v32 = *v27;
  *(inited + 240) = v26;
  v33 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = 0xD000000000000019;
  v34 = MEMORY[0x277D83E88];
  *(inited + 280) = 0x8000000223A24FA0;
  *(inited + 288) = v29;
  *(inited + 312) = v34;
  strcpy((inited + 320), "LeftAudioUUID");
  *(inited + 334) = -4864;
  if (v30)
  {
    v35 = (v1 + 104);
  }

  else
  {
    v35 = (v1 + 88);
  }

  if (v30)
  {
    v36 = (v1 + 96);
  }

  else
  {
    v36 = (v1 + 80);
  }

  *(inited + 336) = v32;
  *(inited + 344) = v37;
  *(inited + 360) = v33;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x8000000223A24FC0;
  v53 = *(v1 + 64);
  v38 = *(v1 + 112);
  v39 = *v35;
  v40 = *v36;
  *(inited + 384) = v53;
  *(inited + 408) = v33;
  *(inited + 416) = 0xD00000000000001ALL;
  *(inited + 424) = 0x8000000223A24FE0;
  *(inited + 432) = v38;
  *(inited + 456) = v34;
  strcpy((inited + 464), "RightAudioUUID");
  *(inited + 479) = -18;

  *(inited + 504) = v33;
  *(inited + 480) = v40;
  *(inited + 488) = v41;
  sub_2239F8A08(&v54, v52);
  sub_2239F8A08(&v53, v52);
  v42 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v42;
}

uint64_t sub_2239F4488(char a1)
{
  v2 = 1885759585;
  v18 = MEMORY[0x277D84F90];
  sub_2239D32E0(0, 2, 0);
  v3 = dword_223A23154[a1];
  v4 = byte_283702920;
  sub_223A21700();
  if (v4)
  {
    v5 = 1651533936;
  }

  else
  {
    v5 = 1114663024;
  }

  if (!v4)
  {
    v2 = 1681023329;
  }

  MEMORY[0x223DF0390](v5, 0xE400000000000000);

  MEMORY[0x223DF0390](2107424, 0xE300000000000000);
  MEMORY[0x223DF0390](v2, 0xE400000000000000);

  MEMORY[0x223DF0390](0x2028202920, 0xE500000000000000);
  v6 = sub_223A218E0();
  MEMORY[0x223DF0390](v6);

  MEMORY[0x223DF0390](10528, 0xE200000000000000);
  v8 = *(v18 + 16);
  v7 = *(v18 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_2239D32E0((v7 > 1), v8 + 1, 1);
  }

  *(v18 + 16) = v8 + 1;
  v9 = v18 + 16 * v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  v10 = byte_283702921;
  sub_223A21700();
  if (v10)
  {
    v11 = 1651533936;
  }

  else
  {
    v11 = 1114663024;
  }

  if (v10)
  {
    v12 = 1885759585;
  }

  else
  {
    v12 = 1681023329;
  }

  MEMORY[0x223DF0390](v11, 0xE400000000000000);

  MEMORY[0x223DF0390](2107424, 0xE300000000000000);
  MEMORY[0x223DF0390](v12, 0xE400000000000000);

  MEMORY[0x223DF0390](0x2028202920, 0xE500000000000000);
  v13 = sub_223A218E0();
  MEMORY[0x223DF0390](v13);

  MEMORY[0x223DF0390](10528, 0xE200000000000000);
  v15 = *(v18 + 16);
  v14 = *(v18 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_2239D32E0((v14 > 1), v15 + 1, 1);
  }

  *(v18 + 16) = v15 + 1;
  v16 = v18 + 16 * v15;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0xE000000000000000;
  return v18;
}

uint64_t sub_2239F4750()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_2239F4488(byte_2837028C8[v0 + 32]);
    v3 = *(result + 16);
    v4 = *(v1 + 16);
    v5 = v4 + v3;
    if (__OFADD__(v4, v3))
    {
      break;
    }

    v6 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v5 <= *(v1 + 24) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v4 <= v5)
      {
        v7 = v4 + v3;
      }

      else
      {
        v7 = v4;
      }

      result = sub_2239E1804(result, v7, 1, v1);
      v1 = result;
      if (*(v6 + 16))
      {
LABEL_13:
        if ((*(v1 + 24) >> 1) - *(v1 + 16) < v3)
        {
          goto LABEL_20;
        }

        swift_arrayInitWithCopy();

        if (v3)
        {
          v8 = *(v1 + 16);
          v9 = __OFADD__(v8, v3);
          v10 = v8 + v3;
          if (v9)
          {
            goto LABEL_21;
          }

          *(v1 + 16) = v10;
        }

        goto LABEL_3;
      }
    }

    if (v3)
    {
      goto LABEL_19;
    }

LABEL_3:
    if (++v0 == 20)
    {
      qword_2813359C0 = v1;
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t AACPVersionInfo.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AACPVersionInfo();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[1] = 0x7372655650434141;
  v51[2] = 0xEF6F666E496E6F69;
  sub_223A216A0();
  if (*(a1 + 16) && (v9 = sub_2239F67A4(v52), (v10 & 1) != 0))
  {
    sub_2239D17A8(*(a1 + 56) + 32 * v9, &v54);
    sub_2239F67E8(v52);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49A8, &qword_223A22C60);
    if (swift_dynamicCast())
    {
      sub_223A213B0();
      if (v53)
      {
        v11 = swift_dynamicCast();
        v12 = v54;
        v13 = v55;
        if (!v11)
        {
          v12 = 0;
          v13 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v12 = 0;
        v13 = 0;
      }

      *v8 = v12;
      *(v8 + 1) = v13;
      sub_223A213B0();
      if (v53)
      {
        v16 = swift_dynamicCast();
        v17 = v54;
        v18 = v55;
        if (!v16)
        {
          v17 = 0;
          v18 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v17 = 0;
        v18 = 0;
      }

      *(v8 + 2) = v17;
      *(v8 + 3) = v18;
      sub_223A213B0();
      if (v53)
      {
        v19 = swift_dynamicCast();
        v20 = v54;
        v21 = v55;
        if (!v19)
        {
          v20 = 0;
          v21 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v20 = 0;
        v21 = 0;
      }

      *(v8 + 4) = v20;
      *(v8 + 5) = v21;
      sub_223A213B0();
      if (v53)
      {
        v22 = swift_dynamicCast();
        v23 = v54;
        v24 = v55;
        if (!v22)
        {
          v23 = 0;
          v24 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v23 = 0;
        v24 = 0;
      }

      *(v8 + 6) = v23;
      *(v8 + 7) = v24;
      sub_223A213B0();
      if (v53)
      {
        v25 = swift_dynamicCast();
        v26 = v54;
        v27 = v55;
        if (!v25)
        {
          v26 = 0;
          v27 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v26 = 0;
        v27 = 0;
      }

      *(v8 + 8) = v26;
      *(v8 + 9) = v27;
      sub_223A213B0();
      if (v53)
      {
        v28 = swift_dynamicCast();
        v29 = v54;
        v30 = v55;
        if (!v28)
        {
          v29 = 0;
          v30 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v29 = 0;
        v30 = 0;
      }

      *(v8 + 10) = v29;
      *(v8 + 11) = v30;
      sub_223A213B0();
      if (v53)
      {
        v31 = swift_dynamicCast();
        v32 = v54;
        v33 = v55;
        if (!v31)
        {
          v32 = 0;
          v33 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v32 = 0;
        v33 = 0;
      }

      *(v8 + 12) = v32;
      *(v8 + 13) = v33;
      sub_223A213B0();
      if (v53)
      {
        v34 = swift_dynamicCast();
        v35 = v54;
        v36 = v55;
        if (!v34)
        {
          v35 = 0;
          v36 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v35 = 0;
        v36 = 0;
      }

      *(v8 + 14) = v35;
      *(v8 + 15) = v36;
      sub_223A213B0();
      if (v53)
      {
        v37 = swift_dynamicCast();
        v38 = v54;
        v39 = v55;
        if (!v37)
        {
          v38 = 0;
          v39 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v38 = 0;
        v39 = 0;
      }

      *(v8 + 16) = v38;
      *(v8 + 17) = v39;
      sub_223A213B0();
      if (v53)
      {
        v40 = swift_dynamicCast();
        v41 = v54;
        v42 = v55;
        if (!v40)
        {
          v41 = 0;
          v42 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v41 = 0;
        v42 = 0;
      }

      *(v8 + 18) = v41;
      *(v8 + 19) = v42;
      sub_223A213B0();
      if (v53)
      {
        v43 = swift_dynamicCast();
        v44 = v54;
        v45 = v55;
        if (!v43)
        {
          v44 = 0;
          v45 = 0;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
        v44 = 0;
        v45 = 0;
      }

      *(v8 + 20) = v44;
      *(v8 + 21) = v45;
      v46 = v4[15];
      sub_223A213B0();
      if (v53)
      {
        if (swift_dynamicCast())
        {
          sub_223A203D0();

          goto LABEL_56;
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
      }

      v47 = sub_223A203F0();
      (*(*(v47 - 8) + 56))(&v8[v46], 1, 1, v47);
LABEL_56:
      v48 = v4[16];
      sub_223A213B0();
      if (v53)
      {
        if (swift_dynamicCast())
        {
          sub_223A203D0();

LABEL_61:
          *&v8[v4[17]] = sub_2239F50EC();
          v50 = sub_2239F50EC();

          *&v8[v4[18]] = v50;
          sub_2239F683C(v8, a2);
          v14 = 0;
          return (*(v5 + 56))(a2, v14, 1, v4);
        }
      }

      else
      {
        sub_2239CDCEC(v52, &qword_27D0A49B0, &qword_223A22C68);
      }

      v49 = sub_223A203F0();
      (*(*(v49 - 8) + 56))(&v8[v48], 1, 1, v49);
      goto LABEL_61;
    }
  }

  else
  {

    sub_2239F67E8(v52);
  }

  v14 = 1;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

uint64_t type metadata accessor for AACPVersionInfo()
{
  result = qword_27D0A49C8;
  if (!qword_27D0A49C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2239F50EC()
{
  sub_223A213B0();
  if (v5)
  {
    if (swift_dynamicCast())
    {
      v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      v1 = sub_223A211F0();

      v2 = [v0 numberFromString_];

      return v2;
    }
  }

  else
  {
    sub_2239CDCEC(v4, &qword_27D0A49B0, &qword_223A22C68);
  }

  return 0;
}

AudioAnalyticsExternal::CaseInfo_optional __swiftcall CaseInfo.init(with:)(Swift::OpaquePointer with)
{
  v3 = v1;
  sub_223A216A0();
  if (!*(with._rawValue + 2) || (v4 = sub_2239F67A4(v13), (v5 & 1) == 0))
  {

    v6 = sub_2239F67E8(v13);
    goto LABEL_9;
  }

  sub_2239D17A8(*(with._rawValue + 7) + 32 * v4, v14);
  sub_2239F67E8(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    v12 = 1;
    goto LABEL_10;
  }

  if (MEMORY[0x6F666E4965736153] && (v9 = sub_2239CDC74(0x6F666E4965736143, 0xEF6E6F6973726556), (v10 & 1) != 0))
  {
    sub_2239D17A8(MEMORY[0x6F666E496573617B] + 32 * v9, v13);

    v6 = swift_dynamicCast();
    v11 = v14[0];
    v12 = v14[1];
    if (!v6)
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {

    v11 = 0;
    v12 = 0;
  }

LABEL_10:
  *v3 = v11;
  v3[1] = v12;
  result.value.version.value._object = v7;
  result.value.version.value._countAndFlagsBits = v6;
  result.is_nil = v8;
  return result;
}

unint64_t sub_2239F5358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22C50;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000223A25000;
  v2 = MEMORY[0x277D839B0];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x7374726F70707573;
  *(inited + 88) = 0xEA00000000005348;
  *(inited + 96) = *(v0 + 184);
  *(inited + 120) = v2;
  *(inited + 128) = 0x69615064756F6C63;
  *(inited + 136) = 0xEB00000000646572;
  *(inited + 144) = *(v0 + 185);
  *(inited + 168) = v2;
  *(inited + 176) = 0x696150636967616DLL;
  *(inited + 184) = 0xEB00000000646572;
  *(inited + 192) = *(v0 + 186);
  *(inited + 216) = v2;
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000223A25020;
  *(inited + 240) = *(v0 + 187);
  *(inited + 264) = v2;
  strcpy((inited + 272), "listeningMode");
  *(inited + 286) = -4864;
  v3 = MEMORY[0x277D84CC0];
  *(inited + 288) = *(v0 + 188);
  *(inited + 312) = v3;
  strcpy((inited + 320), "smartRouteMode");
  *(inited + 335) = -18;
  v4 = MEMORY[0x277D84B78];
  *(inited + 336) = *(v0 + 192);
  *(inited + 360) = v4;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = 0x8000000223A25040;
  *(inited + 384) = *(v0 + 193);
  *(inited + 408) = v2;
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000223A25060;
  *(inited + 432) = *(v0 + 194);
  *(inited + 456) = v4;
  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000223A25080;
  *(inited + 480) = *(v0 + 195);
  *(inited + 504) = v2;
  *(inited + 512) = 0xD000000000000012;
  *(inited + 520) = 0x8000000223A250A0;
  v5 = *(v0 + 196);
  *(inited + 552) = v2;
  *(inited + 528) = v5;
  *(inited + 560) = 0x49746375646F7270;
  *(inited + 568) = 0xE900000000000044;
  v6 = *(v0 + 128);
  *(inited + 600) = v3;
  *(inited + 576) = v6;
  *(inited + 608) = 0x6D754E6C65646F6DLL;
  *(inited + 616) = 0xEB00000000726562;
  v14 = *(v0 + 136);
  v7 = MEMORY[0x277D837D0];
  *(inited + 648) = MEMORY[0x277D837D0];
  *(inited + 624) = *(v0 + 136);
  *(inited + 656) = 0x6572617764726168;
  *(inited + 664) = 0xEF6E6F6973726556;
  v8 = *(v0 + 168);
  *(inited + 696) = v7;
  *(inited + 672) = *(v0 + 168);
  *(inited + 704) = 0x657261776D726966;
  *(inited + 712) = 0xEF6E6F6973726556;
  v12 = *(v0 + 8);
  v13 = v8;
  *(inited + 744) = v7;
  *(inited + 720) = *(v0 + 8);
  sub_2239F8A08(&v14, v11);
  sub_2239F8A08(&v13, v11);
  sub_2239F8A08(&v12, v11);
  v9 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_2239F56A8(char a1)
{
  result = 0x49746375646F7270;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6D754E6C65646F6DLL;
      break;
    case 6:
      result = 0x7372655665736163;
      break;
    case 7:
      result = 0x6572617764726168;
      break;
    case 8:
      result = 0x7374726F70707573;
      break;
    case 9:
      result = 0x5064756F6C437369;
      break;
    case 10:
      result = 0x50636967614D7369;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E696E657473696CLL;
      break;
    case 13:
      result = 0x756F527472616D73;
      break;
    case 14:
    case 17:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x676E69737566;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_2239F58F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2239F7948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2239F5934(uint64_t a1)
{
  v2 = sub_2239F88D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239F5970(uint64_t a1)
{
  v2 = sub_2239F88D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2239F59AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A08, &qword_223A22E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F88D4();
  sub_223A219A0();
  v11 = *v3;
  LOBYTE(v40) = 0;
  sub_223A21870();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v46[0] = *(v3 + 8);
    v46[1] = v12;
    v46[2] = *(v3 + 40);
    v47 = *(v3 + 7);
    v13 = *(v3 + 24);
    v40 = *(v3 + 8);
    v41 = v13;
    v42 = *(v3 + 40);
    v43 = *(v3 + 7);
    v48 = 1;
    sub_2239F897C(v46, v39);
    sub_2239F89B4();
    sub_223A218A0();

    v14 = *(v3 + 5);
    v44[0] = *(v3 + 4);
    v44[1] = v14;
    v16 = *(v3 + 4);
    v15 = *(v3 + 5);
    v44[2] = *(v3 + 6);
    v45 = *(v3 + 14);
    v40 = v16;
    v41 = v15;
    v42 = *(v3 + 6);
    v43 = *(v3 + 14);
    v48 = 2;
    sub_2239F897C(v44, v39);
    sub_223A218A0();

    v18 = *(v3 + 15);
    LOBYTE(v40) = 3;
    sub_223A21880();
    v19 = *(v3 + 32);
    LOBYTE(v40) = 4;
    sub_223A218C0();
    v20 = *(v3 + 17);
    v21 = *(v3 + 18);
    LOBYTE(v40) = 5;
    sub_223A21860();
    v22 = *(v3 + 19);
    v23 = *(v3 + 20);
    LOBYTE(v40) = 6;
    sub_223A21860();
    v24 = *(v3 + 21);
    v25 = *(v3 + 22);
    LOBYTE(v40) = 7;
    sub_223A21860();
    v26 = v3[184];
    LOBYTE(v40) = 8;
    sub_223A21870();
    v27 = v3[185];
    LOBYTE(v40) = 9;
    sub_223A21870();
    v28 = v3[186];
    LOBYTE(v40) = 10;
    sub_223A21870();
    v29 = v3[187];
    LOBYTE(v40) = 11;
    sub_223A21870();
    v30 = *(v3 + 47);
    LOBYTE(v40) = 12;
    sub_223A218C0();
    v31 = v3[192];
    LOBYTE(v40) = 13;
    sub_223A218B0();
    v32 = v3[193];
    LOBYTE(v40) = 14;
    sub_223A21870();
    v33 = v3[194];
    LOBYTE(v40) = 15;
    sub_223A218B0();
    v34 = v3[195];
    LOBYTE(v40) = 16;
    sub_223A21870();
    v35 = v3[196];
    LOBYTE(v40) = 17;
    sub_223A21870();
    v36 = *(v3 + 25);
    v37 = *(v3 + 26);
    LOBYTE(v40) = 18;
    sub_223A21860();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_2239F5EC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2239F7F50(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_2239F5F6C(void *a1, void *a2)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = a2[10];
  v5 = a2[11];
  v6 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v6 || (v7 = sub_223A218F0(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_223A218F0();
    }
  }

  return result;
}

uint64_t sub_2239F6010(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A60, &qword_223A23040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F93E0();
  sub_223A219A0();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_223A21860();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v19[14] = 1;
  sub_223A21860();
  v15 = v3[4];
  v16 = v3[5];
  v19[13] = 2;
  sub_223A21860();
  v18 = v3[6];
  v19[12] = 3;
  sub_223A21890();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2239F61D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[10];
  v3 = v0[11];
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  return sub_223A21970();
}

uint64_t sub_2239F6238()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[10];
  v3 = v0[11];
  sub_223A21290();

  return sub_223A21290();
}

uint64_t sub_2239F6288()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[10];
  v3 = v0[11];
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  return sub_223A21970();
}

uint64_t sub_2239F62EC()
{
  v1 = *v0;
  sub_223A21940();
  MEMORY[0x223DF0A30](v1);
  return sub_223A21970();
}

uint64_t sub_2239F6334()
{
  v1 = *v0;
  sub_223A21940();
  MEMORY[0x223DF0A30](v1);
  return sub_223A21970();
}

unint64_t sub_2239F6378()
{
  v1 = 0x657261776D726966;
  v2 = 0x754E6C6169726573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1145656661;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2239F6404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2239F8F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2239F6438(uint64_t a1)
{
  v2 = sub_2239F93E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2239F6474(uint64_t a1)
{
  v2 = sub_2239F93E0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2239F64B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2239F9100(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

BOOL sub_2239F6518(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_223A218F0() & 1) != 0) && (v2 == v7 && v4 == v8 || (sub_223A218F0() & 1) != 0) && (v3 == v9 && v5 == v10 || (sub_223A218F0() & 1) != 0) && v6 == v11;
}

uint64_t sub_2239F6600()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  MEMORY[0x223DF0A30](v7);
  return sub_223A21970();
}

uint64_t sub_2239F669C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  return MEMORY[0x223DF0A30](v7);
}

uint64_t sub_2239F670C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_223A21940();
  sub_223A21290();
  sub_223A21290();
  sub_223A21290();
  MEMORY[0x223DF0A30](v7);
  return sub_223A21970();
}

unint64_t sub_2239F67A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_223A21680();

  return sub_2239F6D3C(a1, v5);
}

uint64_t sub_2239F683C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AACPVersionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2239F68C8()
{
  sub_2239F6984();
  if (v0 <= 0x3F)
  {
    sub_2239F69D4();
    if (v1 <= 0x3F)
    {
      sub_2239F6A2C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2239F6984()
{
  if (!qword_281333768)
  {
    v0 = sub_223A215D0();
    if (!v1)
    {
      atomic_store(v0, &qword_281333768);
    }
  }
}

void sub_2239F69D4()
{
  if (!qword_27D0A49D8)
  {
    sub_223A203F0();
    v0 = sub_223A215D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0A49D8);
    }
  }
}

void sub_2239F6A2C()
{
  if (!qword_27D0A49E0)
  {
    sub_2239E7EF4(255, &qword_2813326F8, 0x277CCABB0);
    v0 = sub_223A215D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0A49E0);
    }
  }
}

uint64_t sub_2239F6A94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2239F6AF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2239F6B94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_2239F6BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2239F6C64()
{
  result = qword_27D0A49E8;
  if (!qword_27D0A49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A49E8);
  }

  return result;
}

unint64_t sub_2239F6CB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_223A20850();
  sub_2239F8B6C(&qword_27D0A4A20);
  v5 = sub_223A21190();

  return sub_2239F6E04(a1, v5);
}

unint64_t sub_2239F6D3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2239F8BB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DF0770](v9, a1);
      sub_2239F67E8(v9);
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

unint64_t sub_2239F6E04(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_223A20850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
      sub_2239F8B6C(&qword_27D0A4A28);
      v16 = sub_223A211E0();
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

uint64_t sub_2239F6FB0(double a1)
{
  result = sub_223A21430();
  v4 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_223A21460();
  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = v5;
  if (!v5)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v7 = a1;
  if (a1 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_35;
  }

  v8 = v4;
  if (!v4)
  {
    goto LABEL_31;
  }

  v9 = v7 % v6 / v8;
  v10 = 7;
  if (v9 < 4)
  {
    v10 = 0;
  }

  v11 = v10 - v9;
  v12 = v11 * v8;
  if ((v11 * v8) >> 64 != (v11 * v8) >> 63)
  {
    goto LABEL_32;
  }

  v13 = __OFADD__(v7, v12);
  v14 = v7 + v12;
  if (!v13)
  {
    if (v7 == 0x8000000000000000 && v8 == -1)
    {
      goto LABEL_36;
    }

    v15 = v7 % v8;
    v13 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v13)
    {
      return v16 & ~(v16 >> 63);
    }

    goto LABEL_34;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

double sub_2239F7144@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v87 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A18, &qword_223A22E20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for AACPVersionInfo();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [a1 accessoryInfo];
  if (!v19)
  {

    goto LABEL_5;
  }

  v88 = a1;
  v20 = v19;
  v21 = sub_223A21110();

  AACPVersionInfo.init(with:)(v22, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_2239F683C(v13, v18);
    v23 = v88;
    v85 = [v88 productId];
    if (v18[3])
    {
      v24 = v18[2];
      v83 = v18[3];
      v84 = v24;
    }

    else
    {
      v83 = 0xE000000000000000;
      v84 = 0;
    }

    sub_223A21410();
    v26 = v25;
    CaseInfo.init(with:)(v21);
    v27 = *(&v103 + 1);
    if (*(&v103 + 1) >= 2uLL)
    {
      v82 = v103;
      v28 = v18[21];
      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_2239F8A8C(v103, *(&v103 + 1));
      v82 = 0;
      v27 = 0xE000000000000000;
      v28 = v18[21];
      if (v28)
      {
LABEL_11:
        v80 = v18[20];
        v86 = v28;
        goto LABEL_14;
      }
    }

    v80 = 0;
    v86 = 0xE000000000000000;
LABEL_14:
    v81 = v27;
    v29 = *(v18 + v14[17]);

    if (v29)
    {
      [v29 doubleValue];
    }

    else
    {
      v30 = 0.0;
    }

    v79 = sub_2239F6FB0(v30);
    sub_2239F8AA0(v18 + v14[15], v9);
    v31 = sub_223A203F0();
    v32 = *(v31 - 8);
    v73 = *(v32 + 48);
    if (v73(v9, 1, v31) == 1)
    {
      sub_2239CDCEC(v9, &qword_27D0A49C0, &qword_223A22C78);
      v77 = 0xE000000000000000;
      v78 = 0;
      v33 = v18[9];
      if (v33)
      {
LABEL_19:
        v34 = v18[8];
        v75 = v33;
        v76 = v34;
        goto LABEL_22;
      }
    }

    else
    {
      v35 = MEMORY[0x223DEF4C0]();
      v77 = v36;
      v78 = v35;
      (*(v32 + 8))(v9, v31);
      v33 = v18[9];
      if (v33)
      {
        goto LABEL_19;
      }
    }

    v75 = 0xE000000000000000;
    v76 = 0;
LABEL_22:
    v37 = *(v18 + v14[18]);

    if (v37)
    {
      [v37 doubleValue];
    }

    else
    {
      v38 = 0.0;
    }

    v74 = sub_2239F6FB0(v38);
    v39 = v87;
    sub_2239F8AA0(v18 + v14[16], v87);
    if (v73(v39, 1, v31) == 1)
    {
      sub_2239CDCEC(v39, &qword_27D0A49C0, &qword_223A22C78);
      v72 = 0xE000000000000000;
      v73 = 0;
      v40 = v18[11];
      if (v40)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v43 = MEMORY[0x223DEF4C0]();
      v72 = v44;
      v73 = v43;
      (*(v32 + 8))(v39, v31);
      v40 = v18[11];
      if (v40)
      {
LABEL_27:
        v87 = v18[10];
        v71 = v40;
        v41 = v18[17];
        if (v41)
        {
LABEL_28:
          v42 = v18[16];
          v69 = v41;
          v70 = v42;
          goto LABEL_32;
        }

LABEL_31:
        v69 = 0xE000000000000000;
        v70 = 0;
LABEL_32:

        v66 = [v23 isAppleAudioDevice];
        v68 = [v23 supportsHS];
        v67 = [v23 cloudPaired];
        v65 = [v23 magicPaired];
        v64 = [v23 isTemporaryPaired];
        v63 = [v23 listeningMode];
        v62 = [v23 smartRouteMode];
        v61 = [v23 smartRouteSupport];
        v45 = [v23 spatialAudioMode];
        v46 = [v23 spatialAudioAllowed];
        v47 = [v23 spatialAudioActive];
        if (v18[19])
        {
          v48 = v18[18];
          v49 = 0xEB00000000746E65;
          v50 = v18[19];
          if (sub_223A21310())
          {
            v51 = 0x6D706F6C65766544;
            v23 = v88;
LABEL_38:

            sub_2239F8B10(v18);
            LOBYTE(v89) = v66;
            *(&v89 + 1) = v80;
            *&v90 = v86;
            *(&v90 + 1) = v78;
            *&v91 = v77;
            *(&v91 + 1) = v76;
            *&v92 = v75;
            *(&v92 + 1) = v79;
            *&v93 = v80;
            *(&v93 + 1) = v86;
            *&v94 = v73;
            *(&v94 + 1) = v72;
            *&v95 = v87;
            *(&v95 + 1) = v71;
            *&v96 = v74;
            *(&v96 + 1) = v26;
            LODWORD(v97) = v85;
            *(&v97 + 1) = v84;
            *&v98 = v83;
            *(&v98 + 1) = v82;
            *&v99 = v81;
            *(&v99 + 1) = v70;
            *&v100 = v69;
            BYTE8(v100) = v68;
            BYTE9(v100) = v67;
            BYTE10(v100) = v65;
            BYTE11(v100) = v64;
            HIDWORD(v100) = v63;
            LOBYTE(v101) = v62;
            BYTE1(v101) = v61;
            BYTE2(v101) = v45;
            BYTE3(v101) = v46;
            BYTE4(v101) = v47;
            *(&v101 + 1) = v51;
            v102 = v49;
            nullsub_1(&v89);
            v113 = v99;
            v114 = v100;
            v115 = v101;
            v116 = v102;
            v109 = v95;
            v110 = v96;
            v111 = v97;
            v112 = v98;
            v105 = v91;
            v106 = v92;
            v107 = v93;
            v108 = v94;
            v103 = v89;
            v104 = v90;
            goto LABEL_39;
          }

          v52 = sub_223A21310();
          v23 = v88;
          if (v52)
          {
            v51 = 0x6D706F6C65766544;
            goto LABEL_38;
          }
        }

        v49 = 0xEA00000000006E6FLL;
        v51 = 0x69746375646F7250;
        goto LABEL_38;
      }
    }

    v87 = 0;
    v71 = 0xE000000000000000;
    v41 = v18[17];
    if (v41)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  sub_2239CDCEC(v13, &qword_27D0A4A18, &qword_223A22E20);
LABEL_5:
  sub_2239F8A64(&v103);
LABEL_39:
  v53 = v114;
  *(a2 + 160) = v113;
  *(a2 + 176) = v53;
  *(a2 + 192) = v115;
  *(a2 + 208) = v116;
  v54 = v110;
  *(a2 + 96) = v109;
  *(a2 + 112) = v54;
  v55 = v112;
  *(a2 + 128) = v111;
  *(a2 + 144) = v55;
  v56 = v106;
  *(a2 + 32) = v105;
  *(a2 + 48) = v56;
  v57 = v108;
  *(a2 + 64) = v107;
  *(a2 + 80) = v57;
  result = *&v103;
  v59 = v104;
  *a2 = v103;
  *(a2 + 16) = v59;
  return result;
}

uint64_t sub_2239F7948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000223A25000 == a2;
  if (v3 || (sub_223A218F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000223A250C0 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223A250E0 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223A25100 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000044 || (sub_223A218F0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (sub_223A218F0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7372655665736163 && a2 == 0xEB000000006E6F69 || (sub_223A218F0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572617764726168 && a2 == 0xEF6E6F6973726556 || (sub_223A218F0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF69726953796548 || (sub_223A218F0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5064756F6C437369 && a2 == 0xED00006465726961 || (sub_223A218F0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x50636967614D7369 && a2 == 0xED00006465726961 || (sub_223A218F0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000223A25020 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E696E657473696CLL && a2 == 0xED000065646F4D67 || (sub_223A218F0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F527472616D73 && a2 == 0xEE0065646F4D6574 || (sub_223A218F0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223A25120 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223A25060 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000223A25140 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000223A25160 == a2 || (sub_223A218F0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x676E69737566 && a2 == 0xE600000000000000)
  {

    return 18;
  }

  else
  {
    v6 = sub_223A218F0();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_2239F7F50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49F0, &qword_223A22E00);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v8 = &v39 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F88D4();
  sub_223A21990();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v73 = a2;
  v74 = a1;
  v10 = v5;
  LOBYTE(v90) = 0;
  v11 = sub_223A21800();
  LOBYTE(v76) = 1;
  sub_2239F8928();
  sub_223A21830();
  v67 = v11;
  v68 = v92;
  v69 = v90;
  v70 = v93;
  v12 = v94;
  v71 = v95;
  v72 = v91;
  v13 = v96;
  LOBYTE(v76) = 2;
  sub_223A21830();
  v57 = v13;
  v58 = v12;
  v59 = v90;
  v14 = v92;
  v63 = v93;
  v64 = v91;
  v15 = v94;
  v65 = v95;
  v66 = 0;
  v16 = v96;
  LOBYTE(v90) = 3;
  sub_223A21810();
  v54 = v16;
  v55 = v15;
  v56 = v14;
  v18 = v17;
  LOBYTE(v90) = 4;
  LODWORD(v16) = sub_223A21850();
  LOBYTE(v90) = 5;
  v19 = sub_223A217F0();
  v62 = v20;
  LOBYTE(v90) = 6;
  v53 = sub_223A217F0();
  v61 = v21;
  LOBYTE(v90) = 7;
  v52 = sub_223A217F0();
  v60 = v22;
  LOBYTE(v90) = 8;
  v51 = sub_223A21800();
  LODWORD(v15) = v16;
  v23 = v59;
  LOBYTE(v90) = 9;
  v50 = sub_223A21800();
  LOBYTE(v90) = 10;
  v49 = sub_223A21800();
  LOBYTE(v90) = 11;
  v48 = sub_223A21800();
  LOBYTE(v90) = 12;
  v24 = sub_223A21850();
  LOBYTE(v90) = 13;
  v47 = sub_223A21840();
  LOBYTE(v90) = 14;
  v46 = sub_223A21800();
  LOBYTE(v90) = 15;
  v45 = sub_223A21840();
  LOBYTE(v90) = 16;
  v44 = sub_223A21800();
  LOBYTE(v90) = 17;
  v43 = sub_223A21800();
  v127 = 18;
  v25 = sub_223A217F0();
  v41 = v26;
  v42 = v25;
  v27 = v67 & 1;
  v40 = v67 & 1;
  v67 = v51 & 1;
  LODWORD(v66) = v50 & 1;
  v50 = v48 & 1;
  v51 = v49 & 1;
  v48 = v44 & 1;
  v49 = v46 & 1;
  v46 = v43 & 1;
  (*(v10 + 8))(v8, v75);
  BYTE7(v88) = v129;
  *(&v88 + 5) = v128;
  LOBYTE(v76) = v27;
  v28 = v68;
  v29 = v69;
  *(&v76 + 1) = v69;
  *&v77 = v72;
  v30 = v70;
  *(&v77 + 1) = v68;
  *&v78 = v70;
  *(&v78 + 1) = v58;
  *&v79 = v71;
  *(&v79 + 1) = v57;
  *&v80 = v23;
  *(&v80 + 1) = v64;
  *&v81 = v56;
  *(&v81 + 1) = v63;
  *&v82 = v55;
  *(&v82 + 1) = v65;
  *&v83 = v54;
  *(&v83 + 1) = v18;
  LODWORD(v84) = v15;
  *(&v84 + 1) = v19;
  *&v85 = v62;
  *(&v85 + 1) = v53;
  *&v86 = v61;
  *(&v86 + 1) = v52;
  *&v87 = v60;
  BYTE8(v87) = v67;
  BYTE9(v87) = v66;
  BYTE10(v87) = v51;
  BYTE11(v87) = v50;
  HIDWORD(v87) = v24;
  LOBYTE(v88) = v47;
  BYTE1(v88) = v49;
  BYTE2(v88) = v45;
  BYTE3(v88) = v48;
  BYTE4(v88) = v46;
  *(&v88 + 1) = v42;
  v89 = v41;
  sub_2239EF1D4(&v76, &v90);
  __swift_destroy_boxed_opaque_existential_0(v74);
  LOBYTE(v90) = v40;
  v91 = v29;
  v92 = v72;
  v93 = v28;
  v94 = v30;
  *(&v90 + 1) = v130[0];
  HIDWORD(v90) = *(v130 + 3);
  v95 = v58;
  v96 = v71;
  v97 = v57;
  v98 = v23;
  v99 = v64;
  v100 = v56;
  v101 = v63;
  v102 = v55;
  v103 = v65;
  v104 = v54;
  v105 = v18;
  v106 = v15;
  v107 = v19;
  v108 = v62;
  v109 = v53;
  v110 = v61;
  v111 = v52;
  v112 = v60;
  v113 = v67;
  v114 = v66;
  v115 = v51;
  v116 = v50;
  v117 = v24;
  v118 = v47;
  v119 = v49;
  v120 = v45;
  v121 = v48;
  v122 = v46;
  v124 = v129;
  v123 = v128;
  v125 = v42;
  v126 = v41;
  result = sub_2239EF230(&v90);
  v32 = v87;
  v33 = v73;
  *(v73 + 160) = v86;
  *(v33 + 176) = v32;
  *(v33 + 192) = v88;
  *(v33 + 208) = v89;
  v34 = v83;
  *(v33 + 96) = v82;
  *(v33 + 112) = v34;
  v35 = v85;
  *(v33 + 128) = v84;
  *(v33 + 144) = v35;
  v36 = v79;
  *(v33 + 32) = v78;
  *(v33 + 48) = v36;
  v37 = v81;
  *(v33 + 64) = v80;
  *(v33 + 80) = v37;
  v38 = v77;
  *v33 = v76;
  *(v33 + 16) = v38;
  return result;
}

unint64_t sub_2239F88D4()
{
  result = qword_27D0A49F8;
  if (!qword_27D0A49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A49F8);
  }

  return result;
}

unint64_t sub_2239F8928()
{
  result = qword_27D0A4A00;
  if (!qword_27D0A4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A00);
  }

  return result;
}

unint64_t sub_2239F89B4()
{
  result = qword_27D0A4A10;
  if (!qword_27D0A4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A10);
  }

  return result;
}

double sub_2239F8A64(uint64_t a1)
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

uint64_t sub_2239F8A8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2239F8AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239F8B10(uint64_t a1)
{
  v2 = type metadata accessor for AACPVersionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2239F8B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_223A20850();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2239F8D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2239F8DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2239F8E2C()
{
  result = qword_27D0A4A30;
  if (!qword_27D0A4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A30);
  }

  return result;
}

unint64_t sub_2239F8E84()
{
  result = qword_27D0A4A38;
  if (!qword_27D0A4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A38);
  }

  return result;
}

unint64_t sub_2239F8EDC()
{
  result = qword_27D0A4A40;
  if (!qword_27D0A4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A40);
  }

  return result;
}

unint64_t sub_2239F8F34()
{
  result = qword_27D0A4A48;
  if (!qword_27D0A4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A48);
  }

  return result;
}

uint64_t sub_2239F8F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556;
  if (v4 || (sub_223A218F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1145656661 && a2 == 0xE400000000000000 || (sub_223A218F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_223A218F0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223A25180 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_223A218F0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2239F9100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A50, &qword_223A23038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2239F93E0();
  sub_223A21990();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = 0;
  v11 = sub_223A217F0();
  v27 = v12;
  v30 = 1;
  v13 = sub_223A217F0();
  v26 = v14;
  v24 = v13;
  v29 = 2;
  v23 = sub_223A217F0();
  v25 = v15;
  v28 = 3;
  v16 = sub_223A21820();
  (*(v6 + 8))(v9, v5);
  v17 = v27;

  v18 = v26;

  v19 = v25;

  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v11;
  a2[1] = v17;
  v21 = v23;
  a2[2] = v24;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v19;
  a2[6] = v16;
  return result;
}

unint64_t sub_2239F93E0()
{
  result = qword_27D0A4A58;
  if (!qword_27D0A4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BudInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BudInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2239F9588()
{
  result = qword_27D0A4A68;
  if (!qword_27D0A4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A68);
  }

  return result;
}

unint64_t sub_2239F95E0()
{
  result = qword_27D0A4A70;
  if (!qword_27D0A4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A70);
  }

  return result;
}

unint64_t sub_2239F9638()
{
  result = qword_27D0A4A78;
  if (!qword_27D0A4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4A78);
  }

  return result;
}

uint64_t AirPodWorker.__allocating_init(with:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v7 = *MEMORY[0x277CEF9C0];
  v8 = sub_223A20BC0();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields) = 0;
  sub_223A20FA0();
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_halIOCategory;
  *(v5 + v9) = sub_223A20E70();
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) = 0;
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_hasSentAirPodInformation) = 0;
  sub_2239CB264(a1, v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
  return v5;
}

uint64_t sub_2239F9798()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t sub_2239F97E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v46 = &v40 - v2;
  v3 = sub_223A20D20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0A47D8 != -1)
  {
    goto LABEL_28;
  }

  while (qword_27D0A4E18)
  {
    v7 = *(qword_27D0A4E18 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A88, &qword_223A23278);
    sub_223A21550();
    v9 = *&v51[0];
    if (!*(*&v51[0] + 16))
    {

      return 0;
    }

    v44 = v3;
    v3 = 0;
    v10 = *&v51[0] + 56;
    v11 = 1 << *(*&v51[0] + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(*&v51[0] + 56);
    v47 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
    v45 = (v49 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session);
    v14 = (v11 + 63) >> 6;
    v43 = (v4 + 8);
    *&v8 = 134217984;
    v42 = v8;
    while (v13)
    {
LABEL_16:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(v9 + 48) + 216 * (v17 | (v3 << 6));
      v19 = *(v18 + 16);
      v51[0] = *v18;
      v51[1] = v19;
      v20 = *(v18 + 80);
      v22 = *(v18 + 32);
      v21 = *(v18 + 48);
      v51[4] = *(v18 + 64);
      v51[5] = v20;
      v51[2] = v22;
      v51[3] = v21;
      v23 = *(v18 + 96);
      v24 = *(v18 + 112);
      v25 = *(v18 + 144);
      v51[8] = *(v18 + 128);
      v51[9] = v25;
      v51[6] = v23;
      v51[7] = v24;
      v26 = *(v18 + 160);
      v27 = *(v18 + 176);
      v28 = *(v18 + 192);
      v52 = *(v18 + 208);
      v51[11] = v27;
      v51[12] = v28;
      v51[10] = v26;
      if (v51[0])
      {
        sub_2239EF1D4(v51, &v50);
        v29 = sub_223A20FB0();
        v30 = sub_223A214D0();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2239C7000, v29, v30, "sendAirPodInformation() found connected apple device", v31, 2u);
          MEMORY[0x223DF1300](v31, -1, -1);
        }

        sub_2239F5358();
        sub_2239EF230(v51);
        v32 = sub_223A21170();

        if (v32)
        {
          v33 = sub_223A20CA0();
          (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
          v34 = v9;
          sub_223A20CB0();
          v4 = v45[3];
          __swift_project_boxed_opaque_existential_1(v45, v4);
          if ((sub_223A20980() & 1) == 0)
          {

            v35 = sub_223A20FB0();
            v36 = sub_223A214E0();
            if (os_log_type_enabled(v35, v36))
            {
              v4 = swift_slowAlloc();
              *v4 = v42;
              v37 = v45[3];
              v40 = v45[4];
              __swift_project_boxed_opaque_existential_1(v45, v37);
              v41 = v36;
              v9 = v34;
              *(v4 + 4) = sub_223A20950();

              _os_log_impl(&dword_2239C7000, v35, v41, "AirPodInformation message dropped. { reporterID=%lld }", v4, 0xCu);
              MEMORY[0x223DF1300](v4, -1, -1);
            }

            else
            {
            }
          }

          (*v43)(v48, v44);
        }

        else
        {
          v38 = sub_223A20FB0();
          v4 = sub_223A214E0();
          if (os_log_type_enabled(v38, v4))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_2239C7000, v38, v4, "AirPodInformation message cannot be converted to simple type. Aborting send.", v39, 2u);
            MEMORY[0x223DF1300](v39, -1, -1);
          }
        }
      }
    }

    while (1)
    {
      v16 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return 1;
      }

      v13 = *(v10 + 8 * v16);
      ++v3;
      if (v13)
      {
        v3 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  return 0;
}

uint64_t sub_2239F9D78(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2239F9E08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2239F9E94(uint64_t a1, uint64_t *a2)
{
  v4 = sub_223A20BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_2239F9FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2239FA034(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2239FA124(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2239FA18C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2239FA1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AirPodWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_2239FA34C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_2239FA394()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id BMDeviceAdaptiveVolume.init(nonDrcPayload:drcPayload:sessionInfo:serialNumber:drcAVClientTimestamp:routedDrcGain:)(uint64_t a1, double a2)
{
  v98 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v4 = *(a1 + 1);
  v61 = sub_223A21930();
  v5 = *(a1 + 2);
  v60 = sub_223A21930();
  v6 = *(a1 + 3);
  v59 = sub_223A21930();
  v7 = *(a1 + 4);
  v58 = sub_223A21930();
  v8 = *(a1 + 5);
  v57 = sub_223A21930();
  v9 = *(a1 + 6);
  v56 = sub_223A21930();
  v10 = *(a1 + 7);
  v55 = sub_223A21930();
  v11 = *(a1 + 8);
  v54 = sub_223A21930();
  v53 = sub_223A21930();
  v52 = sub_223A21930();
  v97 = sub_223A21930();
  v96 = sub_223A21930();
  v12 = *(a1 + 9);
  v95 = sub_223A21930();
  v13 = *(a1 + 11);
  v94 = sub_223A21930();
  v14 = *(a1 + 13);
  v93 = sub_223A21930();
  v15 = *(a1 + 16);
  v92 = sub_223A21930();
  v16 = *(a1 + 17);
  v91 = sub_223A21930();
  v17 = *(a1 + 18);
  v90 = sub_223A21930();
  v18 = *(a1 + 19);
  v89 = sub_223A21930();
  v19 = *(a1 + 20);
  v88 = sub_223A21930();
  v87 = sub_223A21930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
  sub_2239D18A4();
  sub_223A211D0();

  v86 = sub_223A211F0();

  if (sub_223A208C0())
  {
    v78 = sub_223A211F0();
  }

  else
  {
    v78 = 0;
  }

  v20 = *(a1 + 14);
  v85 = sub_223A21930();
  v21 = *(a1 + 15);
  v84 = sub_223A21930();
  v22 = *(a1 + 10);
  v83 = sub_223A21930();
  v82 = sub_223A21930();
  v74 = sub_223A21930();
  v73 = sub_223A21930();
  v81 = sub_223A21930();
  v80 = sub_223A21930();
  v79 = sub_223A21930();
  v70 = sub_223A21930();
  v23 = sub_2239FAEF8();
  sub_2239FAF90(v23);

  sub_2239DC698();
  v77 = sub_223A21370();

  v24 = *(a1 + 53);
  v76 = sub_223A21930();
  v25 = *(a1 + 54);
  v75 = sub_223A21930();
  v26 = *(a1 + 55);
  v72 = sub_223A21930();
  v71 = sub_223A21930();
  v69 = sub_223A21930();
  v27 = *(a1 + 56);
  v68 = sub_223A21930();
  v67 = sub_223A21930();
  v66 = sub_223A21930();
  v28 = *(a1 + 57);
  v65 = sub_223A21930();
  v29 = sub_2239FAE64();
  sub_2239FAF90(v29);

  v30 = sub_223A21370();

  v31 = *(a1 + 62);
  v32 = sub_223A21930();
  v33 = *(a1 + 63);
  v34 = sub_223A21930();
  v35 = *(a1 + 64);
  v64 = sub_223A21930();
  v36 = *(a1 + 65);
  v63 = sub_223A21930();
  v37 = *(a1 + 66);
  v62 = sub_223A21930();
  v38 = *(a1 + 67);
  v39 = sub_223A21930();
  v40 = *(a1 + 68);
  v41 = sub_223A21980();
  v42 = v41;
  if (a2 == 0.0)
  {
    v43 = v98;
    v44 = v43;
    v45 = v43;
  }

  else
  {
    v46 = v41;
    v47 = sub_223A21930();
    v44 = sub_223A21930();
    v42 = v46;
    v45 = v47;
    v43 = sub_223A21930();
  }

  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v50 = sub_223A213E0();
  v51 = [v48 initWithControllerVersion:v61 refMicdBA:v60 refMicdBC:v59 drumdBA:v58 drumdBK:0 drumdBAPredicted:v57 downlinkdBA:v56 currentVolumePrct:v55 lastUserVolChangeType:v54 headphoneMode:v53 streamType:v52 windSpeechAggressorFlag:v97 volumeChangeFlag:v96 speechPresenceProbability:v95 personalizationParamSnr:0 personalizationParamMistakes:0 lastEMediadBA:0 lastVolMediaPrct:v94 lastETelephonydBA:0 lastVolTelephonyPrct:0 lastESiridBA:0 lastVolSiriPrct:v93 smoothEae:v92 desiredDeltaE:0 predVolMediaPrct:v91 predVolTelephonyPrct:v90 predVolSiriPrct:v89 onStartPredictionFlag:v88 guardrailsAvoidFlag:0 minMaxCutFlag:0 manualVolumeChangeFlag:v87 bigWindowSize:0 smallWindowSize:0 activeAppName:v86 activeAirpodsSerialNumber:v78 anchorVol:v85 anchorEnv:v84 personalizationCoeff:v83 unsignedPredVolMediaPrct:v82 unsignedPredVolTelephonyPrct:v74 unsignedPredVolSiriPrct:v73 singleBudFlag:v81 cdEngagementFlag:v80 activeStreamFlag:v79 pvFeatureEnableFlag:v70 envSpectralData32B:v77 windStrength:v76 windProb:v75 mediaType:v72 sourceActivity:v71 budActivity:v69 location:v68 locationType:v67 focusMode:v66 streamingAppBundleId:v65 noiseType4B:v30 instdBA:v32 instdBC:v34 nonCAListeningMode:v64 fit:v63 fixedAutoAncGain:v62 adjustedAutoAncGain:? timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];

  return v51;
}

uint64_t sub_2239FAE64()
{
  v5 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  *(v1 + 16) = 4;
  *(v1 + 24) = 2 * v2 - 64;
  *(v1 + 32) = *(v0 + 58);
  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2239FAEF8()
{
  v6 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v1 = swift_allocObject();
  v2 = _swift_stdlib_malloc_size(v1);
  *(v1 + 16) = 32;
  *(v1 + 24) = 2 * v2 - 64;
  v3 = *(v0 + 37);
  *(v1 + 32) = *(v0 + 21);
  *(v1 + 48) = v3;
  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2239FAF90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_223A21750();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_223A21930();
      sub_223A21730();
      v6 = *(v7 + 16);
      sub_223A21760();
      sub_223A21770();
      sub_223A21740();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t CoreAnalyticsWorker.__allocating_init(with:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_223A20290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v13 = *MEMORY[0x277CEF9B8];
  v14 = sub_223A20BC0();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  v15 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v5 + 8))(v8, v4);
  sub_2239CB264(a1, v11 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  return v11;
}

uint64_t CoreAnalyticsWorker.init(with:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_223A20290();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v10 = *MEMORY[0x277CEF9B8];
  v11 = sub_223A20BC0();
  (*(*(v11 - 8) + 104))(v2 + v9, v10, v11);
  v12 = [objc_opt_self() alphanumericCharacterSet];
  sub_223A20270();

  sub_223A20280();
  (*(v5 + 8))(v8, v4);
  sub_2239CB264(a1, v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session);
  return v2;
}

Swift::Bool __swiftcall CoreAnalyticsWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t CoreAnalyticsWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CoreAnalyticsWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t CoreAnalyticsWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v4 = sub_223A20290();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_2239FB61C()
{
  result = qword_2813336E0;
  if (!qword_2813336E0)
  {
    type metadata accessor for CoreAnalyticsWorker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813336E0);
  }

  return result;
}

uint64_t type metadata accessor for CoreAnalyticsWorker()
{
  result = qword_281334498;
  if (!qword_281334498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239FB6C8()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20290();
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

void sub_2239FB7D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AB0, &qword_223A233B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AB8, &qword_223A233B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = v0[1];
  v46 = *v0;
  v47 = v10;
  v44 = 59;
  v45 = 0xE100000000000000;
  sub_2239D1804();
  v11 = sub_223A21600();
  v13 = v11;
  v43 = *(v11 + 16);
  if (!v43)
  {
LABEL_21:

    return;
  }

  v37 = v9;
  v42 = v5;
  v14 = 0;
  v40 = (v6 + 48);
  v35 = (v6 + 8);
  v36 = (v6 + 32);
  v15 = (v11 + 40);
  v16 = 0.0;
  *&v12 = 136380675;
  v34 = v12;
  v38 = v0;
  v39 = v4;
  v41 = v11;
  while (v14 < *(v13 + 16))
  {
    v22 = *(v15 - 1);
    v21 = *v15;
    v23 = HIBYTE(*v15) & 0xF;
    if ((*v15 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_6;
    }

    v24 = type metadata accessor for CPUVoltageCalculator();
    v25 = *(v24 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
    v26 = v48;
    sub_223A20590();
    v48 = v26;
    if (v26)
    {

      return;
    }

    v27 = v42;
    if ((*v40)(v4, 1, v42) == 1)
    {
      sub_2239CDCEC(v4, &qword_27D0A4AB0, &qword_223A233B0);
LABEL_18:
      v30 = *(v24 + 20);

      v31 = sub_223A20FB0();
      v32 = sub_223A214E0();

      if (os_log_type_enabled(v31, v32))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46 = v18;
        *v17 = v34;
        v19 = sub_2239E1910(v22, v21, &v46);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2239C7000, v31, v32, "Error extracting voltage data from %{private}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x223DF1300](v18, -1, -1);
        v20 = v17;
        v4 = v39;
        MEMORY[0x223DF1300](v20, -1, -1);
      }

      else
      {
      }

      goto LABEL_5;
    }

    v28 = v37;
    (*v36)(v37, v4, v27);
    swift_getKeyPath();
    sub_223A205A0();

    if ((v46 & 0x100000000) != 0)
    {
      (*v35)(v28, v27);
      v4 = v39;
      goto LABEL_18;
    }

    v29 = v46;
    swift_getKeyPath();
    sub_223A205A0();

    (*v35)(v28, v27);
    if (v47)
    {
      v4 = v39;
      goto LABEL_18;
    }

    v33 = *&v46;

    v16 = v16 + v33 * v29;
    v4 = v39;
LABEL_5:
    v13 = v41;
LABEL_6:
    ++v14;
    v15 += 2;
    if (v43 == v14)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for CPUVoltageCalculator()
{
  result = qword_281333128;
  if (!qword_281333128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239FBC94@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC8, &qword_223A23408);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v118 = &v103 - v3;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD0, &qword_223A23410);
  v138 = *(v126 - 8);
  v4 = *(v138 + 64);
  v5 = MEMORY[0x28223BE20](v126);
  v117 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v127 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD8, &qword_223A23418);
  v9 = *(v8 - 8);
  v136 = v8;
  v137 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v114 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v135 = &v103 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v103 - v16;
  v112 = sub_223A204B0();
  v128 = *(v112 - 8);
  v18 = *(v128 + 64);
  MEMORY[0x28223BE20](v112);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v129 = *(v110 - 8);
  v21 = *(v129 + 8);
  v22 = MEMORY[0x28223BE20](v110);
  v113 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v123 = &v103 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v26 = *(v25 - 8);
  v140 = v25;
  v141 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v122 = &v103 - v31;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF8, &qword_223A23438);
  v119 = *(v115 - 8);
  v32 = *(v119 + 64);
  v33 = MEMORY[0x28223BE20](v115);
  v116 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v125 = &v103 - v36;
  MEMORY[0x28223BE20](v35);
  v132 = &v103 - v37;
  v38 = sub_223A20530();
  v139 = v38;
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v103 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B00, &qword_223A23440);
  v133 = *(v46 - 8);
  v134 = v46;
  v47 = *(v133 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v111 = &v103 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v131 = &v103 - v50;
  v143 = 0x563A656D616ELL;
  v144 = 0xE600000000000000;
  v124 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v145, &v143, MEMORY[0x277D837D0], v124);
  sub_223A204A0();
  sub_223A20550();
  v108 = sub_223A20560();
  v51 = *(v108 - 8);
  v107 = *(v51 + 56);
  v109 = v51 + 56;
  v107(v17, 1, 1, v108);
  sub_223A204A0();
  sub_2239FE308();
  v52 = MEMORY[0x277D83E40];
  v121 = v30;
  v53 = v17;
  v105 = v17;
  v54 = v112;
  sub_223A20520();
  v55 = *(v39 + 8);
  v130 = v39 + 8;
  v55(v43, v38);
  v56 = v55;
  v104 = v55;
  sub_2239CDCEC(v53, &qword_27D0A4AE0, &qword_223A23420);
  (*(v128 + 8))(v20, v54);
  v57 = v113;
  MEMORY[0x223DEF5B0](v30, v52);
  v58 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428);
  v59 = v123;
  v60 = v110;
  MEMORY[0x223DEF550](v57, v110, v58);
  v61 = *(v129 + 1);
  v61(v57, v60);
  v62 = v122;
  sub_223A20480();
  v61(v59, v60);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B08, &qword_223A23448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B10, &qword_223A23450);
  v112 = MEMORY[0x277D85AC0];
  v128 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430);
  v64 = v140;
  v65 = v132;
  v123 = v63;
  sub_223A20510();
  v66 = *(v141 + 8);
  v141 += 8;
  v66(v62, v64);
  v129 = v66;
  v67 = v139;
  v56(v45, v139);
  v68 = v111;
  MEMORY[0x223DEF5A0](v65, v63);
  v106 = MEMORY[0x277D85408];
  v110 = sub_2239FE360(&qword_281333740, &qword_27D0A4B00, &qword_223A23440);
  v69 = v134;
  MEMORY[0x223DEF550](v68, v134, v110);
  v70 = *(v133 + 8);
  v133 += 8;
  v113 = v70;
  (v70)(v68, v69);
  v71 = v105;
  v107(v105, 1, 1, v108);
  sub_223A204A0();
  v72 = v121;
  sub_2239FCFD0(v121);
  v73 = MEMORY[0x277D83E40];
  sub_223A204F0();
  v66(v72, v64);
  v74 = v104;
  v104(v45, v67);
  sub_2239CDCEC(v71, &qword_27D0A4AE0, &qword_223A23420);
  v75 = v114;
  MEMORY[0x223DEF570](v62, v73);
  v109 = sub_2239FE360(&qword_281333758, &qword_27D0A4AD8, &qword_223A23418);
  v76 = v136;
  MEMORY[0x223DEF550](v75, v136, v109);
  v77 = *(v137 + 8);
  v137 += 8;
  v111 = v77;
  (v77)(v75, v76);
  strcpy(v142, ",duty_cycle:");
  BYTE5(v142[1]) = 0;
  HIWORD(v142[1]) = -5120;
  MEMORY[0x223DEF550](&v143, v142, MEMORY[0x277D837D0], v124);
  sub_223A204A0();
  sub_2239FDA7C(v62);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B18, &qword_223A23458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B20, &qword_223A23460);
  v79 = v140;
  v80 = v118;
  sub_223A20510();
  v129(v62, v79);
  v74(v45, v139);
  v81 = v117;
  MEMORY[0x223DEF5A0](v80, v78);
  v114 = sub_2239FE360(&qword_281333748, &qword_27D0A4AD0, &qword_223A23410);
  v82 = v81;
  v83 = v81;
  v84 = v126;
  MEMORY[0x223DEF550](v82, v126, v114);
  v85 = *(v138 + 8);
  v138 += 8;
  v118 = v85;
  (v85)(v83, v84);
  v142[0] = v145[0];
  v142[1] = v145[1];
  sub_223A20480();

  sub_223A204A0();
  v86 = v121;
  sub_223A20500();
  v87 = v45;
  sub_223A204E0();
  v88 = v129;
  v129(v86, v79);
  v89 = v139;
  v74(v45, v139);
  sub_223A204A0();
  sub_223A20500();
  v117 = sub_2239FE360(&qword_281333718, &qword_27D0A4AF8, &qword_223A23438);
  v90 = v115;
  v91 = v140;
  sub_223A204E0();
  v88(v86, v91);
  v74(v45, v89);
  v92 = v143;
  v93 = v144;
  sub_223A204A0();
  v142[0] = v92;
  v142[1] = v93;
  sub_223A20500();

  v94 = v116;
  v95 = v140;
  sub_223A204E0();
  v96 = v95;
  v97 = v129;
  v129(v86, v96);
  v98 = v139;
  v74(v45, v139);
  sub_223A204A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B28, &qword_223A23468);
  v99 = v127;
  v100 = v126;
  sub_223A204E0();
  v74(v87, v98);
  v101 = *(v119 + 8);
  v101(v94, v90);
  v101(v125, v90);
  v101(v132, v90);
  v97(v122, v140);
  (v118)(v99, v100);
  (v111)(v135, v136);
  return (v113)(v131, v134);
}

uint64_t sub_2239FCCD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x223DF0350](*a1, a1[1], a1[2], a1[3]);
  v5 = HIBYTE(v4) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v28 = 0;
    LOBYTE(v27) = 1;
LABEL_66:
    *a2 = v28;
    *(a2 + 4) = v27 & 1;
    return result;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v9 = sub_2239FE3A8(result, v4, 10);

    v27 = (v9 >> 32) & 1;
LABEL_63:
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v9;
    }

    goto LABEL_66;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_223A21720();
      v6 = v29;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        if (--v6)
        {
          LODWORD(v9) = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v18 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v9) = v18 + v17;
              if (__CFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v23 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v23 + v22;
            if (__CFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v9) = 0;
      LOBYTE(v6) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      if (--v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v12 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v12 - v11;
            if (v12 < v11)
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
LABEL_62:
        v31 = v6;
        LOBYTE(v27) = v6;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v30[0] = result;
  v30[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v24 = v30;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v9) = v26 + v25;
          if (__CFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v9) = 0;
        v13 = v30 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v15 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v9) = v15 - v14;
          if (v15 < v14)
          {
            break;
          }

          ++v13;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    v6 = v5 - 1;
    if (v5 != 1)
    {
      LODWORD(v9) = 0;
      v19 = v30 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v21 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v9) = v21 + v20;
        if (__CFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2239FCFD0@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v96 = *(v88 - 8);
  v1 = *(v96 + 64);
  v2 = MEMORY[0x28223BE20](v88);
  v80 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v89 = &v68 - v4;
  v5 = sub_223A204B0();
  v90 = *(v5 - 8);
  v6 = v90[8];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v91 = *(v86 - 8);
  v12 = *(v91 + 64);
  v13 = MEMORY[0x28223BE20](v86);
  v81 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v79 = &v68 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v95 = &v68 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v68 - v22;
  v23 = sub_223A20530();
  v97 = *(v23 - 8);
  v98 = v23;
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AD8, &qword_223A23418);
  v92 = *(v31 - 8);
  v93 = v31;
  v32 = *(v92 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v94 = &v68 - v36;
  v101 = 44;
  v102 = 0xE100000000000000;
  v84 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v103, &v101, MEMORY[0x277D837D0], v84);
  v74 = sub_223A20560();
  v37 = *(v74 - 8);
  v73 = *(v37 + 56);
  v75 = v37 + 56;
  v73(v30, 1, 1, v74);
  sub_223A204A0();
  sub_223A20540();
  v38 = sub_2239FE308();
  v69 = v5;
  v70 = v38;
  MEMORY[0x223DEF550](v9, v5, v38);
  v39 = (v90 + 1);
  v40 = v90[1];
  v40(v9, v5);
  v72 = v40;
  v90 = v39;
  v87 = v21;
  sub_223A20480();
  v40(v11, v5);
  v76 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430);
  v41 = v85;
  v42 = v86;
  sub_223A204F0();
  v43 = *(v91 + 8);
  v91 += 8;
  v77 = v43;
  v43(v21, v42);
  v44 = v98;
  v46 = v97 + 8;
  v45 = *(v97 + 8);
  v45(v26, v98);
  v83 = v45;
  v97 = v46;
  sub_2239CDCEC(v30, &qword_27D0A4AE0, &qword_223A23420);
  v47 = v41;
  v48 = MEMORY[0x277D83E40];
  MEMORY[0x223DEF570](v41, MEMORY[0x277D83E40]);
  v71 = sub_2239FE360(&qword_281333758, &qword_27D0A4AD8, &qword_223A23418);
  v49 = v93;
  MEMORY[0x223DEF550](v35, v93, v71);
  v50 = *(v92 + 8);
  v92 += 8;
  v78 = v50;
  v50(v35, v49);
  v99 = 58;
  v100 = 0xE100000000000000;
  MEMORY[0x223DEF550](&v101, &v99, MEMORY[0x277D837D0], v84);
  sub_223A20550();
  v73(v30, 1, 1, v74);
  sub_223A204A0();
  v51 = v48;
  v52 = v69;
  sub_223A20520();
  v45(v26, v44);
  sub_2239CDCEC(v30, &qword_27D0A4AE0, &qword_223A23420);
  v72(v11, v52);
  v53 = v80;
  MEMORY[0x223DEF5B0](v47, v51);
  v75 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428);
  v54 = v88;
  MEMORY[0x223DEF550](v53, v88, v75);
  v55 = *(v96 + 8);
  v96 += 8;
  v90 = v55;
  (v55)(v53, v54);
  v99 = v103[0];
  v100 = v103[1];
  sub_223A20480();

  sub_223A204A0();
  v56 = v95;
  v57 = v86;
  sub_223A20500();
  v58 = v79;
  sub_223A20500();
  sub_223A204E0();
  v59 = v77;
  v77(v58, v57);
  v59(v56, v57);
  v83(v26, v98);
  v61 = v101;
  v60 = v102;
  sub_223A204A0();
  v99 = v61;
  v100 = v60;
  sub_223A20500();
  v62 = v81;
  sub_223A20500();

  v63 = v57;
  sub_223A204E0();
  v59(v62, v57);
  v59(v58, v57);
  v64 = v83;
  v83(v26, v98);
  sub_223A204A0();
  sub_223A20500();
  v66 = v88;
  v65 = v89;
  sub_223A20500();
  sub_223A204E0();
  v59(v62, v63);
  v59(v58, v63);
  v64(v26, v98);
  v59(v95, v63);
  v59(v87, v63);
  v59(v85, v63);
  (v90)(v65, v66);
  return v78(v94, v93);
}

uint64_t sub_2239FDA7C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v71 = *(v68 - 8);
  v1 = *(v71 + 64);
  v2 = MEMORY[0x28223BE20](v68);
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v69 = &v58 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v76 = &v58 - v7;
  MEMORY[0x28223BE20](v6);
  v77 = &v58 - v8;
  v82 = sub_223A20530();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v82);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE0, &qword_223A23420);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - v15;
  v17 = sub_223A204B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AE8, &qword_223A23428);
  v23 = *(v22 - 8);
  v78 = v22;
  v79 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v67 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v74 = &v58 - v28;
  MEMORY[0x28223BE20](v27);
  v75 = &v58 - v29;
  sub_223A20550();
  v30 = sub_223A20560();
  v31 = *(v30 - 8);
  v63 = *(v31 + 56);
  v64 = v31 + 56;
  v63(v16, 1, 1, v30);
  sub_223A204A0();
  v62 = sub_2239FE308();
  v32 = MEMORY[0x277D83E40];
  v33 = v77;
  v59 = v17;
  sub_223A20520();
  v34 = *(v9 + 8);
  v80 = v9 + 8;
  v81 = v34;
  v34(v12, v82);
  sub_2239CDCEC(v16, &qword_27D0A4AE0, &qword_223A23420);
  v35 = *(v18 + 8);
  v60 = v18 + 8;
  v61 = v35;
  v35(v21, v17);
  v36 = v74;
  MEMORY[0x223DEF5B0](v33, v32);
  v73 = sub_2239FE360(&qword_281333738, &qword_27D0A4AE8, &qword_223A23428);
  v37 = v36;
  v38 = v78;
  MEMORY[0x223DEF550](v36, v78, v73);
  v39 = v79 + 8;
  v40 = *(v79 + 8);
  v40(v37, v38);
  v66 = v40;
  v79 = v39;
  v83 = 46;
  v84 = 0xE100000000000000;
  v65 = sub_2239E4BE4();
  MEMORY[0x223DEF550](v85, &v83, MEMORY[0x277D837D0], v65);
  sub_223A20550();
  v63(v16, 1, 1, v30);
  sub_223A204A0();
  v41 = v77;
  v42 = v59;
  sub_223A20520();
  v81(v12, v82);
  sub_2239CDCEC(v16, &qword_27D0A4AE0, &qword_223A23420);
  v61(v21, v42);
  v43 = v67;
  MEMORY[0x223DEF5B0](v41, v32);
  v44 = v78;
  MEMORY[0x223DEF550](v43, v78, v73);
  v40(v43, v44);
  sub_223A20480();
  v45 = v85[0];
  v46 = v85[1];
  sub_223A204A0();
  v83 = v45;
  v84 = v46;
  sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430);
  v47 = v68;
  v48 = v69;
  sub_223A20500();
  v49 = v70;
  sub_223A20500();

  v50 = v47;
  sub_223A204E0();
  v51 = *(v71 + 8);
  v51(v49, v47);
  v51(v48, v47);
  v81(v12, v82);
  sub_223A204A0();
  sub_223A20500();
  v52 = v74;
  v53 = v78;
  sub_223A20500();
  sub_223A204E0();
  v51(v49, v50);
  v51(v48, v50);
  v81(v12, v82);
  v51(v76, v50);
  v51(v77, v50);
  v54 = v53;
  v55 = v53;
  v56 = v66;
  v66(v52, v55);
  return v56(v75, v54);
}

uint64_t sub_2239FE280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x223DF0350](*a1, a1[1], a1[2], a1[3]);
  v5 = sub_2239FED98(v3, v4);

  *a2 = 0;
  *(a2 + 8) = !v5;
  return result;
}

unint64_t sub_2239FE308()
{
  result = qword_281333750;
  if (!qword_281333750)
  {
    sub_223A204B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333750);
  }

  return result;
}

uint64_t sub_2239FE360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_2239FE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_223A21330();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2239FE924();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_223A21720();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2239FE924()
{
  v0 = sub_223A21340();
  v4 = sub_2239FE9A4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2239FE9A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_223A21280();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_223A215E0();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_2239E6D24(v9, 0);
  v12 = sub_2239FEAFC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_223A21280();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_223A21720();
LABEL_4:

  return sub_223A21280();
}

unint64_t sub_2239FEAFC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2239FED1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_223A212F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_223A21720();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2239FED1C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_223A212D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2239FED1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_223A21300();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DF03C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_2239FED98(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_223A216F0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_2239FEE90@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_2239FEF38()
{
  sub_223A20FC0();
  if (v0 <= 0x3F)
  {
    sub_2239FEFCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2239FEFCC()
{
  if (!qword_281333720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4B28, &qword_223A23468);
    v0 = sub_223A205B0();
    if (!v1)
    {
      atomic_store(v0, &qword_281333720);
    }
  }
}

uint64_t sub_2239FF030()
{
  v0 = type metadata accessor for DriverSnapshotManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F98];
  *(v3 + 24) = 0;
  *(v3 + 32) = v4;
  sub_223A21470();
  *(v3 + 40) = v5;
  result = sub_223A20F40();
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subscription) = 0;
  *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subbedChannelsManaged) = 0;
  qword_2813359E8 = v3;
  return result;
}

void *sub_2239FF0B4()
{
  v1 = v0;
  v138 = *MEMORY[0x277D85DE8];
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  v130 = v2;
  v131 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v132 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v129 = *(v126 - 8);
  v6 = *(v129 + 64);
  v7 = MEMORY[0x28223BE20](v126);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v113 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v113 - v14;
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F98];
  v128 = v15;
  *(v15 + 16) = MEMORY[0x277D84F98];
  v123 = v15 + 16;
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v124 = (v17 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v125 = v18 + 16;
  v137 = 0;
  v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_logger;
  v20 = sub_223A20FB0();
  v21 = sub_223A214D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v17;
    v23 = v19;
    v24 = v18;
    v25 = v1;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2239C7000, v20, v21, "getting latest samples", v26, 2u);
    v27 = v26;
    v1 = v25;
    v18 = v24;
    v19 = v23;
    v17 = v22;
    MEMORY[0x223DF1300](v27, -1, -1);
  }

  if (*(v1 + 16) != 1 || (v28 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subscription), v29 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subbedChannelsManaged), (Samples = IOReportCreateSamples()) == 0))
  {
    v53 = sub_223A20FB0();
    v54 = sub_223A214E0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2239C7000, v53, v54, "No samples returned. Giving up.", v55, 2u);
      MEMORY[0x223DF1300](v55, -1, -1);
    }

    goto LABEL_14;
  }

  v30 = sub_223A20FB0();
  v31 = sub_223A214D0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v17;
    v33 = v19;
    v34 = v18;
    v35 = v1;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2239C7000, v30, v31, "done getting latest samples", v36, 2u);
    v37 = v36;
    v1 = v35;
    v18 = v34;
    v19 = v33;
    v17 = v32;
    MEMORY[0x223DF1300](v37, -1, -1);
  }

  SamplesDelta = IOReportCreateSamplesDelta();
  if (!SamplesDelta)
  {
    v59 = v137;
    if (!v137)
    {

      goto LABEL_15;
    }

    aBlock[0] = v137;
    type metadata accessor for CFError(0);
    sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError);
    v60 = sub_223A21920();
    v62 = v61;

    v53 = sub_223A20FB0();
    v63 = sub_223A214E0();

    if (os_log_type_enabled(v53, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = 136380675;
      v66 = sub_2239E1910(v60, v62, aBlock);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_2239C7000, v53, v63, "Delta failed. { error=%{private}s }", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x223DF1300](v65, -1, -1);
      MEMORY[0x223DF1300](v64, -1, -1);
    }

    else
    {
    }

LABEL_14:

LABEL_15:
    v56 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v39 = SamplesDelta;
  v116 = v19;
  v40 = swift_allocObject();
  v41 = v128;
  v40[2] = v17;
  v40[3] = v41;
  v40[4] = v18;
  v40[5] = v1;
  aBlock[4] = sub_223A011D8;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_223A003D0;
  aBlock[3] = &block_descriptor_36;
  v42 = _Block_copy(aBlock);
  v43 = v39;

  v120 = v18;

  v117 = v1;

  IOReportIterate();
  _Block_release(v42);
  v119 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B40, &qword_223A23548);
  v44 = *(v129 + 72);
  v45 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v118 = swift_allocObject();
  v46 = v118 + v45;
  swift_beginAccess();
  v47 = *(*(v41 + 16) + 16);
  v123 = v17;
  v129 = v44;
  if (v47)
  {

    v48 = sub_223A21170();
    v49 = v130;
    v50 = v131;
    if (v48)
    {
      v51 = sub_223A20CA0();
      (*(*(v51 - 8) + 56))(v127, 1, 1, v51);
      sub_223A20CB0();
      v52 = *(v50 + 56);
      v52(v46, 0, 1, v49);
    }

    else
    {
      v115 = sub_223A21120();
      v68 = v67;
      v69 = sub_223A20FB0();
      v70 = sub_223A214E0();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        LODWORD(v114) = v70;
        v72 = v71;
        v73 = swift_slowAlloc();
        v135[0] = v73;
        *v72 = 136380931;
        *(v72 + 4) = sub_2239E1910(0xD000000000000011, 0x8000000223A253B0, v135);
        *(v72 + 12) = 2081;
        v74 = sub_2239E1910(v115, v68, v135);

        *(v72 + 14) = v74;
        v44 = v129;
        _os_log_impl(&dword_2239C7000, v69, v114, "Failed to convert stats to message. { %{private}s=%{private}s }", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v73, -1, -1);
        MEMORY[0x223DF1300](v72, -1, -1);
      }

      else
      {
      }

      v50 = v131;
      v52 = *(v131 + 56);
      v52(v46, 1, 1, v49);
    }
  }

  else
  {
    v49 = v130;
    v50 = v131;
    v52 = *(v131 + 56);
    v52(v46, 1, 1, v130);
  }

  v75 = v124;
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v76 + 16);
  v121 = v46;
  if (v77)
  {

    if (sub_223A21170())
    {
      v78 = sub_223A20CA0();
      v79 = *(*(v78 - 8) + 56);
      v124 = v76;
      v79(v127, 1, 1, v78);
      sub_223A20CB0();
      v52(v46 + v44, 0, 1, v49);
    }

    else
    {
      v115 = sub_223A21120();
      v124 = v80;
      v81 = sub_223A20FB0();
      v82 = sub_223A214E0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v113 = v81;
        v84 = v83;
        v114 = swift_slowAlloc();
        v134[0] = v114;
        *v84 = 136380931;
        *(v84 + 4) = sub_2239E1910(0xD000000000000014, 0x8000000223A253D0, v134);
        *(v84 + 12) = 2081;
        v85 = sub_2239E1910(v115, v124, v134);

        *(v84 + 14) = v85;
        v44 = v129;
        v86 = v82;
        v87 = v113;
        _os_log_impl(&dword_2239C7000, v113, v86, "Failed to convert stats to message. { %{private}s=%{private}s }", v84, 0x16u);
        v88 = v114;
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v88, -1, -1);
        v89 = v84;
        v46 = v121;
        MEMORY[0x223DF1300](v89, -1, -1);
      }

      else
      {
      }

      v50 = v131;
      v52(v46 + v44, 1, 1, v49);
    }
  }

  else
  {
    v52(v46 + v44, 1, 1, v49);
  }

  v90 = v46 + 2 * v44;
  v91 = v125;
  swift_beginAccess();
  if (*(*v91 + 16))
  {
    v92 = *v91;

    if (sub_223A21170())
    {
      v93 = sub_223A20CA0();
      (*(*(v93 - 8) + 56))(v127, 1, 1, v93);
      sub_223A20CB0();
      v94 = v46 + 2 * v44;
      v95 = 0;
    }

    else
    {
      v125 = sub_223A21120();
      v127 = v96;
      v97 = sub_223A20FB0();
      v98 = sub_223A214E0();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v117 = v97;
        LODWORD(v116) = v98;
        v100 = v99;
        v124 = swift_slowAlloc();
        v133 = v124;
        *v100 = 136380931;
        *(v100 + 4) = sub_2239E1910(0xD000000000000010, 0x8000000223A253F0, &v133);
        *(v100 + 12) = 2081;
        v101 = sub_2239E1910(v125, v127, &v133);

        *(v100 + 14) = v101;
        v102 = v117;
        _os_log_impl(&dword_2239C7000, v117, v116, "Failed to convert stats to message. { %{private}s=%{private}s }", v100, 0x16u);
        v103 = v124;
        swift_arrayDestroy();
        MEMORY[0x223DF1300](v103, -1, -1);
        MEMORY[0x223DF1300](v100, -1, -1);
      }

      else
      {
      }

      v50 = v131;
      v94 = v90;
      v95 = 1;
    }

    v52(v94, v95, 1, v49);
  }

  else
  {
    v52(v90, 1, 1, v49);
  }

  v104 = (v50 + 48);
  v105 = (v50 + 32);
  v56 = MEMORY[0x277D84F90];
  v106 = 3;
  v107 = v121;
  v108 = v129;
  do
  {
    sub_2239E1310(v107, v11);
    sub_223A011E4(v11, v9);
    if ((*v104)(v9, 1, v49) == 1)
    {
      sub_223A01254(v9);
    }

    else
    {
      v109 = *v105;
      (*v105)(v132, v9, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_2239DF208(0, v56[2] + 1, 1, v56);
      }

      v111 = v56[2];
      v110 = v56[3];
      if (v111 >= v110 >> 1)
      {
        v56 = sub_2239DF208(v110 > 1, v111 + 1, 1, v56);
      }

      v56[2] = v111 + 1;
      v112 = v56 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v111;
      v49 = v130;
      v109(v112, v132, v130);
      v108 = v129;
    }

    v107 += v108;
    --v106;
  }

  while (v106);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

LABEL_16:
  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

uint64_t sub_223A0016C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 16;
  }

  v3 = a1;
  Format = IOReportChannelGetFormat();
  if (Format > 1)
  {
    if (Format == 2)
    {
      swift_beginAccess();
      sub_223A01F1C(v3);
    }

    else
    {
      if (Format != 3)
      {
        goto LABEL_12;
      }

      swift_beginAccess();
      sub_223A01938(v3, (a2 + 16));
    }

LABEL_19:
    swift_endAccess();
    goto LABEL_20;
  }

  if (!Format)
  {
    v3 = v3;
    v10 = sub_223A20FB0();
    v11 = sub_223A214D0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777472;
      v12[4] = IOReportChannelGetFormat();

      v13 = "Dropping sample. { format=%hhu }";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_20;
  }

  if (Format == 1)
  {
    swift_beginAccess();
    IntegerValue = IOReportSimpleGetIntegerValue();
    if (IntegerValue >= 1)
    {
      v6 = IntegerValue;
      v7 = sub_223A01628(v3, 0x656C706D6953, 0xE600000000000000);
      v14[3] = MEMORY[0x277D84A28];
      v14[0] = v6;
      sub_223A122FC(v14, v7, v8);
    }

    goto LABEL_19;
  }

LABEL_12:
  v3 = v3;
  v10 = sub_223A20FB0();
  v11 = sub_223A214E0();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_17;
  }

  v12 = swift_slowAlloc();
  *v12 = 16777472;
  v12[4] = IOReportChannelGetFormat();

  v13 = "IOReportingFormat not supported. { format=%hhu }";
LABEL_16:
  _os_log_impl(&dword_2239C7000, v10, v11, v13, v12, 5u);
  MEMORY[0x223DF1300](v12, -1, -1);

LABEL_20:
  return 0;
}

uint64_t sub_223A003D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4(a2);

  return v6;
}

uint64_t sub_223A0042C()
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(v0 + 24))
  {

    v1 = sub_223A20BF0();

    if (*(v1 + 16))
    {

      v2 = sub_223A20FB0();
      v3 = sub_223A214D0();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 134217984;
        *(v4 + 4) = *(v1 + 16);

        _os_log_impl(&dword_2239C7000, v2, v3, "Loading ioReportingConfigs. { count=%ld }", v4, 0xCu);
        MEMORY[0x223DF1300](v4, -1, -1);
      }

      else
      {
      }

      v40 = 0;
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v8;
      aBlock[4] = sub_223A01188;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_223A003D0;
      aBlock[3] = &block_descriptor_2;
      v10 = _Block_copy(aBlock);

      v11 = IOReportCopyFilteredChannels();
      _Block_release(v10);
      if (!v11)
      {
        v15 = v40;
        if (v40)
        {
          aBlock[0] = v40;
          type metadata accessor for CFError(0);
          sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError);
          v16 = sub_223A21920();
          v18 = v17;
        }

        else
        {
          v16 = 0x6E776F6E6B6E75;
          v18 = 0xE700000000000000;
        }

        v23 = sub_223A20FB0();
        v24 = sub_223A214E0();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          aBlock[0] = v26;
          *v25 = 136380675;
          v27 = sub_2239E1910(v16, v18, aBlock);

          *(v25 + 4) = v27;
          _os_log_impl(&dword_2239C7000, v23, v24, "Unable to retrieve filtered channels. { err=%{private}s }", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x223DF1300](v26, -1, -1);
          MEMORY[0x223DF1300](v25, -1, -1);
        }

        else
        {
        }

        goto LABEL_33;
      }

      v12 = sub_223A20FB0();
      v13 = sub_223A214D0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        swift_beginAccess();
        *(v14 + 4) = *(v8 + 16);

        _os_log_impl(&dword_2239C7000, v12, v13, "IOReporting channels found. { count=%ld }", v14, 0xCu);
        MEMORY[0x223DF1300](v14, -1, -1);
      }

      else
      {
      }

      v38[1] = 0;
      if (IOReportCreateSubscription())
      {
        v28 = sub_223A20FB0();
        v29 = sub_223A214E0();
        if (!os_log_type_enabled(v28, v29))
        {
LABEL_30:

LABEL_32:

LABEL_33:

          goto LABEL_34;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2239C7000, v28, v29, "Unable to subscribe to desired channels: list of subscribed channels is empty.", v30, 2u);
        v31 = v30;
      }

      else
      {
        v19 = v40;
        if (v40)
        {
          v38[0] = v40;
          type metadata accessor for CFError(0);
          sub_223A01190(&qword_27D0A4B30, type metadata accessor for CFError);
          v20 = sub_223A21920();
          v22 = v21;
        }

        else
        {
          v20 = 0x6E776F6E6B6E75;
          v22 = 0xE700000000000000;
        }

        v28 = sub_223A20FB0();
        v32 = sub_223A214E0();

        if (!os_log_type_enabled(v28, v32))
        {

          goto LABEL_32;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v38[0] = v34;
        *v33 = 136380675;
        v35 = sub_2239E1910(v20, v22, v38);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_2239C7000, v28, v32, "Unable to subscribe to desired channels. { err=%{private}s }", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223DF1300](v34, -1, -1);
        v31 = v33;
      }

      MEMORY[0x223DF1300](v31, -1, -1);
      goto LABEL_30;
    }
  }

  v5 = sub_223A20FB0();
  v6 = sub_223A214D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2239C7000, v5, v6, "No ioReportingConfigs found.", v7, 2u);
    MEMORY[0x223DF1300](v7, -1, -1);
  }

LABEL_34:
  result = 0;
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A00BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223A20AE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 16;
  }

  v11 = a1;
  Group = IOReportChannelGetGroup();
  if (Group)
  {
    v13 = Group;
    v41 = sub_223A21220();
    v44 = v14;
  }

  else
  {
    v41 = 0;
    v44 = 0;
  }

  SubGroup = IOReportChannelGetSubGroup();

  v40 = a3;
  if (SubGroup)
  {
    v17 = SubGroup;
    v42 = sub_223A21220();
    v43 = v18;

    v19 = *(a2 + 16);
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v19 = *(a2 + 16);
    if (!v19)
    {
LABEL_33:

      return 16;
    }
  }

  v39 = v11;
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v20 = v22;
  v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
  v24 = *(v21 + 56);
  v25 = (v21 - 8);
  v22(v10, v23, v6);
  while (1)
  {
    sub_223A20AC0();
    if (v26)
    {

      v27 = sub_223A20AC0();
      if (v44)
      {
        if (!v28)
        {
          goto LABEL_13;
        }

        if (v41 == v27 && v44 == v28)
        {
        }

        else
        {
          v29 = sub_223A218F0();

          if ((v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v28)
      {
        goto LABEL_12;
      }
    }

    sub_223A20AD0();
    if (!v30)
    {
      break;
    }

    v31 = sub_223A20AD0();
    if (!v43)
    {
      if (!v32)
      {
        break;
      }

LABEL_12:

LABEL_13:
      (*v25)(v10, v6);
      goto LABEL_14;
    }

    if (!v32)
    {
      goto LABEL_13;
    }

    if (v42 == v31 && v43 == v32)
    {

      (*v25)(v10, v6);
      goto LABEL_37;
    }

    v33 = sub_223A218F0();

    (*v25)(v10, v6);
    if (v33)
    {
      goto LABEL_37;
    }

LABEL_14:
    v23 += v24;
    if (!--v19)
    {
      v11 = v39;
      goto LABEL_33;
    }

    v20(v10, v23, v6);
  }

  (*v25)(v10, v6);
LABEL_37:

  v34 = v40;
  result = swift_beginAccess();
  v35 = *(v34 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    *(v34 + 16) = v37;
  }

  return result;
}

uint64_t sub_223A00F68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B58, &qword_223A23560);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281332DD0 = result;
  return result;
}

uint64_t sub_223A00FA8()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DriverSnapshotManager()
{
  result = qword_281332DB8;
  if (!qword_281332DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A010B8()
{
  result = sub_223A20FC0();
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

uint64_t sub_223A01190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_223A011D8(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_223A0016C(a1, v1[2]);
}

uint64_t sub_223A011E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A01254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A012BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  sub_223A20570();
  v10 = v3[2];
  v31 = v7;
  v32 = v2;
  v10(v7, v9, v2);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v26 = v9;
    v27 = v3;
    v41 = MEMORY[0x277D84F90];
    sub_2239D32E0(0, v11, 0);
    v12 = v41;
    v30 = sub_223A021FC();
    v29 = sub_223A02250();
    v28 = sub_2239FE360(&qword_281333730, &qword_27D0A4AF0, &qword_223A23430);
    v13 = (a1 + 40);
    do
    {
      v14 = *v13;
      v37 = *(v13 - 1);
      v38 = v14;
      v35 = 0;
      v36 = 0xE000000000000000;

      sub_223A214B0();
      v37 = v39;
      v38 = v40;
      v34 = 0xE000000000000000;
      v35 = 22364;
      v36 = 0xE200000000000000;
      v33 = 0;
      sub_2239D1804();
      v15 = sub_223A21620();
      v17 = v16;

      v41 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2239D32E0((v18 > 1), v19 + 1, 1);
        v12 = v41;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += 2;
      --v11;
    }

    while (v11);
    v9 = v26;
    v3 = v27;
  }

  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
  sub_2239FE360(&qword_281332740, &qword_27D0A4A90, &unk_223A233A0);
  v21 = sub_223A211D0();

  v22 = v3[1];
  v23 = v9;
  v24 = v32;
  v22(v23, v32);
  v22(v31, v24);
  return v21;
}

uint64_t sub_223A01628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DriverName = IOReportChannelGetDriverName();
  Group = IOReportChannelGetGroup();
  SubGroup = IOReportChannelGetSubGroup();
  if (!DriverName)
  {
    v12 = MEMORY[0x277D84F90];
    if (!Group)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = DriverName;
  v9 = sub_223A21220();
  v11 = v10;
  v12 = sub_2239E1804(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_2239E1804((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = v9;
  *(v15 + 5) = v11;
  if (Group)
  {
LABEL_7:
    v16 = Group;
    v17 = sub_223A21220();
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
    }

    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    if (v21 >= v20 >> 1)
    {
      v12 = sub_2239E1804((v20 > 1), v21 + 1, 1, v12);
    }

    *(v12 + 2) = v21 + 1;
    v22 = &v12[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
  }

LABEL_12:
  if (SubGroup)
  {
    v23 = SubGroup;
    v24 = sub_223A21220();
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
    }

    v28 = *(v12 + 2);
    v27 = *(v12 + 3);
    if (v28 >= v27 >> 1)
    {
      v12 = sub_2239E1804((v27 > 1), v28 + 1, 1, v12);
    }

    *(v12 + 2) = v28 + 1;
    v29 = &v12[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2239E1804(0, *(v12 + 2) + 1, 1, v12);
  }

  v31 = *(v12 + 2);
  v30 = *(v12 + 3);
  if (v31 >= v30 >> 1)
  {
    v12 = sub_2239E1804((v30 > 1), v31 + 1, 1, v12);
  }

  *(v12 + 2) = v31 + 1;
  v32 = &v12[16 * v31];
  *(v32 + 4) = a2;
  *(v32 + 5) = a3;
  ChannelName = IOReportChannelGetChannelName();
  if (ChannelName)
  {
    v34 = ChannelName;
    v35 = sub_223A21220();
    v37 = v36;
    v39 = *(v12 + 2);
    v38 = *(v12 + 3);
    if (v39 >= v38 >> 1)
    {
      v12 = sub_2239E1804((v38 > 1), v39 + 1, 1, v12);
    }

    *(v12 + 2) = v39 + 1;
    v40 = &v12[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v37;
  }

  v41 = sub_223A012BC(v12);

  return v41;
}

uint64_t sub_223A01938(uint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v73 = *MEMORY[0x277D85DE8];
  v57 = sub_223A20FC0();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v57);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  BucketCount = IOReportHistogramGetBucketCount();
  v67 = 0;
  v68 = 0xE000000000000000;
  v53 = BucketCount;
  v7 = BucketCount - 1;
  if (__OFSUB__(BucketCount, 1))
  {
    goto LABEL_28;
  }

  if (v7 < 1)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v59 = 0;
  v60 = 0;
  v56 = (v3 + 8);
  v51 = "driverStateStats";
  v8 = 1;
  v50 = xmmword_223A234B0;
  *(&v9 + 1) = 6;
  v52 = xmmword_223A224A0;
  *&v9 = 67109120;
  v49 = v9;
  v55 = BucketCount - 1;
  do
  {
    while (1)
    {
      v10 = v8;
      if (v8 == v7)
      {
        v8 = 0;
        goto LABEL_9;
      }

      if (v8 == 0x7FFFFFFF)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      ++v8;
LABEL_9:
      v65 = 0;
      v66 = 0;
      BucketBounds = IOReportHistogramGetBucketBounds();
      if (BucketBounds == sub_223A20FD0())
      {
        break;
      }

      sub_223A20F40();
      v44 = sub_223A20FB0();
      v45 = sub_223A214D0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = v49;
        *(v46 + 4) = BucketBounds;
        _os_log_impl(&dword_2239C7000, v44, v45, "Error in getting the bucket. { retValue=%d }", v46, 8u);
        MEMORY[0x223DF1300](v46, -1, -1);
      }

      (*v56)(v58, v57);
      if (v10 == v7)
      {
        goto LABEL_26;
      }
    }

    if (v66 >= v59)
    {
      v12 = v59;
    }

    else
    {
      v12 = v66;
    }

    v13 = v60;
    if (v65 > v60)
    {
      v13 = v65;
    }

    v59 = v12;
    v60 = v13;
    BucketHits = IOReportHistogramGetBucketHits();
    if (BucketHits)
    {
      v15 = BucketHits;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
      v16 = swift_allocObject();
      *(v16 + 16) = v52;
      v17 = v65;
      v18 = v66;
      v19 = MEMORY[0x277D84A28];
      *(v16 + 56) = MEMORY[0x277D84A28];
      v20 = MEMORY[0x277D84A90];
      *(v16 + 64) = MEMORY[0x277D84A90];
      *(v16 + 72) = v17;
      *(v16 + 32) = v18;
      *(v16 + 96) = v19;
      *(v16 + 104) = v20;
      *(v16 + 136) = MEMORY[0x277D84D38];
      *(v16 + 144) = MEMORY[0x277D84D90];
      *(v16 + 112) = v15;
      v21 = sub_223A21230();
      MEMORY[0x223DF0390](v21);
    }

    v22 = v67;
    v23 = v68;
    v24 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v24 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      UnitLabel = IOReportChannelGetUnitLabel();
      if (!UnitLabel)
      {
        goto LABEL_30;
      }

      v26 = UnitLabel;
      v27 = sub_223A21220();
      v29 = v28;

      MinValue = IOReportHistogramGetMinValue();
      MaxValue = IOReportHistogramGetMaxValue();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
      v32 = swift_allocObject();
      *(v32 + 16) = v50;
      *(v32 + 56) = MEMORY[0x277D849A8];
      *(v32 + 64) = MEMORY[0x277D84A20];
      *(v32 + 32) = v53;
      v33 = MEMORY[0x277D84A28];
      *(v32 + 96) = MEMORY[0x277D84A28];
      v34 = MEMORY[0x277D84A90];
      v35 = v60;
      *(v32 + 72) = v59;
      *(v32 + 136) = v33;
      *(v32 + 144) = v34;
      *(v32 + 104) = v34;
      *(v32 + 112) = v35;
      *(v32 + 176) = v33;
      *(v32 + 184) = v34;
      *(v32 + 152) = MinValue;
      *(v32 + 216) = v33;
      *(v32 + 224) = v34;
      *(v32 + 192) = MaxValue;
      v36 = MEMORY[0x277D837D0];
      *(v32 + 256) = MEMORY[0x277D837D0];
      *(v32 + 264) = sub_223A021A8();
      *(v32 + 232) = v27;
      *(v32 + 240) = v29;
      v37 = sub_223A21230();
      MEMORY[0x223DF0390](v37);

      *&v70[0] = v22;
      *(&v70[0] + 1) = v23;
      v63 = 9275;
      v64 = 0xE200000000000000;
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_223A021FC();
      sub_223A02250();
      sub_223A214A0();
      MEMORY[0x223DF0390](v71, *(&v71 + 1));

      v38 = sub_223A01628(a1, 0x6172676F74736948, 0xE90000000000006DLL);
      v40 = v39;
      v72 = v36;
      v71 = v69;
      sub_2239DA0A8(&v71, v70);

      v41 = v54;
      v42 = *v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v41;
      sub_223A1301C(v70, v38, v40, isUniquelyReferenced_nonNull_native);

      *v41 = v63;
    }

    v7 = v55;
  }

  while (v10 != v55);
LABEL_26:

  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A01F1C(uint64_t a1)
{
  result = IOReportStateGetCount();
  if ((result & 0x80000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v3 = 0;
      v25 = 0;
      v4 = -result;
      v5 = 0xE000000000000000;
      v24 = result;
      while (2)
      {
        if (result <= v3)
        {
          v6 = v3;
        }

        else
        {
          v6 = result;
        }

        while (1)
        {
          if (v6 == v3)
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if (v3 == 0x7FFFFFFF)
          {
            goto LABEL_18;
          }

          result = IOReportStateGetNameForIndex();
          if (!result)
          {
            goto LABEL_20;
          }

          v7 = result;
          v8 = sub_223A21220();
          v10 = v9;

          v11 = IOReportStateGetInTransitions();
          Residency = IOReportStateGetResidency();
          IOReportStateGetDutyCycle();
          if (Residency)
          {
            break;
          }

          ++v3;

          if (!(v4 + v3))
          {
            v21 = v5;
            goto LABEL_16;
          }
        }

        v26 = v25;
        v27 = v5;
        v29 = 0xD000000000000035;
        v30 = 0x8000000223A25450;
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B48, &qword_223A23550);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_223A234C0;
        *(v15 + 56) = MEMORY[0x277D837D0];
        v16 = sub_223A021A8();
        *(v15 + 32) = v8;
        *(v15 + 40) = v10;
        v17 = MEMORY[0x277D84D38];
        *(v15 + 96) = MEMORY[0x277D84D38];
        v18 = MEMORY[0x277D84D90];
        *(v15 + 104) = MEMORY[0x277D84D90];
        *(v15 + 112) = Residency;
        *(v15 + 64) = v16;
        *(v15 + 72) = v11;
        *(v15 + 136) = v17;
        *(v15 + 144) = v18;
        *(v15 + 176) = MEMORY[0x277D839F8];
        *(v15 + 184) = MEMORY[0x277D83A80];
        *(v15 + 152) = v14;
        sub_2239D1804();
        v25 = sub_223A21610();
        v21 = v19;

        v20 = v4 + v3++;
        v5 = v21;
        result = v24;
        if (v20 != -1)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0xE000000000000000;
    }

LABEL_16:
    v22 = sub_223A01628(a1, 0x6574617453, 0xE500000000000000);
    v28 = MEMORY[0x277D837D0];
    v26 = v25;
    v27 = v21;
    return sub_223A122FC(&v26, v22, v23);
  }

  return result;
}

unint64_t sub_223A021A8()
{
  result = qword_281332748;
  if (!qword_281332748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332748);
  }

  return result;
}

unint64_t sub_223A021FC()
{
  result = qword_281332758;
  if (!qword_281332758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332758);
  }

  return result;
}

unint64_t sub_223A02250()
{
  result = qword_281332760;
  if (!qword_281332760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332760);
  }

  return result;
}

uint64_t *DriverSnapshotWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return DriverSnapshotWorker.init(with:)(a1);
}

Swift::Void __swiftcall DriverSnapshotWorker.stop()()
{
  v1 = v0;
  v2 = sub_223A20D20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v46 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v60 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v46 - v12);
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
  v15 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample);
  if (v15)
  {
    v48 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
    *&v50 = v11;
    v16 = qword_281332DD8;
    v17 = v15;
    if (v16 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v47 = v17;
      v17 = sub_2239FF0B4();
      v18 = v17[2];
      v58 = v1;
      v59 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
      v55 = v3;
      v56 = v18;
      if (v18)
      {
        v1 = 0;
        v52 = (v3 + 32);
        v53 = v3 + 16;
        v51 = (v3 + 8);
        v19 = MEMORY[0x277D84F90];
        v20 = v50;
        v54 = v17;
        while (v1 < v17[2])
        {
          v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v22 = *(v3 + 72);
          (*(v3 + 16))(v13, v17 + v21 + v22 * v1, v20);
          v23 = v59[4];
          __swift_project_boxed_opaque_existential_1(v59, v59[3]);
          if (sub_223A20980())
          {
            (*v51)(v13, v20);
          }

          else
          {
            v24 = *v52;
            (*v52)(v57, v13, v20);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_223A02CDC(0, *(v19 + 16) + 1, 1);
              v20 = v50;
              v19 = v61[0];
            }

            v27 = *(v19 + 16);
            v26 = *(v19 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_223A02CDC(v26 > 1, v27 + 1, 1);
              v20 = v50;
              v19 = v61[0];
            }

            *(v19 + 16) = v27 + 1;
            v24((v19 + v21 + v27 * v22), v57, v20);
            v3 = v55;
          }

          ++v1;
          v17 = v54;
          if (v56 == v1)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        v20 = v50;
LABEL_15:

        v1 = v58;
        v29 = v49;
        v57 = *(v19 + 16);
        if (!v57)
        {
LABEL_22:

          v14 = v48;
          v15 = *(v1 + v48);
          break;
        }

        v30 = 0;
        v53 = v3 + 16;
        v54 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
        *&v28 = 134218243;
        v50 = v28;
        v52 = (v3 + 8);
        v51 = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v56 = v19;
        while (v30 < *(v19 + 16))
        {
          v32 = *(v3 + 16);
          v33 = v60;
          v32(v60, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v30, v20);
          v32(v29, v33, v20);

          v34 = v20;
          v13 = sub_223A20FB0();
          v35 = sub_223A214D0();
          if (os_log_type_enabled(v13, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v61[0] = v37;
            *v36 = v50;
            v38 = v59[4];
            __swift_project_boxed_opaque_existential_1(v59, v59[3]);
            *(v36 + 4) = sub_223A20950();

            *(v36 + 12) = 2081;
            v39 = sub_223A20CC0();
            v40 = MEMORY[0x223DEFFA0](v39);
            v42 = v41;
            v31 = *v52;
            (*v52)(v29, v34);
            v43 = sub_2239E1910(v40, v42, v61);
            v1 = v58;

            *(v36 + 14) = v43;
            _os_log_impl(&dword_2239C7000, v13, v35, "Failed to send IOReporting message. { reporterID=%lld, category=%{private}s }", v36, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x223DF1300](v37, -1, -1);
            v44 = v36;
            v3 = v55;
            MEMORY[0x223DF1300](v44, -1, -1);
          }

          else
          {

            v31 = *v52;
            (*v52)(v29, v20);
          }

          v20 = v34;
          ++v30;
          v17 = (v31)(v60, v34);
          v19 = v56;
          if (v57 == v30)
          {
            goto LABEL_22;
          }
        }
      }

      __break(1u);
LABEL_26:
      v45 = v17;
      swift_once();
      v17 = v45;
    }
  }

  *(v1 + v14) = 0;

  swift_beginAccess();
  *(v1 + 16) = 0;
}

uint64_t DriverSnapshotWorker.isStarted.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DriverSnapshotWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DriverSnapshotWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t DriverSnapshotWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

char *sub_223A02BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_223A02CBC(char *a1, int64_t a2, char a3)
{
  result = sub_223A04828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_223A02CDC(size_t a1, int64_t a2, char a3)
{
  result = sub_223A0492C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for DriverSnapshotWorker()
{
  result = qword_281333DE8;
  if (!qword_281333DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A02D50()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20FC0();
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

void *sub_223A02E64(void *a1, int64_t a2, char a3)
{
  result = sub_223A04954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_223A02E84(size_t a1, int64_t a2, char a3)
{
  result = sub_223A04A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223A02EA4(uint64_t a1, void *a2)
{
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v8 = *(*(v74 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v74);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v56 - v14);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v64 = v5 + 16;
  v69 = v5 + 32;
  v66 = v5;
  v67 = a1;
  v57 = (v5 + 40);
  v58 = (v5 + 8);

  v21 = 0;
  v59 = v20;
  v60 = a1 + 64;
  v72 = a2;
  v61 = v13;
  v62 = v4;
  v63 = v15;
  while (v19)
  {
LABEL_11:
    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v66;
    v26 = *(v67 + 56);
    v27 = (*(v67 + 48) + 16 * v24);
    v29 = *v27;
    v28 = v27[1];
    v70 = *(v66 + 72);
    (*(v66 + 16))(v15 + *(v74 + 48), v26 + v70 * v24, v4);
    *v15 = v29;
    v15[1] = v28;
    sub_2239D8C48(v15, v13, &qword_27D0A4B60, &qword_223A23760);
    v30 = v13[1];
    v71 = *v13;
    v31 = v15;
    v32 = v65;
    sub_2239D8C48(v31, v65, &qword_27D0A4B60, &qword_223A23760);
    v33 = *(v32 + 8);

    v34 = v32 + *(v74 + 48);
    v68 = *(v25 + 32);
    v68(v73, v34, v4);
    v35 = v72;
    v36 = *v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v35;
    v38 = v75;
    v39 = v71;
    v40 = v30;
    v42 = sub_2239CDC74(v71, v30);
    v43 = v38[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_22;
    }

    v46 = v41;
    if (v38[3] >= v45)
    {
      v15 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_2239CDC74(v39, v40);
      v15 = v63;
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_24;
      }

      v42 = v47;
    }

    v49 = v62;
    v50 = v75;
    if (v46)
    {
      v4 = v62;
      (*v57)(v75[7] + v42 * v70, v73, v62);
    }

    else
    {
      v75[(v42 >> 6) + 8] |= 1 << v42;
      v51 = (v50[6] + 16 * v42);
      *v51 = v39;
      v51[1] = v40;
      v4 = v49;
      v68((v50[7] + v42 * v70), v73, v49);
      v52 = v50[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_23;
      }

      v50[2] = v54;
    }

    v19 &= v19 - 1;
    v22 = *(v74 + 48);
    *v72 = v50;
    v13 = v61;
    (*v58)(v61 + v22, v4);
    sub_2239CDCEC(v15, &qword_27D0A4B60, &qword_223A23760);
    v20 = v59;
    v16 = v60;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_223A03330@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_223A20D20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  sub_2239DD3B0(1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2239CDCEC(v10, &qword_27D0A4B38, " >");
    return (*(v12 + 56))(a1, 1, 1, v11);
  }

  else
  {
    v20 = *(v12 + 32);
    v43 = v12 + 32;
    v41 = a1;
    v42 = v20;
    v20(v18, v10, v11);
    v21 = sub_223A20CD0();
    sub_223A20C90();
    v21(v44, 0);
    (*(v12 + 16))(v16, v18, v11);
    v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages;
    swift_beginAccess();
    v23 = *(v1 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_2239DF208(0, *(v23 + 2) + 1, 1, v23);
      *(v2 + v22) = v23;
    }

    v26 = *(v23 + 2);
    v25 = *(v23 + 3);
    if (v26 >= v25 >> 1)
    {
      v23 = sub_2239DF208(v25 > 1, v26 + 1, 1, v23);
    }

    *(v23 + 2) = v26 + 1;
    v42(&v23[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26], v16, v11);
    *(v2 + v22) = v23;
    swift_endAccess();
    v27 = *(v12 + 56);
    v27(v8, 1, 1, v11);
    v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
    swift_beginAccess();
    sub_2239D8BD8(v8, v2 + v28);
    swift_endAccess();

    v29 = sub_223A20FB0();
    v30 = sub_223A214D0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315138;
      v34 = sub_223A20740();
      v35 = MEMORY[0x223DEFFA0](v34);
      v37 = sub_2239E1910(v35, v36, v44);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2239C7000, v29, v30, "Created builtMessage in DurationSummaryDecoratorState. { category=%s }", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DF1300](v33, -1, -1);
      v38 = v32;
      v27 = v31;
      MEMORY[0x223DF1300](v38, -1, -1);
    }

    v39 = v41;
    v42(v41, v18, v11);
    return (v27)(v39, 0, 1, v11);
  }
}

uint64_t sub_223A037BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v64 - v6;
  v8 = sub_223A20680();
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v64 - v17);
  v19 = sub_223A20B90();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp;
  if (*(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_mostRecentTimestamp) <= 0.0 || *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp) <= 0.0)
  {

    v48 = sub_223A20FB0();
    v49 = sub_223A214D0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = a1;
      v51 = swift_slowAlloc();
      *v51 = 134218496;
      *(v51 + 4) = *(v2 + v24);
      *(v51 + 12) = 2048;
      *(v51 + 14) = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp);
      *(v51 + 22) = 2048;
      v52 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v51 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v48, v49, "invalid times { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v51, 0x20u);
      v53 = v51;
      a1 = v50;
      MEMORY[0x223DF1300](v53, -1, -1);
    }

    else
    {
    }

    v54 = sub_223A20D20();
    v55 = *(*(v54 - 8) + 56);
    v56 = v54;
    v57 = a1;
  }

  else
  {
    v72 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_startAATimestamp;
    v73 = a1;
    v25 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);
    if (v25)
    {
      v68 = v14;
      v69 = v21;
      v70 = v12;
      v71 = v7;
      v26 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;

      v27 = *(sub_223A207B0() + 16);

      result = v27 + 5;
      if (__OFADD__(v27, 5))
      {
        __break(1u);
      }

      else
      {
        v76 = MEMORY[0x223DF0210](result, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
        v29 = sub_223A206F0();
        v67 = v26;
        sub_223A02EA4(v29, &v76);

        v30 = sub_223A207B0();

        sub_223A041B4(v30, v25, &v76);

        swift_bridgeObjectRelease_n();
        v31 = *MEMORY[0x277CEF910];
        v69 = *(v69 + 104);
        (v69)(v23, v31, v19);
        v32 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
        *v18 = sub_223A209C0();
        v18[1] = v33;
        v34 = *MEMORY[0x277CEF860];
        v35 = v74;
        v66 = *(v74 + 104);
        v66(v18, v34, v8);
        v65 = *(v35 + 56);
        v65(v18, 0, 1, v8);
        sub_223A21160();
        (v69)(v23, *MEMORY[0x277CEF8F8], v19);
        *v18 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_messageNumber);
        v36 = v66;
        v66(v18, *MEMORY[0x277CEF840], v8);
        v65(v18, 0, 1, v8);
        sub_223A21160();
        v69 = "decoratorRunningMessage";
        v37 = v68;
        *v68 = *(v2 + v72);
        v38 = *MEMORY[0x277CEF858];
        v36(v37, v38, v8);
        v39 = *(v35 + 32);
        v40 = v70;
        v39(v70, v37, v8);
        v41 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v41;
        sub_2239DEAB8(v40, 0xD000000000000011, v69 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
        v76 = v75;
        *v37 = 0x7FEFFFFFFFFFFFFFLL;
        v36(v37, v38, v8);
        v39(v40, v37, v8);
        v43 = v76;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v43;
        sub_2239DEAB8(v40, 0x7972616D6D75735FLL, 0xEF656D6954646E45, v44);

        sub_223A20740();
        sub_223A20700();
        v45 = sub_223A20CA0();
        (*(*(v45 - 8) + 56))(v71, 1, 1, v45);
        v46 = v73;
        sub_223A20CB0();
        v47 = sub_223A20D20();
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      }

      return result;
    }

    v58 = sub_223A20FB0();
    v59 = sub_223A214E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134218496;
      *(v60 + 4) = *(v2 + v24);
      *(v60 + 12) = 2048;
      *(v60 + 14) = *(v2 + v72);
      *(v60 + 22) = 2048;
      v61 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 32);
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session), *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session + 24));
      *(v60 + 24) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v58, v59, "currentFlattenedMessage should not be nil { caTimestamp=%f startCaTimestamp=%f reporterID=%lld }", v60, 0x20u);
      MEMORY[0x223DF1300](v60, -1, -1);
    }

    else
    {
    }

    v62 = v73;
    v63 = sub_223A20D20();
    v55 = *(*(v63 - 8) + 56);
    v56 = v63;
    v57 = v62;
  }

  return v55(v57, 1, 1, v56);
}

uint64_t sub_223A04070()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages);

  return sub_2239CDCEC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage, &qword_27D0A4B38, " >");
}

void sub_223A040BC()
{
  sub_223A0415C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_223A0415C()
{
  if (!qword_2813336E8)
  {
    sub_223A20D20();
    v0 = sub_223A215D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813336E8);
    }
  }
}

uint64_t sub_223A041B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_223A20680();
  v58 = *(v6 - 8);
  v7 = v58[8];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v57 = &v50 - v12;
  result = MEMORY[0x28223BE20](v11);
  v64 = &v50 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v55 = v10;
  v56 = v58 + 2;
  v60 = v58 + 4;
  v51 = (v58 + 5);
  v52 = (v58 + 1);
  v16 = (a1 + 40);
  v53 = a2;
  v54 = a3;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_6;
    }

    v18 = *(v16 - 1);
    v17 = *v16;

    v19 = sub_2239CDC74(v18, v17);
    if (v20)
    {
      break;
    }

LABEL_5:

LABEL_6:
    v16 += 2;
    if (!--v15)
    {
      return result;
    }
  }

  v21 = *(a2 + 56);
  v62 = v17;
  v63 = v18;
  v22 = v10;
  v23 = v58;
  v61 = v58[9];
  v24 = v58[2];
  v25 = a3;
  v26 = v57;
  v24(v57, v21 + v61 * v19, v6);
  v27 = v23[4];
  v28 = v64;
  v59 = v27;
  v27(v64, v26, v6);
  v29 = v22;
  v30 = v62;
  v31 = v28;
  v32 = v6;
  v24(v29, v31, v6);

  v33 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v25;
  v36 = v63;
  v65 = v35;
  v38 = sub_2239CDC74(v63, v30);
  v39 = v35[2];
  v40 = (v37 & 1) == 0;
  v41 = v39 + v40;
  if (!__OFADD__(v39, v40))
  {
    v42 = v37;
    if (v35[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_2239CDC74(v36, v30);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_21;
      }

      v38 = v43;
    }

    v6 = v32;
    v45 = v65;
    if (v42)
    {
      v10 = v55;
      (*v51)(v65[7] + v38 * v61, v55, v6);
    }

    else
    {
      v65[(v38 >> 6) + 8] |= 1 << v38;
      v46 = (v45[6] + 16 * v38);
      *v46 = v36;
      v46[1] = v30;
      v10 = v55;
      v59(v45[7] + v38 * v61, v55, v6);
      v47 = v45[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_20;
      }

      v45[2] = v49;
    }

    a3 = v54;
    *v54 = v45;
    (*v52)(v64, v6);
    a2 = v53;
    goto LABEL_5;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_223A04538(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), sub_223A21940(), sub_223A07600(v13, a1), v5 = sub_223A21970(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);

      v11 = sub_223A07A68(v10, a1);

      if (v11)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_223A04628()
{
  v0 = sub_223A207D0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_223A0415C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void *sub_223A04790(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B90, &qword_223A23740);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4BDA12F684BDA13) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

char *sub_223A04828(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA0, &unk_223A23750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_223A04954(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BB0, &unk_223A23768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223A04AB0(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_223A21940();
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[10];
  v9 = a2[11];
  v49 = a2;
  sub_223A21290();
  sub_223A21290();
  v10 = sub_223A21970();
  v11 = v4 + 56;
  v12 = -1 << *(v4 + 32);
  v13 = v10 & ~v12;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v47 = v4;
    v15 = *(v4 + 48);
    while (1)
    {
      v16 = (v15 + 216 * v13);
      v17 = v16[10];
      v18 = v16[11];
      v19 = v16[3] == v6 && v16[4] == v7;
      if (v19 || (sub_223A218F0() & 1) != 0)
      {
        v20 = v17 == v8 && v18 == v9;
        if (v20 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_2239EF230(v49);
    v21 = *(v47 + 48) + 216 * v13;
    v22 = *(v21 + 16);
    v52[0] = *v21;
    v52[1] = v22;
    v23 = *(v21 + 80);
    v25 = *(v21 + 32);
    v24 = *(v21 + 48);
    v52[4] = *(v21 + 64);
    v52[5] = v23;
    v52[2] = v25;
    v52[3] = v24;
    v26 = *(v21 + 96);
    v27 = *(v21 + 112);
    v28 = *(v21 + 144);
    v52[8] = *(v21 + 128);
    v52[9] = v28;
    v52[6] = v26;
    v52[7] = v27;
    v29 = *(v21 + 160);
    v30 = *(v21 + 176);
    v31 = *(v21 + 192);
    v53 = *(v21 + 208);
    v52[11] = v30;
    v52[12] = v31;
    v52[10] = v29;
    v32 = *(v21 + 176);
    *(a1 + 160) = *(v21 + 160);
    *(a1 + 176) = v32;
    *(a1 + 192) = *(v21 + 192);
    *(a1 + 208) = *(v21 + 208);
    v33 = *(v21 + 112);
    *(a1 + 96) = *(v21 + 96);
    *(a1 + 112) = v33;
    v34 = *(v21 + 144);
    *(a1 + 128) = *(v21 + 128);
    *(a1 + 144) = v34;
    v35 = *(v21 + 48);
    *(a1 + 32) = *(v21 + 32);
    *(a1 + 48) = v35;
    v36 = *(v21 + 80);
    *(a1 + 64) = *(v21 + 64);
    *(a1 + 80) = v36;
    v37 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 16) = v37;
    sub_2239EF1D4(v52, v51);
    return 0;
  }

  else
  {
LABEL_15:
    v39 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *v48;
    sub_2239EF1D4(v49, v52);
    sub_223A05864(v49, v13, isUniquelyReferenced_nonNull_native);
    *v48 = v51[0];
    v41 = *(v49 + 176);
    *(a1 + 160) = *(v49 + 160);
    *(a1 + 176) = v41;
    *(a1 + 192) = *(v49 + 192);
    *(a1 + 208) = *(v49 + 208);
    v42 = *(v49 + 112);
    *(a1 + 96) = *(v49 + 96);
    *(a1 + 112) = v42;
    v43 = *(v49 + 144);
    *(a1 + 128) = *(v49 + 128);
    *(a1 + 144) = v43;
    v44 = *(v49 + 48);
    *(a1 + 32) = *(v49 + 32);
    *(a1 + 48) = v44;
    v45 = *(v49 + 80);
    *(a1 + 64) = *(v49 + 64);
    *(a1 + 80) = v45;
    v46 = *(v49 + 16);
    result = 1;
    *a1 = *v49;
    *(a1 + 16) = v46;
  }

  return result;
}

uint64_t sub_223A04D2C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_223A21940();
  sub_223A07600(v19, a2);
  v8 = sub_223A21970();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v14 = sub_223A07A68(v13, a2);

      if (v14)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[0] = *v3;

    sub_223A05A70(v17, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v19[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_223A04E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  result = sub_223A216C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 216 * (v16 | (v7 << 6));
      v47 = *v19;
      v20 = *(v19 + 24);
      v48 = *(v19 + 16);
      v21 = *(v19 + 32);
      v44 = *(v19 + 40);
      v45 = *(v19 + 56);
      v22 = *(v19 + 80);
      v46 = *(v19 + 72);
      v23 = *(v19 + 88);
      v38 = *(v19 + 128);
      v39 = *(v19 + 144);
      v36 = *(v19 + 96);
      v37 = *(v19 + 112);
      v43 = *(v19 + 208);
      v41 = *(v19 + 176);
      v42 = *(v19 + 192);
      v40 = *(v19 + 160);
      v24 = *(v6 + 40);
      sub_223A21940();
      sub_223A21290();
      sub_223A21290();
      result = sub_223A21970();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 216 * v14;
      *v15 = v47;
      *(v15 + 16) = v48;
      *(v15 + 24) = v20;
      *(v15 + 32) = v21;
      *(v15 + 40) = v44;
      *(v15 + 56) = v45;
      *(v15 + 72) = v46;
      *(v15 + 80) = v22;
      *(v15 + 88) = v23;
      *(v15 + 128) = v38;
      *(v15 + 144) = v39;
      *(v15 + 96) = v36;
      *(v15 + 112) = v37;
      *(v15 + 208) = v43;
      *(v15 + 176) = v41;
      *(v15 + 192) = v42;
      *(v15 + 160) = v40;
      ++*(v6 + 16);
      v3 = v34;
      v11 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_223A051A0(uint64_t a1)
{
  v78 = sub_223A20680();
  v3 = *(v78 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v62 - v11);
  v64 = v1;
  v13 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v14 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  v15 = sub_223A216C0();
  v16 = v15;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = *(v13 + 56);
    v63 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & v18;
    v62 = (v19 + 63) >> 6;
    v70 = v3 + 16;
    v76 = (v3 + 32);
    v75 = (v3 + 8);
    v65 = v15 + 56;
    v73 = v3;
    v72 = v10;
    v71 = v12;
    v67 = v13;
    v66 = v15;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v68 = (v21 - 1) & v21;
LABEL_16:
      v69 = v17;
      v30 = *(*(v13 + 48) + 8 * (v26 | (v17 << 6)));
      v31 = v16[5];
      sub_223A21940();
      v32 = v30 + 64;
      v33 = 1 << *(v30 + 32);
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & *(v30 + 64);
      v36 = (v33 + 63) >> 6;
      v74 = v30;

      v37 = 0;
      v79 = 0;
      if (!v35)
      {
LABEL_21:
        if (v36 <= v37 + 1)
        {
          v39 = v37 + 1;
        }

        else
        {
          v39 = v36;
        }

        v40 = v39 - 1;
        while (1)
        {
          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v38 >= v36)
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
            (*(*(v59 - 8) + 56))(v10, 1, 1, v59);
            v35 = 0;
            goto LABEL_29;
          }

          v35 = *(v32 + 8 * v38);
          ++v37;
          if (v35)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      while (1)
      {
        v38 = v37;
LABEL_28:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = v41 | (v38 << 6);
        v43 = (*(v74 + 48) + 16 * v42);
        v45 = *v43;
        v44 = v43[1];
        v46 = v73;
        v47 = v77;
        v48 = v78;
        (*(v73 + 16))(v77, *(v74 + 56) + *(v73 + 72) * v42, v78);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v50 = *(v49 + 48);
        v51 = v72;
        *v72 = v45;
        *(v51 + 1) = v44;
        v52 = *(v46 + 32);
        v10 = v51;
        v52(&v51[v50], v47, v48);
        (*(*(v49 - 8) + 56))(v10, 0, 1, v49);

        v40 = v38;
        v12 = v71;
LABEL_29:
        sub_2239D0F08(v10, v12);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v53 - 8) + 48))(v12, 1, v53) == 1)
        {
          break;
        }

        v54 = *(v53 + 48);
        v55 = *v12;
        v56 = v12[1];
        v57 = v77;
        v58 = v78;
        (*v76)(v77, v12 + v54, v78);
        v82 = v87;
        v83 = v88;
        v84 = v89;
        v80 = v85;
        v81 = v86;
        sub_223A21290();

        sub_2239DD36C(&qword_27D0A4BD0);
        sub_223A211A0();
        (*v75)(v57, v58);
        result = sub_223A21970();
        v37 = v40;
        v79 ^= result;
        if (!v35)
        {
          goto LABEL_21;
        }
      }

      v22 = v74;

      MEMORY[0x223DF0A30](v79);
      sub_223A21970();
      v16 = v66;
      v23 = -1 << *(v66 + 32);
      v24 = v65;
      v25 = sub_223A21660();
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(v16[6] + 8 * v25) = v22;
      ++v16[2];
      v13 = v67;
      v17 = v69;
      v21 = v68;
    }

    v27 = v17;
    result = v63;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v17 >= v62)
      {
        v60 = 1 << *(v13 + 32);
        if (v60 >= 64)
        {
          bzero(v63, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v63 = -1 << v60;
        }

        v61 = v64;
        *(v13 + 16) = 0;

        goto LABEL_38;
      }

      v29 = v63[v17];
      ++v27;
      if (v29)
      {
        v26 = __clz(__rbit64(v29));
        v68 = (v29 - 1) & v29;
        goto LABEL_16;
      }
    }

LABEL_40:
    __break(1u);
  }

  else
  {

    v61 = v64;
LABEL_38:
    *v61 = v16;
  }

  return result;
}

uint64_t sub_223A05864(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a3)
  {
    sub_223A04E6C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_223A05BFC();
      goto LABEL_22;
    }

    sub_223A06068(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_223A21940();
  v10 = v5[3];
  v11 = v5[4];
  v12 = v5[10];
  v13 = v5[11];
  sub_223A21290();
  sub_223A21290();
  result = sub_223A21970();
  v14 = v8 + 56;
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 48);
    while (1)
    {
      v18 = (v17 + 216 * a2);
      v19 = v18[10];
      v20 = v18[11];
      v21 = v18[3] == v10 && v18[4] == v11;
      if (v21 || (result = sub_223A218F0(), (result & 1) != 0))
      {
        if (v19 == v12 && v20 == v13)
        {
          break;
        }

        result = sub_223A218F0();
        if (result)
        {
          break;
        }
      }

      a2 = (a2 + 1) & v16;
      if (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_223A21900();
    __break(1u);
  }

LABEL_22:
  v23 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = *(v23 + 48) + 216 * a2;
  v25 = *(v35 + 80);
  *(v24 + 64) = *(v35 + 64);
  *(v24 + 80) = v25;
  v26 = *(v35 + 48);
  *(v24 + 32) = *(v35 + 32);
  *(v24 + 48) = v26;
  v27 = *(v35 + 144);
  *(v24 + 128) = *(v35 + 128);
  *(v24 + 144) = v27;
  v28 = *(v35 + 112);
  *(v24 + 96) = *(v35 + 96);
  *(v24 + 112) = v28;
  *(v24 + 208) = *(v35 + 208);
  v29 = *(v35 + 192);
  *(v24 + 176) = *(v35 + 176);
  *(v24 + 192) = v29;
  *(v24 + 160) = *(v35 + 160);
  v30 = *(v35 + 16);
  *v24 = *v35;
  *(v24 + 16) = v30;
  v31 = *(v23 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v33;
  }

  return result;
}

uint64_t sub_223A05A70(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_223A051A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_223A05F18();
      goto LABEL_12;
    }

    sub_223A06348(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_223A21940();
  sub_223A07600(v20, v5);
  result = sub_223A21970();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BB8, &qword_223A23778);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_223A07A68(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_223A21900();
  __break(1u);
  return result;
}

void *sub_223A05BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  v2 = *v0;
  v3 = sub_223A216B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_2239EF1D4(v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 216 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[5];
      v29[4] = v17[4];
      v29[5] = v20;
      v29[3] = v19;
      v21 = v17[6];
      v22 = v17[7];
      v23 = v17[9];
      v29[8] = v17[8];
      v29[9] = v23;
      v29[6] = v21;
      v29[7] = v22;
      v24 = v17[10];
      v25 = v17[11];
      v26 = v17[12];
      v30 = *(v17 + 26);
      v29[11] = v25;
      v29[12] = v26;
      v29[10] = v24;
      v27 = v17[1];
      v29[0] = *v17;
      v29[1] = v27;
      v29[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0xD8uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_223A05DBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B78, &qword_223A23728);
  v2 = *v0;
  v3 = sub_223A216B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_223A05F18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC8, &qword_223A23960);
  v2 = *v0;
  v3 = sub_223A216B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_223A06068(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B98, &qword_223A23748);
  result = sub_223A216C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v48 = v2;
    v49 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v26 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v29 = *(v3 + 48) + 216 * (v26 | (v7 << 6));
      v30 = *(v29 + 80);
      v32 = *(v29 + 32);
      v31 = *(v29 + 48);
      v55 = *(v29 + 64);
      v56 = v30;
      v53 = v32;
      v54 = v31;
      v33 = *(v29 + 96);
      v34 = *(v29 + 112);
      v35 = *(v29 + 144);
      v59 = *(v29 + 128);
      v60 = v35;
      v57 = v33;
      v58 = v34;
      v36 = *(v29 + 160);
      v37 = *(v29 + 176);
      v38 = *(v29 + 192);
      v64 = *(v29 + 208);
      v62 = v37;
      v63 = v38;
      v61 = v36;
      v39 = *(v29 + 16);
      v51 = *v29;
      v52 = v39;
      v40 = *(v6 + 40);
      sub_223A21940();
      sub_2239EF1D4(&v51, v50);
      sub_223A21290();
      sub_223A21290();
      result = sub_223A21970();
      v41 = -1 << *(v6 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v3 = v49;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v3 = v49;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 216 * v14;
      v16 = v52;
      *v15 = v51;
      v17 = v53;
      v18 = v54;
      v19 = v56;
      *(v15 + 64) = v55;
      *(v15 + 80) = v19;
      *(v15 + 32) = v17;
      *(v15 + 48) = v18;
      v20 = v57;
      v21 = v58;
      v22 = v60;
      *(v15 + 128) = v59;
      *(v15 + 144) = v22;
      *(v15 + 96) = v20;
      *(v15 + 112) = v21;
      v23 = v61;
      v24 = v62;
      v25 = v63;
      *(v15 + 208) = v64;
      *(v15 + 176) = v24;
      *(v15 + 192) = v25;
      *(v15 + 160) = v23;
      *(v15 + 16) = v16;
      ++*(v6 + 16);
    }

    v27 = v7;
    while (1)
    {
      v7 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v48;
        goto LABEL_28;
      }

      v28 = *(v8 + 8 * v7);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v11 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}
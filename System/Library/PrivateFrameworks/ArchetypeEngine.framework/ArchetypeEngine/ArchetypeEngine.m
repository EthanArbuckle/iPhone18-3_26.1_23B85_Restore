uint64_t ATBiomeMediaType.description.getter(unsigned __int8 a1)
{
  v1 = 1735290739;
  v2 = 0x6F6F626F69647561;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x74736163646F70;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ATBiomeMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_240FD488C();
  MEMORY[0x245CD6870](a1);
  return sub_240FD48BC();
}

uint64_t sub_240FB2BB8()
{
  v1 = *v0;
  sub_240FD488C();
  MEMORY[0x245CD6870](v1);
  return sub_240FD48BC();
}

uint64_t sub_240FB2C2C()
{
  v1 = *v0;
  sub_240FD488C();
  MEMORY[0x245CD6870](v1);
  return sub_240FD48BC();
}

uint64_t sub_240FB2C70()
{
  v1 = *v0;
  v2 = 1735290739;
  v3 = 0x6F6F626F69647561;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74736163646F70;
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

uint64_t ATBiomeMediaItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ATBiomeMediaItem.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ATBiomeMediaItem.album.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ATBiomeMediaItem.iTunesStoreIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ATBiomeMediaItem.link.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ATBiomeMediaItem.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ATBiomeMediaItem.bundleID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ATBiomeMediaItem.description.getter()
{
  v1 = *(v0 + 96);
  if (v1 <= 1)
  {
    goto LABEL_6;
  }

  if (v1 == 2)
  {
    sub_240FD46BC();

    strcpy(v7, "[audiobook (");
    BYTE5(v7[1]) = 0;
    HIWORD(v7[1]) = -5120;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    result = MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
    if (!v0[5])
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    MEMORY[0x245CD64D0](v0[4]);
    result = MEMORY[0x245CD64D0](0x2079622022, 0xE500000000000000);
    if (!v0[3])
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    MEMORY[0x245CD64D0](v0[2]);
    MEMORY[0x245CD64D0](0x657470616863202CLL, 0xEC00000022203A72);
    if (v0[1])
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    v5 = 0x6E776F6E6B6E755BLL;
    sub_240FD46BC();

    strcpy(v7, "[unknown (");
    BYTE3(v7[1]) = 0;
    HIDWORD(v7[1]) = -369098752;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    MEMORY[0x245CD64D0](0x656C746974205D29, 0xEB0000000022203ALL);
    if (v0[1])
    {
      v5 = *v0;
      v6 = v0[1];
    }

    else
    {
      v6 = 0xEF5D656C74697420;
    }

    MEMORY[0x245CD64D0](v5, v6);

    goto LABEL_21;
  }

  if (v1 != 3)
  {
    goto LABEL_14;
  }

  sub_240FD46BC();

  v7[0] = 0xD000000000000010;
  v7[1] = 0x8000000240FD5DF0;
  MEMORY[0x245CD64D0](v0[10], v0[11]);
  MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
  if (v0[1])
  {
LABEL_18:
    MEMORY[0x245CD64D0](*v0);
LABEL_21:
    v4 = 34;
    v3 = 0xE100000000000000;
    goto LABEL_22;
  }

  __break(1u);
LABEL_6:
  if (!v1)
  {
    sub_240FD46BC();

    strcpy(v7, "[song (");
    v7[1] = 0xE700000000000000;
    MEMORY[0x245CD64D0](v0[10], v0[11]);
    result = MEMORY[0x245CD64D0](572546345, 0xE400000000000000);
    if (v0[1])
    {
      MEMORY[0x245CD64D0](*v0);
      result = MEMORY[0x245CD64D0](0x2079622022, 0xE500000000000000);
      v3 = v0[3];
      if (v3)
      {
        v4 = v0[2];
LABEL_22:
        MEMORY[0x245CD64D0](v4, v3);
        return v7[0];
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_240FD46BC();

  strcpy(v7, "[podcast (");
  BYTE3(v7[1]) = 0;
  HIDWORD(v7[1]) = -369098752;
  MEMORY[0x245CD64D0](v0[10], v0[11]);
  result = MEMORY[0x245CD64D0](2236509, 0xE300000000000000);
  if (!v0[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x245CD64D0](v0[2]);
  result = MEMORY[0x245CD64D0](0x6F73697065202C22, 0xED000022203A6564);
  if (v0[1])
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_240FB3230()
{
  v1[44] = v0;
  v2 = sub_240FD443C();
  v1[45] = v2;
  v3 = *(v2 - 8);
  v1[46] = v3;
  v4 = *(v3 + 64) + 15;
  v1[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FB32F0, 0, 0);
}

uint64_t sub_240FB32F0()
{
  v1 = v0[44];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = *(v1 + 96);
    if (!v4)
    {
      v5 = 203;
      goto LABEL_9;
    }

    if (v4 == 1)
    {
      v5 = 301;
LABEL_9:
      v9 = [objc_opt_self() createBagForSubProfile];
      if (v9)
      {
        v10 = v9;
        v11 = objc_allocWithZone(MEMORY[0x277CEE570]);
        v12 = sub_240FD448C();
        v13 = sub_240FD448C();
        v14 = [v11 initWithType:v5 clientIdentifier:v12 clientVersion:v13 bag:v10];
        v0[48] = v14;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_240FD5170;
        *(v15 + 32) = v3;
        *(v15 + 40) = v2;

        v16 = sub_240FD452C();

        [v14 setItemIdentifiers_];

        v17 = [v14 perform];
        v0[49] = v17;
        v0[2] = v0;
        v0[7] = v0 + 42;
        v0[3] = sub_240FB35C4;
        v18 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5E8, &qword_240FD54E8);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_240FB3AE4;
        v0[13] = &block_descriptor_21;
        v0[14] = v18;
        [v17 resultWithCompletion_];
        v9 = v0 + 2;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x282200938](v9);
    }
  }

  v6 = v0[47];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240FB35C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_240FB39B0;
  }

  else
  {
    v3 = sub_240FB36D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_240FB36D4()
{
  v1 = *(v0 + 336);

  v2 = [v1 responseDataItems];
  if (!v2)
  {
    v17 = *(v0 + 384);

    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    goto LABEL_19;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5F8, &qword_240FD54F8);
  v4 = sub_240FD453C();

  if (!*(v4 + 16))
  {
    __break(1u);
    return;
  }

  v5 = *(v4 + 32);

  *(v0 + 288) = 0x7475626972747461;
  *(v0 + 296) = 0xEA00000000007365;
  sub_240FD467C();
  if (!*(v5 + 16) || (v6 = sub_240FB7028(v0 + 144), (v7 & 1) == 0))
  {

    sub_240FBA01C(v0 + 144);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    goto LABEL_17;
  }

  sub_240FB9F6C(*(v5 + 56) + 32 * v6, v0 + 256);
  sub_240FBA01C(v0 + 144);

  if (!*(v0 + 280))
  {
LABEL_17:
    v16 = *(v0 + 384);

LABEL_19:
    sub_240FBA1A8(v0 + 256, &qword_27E51E5F0, &qword_240FD54F0);
LABEL_20:
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = *(v0 + 384);

    goto LABEL_20;
  }

  v8 = *(v0 + 344);
  *(v0 + 304) = 7107189;
  *(v0 + 312) = 0xE300000000000000;
  sub_240FD467C();
  if (!*(v8 + 16) || (v9 = sub_240FB7028(v0 + 184), (v10 & 1) == 0))
  {
    v23 = *(v0 + 384);

    sub_240FBA01C(v0 + 184);
    goto LABEL_20;
  }

  v11 = *(v0 + 384);
  sub_240FB9F6C(*(v8 + 56) + 32 * v9, v0 + 224);

  sub_240FBA01C(v0 + 184);

  if (*(v0 + 248))
  {
    v12 = swift_dynamicCast();
    v13 = *(v0 + 320);
    if (v12)
    {
      v14 = *(v0 + 320);
    }

    else
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = *(v0 + 328);
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_240FBA1A8(v0 + 224, &qword_27E51E5F0, &qword_240FD54F0);
  v14 = 0;
  v15 = 0;
LABEL_22:
  v18 = *(v0 + 352);
  v19 = *(v18 + 72);

  *(v18 + 64) = v14;
  *(v18 + 72) = v15;
  v20 = *(v0 + 376);

  v21 = *(v0 + 8);

  v21();
}

uint64_t sub_240FB39B0()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[47];
  swift_willThrow();

  sub_240FD442C();
  v4 = sub_240FD441C();
  v5 = sub_240FD45DC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[50];
  v8 = v0[47];
  v9 = v0[48];
  v10 = v0[45];
  v11 = v0[46];
  if (v6)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_240FB1000, v4, v5, "Failed to query the media server for the link.", v12, 2u);
    MEMORY[0x245CD6DB0](v12, -1, -1);
  }

  (*(v11 + 8))(v8, v10);
  v13 = v0[47];

  v14 = v0[1];

  return v14();
}

uint64_t sub_240FB3AE4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ATBiomeMediaItem.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_240FD48AC();
    sub_240FD44DC();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_240FD48AC();
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_240FD48AC();
      sub_240FD44DC();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_240FD48AC();
  if (v0[5])
  {
LABEL_4:
    v3 = v0[4];
    sub_240FD48AC();
    sub_240FD44DC();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_240FD48AC();
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_240FD48AC();
    goto LABEL_12;
  }

LABEL_9:
  sub_240FD48AC();
  if (!v0[7])
  {
    goto LABEL_10;
  }

LABEL_5:
  v4 = v0[6];
  sub_240FD48AC();
  sub_240FD44DC();
  if (!v0[9])
  {
    goto LABEL_11;
  }

LABEL_6:
  v5 = v0[8];
  sub_240FD48AC();
  sub_240FD44DC();
LABEL_12:
  v6 = v0[10];
  v7 = v0[11];
  sub_240FD44DC();
  return MEMORY[0x245CD6870](*(v0 + 96));
}

uint64_t ATBiomeMediaItem.hashValue.getter()
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)();
  return sub_240FD48BC();
}

BOOL sub_240FB3D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13);
}

uint64_t sub_240FB3DAC()
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)();
  return sub_240FD48BC();
}

uint64_t sub_240FB3DF0()
{
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)();
  return sub_240FD48BC();
}

uint64_t ATBiomeDataRetriever.getTopPlayedMedia(k:start:end:mediaTypesOfInterest:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[159] = a5;
  v5[158] = a4;
  v5[157] = a3;
  v5[156] = a2;
  v5[155] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198);
  v5[160] = v6;
  v7 = *(v6 - 8);
  v5[161] = v7;
  v8 = *(v7 + 64) + 15;
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0) - 8) + 64) + 15;
  v5[164] = swift_task_alloc();
  v10 = sub_240FD422C();
  v5[165] = v10;
  v11 = *(v10 - 8);
  v5[166] = v11;
  v12 = *(v11 + 64) + 15;
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v5[169] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FB3FDC, 0, 0);
}

unint64_t sub_240FB3FDC()
{
  v173 = v0;
  v1 = v0[168];
  v2 = v0[156];
  result = sub_240FD421C();
  if ((v2 * 86400) >> 64 != (86400 * v2) >> 63)
  {
    goto LABEL_82;
  }

  v4 = v0[169];
  v5 = v0[168];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[157];
  sub_240FD41AC();
  v9 = *(v6 + 8);
  v0[170] = v9;
  v0[171] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  result = sub_240FD421C();
  if ((v8 * 86400) >> 64 != (86400 * v8) >> 63)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v13 = v0[166];
  v14 = v0[165];
  v15 = v0[164];
  sub_240FD41AC();
  v9(v11, v14);
  (*(v13 + 16))(v15, v12, v14);
  (*(v13 + 56))(v15, 0, 1, v14);
  v16 = sub_240FD41BC();
  v162 = v9;
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = v0[165];
    v19 = v0[164];
    v17 = sub_240FD41BC();
    v9(v19, v18);
  }

  v20 = v0[158];
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v16 endDate:v17 maxEvents:v0[159] lastN:v0[159] reversed:0];
  v0[172] = v21;

  v22 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v23 = [v22 NowPlaying];
  swift_unknownObjectRelease();
  v24 = [v23 publisherWithOptions_];
  v0[173] = v24;

  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  *(v25 + 16) = MEMORY[0x277D84F90];
  v0[174] = v25;
  v0[144] = sub_240FB52B4;
  v0[145] = 0;
  v0[140] = MEMORY[0x277D85DD0];
  v0[141] = 1107296256;
  v0[142] = sub_240FB548C;
  v0[143] = &block_descriptor;
  v27 = _Block_copy(v0 + 140);
  v28 = swift_allocObject();
  *(v28 + 16) = v20;
  *(v28 + 24) = v25;
  v0[150] = sub_240FB9698;
  v0[151] = v28;
  v0[146] = MEMORY[0x277D85DD0];
  v0[147] = 1107296256;
  v0[148] = sub_240FB6184;
  v0[149] = &block_descriptor_7;
  v29 = _Block_copy(v0 + 146);
  v30 = v0[151];

  v31 = [v24 sinkWithCompletion:v27 shouldContinue:v29];
  _Block_release(v29);
  _Block_release(v27);

  swift_beginAccess();
  v32 = *(v25 + 16);
  v160 = v0;
  v157 = *(v32 + 16);
  if (v157)
  {
    v154 = v0[161];
    aBlock = v0[160];
    v156 = v32 + 32;

    v33 = 0;
    v34 = v0;
    v35 = v162;
    v155 = v32;
    while (1)
    {
      v158 = v26;
      v159 = v33;
      v36 = (v156 + 112 * v33);
      v37 = v36[3];
      v38 = v36[4];
      v39 = v36[5];
      *(v34 + 7) = v36[6];
      v40 = v36[1];
      v41 = v36[2];
      *(v34 + 1) = *v36;
      *(v34 + 2) = v40;
      *(v34 + 5) = v38;
      *(v34 + 6) = v39;
      *(v34 + 3) = v41;
      *(v34 + 4) = v37;
      v163 = v34[15];
      if (*(v163 + 16))
      {
        v42 = v34[165];
        v43 = v34[163];
        v161 = *(v163 + 16);
        v44 = v163 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
        sub_240FB96A0((v34 + 2), (v34 + 16));
        v45 = *(v154 + 72);
        sub_240FB99A0(v44, v43, &qword_27E51E570, &qword_240FD5198);
        v46 = *v43;
        result = v35(&v43[aBlock[12]], v42);
        if (v46 != 2)
        {
          if (!*(v163 + 16))
          {
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v47 = v34[165];
          v48 = v34[163];
          sub_240FB99A0(v44, v48, &qword_27E51E570, &qword_240FD5198);
          v35((v48 + aBlock[12]), v47);
        }

        v49 = 0.0;
        if (v161 != 1)
        {
          v50 = v161;
          v51 = 1;
          do
          {
            v55 = v34[165];
            v56 = v34[163];
            v57 = v45;
            sub_240FB99A0(v44 + v45, v56, &qword_27E51E570, &qword_240FD5198);
            v58 = *v56;
            result = v35(&v56[aBlock[12]], v55);
            if (v58 != 2)
            {
              if (v51 >= *(v163 + 16))
              {
                goto LABEL_76;
              }

              v59 = v34[165];
              v60 = v34[163];
              sub_240FB99A0(v44 + v57, v60, &qword_27E51E570, &qword_240FD5198);
              v61 = *v60;
              result = v35(&v60[aBlock[12]], v59);
              if (v61 != 3)
              {
                goto LABEL_14;
              }
            }

            if (v51 - 1 >= *(v163 + 16))
            {
              __break(1u);
              goto LABEL_76;
            }

            v62 = v34[165];
            v63 = v34[163];
            sub_240FB99A0(v44, v63, &qword_27E51E570, &qword_240FD5198);
            v64 = *v63;
            result = v35(&v63[aBlock[12]], v62);
            if (v64 == 1)
            {
              if (v51 >= *(v163 + 16))
              {
                goto LABEL_77;
              }

              v65 = v34[165];
              v66 = v34[163];
              v67 = v34[162];
              sub_240FB99A0(v44 + v57, v66, &qword_27E51E570, &qword_240FD5198);
              v68 = aBlock[12];
              v53 = v161;
              sub_240FB99A0(v44, v67, &qword_27E51E570, &qword_240FD5198);
              v69 = aBlock[12];
              sub_240FD419C();
              v71 = v70;
              v72 = (v67 + v69);
              v34 = v160;
              v162(v72, v65);
              v52 = v162;
              v162((v66 + v68), v65);
              v49 = v49 + v71;
            }

            else
            {
LABEL_14:
              v52 = v35;
              v53 = v50;
            }

            ++v51;
            v44 += v57;
            v50 = v53;
            v54 = v53 == v51;
            v45 = v57;
            v35 = v52;
          }

          while (!v54);
        }
      }

      else
      {
        sub_240FB96A0((v34 + 2), (v34 + 100));
        v49 = 0.0;
      }

      sub_240FB96D8((v34 + 2), (v34 + 127));
      v26 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_240FB66E4(0, v158[2] + 1, 1, v158);
      }

      v74 = v26[2];
      v73 = v26[3];
      if (v74 >= v73 >> 1)
      {
        v26 = sub_240FB66E4((v73 > 1), v74 + 1, 1, v26);
      }

      v33 = v159 + 1;
      result = sub_240FB9710((v34 + 2));
      v75 = *(v34 + 6);
      v170 = *(v34 + 5);
      v171 = v75;
      LOBYTE(v172) = *(v34 + 112);
      v76 = *(v34 + 4);
      v168 = *(v34 + 3);
      v169 = v76;
      v77 = *(v34 + 2);
      v166 = *(v34 + 1);
      v78 = v166;
      v167 = v77;
      v26[2] = v74 + 1;
      v79 = &v26[14 * v74];
      v80 = v172;
      v82 = v170;
      v81 = v171;
      *(v79 + 5) = v169;
      *(v79 + 6) = v82;
      *(v79 + 7) = v81;
      v79[16] = v80;
      v83 = v168;
      *(v79 + 3) = v167;
      *(v79 + 4) = v83;
      *(v79 + 2) = v78;
      *(v79 + 17) = v49;
      if (v159 + 1 == v157)
      {

        goto LABEL_33;
      }

      if (v33 >= *(v155 + 16))
      {
        goto LABEL_78;
      }
    }
  }

  v34 = v0;
LABEL_33:
  v34[175] = v26;
  v84 = sub_240FB9740(MEMORY[0x277D84F90]);
  v85 = v26[2];
  if (v85)
  {
    v86 = 0;
    v87 = v26 + 4;
    v88 = v85 - 1;
    while (1)
    {
      v89 = *v87;
      v90 = v87[2];
      *(v34 + 16) = v87[1];
      *(v34 + 17) = v90;
      *(v34 + 15) = v89;
      v91 = v87[3];
      v92 = v87[4];
      v93 = v87[6];
      *(v34 + 20) = v87[5];
      *(v34 + 21) = v93;
      *(v34 + 18) = v91;
      *(v34 + 19) = v92;
      v95 = v87[4];
      v94 = v87[5];
      v96 = v87[3];
      *(v34 + 1008) = *(v87 + 96);
      *(v34 + 61) = v95;
      *(v34 + 62) = v94;
      *(v34 + 60) = v96;
      v97 = *v87;
      v98 = v87[2];
      *(v34 + 58) = v87[1];
      *(v34 + 59) = v98;
      *(v34 + 57) = v97;
      if (v84[2])
      {
        sub_240FB99A0((v34 + 30), (v34 + 44), &qword_27E51E580, &qword_240FD51A8);
        v99 = sub_240FB706C(v34 + 114);
        v100 = 0.0;
        if (v101)
        {
          v100 = *(v84[7] + 8 * v99);
        }
      }

      else
      {
        sub_240FB99A0((v34 + 30), (v34 + 86), &qword_27E51E580, &qword_240FD51A8);
        v100 = 0.0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v166 = v84;
      result = sub_240FB706C(v34 + 114);
      v104 = v84[2];
      v105 = (v103 & 1) == 0;
      v106 = __OFADD__(v104, v105);
      v107 = v104 + v105;
      if (v106)
      {
        goto LABEL_79;
      }

      v108 = v103;
      if (v84[3] >= v107)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v120 = result;
          sub_240FB8484();
          result = v120;
        }
      }

      else
      {
        sub_240FB7E7C(v107, isUniquelyReferenced_nonNull_native);
        result = sub_240FB706C(v160 + 114);
        if ((v108 & 1) != (v109 & 1))
        {

          return sub_240FD481C();
        }
      }

      v110 = v100 + *(v160 + 43);
      if (v108)
      {
        v111 = result;
        result = sub_240FBA1A8((v160 + 30), &qword_27E51E580, &qword_240FD51A8);
        v84 = v166;
        *(*(v166 + 56) + 8 * v111) = v110;
        v34 = v160;
        if (v88 == v86)
        {
          break;
        }
      }

      else
      {
        v84 = v166;
        *(v166 + 8 * (result >> 6) + 64) |= 1 << result;
        v112 = v84[6] + 104 * result;
        v114 = *(v160 + 58);
        v113 = *(v160 + 59);
        *v112 = *(v160 + 57);
        *(v112 + 16) = v114;
        *(v112 + 32) = v113;
        v115 = *(v160 + 60);
        v116 = *(v160 + 61);
        v117 = *(v160 + 62);
        *(v112 + 96) = *(v160 + 1008);
        *(v112 + 64) = v116;
        *(v112 + 80) = v117;
        *(v112 + 48) = v115;
        *(v84[7] + 8 * result) = v110;
        v118 = v84[2];
        v106 = __OFADD__(v118, 1);
        v119 = v118 + 1;
        if (v106)
        {
          goto LABEL_81;
        }

        v34 = v160;
        v84[2] = v119;
        if (v88 == v86)
        {
          break;
        }
      }

      ++v86;
      v87 += 7;
      if (v86 >= v26[2])
      {
        goto LABEL_80;
      }
    }
  }

  v34[176] = v84;
  v121 = v84[2];
  if (v121)
  {
    v122 = sub_240FB6F90(v84[2], 0);
    v123 = sub_240FB8C88(&v166, (v122 + 4), v121, v84);

    result = sub_240FB98BC();
    if (v123 == v121)
    {
      v34 = v160;
      goto LABEL_56;
    }

LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v122 = MEMORY[0x277D84F90];
LABEL_56:
  *&v166 = v122;
  result = sub_240FB6380(&v166);
  v124 = v34[155];
  if ((v124 & 0x8000000000000000) != 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v125 = v166;
  v126 = *(v166 + 16);
  if (v126 >= v124)
  {
    v126 = v34[155];
  }

  v34[177] = v126;
  if (v124 && v126)
  {
    v127 = v125 + 32;
    v128 = (2 * v126) | 1;
    v34[178] = 0;
    result = swift_isUniquelyReferenced_nonNull();
    if (result)
    {
      v129 = 0;
    }

    else
    {
      sub_240FB98C4(v125 + 32, 0, v128);
      v149 = v148;
      v127 = v150;
      v129 = v151;
      v128 = v152;
      result = swift_unknownObjectRelease();
      v125 = v149;
      v34 = v160;
    }

    v34[182] = v125;
    v34[181] = v127;
    v34[180] = v129;
    v34[179] = v128;
    if (v128 >= 2 && v129 <= 0)
    {
      v153 = swift_task_alloc();
      v34[183] = v153;
      *v153 = v34;
      v153[1] = sub_240FB4D90;

      return sub_240FB3230();
    }

LABEL_86:
    __break(1u);
    return result;
  }

  v130 = v34[176];
  v131 = v34[175];
  aBlocka = v34[174];
  v132 = v34[173];
  v133 = v34[172];
  v134 = v34[171];
  v135 = v34[170];
  v136 = v34;
  v137 = v34[169];
  v138 = v136[167];
  v139 = v136[165];

  v135(v138, v139);
  v135(v137, v139);

  swift_unknownObjectRelease();

  v140 = v136[169];
  v141 = v136[168];
  v142 = v136[167];
  v143 = v136[164];
  v144 = v136[163];
  v145 = v136[162];

  v146 = v136[1];
  v147 = MEMORY[0x277D84F90];

  return v146(v147);
}

uint64_t sub_240FB4D90()
{
  v1 = *(*v0 + 1464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240FB4E8C, 0, 0);
}

void sub_240FB4E8C()
{
  v1 = *(v0 + 1424) + 1;
  if (*(v0 + 1240))
  {
    v2 = (*(v0 + 1416) & 0x7FFFFFFFFFFFFFFFLL) == v1;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    v3 = *(v0 + 1456);
    v4 = *(v0 + 1448);
    v5 = *(v0 + 1440);
    v6 = *(v0 + 1432);
    *(v0 + 1424) = v1;
    if ((v6 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      sub_240FB98C4(v4, v5, v6);
      v8 = v7;
      v4 = v9;
      v5 = v10;
      v6 = v11;
      swift_unknownObjectRelease();
      v3 = v8;
    }

    *(v0 + 1456) = v3;
    *(v0 + 1448) = v4;
    *(v0 + 1440) = v5;
    *(v0 + 1432) = v6;
    if (v1 >= v5 && v1 < v6 >> 1)
    {
      v13 = swift_task_alloc();
      *(v0 + 1464) = v13;
      *v13 = v0;
      v13[1] = sub_240FB4D90;

      sub_240FB3230();
      return;
    }

    goto LABEL_33;
  }

  v14 = *(v0 + 1432) >> 1;
  v15 = *(v0 + 1440);
  v16 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    goto LABEL_32;
  }

  v17 = *(v0 + 1456);
  if (v16)
  {
    v18 = *(v0 + 1448);
    v57 = MEMORY[0x277D84F90];
    sub_240FB87B0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_34:
      __break(1u);
      return;
    }

    if (v15 < v14)
    {
      v19 = v57;
      v20 = v15 + 1;
      v21 = (v18 + 112 * v15);
      while (1)
      {
        v22 = *v21;
        v23 = v21[2];
        *(v0 + 480) = v21[1];
        *(v0 + 496) = v23;
        *(v0 + 464) = v22;
        v24 = v21[3];
        v25 = v21[4];
        v26 = v21[6];
        *(v0 + 544) = v21[5];
        *(v0 + 560) = v26;
        *(v0 + 512) = v24;
        *(v0 + 528) = v25;
        v58 = *v21;
        v59 = v21[1];
        LOBYTE(v64) = *(v21 + 96);
        v62 = v21[4];
        v63 = v21[5];
        v60 = v21[2];
        v61 = v21[3];
        v27 = *(v0 + 568);
        sub_240FB99A0(v0 + 464, v0 + 576, &qword_27E51E588, &qword_240FD51B8);
        v29 = *(v57 + 16);
        v28 = *(v57 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_240FB87B0((v28 > 1), v29 + 1, 1);
        }

        *(v57 + 16) = v29 + 1;
        v30 = v57 + 112 * v29;
        *(v30 + 48) = v59;
        *(v30 + 64) = v60;
        *(v30 + 32) = v58;
        *(v30 + 128) = v64;
        *(v30 + 96) = v62;
        *(v30 + 112) = v63;
        *(v30 + 80) = v61;
        *(v30 + 136) = v27;
        if (v14 == v20)
        {
          break;
        }

        if (v20 >= v15)
        {
          v21 += 7;
          if (v20++ < v14)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v32 = *(v0 + 1408);
      v33 = *(v0 + 1400);
      v55 = *(v0 + 1392);
      v34 = *(v0 + 1376);
      v35 = *(v0 + 1368);
      v36 = *(v0 + 1360);
      v37 = *(v0 + 1352);
      v38 = *(v0 + 1336);
      v39 = *(v0 + 1320);

      v36(v38, v39);
      v36(v37, v39);

      swift_unknownObjectRelease();

      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = *(v0 + 1408);
  v41 = *(v0 + 1400);
  v56 = *(v0 + 1392);
  v42 = *(v0 + 1376);
  v43 = *(v0 + 1368);
  v44 = *(v0 + 1360);
  v45 = *(v0 + 1352);
  v46 = *(v0 + 1336);
  v47 = *(v0 + 1320);

  v44(v46, v47);
  v44(v45, v47);

  swift_unknownObjectRelease();

  v19 = MEMORY[0x277D84F90];
LABEL_28:
  v48 = *(v0 + 1352);
  v49 = *(v0 + 1344);
  v50 = *(v0 + 1336);
  v51 = *(v0 + 1312);
  v52 = *(v0 + 1304);
  v53 = *(v0 + 1296);

  v54 = *(v0 + 8);

  v54(v19);
}

id sub_240FB52B4(void *a1)
{
  v2 = sub_240FD443C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    sub_240FD442C();
    v9 = v8;
    v10 = sub_240FD441C();
    v11 = sub_240FD45DC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v9;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_240FB1000, v10, v11, "Failed to access Now Playing Biome stream with error: %@", v12, 0xCu);
      sub_240FBA1A8(v13, &qword_27E51E730, &unk_240FD5530);
      MEMORY[0x245CD6DB0](v13, -1, -1);
      MEMORY[0x245CD6DB0](v12, -1, -1);
    }

    else
    {
      v14 = v10;
      v10 = v9;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_240FB548C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_240FB54F4(void *a1, uint64_t a2, uint64_t a3)
{
  v129 = a2;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198);
  v128 = *(v4 - 8);
  v5 = *(v128 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v119[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v119[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v119[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v119[-v16];
  v18 = sub_240FD422C();
  v132 = *(v18 - 8);
  v133 = v18;
  v19 = *(v132 + 64);
  MEMORY[0x28223BE20](v18);
  v131 = &v119[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = [a1 eventBody];
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  v23 = [v21 bundleID];

  if (!v23)
  {
    return 1;
  }

  v126 = sub_240FD449C();
  v25 = v24;

  v26 = [a1 eventBody];
  if (!v26 || (v127 = v25, v27 = v26, v28 = [v26 duration], v27, !v28))
  {
LABEL_23:

    return 1;
  }

  v29 = [a1 eventBody];
  if (!v29)
  {

    (*(v132 + 56))(v17, 1, 1, v133);
LABEL_13:
    sub_240FBA1A8(v17, &qword_27E51E578, &qword_240FD51A0);
    return 1;
  }

  v30 = v29;
  v31 = [v29 absoluteTimestamp];

  if (v31)
  {
    sub_240FD41FC();

    v32 = v132;
    v33 = *(v132 + 56);
    v34 = v15;
    v35 = 0;
  }

  else
  {
    v32 = v132;
    v33 = *(v132 + 56);
    v34 = v15;
    v35 = 1;
  }

  v36 = v133;
  v33(v34, v35, 1, v133);
  sub_240FBA140(v15, v17, &qword_27E51E578, &qword_240FD51A0);
  if ((*(v32 + 48))(v17, 1, v36) == 1)
  {

    goto LABEL_13;
  }

  v37 = v131;
  (*(v32 + 32))(v131, v17, v36);
  v38 = [a1 eventBody];
  if (!v38)
  {
    (*(v32 + 8))(v37, v36);
    goto LABEL_23;
  }

  v39 = v38;
  v120 = [v38 playbackState];

  v40 = [a1 eventBody];
  if (v40 && (v41 = v40, v42 = [v40 title], v41, v42))
  {
    v43 = sub_240FD449C();
    v124 = v44;
    v125 = v43;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v45 = v127;
  v46 = [a1 eventBody];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 artist];

    if (v48)
    {
      v49 = sub_240FD449C();
      v122 = v50;
      v123 = v49;
    }

    else
    {
      v122 = 0;
      v123 = 0;
    }

    v45 = v127;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v52 = [a1 eventBody];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 album];

    if (v54)
    {
      v121 = sub_240FD449C();
      v56 = v55;
    }

    else
    {
      v121 = 0;
      v56 = 0;
    }

    v45 = v127;
  }

  else
  {
    v121 = 0;
    v56 = 0;
  }

  v57 = [a1 eventBody];
  if (v57)
  {
    v58 = v57;
    v59 = [v57 iTunesStoreIdentifier];

    if (v59)
    {
      v60 = sub_240FD449C();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v45 = v127;
  }

  else
  {
    v60 = 0;
    v62 = 0;
  }

  *(&v118 + 1) = v45;
  *&v118 = v126;
  sub_240FB8E6C(v125, v124, v123, v122, v121, v56, v60, v62, v181, 0, v118);
  v177 = v181[2];
  v178 = v181[3];
  v179 = v181[4];
  v63 = v183;
  v180 = v182;
  v175 = v181[0];
  v176 = v181[1];
  v64 = v184;
  v65 = (v129 + 32);
  v66 = *(v129 + 16);
  do
  {
    if (!v66)
    {
      (*(v132 + 8))(v131, v133);
      sub_240FBA110(v181);
      return 1;
    }

    v67 = *v65++;
    --v66;
  }

  while (v67 != v184);
  v68 = v130;
  swift_beginAccess();
  v69 = *(v68 + 16);
  v70 = *(v69 + 16);
  if (!v70)
  {
    goto LABEL_51;
  }

  v71 = (v69 + 112 * v70);
  v72 = *(v71 - 5);
  v73 = *(v71 - 3);
  v169 = *(v71 - 4);
  v170 = v73;
  v168 = v72;
  v74 = *(v71 - 2);
  v75 = *(v71 - 1);
  v76 = *v71;
  v174 = *(v71 + 16);
  v172 = v75;
  v173 = v76;
  v171 = v74;
  v77 = *(v71 - 2);
  v164 = *(v71 - 3);
  v165 = v77;
  v166 = *(v71 - 1);
  v167 = *v71;
  v78 = *(v71 - 4);
  v162 = *(v71 - 5);
  v163 = v78;
  v79 = *(&v76 + 1);
  v80 = v174;
  *(&v161[2] + 7) = v177;
  *(&v161[3] + 7) = v178;
  *(&v161[4] + 7) = v179;
  *(&v161[5] + 7) = v180;
  *(v161 + 7) = v175;
  *(&v161[1] + 7) = v176;
  if (*(&v76 + 1))
  {
    v81 = v71 - 5;
    v82 = v81[3];
    v143 = v81[2];
    v144 = v82;
    v145 = v81[4];
    v146 = *(v81 + 10);
    v83 = v81[1];
    v141 = *v81;
    v142 = v83;
    if (v63)
    {
      v134[2] = v177;
      v134[3] = v178;
      v134[4] = v179;
      v134[0] = v175;
      v134[1] = v176;
      *&v135 = v180;
      *(&v135 + 1) = v63;
      v136 = v64;
      v147 = v175;
      v148 = v176;
      v153 = v64;
      v151 = v179;
      v152 = v135;
      v149 = v177;
      v150 = v178;
      v185[0] = v141;
      v185[1] = v142;
      v185[3] = v144;
      v185[4] = v145;
      v185[2] = v143;
      v186 = v146;
      v187 = *(&v76 + 1);
      v188 = v174;
      LODWORD(v129) = _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(v185, &v147);
      sub_240FB96D8(&v168, v137);
      sub_240FB96D8(v181, v137);
      v56 = &qword_240FD5520;
      sub_240FBA1A8(v134, &qword_27E51E620, &qword_240FD5520);
      v137[2] = v164;
      v137[3] = v165;
      v137[4] = v166;
      v137[0] = v162;
      v137[1] = v163;
      v138 = v167;
      v139 = v79;
      v140 = v80;
      sub_240FBA1A8(v137, &qword_27E51E620, &qword_240FD5520);
      if ((v129 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

LABEL_50:
    v149 = v164;
    v150 = v165;
    v151 = v166;
    v147 = v162;
    v148 = v163;
    *&v152 = v167;
    *(&v152 + 1) = *(&v76 + 1);
    v153 = v174;
    v155 = v161[1];
    v154 = v161[0];
    *&v158[15] = *(&v161[4] + 15);
    *v158 = v161[4];
    v157 = v161[3];
    v156 = v161[2];
    v159 = v63;
    v160 = v64;
    sub_240FB96D8(&v168, v185);
    sub_240FB96D8(v181, v185);
    sub_240FBA1A8(&v147, &qword_27E51E610, &qword_240FD5510);
    goto LABEL_51;
  }

  if (v63)
  {
    goto LABEL_50;
  }

  v149 = v164;
  v150 = v165;
  v151 = v166;
  v147 = v162;
  v148 = v163;
  v152 = v167;
  v153 = v174;
  sub_240FB96D8(&v168, v185);
  sub_240FB96D8(v181, v185);
  sub_240FBA1A8(&v147, &qword_27E51E620, &qword_240FD5520);
LABEL_57:
  v100 = v130;
  swift_beginAccess();
  v101 = *(v100 + 16);
  v102 = *(v101 + 16);
  if (!v102 || (v103 = *(v101 + 112 * v102 + 24), (v104 = *(v103 + 16)) == 0) || (sub_240FB99A0(v103 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * (v104 - 1), v10, &qword_27E51E570, &qword_240FD5198), v105 = *v10, (*(v132 + 8))(&v10[*(v4 + 48)], v133), v105 != 3))
  {
    sub_240FBA110(v181);
    v106 = v130;
    swift_beginAccess();
    v107 = *(v106 + 16);
    v108 = *(v107 + 2);
    v109 = *(v4 + 48);
    *v8 = v120;
    v110 = v132;
    v111 = v133;
    (*(v132 + 16))(v8 + v109, v131, v133);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v106 + 16) = v107;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v108)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v107 = sub_240FCB078(v107);
      *(v130 + 16) = v107;
      if (v108)
      {
LABEL_62:
        if (v108 <= *(v107 + 2))
        {
          v113 = &v107[112 * v108];
          v114 = *(v113 + 3);
          v108 = (v113 + 24);
          v56 = v114;
          v115 = swift_isUniquelyReferenced_nonNull_native();
          *v108 = v114;
          if (v115)
          {
LABEL_64:
            v117 = v56[2];
            v116 = v56[3];
            if (v117 >= v116 >> 1)
            {
              v56 = sub_240FB6834(v116 > 1, v117 + 1, 1, v56);
              *v108 = v56;
            }

            v56[2] = v117 + 1;
            sub_240FBA140(v8, v56 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v117, &qword_27E51E570, &qword_240FD5198);
            *(v130 + 16) = v107;
            swift_endAccess();
            (*(v110 + 8))(v131, v111);
            return 1;
          }

LABEL_70:
          v56 = sub_240FB6834(0, v56[2] + 1, 1, v56);
          *v108 = v56;
          goto LABEL_64;
        }

LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    __break(1u);
    goto LABEL_69;
  }

LABEL_51:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E618, &qword_240FD5518);
  v84 = *(v128 + 72);
  v85 = (*(v128 + 80) + 32) & ~*(v128 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_240FD5170;
  v87 = *(v4 + 48);
  *(v86 + v85) = v120;
  v88 = v131;
  (*(v132 + 16))(v86 + v85 + v87, v131, v133);
  v89 = v130;
  swift_beginAccess();
  v90 = *(v89 + 16);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  *(v89 + 16) = v90;
  if ((v91 & 1) == 0)
  {
    v90 = sub_240FB6A24(0, *(v90 + 2) + 1, 1, v90);
    *(v130 + 16) = v90;
  }

  v93 = *(v90 + 2);
  v92 = *(v90 + 3);
  if (v93 >= v92 >> 1)
  {
    v90 = sub_240FB6A24((v92 > 1), v93 + 1, 1, v90);
  }

  v170 = v177;
  v171 = v178;
  v172 = v179;
  *&v173 = v180;
  v94 = v175;
  v168 = v175;
  v169 = v176;
  *(v90 + 2) = v93 + 1;
  v95 = &v90[112 * v93];
  v96 = v173;
  v98 = v171;
  v97 = v172;
  *(v95 + 4) = v170;
  *(v95 + 5) = v98;
  *(v95 + 6) = v97;
  *(v95 + 14) = v96;
  v99 = v169;
  *(v95 + 2) = v94;
  *(v95 + 3) = v99;
  *(v95 + 15) = v63;
  v95[128] = v64;
  LODWORD(v96) = v161[0];
  *(v95 + 33) = *(v161 + 3);
  *(v95 + 129) = v96;
  *(v95 + 17) = v86;
  *(v130 + 16) = v90;
  swift_endAccess();
  (*(v132 + 8))(v88, v133);
  return 1;
}

uint64_t sub_240FB6184(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id variable initialization expression of ATLocationRetriever.locationManager()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBFC10]);

  return [v0 init];
}

id variable initialization expression of ATMegadomeLifeEvent.dateFormatter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA968]);

  return [v0 init];
}

uint64_t variable initialization expression of ATSpotlightDataRetriever.oneYearBack()
{
  v0 = sub_240FD422C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD421C();
  sub_240FD41AC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_240FB6380(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_240FCB228(v2);
  }

  v3 = v2[2];
  v36[0] = (v2 + 4);
  v36[1] = v3;
  result = sub_240FD47CC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 17;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 14))
          {
            break;
          }

          v13 = v12 - 13;
          v14 = *(v12 + 1);
          v15 = *(v12 + 5);
          v30 = *(v12 + 3);
          v31 = v15;
          v29 = v14;
          v16 = *(v12 + 7);
          v17 = *(v12 + 9);
          v18 = *(v12 + 13);
          v34 = *(v12 + 11);
          v35 = v18;
          v32 = v16;
          v33 = v17;
          v19 = *(v12 - 9);
          *(v12 + 7) = *(v12 - 7);
          v20 = *(v12 - 3);
          *(v12 + 9) = *(v12 - 5);
          *(v12 + 11) = v20;
          *(v12 + 13) = *(v12 - 1);
          v21 = *(v12 - 11);
          *(v12 + 1) = *(v12 - 13);
          *(v12 + 3) = v21;
          *(v12 + 5) = v19;
          v22 = v29;
          v23 = v31;
          v13[1] = v30;
          v13[2] = v23;
          *v13 = v22;
          v24 = v32;
          v25 = v33;
          v26 = v35;
          v13[5] = v34;
          v13[6] = v26;
          v13[3] = v24;
          v13[4] = v25;
          v12 -= 14;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 14;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E588, &qword_240FD51B8);
      v7 = sub_240FD455C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v29 = v7 + 32;
    *(&v29 + 1) = v6;
    sub_240FB75D0(&v29, v28, v36, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

_DWORD *sub_240FB65B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_240FB65E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D0, &qword_240FD54D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_240FB66E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5E0, &qword_240FD54E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E580, &qword_240FD51A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_240FB6834(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E618, &qword_240FD5518);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E570, &qword_240FD5198) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

char *sub_240FB6A24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E628, &qword_240FD5528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_240FB6B4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_240FB6C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B0, &qword_240FD54B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_240FB6DB4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_240FB6F90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E608, &qword_240FD5508);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

unint64_t sub_240FB7028(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_240FD465C();

  return sub_240FB7150(a1, v5);
}

unint64_t sub_240FB706C(void *a1)
{
  v3 = *(v1 + 40);
  sub_240FD488C();
  ATBiomeMediaItem.hash(into:)();
  v4 = sub_240FD48BC();

  return sub_240FB7218(a1, v4);
}

unint64_t sub_240FB70D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_240FD488C();
  sub_240FD44DC();
  v6 = sub_240FD48BC();

  return sub_240FB7518(a1, a2, v6);
}

unint64_t sub_240FB7150(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_240FBA070(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CD6640](v9, a1);
      sub_240FBA01C(v9);
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

unint64_t sub_240FB7218(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = a1[1];
    v61 = *a1;
    v9 = *(v2 + 48);
    v55 = v2 + 64;
    v53 = v9;
    v54 = ~v4;
    do
    {
      v10 = v9 + 104 * v5;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = *(v10 + 24);
      v13 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *(v10 + 48);
      v17 = *(v10 + 56);
      v18 = *(v10 + 64);
      v20 = *(v10 + 72);
      v19 = *(v10 + 80);
      v21 = *(v10 + 88);
      v22 = *(v10 + 96);
      if (v11)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        if (*v10 != v61 || v11 != v8)
        {
          v58 = *(v10 + 56);
          v59 = *(v10 + 48);
          v57 = *(v10 + 64);
          v24 = *(v10 + 72);
          v25 = v8;
          v26 = *(v10 + 88);
          v27 = *(v10 + 80);
          v28 = *(v10 + 96);
          v29 = *(v10 + 40);
          v30 = *(v10 + 32);
          v31 = sub_240FD47FC();
          v13 = v30;
          v15 = v29;
          v22 = v28;
          v19 = v27;
          v21 = v26;
          v8 = v25;
          v20 = v24;
          v18 = v57;
          v17 = v58;
          v16 = v59;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      v32 = v6[3];
      if (v14)
      {
        if (!v32)
        {
          goto LABEL_4;
        }

        if (v12 != v6[2] || v14 != v32)
        {
          v34 = v22;
          v60 = v15;
          v35 = v13;
          v36 = sub_240FD47FC();
          v13 = v35;
          v15 = v60;
          v22 = v34;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v36 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v32)
      {
        goto LABEL_4;
      }

      v37 = v6[5];
      if (v15)
      {
        if (!v37)
        {
          goto LABEL_4;
        }

        if (v13 != v6[4] || v15 != v37)
        {
          v39 = v16;
          v40 = v17;
          v41 = v22;
          v42 = sub_240FD47FC();
          v22 = v41;
          v17 = v40;
          v16 = v39;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v42 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v37)
      {
        goto LABEL_4;
      }

      v43 = v6[7];
      if (v17)
      {
        if (!v43)
        {
          goto LABEL_4;
        }

        if (v16 != v6[6] || v17 != v43)
        {
          v45 = v22;
          v46 = sub_240FD47FC();
          v22 = v45;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v46 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v43)
      {
        goto LABEL_4;
      }

      v47 = v6[9];
      if (v20)
      {
        if (!v47)
        {
          goto LABEL_4;
        }

        if (v18 != v6[8] || v20 != v47)
        {
          v48 = v22;
          v49 = sub_240FD47FC();
          v22 = v48;
          v9 = v53;
          v7 = v54;
          v3 = v55;
          v6 = a1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v47)
      {
        goto LABEL_4;
      }

      if (v19 == v6[10] && v21 == v6[11] || (v50 = v22, v51 = sub_240FD47FC(), v22 = v50, v9 = v53, v7 = v54, v3 = v55, v6 = a1, (v51 & 1) != 0))
      {
        if (v22 == *(v6 + 96))
        {
          return v5;
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_240FB7518(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_240FD47FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_240FB75D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_240FCAF80(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_240FB7C04((*a3 + 112 * *v85), (*a3 + 112 * *v87), (*a3 + 112 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 112 * v6 + 104);
      v10 = 112 * v8;
      v11 = *a3 + 112 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 328);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 14;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 112 * v6 - 112;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v101 = *(v22 + v10 + 64);
            v103 = *(v22 + v10 + 80);
            v105 = *(v22 + v10 + 96);
            v93 = *(v22 + v10);
            v95 = *(v22 + v10 + 16);
            v97 = *(v22 + v10 + 32);
            v99 = *(v22 + v10 + 48);
            result = memmove((v22 + v10), (v22 + v18), 0x70uLL);
            v21[4] = v101;
            v21[5] = v103;
            v21[6] = v105;
            *v21 = v93;
            v21[1] = v95;
            v21[2] = v97;
            v21[3] = v99;
          }

          ++v20;
          v18 -= 112;
          v10 += 112;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_240FB65E0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_240FB65E0((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_240FB7C04((*a3 + 112 * *v78), (*a3 + 112 * *v80), (*a3 + 112 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 112 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 8) >= *(v27 + 104))
    {
LABEL_29:
      ++v6;
      v24 += 112;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 112);
    v102 = *(v27 + 64);
    v104 = *(v27 + 80);
    v106 = *(v27 + 96);
    v94 = *v27;
    v96 = *(v27 + 16);
    v98 = *(v27 + 32);
    v100 = *(v27 + 48);
    v29 = *(v27 - 96);
    *v27 = *(v27 - 112);
    *(v27 + 16) = v29;
    v30 = *(v27 - 80);
    v31 = *(v27 - 64);
    v32 = *(v27 - 16);
    *(v27 + 80) = *(v27 - 32);
    *(v27 + 96) = v32;
    v33 = *(v27 - 48);
    *(v27 + 48) = v31;
    *(v27 + 64) = v33;
    *(v27 + 32) = v30;
    v28[4] = v102;
    v28[5] = v104;
    v28[6] = v106;
    *v28 = v94;
    v28[1] = v96;
    v27 -= 112;
    v28[2] = v98;
    v28[3] = v100;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_240FB7C04(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[14 * v9] <= a4)
    {
      memmove(a4, __dst, 112 * v9);
    }

    v12 = &v4[14 * v9];
    if (v8 < 112)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[13] < v6[13])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 14;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 14;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 14;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x70uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[14 * v11] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v12 = &v4[14 * v11];
  if (v10 >= 112 && v6 > v7)
  {
LABEL_20:
    v5 -= 14;
    do
    {
      v15 = v5 + 14;
      if (*(v6 - 1) < *(v12 - 1))
      {
        v17 = v6 - 14;
        if (v15 != v6)
        {
          memmove(v5, v6 - 14, 0x70uLL);
        }

        if (v12 <= v4 || (v6 -= 14, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 14);
      if (v15 != v12)
      {
        memmove(v5, v12 - 14, 0x70uLL);
      }

      v5 -= 14;
      v12 -= 14;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 112;
  if (v6 != v4 || v6 >= &v4[14 * v18])
  {
    memmove(v6, v4, 112 * v18);
  }

  return 1;
}

uint64_t sub_240FB7E7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
  v58 = a2;
  result = sub_240FD479C();
  v8 = result;
  if (*(v5 + 16))
  {
    v51 = v3;
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
    v57 = v5;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      if (v58)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 104 * v24;
        v28 = *v26;
        v27 = *(v26 + 16);
        v30 = *(v26 + 32);
        v29 = *(v26 + 48);
        v31 = *(v26 + 64);
        v33 = *(v26 + 80);
        v32 = *(v26 + 88);
        v34 = *(v26 + 96);
        v35 = *(v25 + 8 * v24);
      }

      else
      {
        v36 = *(v5 + 48) + 104 * v24;
        v37 = *(v36 + 48);
        v38 = *(v36 + 64);
        v39 = *(v36 + 80);
        v34 = *(v36 + 96);
        v65 = v34;
        v63 = v38;
        v64 = v39;
        v62 = v37;
        v40 = *v36;
        v41 = *(v36 + 16);
        v61 = *(v36 + 32);
        v60[0] = v40;
        v60[1] = v41;
        v35 = *(*(v5 + 56) + 8 * v24);
        v32 = *(&v39 + 1);
        v33 = v39;
        v55 = v62;
        v56 = v63;
        v53 = v41;
        v54 = v61;
        v52 = v40;
        sub_240FB96D8(v60, v59);
        v28 = v52;
        v27 = v53;
        v30 = v54;
        v29 = v55;
        v31 = v56;
      }

      v66 = v28;
      v67 = v27;
      v68 = v30;
      v69 = v29;
      v70 = v31;
      *&v71 = v33;
      *(&v71 + 1) = v32;
      v72 = v34;
      v42 = *(v8 + 40);
      sub_240FD488C();
      ATBiomeMediaItem.hash(into:)();
      result = sub_240FD48BC();
      v43 = -1 << *(v8 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v15 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v5 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v15 + 8 * v45);
          if (v49 != -1)
          {
            v16 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v44) & ~*(v15 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v5 = v57;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 104 * v16;
      v18 = v71;
      *(v17 + 64) = v70;
      *(v17 + 80) = v18;
      *(v17 + 96) = v72;
      v19 = v67;
      *v17 = v66;
      *(v17 + 16) = v19;
      v20 = v69;
      *(v17 + 32) = v68;
      *(v17 + 48) = v20;
      *(*(v8 + 56) + 8 * v16) = v35;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v5 + 32);
    v3 = v51;
    if (v50 >= 64)
    {
      bzero(v10, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v50;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_240FB81DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
  v38 = a2;
  result = sub_240FD479C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_240FD488C();
      sub_240FD44DC();
      result = sub_240FD48BC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_240FB8484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
  v2 = *v0;
  v3 = sub_240FD478C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_240FB96D8(v25, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 104 * v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v26 = *(v17 + 96);
      v25[4] = v19;
      v25[5] = v20;
      v25[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v25[0] = *v17;
      v25[1] = v22;
      v25[2] = v21;
      v23 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 104 * v16), v17, 0x61uLL);
      *(*(v4 + 56) + 8 * v16) = v23;
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_240FB8640()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
  v2 = *v0;
  v3 = sub_240FD478C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_240FB87B0(void *a1, int64_t a2, char a3)
{
  result = sub_240FB8854(a1, a2, a3, *v3, &qword_27E51E5E0, &qword_240FD54E0, &qword_27E51E580, &qword_240FD51A8);
  *v3 = result;
  return result;
}

char *sub_240FB87F0(char *a1, int64_t a2, char a3)
{
  result = sub_240FB89A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_240FB8810(size_t a1, int64_t a2, char a3)
{
  result = sub_240FB8AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_240FB8854(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 112);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[14 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 112 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_240FB89A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_240FB8AB0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C8, &unk_240FD5C80);
  v10 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for ATSpotlightDataRecord() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void *sub_240FB8C88(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v35 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(a4 + 56);
      v19 = *(a4 + 48) + 104 * v17;
      v21 = *(v19 + 16);
      v20 = *(v19 + 32);
      v9 &= v9 - 1;
      v37[0] = *v19;
      v37[1] = v21;
      v37[2] = v20;
      v23 = *(v19 + 64);
      v22 = *(v19 + 80);
      v24 = *(v19 + 48);
      v38 = *(v19 + 96);
      v37[4] = v23;
      v37[5] = v22;
      v37[3] = v24;
      *&v22 = *(v18 + 8 * v17);
      v25 = *(v19 + 16);
      v39 = *v19;
      v40 = v25;
      v26 = *(v19 + 32);
      v27 = *(v19 + 48);
      v28 = *(v19 + 64);
      v29 = *(v19 + 80);
      LOBYTE(v45) = *(v19 + 96);
      v43 = v28;
      v44 = v29;
      v41 = v26;
      v42 = v27;
      v30 = v40;
      *v11 = v39;
      *(v11 + 16) = v30;
      v31 = v42;
      *(v11 + 32) = v41;
      *(v11 + 48) = v31;
      v32 = v44;
      *(v11 + 64) = v43;
      *(v11 + 80) = v32;
      *(v11 + 96) = v45;
      *(v11 + 104) = v22;
      if (v14 == v10)
      {
        sub_240FB96D8(v37, v36);
        goto LABEL_23;
      }

      v11 += 112;
      sub_240FB96D8(v37, v36);
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v34 = v12 + 1;
    }

    else
    {
      v34 = v13;
    }

    v12 = v34 - 1;
    v10 = result;
LABEL_23:
    v7 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

__n128 sub_240FB8E6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11)
{
  v26.n128_u64[0] = a7;
  v26.n128_u64[1] = a8;
  v16 = a11 == 0x6C7070612E6D6F63 && *(&a11 + 1) == 0xEF636973754D2E65;
  if (!v16 && (sub_240FD47FC() & 1) == 0 && __PAIR128__(0x8000000240FD5F00, 0xD000000000000029) != a11 && (sub_240FD47FC() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!a2)
  {

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) != a11)
    {
      sub_240FD47FC();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (!a1 && a2 == 0xE000000000000000)
  {

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) == a11)
    {
LABEL_30:
      if ((a1 || a2 != 0xE000000000000000) && (sub_240FD47FC() & 1) == 0 && a4 && (a3 || a4 != 0xE000000000000000) && (sub_240FD47FC() & 1) == 0)
      {

        v19 = 1;
        goto LABEL_50;
      }

LABEL_32:
      if (__PAIR128__(0x8000000240FD5F50, 0xD000000000000010) == a11)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_28:
    if ((sub_240FD47FC() & 1) == 0 || !a2)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (sub_240FD47FC())
  {
    goto LABEL_24;
  }

  if (!a4)
  {
LABEL_25:

    if (__PAIR128__(0x8000000240FD5F30, 0xD000000000000012) != a11)
    {
      goto LABEL_28;
    }

    if (a2)
    {
      goto LABEL_30;
    }

LABEL_33:
    if ((sub_240FD47FC() & 1) == 0)
    {
LABEL_41:

      goto LABEL_42;
    }

LABEL_34:
    if (!a2 || !a1 && a2 == 0xE000000000000000 || (sub_240FD47FC() & 1) != 0)
    {
      goto LABEL_41;
    }

    if (a4)
    {
      if (!a3 && a4 == 0xE000000000000000)
      {
        goto LABEL_41;
      }

      v25 = sub_240FD47FC();

      if ((v25 & 1) == 0)
      {

        v19 = 2;
        goto LABEL_50;
      }
    }

    else
    {
    }

LABEL_42:
    if (a11 == __PAIR128__(0xEC00000076742E65, 0x6C7070612E6D6F63))
    {
    }

    else
    {
      v20 = sub_240FD47FC();

      if ((v20 & 1) == 0)
      {
LABEL_48:

        goto LABEL_49;
      }
    }

    if (a2)
    {
      if (!a1 && a2 == 0xE000000000000000)
      {
        goto LABEL_48;
      }

      v24 = sub_240FD47FC();

      if ((v24 & 1) == 0)
      {
        v19 = 3;
        goto LABEL_50;
      }
    }

LABEL_49:
    v19 = 4;
LABEL_50:
    v17 = a6;
    goto LABEL_51;
  }

  if (!a3 && a4 == 0xE000000000000000 || (sub_240FD47FC() & 1) != 0 || (v17 = a6) == 0 || !a5 && a6 == 0xE000000000000000 || (v18 = sub_240FD47FC(), v19 = 0, (v18 & 1) != 0))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_51:
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  *&v32 = a5;
  *(&v32 + 1) = v17;
  v33 = v26;
  v34 = a10;
  v35 = a11;
  v36 = v19;
  v37[0] = a1;
  v37[1] = a2;
  v37[2] = a3;
  v37[3] = a4;
  v37[4] = a5;
  v37[5] = v17;
  v38 = v26;
  v39 = a10;
  v40 = a11;
  v41 = v19;
  sub_240FB96D8(&v30, v29);
  sub_240FBA110(v37);
  v21 = v35;
  *(a9 + 64) = v34;
  *(a9 + 80) = v21;
  *(a9 + 96) = v36;
  v22 = v31;
  *a9 = v30;
  *(a9 + 16) = v22;
  result = v33;
  *(a9 + 32) = v32;
  *(a9 + 48) = result;
  return result;
}

BOOL _s15ArchetypeEngine16ATBiomeMediaItemV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_240FD47FC();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = *(a2 + 24);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != *(a2 + 16) || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_240FD47FC();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = *(a2 + 40);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != *(a2 + 32) || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_240FD47FC();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = *(a2 + 56);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != *(a2 + 48) || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_240FD47FC();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = *(a2 + 72);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != *(a2 + 64) || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = sub_240FD47FC();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  if (a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  v38 = a1;
  v39 = a1[10];
  v40 = a2;
  v41 = sub_240FD47FC();
  a2 = v40;
  v42 = v41;
  a1 = v38;
  if (v42)
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_240FB9608()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FB9658()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_240FB9740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5D8, &qword_240FD54D8);
    v3 = sub_240FD47AC();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v22 = v4[4];
      v23 = v6;
      v24 = v4[6];
      v7 = v4[1];
      v19[0] = *v4;
      v19[1] = v7;
      v8 = v4[3];
      v20 = v4[2];
      v21 = v8;
      v31 = *(v4 + 96);
      v29 = v22;
      v30 = v6;
      v25 = v19[0];
      v26 = v7;
      v27 = v20;
      v28 = v8;
      sub_240FB99A0(v19, &v18, &qword_27E51E580, &qword_240FD51A8);
      result = sub_240FB706C(&v25);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 104 * result;
      v12 = v30;
      *(v11 + 64) = v29;
      *(v11 + 80) = v12;
      *(v11 + 96) = v31;
      v13 = v26;
      *v11 = v25;
      *(v11 + 16) = v13;
      v14 = v28;
      *(v11 + 32) = v27;
      *(v11 + 48) = v14;
      *(v3[7] + 8 * result) = *(&v24 + 1);
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 7;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_240FB98C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_240FB6F90((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E588, &qword_240FD51B8);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_240FB99A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_240FB9A0C()
{
  result = qword_27E51E590;
  if (!qword_27E51E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E590);
  }

  return result;
}

unint64_t sub_240FB9A64()
{
  result = qword_27E51E598;
  if (!qword_27E51E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E598);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ATBiomeMediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ATBiomeMediaType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_240FB9C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240FB9C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_240FB9D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240FB9D98(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for BMMediaNowPlayingPlaybackState()
{
  if (!qword_27E51E5A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E51E5A0);
    }
  }
}

unint64_t sub_240FB9E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5C0, &unk_240FD54C0);
    v3 = sub_240FD47AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_240FB70D8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_240FB9F6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_240FBA140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_240FBA1A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t ATAccessibilityError.errorDescription.getter(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        sub_240FD46BC();

        v15 = 0xD00000000000001DLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E630, &qword_240FD5540);
        v8 = swift_allocObject();
        v9 = MEMORY[0x277D84D38];
        *(v8 + 16) = xmmword_240FD5170;
        v10 = MEMORY[0x277D84D90];
        *(v8 + 56) = v9;
        *(v8 + 64) = v10;
        *(v8 + 32) = v3;
        v7 = sub_240FD44AC();
        goto LABEL_18;
      }

      sub_240FD46BC();

      v6 = 0xD000000000000020;
    }

    else
    {
      if (!a3)
      {
        v4 = a2;
        sub_240FD46BC();

        v5 = 0xD00000000000002BLL;
LABEL_16:
        v15 = v5;
        MEMORY[0x245CD64D0](v3, v4);
        return v15;
      }

      sub_240FD46BC();

      v6 = 0xD000000000000025;
    }

    v15 = v6;
LABEL_14:
    v7 = sub_240FD47DC();
LABEL_18:
    MEMORY[0x245CD64D0](v7);

    return v15;
  }

  if (a3 <= 5u)
  {
    if (a3 != 4)
    {
      v4 = a2;
      sub_240FD46BC();

      v5 = 0xD000000000000024;
      goto LABEL_16;
    }

    sub_240FD46BC();

    v15 = 0xD00000000000001FLL;
    goto LABEL_14;
  }

  if (a3 == 6)
  {

    return v3;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      v12 = a1 ^ 5 | a2;
      v13 = 0xD00000000000001BLL;
      v14 = 0xD000000000000022;
    }

    else
    {
      if (!(a1 ^ 7 | a2))
      {
        return 0xD000000000000025;
      }

      v12 = a1 ^ 8 | a2;
      v13 = 0xD000000000000028;
      v14 = 0xD00000000000002ELL;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (!(a1 ^ 2 | a2))
      {
        return 0xD00000000000002CLL;
      }

      if (a1 ^ 3 | a2)
      {
        return 0xD000000000000025;
      }

      return 0xD000000000000029;
    }

    v12 = a1 | a2;
    v13 = 0xD000000000000023;
    v14 = 0xD00000000000002ALL;
  }

  if (v12)
  {
    return v14;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_240FBA648()
{
  result = qword_27E51E638;
  if (!qword_27E51E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E638);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ArchetypeEngine20ATAccessibilityErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240FBA6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_240FBA73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_240FBA780(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t ATSpotlightDataRecordType.hashValue.getter(unsigned __int8 a1)
{
  sub_240FD488C();
  MEMORY[0x245CD6870](a1);
  return sub_240FD48BC();
}

uint64_t ATSpotlightDataRecord.uniqueIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ATSpotlightDataRecord.content.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ATSpotlightDataRecord.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ATSpotlightDataRecord.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ATSpotlightDataRecord() + 28);
  v4 = sub_240FD422C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ATSpotlightDataRecord()
{
  result = qword_27E51E670;
  if (!qword_27E51E670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ATSpotlightDataRecord.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 32);

  return sub_240FBA9F4(v3, a1);
}

uint64_t sub_240FBA9F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ATSpotlightDataRecord.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 36);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailMessageID.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.authors.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord() + 44));
}

uint64_t ATSpotlightDataRecord.recipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord() + 48));
}

uint64_t ATSpotlightDataRecord.additionalRecipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for ATSpotlightDataRecord() + 52));
}

uint64_t ATSpotlightDataRecord.subject.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.mailLastViewedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 60);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailReceivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 64);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.mailConversationId.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.extendedContent.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.extendedContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ATSpotlightDataRecord() + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ATSpotlightDataRecord.title.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.calendarType.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.eventStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 96);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.eventEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ATSpotlightDataRecord() + 100);

  return sub_240FBA9F4(v3, a1);
}

uint64_t ATSpotlightDataRecord.eventLocation.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 108));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.comment.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 112));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.genre.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 120));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.artist.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 124));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.composer.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 128));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.album.getter()
{
  v1 = (v0 + *(type metadata accessor for ATSpotlightDataRecord() + 132));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ATSpotlightDataRecord.init(item:bundleID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v228 = &v219 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v227 = &v219 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v226 = &v219 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v220 = &v219 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v224 = &v219 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v232 = &v219 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v230 = &v219 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v219 - v27;
  v235 = sub_240FD422C();
  v29 = *(v235 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v235);
  v222 = &v219 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v234 = &v219 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v221 = &v219 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v219 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v219 - v40;
  v42._countAndFlagsBits = a2;
  v223 = a3;
  v42._object = a3;
  v225 = bundleIDToRecordType(bundleID:)(v42);
  *a4 = v225;
  v43 = [a1 attributeSet];
  v44 = [v43 uniqueIdentifier];

  if (v44)
  {
    v45 = sub_240FD449C();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  *(a4 + 8) = v45;
  *(a4 + 16) = v47;
  v48 = [a1 attributeSet];
  v49 = [v48 contentSnippet];

  if (v49)
  {
    v50 = sub_240FD449C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  *(a4 + 24) = v50;
  *(a4 + 32) = v52;
  v53 = [a1 attributeSet];
  v54 = [v53 contentCreationDate];

  v233 = v29;
  v229 = v12;
  if (v54)
  {
    v55 = a1;
    sub_240FD41FC();

    v56 = *(v29 + 32);
    v57 = v235;
    v56(v28, v39, v235);
    v236 = *(v29 + 56);
    v236(v28, 0, 1, v57);
    v56(v41, v28, v57);
  }

  else
  {
    v58 = v235;
    v236 = *(v29 + 56);
    v236(v28, 1, 1, v235);
    sub_240FD421C();
    sub_240FD41AC();
    (*(v29 + 8))(v39, v58);
    v55 = a1;
    if ((*(v29 + 48))(v28, 1, v58) != 1)
    {
      sub_240FBA1A8(v28, &qword_27E51E578, &qword_240FD51A0);
    }

    v57 = v235;
    v29 = v233;
  }

  v231 = type metadata accessor for ATSpotlightDataRecord();
  v59 = *(v231 + 28);
  v60 = *(v29 + 32);
  v60(a4 + v59, v41, v57);
  v61 = [v55 attributeSet];
  v62 = [v61 lastUsedDate];

  v219 = v59;
  if (v62)
  {
    v63 = v221;
    sub_240FD41FC();

    v64 = v230;
    v65 = v60;
    v60(v230, v63, v57);
  }

  else
  {
    v65 = v60;
    v64 = v230;
    (*(v29 + 16))(v230, a4 + v59, v57);
  }

  v236(v64, 0, 1, v57);
  sub_240FBCB00(v64, a4 + *(v231 + 32));
  v66 = v55;
  v67 = [v55 attributeSet];
  v68 = [v67 attributeForKey_];

  if (v68)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  v69 = v233;
  if (*(&v240 + 1))
  {
    v70 = v232;
    v71 = v235;
    v72 = swift_dynamicCast() ^ 1;
    v73 = v70;
    v74 = v71;
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v73 = v232;
    v72 = 1;
    v74 = v235;
  }

  v236(v73, v72, 1, v74);
  v75 = [v55 attributeSet];
  v76 = [v75 contentModificationDate];

  if (v76)
  {
    v77 = v222;
    sub_240FD41FC();

    v78 = v235;
    v65(v234, v77, v235);
  }

  else
  {
    v78 = v235;
    (*(v69 + 16))(v234, a4 + v219, v235);
  }

  v79 = v231;
  v80 = v232;
  v81 = *(v69 + 48);
  if (v81(v232, 1, v78) == 1)
  {

    v82 = v224;
    (*(v69 + 16))(v224, v234, v78);
    v236(v82, 0, 1, v78);
  }

  else
  {
    v231 = v66;
    v83 = v80;
    v84 = v80;
    v85 = v220;
    sub_240FBA9F4(v84, v220);
    result = v81(v85, 1, v78);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v87 = v234;
    v88 = sub_240FD41DC();
    (*(v69 + 8))(v85, v78);
    if (v88)
    {
      v80 = v83;
      v82 = v224;
      sub_240FBA9F4(v83, v224);
    }

    else
    {
      v82 = v224;
      (*(v69 + 16))(v224, v87, v78);
      v236(v82, 0, 1, v78);
      v80 = v83;
    }

    v66 = v231;
  }

  sub_240FBCB00(v82, a4 + v79[9]);
  v89 = [v66 attributeSet];
  v90 = sub_240FD448C();
  v91 = [v89 attributeForKey_];

  if (v91)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v92 = swift_dynamicCast();
    v93 = v237;
    v94 = v238;
    if (!v92)
    {
      v93 = 0;
      v94 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v93 = 0;
    v94 = 0;
  }

  v95 = (a4 + v79[10]);
  *v95 = v93;
  v95[1] = v94;
  v96 = v225;
  v97 = [v66 attributeSet];
  v98 = v97;
  if (v96 != 5)
  {
    v101 = [v97 authorNames];

    if (v101)
    {
      v102 = sub_240FD453C();
    }

    else
    {
      v102 = 0;
    }

    *(a4 + v79[11]) = v102;
    v105 = [v66 attributeSet];
    v106 = [v105 recipientNames];

    if (v106)
    {
      v107 = sub_240FD453C();

      goto LABEL_56;
    }

LABEL_55:
    v107 = 0;
    goto LABEL_56;
  }

  v99 = [v97 authorEmailAddresses];

  if (v99)
  {
    v100 = sub_240FD453C();
  }

  else
  {
    v100 = 0;
  }

  *(a4 + v79[11]) = v100;
  v103 = [v66 attributeSet];
  v104 = [v103 attributeForKey_];

  if (v104)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (!*(&v240 + 1))
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    goto LABEL_55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
  if (swift_dynamicCast())
  {
    v107 = v237;
  }

  else
  {
    v107 = 0;
  }

LABEL_56:
  *(a4 + v79[12]) = v107;
  v108 = [v66 attributeSet];
  v109 = [v108 attributeForKey_];

  if (v109)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
    v110 = swift_dynamicCast();
    v111 = v237;
    if (!v110)
    {
      v111 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v111 = 0;
  }

  *(a4 + v79[13]) = v111;
  v112 = [v66 attributeSet];
  v113 = [v112 subject];

  if (v113)
  {
    v114 = sub_240FD449C();
    v116 = v115;
  }

  else
  {
    v114 = 0;
    v116 = 0;
  }

  v117 = (a4 + v79[14]);
  *v117 = v114;
  v117[1] = v116;
  v118 = [v66 attributeSet];
  v119 = [v118 attributeForKey_];

  if (v119)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v120 = v226;
  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v121 = swift_dynamicCast() ^ 1;
    v122 = v120;
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v122 = v120;
    v121 = 1;
  }

  v236(v122, v121, 1, v78);
  sub_240FBCB00(v120, a4 + v79[15]);
  v123 = [v66 attributeSet];
  v124 = [v123 attributeForKey_];

  if (v124)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v125 = v227;
  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v126 = swift_dynamicCast() ^ 1;
    v127 = v125;
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v127 = v125;
    v126 = 1;
  }

  v236(v127, v126, 1, v78);
  sub_240FBCB00(v125, a4 + v79[16]);
  v128 = [v66 attributeSet];
  v129 = [v128 mailConversationID];

  if (v129)
  {
    v130 = sub_240FD449C();
    v132 = v131;
  }

  else
  {
    v130 = 0;
    v132 = 0;
  }

  v133 = (a4 + v79[17]);
  *v133 = v130;
  v133[1] = v132;
  v134 = [v66 attributeSet];
  v135 = [v134 isLikelyJunk];

  LOBYTE(v134) = [v135 BOOLValue];
  *(a4 + v79[18]) = v134;
  v136 = [v66 attributeSet];
  v137 = sub_240FD448C();
  v138 = [v136 attributeForKey_];

  if (v138)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v139 = swift_dynamicCast();
    v140 = v237;
    v141 = v238;
    if (!v139)
    {
      v140 = 0;
      v141 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v140 = 0;
    v141 = 0;
  }

  v142 = (a4 + v79[19]);
  *v142 = v140;
  v142[1] = v141;
  v143 = [v66 attributeSet];
  v144 = sub_240FD448C();
  v145 = [v143 attributeForKey_];

  if (v145)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v146 = swift_dynamicCast();
    v147 = v237;
    if (!v146)
    {
      v147 = 2;
    }
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v147 = 2;
  }

  *(a4 + v79[20]) = v147;
  v148 = [v66 attributeSet];
  v149 = [v148 title];

  if (v149)
  {
    v150 = sub_240FD449C();
    v152 = v151;
  }

  else
  {
    v150 = 0;
    v152 = 0;
  }

  v153 = (a4 + v79[21]);
  *v153 = v150;
  v153[1] = v152;
  v154 = [v66 attributeSet];
  v155 = [v154 displayName];

  if (v155)
  {
    v156 = sub_240FD449C();
    v158 = v157;
  }

  else
  {
    v156 = 0;
    v158 = 0;
  }

  v159 = (a4 + v79[22]);
  *v159 = v156;
  v159[1] = v158;
  v160 = [v66 attributeSet];
  v161 = [v160 attributeForKey_];

  if (v161)
  {
    sub_240FD464C();
    swift_unknownObjectRelease();
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
  }

  v241 = v239;
  v242 = v240;
  if (*(&v240 + 1))
  {
    v162 = swift_dynamicCast();
    v163 = v237;
    v164 = v238;
    if (!v162)
    {
      v163 = 0;
      v164 = 0;
    }
  }

  else
  {
    sub_240FBA1A8(&v241, &qword_27E51E5F0, &qword_240FD54F0);
    v163 = 0;
    v164 = 0;
  }

  v165 = (a4 + v79[23]);
  *v165 = v163;
  v165[1] = v164;
  v166 = [v66 attributeSet];
  v167 = [v166 startDate];

  if (v167)
  {
    v168 = v228;
    sub_240FD41FC();

    v169 = 0;
  }

  else
  {
    v169 = 1;
    v168 = v228;
  }

  v170 = 1;
  v236(v168, v169, 1, v78);
  sub_240FBCB00(v168, a4 + v79[24]);
  v171 = [v66 attributeSet];
  v172 = [v171 endDate];

  v173 = v229;
  if (v172)
  {
    sub_240FD41FC();

    v170 = 0;
  }

  v236(v173, v170, 1, v78);
  sub_240FBCB00(v173, a4 + v79[25]);
  v174 = [v66 attributeSet];
  v175 = [v174 allDay];

  if (v175)
  {
    v176 = [v175 BOOLValue];
  }

  else
  {
    v176 = 2;
  }

  *(a4 + v79[26]) = v176;
  v177 = [v66 attributeSet];
  v178 = [v177 namedLocation];

  if (v178)
  {
    v179 = sub_240FD449C();
    v181 = v180;
  }

  else
  {
    v179 = 0;
    v181 = 0;
  }

  v182 = (a4 + v79[27]);
  *v182 = v179;
  v182[1] = v181;
  v183 = [v66 attributeSet];
  v184 = [v183 comment];

  if (v184)
  {
    v185 = sub_240FD449C();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0;
  }

  v188 = (a4 + v79[28]);
  *v188 = v185;
  v188[1] = v187;
  v189 = [v66 attributeSet];
  v190 = [v189 supportsNavigation];

  if (v190 && (v190, v191 = [v66 attributeSet], v192 = objc_msgSend(v191, sel_supportsNavigation), v191, v192))
  {
    v193 = [v192 BOOLValue];
  }

  else
  {
    v193 = 2;
  }

  *(a4 + v79[29]) = v193;
  v194 = [v66 attributeSet];
  v195 = [v194 genre];

  if (v195)
  {
    v196 = sub_240FD449C();
    v198 = v197;
  }

  else
  {
    v196 = 0;
    v198 = 0;
  }

  v199 = (a4 + v79[30]);
  *v199 = v196;
  v199[1] = v198;
  v200 = [v66 attributeSet];
  v201 = [v200 artist];

  if (v201)
  {
    v202 = sub_240FD449C();
    v204 = v203;
  }

  else
  {
    v202 = 0;
    v204 = 0;
  }

  v205 = (a4 + v79[31]);
  *v205 = v202;
  v205[1] = v204;
  v206 = [v66 attributeSet];
  v207 = [v206 composer];

  if (v207)
  {
    v208 = sub_240FD449C();
    v210 = v209;
  }

  else
  {
    v208 = 0;
    v210 = 0;
  }

  v211 = v234;
  v212 = (a4 + v79[32]);
  *v212 = v208;
  v212[1] = v210;
  v213 = [v66 attributeSet];
  v214 = [v213 composer];

  if (v214)
  {
    v215 = sub_240FD449C();
    v217 = v216;

    (*(v233 + 8))(v211, v235);
  }

  else
  {
    (*(v233 + 8))(v211, v235);

    v215 = 0;
    v217 = 0;
  }

  v218 = (a4 + v79[33]);
  *v218 = v215;
  v218[1] = v217;
  return sub_240FBA1A8(v80, &qword_27E51E578, &qword_240FD51A0);
}

ArchetypeEngine::ATSpotlightDataRecordType __swiftcall bundleIDToRecordType(bundleID:)(Swift::String bundleID)
{
  object = bundleID._object;
  countAndFlagsBits = bundleID._countAndFlagsBits;
  if (bundleID._countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD6240 == bundleID._object || (sub_240FD47FC() & 1) != 0)
  {
    return 4;
  }

  if (countAndFlagsBits == 0xD000000000000014 && 0x8000000240FD5E60 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 5;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD6260 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 3;
  }

  if (countAndFlagsBits == 0xD000000000000015 && 0x8000000240FD6280 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 1;
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x8000000240FD5E40 == object || (sub_240FD47FC() & 1) != 0)
  {
    return 0;
  }

  result = ArchetypeEngine_ATSpotlightDataRecordType_SpotlightMusicRecord;
  if (countAndFlagsBits != 0x6C7070612E6D6F63 || object != 0xEF636973754D2E65)
  {
    if (sub_240FD47FC())
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t sub_240FBCB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ATSpotlightDataRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_240FD47FC();
  }
}

uint64_t ATSpotlightDataRecord.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_240FD422C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240FD48EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0xD00000000000003DLL;
  v46 = 0x8000000240FD6300;
  *&v42 = 0;
  *(&v42 + 1) = 0xE000000000000000;
  MEMORY[0x245CD64D0](0x203A2065707954, 0xE700000000000000);
  LOBYTE(v39) = *v0;
  sub_240FD475C();
  MEMORY[0x245CD64D0](2592, 0xE200000000000000);
  MEMORY[0x245CD64D0](v42, *(&v42 + 1));

  *(&v43 + 1) = type metadata accessor for ATSpotlightDataRecord();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_240FBE4A4(v0, boxed_opaque_existential_0);
  sub_240FD48CC();
  sub_240FD48DC();
  (*(v10 + 8))(v13, v9);
  sub_240FD474C();

  sub_240FD47BC();
  v43 = v40;
  v44 = v41;
  v42 = v39;
  if (!*(&v41 + 1))
  {
LABEL_26:

    MEMORY[0x245CD64D0](0xD00000000000003CLL, 0x8000000240FD6340);
    return v45;
  }

  v34 = (v6 + 56);
  v32 = (v6 + 32);
  v31 = (v6 + 8);
  v15 = MEMORY[0x277D837D0];
  while (1)
  {
    v16 = v42;
    sub_240FBE508(&v43, &v39);
    sub_240FB9F6C(&v39, &v37);
    result = swift_dynamicCast();
    if (result)
    {
      break;
    }

    sub_240FB9F6C(&v39, &v37);
    result = swift_dynamicCast();
    if (result)
    {
      v20 = v35;
      v37 = 0;
      v38 = 0xE000000000000000;
      if (!*(&v16 + 1))
      {
        goto LABEL_28;
      }

      MEMORY[0x245CD64D0](v16, *(&v16 + 1));

      MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
      if (v20)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v20)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      MEMORY[0x245CD64D0](v21, v22);
    }

    else
    {
      sub_240FB9F6C(&v39, &v37);
      v23 = swift_dynamicCast();
      v24 = *v34;
      if (v23)
      {
        v24(v4, 0, 1, v5);
        v25 = v33;
        result = (*v32)(v33, v4, v5);
        v37 = 0;
        v38 = 0xE000000000000000;
        if (!*(&v16 + 1))
        {
          goto LABEL_29;
        }

        MEMORY[0x245CD64D0](v16, *(&v16 + 1));

        MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
        sub_240FBED14(&qword_27E51E648, MEMORY[0x277CC9578]);
        v26 = sub_240FD47DC();
        MEMORY[0x245CD64D0](v26);

        MEMORY[0x245CD64D0](2592, 0xE200000000000000);
        MEMORY[0x245CD64D0](v37, v38);

        (*v31)(v25, v5);
        goto LABEL_16;
      }

      v24(v4, 1, 1, v5);
      sub_240FBA1A8(v4, &qword_27E51E578, &qword_240FD51A0);
      sub_240FB9F6C(&v39, &v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E640, &qword_240FD5730);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(&v39);

        goto LABEL_17;
      }

      v27 = v35;
      v37 = 0;
      v38 = 0xE000000000000000;
      if (!*(&v16 + 1))
      {
        goto LABEL_30;
      }

      MEMORY[0x245CD64D0](v16, *(&v16 + 1));

      MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
      v28 = MEMORY[0x245CD6520](v27, v15);
      v30 = v29;

      MEMORY[0x245CD64D0](v28, v30);
    }

LABEL_15:

    MEMORY[0x245CD64D0](2592, 0xE200000000000000);
    MEMORY[0x245CD64D0](v37, v38);

LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(&v39);
LABEL_17:
    sub_240FD47BC();
    v43 = v40;
    v44 = v41;
    v42 = v39;
    if (!*(&v41 + 1))
    {
      goto LABEL_26;
    }
  }

  v18 = v35;
  v19 = v36;
  v37 = 0;
  v38 = 0xE000000000000000;
  if (*(&v16 + 1))
  {
    MEMORY[0x245CD64D0](v16, *(&v16 + 1));

    MEMORY[0x245CD64D0](2112032, 0xE300000000000000);
    MEMORY[0x245CD64D0](v18, v19);
    goto LABEL_15;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_240FBD2D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_240FD47FC();
  }
}

uint64_t sub_240FBD410(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000240FD6240 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD5700;
    v6 = *MEMORY[0x277CC24E0];
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v7;
    v8 = *MEMORY[0x277CC3028];
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v9;
    *(v5 + 64) = 0xD00000000000001FLL;
    *(v5 + 72) = 0x8000000240FD62E0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240FD5E60 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD56F0;
    v11 = *MEMORY[0x277CC3140];
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v12;
    v13 = *MEMORY[0x277CC24C8];
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v14;
    v15 = *MEMORY[0x277CC3020];
    *(v5 + 64) = sub_240FD449C();
    *(v5 + 72) = v16;
    v17 = *MEMORY[0x277CC2FA8];
    *(v5 + 80) = sub_240FD449C();
    *(v5 + 88) = v18;
    v19 = *MEMORY[0x277CC23D0];
    *(v5 + 96) = sub_240FD449C();
    *(v5 + 104) = v20;
    v21 = *MEMORY[0x277CC32C8];
    *(v5 + 112) = sub_240FD449C();
    *(v5 + 120) = v22;
    v23 = *MEMORY[0x277CC32D0];
    *(v5 + 128) = sub_240FD449C();
    *(v5 + 136) = v24;
    v25 = *MEMORY[0x277CC2C80];
    *(v5 + 144) = sub_240FD449C();
    *(v5 + 152) = v26;
    v27 = *MEMORY[0x277CC32C0];
    *(v5 + 160) = sub_240FD449C();
    *(v5 + 168) = v28;
    v29 = *MEMORY[0x277CC32E8];
    *(v5 + 176) = sub_240FD449C();
    *(v5 + 184) = v30;
    *(v5 + 192) = 0xD000000000000019;
    *(v5 + 200) = 0x8000000240FD62C0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000240FD6260 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD5170;
    v31 = *MEMORY[0x277CC31F0];
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v32;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240FD6280 == a2 || (sub_240FD47FC() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_240FD56E0;
    v33 = *MEMORY[0x277CC31F0];
    *(v5 + 32) = sub_240FD449C();
    *(v5 + 40) = v34;
    v35 = *MEMORY[0x277CC2760];
    *(v5 + 48) = sub_240FD449C();
    *(v5 + 56) = v36;
  }

  else
  {
    if (a1 == 0xD000000000000013 && 0x8000000240FD5E40 == a2 || (sub_240FD47FC() & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_240FD56D0;
      v37 = *MEMORY[0x277CC2630];
      *(v5 + 32) = sub_240FD449C();
      *(v5 + 40) = v38;
      v39 = *MEMORY[0x277CC2DD0];
      *(v5 + 48) = sub_240FD449C();
      *(v5 + 56) = v40;
      v41 = *MEMORY[0x277CC31F0];
      *(v5 + 64) = sub_240FD449C();
      *(v5 + 72) = v42;
      v43 = *MEMORY[0x277CC25D8];
      *(v5 + 80) = sub_240FD449C();
      *(v5 + 88) = v44;
      v45 = *MEMORY[0x277CC3178];
      *(v5 + 96) = sub_240FD449C();
      *(v5 + 104) = v46;
      v47 = *MEMORY[0x277CC3128];
      *(v5 + 112) = sub_240FD449C();
      *(v5 + 120) = v48;
      v49 = *MEMORY[0x277CC27A0];
      *(v5 + 128) = sub_240FD449C();
      *(v5 + 136) = v50;
      v51 = MEMORY[0x277CC2C60];
    }

    else
    {
      if ((a1 != 0x6C7070612E6D6F63 || a2 != 0xEF636973754D2E65) && (sub_240FD47FC() & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_240FD56D0;
      v54 = *MEMORY[0x277CC31F0];
      *(v5 + 32) = sub_240FD449C();
      *(v5 + 40) = v55;
      v56 = *MEMORY[0x277CC2B68];
      *(v5 + 48) = sub_240FD449C();
      *(v5 + 56) = v57;
      v58 = *MEMORY[0x277CC2760];
      *(v5 + 64) = sub_240FD449C();
      *(v5 + 72) = v59;
      v60 = *MEMORY[0x277CC2480];
      *(v5 + 80) = sub_240FD449C();
      *(v5 + 88) = v61;
      v62 = *MEMORY[0x277CC25E8];
      *(v5 + 96) = sub_240FD449C();
      *(v5 + 104) = v63;
      v64 = *MEMORY[0x277CC25D8];
      *(v5 + 112) = sub_240FD449C();
      *(v5 + 120) = v65;
      v66 = *MEMORY[0x277CC23F8];
      *(v5 + 128) = sub_240FD449C();
      *(v5 + 136) = v67;
      v51 = MEMORY[0x277CC2D78];
    }

    v52 = *v51;
    *(v5 + 144) = sub_240FD449C();
    *(v5 + 152) = v53;
  }

  v68 = *(v2 + 16);

  sub_240FBDAA4(v5);
  return v68;
}

uint64_t sub_240FBD9A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_240FBD9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E5B8, &qword_240FD54B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_240FD5710;
  v2 = *MEMORY[0x277CC3208];
  *(v1 + 32) = sub_240FD449C();
  *(v1 + 40) = v3;
  v4 = *MEMORY[0x277CC2640];
  *(v1 + 48) = sub_240FD449C();
  *(v1 + 56) = v5;
  v6 = *MEMORY[0x277CC2D10];
  *(v1 + 64) = sub_240FD449C();
  *(v1 + 72) = v7;
  v8 = *MEMORY[0x277CC24A8];
  *(v1 + 80) = sub_240FD449C();
  *(v1 + 88) = v9;
  v10 = *MEMORY[0x277CC2660];
  *(v1 + 96) = sub_240FD449C();
  *(v1 + 104) = v11;
  v12 = *MEMORY[0x277CC2670];
  *(v1 + 112) = sub_240FD449C();
  *(v1 + 120) = v13;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_240FBDAA4(uint64_t result)
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

  result = sub_240FB6B4C(result, v11, 1, v3);
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

uint64_t sub_240FBDB98(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_240FB6C58(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ATSpotlightDataRecord();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s15ArchetypeEngine21ATSpotlightDataRecordV1loiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v58 = &v52 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v52 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v57 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = sub_240FD422C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v59 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v61 = &v52 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v62 = &v52 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v52 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v52 - v35;
  v37 = *a1;
  v60 = a1;
  if (v37 == 5)
  {
    v54 = v12;
    v55 = v31;
    v56 = v7;
    v38 = type metadata accessor for ATSpotlightDataRecord();
    sub_240FBA9F4(&a1[*(v38 + 64)], v19);
    v39 = *(v21 + 48);
    if (v39(v19, 1, v20) != 1)
    {
      v53 = *(v21 + 32);
      v53(v36, v19, v20);
      v19 = v57;
      sub_240FBA9F4(v63 + *(v38 + 64), v57);
      if (v39(v19, 1, v20) != 1)
      {
        v53(v34, v19, v20);
        v46 = sub_240FD41DC();
        v47 = *(v21 + 8);
        v47(v34, v20);
        v50 = v36;
        goto LABEL_26;
      }

      (*(v21 + 8))(v36, v20);
      a1 = v60;
    }

    sub_240FBA1A8(v19, &qword_27E51E578, &qword_240FD51A0);
    v31 = v55;
    v7 = v56;
    v12 = v54;
  }

  v40 = type metadata accessor for ATSpotlightDataRecord();
  sub_240FBA9F4(&a1[v40[9]], v15);
  v41 = *(v21 + 48);
  if (v41(v15, 1, v20) == 1)
  {
    (*(v21 + 16))(v31, &a1[v40[7]], v20);
    v42 = v41(v15, 1, v20);
    v43 = v62;
    if (v42 != 1)
    {
      sub_240FBA1A8(v15, &qword_27E51E578, &qword_240FD51A0);
    }
  }

  else
  {
    (*(v21 + 32))(v31, v15, v20);
    v43 = v62;
  }

  sub_240FBA9F4(v63 + v40[9], v12);
  if (v41(v12, 1, v20) == 1)
  {
    (*(v21 + 16))(v43, v63 + v40[7], v20);
    if (v41(v12, 1, v20) != 1)
    {
      sub_240FBA1A8(v12, &qword_27E51E578, &qword_240FD51A0);
    }
  }

  else
  {
    (*(v21 + 32))(v43, v12, v20);
  }

  sub_240FBED14(&unk_27E51E6A0, MEMORY[0x277CC9578]);
  if (sub_240FD447C())
  {
    v44 = v60;
    v45 = v58;
    sub_240FBA9F4(&v60[v40[8]], v58);
    if (v41(v45, 1, v20) == 1)
    {
      (*(v21 + 16))(v61, &v44[v40[7]], v20);
      if (v41(v45, 1, v20) != 1)
      {
        sub_240FBA1A8(v45, &qword_27E51E578, &qword_240FD51A0);
      }
    }

    else
    {
      (*(v21 + 32))(v61, v45, v20);
    }

    sub_240FBA9F4(v63 + v40[8], v7);
    if (v41(v7, 1, v20) == 1)
    {
      v48 = v59;
      (*(v21 + 16))(v59, v63 + v40[7], v20);
      if (v41(v7, 1, v20) != 1)
      {
        sub_240FBA1A8(v7, &qword_27E51E578, &qword_240FD51A0);
      }
    }

    else
    {
      v48 = v59;
      (*(v21 + 32))(v59, v7, v20);
    }

    v49 = v61;
    v46 = sub_240FD41DC();
    v47 = *(v21 + 8);
    v47(v48, v20);
    v47(v49, v20);
    v47(v43, v20);
  }

  else
  {
    v46 = sub_240FD41DC();
    v47 = *(v21 + 8);
    v47(v43, v20);
  }

  v50 = v31;
LABEL_26:
  v47(v50, v20);
  return v46 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_240FBE4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ATSpotlightDataRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_240FBE508(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_240FBE51C()
{
  result = qword_27E51E650;
  if (!qword_27E51E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E650);
  }

  return result;
}

uint64_t sub_240FBE570(uint64_t a1)
{
  *(a1 + 8) = sub_240FBED14(&qword_27E51E658, type metadata accessor for ATSpotlightDataRecord);
  result = sub_240FBED14(&qword_27E51E660, type metadata accessor for ATSpotlightDataRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ATSpotlightDataRecordType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ATSpotlightDataRecordType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_240FBE7A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240FD422C();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_240FBE8E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_240FD422C();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_240FBEA14()
{
  sub_240FD422C();
  if (v0 <= 0x3F)
  {
    sub_240FBEB7C();
    if (v1 <= 0x3F)
    {
      sub_240FBEC80(319, &qword_27E51E688);
      if (v2 <= 0x3F)
      {
        sub_240FBEBD4();
        if (v3 <= 0x3F)
        {
          sub_240FBEC80(319, &qword_27E51E698);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240FBEB7C()
{
  if (!qword_27E51E680)
  {
    sub_240FD422C();
    v0 = sub_240FD463C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51E680);
    }
  }
}

void sub_240FBEBD4()
{
  if (!qword_27E51E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E640, &qword_240FD5730);
    v0 = sub_240FD463C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E51E690);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_240FBEC80(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_240FD463C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_240FBED14(unint64_t *a1, void (*a2)(uint64_t))
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

void ATLocationRetriever.init(effectiveBundleIdentifier:)()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  v2 = OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_semaphore;
  *&v0[v2] = dispatch_semaphore_create(0);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ATLocationRetriever();
  v3 = objc_msgSendSuper2(&v10, sel_init);
  sub_240FC06B8(0, &unk_27E51E6C0, 0x277D85C78);
  v4 = v3;
  v5 = sub_240FD45EC();
  v6 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v7 = sub_240FD448C();
  v8 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:v4 onQueue:v5];

  if (v8)
  {

    v9 = *&v4[OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager];
    *&v4[OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager] = v8;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ATLocationRetriever.requestLocation()()
{
  [*(v0 + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager) requestLocation];
  v1 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_semaphore);
  sub_240FD45FC();
}

uint64_t sub_240FBEF40()
{
  v1[19] = v0;
  v2 = sub_240FD443C();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240FBF000, 0, 0);
}

uint64_t sub_240FBF000()
{
  v1 = [*(v0[19] + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager) location];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[24] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240FBF1B4;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E738, &unk_240FD5960);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240FBF520;
    v0[13] = &block_descriptor_0;
    v0[14] = v4;
    [v3 reverseGeocodeLocation:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[22];

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_240FBF1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_240FBF380;
  }

  else
  {
    v3 = sub_240FBF2C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_240FBF2C4()
{
  v1 = *(v0 + 144);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CD66B0](0, *(v0 + 144));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;
  v4 = *(v0 + 192);

  v5 = *(v0 + 176);

  v6 = *(v0 + 8);

  v6(v3);
}

uint64_t sub_240FBF380()
{
  v1 = v0[25];
  v2 = v0[22];
  swift_willThrow();
  sub_240FD442C();
  v3 = v1;
  v4 = sub_240FD441C();
  v5 = sub_240FD45DC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_240FB1000, v4, v5, "Failed to retrieve a placemark for the last location with error: %@.", v10, 0xCu);
    sub_240FC0638(v11);
    MEMORY[0x245CD6DB0](v11, -1, -1);
    MEMORY[0x245CD6DB0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v14 = v0[22];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_240FBF520(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E600, &qword_240FD5500);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_240FC06B8(0, &unk_27E51E740, 0x277CBFC40);
    **(*(v4 + 64) + 40) = sub_240FD453C();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_240FBF630()
{
  v1 = [*(v0[3] + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_locationManager) location];
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E750, &qword_240FD5970);
    *v5 = v0;
    v5[1] = sub_240FBF79C;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000019, 0x8000000240FD64C0, sub_240FC0700, v3, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_240FBF79C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240FBF8B4, 0, 0);
}

uint64_t sub_240FBF8B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [*(v0 + 16) preferredName];
    v3 = *(v0 + 32);
    if (v2)
    {
      v4 = v2;
      v5 = sub_240FD449C();
      v7 = v6;

      v8 = v7;
      v9 = v5;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = 0;
  v8 = 0;
LABEL_7:
  v10 = *(v0 + 8);

  return v10(v9, v8);
}

void sub_240FBF988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() defaultManager];
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_240FC079C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240FBFD5C;
  aBlock[3] = &block_descriptor_10;
  v12 = _Block_copy(aBlock);

  [v9 fetchLocationOfInterestAtLocation:a2 withHandler:v12];
  _Block_release(v12);
}

uint64_t sub_240FBFB64(void *a1, void *a2)
{
  v4 = sub_240FD443C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v9 = a1;
  }

  else
  {
    sub_240FD442C();
    v10 = a2;
    v11 = sub_240FD441C();
    v12 = sub_240FD45DC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      if (a2)
      {
        v15 = a2;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 4) = v16;
      *v14 = v17;
      _os_log_impl(&dword_240FB1000, v11, v12, "Failed to fetch locations of interest with error: %@.", v13, 0xCu);
      sub_240FC0638(v14);
      MEMORY[0x245CD6DB0](v14, -1, -1);
      MEMORY[0x245CD6DB0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v20 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  return sub_240FD457C();
}

void sub_240FBFD5C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t ATLocationRetriever.currentLocationName()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_240FBFE78;

  return sub_240FBF610();
}

uint64_t sub_240FBFE78(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  if (a2)
  {
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v5 + 32) = v10;
    *v10 = v7;
    v10[1] = sub_240FBFFF4;
    v11 = *(v5 + 16);

    return sub_240FBEF40();
  }
}

uint64_t sub_240FBFFF4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_240FC00F4, 0, 0);
}

uint64_t sub_240FC00F4()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [*(v0 + 40) name], v1, v2))
  {
    v3 = sub_240FD449C();
    v5 = v4;

    v6 = v5;
    v7 = v3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *(v0 + 8);

  return v8(v7, v6);
}

id ATLocationRetriever.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATLocationRetriever.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATLocationRetriever();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240FC03B0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_240FC0410(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_240FC0484(void *a1)
{
  v2 = v1;
  v4 = sub_240FD443C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FD442C();
  v9 = a1;
  v10 = sub_240FD441C();
  v11 = sub_240FD45DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_240FB1000, v10, v11, "Failed to fetch the current location from CoreLocation with error: %@.", v12, 0xCu);
    sub_240FC0638(v13);
    MEMORY[0x245CD6DB0](v13, -1, -1);
    MEMORY[0x245CD6DB0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v16 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine19ATLocationRetriever_semaphore);
  return sub_240FD460C();
}

uint64_t sub_240FC0638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E730, &unk_240FD5530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC06B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_240FC0708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_240FC079C(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E758, &qword_240FD5978) - 8) + 80);

  return sub_240FBFB64(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ATSpotlightCalendarRetriever.getRecentRecordsAsync(maxNumRecordsToFetch:addendum:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_240FC0864, 0, 0);
}

uint64_t sub_240FC0864()
{
  v1 = (v0[5] + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_240FC0920;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v3, v2, v7, v8, v5);
}

uint64_t sub_240FC0920(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t ATSpotlightCalendarRetriever.getRecentRecords(maxNumRecordsToFetch:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v9 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v8 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v10 = dispatch_semaphore_create(0);
  v11 = sub_240FD459C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = v9;
  v12[6] = v8;
  v12[7] = a1;
  v12[8] = v10;

  v13 = v10;
  sub_240FC285C(0, 0, v7, &unk_240FD5990, v12);

  sub_240FD45FC();

  v14 = *(v2 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(startOffsetInSeconds:endOffsetInSeconds:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 80) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_240FC0BB4, 0, 0);
}

uint64_t sub_240FC0BB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 80);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v3;
  v5 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v5);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v4;
  v6 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v6);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = 0x8000000240FD6550;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v7, v8);

  *(v0 + 64) = 0xE000000000000000;
  v9 = *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v10 = *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_240FC30EC;
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v9, v10, v12, 0, 0xE000000000000000);
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(startOffsetInDays:endOffsetInDays:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 80) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_240FC0DDC, 0, 0);
}

void sub_240FC0DDC()
{
  v1 = *(v0 + 32);
  v2 = 86400 * v1;
  if ((v1 * 86400) >> 64 != (86400 * v1) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v0 + 40);
  v4 = 86400 * v3;
  if ((v3 * 86400) >> 64 != (86400 * v3) >> 63)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 80);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v4;
  v7 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v7);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v2;
  v8 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v8);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v6)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 0x8000000240FD6550;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v9, v10);

  *(v0 + 64) = 0xE000000000000000;
  v11 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v12 = *(v5 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_240FC1010;
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v11, v12, v14, 0, 0xE000000000000000);
}

uint64_t sub_240FC1010(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t ATSpotlightCalendarRetriever.parseCalendarEventRecords(eventRecords:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v75 - v6;
  v78 = sub_240FD422C();
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v78);
  v83 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v14 = type metadata accessor for ATSpotlightDataRecord();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_240FB9E58(MEMORY[0x277D84F90]);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v19 setDateStyle_];
  [v19 setTimeStyle_];
  v20 = *(a1 + 16);
  if (!v20)
  {

    v73 = 0;
LABEL_29:
    sub_240FC2DA8(v73);
    return v86;
  }

  v88 = v7;
  v77 = v19;
  v90 = v13;
  v85 = 0;
  v21 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v22 = (v8 + 48);
  v23 = (v8 + 32);
  v80 = (v8 + 8);
  v81 = (v8 + 48);
  v24 = &qword_240FD51A0;
  v92 = *(v15 + 72);
  v25 = v78;
  v82 = v14;
  v76 = v23;
  while (1)
  {
    sub_240FBE4A4(v21, v18);
    v26 = &v18[v14[23]];
    v27 = v26[1];
    if (v27)
    {
      break;
    }

    sub_240FC2D4C(v18);
LABEL_4:
    v21 += v92;
    if (!--v20)
    {

      v73 = v85;
      goto LABEL_29;
    }
  }

  v93 = v21;
  v89 = v27;
  v91 = *v26;
  v28 = v88;
  sub_240FB99A0(&v18[v14[24]], v88, &qword_27E51E578, v24);
  v29 = v24;
  v30 = *v22;
  if ((*v22)(v28, 1, v25) == 1)
  {
    sub_240FC2D4C(v18);
    sub_240FBA1A8(v28, &qword_27E51E578, v29);
LABEL_10:
    v24 = v29;
    v21 = v93;
    goto LABEL_4;
  }

  v87 = v20;
  v31 = *v23;
  (*v23)(v90, v28, v25);
  v32 = &v18[v14[25]];
  v33 = v84;
  sub_240FB99A0(v32, v84, &qword_27E51E578, v29);
  if (v30(v33, 1, v25) == 1)
  {
    (*v80)(v90, v25);
    sub_240FC2D4C(v18);
    sub_240FBA1A8(v33, &qword_27E51E578, v29);
    v22 = v81;
    v14 = v82;
    v20 = v87;
    goto LABEL_10;
  }

  v31(v83, v33, v25);
  v94 = 0;
  v95 = 0xE000000000000000;
  v34 = v89;

  sub_240FD46BC();

  v94 = 0x2074612079737542;
  v95 = 0xE90000000000005BLL;
  v35 = sub_240FD41BC();
  v36 = v77;
  v37 = [v77 stringFromDate_];

  v38 = sub_240FD449C();
  v40 = v39;

  MEMORY[0x245CD64D0](v38, v40);

  MEMORY[0x245CD64D0](539831584, 0xE400000000000000);
  v41 = sub_240FD41BC();
  v42 = [v36 stringFromDate_];

  v43 = sub_240FD449C();
  v45 = v44;

  MEMORY[0x245CD64D0](v43, v45);

  MEMORY[0x245CD64D0](93, 0xE100000000000000);
  v46 = v94;
  v47 = v95;
  sub_240FC2DA8(v85);
  v48 = v86;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = v48;
  v51 = sub_240FB70D8(v91, v34);
  v52 = *(v48 + 16);
  v53 = (v50 & 1) == 0;
  v54 = v52 + v53;
  v21 = v93;
  if (!__OFADD__(v52, v53))
  {
    v55 = v50;
    v79 = v47;
    v85 = v46;
    if (*(v48 + 24) >= v54)
    {
      v25 = v78;
      v20 = v87;
      if (isUniquelyReferenced_nonNull_native)
      {
        v58 = v94;
        if ((v50 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_240FB8640();
        v58 = v94;
        if ((v55 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_240FB81DC(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_240FB70D8(v91, v34);
      v25 = v78;
      v20 = v87;
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_32;
      }

      v51 = v56;
      v58 = v94;
      if ((v55 & 1) == 0)
      {
LABEL_20:
        v58[(v51 >> 6) + 8] |= 1 << v51;
        v60 = (v58[6] + 16 * v51);
        *v60 = v91;
        v60[1] = v34;
        *(v58[7] + 8 * v51) = MEMORY[0x277D84F90];
        v61 = v58[2];
        v62 = __OFADD__(v61, 1);
        v63 = v61 + 1;
        if (v62)
        {
          goto LABEL_31;
        }

        v58[2] = v63;
        goto LABEL_22;
      }
    }

    v59 = v58;

    v58 = v59;
LABEL_22:
    v86 = v58;
    v64 = v58[7];
    v65 = *(v64 + 8 * v51);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *(v64 + 8 * v51) = v65;
    if ((v66 & 1) == 0)
    {
      v65 = sub_240FB6B4C(0, *(v65 + 2) + 1, 1, v65);
      *(v64 + 8 * v51) = v65;
    }

    v68 = *(v65 + 2);
    v67 = *(v65 + 3);
    if (v68 >= v67 >> 1)
    {
      *(v64 + 8 * v51) = sub_240FB6B4C((v67 > 1), v68 + 1, 1, v65);
    }

    v69 = *v80;
    (*v80)(v83, v25);
    v69(v90, v25);
    sub_240FC2D4C(v18);
    v70 = *(v64 + 8 * v51);
    *(v70 + 16) = v68 + 1;
    v71 = v70 + 16 * v68;
    v72 = v79;
    *(v71 + 32) = v85;
    *(v71 + 40) = v72;
    v85 = sub_240FC1880;
    v22 = v81;
    v14 = v82;
    v23 = v76;
    v24 = &qword_240FD51A0;
    goto LABEL_4;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_240FD481C();
  __break(1u);
  return result;
}

uint64_t ATSpotlightCalendarRetriever.getCalendarEvents(atTime:excludeAllDayEvents:maxNumRecordsToFetch:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 80) = a2;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_240FC18B8, 0, 0);
}

uint64_t sub_240FC18B8()
{
  v1 = *(v0 + 32);
  result = sub_240FD41EC();
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = v3 - 30;
  if (__OFSUB__(v3, 30))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(v0 + 32);
  result = sub_240FD41EC();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6 + 30;
  if (__OFADD__(v6, 30))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 48);
  v9 = *(v0 + 80);
  sub_240FD46BC();
  MEMORY[0x245CD64D0](0xD000000000000018, 0x8000000240FD6510);
  *(v0 + 16) = v7;
  v10 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v10);

  MEMORY[0x245CD64D0](0xD00000000000001ALL, 0x8000000240FD6530);
  *(v0 + 24) = v4;
  v11 = sub_240FD47DC();
  MEMORY[0x245CD64D0](v11);

  MEMORY[0x245CD64D0](10537, 0xE200000000000000);
  if (v9)
  {
    v12 = 0xD000000000000017;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 0x8000000240FD6550;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x245CD64D0](v12, v13);

  *(v0 + 56) = 0xE000000000000000;
  v14 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  v15 = *(v8 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_240FC1B6C;
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);

  return ATSpotlightDataRetriever.getRecentRecordsAsync(bundleId:nRecords:addendum:)(v14, v15, v17, 0, 0xE000000000000000);
}

uint64_t sub_240FC1B6C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_240FC1C8C, 0, 0);
}

uint64_t sub_240FC1C8C()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_240FC6B58(sub_240FC2DB8, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_240FC1D38(unint64_t a1, uint64_t a2)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
  v3 = *(*(v46 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v46);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v42 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7E0, &qword_240FD5A10);
  v7 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v48 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E578, &qword_240FD51A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v42 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = type metadata accessor for ATSpotlightDataRecord();
  v21 = *(v20 + 96);
  v51 = a1;
  sub_240FB99A0(a1 + v21, v19, &qword_27E51E578, &qword_240FD51A0);
  v22 = sub_240FD422C();
  v42 = *(v22 - 8);
  v23 = *(v42 + 48);
  v24 = v23(v19, 1, v22);
  sub_240FBA1A8(v19, &qword_27E51E578, &qword_240FD51A0);
  if (v24 == 1 || (v25 = *(v20 + 100), sub_240FB99A0(v51 + v25, v17, &qword_27E51E578, &qword_240FD51A0), v26 = v23(v17, 1, v22), sub_240FBA1A8(v17, &qword_27E51E578, &qword_240FD51A0), v26 == 1))
  {
    v27 = 0;
    return v27 & 1;
  }

  v28 = v50;
  sub_240FB99A0(v51 + v21, v50, &qword_27E51E578, &qword_240FD51A0);
  result = v23(v28, 1, v22);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v30 = v49;
  sub_240FB99A0(v51 + v25, v49, &qword_27E51E578, &qword_240FD51A0);
  result = v23(v30, 1, v22);
  if (result != 1)
  {
    v31 = sub_240FC2E7C();
    result = sub_240FD446C();
    if (result)
    {
      v32 = v42;
      v33 = *(v42 + 16);
      v34 = v44;
      v33(v44, v28, v22);
      v35 = v46;
      v33((v34 + *(v46 + 48)), v30, v22);
      v36 = v45;
      sub_240FB99A0(v34, v45, &qword_27E51E7D8, &qword_240FD5A08);
      v37 = *(v35 + 48);
      v51 = v31;
      v38 = *(v32 + 32);
      v38(v48, v36, v22);
      v39 = *(v32 + 8);
      v39(v36 + v37, v22);
      v40 = v34;
      v41 = v48;
      sub_240FC2ED4(v40, v36);
      v38((v41 + *(v43 + 36)), v36 + *(v35 + 48), v22);
      v39(v36, v22);
      v39(v49, v22);
      v39(v50, v22);
      if (sub_240FD445C())
      {
        v27 = sub_240FD446C();
      }

      else
      {
        v27 = 0;
      }

      sub_240FBA1A8(v41, &qword_27E51E7E0, &qword_240FD5A10);
      return v27 & 1;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ATSpotlightCalendarRetriever.__allocating_init()()
{
  v1 = sub_240FD422C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  v9 = (v8 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  *v9 = 0xD000000000000013;
  v9[1] = 0x8000000240FD5E40;
  *(v8 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_timestampSearchPaddingInSeconds) = 30;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v2 + 8))(v5, v1);
  *(v8 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v8;
}

uint64_t ATSpotlightCalendarRetriever.init()()
{
  v1 = v0;
  v2 = sub_240FD422C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID);
  *v7 = 0xD000000000000013;
  v7[1] = 0x8000000240FD5E40;
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_timestampSearchPaddingInSeconds) = 30;
  sub_240FD421C();
  sub_240FD41AC();
  (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records) = MEMORY[0x277D84F90];
  return v1;
}

uint64_t ATSpotlightCalendarRetriever.deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  v4 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);

  return v0;
}

uint64_t ATSpotlightCalendarRetriever.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_oneYearBack;
  v2 = sub_240FD422C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine24ATSpotlightDataRetriever_records);

  v4 = *(v0 + OBJC_IVAR____TtC15ArchetypeEngine28ATSpotlightCalendarRetriever_bundleID + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_240FC263C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240FC268C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240FC2768;

  return sub_240FC7B7C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_240FC2768()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240FC285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7C0, &qword_240FD5988);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_240FB99A0(a3, v27 - v11, &qword_27E51E7C0, &qword_240FD5988);
  v13 = sub_240FD459C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_240FBA1A8(v12, &qword_27E51E7C0, &qword_240FD5988);
  }

  else
  {
    sub_240FD458C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_240FD456C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_240FD44BC() + 32;
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

      sub_240FBA1A8(a3, &qword_27E51E7C0, &qword_240FD5988);

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

  sub_240FBA1A8(a3, &qword_27E51E7C0, &qword_240FD5988);
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

uint64_t sub_240FC2B5C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FC2C54;

  return v7(a1);
}

uint64_t sub_240FC2C54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240FC2D4C(uint64_t a1)
{
  v2 = type metadata accessor for ATSpotlightDataRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240FC2DA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for ATSpotlightCalendarRetriever()
{
  result = qword_27E51E7C8;
  if (!qword_27E51E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240FC2E7C()
{
  result = qword_27E51E7E8;
  if (!qword_27E51E7E8)
  {
    sub_240FD422C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E7E8);
  }

  return result;
}

uint64_t sub_240FC2ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E7D8, &qword_240FD5A08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FC2F44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240FC2F7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240FC30F4;

  return sub_240FC2B5C(a1, v5);
}

uint64_t sub_240FC3034(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_240FC2768;

  return sub_240FC2B5C(a1, v5);
}

uint64_t sub_240FC30F8()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v2)
  {
    v24 = 0xD000000000000012;
    v25 = 0x8000000240FD6680;
    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v23 = 0x8000000240FD66A0;
    v21 = 0xD000000000000013;
    v5 = v1[5];
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = *v1;
  sub_240FD45AC();
  v24 = 0;
  v25 = 0xE000000000000000;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_240FD45AC();
  v21 = 0;
  v23 = 0xE000000000000000;
  v5 = v1[5];
  if (v5)
  {
LABEL_4:
    v18 = v1[4];
    v6 = v5;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0x8000000240FD66C0;
  v18 = 0xD000000000000010;
LABEL_8:
  v8 = 0x6E776F6E6B6E755BLL;
  if (v1[7])
  {
    v19 = v1[6];
    v9 = v1[7];
    v10 = v1[9];
    if (v10)
    {
LABEL_10:
      v8 = v1[8];
      v11 = v10;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0xEE005D7974696320;
    v19 = 0x6E776F6E6B6E755BLL;
    v10 = v1[9];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  v11 = 0xEF5D657461747320;
LABEL_13:
  v26 = v8;
  if (v1[11])
  {
    v20 = v1[10];
    v22 = v1[11];
    v12 = v1[13];
    if (v12)
    {
LABEL_15:
      v17 = v1[12];
      v13 = v12;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0x8000000240FD66E0;
    v20 = 0xD000000000000015;
    v12 = v1[13];
    if (v12)
    {
      goto LABEL_15;
    }
  }

  v13 = 0x8000000240FD6700;
  v17 = 0xD000000000000011;
LABEL_18:
  v14 = 0xE000000000000000;

  sub_240FD46BC();

  MEMORY[0x245CD64D0](v24, v25);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v21, v23);

  MEMORY[0x245CD64D0](2108457, 0xE300000000000000);
  MEMORY[0x245CD64D0](v18, v6);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v19, v9);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v26, v11);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v20, v22);

  MEMORY[0x245CD64D0](8236, 0xE200000000000000);
  MEMORY[0x245CD64D0](v17, v13);

  if (v1[15])
  {
    MEMORY[0x245CD64D0](v1[14]);
    MEMORY[0x245CD64D0](41, 0xE100000000000000);
    v15 = 10272;
    v14 = 0xE200000000000000;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x245CD64D0](v15, v14);

  return 40;
}
id sub_24113F6E4(uint64_t a1, unint64_t a2)
{
  v52[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2411673F0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_241165EE8();

  v8 = [v5 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_241168E60;
  v10 = *MEMORY[0x277CBD000];
  v11 = *MEMORY[0x277CBCFF8];
  v12 = MEMORY[0x277CBCFC0];
  *(v9 + 32) = *MEMORY[0x277CBD000];
  *(v9 + 40) = v11;
  v13 = *v12;
  v14 = *MEMORY[0x277CBD098];
  *(v9 + 48) = *v12;
  *(v9 + 56) = v14;
  v15 = *MEMORY[0x277CBD138];
  *(v9 + 64) = *MEMORY[0x277CBD138];
  v16 = *(v2 + 16);
  v17 = v10;
  v18 = v11;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E68, &qword_241168F18);
  v22 = sub_241165EE8();

  v52[0] = 0;
  v23 = [v16 unifiedContactsMatchingPredicate:v8 keysToFetch:v22 error:v52];

  v24 = v52[0];
  if (v23)
  {
    sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
    v25 = sub_241165EF8();
    v26 = v24;
  }

  else
  {
    v27 = v52[0];
    v28 = sub_241165058();

    swift_willThrow();
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v29 = sub_241165288();
    __swift_project_value_buffer(v29, qword_27E533AE0);

    v30 = v28;
    v31 = sub_241165268();
    v32 = sub_241166048();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v52[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_241156B38(a1, a2, v52);
      *(v33 + 12) = 2112;
      v36 = v28;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_2410F8000, v31, v32, "Error fetching contact for identifier %s: %@", v33, 0x16u);
      sub_2410FB29C(v34, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v33, -1, -1);
    }

    else
    {
    }

    v25 = MEMORY[0x277D84F90];
  }

  if (v25 >> 62)
  {
    if (sub_2411661F8() < 2)
    {
      goto LABEL_15;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_15;
  }

  if (qword_27E5305D0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v38 = sub_241165288();
    __swift_project_value_buffer(v38, qword_27E533AE0);

    v39 = sub_241165268();
    v40 = sub_241166048();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_241156B38(a1, a2, v52);
      _os_log_impl(&dword_2410F8000, v39, v40, "Matched multiple contacts for identifier %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245CDC5E0](v42, -1, -1);
      MEMORY[0x245CDC5E0](v41, -1, -1);
    }

LABEL_15:
    if (v25 >> 62)
    {
      break;
    }

    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_17:
    if ((v25 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x245CDBC20](0, v25);
      goto LABEL_20;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v25 + 32);
LABEL_20:
      v44 = v43;

      goto LABEL_27;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  if (sub_2411661F8())
  {
    goto LABEL_17;
  }

LABEL_22:

  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v45 = sub_241165288();
  __swift_project_value_buffer(v45, qword_27E533AE0);

  v46 = sub_241165268();
  v47 = sub_241166048();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_241156B38(a1, a2, v52);
    _os_log_impl(&dword_2410F8000, v46, v47, "Didn't find any contacts for identifier %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x245CDC5E0](v49, -1, -1);
    MEMORY[0x245CDC5E0](v48, -1, -1);
  }

  v44 = 0;
LABEL_27:
  v50 = *MEMORY[0x277D85DE8];
  return v44;
}

id sub_24113FD84(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_241165DA8();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_241165058();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_24113FE6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

id sub_24113FEE0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_241165DA8();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_241165058();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_24113FFBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24114000C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241106740;

  return sub_24113DDE8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2411400E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241140150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241135C18;

  return sub_24113012C(a1, v5);
}

uint64_t sub_241140208()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241140240(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_241106740;

  return sub_24113012C(a1, v5);
}

uint64_t sub_2411402F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  v4 = sub_2411651A8();
  v3[39] = v4;
  v5 = *(v4 - 8);
  v3[40] = v5;
  v6 = *(v5 + 64) + 15;
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2411403BC, 0, 0);
}

uint64_t sub_2411403BC()
{
  v1 = v0[41];
  v2 = v0[38];
  v27 = v0[37];
  v3 = v0[36];
  sub_2411656B8();
  v4 = sub_241165DA8();

  v5 = [objc_opt_self() destinationWithURI_];
  v0[42] = v5;

  v6 = sub_2411656C8();
  sub_2411653D8();

  v7 = sub_2411656C8();
  v0[43] = sub_2411653A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v8 = swift_allocObject();
  v0[44] = v8;
  *(v8 + 16) = xmmword_241167630;
  *(v8 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  v10 = *MEMORY[0x277D18868];
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v11;
  v12 = v5;
  v13 = sub_2410FB2FC(inited);
  v0[45] = v13;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_241167FE0;
  *(v14 + 32) = 0xD000000000000010;
  *(v14 + 40) = 0x800000024116AA70;
  v15 = sub_241165188();
  v16 = MEMORY[0x277D837D0];
  *(v14 + 48) = v15;
  *(v14 + 56) = v17;
  *(v14 + 72) = v16;
  *(v14 + 80) = 0xD000000000000017;
  *(v14 + 88) = 0x800000024116AA90;
  v18 = MEMORY[0x277D839B0];
  *(v14 + 96) = 1;
  *(v14 + 120) = v18;
  *(v14 + 128) = 0x6369706F74;
  *(v14 + 136) = 0xE500000000000000;
  *(v14 + 144) = sub_241165368();
  *(v14 + 152) = v19;
  *(v14 + 168) = v16;
  *(v14 + 176) = 0x696669746E656469;
  *(v14 + 216) = v16;
  *(v14 + 184) = 0xEA00000000007265;
  *(v14 + 192) = v27;
  *(v14 + 200) = v2;

  v20 = sub_2410FB9E0(v14);
  v0[46] = v20;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v21 = qword_27E533BE8;
  v22 = swift_task_alloc();
  v0[47] = v22;
  v22[2] = v21;
  v22[3] = v20;
  v22[4] = v8;
  v22[5] = v13;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[48] = v24;
  *v24 = v0;
  v24[1] = sub_24114075C;
  v25 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v22, v25);
}

uint64_t sub_24114075C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v11 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_241140934;
  }

  else
  {
    v6 = v2[46];
    v5 = v2[47];
    v9 = v2 + 44;
    v8 = v2[44];
    v7 = v9[1];

    v4 = sub_24114089C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24114089C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_241140934()
{
  v1 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[39];

  (*(v7 + 8))(v6, v8);
  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533AE0);
  v10 = sub_241165268();
  v11 = sub_241166068();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[49];
  v14 = v0[42];
  if (v12)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2410F8000, v10, v11, "Not able to send out response acknowledgement back to requester", v15, 2u);
    MEMORY[0x245CDC5E0](v15, -1, -1);
  }

  v16 = v0[41];

  v17 = v0[1];

  return v17();
}

unint64_t sub_241140AC8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  v4 = 0xD00000000000002DLL;
  v5 = "alconsent.choice.approve";
  if (a1)
  {
    v4 = 0xD000000000000041;
  }

  else
  {
    v5 = "e AskTo response.";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v6;
}

unint64_t sub_241140BAC()
{
  if (*v0)
  {
    result = 0xD000000000000041;
  }

  else
  {
    result = 0xD00000000000002DLL;
  }

  *v0;
  return result;
}

uint64_t sub_241140BF0(uint64_t a1)
{
  v2 = sub_241141AD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241140C2C(uint64_t a1)
{
  v2 = sub_241141AD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241140C68(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(type metadata accessor for ScreenTimeResponseTask() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_241140D24, 0, 0);
}

uint64_t sub_241140D24()
{
  v82 = v0;
  v81[2] = *MEMORY[0x277D85DE8];
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E5339F0);
  sub_241141790(v1, v2);
  v4 = sub_241165268();
  v5 = sub_241166068();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v81[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v81);
    *(v8 + 12) = 2080;
    sub_241165BD8();
    sub_2411418A4();
    v10 = sub_2411663B8();
    v12 = v11;
    sub_2411417F4(v7);
    v13 = sub_241156B38(v10, v12, v81);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s called for client %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {

    sub_2411417F4(v7);
  }

  v14 = *(v0 + 24);
  v15 = sub_241165CD8();
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277D4B8D8]) init];
    v18 = sub_2411656A8();
    v19 = sub_241165418();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    v23 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v21 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v21) & 0xF;
    }

    else
    {
      v24 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {

LABEL_73:
      v55 = v16;
      v56 = sub_241165268();
      v57 = sub_241166048();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v81[0] = v60;
        *v58 = 136315394;
        *(v58 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v81);
        *(v58 + 12) = 2112;
        *(v58 + 14) = v55;
        *v59 = v16;
        v61 = v55;
        _os_log_impl(&dword_2410F8000, v56, v57, "%s Unable to derive STAskForTimeAnswer from AskTo response. response: %@", v58, 0x16u);
        sub_2410FB29C(v59, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x245CDC5E0](v60, -1, -1);
        MEMORY[0x245CDC5E0](v58, -1, -1);
      }

      sub_241141850();
      swift_allocError();
      *v62 = 1;
      swift_willThrow();

      goto LABEL_80;
    }

    if ((v21 & 0x1000000000000000) != 0)
    {
      v27 = sub_24113049C(v19, v21, 10);
      v54 = v80;
LABEL_72:

      if ((v54 & 1) == 0)
      {
        v63 = sub_2411656C8();
        sub_241165328();

        v64 = sub_241165DA8();

        *(v0 + 16) = 0;
        v65 = [v17 respondToAskForTimeRequestWithIdentifier:v64 answer:v27 error:v0 + 16];

        v66 = *(v0 + 16);
        if (v65)
        {
          v67 = v66;
          v68 = v16;
          v69 = sub_241165268();
          v70 = sub_241166068();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v81[0] = v73;
            *v71 = 136315394;
            *(v71 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v81);
            *(v71 + 12) = 2112;
            *(v71 + 14) = v68;
            *v72 = v16;
            v74 = v68;
            _os_log_impl(&dword_2410F8000, v69, v70, "%s Updated ScreenTime with response. response: %@", v71, 0x16u);
            sub_2410FB29C(v72, &qword_27E530E30, &qword_2411676F0);
            MEMORY[0x245CDC5E0](v72, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v73);
            MEMORY[0x245CDC5E0](v73, -1, -1);
            MEMORY[0x245CDC5E0](v71, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v75 = v66;
          sub_241165058();

          swift_willThrow();
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    if ((v21 & 0x2000000000000000) != 0)
    {
      v81[0] = v19;
      v81[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v22)
        {
          if (--v22)
          {
            v27 = 0;
            v46 = v81 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                break;
              }

              ++v46;
              if (!--v22)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_90:
        __break(1u);
      }

      if (v19 != 45)
      {
        if (v22)
        {
          v27 = 0;
          v51 = v81;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v53 + v52;
            if (__OFADD__(v53, v52))
            {
              break;
            }

            v51 = (v51 + 1);
            if (!--v22)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v22)
      {
        if (--v22)
        {
          v27 = 0;
          v40 = v81 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v42 - v41;
            if (__OFSUB__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v22)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        v25 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v25 = sub_2411662F8();
      }

      v26 = *v25;
      if (v26 == 43)
      {
        if (v23 >= 1)
        {
          v22 = v23 - 1;
          if (v23 != 1)
          {
            v27 = 0;
            if (v25)
            {
              v43 = v25 + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  goto LABEL_70;
                }

                v45 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_70;
                }

                v27 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_70;
                }

                ++v43;
                if (!--v22)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_89;
      }

      if (v26 != 45)
      {
        if (v23)
        {
          v27 = 0;
          if (v25)
          {
            while (1)
            {
              v49 = *v25 - 48;
              if (v49 > 9)
              {
                goto LABEL_70;
              }

              v50 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_70;
              }

              v27 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                goto LABEL_70;
              }

              ++v25;
              if (!--v23)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v27 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_71;
      }

      if (v23 >= 1)
      {
        v22 = v23 - 1;
        if (v23 != 1)
        {
          v27 = 0;
          if (v25)
          {
            v28 = v25 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_70;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_70;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_70;
              }

              ++v28;
              if (!--v22)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v22) = 0;
LABEL_71:
          v54 = v22;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v31 = *(v0 + 24);
  v32 = sub_241165268();
  v33 = sub_241166058();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 24);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v81[0] = v37;
    *v35 = 136315394;
    *(v35 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v81);
    *(v35 + 12) = 2112;
    *(v35 + 14) = v34;
    *v36 = v34;
    v38 = v34;
    _os_log_impl(&dword_2410F8000, v32, v33, "%s The AskTo payload doesn't have a response attached: %@", v35, 0x16u);
    sub_2410FB29C(v36, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x245CDC5E0](v37, -1, -1);
    MEMORY[0x245CDC5E0](v35, -1, -1);
  }

  sub_241141850();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();
LABEL_80:
  v76 = *(v0 + 40);

  v77 = *(v0 + 8);
  v78 = *MEMORY[0x277D85DE8];

  return v77();
}

uint64_t type metadata accessor for ScreenTimeResponseTask()
{
  result = qword_27E530EA0;
  if (!qword_27E530EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241141790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeResponseTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2411417F4(uint64_t a1)
{
  v2 = type metadata accessor for ScreenTimeResponseTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241141850()
{
  result = qword_27E530E90;
  if (!qword_27E530E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E90);
  }

  return result;
}

unint64_t sub_2411418A4()
{
  result = qword_27E530E98;
  if (!qword_27E530E98)
  {
    sub_241165BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E98);
  }

  return result;
}

uint64_t sub_241141920(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165BD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2411419A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165BD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_241141A10()
{
  result = sub_241165BD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_241141A84()
{
  result = qword_27E530EB0;
  if (!qword_27E530EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530EB0);
  }

  return result;
}

unint64_t sub_241141AD8()
{
  result = qword_27E530EB8;
  if (!qword_27E530EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530EB8);
  }

  return result;
}

uint64_t sub_241141B30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

void sub_241141C00(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_2411426D0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241141F7C;
  aBlock[3] = &block_descriptor_6_0;
  v14 = _Block_copy(aBlock);

  [a2 contactManagementStateForDSID:v11 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_241141DDC(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27E530608 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E533B88);
    v5 = a2;
    v6 = sub_241165268();
    v7 = sub_241166048();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2410F8000, v6, v7, "Error fetching contact management state: %@", v8, 0xCu);
      sub_2410FDEB8(v9);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  return sub_241165F78();
}

void sub_241141F7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_241142014()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  type metadata accessor for ContactManagementState(0);
  *v5 = v0;
  v5[1] = sub_241142130;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000024116C130, sub_241142634, v3, v6);
}

uint64_t sub_241142130()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_241142248, 0, 0);
}

uint64_t sub_241142248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_2411422CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_241142404;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530EC0, &unk_2411690F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_241141B30;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 communicationPoliciesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241142404()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_241142584;
  }

  else
  {
    v3 = sub_241142514;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241142514()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 168) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_241142584()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[21] != 0;
  v4 = v0[1];

  return v4(0, v3);
}

uint64_t sub_24114263C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2411426D0(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138) - 8) + 80);

  return sub_241141DDC(a1, a2);
}

uint64_t block_copy_helper_4_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241142774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FD0, &qword_241169280);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_241100374(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2410FC87C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2410FC87C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2410FC87C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_241166228();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2410FC87C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

uint64_t sub_241142A3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FD0, &qword_241169280);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2410FC87C(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2410FC87C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_241166228();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2410FC87C(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

uint64_t sub_241142CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
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

uint64_t sub_241142DCC(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531000, &unk_2411684B8);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v19 = MEMORY[0x277D84F90];
    sub_241100478(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_2410FC88C(v13, v5, &unk_27E531000, &unk_2411684B8);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_241100478(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_24114B52C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_241142FF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2411661F8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_241100498(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x245CDBC20](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_241100498((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2410FC87C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v11 = *v8;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
        swift_dynamicCast();
        v13 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_241100498((v9 > 1), v10 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v10 + 1;
        sub_2410FC87C(v12, (v3 + 32 * v10 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2411431EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_241100498(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_241100498((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_2410FC87C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_2411432EC(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000027;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_12;
    }

    return 0xD000000000000036;
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000030;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD00000000000002ELL;
      }

LABEL_12:
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD00000000000001ALL, 0x800000024116C480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();
      return 0;
    }

    return 0xD000000000000021;
  }
}

unint64_t sub_241143480(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_2411432EC(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v4)
  {
    sub_241166318();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v5;
}

uint64_t sub_241143584(uint64_t a1)
{
  v2 = sub_24114B91C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411435C0(uint64_t a1)
{
  v2 = sub_24114B91C();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_2411435FC(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  *(inited + 16) = xmmword_2411673F0;
  v4 = 0xD000000000000039;
  *(inited + 40) = 0xE400000000000000;
  v5 = "ons to validate.";
  v6 = 0xD000000000000020;
  if (a1 != 2)
  {
    v6 = 0xD00000000000001ALL;
    v5 = "com.apple.asktod.ids";
  }

  v7 = "ntifier was nil.";
  if (a1)
  {
    v4 = 0xD00000000000004BLL;
  }

  else
  {
    v7 = "ng to the given recipients.";
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9 | 0x8000000000000000;
  v10 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v10;
}

unint64_t sub_24114371C()
{
  v1 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001ALL;
  }

  v2 = 0xD00000000000004BLL;
  if (!*v0)
  {
    v2 = 0xD000000000000039;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_241143798(uint64_t a1)
{
  v2 = sub_24114B8C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411437D4(uint64_t a1)
{
  v2 = sub_24114B8C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241143810()
{
  if (qword_27E530628 != -1)
  {
    swift_once();
  }

  v0 = qword_27E533BD8;
  v1 = type metadata accessor for PendingAskStore();
  v23 = v1;
  v24 = &off_2852EBB00;
  v22[0] = v0;
  v2 = type metadata accessor for ResponseHandler();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v22, v1);
  v5 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;

  v10 = sub_2411312A0(v9, v3);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v23 = v2;
  v24 = &off_2852EBCD0;
  v22[0] = v10;
  type metadata accessor for AskToIDSController();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v2);
  v13 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;

  sub_2411474A4(v17, v11);
  v19 = v18;

  result = __swift_destroy_boxed_opaque_existential_1(v22);
  qword_27E533BE8 = v19;
  return result;
}

void sub_241143A68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E533AC8);

  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
    v14 = MEMORY[0x245CDB850](a1, v13);
    v16 = sub_241156B38(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2410F8000, v9, v10, "Validating destinations for sending. destinations: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_7:
      v17 = [objc_opt_self() sharedInstance];
      if (v17)
      {
        v18 = v17;
        v19 = [objc_opt_self() refreshIDInfo];
        [v19 setForceRefresh_];
        sub_241142FF4(a1);
        v47 = sub_241165EE8();

        v46 = sub_241165DA8();
        v20 = v19;
        v21 = sub_241165DA8();
        v45 = *(v49 + 32);
        v22 = swift_allocObject();
        v22[2] = v49;
        v22[3] = a4;
        v22[4] = a5;
        v22[5] = a6;
        aBlock[4] = sub_24114B314;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24114498C;
        aBlock[3] = &block_descriptor_26;
        v23 = _Block_copy(aBlock);

        v50 = a5;
        sub_24114B20C(a5);

        LOBYTE(v19) = [v18 idInfoForDestinations:v47 service:v46 infoTypes:1 options:v20 listenerID:v21 queue:v45 completionBlock:v23];
        _Block_release(v23);

        if (v19)
        {
          goto LABEL_13;
        }

        v24 = sub_241165268();
        v25 = sub_241166048();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          aBlock[0] = v27;
          *v26 = 136315138;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
          v29 = MEMORY[0x245CDB850](a1, v28);
          v31 = sub_241156B38(v29, v30, aBlock);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_2410F8000, v24, v25, "Failed to perform IDQuery {destinations: %s}", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x245CDC5E0](v27, -1, -1);
          MEMORY[0x245CDC5E0](v26, -1, -1);
        }

        if (!v50)
        {
LABEL_13:
        }

        else
        {
          sub_24114B270();
          v32 = swift_allocError();
          *v33 = 4;
          v50(MEMORY[0x277D84FA0], v32);
        }

        return;
      }

      v34 = sub_241165268();
      v35 = sub_241166048();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_241156B38(0xD00000000000005ALL, 0x800000024116C390, aBlock);
        _os_log_impl(&dword_2410F8000, v34, v35, "%s query controller was nil", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x245CDC5E0](v37, -1, -1);
        MEMORY[0x245CDC5E0](v36, -1, -1);
      }

      if (a5)
      {
        sub_24114B270();
        v38 = swift_allocError();
        *v39 = 1;
LABEL_23:
        a5(MEMORY[0x277D84FA0], v38);

        return;
      }

      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v40 = sub_241165268();
  v41 = sub_241166048();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_241156B38(0xD00000000000005ALL, 0x800000024116C390, aBlock);
    _os_log_impl(&dword_2410F8000, v40, v41, "%s called with no destinations", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x245CDC5E0](v43, -1, -1);
    MEMORY[0x245CDC5E0](v42, -1, -1);
  }

  if (a5)
  {
    sub_24114B270();
    v38 = swift_allocError();
    *v44 = 0;
    goto LABEL_23;
  }
}

void sub_2411441A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  if (!a1)
  {
    v62 = a5;
    if (a2)
    {
      sub_24114B270();
      v61 = swift_allocError();
      *v64 = a2;
      v65 = a2;
    }

    else
    {
      sub_24114B270();
      v61 = swift_allocError();
      *v66 = 5;
    }

    v60 = MEMORY[0x277D84FA0];
    if (v62)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v5 = a1;
  v70 = sub_2410FBB10(MEMORY[0x277D84F90]);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v71 = v5;
  if (!v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11;
LABEL_16:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    sub_2410FC7CC(*(v5 + 48) + 40 * v16, &v74);
    sub_241100374(*(v5 + 56) + 32 * v16, v73);
    v77 = v74;
    v78 = v75;
    *&v79 = v76;
    sub_2410FC87C(v73, (&v79 + 8));
    v14 = v12;
LABEL_17:
    v84[0] = v79;
    v84[1] = v80;
    v85 = v81;
    v82 = v77;
    v83 = v78;
    if (!*(&v78 + 1))
    {
      break;
    }

    v77 = v82;
    v78 = v83;
    *&v79 = *&v84[0];
    sub_2410FC87C((v84 + 8), v73);
    sub_2410FC7CC(&v77, &v74);
    if (swift_dynamicCast())
    {
      v18 = v72[0];
      v17 = v72[1];
      sub_241100374(v73, &v74);
      sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
      if (!swift_dynamicCast())
      {

        if (qword_27E5305C8 != -1)
        {
          swift_once();
        }

        v19 = sub_241165288();
        __swift_project_value_buffer(v19, qword_27E533AC8);
        sub_241100374(v73, &v74);
        v20 = sub_241165268();
        v21 = sub_241166048();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v72[0] = v23;
          *v22 = 136315394;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
          v24 = sub_241165DE8();
          v26 = sub_241156B38(v24, v25, v72);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
          swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
          v27 = sub_241165DE8();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(&v74);
          v30 = sub_241156B38(v27, v29, v72);

          *(v22 + 14) = v30;
          v5 = v71;
          v31 = v21;
          v32 = v20;
          v33 = "value in IDS query results was not IDSIDInfoResult. Skipping. key type: %s, value type: %s";
LABEL_28:
          _os_log_impl(&dword_2410F8000, v32, v31, v33, v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CDC5E0](v23, -1, -1);
          MEMORY[0x245CDC5E0](v22, -1, -1);

          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v67 = v72[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v70;
      v45 = sub_2410FAD78(v18, v17);
      v46 = *(v70 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_51;
      }

      v49 = v44;
      if (*(v70 + 24) >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2411548F0();
        }
      }

      else
      {
        sub_241152C60(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_2410FAD78(v18, v17);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_53;
        }

        v45 = v50;
      }

      if (v49)
      {

        v70 = v74;
        v52 = *(v74 + 56);
        v53 = *(v52 + 8 * v45);
        *(v52 + 8 * v45) = v67;

        __swift_destroy_boxed_opaque_existential_1(v73);
        sub_2410FC828(&v77);
      }

      else
      {
        v54 = v74;
        *(v74 + 8 * (v45 >> 6) + 64) |= 1 << v45;
        v55 = (v54[6] + 16 * v45);
        *v55 = v18;
        v55[1] = v17;
        *(v54[7] + 8 * v45) = v67;

        __swift_destroy_boxed_opaque_existential_1(v73);
        sub_2410FC828(&v77);
        v56 = v54[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_52;
        }

        v70 = v54;
        v54[2] = v58;
      }

      v5 = v71;
      v11 = v14;
      if (!v9)
      {
LABEL_9:
        if (v10 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v9 = 0;
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_241166428();
        __break(1u);
        return;
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v34 = sub_241165288();
      __swift_project_value_buffer(v34, qword_27E533AC8);
      sub_241100374(v73, &v74);
      v20 = sub_241165268();
      v35 = sub_241166048();
      if (os_log_type_enabled(v20, v35))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v72[0] = v23;
        *v22 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v36 = sub_241165DE8();
        v38 = sub_241156B38(v36, v37, v72);

        *(v22 + 4) = v38;
        *(v22 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v39 = sub_241165DE8();
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v42 = sub_241156B38(v39, v41, v72);

        *(v22 + 14) = v42;
        v5 = v71;
        v31 = v35;
        v32 = v20;
        v33 = "key in IDS query results was not a String. Skipping. key type: %s, value type: %s";
        goto LABEL_28;
      }

LABEL_6:

      __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v73);
      sub_2410FC828(&v77);
      v11 = v14;
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  sub_2411477D4(v70, a4);
  v60 = v59;

  v61 = 0;
  v62 = a5;
  if (!a5)
  {
    goto LABEL_44;
  }

LABEL_43:
  v62(v60, v61);
LABEL_44:
}

uint64_t sub_24114498C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_241165D18();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_241144A38(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533AC8);

  v13 = sub_241165268();
  v14 = sub_241166068();

  if (os_log_type_enabled(v13, v14))
  {
    v33 = a4;
    v15 = swift_slowAlloc();
    v34 = a5;
    v35 = swift_slowAlloc();
    v16 = v35;
    *v15 = 136315394;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
    v18 = MEMORY[0x245CDB850](a2, v17);
    v20 = sub_241156B38(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_241165D28();
    v23 = sub_241156B38(v21, v22, &v35);

    *(v15 + 14) = v23;
    v6 = v5;
    _os_log_impl(&dword_2410F8000, v13, v14, "Sending message {destinations: %s, message: %s}", v15, 0x16u);
    swift_arrayDestroy();
    v24 = v16;
    a5 = v34;
    MEMORY[0x245CDC5E0](v24, -1, -1);
    v25 = v15;
    a4 = v33;
    MEMORY[0x245CDC5E0](v25, -1, -1);
  }

  if (a2 >> 62)
  {
    if (sub_2411661F8())
    {
      goto LABEL_7;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v26 = swift_allocObject();
    v26[2] = a4;
    v26[3] = a5;
    v26[4] = v6;
    v26[5] = a1;

    sub_24114B20C(a4);

    sub_241143A68(a2, 0xD00000000000001DLL, 0x800000024116C330, a3, sub_24114B200, v26);

    return;
  }

  v27 = sub_241165268();
  v28 = sub_241166048();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116C350, &v35);
    _os_log_impl(&dword_2410F8000, v27, v28, "%s called with no destinations", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245CDC5E0](v30, -1, -1);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  if (a4)
  {
    sub_24114B21C();
    v31 = swift_allocError();
    *v32 = 0;
    a4(0, v31);
  }
}

void sub_241144E5C(uint64_t a1, id a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    if (qword_27E5305C8 != -1)
    {
      v62 = a3;
      swift_once();
      a3 = v62;
    }

    v64 = a3;
    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533AC8);

    v9 = sub_241165268();
    v10 = sub_241166068();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v66 = v12;
      *v11 = 136315138;
      v13 = sub_241165FE8();
      v15 = sub_241156B38(v13, v14, &v66);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2410F8000, v9, v10, "Sending to valid destinations %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FC0, &qword_241169270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    v17 = *MEMORY[0x277D18570];
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v18;
    *(inited + 48) = 1;
    v19 = sub_2410FC120(inited);
    swift_setDeallocating();
    sub_2410FB29C(inited + 32, &qword_27E530FC8, &qword_241169278);
    v20 = *(a5 + 16);
    sub_241142774(a6);
    v21 = sub_241165D08();

    v22 = sub_241165FB8();
    sub_241142A3C(v19);

    v23 = sub_241165D08();

    v65 = 0;
    v66 = 0;
    LODWORD(inited) = [v20 sendMessage:v21 toDestinations:v22 priority:300 options:v23 identifier:&v66 error:&v65];

    v24 = v66;
    if (!inited)
    {
      v40 = v65;
      v41 = v24;
      v42 = sub_241165058();

      swift_willThrow();
      v43 = v42;
      v44 = sub_241165268();
      v45 = sub_241166048();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v42;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_2410F8000, v44, v45, "IDS failed to process the message send. error: %@", v46, 0xCu);
        sub_2410FB29C(v47, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v47, -1, -1);
        MEMORY[0x245CDC5E0](v46, -1, -1);
      }

      if (v64)
      {
        v50 = v42;
        v64(0, v42);
      }

      goto LABEL_27;
    }

    if (v66)
    {
      v66 = 0;
      v67 = 0;
      v25 = v65;
      v26 = v24;
      sub_241165DC8();
      v27 = v67;
      if (v67)
      {
        if (v64)
        {
          v28 = v66;
          sub_24114B20C(v64);

          v29 = sub_241165268();
          v30 = sub_241166068();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v66 = v32;
            *v31 = 136315138;
            *(v31 + 4) = sub_241156B38(v28, v27, &v66);
            _os_log_impl(&dword_2410F8000, v29, v30, "Caching completion block for IDS message send identifier: %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x245CDC5E0](v32, -1, -1);
            MEMORY[0x245CDC5E0](v31, -1, -1);
          }

          v33 = *(a5 + 24);
          v34 = swift_allocObject();
          *(v34 + 16) = v64;
          *(v34 + 24) = a4;
          v35 = OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_pendingSendCompletions;
          swift_beginAccess();

          v36 = *(v33 + v35);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v33 + v35);
          *(v33 + v35) = 0x8000000000000000;
          sub_241153FE8(sub_24114B3D8, v34, v28, v27, isUniquelyReferenced_nonNull_native);

          *(v33 + v35) = v65;
          swift_endAccess();
          sub_241100400(v64);
        }

        else
        {
        }

        goto LABEL_27;
      }
    }

    else
    {
      v51 = v65;
    }

    v52 = sub_241165268();
    v53 = sub_241166048();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2410F8000, v52, v53, "The IDS message send identifier was nil. Calling completion early and assuming the send was unsuccessful.", v54, 2u);
      MEMORY[0x245CDC5E0](v54, -1, -1);
    }

    if (v64)
    {
      sub_24114B21C();
      v55 = swift_allocError();
      *v56 = 2;
      v64(0, v55);
    }

    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_27:
    v57 = *MEMORY[0x277D85DE8];
    return;
  }

  v38 = a3;
  if (a2)
  {
    v39 = a2;
  }

  else
  {
    sub_24114B21C();
    v39 = swift_allocError();
    v59 = v58;
    a2 = 0;
    *v59 = 1;
  }

  v60 = a2;
  v38(0, v39);
  v61 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2411455D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_241145648(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_241143A68(a3, a4, a5, v19, sub_24114B4A0, v16);
}

uint64_t sub_2411457BC(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E533AC8);
    v5 = a2;
    v6 = sub_241165268();
    v7 = sub_241166048();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2410F8000, v6, v7, "Could not fetch valid destinations. Error: %@", v8, 0xCu);
      sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0);
  return sub_241165F78();
}

uint64_t sub_241145974(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_241144A38(a3, a4, a5, sub_24114B124, v15);
}

uint64_t sub_241145ADC(char a1, id a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F78();
  }

  else
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      sub_24114B21C();
      swift_allocError();
      *v4 = 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F68();
  }
}

unint64_t sub_241145B84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530770, &unk_241167470);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
        sub_2410FC7CC(*(a1 + 48) + 40 * v14, v29);
        sub_241100374(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_2410FC7CC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_241100374(v27 + 8, v22);
        sub_2410FB29C(v26, &qword_27E530FF0, &qword_241169298);
        v23 = v20;
        sub_2410FC87C(v22, v24);
        v15 = v23;
        sub_2410FC87C(v24, v25);
        sub_2410FC87C(v25, &v23);
        result = sub_2410FAD78(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2410FC87C(&v23, v12);
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
          result = sub_2410FC87C(&v23, (v2[7] + 32 * result));
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

      sub_2410FB29C(v26, &qword_27E530FF0, &qword_241169298);

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

uint64_t sub_241145E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_2411651A8();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241145F28, 0, 0);
}

uint64_t sub_241145F28()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 40), *(v0[2] + 64));
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_241145FD4;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_24113CC4C(v5, v3, v4);
}

uint64_t sub_241145FD4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2411460D0, 0, 0);
}

uint64_t sub_2411460D0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_241165CC8();
  sub_2411653D8();

  v6 = sub_241165188();
  v8 = v7;
  v9 = *(v2 + 8);
  v0[11] = v9;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = sub_241136F68(v6, v8);
  v12 = v11;

  v0[13] = v10;
  v0[14] = v12;
  v13 = sub_241165C78();
  v15 = v14;
  v0[15] = v14;
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_241146228;
  v17 = v0[4];
  v18 = v0[5];
  v19 = v0[3];

  return sub_241149588(v19, v10, v12, v17, v18, v13, v15);
}

uint64_t sub_241146228()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_241146340, 0, 0);
}

uint64_t sub_241146340()
{
  v26 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_2411465C0;
    v3 = v0[13];
    v4 = v0[6];

    return sub_2411575C0(v3, v1, v4);
  }

  else
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v6 = v0[6];
    v7 = sub_241165288();
    __swift_project_value_buffer(v7, qword_27E533AC8);
    v8 = v6;
    v9 = sub_241165268();
    v10 = sub_241166048();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[11];
      v24 = v0[12];
      v12 = v0[9];
      v13 = v0[6];
      v14 = v0[7];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = sub_241165CC8();
      sub_2411653D8();

      v18 = sub_241165188();
      v20 = v19;
      v11(v12, v14);
      v21 = sub_241156B38(v18, v20, &v25);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2410F8000, v9, v10, "Did not find message GUID for question with identifier %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    v22 = v0[9];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_2411465C0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_241146740;
  }

  else
  {
    v3 = sub_2411466D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2411466D4()
{
  v1 = v0[14];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_241146740()
{
  v1 = v0[14];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_2411467B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2410FC88C(a3, v24 - v10, &unk_27E530F50, &qword_241167C20);
  v12 = sub_241165FA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2410FB29C(v11, &unk_27E530F50, &qword_241167C20);
  }

  else
  {
    sub_241165F98();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_241165F58();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_241165DF8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);

      return v22;
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

  sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_241146D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_241166228();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_2410FC7CC(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x245CDBB80](v18, a2);
      sub_2410FC828(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_2410FC828(a2);
    sub_2410FC7CC(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2410FC7CC(a2, v18);
    v17 = *v3;
    sub_241146E54(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_241146E54(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v57 = *(i + 48) + 40 * a2;
      v58 = *(v6 + 16);
      *v57 = *v6;
      *(v57 + 16) = v58;
      *(v57 + 32) = *(v6 + 32);
      v59 = *(i + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (!v60)
      {
        *(i + 16) = v61;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FB8, &qword_241169268);
      v62 = sub_241166268();
      i = v62;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v63 = (v62 + 56);
    v64 = v7 + 56;
    v65 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v63 >= v64 + 8 * v65)
    {
      memmove(v63, (v7 + 56), 8 * v65);
    }

    v66 = 0;
    *(i + 16) = *(v7 + 16);
    v67 = 1 << *(v7 + 32);
    v68 = *(v7 + 56);
    v69 = -1;
    if (v67 < 64)
    {
      v69 = ~(-1 << v67);
    }

    v70 = v69 & v68;
    v71 = (v67 + 63) >> 6;
    if ((v69 & v68) != 0)
    {
      do
      {
        v72 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_81:
        v75 = 40 * (v72 | (v66 << 6));
        sub_2410FC7CC(*(v7 + 48) + v75, &v81);
        v76 = *(i + 48) + v75;
        v77 = v81;
        v78 = v82;
        *(v76 + 32) = v83;
        *v76 = v77;
        *(v76 + 16) = v78;
      }

      while (v70);
    }

    v73 = v66;
    while (1)
    {
      v66 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v66 >= v71)
      {
        goto LABEL_83;
      }

      v74 = *(v64 + 8 * v66);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v70 = (v74 - 1) & v74;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FB8, &qword_241169268);
  if ((a3 & 1) == 0)
  {
    v31 = sub_241166278();
    i = v31;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v80 = v4;
    v32 = 0;
    a2 = v7 + 56;
    v33 = 1 << *(v7 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v7 + 56);
    v4 = (v33 + 63) >> 6;
    v36 = v31 + 56;
    while (1)
    {
      if (v35)
      {
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
      }

      else
      {
        v42 = v32;
        do
        {
          v32 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_64;
          }

          if (v32 >= v4)
          {

            v4 = v80;
            goto LABEL_57;
          }

          v43 = *(a2 + 8 * v32);
          ++v42;
        }

        while (!v43);
        v41 = __clz(__rbit64(v43));
        v35 = (v43 - 1) & v43;
      }

      sub_2410FC7CC(*(v7 + 48) + 40 * (v41 | (v32 << 6)), &v81);
      v44 = *(i + 40);
      v45 = sub_241166228();
      v46 = -1 << *(i + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v36 + 8 * (v47 >> 6))) != 0)
      {
        v37 = __clz(__rbit64((-1 << v47) & ~*(v36 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        do
        {
          if (++v48 == v50 && (v49 & 1) != 0)
          {
            goto LABEL_66;
          }

          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v36 + 8 * v48);
        }

        while (v52 == -1);
        v37 = __clz(__rbit64(~v52)) + (v48 << 6);
      }

      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v38 = *(i + 48) + 40 * v37;
      v39 = v81;
      v40 = v82;
      *(v38 + 32) = v83;
      *v38 = v39;
      *(v38 + 16) = v40;
      ++*(i + 16);
    }
  }

  v10 = sub_241166278();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v79 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v81 = *v21;
      v82 = *(v21 + 16);
      v83 = *(v21 + 32);
      v22 = *(i + 40);
      v23 = sub_241166228();
      v24 = -1 << *(i + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        do
        {
          if (++v26 == v28 && (v27 & 1) != 0)
          {
            goto LABEL_65;
          }

          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
        }

        while (v30 == -1);
        v16 = __clz(__rbit64(~v30)) + (v26 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v81;
      *(v17 + 16) = v82;
      *(v17 + 32) = v83;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v53 = 1 << *(v7 + 32);
  if (v53 >= 64)
  {
    bzero((v7 + 56), ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v53;
  }

  v4 = v79;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  v54 = *(i + 40);
  result = sub_241166228();
  v55 = -1 << *(i + 32);
  a2 = result & ~v55;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v55;
  while (1)
  {
    sub_2410FC7CC(*(i + 48) + 40 * a2, &v81);
    v56 = MEMORY[0x245CDBB80](&v81, v6);
    result = sub_2410FC828(&v81);
    if (v56)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_241166418();
  __break(1u);
  return result;
}

void sub_2411474A4(uint64_t a1, uint64_t a2)
{
  v16 = sub_2411660B8();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2411660E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_241165618();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v18[3] = type metadata accessor for ResponseHandler();
  v18[4] = &off_2852EBCD0;
  v18[0] = a1;
  *(a2 + 24) = [objc_allocWithZone(type metadata accessor for AskToIDSServiceDelegate()) init];
  sub_241135730(v18, a2 + 40);
  sub_2410FCF28(0, &qword_27E531010, 0x277D85C90);
  sub_241165608();
  v17 = MEMORY[0x277D84F90];
  sub_24114B59C(&qword_27E531018, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531020, &qword_2411692B8);
  sub_24114B5E4();
  sub_2411661B8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v16);
  *(a2 + 32) = sub_2411660F8();
  v12 = objc_allocWithZone(MEMORY[0x277D18778]);
  v13 = sub_241165DA8();
  v14 = [v12 initWithService_];

  if (v14)
  {
    *(a2 + 16) = v14;
    *(*(a2 + 24) + OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_relay + 8) = &off_2852EBEB0;
    swift_unknownObjectWeakAssign();
    [*(a2 + 16) addDelegate:*(a2 + 24) queue:*(a2 + 32)];
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_2411477D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 64);
  v86 = a1 + 64;
  v102[5] = MEMORY[0x277D84FA0];
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v91 = v5 & v3;
  v85 = (v4 + 63) >> 6;
  v6 = a2 + 56;

  v7 = 0;
  v96 = v2;
  v99 = v6;
  while (1)
  {
    v8 = v91;
    if (!v91)
    {
      break;
    }

LABEL_10:
    v91 = (v8 - 1) & v8;
    v89 = v7;
    v10 = __clz(__rbit64(v8)) | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v90 = v14;
    v15 = [v90 status];
    if (v15 != 1)
    {
      v68 = v15;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v69 = sub_241165288();
      __swift_project_value_buffer(v69, qword_27E533AC8);

      v70 = sub_241165268();
      v71 = sub_241166068();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v102[0] = v73;
        *v72 = 136315394;
        v74 = sub_241156B38(v12, v13, v102);

        *(v72 + 4) = v74;
        *(v72 + 12) = 2048;
        *(v72 + 14) = v68;
        _os_log_impl(&dword_2410F8000, v70, v71, "Status for handle %s is %ld. Not sending message to this destination.", v72, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x245CDC5E0](v73, -1, -1);
        v75 = v72;
        goto LABEL_50;
      }

      goto LABEL_59;
    }

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v16 = sub_241165288();
    __swift_project_value_buffer(v16, qword_27E533AC8);

    v17 = sub_241165268();
    v18 = sub_241166068();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v102[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_241156B38(v12, v13, v102);
      _os_log_impl(&dword_2410F8000, v17, v18, "Status for handle %s is valid.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    v21 = *(v2 + 16);

    if (v21)
    {

      v22 = sub_241165268();
      v23 = sub_241166068();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v102[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_241156B38(v12, v13, v102);
        *(v24 + 12) = 2080;
        v26 = sub_241165FE8();
        v28 = v12;
        v29 = sub_241156B38(v26, v27, v102);

        *(v24 + 14) = v29;
        v12 = v28;
        _os_log_impl(&dword_2410F8000, v22, v23, "Checking endpoints for handle %s for reg caps %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v25, -1, -1);
        MEMORY[0x245CDC5E0](v24, -1, -1);
      }

      v30 = [v90 endpoints];
      if (v30)
      {
        v31 = v30;
        sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
        v32 = sub_241165EF8();

        if (!(v32 >> 62))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_20:
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v33)
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      v33 = sub_2411661F8();
      if (!v33)
      {
LABEL_57:

        v70 = sub_241165268();
        v80 = sub_241166048();

        if (os_log_type_enabled(v70, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v102[0] = v82;
          *v81 = 136315138;
          v83 = sub_241156B38(v12, v13, v102);

          *(v81 + 4) = v83;
          _os_log_impl(&dword_2410F8000, v70, v80, "No endpoints for handle %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x245CDC5E0](v82, -1, -1);
          v75 = v81;
LABEL_50:
          MEMORY[0x245CDC5E0](v75, -1, -1);
LABEL_60:

          goto LABEL_61;
        }

LABEL_59:

        goto LABEL_60;
      }

LABEL_21:

      v34 = 0;
      v93 = v32;
      v94 = v32 & 0xC000000000000001;
      v87 = v32 + 32;
      v88 = v32 & 0xFFFFFFFFFFFFFF8;
      v92 = v33;
      while (2)
      {
        if (v94)
        {
          v35 = MEMORY[0x245CDBC20](v34, v32);
        }

        else
        {
          if (v34 >= *(v88 + 16))
          {
            goto LABEL_66;
          }

          v35 = *(v87 + 8 * v34);
        }

        v100 = v35;
        v36 = __OFADD__(v34, 1);
        v37 = v34 + 1;
        if (v36)
        {
          goto LABEL_65;
        }

        v95 = v37;
        v38 = 1 << *(v2 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & *(v2 + 56);
        v41 = (v38 + 63) >> 6;

        v42 = 0;
        while (v40)
        {
LABEL_39:
          v45 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          v46 = (*(v2 + 48) + ((v42 << 10) | (16 * v45)));
          v47 = *v46;
          v48 = v46[1];

          v49 = [v100 capabilities];
          v50 = sub_241165DA8();
          v51 = [v49 valueForCapability_];

          v52 = v100;
          v53 = sub_241165268();
          v54 = sub_241166068();

          v55 = os_log_type_enabled(v53, v54);
          if (v51)
          {
            if (v55)
            {
              v56 = swift_slowAlloc();
              log = v53;
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v102[0] = v58;
              *v56 = 138412546;
              v59 = [v52 URI];
              *(v56 + 4) = v59;
              *v57 = v59;
              *(v56 + 12) = 2080;
              v60 = sub_241156B38(v47, v48, v102);

              *(v56 + 14) = v60;
              _os_log_impl(&dword_2410F8000, log, v54, "Endpoint %@ supports %s", v56, 0x16u);
              sub_2410FB29C(v57, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v57, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v58);
              MEMORY[0x245CDC5E0](v58, -1, -1);
              v61 = v56;
              v2 = v96;
              MEMORY[0x245CDC5E0](v61, -1, -1);
            }

            else
            {
            }

            v6 = v99;
            sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
            sub_24114B338();
            v43 = v52;
            sub_241166258();
            sub_241146D08(v102, v101);
            sub_241166248();
            sub_2410FC828(v102);
            __swift_destroy_boxed_opaque_existential_1(v101);
          }

          else
          {
            if (v55)
            {
              v62 = swift_slowAlloc();
              loga = v53;
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v102[0] = v64;
              *v62 = 138412546;
              v65 = [v52 URI];
              *(v62 + 4) = v65;
              *v63 = v65;
              *(v62 + 12) = 2080;
              v66 = sub_241156B38(v47, v48, v102);

              *(v62 + 14) = v66;
              _os_log_impl(&dword_2410F8000, loga, v54, "Endpoint %@ does NOT support reg cap %s", v62, 0x16u);
              sub_2410FB29C(v63, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v63, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v64);
              MEMORY[0x245CDC5E0](v64, -1, -1);
              v67 = v62;
              v2 = v96;
              MEMORY[0x245CDC5E0](v67, -1, -1);
            }

            else
            {
            }

            v6 = v99;
          }
        }

        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            __break(1u);
            goto LABEL_64;
          }

          if (v44 >= v41)
          {
            break;
          }

          v40 = *(v6 + 8 * v44);
          ++v42;
          if (v40)
          {
            v42 = v44;
            goto LABEL_39;
          }
        }

        v32 = v93;
        v34 = v95;
        if (v95 != v92)
        {
          continue;
        }

        break;
      }

LABEL_61:

      v7 = v89;
    }

    else
    {
      v76 = sub_241165268();
      v77 = sub_241166068();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v102[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_241156B38(v12, v13, v102);
        _os_log_impl(&dword_2410F8000, v76, v77, "No required reg caps. Returning handle %s as valid send destination", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x245CDC5E0](v79, -1, -1);
        MEMORY[0x245CDC5E0](v78, -1, -1);
      }

      sub_241166258();
      sub_241146D08(v102, v101);
      sub_241166248();

      sub_2410FC828(v102);
      swift_dynamicCast();

      v7 = v89;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v85)
    {

      return;
    }

    v8 = *(v86 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_2411483A4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_241104184();
  if (v7)
  {
    v8 = v7;
    v34 = a2;
    v35 = a3;
    v9 = v6;
    sub_241139978();
    if (sub_241166198())
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v10 = sub_241165288();
      __swift_project_value_buffer(v10, qword_27E533AC8);

      v11 = sub_241165268();
      v12 = sub_241166068();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v34 = v14;
        *v13 = 136315394;
        v15 = sub_241156B38(v9, v8, &v34);

        *(v13 + 4) = v15;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_241156B38(a2, a3, &v34);
        _os_log_impl(&dword_2410F8000, v11, v12, "Message is from self %s %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v14, -1, -1);
        MEMORY[0x245CDC5E0](v13, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  if (qword_27E5305C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E533AC8);

  v17 = sub_241165268();
  v18 = sub_241166068();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_241156B38(a2, a3, &v34);
    _os_log_impl(&dword_2410F8000, v17, v18, "Receiving acknowledgement from  %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  a3 = &qword_27E530FD8;
  a2 = &unk_241169288;
  while (1)
  {
    if (!v23)
    {
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          return 0;
        }

        v23 = *(a1 + 64 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_19:
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = (*(a1 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_241100374(*(a1 + 56) + 32 * v27, &v36);
    v34 = v30;
    v35 = v29;
    if (v30 == 0xD000000000000017 && 0x800000024116AA90 == v29)
    {
      break;
    }

    v23 &= v23 - 1;
    v32 = sub_2411663E8();

    sub_2410FB29C(&v34, &qword_27E530FD8, &unk_241169288);
    if (v32)
    {
      goto LABEL_30;
    }
  }

  sub_2410FB29C(&v34, &qword_27E530FD8, &unk_241169288);
LABEL_30:

  return 1;
}

void sub_2411487F4(uint64_t a1, NSObject *a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v88 - v10;
  v11 = sub_241165848();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11);
  v88 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v14 = sub_241165288();
  __swift_project_value_buffer(v14, qword_27E533AC8);

  v15 = sub_241165268();
  v16 = sub_241166068();

  v17 = os_log_type_enabled(v15, v16);
  v92 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v93[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_241156B38(a2, a3, v93);
    *(v18 + 12) = 2080;
    v20 = sub_241165D28();
    v22 = sub_241156B38(v20, v21, v93);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_2410F8000, v15, v16, "Swift received bridged message {fromID: %s, message: %s}", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  v23 = sub_241145B84(a1);
  if (!v23)
  {

    v92 = sub_241165268();
    v36 = sub_241166048();

    if (!os_log_type_enabled(v92, v36))
    {
      goto LABEL_46;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v93[0] = v38;
    *v37 = 136315138;
    v39 = sub_241165D28();
    v41 = sub_241156B38(v39, v40, v93);

    *(v37 + 4) = v41;
    v42 = "Message was not of type [String: Any]. Bailing receive. message: %s";
    goto LABEL_34;
  }

  v24 = v23;
  if ((sub_2411483A4(v23, v92, a3) & 1) == 0)
  {
    sub_241165CE8();

    v43 = sub_241165CA8();
    if (v43)
    {
      v48 = v43;
      v49 = v43;

      v92 = v49;
      v50 = sub_241165268();
      v51 = sub_241166068();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v92;
        *(v52 + 4) = v92;
        *v53 = v48;
        v55 = v54;
        _os_log_impl(&dword_2410F8000, v50, v51, "Got ATPayload from IDS message: %@", v52, 0xCu);
        sub_2410FB29C(v53, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v53, -1, -1);
        MEMORY[0x245CDC5E0](v52, -1, -1);
      }

      v56 = sub_241165CD8();
      if (v56)
      {
        v57 = v56;
        v58 = v56;
        v59 = sub_241165268();
        v60 = sub_241166068();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          *(v61 + 4) = v58;
          *v62 = v57;
          v63 = v58;
          _os_log_impl(&dword_2410F8000, v59, v60, "Got ATResponse from IDS message: %@", v61, 0xCu);
          sub_2410FB29C(v62, &qword_27E530E30, &qword_2411676F0);
          MEMORY[0x245CDC5E0](v62, -1, -1);
          MEMORY[0x245CDC5E0](v61, -1, -1);
        }

        v64 = sub_241165C98();
        if (v65)
        {
          v66 = v64;
          v67 = v65;
          v68 = sub_241165FA8();
          v69 = v91;
          (*(*(v68 - 8) + 56))(v91, 1, 1, v68);
          v70 = swift_allocObject();
          v70[2] = 0;
          v70[3] = 0;
          v70[4] = v4;
          v70[5] = v58;
          v70[6] = v66;
          v70[7] = v67;
          v70[8] = v92;
          v71 = v58;

          sub_2411467B0(0, 0, v69, &unk_241169230, v70);

LABEL_35:
          return;
        }

        v81 = sub_241165268();
        v82 = sub_241166048();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_2410F8000, v81, v82, "Client bundle identifier was nil.", v83, 2u);
          MEMORY[0x245CDC5E0](v83, -1, -1);
        }
      }

      else
      {
        v92 = v92;
        v76 = sub_241165268();
        v77 = sub_241166048();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v78 = 138412290;
          v80 = v92;
          *(v78 + 4) = v92;
          *v79 = v48;
          v92 = v80;
          _os_log_impl(&dword_2410F8000, v76, v77, "Received payload, but it had no associated response: %@", v78, 0xCu);
          sub_2410FB29C(v79, &qword_27E530E30, &qword_2411676F0);
          MEMORY[0x245CDC5E0](v79, -1, -1);
          MEMORY[0x245CDC5E0](v78, -1, -1);
        }
      }

LABEL_46:
      v84 = v92;

      return;
    }

    v92 = sub_241165268();
    v36 = sub_241166048();

    if (!os_log_type_enabled(v92, v36))
    {

      goto LABEL_46;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v93[0] = v38;
    *v37 = 136315138;
    v72 = sub_241165D28();
    v74 = v73;

    v75 = sub_241156B38(v72, v74, v93);

    *(v37 + 4) = v75;
    v42 = "Failed to derive ATPayload from IDS message: %s";
LABEL_34:
    _os_log_impl(&dword_2410F8000, v92, v36, v42, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x245CDC5E0](v38, -1, -1);
    MEMORY[0x245CDC5E0](v37, -1, -1);
    goto LABEL_35;
  }

  if (!*(v24 + 16) || (v25 = sub_2410FAD78(0x6369706F74, 0xE500000000000000), (v26 & 1) == 0) || (sub_241100374(*(v24 + 56) + 32 * v25, v93), (swift_dynamicCast() & 1) == 0))
  {

    v44 = sub_241165268();
    v45 = sub_241166048();
    if (!os_log_type_enabled(v44, v45))
    {
LABEL_23:

      return;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Unable to decode acknowledgement message because topic was missing";
LABEL_22:
    _os_log_impl(&dword_2410F8000, v44, v45, v47, v46, 2u);
    MEMORY[0x245CDC5E0](v46, -1, -1);
    goto LABEL_23;
  }

  if (!*(v24 + 16) || (v27 = sub_2410FAD78(0xD000000000000010, 0x800000024116AA70), (v28 & 1) == 0) || (sub_241100374(*(v24 + 56) + 32 * v27, v93), (swift_dynamicCast() & 1) == 0))
  {

    v44 = sub_241165268();
    v45 = sub_241166048();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_23;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Unable to decode acknowledgement message because question system identifier was missing";
    goto LABEL_22;
  }

  v29 = objc_allocWithZone(sub_241165378());
  v30 = sub_241165358();
  if (*(v24 + 16) && (v31 = sub_2410FAD78(0x696669746E656469, 0xEA00000000007265), (v32 & 1) != 0))
  {
    sub_241100374(*(v24 + 56) + 32 * v31, v93);

    if (swift_dynamicCast())
    {
      sub_241165858();
      v34 = v88;
      v33 = v89;
      v35 = v90;
      (*(v89 + 104))(v88, *MEMORY[0x277CEEC18], v90);
      sub_24114B59C(&qword_27E530D38, MEMORY[0x277CEEC28]);
      sub_241165C28();

      (*(v33 + 8))(v34, v35);
      return;
    }
  }

  else
  {
  }

  v85 = sub_241165268();
  v86 = sub_241166048();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_2410F8000, v85, v86, "Unable to log ack response journey metric because identifier was missing", v87, 2u);
    MEMORY[0x245CDC5E0](v87, -1, -1);
  }
}

uint64_t sub_241149588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return MEMORY[0x2822009F8](sub_2411495B4, 0, 0);
}

uint64_t sub_2411495B4()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[20];
    v3 = swift_task_alloc();
    v0[29] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_241149C5C;
    v6 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 31, 0, 0, 0xD000000000000028, 0x800000024116C300, sub_24114B108, v3, v6);
  }

  else
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v7 = sub_241165288();
    v0[26] = __swift_project_value_buffer(v7, qword_27E533AC8);
    v8 = sub_241165268();
    v9 = sub_241166068();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2410F8000, v8, v9, "AskToIDSController.notifyIfNeeded messageGUID is nil checking is a child or teen", v10, 2u);
      MEMORY[0x245CDC5E0](v10, -1, -1);
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    v0[27] = v11;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_241149874;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_241142CF4;
    v0[13] = &block_descriptor_9;
    v0[14] = v12;
    [v11 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_241149874()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_241149F10;
  }

  else
  {
    v3 = sub_241149984;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241149984()
{
  v1 = *(v0 + 144);
  v2 = [v1 me];
  if (v2)
  {
    v3 = v2;
    v4 = sub_241166088();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 208);
  v6 = v1;
  v7 = sub_241165268();
  v8 = sub_241166068();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 216);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109379;
    *(v11 + 4) = v4 & 1;
    *(v11 + 8) = 2113;
    *(v11 + 10) = v6;
    *v12 = v6;
    v13 = v6;
    _os_log_impl(&dword_2410F8000, v7, v8, "AskToIDSController.notifyIfNeeded fetch family isOriginalRequester: %{BOOL}d %{private}@", v11, 0x12u);
    sub_2410FB29C(v12, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = *(v0 + 152);
  v15 = sub_2411656A8();
  sub_241165438();

  LODWORD(v15) = sub_241165428();
  if (v15 == sub_241165428())
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v16 = sub_241165288();
    __swift_project_value_buffer(v16, qword_27E533AC8);
    v17 = sub_241165268();
    v18 = sub_241166068();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2410F8000, v17, v18, "AskToIDSController.notifyIfNeeded notifying...", v19, 2u);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    if (qword_27E530648 != -1)
    {
      swift_once();
    }

    sub_241163738(*(v0 + 152), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

LABEL_16:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_241149C5C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_241149D74, 0, 0);
}

uint64_t sub_241149D74()
{
  if (*(v0 + 248) == 1)
  {
    v1 = *(v0 + 152);
    v2 = sub_2411656A8();
    sub_241165438();

    LODWORD(v2) = sub_241165428();
    if (v2 == sub_241165428())
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v3 = sub_241165288();
      __swift_project_value_buffer(v3, qword_27E533AC8);
      v4 = sub_241165268();
      v5 = sub_241166068();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2410F8000, v4, v5, "AskToIDSController.notifyIfNeeded notifying...", v6, 2u);
        MEMORY[0x245CDC5E0](v6, -1, -1);
      }

      if (qword_27E530648 != -1)
      {
        swift_once();
      }

      sub_241163738(*(v0 + 152), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_241149F10()
{
  v1 = v0[28];
  v2 = v0[26];
  swift_willThrow();
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[27];
  v7 = v0[28];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2410F8000, v4, v5, "AskToIDSController.notifyIfNeeded Failed to fetch family circle: %@ defaulting to no notification", v9, 0xCu);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_24114A088(void *a1, uint64_t a2, NSObject *a3, uint64_t *a4)
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E533AC8);

  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v11 = 138412546;
    if (a4)
    {
      sub_24110412C();
      swift_allocError();
      *v14 = a3;
      v14[1] = a4;

      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v31 = a3;
    *(v11 + 4) = v15;
    *v12 = v16;
    *(v11 + 12) = 2080;
    if (!a2)
    {
      __break(1u);
      return;
    }

    v23 = sub_241165D28();
    v25 = sub_241156B38(v23, v24, &v32);

    *(v11 + 14) = v25;
    _os_log_impl(&dword_2410F8000, v9, v10, "Received message {fromID: %@, message: %s}", v11, 0x16u);
    sub_2410FB29C(v12, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);

    a3 = v31;
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!a2)
    {
      v30 = sub_241165268();
      v26 = sub_241166048();
      if (os_log_type_enabled(v30, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
        v29 = "IDS called %s with nil message.";
        goto LABEL_22;
      }

LABEL_28:

      goto LABEL_26;
    }

    if (!a1)
    {
LABEL_18:
      v30 = sub_241165268();
      v26 = sub_241166048();
      if (os_log_type_enabled(v30, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
        v29 = "IDS called %s with nil service.";
LABEL_22:
        _os_log_impl(&dword_2410F8000, v30, v26, v29, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
LABEL_26:

        return;
      }

      goto LABEL_28;
    }
  }

  if (!a4)
  {
    v30 = a1;
    v18 = sub_241165268();
    v19 = sub_241166048();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
      v22 = "IDS called %s with nil fromID.";
LABEL_25:
      _os_log_impl(&dword_2410F8000, v18, v19, v22, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      MEMORY[0x245CDC5E0](v20, -1, -1);

      goto LABEL_26;
    }

LABEL_27:

    goto LABEL_28;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = a1;
  if (!Strong)
  {
    v18 = sub_241165268();
    v19 = sub_241166048();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
      v22 = "%s IDSRelay was nil";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  sub_2411487F4(a2, a3, a4);

  swift_unknownObjectRelease();
}

void sub_24114A63C(uint64_t a1, unint64_t a2, char a3, id a4)
{
  if (a2)
  {
    v7 = v4;
    v10 = 0x27E530000uLL;
    if (a4)
    {
      v11 = a4;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v12 = sub_241165288();
      __swift_project_value_buffer(v12, qword_27E533AC8);
      v13 = a4;

      v14 = sub_241165268();
      v15 = sub_241166068();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v68[0] = v18;
        *v16 = 136315650;
        *(v16 + 4) = sub_241156B38(a1, a2, v68);
        *(v16 + 12) = 1024;
        *(v16 + 14) = a3 & 1;
        *(v16 + 18) = 2112;
        v19 = a4;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 20) = v20;
        *v17 = v20;
        _os_log_impl(&dword_2410F8000, v14, v15, "Send message delegate callback {identifier: %s, success: %{BOOL}d, error: %@}", v16, 0x1Cu);
        sub_2410FB29C(v17, &qword_27E530E30, &qword_2411676F0);
        v21 = v17;
        v10 = 0x27E530000;
        MEMORY[0x245CDC5E0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x245CDC5E0](v18, -1, -1);
        MEMORY[0x245CDC5E0](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v31 = sub_241165288();
      __swift_project_value_buffer(v31, qword_27E533AC8);

      v32 = sub_241165268();
      v33 = sub_241166068();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v68[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_241156B38(a1, a2, v68);
        *(v34 + 12) = 1024;
        *(v34 + 14) = a3 & 1;
        _os_log_impl(&dword_2410F8000, v32, v33, "Send message delegate callback {identifier: %s, success: %{BOOL}d, error: nil}", v34, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x245CDC5E0](v35, -1, -1);
        MEMORY[0x245CDC5E0](v34, -1, -1);
      }
    }

    v36 = OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_pendingSendCompletions;
    swift_beginAccess();
    v37 = *(v7 + v36);
    if (*(v37 + 16) && (v38 = sub_2410FAD78(a1, a2), (v39 & 1) != 0))
    {
      v40 = *(v37 + 56) + 16 * v38;
      v42 = *v40;
      v41 = *(v40 + 8);
      swift_endAccess();
      v43 = *(v10 + 1480);

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = sub_241165288();
      __swift_project_value_buffer(v44, qword_27E533AC8);

      v45 = sub_241165268();
      v46 = sub_241166068();

      if (os_log_type_enabled(v45, v46))
      {
        v64 = v42;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v68[0] = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_241156B38(a1, a2, v68);
        _os_log_impl(&dword_2410F8000, v45, v46, "Calling completion for IDS message send identifier %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x245CDC5E0](v48, -1, -1);
        v49 = v47;
        v42 = v64;
        MEMORY[0x245CDC5E0](v49, -1, -1);
      }

      v67 = a3 & 1;
      v68[0] = a4;
      v42(&v67, v68);

      swift_beginAccess();
      v50 = sub_24115215C(a1, a2);
      swift_endAccess();
      sub_241100400(v50);
    }

    else
    {
      swift_endAccess();
      if (*(v10 + 1480) != -1)
      {
        swift_once();
      }

      v51 = sub_241165288();
      __swift_project_value_buffer(v51, qword_27E533AC8);

      v52 = sub_241165268();
      v53 = sub_241166048();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_241156B38(a1, a2, v68);
        _os_log_impl(&dword_2410F8000, v52, v53, "Got delegate callback for message send from IDS, but completion for identifier %s was nil.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x245CDC5E0](v55, -1, -1);
        MEMORY[0x245CDC5E0](v54, -1, -1);
      }
    }
  }

  else
  {
    if (a4)
    {
      v22 = a4;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v23 = sub_241165288();
      __swift_project_value_buffer(v23, qword_27E533AC8);
      v24 = a4;
      v25 = sub_241165268();
      v26 = sub_241166068();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 67109378;
        *(v27 + 4) = a3 & 1;
        *(v27 + 8) = 2112;
        v29 = a4;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 10) = v30;
        *v28 = v30;
        _os_log_impl(&dword_2410F8000, v25, v26, "Send message delegate callback {identifier: nil, success: %{BOOL}d, error: %@}", v27, 0x12u);
        sub_2410FB29C(v28, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v56 = sub_241165288();
      __swift_project_value_buffer(v56, qword_27E533AC8);
      v57 = sub_241165268();
      v58 = sub_241166068();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = a3 & 1;
        _os_log_impl(&dword_2410F8000, v57, v58, "Send message delegate callback {identifier: nil, success: %{BOOL}d, error: nil}", v59, 8u);
        MEMORY[0x245CDC5E0](v59, -1, -1);
      }
    }

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v60 = sub_241165288();
    __swift_project_value_buffer(v60, qword_27E533AC8);
    osloga = sub_241165268();
    v61 = sub_241166048();
    if (os_log_type_enabled(osloga, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_241156B38(0xD000000000000037, 0x800000024116C280, v68);
      _os_log_impl(&dword_2410F8000, osloga, v61, "IDS called %s with nil identifier.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x245CDC5E0](v63, -1, -1);
      MEMORY[0x245CDC5E0](v62, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24114AFA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24114B000(uint64_t a1)
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
  v11[1] = sub_241106740;

  return sub_241145E60(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24114B124(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240) - 8) + 80);

  return sub_241145ADC(a1, a2);
}

uint64_t sub_24114B1B0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24114B20C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24114B21C()
{
  result = qword_27E530F78;
  if (!qword_27E530F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530F78);
  }

  return result;
}

unint64_t sub_24114B270()
{
  result = qword_27E530F88;
  if (!qword_27E530F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530F88);
  }

  return result;
}

uint64_t sub_24114B2C4()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24114B338()
{
  result = qword_27E530FB0;
  if (!qword_27E530FB0)
  {
    sub_2410FCF28(255, &qword_27E530FA8, 0x277D189C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530FB0);
  }

  return result;
}

uint64_t sub_24114B3A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24114B3D8(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24114B4A0(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0) - 8) + 80);

  return sub_2411457BC(a1, a2);
}

uint64_t sub_24114B52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24114B59C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24114B5E4()
{
  result = qword_27E531028;
  if (!qword_27E531028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E531020, &qword_2411692B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531028);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon0aB13IDSControllerC15ValidationErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24114B660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24114B6B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskToIDSController.SendError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AskToIDSController.SendError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24114B870()
{
  result = qword_27E531030;
  if (!qword_27E531030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531030);
  }

  return result;
}

unint64_t sub_24114B8C8()
{
  result = qword_27E531038;
  if (!qword_27E531038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531038);
  }

  return result;
}

unint64_t sub_24114B91C()
{
  result = qword_27E531040[0];
  if (!qword_27E531040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E531040);
  }

  return result;
}

uint64_t sub_24114B9C0()
{
  v1 = v0[2];
  v6 = *(*v0 + 80);
  v2 = *(*(*v0 + 88) + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  sub_241165F38();
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v4));
  sub_24114C978((v1 + v3), &v7);
  os_unfair_lock_unlock((v1 + v4));

  return v7;
}

uint64_t sub_24114BB10()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v10 = sub_241165DE8();
    v12 = sub_241156B38(v10, v11, v25);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = *(v9 + 16);
    v14 = sub_2411663B8();
    v16 = v15;
    swift_unknownObjectRelease_n();
    v17 = sub_241156B38(v14, v16, v25);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection interrupted. Removing client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v18 = swift_unknownObjectRelease_n();
    v19 = *(v2 + 80);
    v9 = *(v2 + 88);
  }

  v20 = v1[2];
  MEMORY[0x28223BE20](v18);
  v21 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v22 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v23));
  sub_24114C9B4(v20 + v22);
  os_unfair_lock_unlock((v20 + v23));
}

uint64_t sub_24114BE40()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v10 = sub_241165DE8();
    v12 = sub_241156B38(v10, v11, v25);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = *(v9 + 16);
    v14 = sub_2411663B8();
    v16 = v15;
    swift_unknownObjectRelease_n();
    v17 = sub_241156B38(v14, v16, v25);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection invalidated. Removing client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v18 = swift_unknownObjectRelease_n();
    v19 = *(v2 + 80);
    v9 = *(v2 + 88);
  }

  v20 = v1[2];
  MEMORY[0x28223BE20](v18);
  v21 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v22 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v23));
  sub_24114C9D4(v20 + v22);
  os_unfair_lock_unlock((v20 + v23));
}

uint64_t sub_24114C170()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v6 = 136315394;
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v10 = sub_241165DE8();
    v12 = sub_241156B38(v10, v11, v25);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = *(v9 + 16);
    v14 = sub_2411663B8();
    v16 = v15;
    swift_unknownObjectRelease_n();
    v17 = sub_241156B38(v14, v16, v25);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection activated. Tracking client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v18 = swift_unknownObjectRelease_n();
    v19 = *(v2 + 80);
    v9 = *(v2 + 88);
  }

  v20 = v1[2];
  MEMORY[0x28223BE20](v18);
  v21 = *(v9 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v22 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v23));
  sub_24114C994(v20 + v22);
  os_unfair_lock_unlock((v20 + v23));
}

uint64_t sub_24114C4A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D58();

  swift_getWitnessTable();
  result = sub_241165F48();
  *a3 = result;
  return result;
}

uint64_t sub_24114C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_2411662C8();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  swift_unknownObjectRetain();
  return sub_241165D78();
}

void sub_24114C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v22 - v10;
  v23 = a2;
  sub_2411662C8();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  sub_241165D38();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  if (v24)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v12 = sub_241165288();
    __swift_project_value_buffer(v12, qword_27E533A08);
    swift_unknownObjectRetain();
    v13 = sub_241165268();
    v14 = sub_241166048();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v23 = a2;
      v17 = *(a4 + 16);
      v18 = sub_2411663B8();
      v20 = v19;
      swift_unknownObjectRelease();
      v21 = sub_241156B38(v18, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_2410F8000, v13, v14, "Attempted to remove client %s but it was not found in connected clients map", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24114C9EC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v22 = sub_2411660A8();
  v2 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_241165618();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2411660B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2411651A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241165198();
  (*(v12 + 16))(a1, v15, v11);
  v19 = sub_2410FCF28(0, &qword_27E5310D0, 0x277D85C78);
  v23 = 0xD000000000000014;
  v24 = 0x800000024116C690;
  v16 = sub_241165188();
  MEMORY[0x245CDB790](v16);

  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  sub_2411655F8();
  v23 = MEMORY[0x277D84F90];
  sub_24114CD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310E0, &qword_241169588);
  sub_24114CD60();
  sub_2411661B8();
  v17 = sub_2411660D8();
  (*(v12 + 8))(v15, v11);
  result = type metadata accessor for IDSLookupController();
  *(v20 + *(result + 20)) = v17;
  return result;
}

unint64_t sub_24114CD08()
{
  result = qword_27E5310D8;
  if (!qword_27E5310D8)
  {
    sub_2411660A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5310D8);
  }

  return result;
}

unint64_t sub_24114CD60()
{
  result = qword_27E5310E8;
  if (!qword_27E5310E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5310E0, &qword_241169588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5310E8);
  }

  return result;
}

uint64_t type metadata accessor for IDSLookupController()
{
  result = qword_27E531140;
  if (!qword_27E531140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24114CE10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24114CE30, 0, 0);
}

uint64_t sub_24114CE30()
{
  v26 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_2411661F8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[2];
      v24 = MEMORY[0x277D84F98];
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v4 + 32;
      do
      {
        if (v5)
        {
          v8 = MEMORY[0x245CDBC20](v3, v0[2]);
        }

        else
        {
          if (v3 >= *(v6 + 16))
          {
            goto LABEL_19;
          }

          v8 = *(v7 + 8 * v3);
        }

        v9 = v8;
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v25 = v8;
        v1 = 0;
        sub_24114DC74(&v24, &v25);

        ++v3;
      }

      while (v10 != v2);
      v11 = v24;
      v0[4] = v24;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = sub_24113031C(*(v11 + 16), 0);
        v14 = sub_241130FF4(&v25, v13 + 4, v12, v11);

        sub_24111606C();
        if (v14 == v12)
        {
LABEL_15:
          v0[5] = v13;
          v15 = swift_task_alloc();
          v0[6] = v15;
          *v15 = v0;
          v15[1] = sub_24114D15C;
          v16 = v0[3];

          return sub_24114E13C(v13);
        }

        __break(1u);
      }

      v13 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }
  }

  if (qword_27E5305A8 != -1)
  {
    swift_once();
  }

  v18 = sub_241165288();
  __swift_project_value_buffer(v18, qword_27E533A68);
  v19 = sub_241165268();
  v20 = sub_241166048();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2410F8000, v19, v20, "No family members to lookup, bailing early.", v21, 2u);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  v22 = sub_2410FBCF8(MEMORY[0x277D84F90]);
  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_24114D15C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_24114DC08;
  }

  else
  {
    v5 = sub_24114D270;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24114D270()
{
  v96 = v0;
  if (!*(v0[7] + 16))
  {
    v73 = v0[4];

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v74 = v0[5];
    v75 = sub_241165288();
    __swift_project_value_buffer(v75, qword_27E533A68);

    v76 = sub_241165268();
    v77 = sub_241166068();

    v78 = os_log_type_enabled(v76, v77);
    v79 = v0[5];
    if (v78)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v95 = v81;
      *v80 = 136315138;
      v82 = MEMORY[0x245CDB850](v79, MEMORY[0x277D837D0]);
      v84 = v83;

      v0 = v94;
      v85 = sub_241156B38(v82, v84, &v95);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_2410F8000, v76, v77, "No results for ids lookup with destinations %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x245CDC5E0](v81, -1, -1);
      MEMORY[0x245CDC5E0](v80, -1, -1);
    }

    else
    {
    }

    v72 = sub_2410FBCF8(MEMORY[0x277D84F90]);
    goto LABEL_43;
  }

  v1 = v0[5];

  if (qword_27E5305A8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A68);

  v4 = sub_241165268();
  v5 = sub_241166068();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v94[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v95 = v8;
    *v7 = 136315138;
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    v9 = sub_241165D48();
    v11 = sub_241156B38(v9, v10, &v95);
    v0 = v94;

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "Got result keys: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = v0[7];
  v90 = v0[4];
  v91 = sub_2410FBCF8(MEMORY[0x277D84F90]);
  v13 = v12 + 64;
  v14 = -1;
  v15 = -1 << *(v12 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);
  v17 = (63 - v15) >> 6;
  v93 = v12;

  v18 = 0;
  v19 = v17;
  v92 = v17;
  while (1)
  {
    v20 = v18;
    if (!v16)
    {
      break;
    }

LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = (*(v93 + 48) + ((v18 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];

    v25 = sub_241165DA8();
    v26 = [v25 _stripFZIDPrefix];

    if (v26)
    {
      v27 = v0[4];

      v28 = sub_241165DD8();
      v30 = v29;

      if (*(v27 + 16) && (v31 = v0[4], v32 = sub_2410FAD78(v28, v30), (v33 & 1) != 0))
      {
        v46 = *(*(v90 + 56) + 8 * v32);

        v47 = sub_241165268();
        v48 = sub_241166068();

        if (os_log_type_enabled(v47, v48))
        {
          v89 = v46;
          v49 = v48;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v95 = v51;
          *v50 = 136315138;
          *(v50 + 4) = sub_241156B38(v28, v30, &v95);
          v52 = v49;
          v46 = v89;
          _os_log_impl(&dword_2410F8000, v47, v52, "%s is eligible to receive iMessages", v50, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x245CDC5E0](v51, -1, -1);
          MEMORY[0x245CDC5E0](v50, -1, -1);
        }

        if (*(v91 + 16) && (v53 = sub_2410FADF0(v46), (v54 & 1) != 0))
        {
          v55 = *(*(v91 + 56) + 8 * v53);
        }

        else
        {
          v55 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2411608BC(0, *(v55 + 2) + 1, 1, v55);
        }

        v57 = *(v55 + 2);
        v56 = *(v55 + 3);
        if (v57 >= v56 >> 1)
        {
          v55 = sub_2411608BC((v56 > 1), v57 + 1, 1, v55);
        }

        *(v55 + 2) = v57 + 1;
        v58 = &v55[16 * v57];
        *(v58 + 4) = v28;
        *(v58 + 5) = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v91;
        sub_241153B7C(v55, v46, isUniquelyReferenced_nonNull_native);

        v0 = v94;
        v91 = v95;
      }

      else
      {

        v34 = sub_241165268();
        v35 = sub_241166048();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v95 = v37;
          *v36 = 136315138;
          v38 = sub_241156B38(v28, v30, &v95);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_2410F8000, v34, v35, "Unable to find handle %s in handle to family member map.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v0 = v94;
          MEMORY[0x245CDC5E0](v37, -1, -1);
          v39 = v36;
          v19 = v92;
          goto LABEL_20;
        }

LABEL_8:
      }
    }

    else
    {

      v34 = sub_241165268();
      v40 = sub_241166048();

      if (!os_log_type_enabled(v34, v40))
      {
        goto LABEL_8;
      }

      v41 = swift_slowAlloc();
      v42 = v19;
      v43 = swift_slowAlloc();
      v95 = v43;
      *v41 = 136315138;
      v44 = sub_241156B38(v24, v23, &v95);

      *(v41 + 4) = v44;
      _os_log_impl(&dword_2410F8000, v34, v40, "Could not get normalized handle for key: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v45 = v43;
      v19 = v42;
      MEMORY[0x245CDC5E0](v45, -1, -1);
      v39 = v41;
      v0 = v94;
LABEL_20:
      MEMORY[0x245CDC5E0](v39, -1, -1);
    }
  }

  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v18 >= v19)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v20;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  v60 = v0[7];
  v61 = v0[4];

  v62 = sub_241165268();
  v63 = sub_241166068();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[7];
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v95 = v67;
    *v66 = 136315138;
    sub_2410FCF28(0, &qword_27E5307A0, 0x277D08268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310F8, &qword_2411695A0);
    sub_24114FD84();
    v68 = sub_241165D28();
    v70 = v69;

    v71 = sub_241156B38(v68, v70, &v95);

    *(v66 + 4) = v71;
    _os_log_impl(&dword_2410F8000, v62, v63, "iMessageableHandles from IDS query controller: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v0 = v94;
    MEMORY[0x245CDC5E0](v67, -1, -1);
    MEMORY[0x245CDC5E0](v66, -1, -1);
  }

  else
  {
    v86 = v0[7];
  }

  v72 = v91;
LABEL_43:
  v87 = v0[1];

  return v87(v72);
}

uint64_t sub_24114DC08()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_24114DC74(uint64_t a1, id *a2)
{
  v4 = sub_241164E98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a2;
  v9 = [v56 appleID];
  v55 = a1;
  if (!v9)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v11 = v9;
  v12 = sub_241165DD8();
  v14 = v13;

  v57[0] = v12;
  v57[1] = v14;
  sub_241164E88();
  sub_241139978();
  a1 = sub_241166188();
  v16 = v15;
  (*(v5 + 8))(v8, v4);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v18 = sub_2411608BC(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v18 + 2) = v21;
    v22 = &v18[16 * v20];
    *(v22 + 4) = a1;
    *(v22 + 5) = v16;
LABEL_9:
    a1 = v55;
LABEL_10:
    v53 = v18;
    v23 = *(v18 + 2);
    if (!v23)
    {
    }

    v20 = (v53 + 40);
    *&v10 = 138412546;
    v54 = v10;
    while (1)
    {
      v21 = *(v20 - 1);
      v30 = *v20;
      swift_bridgeObjectRetain_n();
      v31 = v56;
      v32 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = *a1;
      v16 = v57[0];
      v34 = sub_2410FAD78(v21, v30);
      v36 = *(v16 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v19 = v36 + v37;
      if (v38)
      {
        break;
      }

      v39 = v35;
      if (*(v16 + 24) >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = v23;
          v50 = v34;
          sub_241154A84();
          v34 = v50;
          v23 = v49;
        }
      }

      else
      {
        sub_241152F2C(v19, isUniquelyReferenced_nonNull_native);
        v34 = sub_2410FAD78(v21, v30);
        if ((v39 & 1) != (v40 & 1))
        {
          result = sub_241166428();
          __break(1u);
          return result;
        }
      }

      v16 = v57[0];
      v58 = v23;
      if (v39)
      {
        v41 = *(v57[0] + 56);
        v42 = *(v41 + 8 * v34);
        *(v41 + 8 * v34) = v31;
      }

      else
      {
        *(v57[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v43 = (*(v16 + 48) + 16 * v34);
        *v43 = v21;
        v43[1] = v30;
        *(*(v16 + 56) + 8 * v34) = v31;
        v44 = *(v16 + 16);
        v38 = __OFADD__(v44, 1);
        v19 = v44 + 1;
        if (v38)
        {
          goto LABEL_30;
        }

        *(v16 + 16) = v19;
      }

      *a1 = v16;
      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v45 = sub_241165288();
      __swift_project_value_buffer(v45, qword_27E533A68);

      v46 = v31;
      v47 = sub_241165268();
      v48 = sub_241166068();

      if (os_log_type_enabled(v47, v48))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v57[0] = v26;
        *v24 = v54;
        *(v24 + 4) = v46;
        *v25 = v56;
        *(v24 + 12) = 2080;
        v27 = v46;
        v28 = sub_241156B38(v21, v30, v57);

        *(v24 + 14) = v28;
        _os_log_impl(&dword_2410F8000, v47, v48, "%@ registered %s", v24, 0x16u);
        sub_2410FDEB8(v25);
        v29 = v25;
        a1 = v55;
        MEMORY[0x245CDC5E0](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x245CDC5E0](v26, -1, -1);
        MEMORY[0x245CDC5E0](v24, -1, -1);
      }

      else
      {
      }

      v20 += 2;
      v23 = v58 - 1;
      if (v58 == 1)
      {
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v18 = sub_2411608BC((v19 > 1), v21, 1, v18);
  }
}

uint64_t sub_24114E13C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24114E15C, 0, 0);
}

uint64_t sub_24114E15C()
{
  v24 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    if (*(v3 + 16))
    {
      v4 = v0[4];
      v5 = swift_task_alloc();
      v0[6] = v5;
      v5[2] = v2;
      v5[3] = v3;
      v5[4] = v4;
      v6 = *(MEMORY[0x277D85A40] + 4);
      v7 = swift_task_alloc();
      v0[7] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531118, &qword_2411695A8);
      *v7 = v0;
      v7[1] = sub_24114E524;

      return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000025, 0x800000024116C6B0, sub_24114FE40, v5, v8);
    }

    else
    {
      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533A68);
      v17 = sub_241165268();
      v18 = sub_241166048();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2410F8000, v17, v18, "No handles to lookup, bailing early.", v19, 2u);
        MEMORY[0x245CDC5E0](v19, -1, -1);
      }

      v20 = sub_2410FBB10(MEMORY[0x277D84F90]);
      v21 = v0[1];

      return v21(v20);
    }
  }

  else
  {
    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E533A68);
    v10 = sub_241165268();
    v11 = sub_241166048();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116C6B0, &v23);
      _os_log_impl(&dword_2410F8000, v10, v11, "%s The IDS query controller was nil, bailing early.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    sub_24114FDEC();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24114E524()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_24114E814;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_24114E640;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24114E640()
{
  v15 = v0;
  v1 = v0[2];
  if (qword_27E5305A8 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A68);

  v3 = sub_241165268();
  v4 = sub_241166068();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    v9 = sub_241165D28();
    v11 = sub_241156B38(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v3, v4, "Got results from IDS query: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_24114E814()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24114E880(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24114E918;

  return sub_24114E13C(a2);
}

uint64_t sub_24114E918(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24114EA4C, 0, 0);
  }
}

uint64_t sub_24114EA4C()
{
  v93 = v0;
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    v60 = *(v0 + 40);

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v61 = *(v0 + 24);
    v62 = sub_241165288();
    __swift_project_value_buffer(v62, qword_27E533A68);

    v63 = sub_241165268();
    v64 = sub_241166068();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 24);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v92[0] = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x245CDB850](v65, MEMORY[0x277D837D0]);
      v70 = sub_241156B38(v68, v69, v92);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_2410F8000, v63, v64, "No results for ids lookup with destinations %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x245CDC5E0](v67, -1, -1);
      MEMORY[0x245CDC5E0](v66, -1, -1);
    }

    v59 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

  v2 = 0;
  v3 = v1 + 64;
  v4 = -1 << *(v1 + 32);
  v5 = *(v0 + 16);
  if (-v4 < 64)
  {
    v6 = ~(-1 << -v4);
  }

  else
  {
    v6 = -1;
  }

  v91 = MEMORY[0x277D84F90];
  v7 = v6 & *(v1 + 64);
  v8 = (63 - v4) >> 6;
  v88 = *(v0 + 16);
  v9 = v5 + 56;
  v76 = MEMORY[0x277D84F90];
  v81 = *(v0 + 40);
  v82 = v8;
  v83 = v1 + 64;
  v87 = v5 + 56;
LABEL_6:
  v10 = v2;
  while (v7)
  {
    v2 = v10;
LABEL_15:
    v11 = __clz(__rbit64(v7)) | (v2 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);

    v86 = v15;
    v16 = [v86 endpoints];
    if (v16)
    {
      v17 = v16;
      sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
      v0 = sub_241165EF8();

      if (!(v0 >> 62))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v0 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_17:
        v18 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_18;
      }
    }

    v18 = sub_2411661F8();
LABEL_18:
    v7 &= v7 - 1;
    if (v18)
    {
      v78 = v18;

      v25 = 0;
      v79 = v0;
      v80 = v0 & 0xC000000000000001;
      v74 = v0 + 32;
      v75 = v0 & 0xFFFFFFFFFFFFFF8;
      v26 = v85;
      do
      {
        if (v80)
        {
          v28 = MEMORY[0x245CDBC20](v25, v0);
        }

        else
        {
          if (v25 >= *(v75 + 16))
          {
            goto LABEL_67;
          }

          v28 = *(v74 + 8 * v25);
        }

        v89 = v28;
        v29 = __OFADD__(v25, 1);
        v30 = v25 + 1;
        if (v29)
        {
          goto LABEL_66;
        }

        v84 = v30;
        v31 = *(v26 + 16);
        v32 = -1 << *(v88 + 32);
        if (-v32 < 64)
        {
          v33 = ~(-1 << -v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & *(v88 + 56);
        v35 = (63 - v32) >> 6;

        v36 = 0;
        if (v34)
        {
          while (1)
          {
            v37 = v36;
LABEL_41:
            v38 = (*(v88 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v34)))));
            v39 = *v38;
            v40 = v38[1];

            v41 = [v89 capabilities];
            v42 = sub_241165DA8();
            v0 = [v41 valueForCapability_];

            if (!v0)
            {
              break;
            }

            v34 &= v34 - 1;
            v36 = v37;
            v9 = v87;
            if (!v34)
            {
              goto LABEL_38;
            }
          }

          if (qword_27E5305A8 != -1)
          {
            swift_once();
          }

          v43 = sub_241165288();
          __swift_project_value_buffer(v43, qword_27E533A68);

          v44 = v89;
          v45 = sub_241165268();
          v46 = sub_241166068();

          v47 = os_log_type_enabled(v45, v46);
          v25 = v84;
          v26 = v85;
          v48 = *(v85 + 16);
          if (v47)
          {
            v90 = *(v85 + 16);
            v49 = swift_slowAlloc();
            log = v45;
            v50 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v92[0] = v77;
            *v49 = 138412546;
            v51 = [v44 URI];
            *(v49 + 4) = v51;
            *v50 = v51;
            *(v49 + 12) = 2080;
            v52 = sub_241156B38(v39, v40, v92);
            v53 = v44;
            v54 = v52;

            *(v49 + 14) = v54;
            v44 = v53;
            _os_log_impl(&dword_2410F8000, log, v46, "Endpoint %@ does not support %s", v49, 0x16u);
            sub_2410FDEB8(v50);
            MEMORY[0x245CDC5E0](v50, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v77);
            MEMORY[0x245CDC5E0](v77, -1, -1);
            MEMORY[0x245CDC5E0](v49, -1, -1);
          }

          else
          {
            v55 = *(v85 + 16);
          }

          v9 = v87;
          v56 = v44;
          MEMORY[0x245CDB820]();
          if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v57 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_241165F18();
          }

          sub_241165F28();

          v76 = v91;
        }

        else
        {
          while (1)
          {
LABEL_38:
            v37 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            if (v37 >= v35)
            {
              break;
            }

            v34 = *(v9 + 8 * v37);
            ++v36;
            if (v34)
            {
              goto LABEL_41;
            }
          }

          v26 = v85;
          v27 = *(v85 + 16);

          v25 = v84;
        }

        v0 = v79;
      }

      while (v25 != v78);

      v1 = v81;
      v8 = v82;
      v3 = v83;
      goto LABEL_6;
    }

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v19 = sub_241165288();
    __swift_project_value_buffer(v19, qword_27E533A68);

    v20 = sub_241165268();
    v21 = sub_241166048();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92[0] = v23;
      *v22 = 136315138;
      v24 = sub_241156B38(v14, v13, v92);

      *(v22 + 4) = v24;
      v1 = v81;
      _os_log_impl(&dword_2410F8000, v20, v21, "No endpoints for handle %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245CDC5E0](v23, -1, -1);
      MEMORY[0x245CDC5E0](v22, -1, -1);
    }

    else
    {
    }

    v10 = v2;
    v8 = v82;
    v3 = v83;
  }

  v0 = v85;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_65;
    }

    if (v2 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v2);
    ++v10;
    if (v7)
    {
      goto LABEL_15;
    }
  }

  v58 = *(v85 + 40);

  if (!(v76 >> 62))
  {

    sub_2411663F8();
    v59 = v76;
    goto LABEL_55;
  }

LABEL_68:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
  v59 = sub_241166338();

LABEL_55:

LABEL_61:
  v71 = *(v0 + 8);

  return v71(v59);
}

void sub_24114F318(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() refreshIDInfo];
  [v12 setForceRefresh_];
  sub_2411431EC(a3);
  v13 = sub_241165EE8();

  v14 = sub_241165DA8();
  v15 = v12;
  v16 = sub_241165DA8();
  v20 = *(a4 + *(type metadata accessor for IDSLookupController() + 20));
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v17, v11, v7);
  aBlock[4] = sub_24114FEE0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24114498C;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  [v21 idInfoForDestinations:v13 service:v14 infoTypes:1 options:v15 listenerID:v16 queue:v20 completionBlock:v19];
  _Block_release(v19);
}

uint64_t sub_24114F5C4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (a2)
    {
      sub_24114FDEC();
      v58 = swift_allocError();
      *v59 = a2;
      *&v76 = v58;
      v60 = a2;
    }

    else
    {
      sub_24114FDEC();
      v61 = swift_allocError();
      *v62 = 2;
      *&v76 = v61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
    return sub_241165F68();
  }

  v2 = a1;
  v64 = sub_2410FBB10(MEMORY[0x277D84F90]);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v65 = v2;
  if (!v6)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v9 = v8;
LABEL_16:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      sub_2410FC7CC(*(v2 + 48) + 40 * v13, &v68);
      sub_241100374(*(v2 + 56) + 32 * v13, v67);
      v71 = v68;
      v72 = v69;
      *&v73 = v70;
      sub_2410FC87C(v67, (&v73 + 8));
      v11 = v9;
LABEL_17:
      v78[0] = v73;
      v78[1] = v74;
      v79 = v75;
      v76 = v71;
      v77 = v72;
      if (!*(&v72 + 1))
      {

        *&v76 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
        return sub_241165F78();
      }

      v71 = v76;
      v72 = v77;
      *&v73 = *&v78[0];
      sub_2410FC87C((v78 + 8), v67);
      sub_2410FC7CC(&v71, &v68);
      if (swift_dynamicCast())
      {
        break;
      }

      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v31 = sub_241165288();
      __swift_project_value_buffer(v31, qword_27E533A68);
      sub_241100374(v67, &v68);
      v17 = sub_241165268();
      v32 = sub_241166048();
      if (os_log_type_enabled(v17, v32))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66[0] = v20;
        *v19 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v33 = sub_241165DE8();
        v35 = sub_241156B38(v33, v34, v66);

        *(v19 + 4) = v35;
        *(v19 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v36 = sub_241165DE8();
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v39 = sub_241156B38(v36, v38, v66);

        *(v19 + 14) = v39;
        v2 = v65;
        v28 = v32;
        v29 = v17;
        v30 = "key in IDS query results was not a String. Skipping. key type: %s, value type: %s";
        goto LABEL_28;
      }

LABEL_6:

      __swift_destroy_boxed_opaque_existential_1(&v68);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v67);
      sub_2410FC828(&v71);
      v8 = v11;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v14 = v66[0];
    v15 = v66[1];
    sub_241100374(v67, &v68);
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    if (!swift_dynamicCast())
    {

      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533A68);
      sub_241100374(v67, &v68);
      v17 = sub_241165268();
      v18 = sub_241166048();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66[0] = v20;
        *v19 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v21 = sub_241165DE8();
        v23 = sub_241156B38(v21, v22, v66);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v24 = sub_241165DE8();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v27 = sub_241156B38(v24, v26, v66);

        *(v19 + 14) = v27;
        v2 = v65;
        v28 = v18;
        v29 = v17;
        v30 = "value in IDS query results was not IDSIDInfoResult. Skipping. key type: %s, value type: %s";
LABEL_28:
        _os_log_impl(&dword_2410F8000, v29, v28, v30, v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v20, -1, -1);
        MEMORY[0x245CDC5E0](v19, -1, -1);

        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v63 = v66[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v64;
    v42 = sub_2410FAD78(v14, v15);
    v43 = *(v64 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_49;
    }

    v46 = v41;
    if (*(v64 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_2411548F0();
        if (v46)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_241152C60(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_2410FAD78(v14, v15);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_51;
      }

      v42 = v47;
      if (v46)
      {
LABEL_37:

        v64 = v68;
        v49 = *(v68 + 56);
        v50 = *(v49 + 8 * v42);
        *(v49 + 8 * v42) = v63;

        __swift_destroy_boxed_opaque_existential_1(v67);
        sub_2410FC828(&v71);
        goto LABEL_41;
      }
    }

    v51 = v68;
    *(v68 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v52 = (v51[6] + 16 * v42);
    *v52 = v14;
    v52[1] = v15;
    *(v51[7] + 8 * v42) = v63;

    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_2410FC828(&v71);
    v53 = v51[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_50;
    }

    v64 = v51;
    v51[2] = v55;
LABEL_41:
    v2 = v65;
    v8 = v11;
  }

  while (v6);
LABEL_9:
  if (v7 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_241166428();
  __break(1u);
  return result;
}

unint64_t sub_24114FD84()
{
  result = qword_27E531100;
  if (!qword_27E531100)
  {
    sub_2410FCF28(255, &qword_27E5307A0, 0x277D08268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531100);
  }

  return result;
}

unint64_t sub_24114FDEC()
{
  result = qword_27E531110;
  if (!qword_27E531110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531110);
  }

  return result;
}

uint64_t sub_24114FE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24114FEE0(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0) - 8) + 80);

  return sub_24114F5C4(a1, a2);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon19IDSLookupControllerV5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24114FF9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24114FFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24115006C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2411651A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24115013C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2411651A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2411501F4()
{
  result = sub_2411651A8();
  if (v1 <= 0x3F)
  {
    result = sub_2410FCF28(319, &qword_27E5310D0, 0x277D85C78);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_241150288()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_241165DE8();
}

uint64_t sub_2411502D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2411502FC, 0, 0);
}

uint64_t sub_2411502FC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  v0[12] = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[9];
    v4 = v0[10];

    v6 = sub_2410FAD78(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      sub_2410FF8BC();

      v9 = v0[1];

      return v9(v8);
    }
  }

  v11 = *(v0[11] + 16);
  type metadata accessor for AppExtensionConnection();
  swift_allocObject();

  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_24115060C;
  v13 = v0[11];

  return sub_2410FE348(v11, sub_241151EA4, v13);
}

uint64_t sub_24115060C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_241150A3C;
  }

  else
  {
    v8 = *(v4 + 88);

    *(v4 + 120) = a1;
    v7 = sub_24115073C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24115073C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v1[4] = &off_2852EC388;
  swift_unknownObjectWeakAssign();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;
  v8 = v1[8];
  v9 = v1[9];
  v1[8] = sub_241155EAC;
  v1[9] = v7;

  sub_241100400(v8);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v4;
  v12 = v1[10];
  v13 = v1[11];
  v1[10] = sub_241151F3C;
  v1[11] = v11;

  sub_241100400(v12);

  swift_beginAccess();

  v14 = *(v2 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v2 + v3);
  *(v2 + v3) = 0x8000000000000000;
  sub_2411539DC(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + v3) = v23;
  swift_endAccess();
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);

  sub_2410FF8BC();

  if (v17)
  {
    *(v0 + 64) = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    if (swift_dynamicCast() && *(v0 + 128) == 5)
    {

      sub_241100310();
      swift_allocError();
      *v19 = 5;
      swift_willThrow();
    }

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 8);

    return v22(v16);
  }
}

uint64_t sub_241150A3C()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

void sub_241150AA0(void *a1)
{
  v2 = objc_opt_self();
  v3 = &unk_2852F14D0;
  v4 = [v2 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_241150B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_241151F5C(a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_241150BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = swift_task_alloc();
  v4[26] = v5;
  *v5 = v4;
  v5[1] = sub_241150C7C;

  return sub_2411502D8(0xD000000000000018, 0x800000024116A380);
}

uint64_t sub_241150C7C(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  *(v4 + 216) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_241150DB0, 0, 0);
  }
}

uint64_t sub_241150DB0()
{
  if (*(v0[25] + 16))
  {
    v1 = swift_task_alloc();
    v0[30] = v1;
    *v1 = v0;
    v1[1] = sub_2411510DC;
    v2 = v0[27];
    v3 = v0[23];
    v4 = v0[24];

    return sub_241155874((v0 + 2), v2, v3, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = sub_241150ECC;
    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[24];

    return sub_241155084((v0 + 12), v7, v8, v9);
  }
}

uint64_t sub_241150ECC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_241151078;
  }

  else
  {
    v3 = sub_241150FE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241150FE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);

  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v5;
  *(v2 + 24) = v7;
  *(v2 + 40) = v6;
  *(v2 + 56) = v4;
  *(v2 + 72) = v3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_241151078()
{
  v1 = v0[29];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2411510DC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_241151288;
  }

  else
  {
    v3 = sub_2411511F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2411511F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);

  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v5;
  *(v2 + 24) = v7;
  *(v2 + 40) = v6;
  *(v2 + 56) = v4;
  *(v2 + 72) = v3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_241151288()
{
  v1 = v0[31];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

void sub_2411512EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_241165078();
  v14 = sub_241165FB8();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a3;
  (*(v9 + 32))(v16 + v15, v12, v8);
  aBlock[4] = sub_241155CC4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241151668;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  v18 = a3;

  [v20 messagesDataPayloadFor:v18 messagesDetailsURL:v13 requiredRegistrationCapabilities:v14 reply:v17];
  _Block_release(v17);
}

uint64_t sub_241151500(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      sub_241100310();
      swift_allocError();
      *v7 = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F68();
  }

  else
  {
    sub_2411351C8(a2, a3);

    sub_241165C98();
    v4 = sub_241165CC8();
    sub_2411653A8();

    v5 = sub_241165CC8();
    sub_241165328();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F78();
  }
}

void sub_241151668(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {

    v6 = a2;
    v7 = v3;
    v3 = sub_241165118();
    v9 = v8;
  }

  else
  {

    v10 = a2;
    v9 = 0xF000000000000000;
  }

  v5(a2, v3, v9);
  sub_241109164(v3, v9);
}

void sub_241151728(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v13 = sub_241165288();
  __swift_project_value_buffer(v13, qword_27E533A20);
  v14 = a2;
  v15 = sub_241165268();
  v16 = sub_241166068();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = a4;
    v20 = a1;
    v21 = v19;
    *v18 = 138412290;
    *(v18 + 4) = v14;
    *v19 = v14;
    v22 = v14;
    _os_log_impl(&dword_2410F8000, v15, v16, "Reaching out to AskTo extension with payload: %@", v18, 0xCu);
    sub_2410FB29C(v21, &qword_27E530E30, &qword_2411676F0);
    v23 = v21;
    a1 = v20;
    a4 = v30;
    MEMORY[0x245CDC5E0](v23, -1, -1);
    v24 = v18;
    a3 = v31;
    MEMORY[0x245CDC5E0](v24, -1, -1);
  }

  v25 = sub_241165FB8();
  (*(v9 + 16))(v12, a1, v8);
  v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = v14;
  (*(v9 + 32))(v27 + v26, v12, v8);
  aBlock[4] = sub_241155DD8;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241151668;
  aBlock[3] = &block_descriptor_42;
  v28 = _Block_copy(aBlock);
  v29 = v14;

  [a3 messagesDataPayloadFor:v29 requiredRegistrationCapabilities:v25 reply:v28];
  _Block_release(v28);
}

uint64_t sub_241151A50(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      sub_241100310();
      swift_allocError();
      *v7 = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F68();
  }

  else
  {
    sub_2411351C8(a2, a3);

    sub_241165C98();
    v4 = sub_241165CC8();
    sub_2411653A8();

    v5 = sub_241165CC8();
    sub_241165328();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F78();
  }
}

uint64_t sub_241151BB8()
{
  sub_2410FB29C(v0 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client, &qword_27E530658, &unk_241167410);
  v1 = *(v0 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppExtensionProxy()
{
  result = qword_27E531158;
  if (!qword_27E531158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_241151C90()
{
  sub_241151D38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_241151D38()
{
  if (!qword_27E531168)
  {
    sub_241165BD8();
    v0 = sub_241166168();
    if (!v1)
    {
      atomic_store(v0, &qword_27E531168);
    }
  }
}

unint64_t sub_241151DA4()
{
  result = qword_27E531170;
  if (!qword_27E531170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531170);
  }

  return result;
}

uint64_t sub_241151DF8()
{
  swift_getWitnessTable();

  return sub_241150288();
}

uint64_t sub_241151E4C(uint64_t a1)
{
  result = sub_241154D68(&qword_27E531178, type metadata accessor for AppExtensionProxy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241151EC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241151F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2410FAD78(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_241154C08(&qword_27E5307F8, &qword_2411674C8);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_241153490(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_241152004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2410FAD78(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24115436C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for PendingAskStore.Metadata();
    v22 = *(v15 - 8);
    sub_2410FC768(v14 + *(v22 + 72) * v9, a3);
    sub_241153640(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PendingAskStore.Metadata();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_24115215C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2410FAD78(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v16 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_241154904();
    v10 = v16;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = (*(v10 + 56) + 16 * v7);
  v13 = *v12;
  v14 = v12[1];
  sub_24115382C(v7, v10);
  *v3 = v10;
  return v13;
}

uint64_t sub_24115220C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
  result = sub_241166368();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_241166138();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24115247C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PendingAskStore.Metadata();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
  v44 = a2;
  result = sub_241166368();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2410FC768(v31, v45);
      }

      else
      {
        sub_241139C34(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2410FC768(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2411527B8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2411659F8();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2411651A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
  v52 = a2;
  result = sub_241166368();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_241154D68(&qword_27E530780, MEMORY[0x277CC95F0]);
      result = sub_241165D88();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_241152C74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
  v36 = a2;
  result = sub_241166368();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_241152F40(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_241166368();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2411531F0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_241166368();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_241153490(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2411664A8();

      sub_241165E28();
      v13 = sub_2411664C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_241153640(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2411664A8();

      sub_241165E28();
      v13 = sub_2411664C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for PendingAskStore.Metadata() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24115382C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2411664A8();

      sub_241165E28();
      v13 = sub_2411664C8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}
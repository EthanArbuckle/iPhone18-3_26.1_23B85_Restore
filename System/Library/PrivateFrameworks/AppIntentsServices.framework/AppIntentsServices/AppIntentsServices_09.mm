uint64_t sub_221A47B0C()
{
  OUTLINED_FUNCTION_1_5();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_221BCC6C8();
  v1[20] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[21] = v4;
  v6 = *(v5 + 64);
  v1[22] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8428, &qword_221BD3650);
  v1[23] = v7;
  OUTLINED_FUNCTION_18_4(v7);
  v1[24] = v8;
  v10 = *(v9 + 64);
  v1[25] = OUTLINED_FUNCTION_210();
  v11 = sub_221BCD088();
  v1[26] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v1[27] = v12;
  v14 = *(v13 + 64);
  v1[28] = OUTLINED_FUNCTION_210();
  v15 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221A47C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  v16 = v15[19];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[28];
    v18 = v15[25];
    v19 = v15[18];
    OUTLINED_FUNCTION_98_2(v15[19]);
    sub_221A0DA18(v19, (v15 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    sub_221A0DA74();
    sub_221A0DAC8();
    OUTLINED_FUNCTION_70_3();
    v20 = v15[28];
    if (v17)
    {
      v22 = v15[26];
      v23 = v15[27];
      (*(v15[24] + 8))(v15[25], v15[23]);
      v24 = OUTLINED_FUNCTION_71_2();
      v25(v24);
      v26 = v15[28];
      v27 = v15[25];
      v28 = v15[22];

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
    }

    else
    {
      sub_221A0DB1C();
      sub_221A0DB70();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v15[28];
      sub_221BCD048();
      v42 = v15[22];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v43 = *(MEMORY[0x277CD8E30] + 4);
      v44 = swift_task_alloc();
      v15[29] = v44;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v45, v46);
      OUTLINED_FUNCTION_58_2();
      *v44 = v47;
      v44[1] = sub_221A47EE4;
      v48 = v15[28];
      v49 = v15[22];
      v50 = v15[19];
      OUTLINED_FUNCTION_270(v51, MEMORY[0x277D84AC0]);
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_123_0();

      return MEMORY[0x282125BC0](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v38 = swift_task_alloc();
    v15[31] = v38;
    *v38 = v15;
    v38[1] = sub_221A48094;
    v39 = v15[18];
    v40 = v15[19];
    OUTLINED_FUNCTION_124_0();

    return sub_221A48278();
  }
}

uint64_t sub_221A47EE4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A47FDC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_199_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v11 = *(v0 + 176);

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_125_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_221A48094()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_151_0();
  v2 = v0[31];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];

  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_253();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A481CC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_199_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = v0[30];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[22];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A48278()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v1[35] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v1[36] = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A48328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_192_0();
  v66 = v29;
  OUTLINED_FUNCTION_57_2();
  if (qword_27CFB6D38 != -1)
  {
    swift_once();
  }

  v30 = *(v27 + 264);
  memcpy((v27 + 128), &unk_27CFDD640, 0x59uLL);
  v70 = *(v30 + 88);
  v65 = *(v30 + 96);
  v67 = *(v30 + 104);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
    v30 = *(v27 + 264);
  }

  v31 = *(v27 + 280);
  v32 = *(v27 + 288);
  v33 = *(v27 + 272);
  v34 = sub_221BCCD88();
  __swift_project_value_buffer(v34, qword_27CFDEE88);
  v35 = OUTLINED_FUNCTION_222_0();
  sub_221A0DA18(v35, v36);
  v37 = swift_allocObject();
  *(v27 + 296) = v37;
  memcpy((v37 + 16), (v27 + 16), 0x6AuLL);
  *(v27 + 240) = 0u;
  *(v27 + 256) = 0;
  *(v27 + 224) = 0u;
  v38 = *(v30 + 105);
  v39 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v32, v40, v41, v39);
  v42 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v31, v43, v44, v42);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v45, v46);
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_242_0();
  *(v27 + 304) = v47;
  v48 = swift_task_alloc();
  *(v27 + 312) = v48;
  *(v48 + 16) = v30;
  *(v48 + 24) = v33;
  OUTLINED_FUNCTION_58_4(&unk_221BD8030);
  v64 = v49;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v27 + 320) = v50;
  *v50 = v51;
  v50[1] = sub_221A4857C;
  v52 = *(v27 + 272);
  v68 = *(v27 + 288);
  v69 = *(v27 + 280);
  OUTLINED_FUNCTION_231_0();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_147_0();

  return v61(v53, v54, v55, v56, v57, v58, v59, v60, a9, v64, v65, a12, a13, a14, a15, a16, a17, a18, a19, v27, v28, v66, v37, a24, a25, a26, a27, v27 + 224);
}

void sub_221A4857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 320);
  v17 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v18 = v17;

  if (v10)
  {
    OUTLINED_FUNCTION_152();
  }

  else
  {
    v21 = v13[38];
    v22 = v13[39];
    v24 = v13[36];
    v23 = v13[37];
    v25 = v13[35];
    swift_unknownObjectRelease();

    sub_221A01F0C(v25, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v24, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v13 + 28), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_152();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_221A48708()
{
  MEMORY[0x223DA31F0](0x676E696863746546, 0xEA0000000000203ALL);
  sub_221BCE018();
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_221A48790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[70] = a4;
  v4[69] = a3;
  v4[68] = a2;
  v4[67] = a1;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221A4882C, a4, 0);
}

uint64_t sub_221A4882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v56 = *MEMORY[0x277D85DE8];
  v14 = *(v13 + 560);
  v15 = *(v13 + 544);
  sub_221A49038(*(v13 + 552));
  OUTLINED_FUNCTION_174_0();
  sub_221A4F364();
  v16 = v12;
  if (v12)
  {
LABEL_2:
    v17 = *(v13 + 536);
    v18 = sub_221BCC328();

    *v17 = v18;
    *(v17 + 8) = 1;
    OUTLINED_FUNCTION_25();
    v19 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_238();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v56, a11, a12);
  }

  v29 = *(v13 + 560);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v30, v31);
  sub_221BCC648();
  if (!*(v13 + 504))
  {
    sub_221A01F0C(v13 + 480, &qword_27CFB9218, &qword_221BD7E88);
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_95_1(v16, v37);
    swift_willThrow();
    goto LABEL_2;
  }

  v32 = *(v13 + 552);
  sub_22198B358((v13 + 480), v13 + 440);
  type metadata accessor for CachedLinkMetadataProvider();
  *(v13 + 568) = swift_initStackObject();
  *(v13 + 576) = sub_221BB6B80();
  v33 = *v32;
  *(v13 + 584) = *v32;
  *(v13 + 592) = v32[1];
  v34 = v32[7];
  v35 = v32[8];
  __swift_project_boxed_opaque_existential_0(v32 + 4, v34);
  v35[2](v34, v35);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_174_0();
  v36 = sub_221BB7510();
  *(v13 + 600) = v36;
  if (v33)
  {
    v16 = v33;
    __swift_destroy_boxed_opaque_existential_0((v13 + 440));

    goto LABEL_2;
  }

  v38 = v36;

  v39 = [objc_opt_self() policyWithEntityMetadata_];
  *(v13 + 520) = 0;
  v40 = [v39 connectionWithError_];
  *(v13 + 608) = v40;

  v41 = *(v13 + 520);
  if (!v40)
  {
    v55 = v41;
    v16 = sub_221BCC338();

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v13 + 440));
    goto LABEL_2;
  }

  v42 = *(v13 + 552);
  v43 = *(v42 + 72);
  v44 = *(v42 + 80);
  v45 = v41;
  v46 = sub_221BCD358();
  *(v13 + 616) = v46;
  v47 = v32[7];
  v48 = v32[8];
  __swift_project_boxed_opaque_existential_0(v32 + 4, v47);
  v49 = sub_22199B82C(v47, v48);
  v50 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  *(v13 + 624) = v50;

  *(v13 + 16) = v13;
  *(v13 + 56) = v13 + 528;
  v51 = OUTLINED_FUNCTION_266();
  *(v13 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F70, &qword_221BD8080);
  *(v13 + 376) = MEMORY[0x277D85DD0];
  *(v13 + 384) = 1107296256;
  *(v13 + 392) = sub_221A34B38;
  *(v13 + 400) = &block_descriptor_235;
  *(v13 + 408) = v51;
  [v40 fetchValueForPropertyWithIdentifier:v46 entity:v50 completionHandler:v13 + 376];
  v52 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return MEMORY[0x282200938](v53);
}

uint64_t sub_221A48C50()
{
  OUTLINED_FUNCTION_1_5();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 632) = *(v4 + 48);
  OUTLINED_FUNCTION_181();
  v6 = *(v5 + 560);
  if (v7)
  {
    v8 = sub_221A48F54;
  }

  else
  {
    v8 = sub_221A48D8C;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t sub_221A48D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v41 = *MEMORY[0x277D85DE8];
  v13 = *(v12 + 616);
  v14 = *(v12 + 608);
  v15 = *(v12 + 592);
  v16 = *(v12 + 584);
  v17 = *(v12 + 560);
  v18 = *(v12 + 528);

  v19 = *(v17 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  v20 = sub_221A5AE84(v14, (v12 + 440));
  v21 = *(v17 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);
  *(v12 + 200) = v20;
  *(v12 + 208) = v16;
  *(v12 + 216) = v15;
  *(v12 + 224) = v21;
  *(v12 + 232) = 0;
  *(v12 + 240) = 0;

  sub_221A5C708((v12 + 248));
  if (v18)
  {
    v22 = *(v12 + 608);
    v23 = *(v12 + 600);
    v24 = *(v12 + 576);
    sub_221A57690(v12 + 200, v12 + 288);
    OUTLINED_FUNCTION_206_0();
    v25 = swift_allocObject();
    memcpy((v25 + 16), (v12 + 288), 0x58uLL);
    sub_221BB8ED4(v18, sub_221A58F24, v25);
    v27 = v26;
  }

  else
  {
    v28 = *(v12 + 600);
    v29 = *(v12 + 576);

    v27 = 0;
  }

  v30 = *(v12 + 536);

  sub_221A56FC4(v12 + 200);
  __swift_destroy_boxed_opaque_existential_0((v12 + 440));
  *v30 = v27;
  *(v30 + 8) = 0;
  OUTLINED_FUNCTION_25();
  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, a11, a12);
}

uint64_t sub_221A48F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v28 = *MEMORY[0x277D85DE8];
  v10 = v9[79];
  v11 = v9[78];
  v12 = v9[77];
  v13 = v9[76];
  v14 = v9[75];
  v15 = v9[72];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v9 + 55);

  v16 = v9[79];
  v17 = v9[67];
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  *v17 = v11;
  *(v17 + 8) = 1;
  OUTLINED_FUNCTION_25();
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_123_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28);
}

uint64_t sub_221A49038(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD6DE0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v3 = a1[1];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = *a1;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x7954797469746E65;
  *(inited + 88) = 0xEA00000000006570;
  v5 = a1[7];
  v6 = a1[8];
  __swift_project_boxed_opaque_existential_0(a1 + 4, v5);
  v7 = *(v6 + 16);

  *(inited + 96) = v7(v5, v6);
  *(inited + 104) = v8;
  *(inited + 120) = v4;
  *(inited + 128) = 0x79747265706F7270;
  *(inited + 136) = 0xE800000000000000;
  v10 = a1[9];
  v9 = a1[10];
  *(inited + 168) = v4;
  *(inited + 144) = v10;
  *(inited + 152) = v9;

  sub_221BCD2C8();
  sub_221B62F44();
}

uint64_t sub_221A49190()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = sub_221BCC6C8();
  v0[22] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[23] = v4;
  v6 = *(v5 + 64);
  v0[24] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8380, &qword_221BD77D0);
  v0[25] = v7;
  OUTLINED_FUNCTION_18_4(v7);
  v0[26] = v8;
  v10 = *(v9 + 64);
  v0[27] = OUTLINED_FUNCTION_210();
  v11 = sub_221BCD088();
  v0[28] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[29] = v12;
  v14 = *(v13 + 64);
  v0[30] = OUTLINED_FUNCTION_210();
  v15 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221A492D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  v16 = v15[21];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[30];
    v18 = v15[27];
    v19 = v15[20];
    OUTLINED_FUNCTION_98_2(v15[21]);
    sub_221A09690(v19, (v15 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    sub_221A096EC();
    sub_221A09740();
    OUTLINED_FUNCTION_70_3();
    if (v17)
    {
      v23 = v15[29];
      v22 = v15[30];
      v25 = v15[27];
      v24 = v15[28];
      v26 = v15[25];
      v27 = v15[24];
      v28 = OUTLINED_FUNCTION_59_2(v15[26]);
      v29(v28);
      v30 = *(v23 + 8);
      v31 = OUTLINED_FUNCTION_70();
      v32(v31);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
    }

    else
    {
      v20 = v15[30];
      sub_221A09794();
      sub_221A097E8();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v15[30];
      sub_221BCD048();
      v48 = v15[24];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v49 = *(MEMORY[0x277CD8E30] + 4);
      v50 = swift_task_alloc();
      v15[31] = v50;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v51, v52);
      OUTLINED_FUNCTION_58_2();
      *v50 = v53;
      v50[1] = sub_221A49564;
      v54 = v15[30];
      v55 = v15[24];
      v56 = v15[21];
      v57 = v15[19];
      OUTLINED_FUNCTION_74_1(v58);
      OUTLINED_FUNCTION_6_8(v59);
      OUTLINED_FUNCTION_123_0();

      return MEMORY[0x282125BC0](v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v15[33] = v42;
    *v42 = v43;
    v42[1] = sub_221A49718;
    v44 = v15[20];
    v45 = v15[21];
    v46 = v15[19];
    OUTLINED_FUNCTION_124_0();

    return sub_221A49914();
  }
}

uint64_t sub_221A49564()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4965C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v7 = OUTLINED_FUNCTION_48_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_53_6();
  v10(v9);
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[24];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_221A49718()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v2 = v0[33];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[24];

  OUTLINED_FUNCTION_166();

  return v8();
}

uint64_t sub_221A49854()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[23] + 8))(v0[24], v0[22]);
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[24];
  v8 = OUTLINED_FUNCTION_59_2(v0[26]);
  v9(v8);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_4();
  v12(v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_221A49914()
{
  OUTLINED_FUNCTION_1_5();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  v1[39] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v1[40] = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A499C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_192_0();
  v69 = v30;
  OUTLINED_FUNCTION_57_2();
  if (qword_27CFB6D70 != -1)
  {
    swift_once();
  }

  v31 = *(v28 + 296);
  memcpy((v28 + 152), &unk_27CFDD8E0, 0x59uLL);
  v67 = *(v31 + 104);
  v68 = *(v31 + 96);
  v70 = *(v31 + 112);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
    v31 = *(v28 + 296);
  }

  v32 = *(v28 + 312);
  v33 = *(v28 + 320);
  v34 = *(v28 + 304);
  v35 = sub_221BCCD88();
  __swift_project_value_buffer(v35, qword_27CFDEE88);
  v36 = OUTLINED_FUNCTION_222_0();
  sub_221A09690(v36, v37);
  v38 = swift_allocObject();
  *(v28 + 328) = v38;
  memcpy((v38 + 16), (v28 + 16), 0x88uLL);
  *(v28 + 280) = 0;
  *(v28 + 248) = 0u;
  *(v28 + 264) = 0u;
  v39 = *(v31 + 113);
  v40 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v33, v41, v42, v40);
  v43 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v32, v44, v45, v43);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v46, v47);
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_242_0();
  *(v28 + 336) = v48;
  v49 = swift_task_alloc();
  *(v28 + 344) = v49;
  *(v49 + 16) = v31;
  *(v49 + 24) = v34;
  OUTLINED_FUNCTION_58_4(dword_221BD7FE8);
  v66 = v50;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v28 + 352) = v51;
  *v51 = v52;
  v51[1] = sub_221A49C08;
  v53 = *(v28 + 304);
  v54 = *(v28 + 288);
  v71 = *(v28 + 320);
  v72 = *(v28 + 312);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_147_0();

  return v63(v55, v56, v57, v58, v59, v60, v61, v62, v66, v67, v68, a12, a13, a14, a15, a16, a17, a18, a19, v28, v29, v69, sub_221A57450, v38, a25, a26, a27, a28);
}

void sub_221A49C08()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_253();
  }

  else
  {
    v11 = v3[42];
    v12 = v3[43];
    v14 = v3[40];
    v13 = v3[41];
    v15 = v3[39];
    swift_unknownObjectRelease();

    sub_221A01F0C(v15, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v14, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v3 + 31), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_221A49D8C()
{
  MEMORY[0x223DA31F0](0x676E696863746546, 0xEA0000000000203ALL);
  sub_221BCE018();
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_221A49E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[44] = a3;
  v4[45] = a4;
  v4[42] = a1;
  v4[43] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221A49EA8, a4, 0);
}

uint64_t sub_221A49EA8()
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 360);
  v3 = *(v1 + 344);
  sub_221A4AAF8(*(v1 + 352));
  OUTLINED_FUNCTION_174_0();
  sub_221A4F364();
  if (!v0)
  {
    v4 = v1 + 80;
    v5 = *(v1 + 360);
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_0_35();
    sub_221A58E78(v6, v7);
    sub_221BCC648();
    if (*(v1 + 104))
    {
      v8 = *(v1 + 352);
      sub_22198B358((v1 + 80), v1 + 256);
      sub_2219EB748(v8, v1 + 296);
      if (qword_27CFB7348 != -1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v9 = *(v1 + 328);
        __swift_project_boxed_opaque_existential_0((v1 + 296), *(v1 + 320));
        v10 = *(v9 + 8);
        v11 = OUTLINED_FUNCTION_27();
        v12(v11);
        sub_2219982C4(v83, v84);
        v13 = *(v1 + 328);
        __swift_project_boxed_opaque_existential_0((v1 + 296), *(v1 + 320));
        v14 = *(v13 + 16);
        v15 = OUTLINED_FUNCTION_120();
        v16(v15);
        v18 = v17;
        v19 = OUTLINED_FUNCTION_103_2();
        v22 = sub_221BB8738(v19, v20, v82, v21, v18);
        *(v1 + 368) = v22;
        *(v1 + 376) = 0;
        v25 = v22;
        v77 = v4;
        v26 = *(v1 + 352);

        v27 = *(v26 + 88);
        v79 = *(v26 + 80);

        v78 = v25;
        v28 = [v25 parameters];
        sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
        OUTLINED_FUNCTION_183_0();
        v29 = sub_221BCD668();

        v30 = sub_2219A69A0(v29);
        v31 = 0;
        v4 = v29 & 0xC000000000000001;
        while (1)
        {
          if (v30 == v31)
          {

            sub_2219ACADC();
            OUTLINED_FUNCTION_15_0();
            swift_allocError();
            *v38 = v79;
            *(v38 + 8) = v27;
            *(v38 + 16) = 0;
            *(v38 + 24) = 0;
            *(v38 + 32) = 3;
            swift_willThrow();

            goto LABEL_28;
          }

          if (v4)
          {
            v32 = MEMORY[0x223DA3BF0](v31, v29);
          }

          else
          {
            if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v32 = *(v29 + 8 * v31 + 32);
          }

          v33 = v32;
          *(v1 + 384) = v32;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          v34 = sub_2219ACA70(v32);
          if (v35)
          {
            if (v34 == v79 && v35 == v27)
            {

LABEL_21:

              v39 = *(v1 + 328);
              __swift_project_boxed_opaque_existential_0((v1 + 296), *(v1 + 320));
              v40 = *(v39 + 24);
              v41 = OUTLINED_FUNCTION_103_2();
              v43 = v42(v41);
              v44 = *(v43 + 16);
              if (v44)
              {
                v81 = MEMORY[0x277D84F90];
                sub_221BCDF28();
                v45 = (v43 + 48);
                do
                {
                  v46 = *(v45 - 2);
                  v47 = *(v45 - 1);
                  v48 = *v45;
                  v45 += 5;
                  objc_allocWithZone(MEMORY[0x277D238D8]);
                  v49 = v48;

                  sub_2219A62D8(v46, v47, v48);
                  sub_221BCDEF8();
                  v50 = *(v81 + 16);
                  sub_221BCDF38();
                  sub_221BCDF48();
                  sub_221BCDF08();
                  --v44;
                }

                while (v44);
              }

              v51 = [objc_opt_self() policyWithActionMetadata_];
              *(v1 + 392) = v51;
              sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
              OUTLINED_FUNCTION_170_0();
              v52 = sub_221BCD658();

              v53 = [v51 actionWithParameters_];
              *(v1 + 400) = v53;

              *(v1 + 80) = 0;
              v54 = [v51 connectionWithError_];
              *(v1 + 408) = v54;
              v55 = *(v1 + 80);
              if (v54)
              {
                v56 = v54;
                v80 = v53;
                v57 = *(v1 + 352);
                v58 = v57[8];
                v59 = v57[9];
                __swift_project_boxed_opaque_existential_0(v57 + 5, v58);
                v60 = *(v59 + 24);
                v61 = v55;
                v60(v58, v59);
                OUTLINED_FUNCTION_242_0();
                *(v1 + 416) = v62;
                *(v1 + 424) = v63;
                if (v57[16])
                {
                  v64 = *(*(v1 + 352) + 120);
                  v65 = v80;
                  v66 = v80;
                  v67 = sub_221BCD358();
                }

                else
                {
                  v65 = v80;
                  v73 = v80;
                  v67 = 0;
                }

                *(v1 + 432) = v67;
                v74 = sub_221BCD358();
                *(v1 + 440) = v74;
                *(v1 + 16) = v1;
                OUTLINED_FUNCTION_282(v1 + 168);
                v75 = OUTLINED_FUNCTION_265();
                *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80C0, &qword_221BD29C0);
                *(v1 + 80) = MEMORY[0x277D85DD0];
                *(v1 + 88) = 1107296256;
                *(v1 + 96) = sub_221A34BBC;
                *(v1 + 104) = &block_descriptor_206;
                *(v1 + 112) = v75;
                [v56 fetchOptionsForAction:v65 actionMetadata:v78 parameterMetadata:v33 searchTerm:v67 localeIdentifier:v74 completionHandler:v77];
                v76 = *MEMORY[0x277D85DE8];

                return MEMORY[0x282200938](v1 + 16);
              }

              v68 = v55;
              sub_221BCC338();

              swift_willThrow();
LABEL_28:
              __swift_destroy_boxed_opaque_existential_0((v1 + 256));
              sub_2219B397C(v1 + 296);
              goto LABEL_29;
            }

            v37 = sub_221BCE1B8();

            if (v37)
            {
              goto LABEL_21;
            }
          }

          ++v31;
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        OUTLINED_FUNCTION_98();
      }
    }

    sub_221A01F0C(v1 + 80, &qword_27CFB9218, &qword_221BD7E88);
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_95_1(v23, v24);
    swift_willThrow();
  }

LABEL_29:
  v69 = *(v1 + 336);
  sub_221BCC328();

  OUTLINED_FUNCTION_116_1();
  OUTLINED_FUNCTION_25();
  v71 = *MEMORY[0x277D85DE8];

  return v70();
}

uint64_t sub_221A4A61C()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[56] = v5;
  if (v5)
  {
    v6 = v2[53];
    v7 = v2[45];

    v8 = *MEMORY[0x277D85DE8];
    v9 = sub_221A4AA04;
    v10 = v7;
  }

  else
  {
    v10 = v2[45];
    v11 = *MEMORY[0x277D85DE8];
    v9 = sub_221A4A784;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_221A4A784()
{
  v38 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v32 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = *(v0 + 168);

  v8 = *(v6 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  v9 = sub_221A5AE84(v4, (v0 + 256));
  v10 = [v4 bundleIdentifier];
  v11 = sub_221BCD388();
  v13 = v12;

  v14 = *(v6 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);
  v15 = v7;
  *(v0 + 80) = v9;
  *(v0 + 88) = v11;
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  *(v0 + 112) = v2;
  *(v0 + 120) = v3;

  sub_221A5C708((v0 + 128));
  sub_221A57690(v0 + 80, v0 + 168);
  OUTLINED_FUNCTION_206_0();
  v16 = swift_allocObject();
  memcpy((v16 + 16), (v0 + 168), 0x58uLL);
  sub_2219AFAA8(v7, v3, sub_221A576EC, &v33);
  v17 = *(v0 + 424);
  v18 = *(v0 + 400);
  v19 = *(v0 + 408);
  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  v22 = *(v0 + 368);
  if (v32)
  {

    sub_221A56FC4(v0 + 80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_2219B397C(v0 + 296);
    v23 = *(v0 + 336);
    sub_221BCC328();

    OUTLINED_FUNCTION_116_1();
  }

  else
  {
    v24 = v15;
    v25 = *(v0 + 336);

    sub_221A56FC4(v0 + 80);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    sub_2219B397C(v0 + 296);
    v26 = v34;
    v27 = v35;
    v28 = v36;
    *v25 = v33;
    *(v25 + 16) = v26;
    *(v25 + 24) = v27;
    *(v25 + 32) = v28;
  }

  OUTLINED_FUNCTION_25();
  v30 = *MEMORY[0x277D85DE8];

  return v29();
}

uint64_t sub_221A4AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v33 = *MEMORY[0x277D85DE8];
  v13 = v12[55];
  v14 = v12[56];
  v15 = v12[54];
  v17 = v12[50];
  v16 = v12[51];
  v19 = v12[48];
  v18 = v12[49];
  v20 = v12[46];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v12 + 32);
  sub_2219B397C((v12 + 37));

  v21 = v12[56];
  v22 = v12[42];
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  *v22 = v15;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 0x80;
  OUTLINED_FUNCTION_25();
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_238();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, a11, a12);
}

uint64_t sub_221A4AAF8(void *a1)
{
  v2 = sub_221B707F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BCF7F0;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 40) = 0xE900000000000072;
  v4 = a1[11];
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = a1[10];
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0x6372616553736168;
  v6 = 1702195828;
  if (!a1[16])
  {
    v6 = 0x65736C6166;
  }

  v7 = 0xE400000000000000;
  if (!a1[16])
  {
    v7 = 0xE500000000000000;
  }

  *(inited + 120) = v5;
  *(inited + 88) = 0xED00006D72655468;
  *(inited + 96) = v6;
  *(inited + 104) = v7;

  v8 = sub_221BCD2C8();
  sub_221BB5788(v8, v2);
  sub_221B62F44();
}

void *sub_221A4AC38(void *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    sub_221A57690(a2, __src);
    v3 = swift_allocObject();
    memcpy((v3 + 16), __src, 0x58uLL);
    sub_221BB8ED4(v2, sub_221A57748, v3);
    v2 = v4;
  }

  return v2;
}

uint64_t sub_221A4ACCC()
{
  OUTLINED_FUNCTION_1_5();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_221BCC6C8();
  v1[6] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_210();
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  v1[9] = File;
  OUTLINED_FUNCTION_8_1(File);
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9148, &qword_221BD7868);
  v1[11] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[12] = v11;
  v13 = *(v12 + 64);
  v1[13] = OUTLINED_FUNCTION_210();
  v14 = sub_221BCD088();
  v1[14] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v1[15] = v15;
  v17 = *(v16 + 64);
  v1[16] = OUTLINED_FUNCTION_210();
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221A4AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v16 = v15[5];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[16];
    v18 = v15[13];
    v19 = v15[9];
    v20 = v15[10];
    v21 = v15[4];
    OUTLINED_FUNCTION_98_2(v15[5]);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_211_0();
    sub_221A58E78(&unk_27CFBB4B0, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request);
    OUTLINED_FUNCTION_212(&qword_27CFB9150);
    OUTLINED_FUNCTION_36_6();
    v22 = v15[16];
    if (v17)
    {
      v25 = v15[14];
      v26 = v15[15];
      (*(v15[12] + 8))(v15[13], v15[11]);
      v27 = OUTLINED_FUNCTION_71_2();
      v28(v27);
      OUTLINED_FUNCTION_292();

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD068();
      v23 = v15[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
      sub_221A54EFC(&qword_27CFB9158, sub_221A54EA8);
      sub_221A54EFC(&qword_27CFB9168, sub_221A54F74);
      OUTLINED_FUNCTION_256();
      v24 = v15[16];
      sub_221BCD048();
      v43 = v15[8];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v44 = *(MEMORY[0x277CD8E30] + 4);
      v45 = swift_task_alloc();
      v15[17] = v45;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v46, v47);
      OUTLINED_FUNCTION_26_0();
      *v45 = v48;
      v45[1] = sub_221A4B164;
      v49 = v15[16];
      v50 = v15[8];
      v51 = v15[5];
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v38 = v15[5];
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_45_2();

    return MEMORY[0x2822009F8](v39, v40, v41);
  }
}

uint64_t sub_221A4B164()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4B25C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_202_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v8 = v0[2];
  v7 = v0[3];
  OUTLINED_FUNCTION_291();

  v9 = v0[1];
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_125_1();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_221A4B310()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[4];
  v2 = v0[5];
  sub_221A4B4AC();
  OUTLINED_FUNCTION_291();

  v3 = v0[1];
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_253();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221A4B3F4()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_202_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[8];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

void sub_221A4B4AC()
{
  OUTLINED_FUNCTION_55_4();
  v54 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v53 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v52 = v48 - v12;
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  v14 = OUTLINED_FUNCTION_0_2(File);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v19);
  if (qword_27CFB6D30 != -1)
  {
    swift_once();
  }

  memcpy(v57, &unk_27CFDD5E0, sizeof(v57));
  v20 = v2 + *(File + 28);
  v21 = *(v20 + 8);
  v51 = *v20;
  v50 = v21;
  v49 = *(v20 + 16);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v22 = sub_221BCCD88();
  v48[1] = __swift_project_value_buffer(v22, qword_27CFDEE88);
  sub_221A56250();
  v23 = *(v16 + 80);
  v24 = swift_allocObject();
  sub_221A58D34();
  OUTLINED_FUNCTION_27_6();
  sub_221A56250();
  v25 = swift_allocObject();
  sub_221A58D34();
  sub_221BCCD08();
  *&v26 = OUTLINED_FUNCTION_117_1();
  v55[0] = v26;
  v55[1] = v26;
  v56 = 0;
  v27 = v52;
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_221BCCCD8();
  v32 = v53;
  OUTLINED_FUNCTION_108();
  v37 = __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  MEMORY[0x28223BE20](v37);
  v47 = v54;
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_27_0();
  sub_221A4090C(v38, v39, v40, v51, v50, v41, v42, v24, 0, 0, sub_221A573B0, v25, v55, v43, v44, v45, v46, v47);

  sub_221A01F0C(v32, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v27, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v55, qword_27CFB7A80, &unk_221BD2800);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A4B8C0(uint64_t a1)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001ELL, 0x8000000221BEDF60);
  sub_221BCC418();
  sub_221A58E78(&qword_27CFB9278, MEMORY[0x277CC9260]);
  v2 = sub_221BCE168();
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](0x7366666F20746120, 0xEC000000203A7465);
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  v7 = *(a1 + *(File + 20));
  v4 = sub_221BCE168();
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](0x6E656C20646E6120, 0xED0000203A687467);
  v8 = *(a1 + *(File + 24));
  v5 = sub_221BCE168();
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_221A4BA74()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BEDF40);
  sub_221BCC418();
  sub_221A58E78(&qword_27CFB9278, MEMORY[0x277CC9260]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  sub_221BCE018();
  return 0;
}

void sub_221A4BB94(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_221A4F364();
  if (!v3)
  {
    v7 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);
    File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
    v9 = *(a2 + *(File + 20));
    v10 = *(a2 + *(File + 24));
    *a3 = sub_221B7C4A8(a2);
    a3[1] = v11;
  }
}

uint64_t sub_221A4BC0C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 112) = v0;
  v4 = sub_221BCC6C8();
  *(v1 + 120) = v4;
  OUTLINED_FUNCTION_18_4(v4);
  *(v1 + 128) = v5;
  v7 = *(v6 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9178, &qword_221BD78F8);
  *(v1 + 144) = v8;
  OUTLINED_FUNCTION_18_4(v8);
  *(v1 + 152) = v9;
  v11 = *(v10 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_210();
  v12 = sub_221BCD088();
  *(v1 + 168) = v12;
  OUTLINED_FUNCTION_18_4(v12);
  *(v1 + 176) = v13;
  v15 = *(v14 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_210();
  v16 = *v3;
  OUTLINED_FUNCTION_271();
  v17 = *(v3 + 24);
  *(v1 + 192) = v18;
  *(v1 + 208) = v17;
  v19 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_221A4BD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_104();
  v16 = *(v15 + 112);
  is_remote = swift_distributed_actor_is_remote();
  v19 = *(v15 + 208);
  v18 = *(v15 + 216);
  v20 = *(v15 + 106);
  v21 = *(v15 + 105);
  v23 = *(v15 + 192);
  v22 = *(v15 + 200);
  if (is_remote)
  {
    v24 = *(v15 + 184);
    v25 = *(v15 + 160);
    v62 = *(*(v15 + 112) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
    sub_221BCCFB8();
    *(v15 + 56) = v23;
    *(v15 + 64) = v22;
    *(v15 + 72) = v21;
    *(v15 + 73) = v20;
    *(v15 + 80) = v19;
    *(v15 + 88) = v18;

    v26 = v19;
    v27 = v18;
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_60_4();
    sub_221BCC6E8();
    sub_221A552E4();
    sub_221A55338();
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_174_0();
    sub_221BCD058();
    v28 = *(v15 + 184);
    if (&type metadata for AppIntentsProtocol.CreateAsyncIterator.Request)
    {
      v30 = *(v15 + 168);
      v31 = *(v15 + 176);
      (*(*(v15 + 152) + 8))(*(v15 + 160), *(v15 + 144));
      v32 = OUTLINED_FUNCTION_71_2();
      v33(v32);
      v34 = *(v15 + 184);
      v35 = *(v15 + 160);
      v36 = *(v15 + 136);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_148_0();

      return v37();
    }

    else
    {
      sub_221A5538C();
      sub_221A553E0();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v29 = *(v15 + 184);
      sub_221BCD048();
      v43 = *(v15 + 136);
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v44 = *(MEMORY[0x277CD8E30] + 4);
      v45 = swift_task_alloc();
      *(v15 + 224) = v45;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v46, v47);
      OUTLINED_FUNCTION_58_2();
      *v45 = v48;
      v45[1] = sub_221A4C070;
      v49 = *(v15 + 184);
      v50 = *(v15 + 136);
      v51 = *(v15 + 112);
      OUTLINED_FUNCTION_270(v52, MEMORY[0x277D84AC0]);
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_95_0();

      return MEMORY[0x282125BC0](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    *(v15 + 16) = v23;
    *(v15 + 24) = v22;
    *(v15 + 32) = v21;
    *(v15 + 33) = v20;
    *(v15 + 40) = v19;
    *(v15 + 48) = v18;
    v40 = swift_task_alloc();
    *(v15 + 240) = v40;
    *v40 = v15;
    v40[1] = sub_221A4C220;
    v41 = *(v15 + 112);
    OUTLINED_FUNCTION_148_0();

    return sub_221A4C404();
  }
}

uint64_t sub_221A4C070()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4C168()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_198_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 184);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_125_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_221A4C220()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_151_0();
  v2 = v0[30];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[17];

  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_253();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A4C358()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_198_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = v0[29];
  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[17];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A4C404()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 232) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_210();
  v10 = *(v3 + 16);
  *(v1 + 112) = *v3;
  *(v1 + 128) = v10;
  *(v1 + 144) = *(v3 + 32);
  v11 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221A4C4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_192_0();
  v68 = v29;
  OUTLINED_FUNCTION_57_2();
  v31 = (v27 + 112);
  if (qword_27CFB6D58 != -1)
  {
    v30 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v30, &unk_27CFDD7C0);
  v71 = *(v27 + 112);
  v67 = *(v27 + 120);
  v32 = *(v27 + 128);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v34 = *(v27 + 240);
  v33 = *(v27 + 248);
  v35 = *(v27 + 232);
  v36 = sub_221BCCD88();
  __swift_project_value_buffer(v36, qword_27CFDEE88);
  v37 = swift_allocObject();
  *(v27 + 256) = v37;
  v38 = *(v27 + 128);
  *(v37 + 16) = *v31;
  *(v37 + 32) = v38;
  *(v37 + 48) = *(v27 + 144);
  sub_221BCCD08();
  *&v39 = OUTLINED_FUNCTION_117_1();
  *(v27 + 168) = v39;
  *(v27 + 184) = 0;
  *(v27 + 152) = v39;
  OUTLINED_FUNCTION_21_6(v33, v40, v41, v42);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  sub_221A57020(v27 + 112, v27 + 192);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v47, v48);
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_242_0();
  *(v27 + 264) = v49;
  v50 = swift_task_alloc();
  *(v27 + 272) = v50;
  *(v50 + 16) = v35;
  *(v50 + 24) = v31;
  OUTLINED_FUNCTION_58_4(&unk_221BD7F70);
  v66 = v51;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v27 + 280) = v52;
  *v52 = v53;
  v52[1] = sub_221A4C714;
  v54 = *(v27 + 232);
  v69 = *(v27 + 248);
  v70 = *(v27 + 240);
  OUTLINED_FUNCTION_231_0();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_147_0();

  return v63(v55, v56, v57, v58, v59, v60, v61, v62, a9, v66, v67, a12, a13, a14, a15, a16, a17, a18, a19, v27, v28, v68, v37, a24, a25, a26, a27, v27 + 152);
}

void sub_221A4C714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 280);
  v17 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v18 = v17;

  if (v10)
  {
    OUTLINED_FUNCTION_152();
  }

  else
  {
    v21 = v13[33];
    v22 = v13[34];
    v24 = v13[31];
    v23 = v13[32];
    v25 = v13[30];
    swift_unknownObjectRelease();

    sub_221A01F0C(v25, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v24, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v13 + 19), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_152();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

unint64_t sub_221A4C8A0(uint64_t a1)
{
  *&v6 = 0;
  *(&v6 + 1) = 0xE000000000000000;
  sub_221BCDE68();

  v9 = 0xD000000000000022;
  v10 = 0x8000000221BEDF10;
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 32);
  sub_221A57020(a1, v5);
  v3 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v3);

  return v9;
}

uint64_t sub_221A4C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  v6 = *(*(_s17LNConnectionStoreC9AssertionOMa() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A4C9DC, a3, 0);
}

uint64_t sub_221A4C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v11 = v10[20];
  sub_221A4F364();
  v22 = v10[22];
  v23 = *(v10[20] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  v24 = *(v10[21] + 24);
  sub_221A5B07C();
  v25 = *(v23 + 16);
  v26 = sub_221A508FC(v22);
  v10[23] = v26;
  OUTLINED_FUNCTION_29_6();
  sub_221A58CC0();
  if (v26)
  {
    v27 = *(v10[21] + 32);
    v10[2] = v10;
    OUTLINED_FUNCTION_282((v10 + 18));
    v10[3] = sub_221A4CBCC;
    v28 = swift_continuation_init();
    v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9260, &qword_221BD7FC0);
    v10[10] = MEMORY[0x277D85DD0];
    v10[11] = 1107296256;
    v10[12] = sub_221A34BBC;
    v10[13] = &block_descriptor_183;
    v10[14] = v28;
    [v26 createAsyncIteratorForSequence:v24 options:v27 completionHandler:v10 + 10];
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x282200938](v29);
  }

  else
  {
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_42_5(v31, 4);
    swift_willThrow();
    sub_221BCC328();
    OUTLINED_FUNCTION_213_0();
    v12 = v10[22];
    OUTLINED_FUNCTION_195_0(v10[19]);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_123_0();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }
}

uint64_t sub_221A4CBCC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 160);
  if (v6)
  {
    v7 = sub_221A4CD70;
  }

  else
  {
    v7 = sub_221A4CCD8;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A4CCD8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[23];
  v2 = v0[18];
  v3 = [v2 reference];

  v4 = v0[22];
  v5 = v0[19];
  *v5 = v3;
  *(v5 + 8) = 0;

  OUTLINED_FUNCTION_4_3();

  return v6();
}

uint64_t sub_221A4CD70()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v4 = v0[22];
  OUTLINED_FUNCTION_195_0(v0[19]);
  OUTLINED_FUNCTION_4_3();

  return v5();
}

uint64_t sub_221A4CDF0()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 96) = v0;
  v4 = sub_221BCC6C8();
  *(v1 + 104) = v4;
  OUTLINED_FUNCTION_18_4(v4);
  *(v1 + 112) = v5;
  v7 = *(v6 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9190, &qword_221BD7998);
  *(v1 + 128) = v8;
  OUTLINED_FUNCTION_18_4(v8);
  *(v1 + 136) = v9;
  v11 = *(v10 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_210();
  v12 = sub_221BCD088();
  *(v1 + 152) = v12;
  OUTLINED_FUNCTION_18_4(v12);
  *(v1 + 160) = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_244_0(v16);
  *(v1 + 42) = v17;
  *(v1 + 43) = *(v3 + 25);
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221A4CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_104();
  v16 = *(v15 + 96);
  is_remote = swift_distributed_actor_is_remote();
  v18 = *(v15 + 43);
  v19 = *(v15 + 42);
  v21 = *(v15 + 184);
  v20 = *(v15 + 192);
  v22 = *(v15 + 176);
  if (is_remote)
  {
    v23 = *(v15 + 168);
    v24 = *(v15 + 144);
    v25 = *(*(v15 + 96) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
    sub_221BCCFB8();
    *(v15 + 48) = v22;
    *(v15 + 56) = v21;
    *(v15 + 64) = v20;
    *(v15 + 72) = v19;
    *(v15 + 73) = v18;

    v26 = v22;
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_60_4();
    sub_221BCC6E8();
    sub_221A555D0();
    sub_221A55624();
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_294();
    v27 = *(v15 + 168);
    if (&type metadata for AppIntentsProtocol.FetchNextAsyncIteratorResults.Request)
    {
      v29 = *(v15 + 152);
      v30 = *(v15 + 160);
      (*(*(v15 + 136) + 8))(*(v15 + 144), *(v15 + 128));
      v31 = OUTLINED_FUNCTION_71_2();
      v32(v31);
      v33 = *(v15 + 168);
      v34 = *(v15 + 144);
      v35 = *(v15 + 120);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_148_0();

      return v36();
    }

    else
    {
      sub_221A55678();
      sub_221A556CC();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v28 = *(v15 + 168);
      sub_221BCD048();
      v42 = *(v15 + 120);
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v43 = *(MEMORY[0x277CD8E30] + 4);
      v44 = swift_task_alloc();
      *(v15 + 200) = v44;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v45, v46);
      OUTLINED_FUNCTION_58_2();
      *v44 = v47;
      v44[1] = sub_221A4D238;
      v48 = *(v15 + 168);
      v49 = *(v15 + 120);
      v50 = *(v15 + 96);
      OUTLINED_FUNCTION_270(v51, MEMORY[0x277D84AC0]);
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_95_0();

      return MEMORY[0x282125BC0](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    *(v15 + 16) = v22;
    *(v15 + 24) = v21;
    *(v15 + 32) = v20;
    *(v15 + 40) = v19;
    *(v15 + 41) = v18;
    v39 = swift_task_alloc();
    *(v15 + 216) = v39;
    *v39 = v15;
    v39[1] = sub_221A4D3E8;
    v40 = *(v15 + 96);
    OUTLINED_FUNCTION_148_0();

    return sub_221A4D5CC();
  }
}

uint64_t sub_221A4D238()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4D330()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_210_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 168);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);

  OUTLINED_FUNCTION_116_2();
  OUTLINED_FUNCTION_125_1();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_221A4D3E8()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_151_0();
  v2 = v0[27];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];

  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_253();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A4D520()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_210_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = v0[26];
  v8 = v0[21];
  v9 = v0[18];
  v10 = v0[15];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A4D5CC()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 152) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v10 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_244_0(v10);
  *(v1 + 105) = v11;
  *(v1 + 106) = *(v3 + 25);
  v12 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_221A4D68C()
{
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6D60 != -1)
  {
    v1 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v1, &unk_27CFDD820);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v2 = *(v0 + 106);
  v3 = *(v0 + 105);
  v32 = v3;
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = sub_221BCCD88();
  __swift_project_value_buffer(v10, qword_27CFDEE88);
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v5;
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  *(v11 + 41) = v2;
  sub_221BCCD08();
  *&v12 = OUTLINED_FUNCTION_40_5();
  *(v0 + 112) = v12;
  OUTLINED_FUNCTION_21_6(v6, v13, v14, v15);
  v16 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v9, v17, v18, v16);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v19, v20);
  v21 = v7;

  v22 = sub_221BCC668();
  v23 = OUTLINED_FUNCTION_293(v22);
  *(v0 + 216) = v23;
  *(v23 + 16) = v8;
  *(v23 + 24) = v21;
  *(v23 + 32) = v5;
  *(v23 + 40) = v4;
  *(v23 + 48) = v32;
  *(v23 + 49) = v2;
  OUTLINED_FUNCTION_58_4(&unk_221BD7F08);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 224) = v24;
  *v24 = v25;
  v24[1] = sub_221A4D8F0;
  v26 = *(v0 + 184);
  v27 = *(v0 + 192);
  v28 = *(v0 + 152);
  v29 = *(v0 + 105);
  v33 = *(v0 + 168);
  v34 = *(v0 + 160);
  OUTLINED_FUNCTION_231_0();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_95_0();

  __asm { BR              X8 }
}

void sub_221A4D8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 224);
  v17 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v18 = v17;

  if (v10)
  {
    OUTLINED_FUNCTION_152();
  }

  else
  {
    v21 = v13[26];
    v22 = v13[27];
    v23 = v13[25];
    v25 = v13[20];
    v24 = v13[21];
    swift_unknownObjectRelease();

    sub_221A01F0C(v25, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v24, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v13 + 14), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_119_2();
    OUTLINED_FUNCTION_152();

    v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

unint64_t sub_221A4DA7C(void *a1)
{
  sub_221BCDE68();

  v2 = a1;
  v3 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v3);

  return 0xD000000000000029;
}

uint64_t sub_221A4DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a3;
  v4[32] = a4;
  v4[30] = a1;
  v6 = *(*(_s17LNConnectionStoreC9AssertionOMa() - 8) + 64) + 15;
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A4DBC0, a3, 0);
}

uint64_t sub_221A4DBC0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[31];
  sub_221A4F364();
  v0[34] = 0;
  v13 = v0[32];
  v12 = v0[33];
  v14 = *(v0[31] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  sub_221A5B088();
  v15 = *(v14 + 16);
  v16 = sub_221A50878(v12);
  v0[35] = v16;
  OUTLINED_FUNCTION_29_6();
  sub_221A58CC0();
  if (v16)
  {
    v17 = v0[32];
    v18 = *(*(v16 + 16) + qword_27CFBCA58);
    v0[36] = v18;
    v0[2] = v0;
    OUTLINED_FUNCTION_282((v0 + 29));
    v19 = OUTLINED_FUNCTION_265();
    v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9250, &qword_221BD7F58);
    v0[21] = MEMORY[0x277D85DD0];
    v0[22] = 1107296256;
    v0[23] = sub_221A42E8C;
    v0[24] = &block_descriptor_160;
    v0[25] = v19;
    [v18 nextAsyncIteratorResults:v17 completionHandler:v0 + 21];
    OUTLINED_FUNCTION_253();

    return MEMORY[0x282200938](v20);
  }

  else
  {
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_42_5(v22, 4);
    swift_willThrow();
    sub_221BCC328();
    OUTLINED_FUNCTION_213_0();
    v2 = v0[33];
    OUTLINED_FUNCTION_195_0(v0[30]);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_253();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_221A4DDAC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 248);
  if (v6)
  {
    v7 = sub_221A4DFDC;
  }

  else
  {
    v7 = sub_221A4DEB8;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A4DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v14 = v12[35];
  v13 = v12[36];
  v15 = v12[34];
  v16 = v12[31];
  v17 = v12[29];
  v18 = [v13 bundleIdentifier];
  v19 = sub_221BCD388();
  v21 = v20;

  v22 = *(v16 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);
  v12[10] = v14;
  v12[11] = v19;
  v12[12] = v21;
  v12[14] = 0;
  v12[15] = 0;
  v12[13] = v22;

  sub_221A5C708(v12 + 16);
  v23 = swift_task_alloc();
  *(v23 + 16) = v12 + 10;
  v24 = sub_2219EDA70(sub_221A56FA4, v23, v17);

  sub_221A56FC4((v12 + 10));
  v25 = v12[33];
  v26 = v12[30];
  *v26 = v24;
  *(v26 + 8) = 0;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_238();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_221A4DFDC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  swift_willThrow();

  v4 = v0[37];
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v5 = v0[33];
  OUTLINED_FUNCTION_195_0(v0[30]);
  OUTLINED_FUNCTION_4_3();

  return v6();
}

uint64_t sub_221A4E068()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 80) = v0;
  v4 = sub_221BCC6C8();
  *(v1 + 88) = v4;
  OUTLINED_FUNCTION_18_4(v4);
  *(v1 + 96) = v5;
  v7 = *(v6 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB91A8, &qword_221BD7A40);
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_18_4(v8);
  *(v1 + 120) = v9;
  v11 = *(v10 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_210();
  v12 = sub_221BCD088();
  *(v1 + 136) = v12;
  OUTLINED_FUNCTION_18_4(v12);
  *(v1 + 144) = v13;
  v15 = *(v14 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_210();
  *(v1 + 160) = *v3;
  *(v1 + 216) = *(v3 + 16);
  *(v1 + 217) = *(v3 + 17);
  *(v1 + 176) = *(v3 + 24);
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A4E1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = *(v12 + 80);
  is_remote = swift_distributed_actor_is_remote();
  v15 = *(v12 + 168);
  v16 = *(v12 + 176);
  v17 = *(v12 + 217);
  v18 = *(v12 + 216);
  v19 = *(v12 + 160);
  if (is_remote)
  {
    v20 = *(v12 + 152);
    v21 = *(v12 + 128);
    v22 = *(*(v12 + 80) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
    sub_221BCCFB8();
    *(v12 + 48) = v19;
    *(v12 + 56) = v15;
    *(v12 + 64) = v18;
    *(v12 + 65) = v17;
    *(v12 + 72) = v16;

    v23 = v16;
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_60_4();
    sub_221BCC6E8();
    sub_221A558B8();
    sub_221A5590C();
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_294();
    v24 = *(v12 + 152);
    if (&type metadata for AppIntentsProtocol.ReleaseAsyncSequence.Request)
    {
      v26 = OUTLINED_FUNCTION_281();
      v27(v26);
      v28 = OUTLINED_FUNCTION_71_2();
      v29(v28);
      OUTLINED_FUNCTION_121_1();

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_95_0();

      return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD068();
      v25 = *(v12 + 152);
      sub_221BCD048();
      v42 = *(v12 + 104);
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v43 = *(MEMORY[0x277CD8E40] + 4);
      v44 = swift_task_alloc();
      OUTLINED_FUNCTION_168_0(v44);
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v45, v46);
      OUTLINED_FUNCTION_58_2();
      *v44 = v47;
      v44[1] = sub_221A4E490;
      v48 = *(v12 + 152);
      v49 = *(v12 + 104);
      v50 = *(v12 + 80);
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_95_0();

      return MEMORY[0x282125BC8](v51, v52, v53, v54, v55, v56, v57, v58);
    }
  }

  else
  {
    *(v12 + 16) = v19;
    *(v12 + 24) = v15;
    *(v12 + 32) = v18;
    *(v12 + 33) = v17;
    *(v12 + 40) = v16;
    v39 = swift_task_alloc();
    *(v12 + 200) = v39;
    *v39 = v12;
    v39[1] = sub_221A4E628;
    v40 = *(v12 + 80);
    OUTLINED_FUNCTION_95_0();

    return sub_221A4E874();
  }
}

uint64_t sub_221A4E490()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4E588()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v0 = OUTLINED_FUNCTION_207_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_48_3();
  v3(v2);
  v4 = OUTLINED_FUNCTION_53_6();
  v5(v4);
  OUTLINED_FUNCTION_121_1();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_221A4E628()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[19];
    v13 = v3[16];
    v14 = v3[13];

    OUTLINED_FUNCTION_4_3();

    return v15();
  }
}

uint64_t sub_221A4E75C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_207_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = *(v0 + 192);
  OUTLINED_FUNCTION_228_0();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A4E800()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_228_0();

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A4E874()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 152) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_210();
  *(v1 + 176) = *v3;
  OUTLINED_FUNCTION_271();
  *(v1 + 192) = *(v3 + 24);
  v10 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A4E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_192_0();
  v72 = v30;
  OUTLINED_FUNCTION_57_2();
  if (qword_27CFB6D68 != -1)
  {
    v31 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v31, &unk_27CFDD880);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v32 = *(v28 + 106);
  v33 = *(v28 + 105);
  v73 = v33;
  v34 = *(v28 + 184);
  v35 = *(v28 + 192);
  v36 = *(v28 + 168);
  v37 = *(v28 + 176);
  v38 = *(v28 + 152);
  v39 = *(v28 + 160);
  v40 = sub_221BCCD88();
  v71 = __swift_project_value_buffer(v40, qword_27CFDEE88);
  v41 = swift_allocObject();
  *(v28 + 200) = v41;
  *(v41 + 16) = v37;
  *(v41 + 24) = v34;
  *(v41 + 32) = v33;
  *(v41 + 33) = v32;
  *(v41 + 40) = v35;
  sub_221BCCD08();
  *&v42 = OUTLINED_FUNCTION_40_5();
  *(v28 + 112) = v42;
  OUTLINED_FUNCTION_21_6(v36, v43, v44, v45);
  v46 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v39, v47, v48, v46);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v49, v50);

  v51 = v35;
  v52 = sub_221BCC668();
  v53 = OUTLINED_FUNCTION_293(v52);
  *(v28 + 216) = v53;
  *(v53 + 16) = v38;
  *(v53 + 24) = v37;
  *(v53 + 32) = v34;
  *(v53 + 40) = v73;
  *(v53 + 41) = v32;
  *(v53 + 48) = v51;
  OUTLINED_FUNCTION_58_4(dword_221BD7EA8);
  v70 = v54;
  v55 = swift_task_alloc();
  *(v28 + 224) = v55;
  *v55 = v28;
  v55[1] = sub_221A4EB90;
  v56 = *(v28 + 176);
  v57 = *(v28 + 184);
  v58 = *(v28 + 152);
  v59 = *(v28 + 105);
  v74 = *(v28 + 168);
  v75 = *(v28 + 160);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_147_0();

  return v60(v60, v61, v62, v63, v64, v65, v66, v67, a9, v70, v71, a12, a13, a14, a15, a16, a17, a18, a19, v28, v29, v72, sub_221A55FAC, v41, a25, a26, a27, a28);
}

uint64_t sub_221A4EB90()
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;
  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[25];
  v9 = v2[21];
  v10 = v2[20];
  *v4 = *v1;
  v3[29] = v0;

  swift_unknownObjectRelease();

  sub_221A01F0C(v10, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v9, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C((v3 + 14), qword_27CFB7A80, &unk_221BD2800);
  v11 = v2[19];
  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A4ED74()
{
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A4EDD4()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[20];
  v1 = v0[21];

  OUTLINED_FUNCTION_25();
  v4 = v0[29];

  return v3();
}

unint64_t sub_221A4EE38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_221BCDE68();

  v5 = a4;
  v6 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v6);

  return 0xD00000000000001DLL;
}

uint64_t sub_221A4EEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a3;
  v7[19] = a7;
  v9 = *(*(_s17LNConnectionStoreC9AssertionOMa() - 8) + 64) + 15;
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A4EF78, a3, 0);
}

uint64_t sub_221A4EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v11 = v10[18];
  sub_221A4F364();
  v23 = v10[19];
  v22 = v10[20];
  v24 = *(v10[18] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  sub_221A5B07C();
  v25 = *(v24 + 16);
  v26 = sub_221A50878(v22);
  v10[21] = v26;
  OUTLINED_FUNCTION_29_6();
  sub_221A58CC0();
  if (v26)
  {
    v27 = v10[19];
    v28 = v10[20];
    sub_221A5B07C();
    v29 = *(v26 + 16);
    sub_221A525DC(v28);
    OUTLINED_FUNCTION_29_6();
    sub_221A58CC0();
    v30 = *(*(v26 + 16) + qword_27CFBCA58);
    v10[22] = v30;
    v10[2] = v10;
    v31 = OUTLINED_FUNCTION_266();
    v10[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
    v10[10] = MEMORY[0x277D85DD0];
    v10[11] = 1107296256;
    v10[12] = sub_2219C5280;
    v10[13] = &block_descriptor_136;
    v10[14] = v31;
    [v30 releaseAsyncSequence:v27 completionHandler:v10 + 10];
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x282200938](v32);
  }

  else
  {
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_42_5(v34, 4);
    swift_willThrow();
    v12 = v10[20];

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_123_0();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }
}

uint64_t sub_221A4F170()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 144);
  if (v6)
  {
    v7 = sub_221A4F2E8;
  }

  else
  {
    v7 = sub_221A4F27C;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A4F27C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A4F2E8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[23];
  v5 = v0[20];

  OUTLINED_FUNCTION_25();

  return v6();
}

void sub_221A4F364()
{
  OUTLINED_FUNCTION_55_4();
  v2 = sub_221BCCEE8();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v11, v12);
  sub_221BCC648();
  if (!v66)
  {
    sub_221A01F0C(&v65, &qword_27CFB9218, &qword_221BD7E88);
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    v43 = swift_allocError();
    OUTLINED_FUNCTION_95_1(v43, v44);
    swift_willThrow();
LABEL_38:
    OUTLINED_FUNCTION_53_5();
    return;
  }

  sub_22198B358(&v65, v68);
  v13 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_deviceState);
  v14 = sub_221BAD680();
  if (v15)
  {
    goto LABEL_3;
  }

  if (v14 >= 4)
  {
    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_1_32();
      swift_once();
    }

    v45 = sub_221BCCD88();
    __swift_project_value_buffer(v45, qword_27CFDEE88);
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA98();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_35;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "Rejecting request: Device is passcode locked with 3 or more failed attempts";
    goto LABEL_34;
  }

  v59 = *(v13 + 16);
  v60 = (v59 + *(*v59 + 88));
  os_unfair_lock_lock(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9220, &qword_221BD7E90);
  v62 = sub_221BC0E28(v60 + *(v61 + 28), v59);
  if (!v1)
  {
    v63 = v62;
    os_unfair_lock_unlock(v60);
    if ((v63 & 1) == 0)
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_0(v68, v68[3]);
      OUTLINED_FUNCTION_171_0();
      sub_221BCCF08();
      v16 = sub_221BBF28C();
      (*(v5 + 8))(v10, v2);
      if (v16)
      {
        if (qword_27CFB73C0 != -1)
        {
          OUTLINED_FUNCTION_1_32();
          swift_once();
        }

        v17 = sub_221BCCD88();
        __swift_project_value_buffer(v17, qword_27CFDEE88);

        v18 = sub_221BCCD68();
        v19 = sub_221BCDA58();

        if (os_log_type_enabled(v18, v19))
        {
          OUTLINED_FUNCTION_288();
          v20 = swift_slowAlloc();
          OUTLINED_FUNCTION_285();
          v21 = swift_slowAlloc();
          *&v65 = v21;
          *v20 = 136315138;
          v22 = sub_221BAD7BC();
          v24 = sub_2219A6360(v22, v23, &v65);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_221989000, v18, v19, "Validated remote device is logged in to the same account as %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }

        if (sub_221BAD848())
        {
          goto LABEL_37;
        }

        if (qword_27CFB7358 != -1)
        {
          swift_once();
        }

        if (byte_27CFDED71)
        {
          goto LABEL_37;
        }

        v25 = byte_27CFDED70;
        v27 = qword_27CFDED60;
        v26 = unk_27CFDED68;
        v28 = byte_27CFDED58;
        v30 = qword_27CFDED48;
        v29 = unk_27CFDED50;
        v66 = &type metadata for FeatureFlags.Flag;
        v67 = sub_2219EB100();
        v31 = swift_allocObject();
        *&v65 = v31;
        *(v31 + 16) = v30;
        *(v31 + 24) = v29;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        *(v31 + 48) = v26;
        *(v31 + 56) = v25;
        *(v31 + 57) = 0;
        v32 = sub_221BCC6F8();
        __swift_destroy_boxed_opaque_existential_0(&v65);
        if (v32)
        {
          goto LABEL_37;
        }

        *&v65 = 0;
        *(&v65 + 1) = 0xE000000000000000;
        sub_221BCDE68();
        v33 = sub_221BAD7BC();
        v35 = v34;

        *&v65 = v33;
        *(&v65 + 1) = v35;
        MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BEDE50);
        v36 = v65;

        v37 = sub_221BCCD68();
        v38 = sub_221BCDA78();

        if (os_log_type_enabled(v37, v38))
        {
          OUTLINED_FUNCTION_288();
          v39 = swift_slowAlloc();
          OUTLINED_FUNCTION_285();
          v40 = swift_slowAlloc();
          *&v65 = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_2219A6360(v36, *(&v36 + 1), &v65);
          _os_log_impl(&dword_221989000, v37, v38, "%s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          v41 = OUTLINED_FUNCTION_74_3();
          MEMORY[0x223DA4C00](v41);
        }

        sub_221A0E704();
        OUTLINED_FUNCTION_15_0();
        swift_allocError();
        *v42 = v36;
      }

      else
      {
        if (qword_27CFB73C0 != -1)
        {
          OUTLINED_FUNCTION_1_32();
          swift_once();
        }

        v50 = sub_221BCCD88();
        __swift_project_value_buffer(v50, qword_27CFDEE88);

        v51 = sub_221BCCD68();
        v52 = sub_221BCDA78();

        if (os_log_type_enabled(v51, v52))
        {
          OUTLINED_FUNCTION_288();
          v53 = swift_slowAlloc();
          OUTLINED_FUNCTION_285();
          v54 = swift_slowAlloc();
          *&v65 = v54;
          *v53 = 136315138;
          v55 = sub_221BAD7BC();
          v57 = sub_2219A6360(v55, v56, &v65);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_221989000, v51, v52, "Remote device is not logged in to the same account as %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }

        sub_221A0E704();
        OUTLINED_FUNCTION_15_0();
        swift_allocError();
        *v42 = xmmword_221BD6DF0;
      }

      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      v58 = 6;
LABEL_36:
      *(v42 + 32) = v58;
      swift_willThrow();
LABEL_37:
      __swift_destroy_boxed_opaque_existential_0(v68);
      goto LABEL_38;
    }

    if (qword_27CFB73C0 != -1)
    {
      OUTLINED_FUNCTION_1_32();
      swift_once();
    }

    v64 = sub_221BCCD88();
    __swift_project_value_buffer(v64, qword_27CFDEE88);
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA98();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_35:

      sub_221A0E704();
      OUTLINED_FUNCTION_15_0();
      swift_allocError();
      *v42 = 0u;
      *(v42 + 16) = 0u;
      v58 = 9;
      goto LABEL_36;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "Rejecting request: Biometric authentication required";
LABEL_34:
    _os_log_impl(&dword_221989000, v46, v47, v49, v48, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    goto LABEL_35;
  }

  os_unfair_lock_unlock(v60);
  __break(1u);
}

uint64_t static RemoteAppIntentsActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RemoteAppIntentsActor();
  sub_221BCCFE8();
  OUTLINED_FUNCTION_67_3();
  sub_221A58E78(v5, v6);
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v7, v8);
  v9 = sub_221BCC608();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id;
    v12 = sub_221BCD0B8();
    OUTLINED_FUNCTION_2_1(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem) = a2;
  }

  return v10;
}

uint64_t RemoteAppIntentsActor.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id;
  v3 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem;
  sub_221BCCFE8();
  OUTLINED_FUNCTION_67_3();
  sub_221A58E78(v4, v5);
  sub_221BCC628();
  v6 = sub_221BCD0B8();
  OUTLINED_FUNCTION_11_4(v6);
  (*(v7 + 8))(v0 + v2);
  v8 = *(v0 + v3);

  v9 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_deviceState);

  v10 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);

  v11 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);

  v12 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);

  v13 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_signposter;
  v14 = sub_221BCCD08();
  OUTLINED_FUNCTION_11_4(v14);
  (*(v15 + 8))(v1 + v13);
  sub_221A55960(v1 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t RemoteAppIntentsActor.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id;
    v2 = sub_221BCD0B8();
    OUTLINED_FUNCTION_11_4(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    RemoteAppIntentsActor.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221A4FE18()
{
  sub_221BCE308();
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v0, v1);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t RemoteAppIntentsActor.unownedExecutor.getter()
{
  if ((sub_221BCC6B8() & 1) == 0)
  {
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_0_35();
    sub_221A58E78(v1, v2);
    OUTLINED_FUNCTION_70();
    return sub_221BCC5E8();
  }

  return v0;
}

uint64_t sub_221A4FF0C@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteAppIntentsActor.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_221A4FF54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoteAppIntentsActor();
  sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  sub_221A58E78(&qword_27CFB9230, MEMORY[0x277CD9070]);
  result = sub_221BCC6A8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_221A50024()
{
  v1 = *v0;
  type metadata accessor for RemoteAppIntentsActor();
  sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  sub_221A58E78(&qword_27CFB9228, MEMORY[0x277CD9070]);
  return sub_221BCC698();
}

uint64_t sub_221A50110()
{
  v1 = *v0;
  type metadata accessor for RemoteAppIntentsActor();
  sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  return sub_221BCC688();
}

uint64_t sub_221A5018C()
{
  v2 = *v0;
  sub_221BCE308();
  type metadata accessor for RemoteAppIntentsActor();
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A50220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F746361 && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_221BCE1B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 1;
  }

  else
  {
    v7 = sub_221BCE1B8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_221A502F4(char a1)
{
  if (a1)
  {
    return 0x6C6F636F746F7270;
  }

  else
  {
    return 0x726556726F746361;
  }
}

uint64_t sub_221A50364()
{
  v1 = *v0;
  sub_221BCE308();
  sub_2219BC4D0(v3, v1);
  return sub_221BCE358();
}

uint64_t sub_221A503B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_221A50220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_221A503D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2219AE31C();
  *a1 = result;
  return result;
}

uint64_t sub_221A50400(uint64_t a1)
{
  v2 = sub_221A55988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221A5043C(uint64_t a1)
{
  v2 = sub_221A55988();

  return MEMORY[0x2821FE720](a1, v2);
}

void RemoteAppIntentsDispatcherDescriptor.encode(to:)()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB91C0, &qword_221BD7AC0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_225_0();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_221A55988();
  sub_221BCE3D8();
  sub_221BCE148();
  if (!v1)
  {
    sub_221BCE148();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_53_5();
}

void RemoteAppIntentsDispatcherDescriptor.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_55_4();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB91D0, &qword_221BD7AC8);
  OUTLINED_FUNCTION_0_2(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = v27[4];
  __swift_project_boxed_opaque_existential_0(v27, v27[3]);
  sub_221A55988();
  sub_221BCE3B8();
  if (!v23)
  {
    a13 = 0;
    v39 = sub_221BCE0F8();
    a12 = 1;
    v40 = sub_221BCE0F8();
    (*(v32 + 8))(v37, v30);
    *v29 = v39;
    v29[1] = v40;
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_53_5();
}

uint64_t RemoteAppIntentsDispatcherDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_221BCDE68();

  strcpy(v6, "<actorVersion=");
  OUTLINED_FUNCTION_4();
  v3 = sub_221BCE168();
  MEMORY[0x223DA31F0](v3);

  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BEDD50);
  OUTLINED_FUNCTION_4();
  v4 = sub_221BCE168();
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_221A50878(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = sub_221A52A00((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9240, &qword_221BD7EF0);
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

void *sub_221A508FC(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = sub_221A52A50((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  return v3;
}

uint64_t sub_221A50954(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void))
{
  sub_221BCCFE8();
  sub_221BCCFA8();
  a4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9270, &qword_221BD7FD0);
  swift_task_localValuePush();
  a2(a1);
  swift_task_localValuePop();
}

uint64_t sub_221A50A3C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_221BCCFE8();
  sub_221BCCFA8();
  sub_221B62F00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9270, &qword_221BD7FD0);
  swift_task_localValuePush();
  a2(a1);
  swift_task_localValuePop();
}

uint64_t sub_221A50B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221A50B40, 0, 0);
}

uint64_t sub_221A50B40()
{
  OUTLINED_FUNCTION_67();
  v2 = *(v1 + 32);
  sub_221BCCFE8();
  v3 = *(v1 + 40);
  v4 = OUTLINED_FUNCTION_249_0();
  v5 = OUTLINED_FUNCTION_230_0(v4);
  v6 = sub_221B62F00(v5);
  v7 = OUTLINED_FUNCTION_189_0(v6);
  *(v1 + 72) = v7;
  OUTLINED_FUNCTION_81_3(v7, v8, v9, v10, v11, v12, v13, v14, v15);
  v16 = *(MEMORY[0x277D85A70] + 4);
  v17 = swift_task_alloc();
  *(v1 + 80) = v17;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  *v17 = v1;
  v17[1] = sub_221A50C68;
  v18 = *(v1 + 24);

  return MEMORY[0x282200908](v18, v0, &unk_221BD8170, v7, 0, 0, 0xD000000000000028, 0x8000000221BECC20);
}

uint64_t sub_221A50C68()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_221A50DDC()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_221A50E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_221A50E24, 0, 0);
}

uint64_t sub_221A50E24()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 72);
  sub_221BCCFE8();
  v2 = *(v0 + 80);
  v3 = OUTLINED_FUNCTION_249_0();
  *(v0 + 96) = v3;
  v4 = sub_221B62F00(v3);
  *(v0 + 104) = v4;
  *(v0 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  OUTLINED_FUNCTION_81_3(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  v14 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v15;
  *v15 = v16;
  v15[1] = sub_221A50F2C;
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_221A50F2C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = v5[15];
  v7 = v5[14];
  v8 = v5[13];
  v9 = v5[12];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_125_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    v16 = *(v3 + 64);
    v17 = *(v3 + 48);
    v18 = *(v3 + 32);
    *v16 = *(v3 + 16);
    *(v16 + 16) = v18;
    *(v16 + 32) = v17;
    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_125_1();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_221A510B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_221A510DC, 0, 0);
}

uint64_t sub_221A510DC()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 40);
  sub_221BCCFE8();
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_249_0();
  v4 = OUTLINED_FUNCTION_229_0(v3);
  v5 = sub_221B62F00(v4);
  v6 = OUTLINED_FUNCTION_191_0(v5);
  *(v0 + 80) = v6;
  OUTLINED_FUNCTION_81_3(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 88) = v16;
  *v16 = v17;
  v16[1] = sub_221A511CC;
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_221A511CC()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_125_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_125_1();

    return v19(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_221A51344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221A51368, 0, 0);
}

uint64_t sub_221A51368()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 32);
  sub_221BCCFE8();
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_249_0();
  v4 = OUTLINED_FUNCTION_230_0(v3);
  v5 = sub_221B62F00(v4);
  v6 = OUTLINED_FUNCTION_189_0(v5);
  *(v0 + 72) = v6;
  OUTLINED_FUNCTION_81_3(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v16;
  *v16 = v17;
  v16[1] = sub_221A51458;
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_221A51458()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v11 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_221A515CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_221A515F0, 0, 0);
}

uint64_t sub_221A515F0()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 40);
  sub_221BCCFE8();
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_249_0();
  v4 = OUTLINED_FUNCTION_229_0(v3);
  v5 = sub_221B62F00(v4);
  v6 = OUTLINED_FUNCTION_191_0(v5);
  *(v0 + 80) = v6;
  OUTLINED_FUNCTION_81_3(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 88) = v16;
  *v16 = v17;
  v16[1] = sub_221A516E0;
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_221A516E0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_125_1();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_115_0();
    OUTLINED_FUNCTION_125_1();

    return v19(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_221A51858()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 96);
  return v2();
}

uint64_t sub_221A5187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_221A518A0, 0, 0);
}

uint64_t sub_221A518A0()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 40);
  sub_221BCCFE8();
  v2 = *(v0 + 48);
  v3 = OUTLINED_FUNCTION_249_0();
  v4 = OUTLINED_FUNCTION_229_0(v3);
  v5 = sub_221B62F00(v4);
  v6 = OUTLINED_FUNCTION_191_0(v5);
  *(v0 + 80) = v6;
  OUTLINED_FUNCTION_81_3(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 88) = v16;
  *v16 = v17;
  v16[1] = sub_221A511CC;
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_221A51990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221A519B4, 0, 0);
}

uint64_t sub_221A519B4()
{
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 32);
  sub_221BCCFE8();
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_249_0();
  v4 = OUTLINED_FUNCTION_230_0(v3);
  v5 = sub_221B62F00(v4);
  v6 = OUTLINED_FUNCTION_189_0(v5);
  *(v0 + 72) = v6;
  OUTLINED_FUNCTION_81_3(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  v15 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v16;
  *v16 = v17;
  v16[1] = sub_221A51458;
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_197_0();
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_239_0();

  return MEMORY[0x282200908](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_221A51AA8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2219CA70C;

  return v10(a1, a4);
}

uint64_t sub_221A51BB0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 64) = v7;
  *v7 = v4;
  v7[1] = sub_221A51CB4;

  return v9(v4 + 16, a4);
}

uint64_t sub_221A51CB4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A51DAC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  OUTLINED_FUNCTION_4_3();
  return v4();
}

uint64_t sub_221A51DE0()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_221A51E04(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_221A51F04;

  return v8(v3 + 16, a3);
}

uint64_t sub_221A51F04()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A51FFC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2219EC5F0;

  return v10(a1, a4);
}

uint64_t sub_221A52104(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  *v6 = v3;
  v6[1] = sub_221A52204;

  return v8(v3 + 16, a3);
}

uint64_t sub_221A52204()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A5231C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 40);
  return v2();
}

void sub_221A523DC(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  sub_2219EC600(a1);
  a2(&v28, a1);
  if (v3)
  {
    v38[0] = v3;
    memset(&v38[1], 0, 24);
    v39 = 0;
    v40 = 1;
    v7 = v3;
    sub_2219D7F9C(v38, v8, v9, v10, v11, v12, v13, v14, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38[0]);

    swift_willThrow();
  }

  else
  {
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v19 = v32;
    LOWORD(v37) = v32;
    BYTE2(v37) = 0;
    sub_221A579BC(v28, v29, v30, v31, v32);
    sub_2219D8D04(&v33, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, SHIDWORD(v30), v31, v32, v33, v34, v35, v36, v37, v38[0]);
    sub_221A0212C(v15, v16, v17, v18, v19);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
  }
}

void sub_221A525DC(uint64_t a1)
{
  v2 = v1;
  v4 = _s17LNConnectionStoreC9AssertionOMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  os_unfair_lock_lock(v1 + 16);
  v7 = sub_221A52914(&v1[18]);
  v9 = v8;
  os_unfair_lock_unlock(v2 + 16);
  if (v7)
  {
    v10 = *&v2[8]._os_unfair_lock_opaque;
    if (v10)
    {
      v11 = *&v2[10]._os_unfair_lock_opaque;
      v10(a1, v2);
    }

    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_27CFDEDF8);
    sub_221A56250();

    v13 = sub_221BCCD68();
    v14 = sub_221BCDA68();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28[0] = v16;
      *v15 = 136315650;
      v17 = static Instrumentation.currentActivityId.getter();
      v27 = v9;
      v19 = sub_2219A6360(v17, v18, v28);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_221A56250();
      v20 = sub_221BCD3D8();
      v22 = v21;
      sub_221A58CC0();
      v23 = sub_2219A6360(v20, v22, v28);

      *(v15 + 14) = v23;
      *(v15 + 22) = 2080;
      v24 = sub_221A5DEA0();
      v26 = sub_2219A6360(v24, v25, v28);

      *(v15 + 24) = v26;
      _os_log_impl(&dword_221989000, v13, v14, "%sReleased assertion: %s on %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v16, -1, -1);
      MEMORY[0x223DA4C00](v15, -1, -1);

      if (v27)
      {
        return;
      }
    }

    else
    {

      sub_221A58CC0();
      if (v9)
      {
        return;
      }
    }

    sub_221A5C0CC();
  }
}

BOOL sub_221A52914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9238, &qword_221BD7EE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  sub_221A29A00();
  v6 = _s17LNConnectionStoreC9AssertionOMa();
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  v8 = *(*(a1 + 8) + 16);
  sub_221A01F0C(v5, &qword_27CFB9238, &qword_221BD7EE8);
  return v7;
}

uint64_t sub_221A52A00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = sub_221B9EB98(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
}

void *sub_221A52A50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = sub_221B9EB98(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(*(v2 + 56) + 8 * v3) + qword_27CFBCA58);
  v6 = v5;
  return v5;
}

uint64_t type metadata accessor for RemoteAppIntentsActor()
{
  result = qword_27CFB91F0;
  if (!qword_27CFB91F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A52B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A352B0();
}

unint64_t sub_221A52BAC()
{
  result = qword_27CFB90D8;
  if (!qword_27CFB90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB90D8);
  }

  return result;
}

unint64_t sub_221A52C00()
{
  result = qword_27CFB90E0;
  if (!qword_27CFB90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB90E0);
  }

  return result;
}

uint64_t sub_221A52C54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3583C();
}

uint64_t sub_221A52E04(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3A6D8();
}

uint64_t sub_221A52FB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3B3F8();
}

uint64_t sub_221A53164(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3BEDC();
}

uint64_t sub_221A53314(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3CCF0();
}

uint64_t sub_221A534C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3D7D4();
}

uint64_t sub_221A53674(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3E2B4();
}

uint64_t sub_221A53824(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A3EDA0();
}

uint64_t sub_221A539D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A40D48();
}

uint64_t sub_221A53B84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_221BCD038();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_221A53E38;

  return sub_221A43008();
}

uint64_t sub_221A53E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_21_0();
  v14 = v13[8];
  v15 = v13[7];
  v16 = v13[6];
  v17 = v13[4];
  v18 = v13[3];
  v19 = v13[5] - 8;
  v20 = v13[2] - 8;
  v21 = *v12;
  OUTLINED_FUNCTION_0_5();
  *v22 = v21;

  v23 = *(v18 + 8);
  v24 = OUTLINED_FUNCTION_27();
  v25(v24);
  v26 = *(v16 + 8);
  v27 = OUTLINED_FUNCTION_4();
  v28(v27);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

unint64_t sub_221A5405C()
{
  result = qword_27CFBB390;
  if (!qword_27CFBB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB390);
  }

  return result;
}

unint64_t sub_221A540B0()
{
  result = qword_27CFB9108;
  if (!qword_27CFB9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9108);
  }

  return result;
}

uint64_t sub_221A54104(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A44A08();
}

uint64_t sub_221A5429C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_221BCD038();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v2[7] = v11;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v12 = *v11;
  v13 = swift_task_alloc();
  v2[8] = v13;
  *v13 = v2;
  v13[1] = sub_221A58F48;

  return sub_221A456B0();
}

uint64_t sub_221A54540(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A546F0;

  return sub_221A46D8C();
}

uint64_t sub_221A546F0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[3];
  v5 = v1[2] - 8;
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_4();
  v10(v9);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A54848(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_221A58F44;

  return sub_221A47B0C();
}

uint64_t sub_221A549E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A49190();
}

uint64_t sub_221A54B94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_221A54D30;

  return sub_221A4ACCC();
}

uint64_t sub_221A54D30()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v21 = *v0;
  *v6 = v7;
  v6[1] = v8;

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_4();
  v11(v10);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_221A54EA8()
{
  result = qword_27CFB9160;
  if (!qword_27CFB9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9160);
  }

  return result;
}

uint64_t sub_221A54EFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8140, &qword_221BD2A80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221A54F74()
{
  result = qword_27CFB9170;
  if (!qword_27CFB9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9170);
  }

  return result;
}

uint64_t sub_221A54FC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_221A55164;

  return sub_221A4BC0C();
}

uint64_t sub_221A55164()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = v1[3];
  v6 = v1[2];
  v21 = *v0;
  *v6 = v7;
  *(v6 + 8) = v8 & 1;

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_4();
  v11(v10);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_221A552E4()
{
  result = qword_27CFBB5D0;
  if (!qword_27CFBB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5D0);
  }

  return result;
}

unint64_t sub_221A55338()
{
  result = qword_27CFB9180;
  if (!qword_27CFB9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9180);
  }

  return result;
}

unint64_t sub_221A5538C()
{
  result = qword_27CFBB5A0;
  if (!qword_27CFBB5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5A0);
  }

  return result;
}

unint64_t sub_221A553E0()
{
  result = qword_27CFB9188;
  if (!qword_27CFB9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9188);
  }

  return result;
}

uint64_t sub_221A55434(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_221A58F44;

  return sub_221A4CDF0();
}

unint64_t sub_221A555D0()
{
  result = qword_27CFBB480;
  if (!qword_27CFBB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB480);
  }

  return result;
}

unint64_t sub_221A55624()
{
  result = qword_27CFB9198;
  if (!qword_27CFB9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9198);
  }

  return result;
}

unint64_t sub_221A55678()
{
  result = qword_27CFBB450;
  if (!qword_27CFBB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB450);
  }

  return result;
}

unint64_t sub_221A556CC()
{
  result = qword_27CFB91A0;
  if (!qword_27CFB91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB91A0);
  }

  return result;
}

uint64_t sub_221A55720(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCD038();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_221A58F20;

  return sub_221A4E068();
}

unint64_t sub_221A558B8()
{
  result = qword_27CFBB110;
  if (!qword_27CFBB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB110);
  }

  return result;
}

unint64_t sub_221A5590C()
{
  result = qword_27CFB91B0;
  if (!qword_27CFB91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB91B0);
  }

  return result;
}

unint64_t sub_221A55988()
{
  result = qword_27CFB91C8;
  if (!qword_27CFB91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB91C8);
  }

  return result;
}

uint64_t sub_221A55B94()
{
  result = sub_221BCD0B8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_221BCCD08();
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

_BYTE *storeEnumTagSinglePayload for RemoteAppIntentsDispatcherDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_221A55DD0()
{
  result = qword_27CFB9200;
  if (!qword_27CFB9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9200);
  }

  return result;
}

unint64_t sub_221A55E28()
{
  result = qword_27CFB9208;
  if (!qword_27CFB9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9208);
  }

  return result;
}

unint64_t sub_221A55E80()
{
  result = qword_27CFB9210;
  if (!qword_27CFB9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9210);
  }

  return result;
}

void sub_221A55ED4(void *a1)
{
  if (*(v1 + 73))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_221A39B04(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v2 | *(v1 + 72), *(v1 + 74));
}

void sub_221A55F28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_221BCD358();
  [a3 setPreferredBundleIdentifier_];
}

unint64_t sub_221A55FAC()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221A4EE38(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32), *(v0 + 40));
}

uint64_t sub_221A55FD0()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v8[1] = sub_2219EC5F0;
  v10 = OUTLINED_FUNCTION_20_7();

  return sub_221A4EEE4(v10, v11, v12, v2, v3, v13, v6);
}

uint64_t sub_221A560A4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A51990(v3, v4, v5, v6);
}

uint64_t sub_221A56130()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_2219E882C(v3, v4, v5, v6);
}

uint64_t sub_221A561C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_221A51FFC(v3, v4, v5, v6);
}

uint64_t sub_221A56250()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v0;
}

unint64_t sub_221A562A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 41);
  return sub_221A4DA7C(*(v0 + 16));
}

uint64_t sub_221A562CC()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v0 + 49);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_15(v6);
  *v7 = v8;
  v7[1] = sub_2219EC5F0;
  v9 = OUTLINED_FUNCTION_20_7();

  return sub_221A4DB28(v9, v10, v11, v2);
}

uint64_t sub_221A5639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_221A56454;

  return sub_221A50E00(v4 + 16, a2, a3, a4);
}

uint64_t sub_221A56454()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v9 + 32) = *(v3 + 48);
    *v9 = v10;
    *(v9 + 16) = v11;
  }

  OUTLINED_FUNCTION_166();

  return v12();
}

uint64_t sub_221A5654C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F4C;

  return sub_2219E8DAC(v4 + 16, a2, a3, a4);
}

uint64_t sub_221A56604(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F4C;

  return sub_221A51BB0(v4 + 16, a2, a3, a4);
}

uint64_t sub_221A566BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_221A510B8(a2, a3, a4);
}

uint64_t sub_221A5676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_2219E908C(a2, a3, a4);
}

uint64_t sub_221A5681C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_221A51E04(a2, a3, a4);
}

uint64_t sub_221A568CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A5697C;

  return sub_221A515CC(a2, a3, a4);
}

uint64_t sub_221A5697C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_17_3();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    *(v13 + 8) = v3 & 1;
  }

  v14 = *(v11 + 8);
  OUTLINED_FUNCTION_253();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221A56A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_2219E9710(a2, a3, a4);
}

uint64_t sub_221A56B30(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_221A52104(a2, a3, a4);
}

uint64_t sub_221A56BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_221A5187C(a2, a3, a4);
}

uint64_t sub_221A56C90()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_59_4(v1);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A56D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_2219E99D4(a2, a3, a4);
}

uint64_t sub_221A56DD4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A56E64(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221A58F3C;

  return sub_221A51E04(a2, a3, a4);
}

uint64_t sub_221A56F14()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A5707C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A4C944(v3, v4, v5, v6);
}

uint64_t sub_221A57108()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_59_4(v1);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A5719C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A5722C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_185Tm()
{
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  OUTLINED_FUNCTION_25_5(File);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_209_0();
  v7 = sub_221BCC418();
  OUTLINED_FUNCTION_11_4(v7);
  (*(v8 + 8))(v1);
  v9 = *(v1 + *(v0 + 36) + 8);

  v10 = OUTLINED_FUNCTION_29_5();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_221A573B0()
{
  v0 = OUTLINED_FUNCTION_40_3();
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(v0);
  OUTLINED_FUNCTION_8_1(File);
  v3 = *(v2 + 80);

  return sub_221A4BA74();
}

uint64_t sub_221A57458()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A49E14(v3, v4, v5, v6);
}

uint64_t sub_221A574E4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A51344(v3, v4, v5, v6);
}

uint64_t sub_221A57570()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_2219E942C(v3, v4, v5, v6);
}

uint64_t sub_221A57600()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_221A51FFC(v3, v4, v5, v6);
}

uint64_t objectdestroy_208Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  OUTLINED_FUNCTION_206_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_221A57758()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A48790(v3, v4, v5, v6);
}

uint64_t sub_221A577E4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_59_4(v1);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A57878()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A57908()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

id sub_221A579BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {

    return a1;
  }

  else
  {

    return sub_221998178(a3, a4);
  }
}

uint64_t sub_221A57ABC()
{
  v2 = OUTLINED_FUNCTION_40_3();
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(v2);
  OUTLINED_FUNCTION_18_4(restarted);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_221A46668(v0, v1 + v8, v9);
}

unint64_t sub_221A57B4C()
{
  result = qword_27CFB9298;
  if (!qword_27CFB9298)
  {
    type metadata accessor for RemoteAppIntentsActor();
    sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9298);
  }

  return result;
}

uint64_t sub_221A57BF4()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_40_3();
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(v1);
  OUTLINED_FUNCTION_8_1(restarted);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_15(v8);
  *v9 = v10;
  v9[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_125_1();

  return sub_221A46C64(v11, v12, v13, v14, v15);
}

uint64_t objectdestroy_244Tm(uint64_t (*a1)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_25_5(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_209_0();
  v8 = sub_221BCC558();
  OUTLINED_FUNCTION_11_4(v8);
  (*(v9 + 8))(v2);
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_259();
  v10 = *(v1 + 24);

  v11 = OUTLINED_FUNCTION_29_5();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_221A57E04()
{
  OUTLINED_FUNCTION_40_3();
  v2 = sub_221BCC558();
  OUTLINED_FUNCTION_18_4(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_221A442AC(v0, v1 + 16, v1 + v7, v8);
}

uint64_t sub_221A57EEC()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_40_3();
  v1 = sub_221BCC558();
  OUTLINED_FUNCTION_18_4(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2_15(v8);
  *v9 = v10;
  v9[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_152();

  return sub_221A448E0(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_221A5809C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A41A78(v3, v4, v5, v6);
}

uint64_t sub_221A58128()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_59_4(v1);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A581BC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A5824C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_7_11(v1);
  OUTLINED_FUNCTION_253();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_221A582DC()
{
  result = qword_27CFB92B0;
  if (!qword_27CFB92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB92B0);
  }

  return result;
}

uint64_t objectdestroy_269Tm()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_223_0();
  if (v2)
  {
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = (v0 + 96);
  v6 = 128;
  v7 = 120;
  v8 = 112;
  v9 = 104;
  switch(*(v0 + 225))
  {
    case 0:
    case 6:
    case 7:
      goto LABEL_13;
    case 1:
    case 5:
      v10 = *(v0 + 96);

      goto LABEL_8;
    case 2:

LABEL_8:
      v5 = (v0 + 104);
      v6 = 136;
      v7 = 128;
      v8 = 120;
      v9 = 112;
      goto LABEL_13;
    case 3:
      v11 = *(v0 + 104);

      v5 = (v0 + 112);
      v6 = 144;
      v7 = 136;
      v8 = 128;
      v9 = 120;
      goto LABEL_13;
    case 4:
      if (*(v0 + 160))
      {
        v12 = *v5;
      }

      else
      {
        v13 = *(v0 + 104);

        __swift_destroy_boxed_opaque_existential_0((v0 + 120));
      }

      v14 = *(v0 + 184);

      v5 = (v0 + 192);
      v6 = 224;
      v7 = 216;
      v8 = 208;
      v9 = 200;
LABEL_13:
      sub_2219EB374(*v5, *(v0 + v9), *(v0 + v8), *(v0 + v7), *(v0 + v6));
      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, 226, 7);
}

uint64_t sub_221A584B0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3EA58(v3, v4, v5, v6);
}

uint64_t sub_221A5853C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A50B1C(v3, v4, v5, v6);
}

uint64_t sub_221A585C8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_2219E8AE4(v3, v4, v5, v6);
}

uint64_t sub_221A58658()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_13_9();

  return sub_221A51AA8(v3, v4, v5, v6);
}

uint64_t sub_221A58738()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3DF6C(v3, v4, v5, v6);
}

void sub_221A587E8(id a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }
}

uint64_t sub_221A5882C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3D48C(v3, v4, v5, v6);
}

uint64_t sub_221A58908()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3C810(v3, v4, v5, v6);
}

uint64_t sub_221A589E4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3BB94(v3, v4, v5, v6);
}

uint64_t objectdestroy_321Tm(uint64_t (*a1)(void), void (*a2)(void, void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*v4 + 64);
  v8 = sub_221BCC558();
  OUTLINED_FUNCTION_11_4(v8);
  (*(v9 + 8))(v2 + v6);
  a2(*(v2 + v6 + v4[7]), *(v2 + v6 + v4[7] + 8));

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_221A58BBC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(v5);
}

uint64_t sub_221A58C34()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3AF78(v3, v4, v5, v6);
}

uint64_t sub_221A58CC0()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_11_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_221A58D34()
{
  OUTLINED_FUNCTION_69_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return v0;
}

uint64_t sub_221A58D8C()
{
  v1 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_221A3658C(v4);
}

uint64_t sub_221A58DEC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_15(v1);

  return sub_221A3669C(v3, v4, v5, v6);
}

uint64_t sub_221A58E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_27@<X0>(__int16 a1@<W8>)
{
  v6 = a1 | *(v1 - 124);
  v5 = *(v1 - 112);
  result = *(v1 - 104);
  v3 = *(v1 - 88);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_22198BEB8(v25);
  sub_22198BEB8(a23);
  result = sub_22198BEB8(a25);
  v28 = (*(v26 - 92) & 1) == 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_10(unint64_t *a1)
{

  return sub_221A58E78(a1, v1);
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];
  v5 = v0[7];
  v6 = *(v1 + 8);
  return v0[15];
}

void OUTLINED_FUNCTION_19_8()
{
  *(v1 + 8) = v0;
  v6 = v2[15];
  v7 = v2[7];
  v8 = v2[4];
  v9 = v2[2];
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
}

double OUTLINED_FUNCTION_24_7()
{
  *(v7 + 112) = v2;
  *(v7 + 120) = v5;
  *(v7 + 96) = v3;
  *(v7 + 104) = v4;
  *(v7 + 80) = v0;
  *(v7 + 88) = v1;
  *(v7 + 72) = 0;
  *(v7 + 64) = v6;
  result = 0.0;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  return result;
}

void OUTLINED_FUNCTION_32_6()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
}

uint64_t OUTLINED_FUNCTION_33_4()
{
  *v1 = v0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_6()
{

  return sub_221BCD058();
}

uint64_t OUTLINED_FUNCTION_38_3()
{
  v3 = *(v0 + 288);
  result = *(v0 + 296);
  *(v1 - 120) = result;
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  *(v1 - 92) = *(v0 + 106);
  v9 = *(v0 + 208);
  v10 = *(v0 + 192);
  v19 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  *(v1 - 124) = *(v0 + 105);
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  *(v1 - 112) = *(v0 + 136);
  *(v1 - 104) = v14;
  *(v1 - 88) = *(v0 + 112);
  v16 = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_7()
{
  v3 = *(v0 + 280);
  result = *(v0 + 288);
  *(v1 - 120) = result;
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  *(v1 - 92) = *(v0 + 353);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  v19 = *(v0 + 192);
  v18 = *(v0 + 168);
  v17 = *(v0 + 160);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  *(v1 - 124) = *(v0 + 352);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  *(v1 - 112) = *(v0 + 128);
  *(v1 - 104) = v14;
  *(v1 - 88) = *(v0 + 104);
  v16 = *(v3 + 16);
  return result;
}

double OUTLINED_FUNCTION_40_5()
{
  result = 0.0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  return result;
}

void OUTLINED_FUNCTION_42_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
}

uint64_t OUTLINED_FUNCTION_49_5()
{
  v1 = v0[14];
  result = v0[12];
  v3 = v0[10];
  v4 = *(v0[11] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[22];
  v3 = v2[23];
  v5 = v2[21];
  return v2[19];
}

void OUTLINED_FUNCTION_57_4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_58_4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2 + *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_221BCD058();
}

uint64_t OUTLINED_FUNCTION_72_2(uint64_t a1)
{
  *(v1 + 64) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t OUTLINED_FUNCTION_73_4()
{
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];

  return sub_221BCCD88();
}

__n128 OUTLINED_FUNCTION_81_3(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  a1[1] = a9;
  a1[2].n128_u64[0] = v9;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_2(uint64_t result)
{
  *(v2 + 232) = result;
  *(result + 16) = v1;
  *(result + 24) = v3;
  return result;
}

void OUTLINED_FUNCTION_95_1(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000017;
  *(a2 + 8) = v2;
  *(a2 + 16) = 3;
}

uint64_t OUTLINED_FUNCTION_98_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);

  return sub_221BCCFB8();
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{
  *(v1 + 224) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_112_1()
{

  return sub_221A56250();
}

uint64_t OUTLINED_FUNCTION_115_0()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_1()
{
  result = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  return result;
}

uint64_t OUTLINED_FUNCTION_126_0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return sub_221BCC6C8();
}

uint64_t OUTLINED_FUNCTION_127_2(uint64_t a1)
{
  *(v1 + 128) = a1;

  return type metadata accessor for RemoteAppIntentsActor();
}

uint64_t OUTLINED_FUNCTION_131_1()
{
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_137_0()
{
  v1[10] = v2;
  v1[11] = v0;
  v1[7] = v3;

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_139()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_140_0(unint64_t *a1)
{

  return sub_221A58E78(a1, v1);
}

uint64_t OUTLINED_FUNCTION_141_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_142_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return sub_221A58CC0();
}

uint64_t OUTLINED_FUNCTION_149_0(uint64_t result, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_152_0()
{

  return sub_221A58D34();
}

uint64_t OUTLINED_FUNCTION_158_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_163_0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return type metadata accessor for RemoteAppIntentsActor();
}

uint64_t OUTLINED_FUNCTION_173_0()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[41];
  v6 = v0[42];
  v8 = v0[39];
  v7 = v0[40];
  result = v0[37];
  v10 = v0[38];
  v11 = v0[35];
  v12 = *(v0[36] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  result = v0[8];
  v10 = v0[9];
  v11 = v0[6];
  v12 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_221BCC6E8();
}

uint64_t OUTLINED_FUNCTION_187_0@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v5 + a1);
  *(v1 + 560) = v3;
  *(v1 + 568) = v4;
  *(v1 + 576) = v2;
  *(v1 + 584) = v7;
  *(v1 + 592) = 0u;
}

uint64_t OUTLINED_FUNCTION_188_0()
{
  v2 = v0[153];
  v3 = v0[147];
  v4 = v0[145];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v8 = v0[141];
  v9 = v0[140];

  return sub_221A42F34(v6);
}

uint64_t OUTLINED_FUNCTION_189_0(uint64_t a1)
{
  *(v1 + 64) = a1;
  *(v1 + 16) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_190_0()
{
  v1[10] = v2;
  v1[11] = v0;
  v1[7] = v3;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 32) = a1;

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_193_0(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 648), 0x58uLL);
}

void *OUTLINED_FUNCTION_194_0(uint64_t a1, const void *a2)
{

  return memcpy((v2 + 16), a2, 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_195_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_196_0()
{
  v2 = v0[49];
  v1 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  result = v0[44];
  v8 = v0[42];
  v9 = *(v0[43] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_198_0()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  result = v0[17];
  v8 = v0[15];
  v9 = *(v0[16] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_199_0()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  result = v0[22];
  v8 = v0[20];
  v9 = *(v0[21] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_202_0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  result = v0[8];
  v8 = v0[6];
  v9 = *(v0[7] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  result = v0[13];
  v8 = v0[11];
  v9 = *(v0[12] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_210_0()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];
  result = v0[15];
  v8 = v0[13];
  v9 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_211_0()
{

  return sub_221BCC6E8();
}

uint64_t OUTLINED_FUNCTION_212(unint64_t *a1)
{

  return sub_221A58E78(a1, v1);
}

void OUTLINED_FUNCTION_213_0()
{
}

uint64_t OUTLINED_FUNCTION_217_0()
{
  result = v0[46];
  v2 = v0[43];
  v3 = v0[40];
  return result;
}

__n128 OUTLINED_FUNCTION_218_0(__n128 *a1)
{
  *(v1 + 304) = a1;
  result = *(v1 + 248);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_219_0()
{
  result = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 8);
  return result;
}

void OUTLINED_FUNCTION_220_0()
{
  v1 = v0[157];
  v2 = v0[155];
  v3 = v0[154];
}

__n128 OUTLINED_FUNCTION_221_0(__n128 *a1)
{
  v1[18].n128_u64[1] = a1;
  result = v1[15];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_227_0()
{
  result = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_228_0()
{
  result = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  return result;
}

double OUTLINED_FUNCTION_231_0()
{
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_234_0()
{
  v2 = *(v0 + 120);

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_235_0(uint64_t a1)
{
  *(v1 + 96) = a1;

  return sub_221BCD088();
}

__n128 OUTLINED_FUNCTION_244_0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 168) = a1;
  *(v2 + 176) = v3;
  result = *(v1 + 1);
  *(v2 + 184) = result;
  v5 = *(v1 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_245_0()
{
}

uint64_t OUTLINED_FUNCTION_246_0()
{

  return sub_221A1C558();
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return sub_221BCCFA8();
}

uint64_t OUTLINED_FUNCTION_250_0()
{
  *v1 = v0;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

void OUTLINED_FUNCTION_251_0()
{
}

uint64_t OUTLINED_FUNCTION_252_0()
{

  return sub_221BCC6D8();
}

uint64_t OUTLINED_FUNCTION_253_0()
{

  return sub_221A56250();
}

uint64_t OUTLINED_FUNCTION_254()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return sub_221BCCD88();
}

uint64_t OUTLINED_FUNCTION_256()
{

  return sub_221BCD078();
}

uint64_t OUTLINED_FUNCTION_257()
{
  v2 = *(v0 + 16);

  return sub_221BCC328();
}

void OUTLINED_FUNCTION_258()
{
  v2 = *(v0 + 24);

  sub_221A4F364();
}

uint64_t OUTLINED_FUNCTION_259()
{
  v3 = *(v1 + *(v0 + 32) + 8);
}

uint64_t OUTLINED_FUNCTION_260(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_2219A6360(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_261()
{
  v3 = *(v1 + *(v0 + 28) + 8);
}

uint64_t OUTLINED_FUNCTION_262()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_265()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_266()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_269()
{
  v2 = *(v0 + 1120);

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_270@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3[3] = result;
  v3[4] = a2;
  v3[2] = v2;
  return result;
}

void *OUTLINED_FUNCTION_272(void *result)
{
  result[2] = v2;
  result[3] = v1;
  result[4] = v3;
  return result;
}

__n128 *OUTLINED_FUNCTION_273(__n128 a1, __n128 a2, __n128 a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return v3 + 1;
}

__n128 OUTLINED_FUNCTION_274()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_281()
{
  v1 = v0[17];
  v2 = v0[18];
  result = v0[16];
  v4 = v0[14];
  v5 = *(v0[15] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_289()
{
  v2 = v0[46];
  v3 = v0[43];
  v4 = v0[40];
  v5 = v0[37];
}

uint64_t OUTLINED_FUNCTION_290()
{

  return sub_221BCD058();
}

uint64_t OUTLINED_FUNCTION_291()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_292()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
}

uint64_t OUTLINED_FUNCTION_293(uint64_t a1)
{
  *(v1 + 208) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_294()
{

  return sub_221BCD058();
}

uint64_t OUTLINED_FUNCTION_295()
{

  return sub_221BCC668();
}

void sub_221A5A28C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(6);
  OUTLINED_FUNCTION_5_16(100);
}

void sub_221A5A31C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(7);
  OUTLINED_FUNCTION_5_16(101);
}

void sub_221A5A3AC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(8);
  OUTLINED_FUNCTION_5_16(102);
}

void sub_221A5A43C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(9);
  OUTLINED_FUNCTION_5_16(103);
}

void sub_221A5A4CC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(10);
  OUTLINED_FUNCTION_5_16(104);
}

void sub_221A5A55C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(11);
  OUTLINED_FUNCTION_5_16(105);
}

void sub_221A5A5EC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(22);
  OUTLINED_FUNCTION_5_16(106);
}

void sub_221A5A67C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v1 = qword_27CFDEDA8;
  v2 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_11_11();
  qword_27CFDD520 = v1;
  *algn_27CFDD528 = v0;
  byte_27CFDD530 = 0;
  qword_27CFDD538 = "continuePerformIntentWithUnknownRequestResponse";
  unk_27CFDD540 = 47;
  byte_27CFDD548 = 2;
  qword_27CFDD550 = 0;
  byte_27CFDD558 = v3;
  qword_27CFDD560 = 0;
  byte_27CFDD568 = v4;
  qword_27CFDD570 = 0;
  byte_27CFDD578 = v3;
}

void sub_221A5A730()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_2_28();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_7_12(v1);
  *(v2 + 80) = 200;
  *(v2 + 88) = v3;
}

void sub_221A5A7BC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(13);
  OUTLINED_FUNCTION_5_16(300);
}

void sub_221A5A84C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(14);
  OUTLINED_FUNCTION_5_16(400);
}

void sub_221A5A8DC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(15);
  OUTLINED_FUNCTION_5_16(500);
}

void sub_221A5A96C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(16);
  OUTLINED_FUNCTION_5_16(501);
}

void sub_221A5A9FC()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(18);
  OUTLINED_FUNCTION_5_16(502);
}

void sub_221A5AA8C()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_2_28();
  OUTLINED_FUNCTION_10_11();
  OUTLINED_FUNCTION_7_12(v1);
  *(v2 + 80) = 600;
  *(v2 + 88) = v3;
}

void sub_221A5AB18()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(20);
  OUTLINED_FUNCTION_5_16(601);
}

void sub_221A5ABA8()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(21);
  OUTLINED_FUNCTION_5_16(602);
}

void sub_221A5AC38()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_3_20(v1);
  OUTLINED_FUNCTION_6_14(23);
  OUTLINED_FUNCTION_5_16(700);
}

void sub_221A5ACC8()
{
  if (qword_27CFB7368 != -1)
  {
    OUTLINED_FUNCTION_1_33();
  }

  v0 = qword_27CFDEDA8;
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_10_11();
  *(v1 + 24) = "fetchAppDescription";
  *(v1 + 32) = 19;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  *(v1 + 80) = 800;
  *(v1 + 88) = v4;
}

uint64_t OUTLINED_FUNCTION_1_33()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_20(char a1@<W8>)
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 2;
  *(v1 + 48) = 2;
  *(v1 + 56) = a1;
}

void OUTLINED_FUNCTION_4_17()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 0;
}

void OUTLINED_FUNCTION_7_12(char a1@<W8>)
{
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = 2;
  *(v2 + 48) = 2;
  *(v2 + 56) = a1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_221BCBCB0(v0);
}

void OUTLINED_FUNCTION_9_12()
{
}

void OUTLINED_FUNCTION_10_11()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = 0;
}

uint64_t sub_221A5AE84(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActorTransactionOperation();
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = *(v2 + 16);

  v14 = sub_221A5B54C(a1, sub_221A5BBD8, v3);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v17 = *(v14 + 16);
    v18 = qword_27CFBCA50;
    v19 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1(v19);
    (*(v20 + 16))(v12, v17 + v18);
    v21 = (v12 + *(v6 + 20));
    *v21 = 0xD000000000000011;
    v21[1] = 0x8000000221BEDDF0;
    (*(v15 + 8))(v12, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_221A5C620(v12, type metadata accessor for ActorTransactionOperation);
  }

  v22 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  swift_allocObject();
  swift_weakInit();

  sub_221BCCEF8();

  return v14;
}

void sub_221A5B094(SEL *a1)
{
  v2 = [v1 *a1];
  sub_221BCC528();
}

uint64_t sub_221A5B0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - v7;
  v9 = *(v6 + 56);
  sub_221A5BB74(a1, &v14 - v7);
  sub_221A5BB74(a2, &v8[v9]);
  LOBYTE(a2) = sub_221BCC518();
  v10 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v10);
  v12 = *(v11 + 8);
  v12(&v8[v9], v10);
  v12(v8, v10);
  return a2 & 1;
}

uint64_t sub_221A5B1EC()
{
  v1 = _s17LNConnectionStoreC9AssertionOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_4_0();
  v5 = v4 - v3;
  sub_221A5BB74(v0, v4 - v3);
  MEMORY[0x223DA4060](0);
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_0_37();
  sub_221A5C5D8(v7, v8);
  sub_221BCD318();
  return (*(*(v6 - 8) + 8))(v5, v6);
}

uint64_t sub_221A5B2E0()
{
  v1 = _s17LNConnectionStoreC9AssertionOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_4_0();
  v5 = v4 - v3;
  sub_221BCE308();
  sub_221A5BB74(v0, v5);
  MEMORY[0x223DA4060](0);
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_0_37();
  sub_221A5C5D8(v7, v8);
  sub_221BCD318();
  (*(*(v6 - 8) + 8))(v5, v6);
  return sub_221BCE358();
}

uint64_t sub_221A5B3F0()
{
  sub_221BCE308();
  sub_221A5B1EC();
  return sub_221BCE358();
}

uint64_t sub_221A5B430(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92F0, &qword_221BD8288);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v2 + 16) = v4;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_221A5B4C4(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 32);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_221A5B54C(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 32));
  v7 = sub_221A5C2C8((v3 + 40), a1, v3, a2, a3);
  os_unfair_lock_unlock((v3 + 32));
  return v7;
}

uint64_t sub_221A5B5B8(void *a1)
{
  v2 = sub_221BCC558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_27CFB7380 != -1)
    {
      swift_once();
    }

    v9 = sub_221BCCD88();
    __swift_project_value_buffer(v9, qword_27CFDEDE0);
    v10 = a1;

    v11 = sub_221BCCD68();
    v12 = sub_221BCDA98();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v13 = 138412546;
      if (a1)
      {
        v15 = a1;
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
      *(v13 + 12) = 2080;
      (*(v3 + 16))(v6, *(v8 + 16) + qword_27CFBCA50, v2);
      sub_221A5C5D8(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
      v18 = sub_221BCE168();
      v20 = v19;
      (*(v3 + 8))(v6, v2);
      v21 = sub_2219A6360(v18, v20, &v26);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_221989000, v11, v12, "Peer actor interrupted with: %@, releasing associated LNConnection with assertable id: %s", v13, 0x16u);
      sub_22199B738(v14);
      MEMORY[0x223DA4C00](v14, -1, -1);
      v22 = v25;
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223DA4C00](v22, -1, -1);
      MEMORY[0x223DA4C00](v13, -1, -1);
    }

    v23 = *(v8 + 16);
    sub_221A5BD80();
  }

  return result;
}

uint64_t sub_221A5B8C4()
{
  v1 = *(v0 + 16);

  sub_221A55960(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_221A5B928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92C8, &qword_221BD8208);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_221A5B97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92C8, &qword_221BD8208);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t _s17LNConnectionStoreC9AssertionOMa()
{
  result = qword_27CFB92D0;
  if (!qword_27CFB92D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A5BA2C(uint64_t a1)
{
  sub_221A5BAE4();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_221BCC558();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_221A5BAE4()
{
  if (!qword_27CFB92E0)
  {
    v0 = sub_221BCC558();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFB92E0);
    }
  }
}

uint64_t sub_221A5BB74(uint64_t a1, uint64_t a2)
{
  v4 = _s17LNConnectionStoreC9AssertionOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A5BBE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a1;
  v14 = sub_221BCC558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BCC548();
  (*(v15 + 32))(v7 + qword_27CFBCA50, v18, v14);
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  v19 = v23;
  *(v7 + qword_27CFBCA58) = v23;
  sub_22198BEB8(a2);
  sub_22198BEB8(a4);
  sub_22198BEB8(a6);
  v20 = v19;
  sub_22198B60C(a6);
  sub_22198B60C(a4);
  sub_22198B60C(a2);

  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 73) = 0;
  *(v7 + 76) = 0;
  *(v7 + 80) = MEMORY[0x277D84FA0];
  return v7;
}

void sub_221A5BD80()
{
  v1 = v0;
  v2 = _s17LNConnectionStoreC9AssertionOMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((v0 + 64));
  v7 = *(v0 + 80);
  *(v0 + 80) = MEMORY[0x277D84FA0];
  os_unfair_lock_unlock((v0 + 64));
  if (*(v7 + 16))
  {
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 56);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (v10)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v13 >= v11)
      {
        break;
      }

      v10 = *(v7 + 56 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        do
        {
LABEL_9:
          sub_221A5BB74(*(v7 + 48) + *(v3 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v6);
          v14 = *(v1 + 32);
          if (v14)
          {
            v15 = *(v1 + 40);
            v14(v6, v1);
          }

          v10 &= v10 - 1;
          sub_221A5C620(v6, _s17LNConnectionStoreC9AssertionOMa);
        }

        while (v10);
      }
    }

    if (qword_27CFB7388 == -1)
    {
      goto LABEL_14;
    }

LABEL_21:
    swift_once();
LABEL_14:
    v16 = sub_221BCCD88();
    __swift_project_value_buffer(v16, qword_27CFDEDF8);

    v17 = sub_221BCCD68();
    v18 = sub_221BCDA68();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      v21 = static Instrumentation.currentActivityId.getter();
      v23 = sub_2219A6360(v21, v22, &v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v24 = sub_221A5DEA0();
      v26 = sub_2219A6360(v24, v25, &v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_221989000, v17, v18, "%sReleased all assertions on %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v20, -1, -1);
      MEMORY[0x223DA4C00](v19, -1, -1);
    }

    sub_221A5C0CC();
  }

  else
  {
  }
}

void sub_221A5C0CC()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 64));
  if (*(v0 + 72) == 1)
  {
    *(v0 + 72) = 0;
    os_unfair_lock_unlock((v0 + 64));
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEDF8);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v5 = 136315394;
      v7 = static Instrumentation.currentActivityId.getter();
      v9 = sub_2219A6360(v7, v8, &v15);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v10 = sub_221A5DEA0();
      v12 = sub_2219A6360(v10, v11, &v15);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_221989000, v3, v4, "%sReleasing object for %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v6, -1, -1);
      MEMORY[0x223DA4C00](v5, -1, -1);
    }

    v13 = *(v0 + 48);
    if (v13)
    {
      v14 = *(v0 + 56);
      v13(v1);
    }
  }

  else
  {

    os_unfair_lock_unlock((v0 + 64));
  }
}

uint64_t sub_221A5C2C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_221B9EAA0(a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9240, &qword_221BD7EF0);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
  }

  else
  {
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a5;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7730, &qword_221BD0CA8);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    swift_retain_n();

    v19 = a2;
    v20 = sub_221A5BBE8(v19, sub_221A5C678, a3, sub_221A5C680, a3, sub_221A5C688, v15);

    v21 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    sub_221B9FF54(v20, v19);
    *a1 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9240, &qword_221BD7EF0);
    v14 = swift_allocObject();
    *(v14 + 16) = v20;
  }

  return v14;
}

void sub_221A5C47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));

  v4 = *(a3 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a3 + 24);
  sub_221BA0058();
  *(a3 + 24) = v5;

  os_unfair_lock_unlock((a3 + 16));
}

void sub_221A5C504(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 4);
  sub_2219A08AC();

  os_unfair_lock_unlock(a3 + 4);
}

uint64_t sub_221A5C55C(uint64_t a1, os_unfair_lock_s *a2, uint64_t (*a3)(uint64_t))
{
  os_unfair_lock_lock(a2 + 8);
  v6 = *(a1 + qword_27CFBCA58);
  sub_2219A07F8();

  os_unfair_lock_unlock(a2 + 8);
  return a3(a1 + qword_27CFBCA50);
}

uint64_t sub_221A5C5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221A5C620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_221A5C6AC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContentType:a1 content:a2];

  return v4;
}

uint64_t sub_221A5C708@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CFB6D80 != -1)
  {
    swift_once();
  }

  v2 = qword_27CFB9300;
  if (qword_27CFB9300 && ((v3 = qword_27CFB92F8, qword_27CFB92F8 == 0xD000000000000014) ? (v4 = 0x8000000221BD8290 == qword_27CFB9300) : (v4 = 0), !v4 && (sub_221BCE1B8() & 1) == 0 && ((result = 0x6143737961776C41, v3 == 0x6143737961776C41) ? (v7 = v2 == 0xEF656C6946656863) : (v7 = 0), v7 || (result = sub_221BCE1B8(), (result & 1) != 0))))
  {
    a1[3] = &_s25ExportedLNValueConversionO15AlwaysCacheFileVN;
    a1[4] = &off_283517238;
  }

  else
  {
    v5 = _s25ExportedLNValueConversionO20AllowInlineUpToLimitCMa();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0x100000;
    a1[3] = v5;
    a1[4] = &off_283517150;
    *a1 = result;
  }

  return result;
}

uint64_t sub_221A5C840@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_221A57690(a2, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x58uLL);
  sub_221BB8ED4(v4, sub_221A57748, v5);
  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_221A5C8E4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = _s17LNConnectionStoreC9AssertionOMa();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RemoteFileDescriptor(0);
  v10 = OUTLINED_FUNCTION_2_1(v90);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = _s25ExportedLNValueConversionO12ExportedFileOMa();
  v14 = OUTLINED_FUNCTION_2_1(v93);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v92 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = (&v84 - v19);
  v21 = [a1 displayRepresentation];
  if (v21)
  {
    v22 = v21;
    v23 = sub_221B85444(a2[4], a2[5]);
  }

  else
  {
    v23 = 0;
  }

  sub_2219A1B08((a2 + 6), v96);
  v24 = [a1 valueType];
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25 && (v26 = v25, (v27 = [a1 exportedContent]) != 0))
  {
    v85 = a1;
    v86 = v9;
    v88 = v23;
    v89 = a3;
    v28 = v97;
    v29 = v98;
    v30 = v27;
    v94 = __swift_project_boxed_opaque_existential_0(v96, v97);
    v84 = v30;
    v31 = [v30 content];
    v32 = *(v29 + 8);
    v33 = v24;
    v87 = a2;
    v32(v31, a2, v26, v28, v29);
    v34 = v33;

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v36 = v91;
        sub_221A5E41C(v20, v91);
        sub_2219A1D20(0, &qword_27CFB84A8, 0x277D23C10);
        v37 = v84;
        v38 = [v84 contentType];
        v39 = sub_221B89CA0();
        v41 = v40;
        sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
        v42 = (v36 + *(v90 + 20));
        v43 = *v42;
        v44 = v42[1];

        v45 = sub_221B86688(v39, v41, v43, v44, 0, 0);
        v94 = sub_221A5C6AC(v38, v45);

        OUTLINED_FUNCTION_0_38();
        sub_221A5E480(v36, v46);
      }

      else
      {

        v94 = v84;
      }
    }

    else
    {
      v47 = *v20;
      sub_2219A1D20(0, &qword_27CFB84A8, 0x277D23C10);
      v48 = v84;
      v94 = sub_221A5C6AC([v84 contentType], v47);
    }

    v23 = v88;
    a3 = v89;
    v9 = v86;
    a2 = v87;
    a1 = v85;
  }

  else
  {

    v94 = 0;
  }

  v49 = [a1 valueType];
  v50 = a1;
  v51 = objc_opt_self();
  v52 = v49;
  v53 = [v51 fileValueType];
  sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
  v54 = sub_221BCDC58();

  if (v54)
  {

    v55 = [v50 value];
    sub_221BCDCF8();
    swift_unknownObjectRelease();
    v56 = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
    if (swift_dynamicCast())
    {
      v57 = v95;
      v58 = a2;
      v59 = v97;
      v60 = v98;
      __swift_project_boxed_opaque_existential_0(v96, v97);
      v61 = *(v60 + 8);
      v89 = v57;
      v61(v57, v58, 0, v59, v60);
      v62 = swift_getEnumCaseMultiPayload();
      if (!v62)
      {
        v82 = *v92;
        v72 = a3 + 6;
        a3[3] = v56;
        *a3 = v82;
        v83 = [v51 fileValueType];

        a3[4] = v83;
        a3[5] = v23;
        goto LABEL_25;
      }

      if (v62 == 1)
      {
        v63 = v91;
        sub_221A5E41C(v92, v91);
        v64 = sub_221B89CA0();
        v66 = v65;
        v67 = (v63 + *(v90 + 20));
        v68 = v23;
        v69 = *v67;
        v70 = v67[1];

        v71 = sub_221B86688(v64, v66, v69, v70, 0, 0);
        v72 = a3 + 6;
        a3[3] = v56;
        *a3 = v71;
        v73 = v71;
        v74 = [v51 fileValueType];

        OUTLINED_FUNCTION_0_38();
        sub_221A5E480(v63, v75);
        a3[4] = v74;
        a3[5] = v68;
LABEL_25:
        v80 = 1;
        goto LABEL_23;
      }
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v76 = [v50 value], sub_221BCDCF8(), swift_unknownObjectRelease(), sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780), (swift_dynamicCast() & 1) != 0))
    {
      v77 = v95;
      v78 = *a2;
      sub_221A5B07C();
      v79 = *(v78 + 16);
      sub_221A5E0FC(v9);

      sub_221A5E480(v9, _s17LNConnectionStoreC9AssertionOMa);
    }

    else
    {
    }
  }

  v80 = 0;
  *a3 = v23;
  v72 = a3 + 1;
LABEL_23:
  *v72 = v94;
  *(a3 + 56) = v80;
  return __swift_destroy_boxed_opaque_existential_0(v96);
}

uint64_t sub_221A5D004()
{
  if (qword_27CFB7368 != -1)
  {
    swift_once();
  }

  result = sub_221BCBD1C(qword_27CFDEDA8);
  qword_27CFB92F8 = result;
  qword_27CFB9300 = v1;
  return result;
}

uint64_t sub_221A5D060@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_221A5D0B4(a1, a2, a3);
  _s25ExportedLNValueConversionO12ExportedFileOMa();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_221A5D0B4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a3;
  v7 = sub_221BCC418();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (a2)
  {
    v15 = [a2 identifier];
    a2 = sub_221BCD388();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = a1[3];
  sub_221B7C5B8(v4, a1[1], a1[2], a2, v17, v14);

  v19 = [v4 filename];
  v20 = sub_221BCD388();
  v22 = v21;

  (*(v8 + 16))(v12, v14, v7);
  v23 = sub_221B86764();
  v24 = sub_221B8B5A4(v4);
  v26 = v25;
  (*(v8 + 8))(v14, v7);
  v27 = type metadata accessor for RemoteFileDescriptor(0);
  v28 = v35;
  v29 = (v35 + *(v27 + 20));
  *v29 = v20;
  v29[1] = v22;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
  v31 = v28 + *(v30 + 48);
  v32 = (v28 + *(v30 + 64));
  (*(v8 + 32))(v28, v12, v7);
  *v31 = v23;
  *(v31 + 8) = 0;
  *v32 = v24;
  v32[1] = v26;
  type metadata accessor for RemoteFileDescriptor.Content(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_221A5D518@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, id *a4@<X8>)
{
  v9 = [a1 _isFileURLBased];
  v10 = [a1 data];
  v11 = sub_221BCC468();
  v13 = v12;

  if (!v9)
  {
    v33 = MEMORY[0x223DA21D0](v11, v13);
    sub_2219EC040(v11, v13);
    os_unfair_lock_lock((v4 + 16));
    sub_221A5D9A8((v4 + 24), v33, a1, v53);
    os_unfair_lock_unlock((v4 + 16));
    if (LOBYTE(v53[0]) == 1)
    {
      _s25ExportedLNValueConversionO12ExportedFileOMa();
      goto LABEL_17;
    }

    v48 = a4;
    v49 = a2;
    v50 = a3;
    goto LABEL_16;
  }

  v14 = sub_221AE9494(v11, v13);
  sub_2219EC040(v11, v13);
  if (!v14)
  {
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v34 = sub_221BCCD88();
    __swift_project_value_buffer(v34, qword_27CFDEEB8);
    v35 = a1;
    v36 = sub_221BCCD68();
    v37 = sub_221BCDA68();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53[0] = v52;
      *v38 = 136315138;
      v39 = v35;
      v40 = a2;
      v41 = a3;
      v42 = a4;
      v43 = [v39 description];
      v44 = sub_221BCD388();
      v46 = v45;

      a4 = v42;
      a3 = v41;
      a2 = v40;
      v47 = sub_2219A6360(v44, v46, v53);

      *(v38 + 4) = v47;
      _os_log_impl(&dword_221989000, v36, v37, "File: %s is URL based, returning a remote file descriptor", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x223DA4C00](v52, -1, -1);
      MEMORY[0x223DA4C00](v38, -1, -1);
    }

    v48 = a4;
    v49 = a2;
    v50 = a3;
LABEL_16:
    sub_221A5D0B4(v49, v50, v48);
    _s25ExportedLNValueConversionO12ExportedFileOMa();
    goto LABEL_17;
  }

  if (qword_27CFB73D0 != -1)
  {
    swift_once();
  }

  v15 = sub_221BCCD88();
  __swift_project_value_buffer(v15, qword_27CFDEEB8);
  v16 = a1;
  v17 = sub_221BCCD68();
  v18 = sub_221BCDA68();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v53[0] = v20;
    *v19 = 136315138;
    v21 = v16;
    v22 = [v21 description];
    v23 = sub_221BCD388();
    v25 = v24;

    v26 = sub_2219A6360(v23, v25, v53);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_221989000, v17, v18, "File: %s is empty, returing empty INFile", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223DA4C00](v20, -1, -1);
    MEMORY[0x223DA4C00](v19, -1, -1);
  }

  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v27 = [v16 filename];
  v28 = sub_221BCD388();
  v30 = v29;

  v31 = sub_221B8B5A4(v16);
  *a4 = sub_221B86688(0, 0xC000000000000000, v28, v30, v31, v32);
  _s25ExportedLNValueConversionO12ExportedFileOMa();
LABEL_17:

  return swift_storeEnumTagMultiPayload();
}

void sub_221A5D9A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v5 = a2;
  v7 = *a1;
  if (*a1 < a2)
  {
    v36 = *a1;
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v8 = sub_221BCCD88();
    __swift_project_value_buffer(v8, qword_27CFDEEB8);
    v9 = a3;
    v10 = sub_221BCCD68();
    v11 = sub_221BCDA68();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v12 = 136315650;
      v13 = v9;
      v14 = [v13 description];
      v15 = a4;
      v16 = sub_221BCD388();
      v18 = v17;

      v19 = v16;
      a4 = v15;
      v20 = sub_2219A6360(v19, v18, &v40);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2048;
      *(v12 + 14) = a2;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v36;
      _os_log_impl(&dword_221989000, v10, v11, "File: %s is %ld bytes,\nremaining inline budget is %ld, returning a remote file descriptor", v12, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DA4C00](v34, -1, -1);
      MEMORY[0x223DA4C00](v12, -1, -1);
    }

    v21 = 0;
    goto LABEL_13;
  }

  if (qword_27CFB73D0 != -1)
  {
    swift_once();
  }

  v23 = sub_221BCCD88();
  __swift_project_value_buffer(v23, qword_27CFDEEB8);
  v24 = a3;
  v25 = sub_221BCCD68();
  v26 = sub_221BCDA68();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v27 = 136315650;
    v28 = v24;
    v39 = v5;
    v29 = [v28 description];
    v30 = sub_221BCD388();
    v37 = a4;
    v32 = v31;

    v33 = sub_2219A6360(v30, v32, &v40);
    a4 = v37;

    *(v27 + 4) = v33;
    v5 = v39;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v39;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v7;
    _os_log_impl(&dword_221989000, v25, v26, "File: %s is %ld bytes,\nremaining inline budget is %ld, transfering inline", v27, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x223DA4C00](v35, -1, -1);
    MEMORY[0x223DA4C00](v27, -1, -1);
  }

  if (!__OFSUB__(v7, v5))
  {
    *a1 = v7 - v5;
    v21 = 1;
LABEL_13:
    *a4 = v21;
    return;
  }

  __break(1u);
}

uint64_t _s25ExportedLNValueConversionO12ExportedFileOMa()
{
  result = qword_27CFB9328;
  if (!qword_27CFB9328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_221A5DDD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_221BB9B28(*(a1 + 16), 0);
  v3 = *(*(_s17LNConnectionStoreC9AssertionOMa() - 8) + 80);
  sub_221BBA074();
  v5 = v4;
  sub_221A5E4D8();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_221A5DEA0()
{
  v1 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 16);
  os_unfair_lock_opaque_low = LOBYTE(v0[18]._os_unfair_lock_opaque);
  v3 = *&v0[20]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v0 + 16);
  sub_221BCDE68();

  swift_getMetatypeMetadata();
  v16 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](60, 0xE100000000000000);
  sub_2219A1D20(0, &qword_27CFB9318, 0x277D23BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9320, &qword_221BD8300);
  v4 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](0x7463656A626F283ELL, 0xEA0000000000203ALL);
  v5 = *(&v0->_os_unfair_lock_opaque + qword_27CFBCA58);
  v6 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v6);

  MEMORY[0x223DA31F0](0x7472657373610A2CLL, 0xEE00203A736E6F69);

  v8 = sub_221A5DDD8(v7);
  v9 = _s17LNConnectionStoreC9AssertionOMa();
  v10 = MEMORY[0x223DA33D0](v8, v9);
  v12 = v11;

  MEMORY[0x223DA31F0](v10, v12);

  MEMORY[0x223DA31F0](0x657669746361202CLL, 0xEA0000000000203ALL);
  if (os_unfair_lock_opaque_low)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (os_unfair_lock_opaque_low)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v13, v14);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v16;
}

void sub_221A5E0FC(uint64_t a1)
{
  v2 = v1;
  v4 = _s17LNConnectionStoreC9AssertionOMa();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  os_unfair_lock_lock((v1 + 64));
  sub_221A5BB74(a1, v11);
  sub_221BBA990();
  sub_221A5E480(v13, _s17LNConnectionStoreC9AssertionOMa);
  os_unfair_lock_unlock((v1 + 64));
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = *(v1 + 24);
    v14(a1, v2);
  }

  if (qword_27CFB7388 != -1)
  {
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEDF8);
  sub_221A5BB74(a1, v8);

  v17 = sub_221BCCD68();
  v18 = sub_221BCDA68();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315650;
    v21 = static Instrumentation.currentActivityId.getter();
    v23 = sub_2219A6360(v21, v22, &v32);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_221A5BB74(v8, v13);
    v24 = sub_221BCD3D8();
    v26 = v25;
    sub_221A5E480(v8, _s17LNConnectionStoreC9AssertionOMa);
    v27 = sub_2219A6360(v24, v26, &v32);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    v28 = sub_221A5DEA0();
    v30 = sub_2219A6360(v28, v29, &v32);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_221989000, v17, v18, "%sTaken assertion: %s on %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v20, -1, -1);
    MEMORY[0x223DA4C00](v19, -1, -1);
  }

  else
  {

    sub_221A5E480(v8, _s17LNConnectionStoreC9AssertionOMa);
  }
}

uint64_t sub_221A5E41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteFileDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A5E480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_221A5E4F0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_221A5E530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A5E594()
{
  result = sub_2219A1D20(319, &qword_27CFB84A0, 0x277CD3C08);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RemoteFileDescriptor(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_221A5E658()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_221BCC558();
  v7 = OUTLINED_FUNCTION_0_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  os_unfair_lock_lock((v3 + 16));
  v15 = v2(v3 + 24, v5);
  os_unfair_lock_unlock((v3 + 16));
  v16 = 0;
  v17 = *(v15 + 16);
  while (1)
  {
    if (v17 == v16)
    {

      OUTLINED_FUNCTION_22();
      return;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    (*(v9 + 16))(v14, v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v6);
    v18 = *(v3 + 48);
    if (v18)
    {
      v19 = *(v3 + 56);
      v18(v14);
    }

    (*(v9 + 8))(v14, v6);
    ++v16;
  }

  __break(1u);
}

void *sub_221A5E7BC(uint64_t *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9430, &qword_221BD8618);
  v5 = *(*(v62 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v53 - v9;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = a1;
  v64 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v76 = a2;
  v67 = v15;
  v16 = sub_221A6D58C(v15);
  v17 = v16[2];
  if (v17)
  {
    v53[1] = v2;
    v78 = MEMORY[0x277D84F90];
    v66 = v16;
    sub_2219A3154(0, v17, 0);
    v74 = v78;
    v20 = sub_221BA1250(v66);
    result = v66;
    v22 = 0;
    v72 = v12 + 16;
    v73 = v66 + 8;
    v71 = v12 + 32;
    v55 = (v12 + 8);
    v59 = v18;
    v54 = v66 + 9;
    v56 = v10;
    v60 = v17;
    v61 = v12;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(result + 32))
    {
      v23 = v20 >> 6;
      if ((v73[v20 >> 6] & (1 << v20)) == 0)
      {
        goto LABEL_25;
      }

      if (*(result + 9) != v18)
      {
        goto LABEL_26;
      }

      v68 = v22;
      v69 = v18;
      v65 = v19;
      v24 = result[6];
      v75 = *(v12 + 72);
      v25 = *(v12 + 16);
      v26 = result;
      v25(v10, v24 + v75 * v20, v11);
      v27 = *(v26[7] + 8 * v20);
      v70 = *(v12 + 32);
      v70(v8, v10, v11);
      *&v8[*(v62 + 48)] = v27;
      v28 = v27;
      v29 = sub_221B9EA30(v8);
      if (v30)
      {
        v31 = v29;
        v32 = v63;
        v33 = *v63;
        swift_isUniquelyReferenced_nonNull_native();
        v77 = *v32;
        v58 = v25;
        v34 = v11;
        v35 = *(v77 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9438, &unk_221BD8620);
        v10 = v56;
        v11 = v34;
        sub_221BCE028();
        v36 = v77;
        (*v55)(*(v77 + 48) + v31 * v75, v11);
        v37 = *(*(v36 + 56) + 8 * v31);
        sub_221A6D9C4(&qword_27CFB9420);
        sub_221BCE048();

        v67 = v36;
        *v63 = v36;
        v25 = v58;
      }

      v38 = v64;
      v25(v64, v8, v11);
      sub_2219A1CC8(v8, &qword_27CFB9430, &qword_221BD8618);
      v39 = v74;
      v78 = v74;
      v40 = v11;
      v42 = *(v74 + 16);
      v41 = *(v74 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2219A3154(v41 > 1, v42 + 1, 1);
        v38 = v64;
        v39 = v78;
      }

      *(v39 + 16) = v42 + 1;
      v12 = v61;
      v43 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v74 = v39;
      v70((v39 + v43 + v42 * v75), v38, v40);
      result = v66;
      v44 = 1 << *(v66 + 32);
      if (v20 >= v44)
      {
        goto LABEL_27;
      }

      v45 = v73[v23];
      if ((v45 & (1 << v20)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v66 + 9) != v69)
      {
        goto LABEL_29;
      }

      v11 = v40;
      v46 = v45 & (-2 << (v20 & 0x3F));
      if (v46)
      {
        v44 = __clz(__rbit64(v46)) | v20 & 0x7FFFFFFFFFFFFFC0;
        v47 = v60;
      }

      else
      {
        v48 = v23 << 6;
        v49 = v23 + 1;
        v50 = &v54[v23];
        v47 = v60;
        while (v49 < (v44 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_2219A4E2C(v20, v69, v65 & 1);
            result = v66;
            v44 = __clz(__rbit64(v51)) + v48;
            goto LABEL_21;
          }
        }

        sub_2219A4E2C(v20, v69, v65 & 1);
        result = v66;
      }

LABEL_21:
      v19 = 0;
      v22 = v68 + 1;
      v20 = v44;
      v18 = v59;
      if (v68 + 1 == v47)
      {

        return v74;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_221A5ED88(uint64_t *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9410, &qword_221BD85B0);
  v5 = *(*(v62 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v62);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v53 - v9;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v63 = a1;
  v64 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v76 = a2;
  v67 = v15;
  v16 = sub_221A6D58C(v15);
  v17 = v16[2];
  if (v17)
  {
    v53[1] = v2;
    v78 = MEMORY[0x277D84F90];
    v66 = v16;
    sub_2219A3154(0, v17, 0);
    v74 = v78;
    v20 = sub_221BA1250(v66);
    result = v66;
    v22 = 0;
    v72 = v12 + 16;
    v73 = v66 + 8;
    v71 = v12 + 32;
    v55 = (v12 + 8);
    v59 = v18;
    v54 = v66 + 9;
    v56 = v10;
    v60 = v17;
    v61 = v12;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(result + 32))
    {
      v23 = v20 >> 6;
      if ((v73[v20 >> 6] & (1 << v20)) == 0)
      {
        goto LABEL_25;
      }

      if (*(result + 9) != v18)
      {
        goto LABEL_26;
      }

      v68 = v22;
      v69 = v18;
      v65 = v19;
      v24 = result[6];
      v75 = *(v12 + 72);
      v25 = *(v12 + 16);
      v26 = result;
      v25(v10, v24 + v75 * v20, v11);
      v27 = *(v26[7] + 8 * v20);
      v70 = *(v12 + 32);
      v70(v8, v10, v11);
      *&v8[*(v62 + 48)] = v27;
      v28 = v27;
      v29 = sub_221B9EA30(v8);
      if (v30)
      {
        v31 = v29;
        v32 = v63;
        v33 = *v63;
        swift_isUniquelyReferenced_nonNull_native();
        v77 = *v32;
        v58 = v25;
        v34 = v11;
        v35 = *(v77 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9418, &qword_221BD85B8);
        v10 = v56;
        v11 = v34;
        sub_221BCE028();
        v36 = v77;
        (*v55)(*(v77 + 48) + v31 * v75, v11);
        v37 = *(*(v36 + 56) + 8 * v31);
        sub_221A6D9C4(&qword_27CFB9420);
        sub_221BCE048();

        v67 = v36;
        *v63 = v36;
        v25 = v58;
      }

      v38 = v64;
      v25(v64, v8, v11);
      sub_2219A1CC8(v8, &qword_27CFB9410, &qword_221BD85B0);
      v39 = v74;
      v78 = v74;
      v40 = v11;
      v42 = *(v74 + 16);
      v41 = *(v74 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2219A3154(v41 > 1, v42 + 1, 1);
        v38 = v64;
        v39 = v78;
      }

      *(v39 + 16) = v42 + 1;
      v12 = v61;
      v43 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v74 = v39;
      v70((v39 + v43 + v42 * v75), v38, v40);
      result = v66;
      v44 = 1 << *(v66 + 32);
      if (v20 >= v44)
      {
        goto LABEL_27;
      }

      v45 = v73[v23];
      if ((v45 & (1 << v20)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v66 + 9) != v69)
      {
        goto LABEL_29;
      }

      v11 = v40;
      v46 = v45 & (-2 << (v20 & 0x3F));
      if (v46)
      {
        v44 = __clz(__rbit64(v46)) | v20 & 0x7FFFFFFFFFFFFFC0;
        v47 = v60;
      }

      else
      {
        v48 = v23 << 6;
        v49 = v23 + 1;
        v50 = &v54[v23];
        v47 = v60;
        while (v49 < (v44 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_2219A4E2C(v20, v69, v65 & 1);
            result = v66;
            v44 = __clz(__rbit64(v51)) + v48;
            goto LABEL_21;
          }
        }

        sub_2219A4E2C(v20, v69, v65 & 1);
        result = v66;
      }

LABEL_21:
      v19 = 0;
      v22 = v68 + 1;
      v20 = v44;
      v18 = v59;
      if (v68 + 1 == v47)
      {

        return v74;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_221A5F368(void *a1, void *a2, uint64_t *a3)
{
  objc_opt_self();
  OUTLINED_FUNCTION_100_2();
  if (swift_dynamicCastObjCClass())
  {
    v7 = 0xEE006E6F69746175;
    v8 = 0x6769626D61736964;
  }

  else
  {
    objc_opt_self();
    OUTLINED_FUNCTION_100_2();
    if (swift_dynamicCastObjCClass())
    {
      v7 = 0xEA00000000006575;
      v8 = 0x6C6156736465656ELL;
    }

    else
    {
      objc_opt_self();
      OUTLINED_FUNCTION_100_2();
      if (swift_dynamicCastObjCClass())
      {
        v8 = 0xD000000000000011;
        v7 = 0x8000000221BEE590;
      }

      else
      {
        objc_opt_self();
        OUTLINED_FUNCTION_100_2();
        if (swift_dynamicCastObjCClass())
        {
          v7 = 0x8000000221BEE570;
          v8 = 0xD000000000000017;
        }

        else
        {
          objc_opt_self();
          OUTLINED_FUNCTION_100_2();
          v9 = swift_dynamicCastObjCClass();
          if (v9)
          {
            v8 = 0xD000000000000016;
          }

          else
          {
            v8 = 0x6E776F6E6B6E75;
          }

          if (v9)
          {
            v7 = 0x8000000221BEE550;
          }

          else
          {
            v7 = 0xE700000000000000;
          }
        }
      }
    }
  }

  if (*(v3 + *a2))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v10 = sub_221BCCD88();
    v11 = OUTLINED_FUNCTION_227_1(v10, qword_27CFDEDB0);

    v12 = a1;
    oslog = sub_221BCCD68();
    v13 = sub_221BCDA98();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_68();
      v15 = OUTLINED_FUNCTION_127_3();
      v30 = OUTLINED_FUNCTION_105();
      *v14 = 136315651;
      v16 = *a3;
      sub_221BCC558();
      OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
      sub_221BCE168();
      OUTLINED_FUNCTION_197_1();

      v17 = OUTLINED_FUNCTION_16();
      sub_2219A6360(v17, v18, v19);
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_132_1();
      sub_2219A6360(v8, v7, &v30);
      OUTLINED_FUNCTION_97_1();

      *(v14 + 14) = &v11[v16];
      *(v14 + 22) = 2117;
      *(v14 + 24) = v12;
      *v15 = v12;
      v20 = v12;
      v21 = "[%s] Received %s request %{sensitive}@";
LABEL_24:
      _os_log_impl(&dword_221989000, oslog, v13, v21, v14, 0x20u);
      sub_2219A1CC8(v15, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      return;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v22 = sub_221BCCD88();
    v11 = OUTLINED_FUNCTION_227_1(v22, qword_27CFDEDB0);

    v23 = a1;
    oslog = sub_221BCCD68();
    v13 = sub_221BCDA98();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_68();
      v15 = OUTLINED_FUNCTION_127_3();
      v30 = OUTLINED_FUNCTION_105();
      *v14 = 136315651;
      v24 = *a3;
      sub_221BCC558();
      OUTLINED_FUNCTION_0_39(&qword_27CFB7A60);
      sub_221BCE168();
      OUTLINED_FUNCTION_197_1();

      v25 = OUTLINED_FUNCTION_16();
      sub_2219A6360(v25, v26, v27);
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_132_1();
      sub_2219A6360(v8, v7, &v30);
      OUTLINED_FUNCTION_97_1();

      *(v14 + 14) = &v11[v24];
      *(v14 + 22) = 2113;
      *(v14 + 24) = v23;
      *v15 = v23;
      v28 = v23;
      v21 = "[%s] Received %s request %{private}@";
      goto LABEL_24;
    }
  }
}
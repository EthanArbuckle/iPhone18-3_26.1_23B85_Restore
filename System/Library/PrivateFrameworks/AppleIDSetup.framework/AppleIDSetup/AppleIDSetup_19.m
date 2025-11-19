uint64_t sub_24073C1CC()
{
  v1 = *(*v0 + 2120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24073C2C0()
{
  v1 = *(*v0 + 2128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073C3BC, 0, 0);
}

uint64_t sub_24073C3BC()
{
  v1 = *(v0 + 1864) + *(v0 + 116);
  sub_2406EA500(v0 + 16);
  v12 = *(v0 + 1600);
  v10 = *(v0 + 1616);
  v11 = *(v0 + 1632);
  v9 = *(v0 + 1648);
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  *(v0 + 1264) = *v1;
  *(v0 + 1280) = v3;
  *(v0 + 1296) = v2;
  v5 = *(v1 + 64);
  v4 = *(v1 + 80);
  v6 = *(v1 + 96);
  *(v0 + 1312) = *(v1 + 48);
  *(v0 + 1360) = v6;
  *(v0 + 1344) = v4;
  *(v0 + 1328) = v5;
  sub_2406EA500(v0 + 1264);
  *v1 = v12;
  *(v1 + 16) = v10;
  *(v1 + 32) = v11;
  *(v1 + 48) = v9;
  *(v1 + 72) = 0;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24073C498()
{
  v1 = *(*v0 + 2136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073C594, 0, 0);
}

uint64_t sub_24073C594()
{
  sub_2406EA500(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24073C5F4()
{
  v1 = *(*v0 + 2144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24073C6E8()
{
  v1 = *(*v0 + 2152);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24073C7DC(char a1)
{
  v2 = *(*v1 + 2160);
  v4 = *v1;
  *(*v1 + 115) = a1;

  return MEMORY[0x2822009F8](sub_24073C8DC, 0, 0);
}

uint64_t sub_24073C8DC()
{
  v1 = *(v0 + 115);
  v2 = *(v0 + 2112);
  v3 = *(v0 + 2104);
  v4 = *(v0 + 2088);
  v5 = (*(v0 + 2096) << 16) | (*(v0 + 2100) << 48) | *(v0 + 113) | (*(v0 + 114) << 8);
  v6 = *(v0 + 1864) + *(v0 + 116);
  v8 = *(v6 + 16);
  v7 = *(v6 + 32);
  *(v0 + 1056) = *v6;
  *(v0 + 1072) = v8;
  *(v0 + 1088) = v7;
  v10 = *(v6 + 64);
  v9 = *(v6 + 80);
  v11 = *(v6 + 96);
  *(v0 + 1104) = *(v6 + 48);
  *(v0 + 1152) = v11;
  *(v0 + 1136) = v9;
  *(v0 + 1120) = v10;
  sub_2406EA500(v0 + 1056);
  *v6 = v4;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 72) = 0xC000000000000000;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24073C9CC()
{
  v1 = *(*v0 + 2168);
  v2 = *(*v0 + 2112);
  v3 = (*(*v0 + 2096) << 16) | (*(*v0 + 2100) << 48) | *(*v0 + 113) | (*(*v0 + 114) << 8);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24073CB04()
{
  v1 = *(*v0 + 2176);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24073CBF8()
{
  v1 = *(*v0 + 2184);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073CCF4, 0, 0);
}

uint64_t sub_24073CCF4()
{
  v1 = *(v0 + 1864) + *(v0 + 116);
  sub_2406EA500(v0 + 16);
  v2 = *(v0 + 1816);
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1825);
  v5 = *(v0 + 1832);
  v7 = *(v1 + 16);
  v6 = *(v1 + 32);
  *(v0 + 952) = *v1;
  *(v0 + 968) = v7;
  *(v0 + 984) = v6;
  v9 = *(v1 + 64);
  v8 = *(v1 + 80);
  v10 = *(v1 + 48);
  *(v0 + 1048) = *(v1 + 96);
  *(v0 + 1016) = v9;
  *(v0 + 1032) = v8;
  *(v0 + 1000) = v10;
  sub_2406EA500(v0 + 952);
  v11 = 256;
  if (!v4)
  {
    v11 = 0;
  }

  *v1 = v2;
  *(v1 + 8) = v11 | v3;
  *(v1 + 16) = v5;
  *(v1 + 72) = 0x6000000000000000;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24073CDD4()
{
  v1 = *(*v0 + 2192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073C594, 0, 0);
}

uint64_t sub_24073CED0()
{
  v1 = *(*v0 + 2200);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24073CFC4()
{
  v1 = *(*v0 + 2208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073D0C0, 0, 0);
}

uint64_t sub_24073D0C0()
{
  v1 = *(v0 + 1864) + *(v0 + 116);
  sub_2406EA500(v0 + 16);
  v2 = *(v0 + 704);
  v3 = *(v0 + 720);
  v4 = *(v0 + 728);
  v5 = *(v0 + 736);
  v6 = *(v0 + 712) & 0x101 | 0xA000000000000000;
  v16 = *(v0 + 672);
  v17 = *(v0 + 640);
  v14 = *(v0 + 688);
  v15 = *(v0 + 656);
  v8 = *(v1 + 16);
  v7 = *(v1 + 32);
  *(v0 + 432) = *v1;
  *(v0 + 448) = v8;
  *(v0 + 464) = v7;
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  v11 = *(v1 + 48);
  *(v0 + 528) = *(v1 + 96);
  *(v0 + 496) = v10;
  *(v0 + 512) = v9;
  *(v0 + 480) = v11;
  sub_2406EA500(v0 + 432);
  *v1 = v17;
  *(v1 + 16) = v15;
  *(v1 + 32) = v16;
  *(v1 + 48) = v14;
  *(v1 + 64) = v2;
  *(v1 + 72) = v6;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24073D1CC()
{
  v1 = *(*v0 + 2216);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24073C594, 0, 0);
}

uint64_t sub_24073D2C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 72);

  *(a2 + 64) = &unk_240783108;
  *(a2 + 72) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInModel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_24073D3C0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[116] = a3;
  v3[115] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BE3F0, &qword_240782B28);
  v3[117] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[118] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x388uLL);

  return MEMORY[0x2822009F8](sub_24073D478, 0, 0);
}

uint64_t sub_24073D478()
{
  v1 = v0[118];
  sub_240745520(v0[116], &v1[*(v0[117] + 28)], type metadata accessor for SignInModel);
  *v1 = 1;
  v2 = swift_task_alloc();
  v0[119] = v2;
  *v2 = v0;
  v2[1] = sub_24073D548;
  v3 = v0[118];
  v4 = v0[115];

  return static AutomaticSetupModelExchange._receiveModelUpdate(_:_:)(v4, (v0 + 2), v3);
}

uint64_t sub_24073D548()
{
  v1 = *(*v0 + 952);
  v2 = *(*v0 + 944);
  v5 = *v0;

  sub_2405B8A50(v2, qword_27E4BE3F0, &qword_240782B28);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t AutomaticSetupModelExchange.processSignInModel.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processSignInModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_24073D6F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 104);

  *(a2 + 96) = &unk_2407830F0;
  *(a2 + 104) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveInitial.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveInitial.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t sub_24073D7F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 120);

  *(a2 + 112) = &unk_2407830E0;
  *(a2 + 120) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveFinished.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveFinished.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_24073D8E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 136);

  *(a2 + 128) = &unk_2407830C8;
  *(a2 + 136) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSetupError.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSetupError.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_24073D9E0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 152);

  *(a2 + 144) = &unk_2407830A8;
  *(a2 + 152) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveDismiss.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

void *AutomaticSetupModelExchange.queue.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveModelUpdate(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22[-v15];
  memcpy(v23, v4, sizeof(v23));
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_240741B78(a1, v12);
  v18 = (*(v9 + 80) + 936) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  memcpy(v19 + 4, v23, 0x388uLL);
  sub_240741BE8(v12, v19 + v18);
  v20 = (v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  sub_240603884(v23, v22);

  sub_240602F08(0, 0, v16, &unk_240782B38, v19);
}

uint64_t sub_24073DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[118] = a7;
  v7[117] = a6;
  v7[116] = a5;
  v7[115] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v7[119] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[120] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8CA0, &qword_240768DE0);
  v7[121] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[122] = swift_task_alloc();
  v12 = *(*(type metadata accessor for SetupModel() - 8) + 64) + 15;
  v7[123] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24073DE74, 0, 0);
}

uint64_t sub_24073DE74()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 928);
  memcpy((v0 + 16), *(v0 + 920), 0x388uLL);
  v4 = *(v3 + 8);
  *(v0 + 1000) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  sub_240745520(v3 + *(v5 + 32), &v1[*(v2 + 28)], type metadata accessor for SetupModel);
  *v1 = v4;
  v6 = swift_task_alloc();
  *(v0 + 992) = v6;
  *v6 = v0;
  v6[1] = sub_24073DF7C;
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);

  return sub_240731C20(v7, v8);
}

uint64_t sub_24073DF7C()
{
  v1 = *(*v0 + 992);
  v2 = *(*v0 + 976);
  v4 = *v0;

  sub_2405B8A50(v2, &qword_27E4B8CA0, &qword_240768DE0);

  return MEMORY[0x2822009F8](sub_24073E0A4, 0, 0);
}

uint64_t sub_24073E0A4()
{
  if (*(v0 + 1000) == 1)
  {
    v1 = *(v0 + 960);
    v2 = *(v0 + 944);
    v3 = *(v0 + 936);
    v4 = **(v0 + 928);
    sub_240745520(*(v0 + 984), v1 + *(*(v0 + 952) + 32), type metadata accessor for SetupModel);
    v5 = sub_2407316C4(&qword_27E4BB860, &unk_2407749A0);
    *v1 = v4;
    v1[1] = v5;
    v3(v1);
    sub_2405B8A50(v1, &qword_27E4BB870, &qword_2407831A0);
  }

  v6 = *(v0 + 976);
  v7 = *(v0 + 960);
  sub_240745588(*(v0 + 984), type metadata accessor for SetupModel);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24073E1D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 176);

  *(a2 + 168) = &unk_240783088;
  *(a2 + 176) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateDiscovered.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateDiscovered.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t sub_24073E2CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_24073E304, 0, 0);
}

uint64_t sub_24073E304()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 33);
  v4 = *(v0 + 64);
  if (v4 >= 0xA0)
  {
    v3 = 1;
  }

  v5 = *v1;
  *(v2 + 16) = *(v1 + 16);
  *v2 = v5;
  *(v2 + 17) = v3;
  v6 = *(v1 + 18);
  *(v2 + 32) = v1[2];
  *(v2 + 18) = v6;
  *(v2 + 48) = v4;
  sub_2406771A8(v0 + 16, v0 + 72);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateDiscovered.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateDiscovered.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 192);

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t sub_24073E42C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 208);

  *(a2 + 200) = &unk_240783068;
  *(a2 + 208) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateDiscovering.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateDiscovering.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 208);

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

uint64_t sub_24073E524(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 48) = *a2;
  *(v2 + 49) = *(a2 + 1);
  *(v2 + 50) = *(a2 + 2);
  *(v2 + 24) = *(a2 + 8);
  *(v2 + 40) = *(a2 + 24);
  *(v2 + 51) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24073E574, 0, 0);
}

uint64_t sub_24073E574()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 50);
  v4 = *(v0 + 49);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 51);
  if (v7 >= 0xA0)
  {
    v4 = *(v0 + 48);
  }

  *v6 = *(v0 + 48);
  *(v6 + 1) = v4;
  *(v6 + 2) = v3;
  *(v6 + 8) = v5;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v7;
  sub_2406771E0(v5, v1, v2, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateDiscovering.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateDiscovering.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 224);

  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return result;
}

uint64_t sub_24073E690(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2405DA4B0;

  return v6();
}

uint64_t sub_24073E778(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 240);

  *(a2 + 232) = &unk_240783050;
  *(a2 + 240) = v5;
  return result;
}

uint64_t sub_24073E7E8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return v5();
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStatePaired.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStatePaired.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 240);

  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_24073E958(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 256);

  *(a2 + 248) = &unk_240783038;
  *(a2 + 256) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateChoosing.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveDiscoveryStateChoosing.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 256);

  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return result;
}

uint64_t sub_24073EA50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 56) = *(a2 + 8);
  *(v2 + 32) = *(a2 + 1);
  *(v2 + 48) = a2[4];
  *(v2 + 57) = *(a2 + 41);
  return MEMORY[0x2822009F8](sub_24073EA94, 0, 0);
}

uint64_t sub_24073EA94()
{
  v1 = *(v0 + 24);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    v4 = v1[6];
    v5 = v3;
    v14 = v2;
    sub_240618C78(v2, v4);
    v1 = *(v0 + 24);
  }

  else
  {
    v14 = 0;
    v4 = 0;
    v3 = 1;
  }

  v6 = *(v0 + 57);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  sub_24067715C(v9, v8, v7);
  sub_2406769C4(v9, v8, v7);
  *v11 = v1;
  *(v11 + 8) = v10;
  *(v11 + 16) = v3;
  *(v11 + 24) = v14;
  *(v11 + 32) = v4;
  *(v11 + 40) = 1;
  *(v11 + 41) = (v3 == 1) & v10 | v6 & 1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateChoosing.getter()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processDiscoveryStateChoosing.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 272);

  *(v2 + 264) = a1;
  *(v2 + 272) = a2;
  return result;
}

uint64_t sub_24073EC40(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 288);

  *(a2 + 280) = &unk_240783020;
  *(a2 + 288) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateInitial.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateInitial.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 288);

  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return result;
}

uint64_t sub_24073ED38(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 304);

  *(a2 + 296) = &unk_240783008;
  *(a2 + 304) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStatePreflightRepair.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStatePreflightRepair.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 304);

  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
  return result;
}

uint64_t sub_24073EE30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24073EE50, 0, 0);
}

uint64_t sub_24073EE50()
{
  sub_240745520(v0[3], v0[2], type metadata accessor for AuthenticationModel.PreflightRepair);
  v1 = v0[1];

  return v1();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStatePreflightRepair.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStatePreflightRepair.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 320);

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return result;
}

uint64_t sub_24073EF4C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 336);

  *(a2 + 328) = &unk_240782FF0;
  *(a2 + 336) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissPreflightRepair.getter()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissPreflightRepair.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 336);

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
  return result;
}

uint64_t sub_24073F044(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 352);

  *(a2 + 344) = &unk_240782FE0;
  *(a2 + 352) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSRP.getter()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSRP.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 352);

  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return result;
}

uint64_t sub_24073F13C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 368);

  *(a2 + 360) = &unk_240782FD0;
  *(a2 + 368) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissSecondFactor.getter()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissSecondFactor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 368);

  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return result;
}

uint64_t sub_24073F234(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 384);

  *(a2 + 376) = &unk_240782FC0;
  *(a2 + 384) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissBasicLoginUI.getter()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissBasicLoginUI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 384);

  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return result;
}

uint64_t sub_24073F32C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 400);

  *(a2 + 392) = &unk_240782FB0;
  *(a2 + 400) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissServerProvidedUI.getter()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateDismissServerProvidedUI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 400);

  *(v2 + 392) = a1;
  *(v2 + 400) = a2;
  return result;
}

uint64_t sub_24073F424(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 416);

  *(a2 + 408) = &unk_240782F98;
  *(a2 + 416) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateBasicLogin.getter()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateBasicLogin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 416);

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t sub_24073F51C(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  v3 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a2 + 96);
  v4 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  v5 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v5;
  return MEMORY[0x2822009F8](sub_24073F55C, 0, 0);
}

uint64_t sub_24073F55C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[3];
  *(v2 + 96) = *(v1 + 96);
  *(v2 + 64) = v4;
  *(v2 + 80) = v3;
  *(v2 + 48) = v5;
  v6 = *v1;
  v7 = v1[2];
  *(v2 + 16) = v1[1];
  *(v2 + 32) = v7;
  *v2 = v6;
  sub_2405AE958((v0 + 2), (v0 + 15));
  v8 = v0[1];

  return v8();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateBasicLogin.getter()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateBasicLogin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 432);

  *(v2 + 424) = a1;
  *(v2 + 432) = a2;
  return result;
}

uint64_t sub_24073F674(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 448);

  *(a2 + 440) = &unk_240782F78;
  *(a2 + 448) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSecondFactor.getter()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSecondFactor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 448);

  *(v2 + 440) = a1;
  *(v2 + 448) = a2;
  return result;
}

uint64_t sub_24073F76C(uint64_t a1, _OWORD *a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  v3 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v3;
  *(v2 + 80) = a2[4];
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_24073F7A4, 0, 0);
}

uint64_t sub_24073F7A4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v1[4];
  v5 = v1[1];
  v4 = v1[2];
  v2[3] = v1[3];
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *v1;
  sub_2405AE9EC((v0 + 2), (v0 + 12));
  v6 = v0[1];

  return v6();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateSecondFactor.getter()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateSecondFactor.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 464);

  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
  return result;
}

uint64_t sub_24073F8AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 480);

  *(a2 + 472) = &unk_240782F58;
  *(a2 + 480) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSecondFactorAlert.getter()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateSecondFactorAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 480);

  *(v2 + 472) = a1;
  *(v2 + 480) = a2;
  return result;
}

uint64_t sub_24073F9A4(uint64_t a1, _OWORD *a2)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  v3 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v3;
  *(v2 + 80) = a2[4];
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_24073F9DC, 0, 0);
}

uint64_t sub_24073F9DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v1[4];
  v5 = v1[1];
  v4 = v1[2];
  v2[3] = v1[3];
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  *v2 = *v1;
  sub_2405AEA24((v0 + 2), (v0 + 12));
  v6 = v0[1];

  return v6();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateSecondFactorAlert.getter()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateSecondFactorAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 496);

  *(v2 + 488) = a1;
  *(v2 + 496) = a2;
  return result;
}

uint64_t sub_24073FAE4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 512);

  *(a2 + 504) = &unk_240782F38;
  *(a2 + 512) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateServerRedirect.getter()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateServerRedirect.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 512);

  *(v2 + 504) = a1;
  *(v2 + 512) = a2;
  return result;
}

uint64_t sub_24073FBDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_24073FC10, 0, 0);
}

uint64_t sub_24073FC10()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  v13 = v0[1];
  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = v2;

  return v13();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateServerRedirect.getter()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateServerRedirect.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 528);

  *(v2 + 520) = a1;
  *(v2 + 528) = a2;
  return result;
}

uint64_t sub_24073FD3C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 544);

  *(a2 + 536) = &unk_240782F18;
  *(a2 + 544) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateNativeRecovery.getter()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 544);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateNativeRecovery.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 544);

  *(v2 + 536) = a1;
  *(v2 + 544) = a2;
  return result;
}

uint64_t sub_24073FE40(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_2407455E8, 0, 0);
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateNativeRecovery.getter()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 560);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateNativeRecovery.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 560);

  *(v2 + 552) = a1;
  *(v2 + 560) = a2;
  return result;
}

uint64_t sub_24073FEFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 576);

  *(a2 + 568) = &unk_240782EF8;
  *(a2 + 576) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateFidoChallenge.getter()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 576);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateFidoChallenge.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 576);

  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
  return result;
}

uint64_t sub_240740000(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  v3 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_24074002C, 0, 0);
}

uint64_t sub_24074002C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  v11 = v0[1];
  v6 = v3;
  v7 = v4;
  v8 = v1;
  v9 = v2;

  return v11();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateFidoChallenge.getter()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 592);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateFidoChallenge.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 592);

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

uint64_t sub_240740148(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 608);

  *(a2 + 600) = &unk_240782ED8;
  *(a2 + 608) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateKeepUsing.getter()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 608);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateKeepUsing.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 608);

  *(v2 + 600) = a1;
  *(v2 + 608) = a2;
  return result;
}

uint64_t sub_24074024C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  *(v2 + 40) = *(a2 + 16);
  *(v2 + 48) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_240740284, 0, 0);
}

uint64_t sub_240740284()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *v3 = v4;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v7 = *(v0 + 8);
  v5 = v4;

  return v7();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateKeepUsing.getter()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 624);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateKeepUsing.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 624);

  *(v2 + 616) = a1;
  *(v2 + 624) = a2;
  return result;
}

uint64_t sub_2407403A0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 640);

  *(a2 + 632) = &unk_240782EB8;
  *(a2 + 640) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateAlert.getter()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 640);

  *(v2 + 632) = a1;
  *(v2 + 640) = a2;
  return result;
}

uint64_t sub_2407404A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2407404C4, 0, 0);
}

uint64_t sub_2407404C4()
{
  sub_240745520(v0[3], v0[2], type metadata accessor for AuthenticationModel.State);
  v1 = v0[1];

  return v1();
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateAlert.getter()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 656);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 656);

  *(v2 + 648) = a1;
  *(v2 + 656) = a2;
  return result;
}

uint64_t sub_2407405C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 672);

  *(a2 + 664) = &unk_240782E98;
  *(a2 + 672) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateLoading.getter()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 672);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveAuthenticationStateLoading.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 672);

  *(v2 + 664) = a1;
  *(v2 + 672) = a2;
  return result;
}

uint64_t sub_2407406CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2407455F4, 0, 0);
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateLoading.getter()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 688);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processAuthenticationStateLoading.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 688);

  *(v2 + 680) = a1;
  *(v2 + 688) = a2;
  return result;
}

uint64_t sub_24074077C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 704);

  *(a2 + 696) = &unk_240782E80;
  *(a2 + 704) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateInitial.getter()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 704);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateInitial.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 704);

  *(v2 + 696) = a1;
  *(v2 + 704) = a2;
  return result;
}

uint64_t sub_240740880(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 720);

  *(a2 + 712) = &unk_240782E68;
  *(a2 + 720) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateShowTerms.getter()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 720);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateShowTerms.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 720);

  *(v2 + 712) = a1;
  *(v2 + 720) = a2;
  return result;
}

uint64_t sub_240740984(uint64_t a1, _OWORD *a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  v4 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v4;
  return MEMORY[0x2822009F8](sub_2407409B4, 0, 0);
}

uint64_t sub_2407409B4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v2[2] = v1[2];
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  sub_2406E902C((v0 + 2), (v0 + 10));
  v6 = v0[1];

  return v6();
}

uint64_t AutomaticSetupModelExchange.processSignInStateShowTerms.getter()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 736);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processSignInStateShowTerms.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 736);

  *(v2 + 728) = a1;
  *(v2 + 736) = a2;
  return result;
}

uint64_t sub_240740ABC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 752);

  *(a2 + 744) = &unk_240782E50;
  *(a2 + 752) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateDismissTerms.getter()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 752);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateDismissTerms.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 752);

  *(v2 + 744) = a1;
  *(v2 + 752) = a2;
  return result;
}

uint64_t sub_240740BC0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 768);

  *(a2 + 760) = &unk_240782E40;
  *(a2 + 768) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateSigningIn.getter()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 768);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateSigningIn.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 768);

  *(v2 + 760) = a1;
  *(v2 + 768) = a2;
  return result;
}

uint64_t sub_240740CC4(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2405CE450;

  return v8(a2);
}

uint64_t sub_240740DB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 784);

  *(a2 + 776) = &unk_240782E28;
  *(a2 + 784) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateShowFindMy.getter()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 784);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateShowFindMy.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 784);

  *(v2 + 776) = a1;
  *(v2 + 784) = a2;
  return result;
}

uint64_t sub_240740EBC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 40) = *(a2 + 8);
  *(v2 + 41) = *(a2 + 9);
  *(v2 + 32) = a2[2];
  return MEMORY[0x2822009F8](sub_240740EF8, 0, 0);
}

uint64_t sub_240740EF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 41);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  *v5 = v1;
  *(v5 + 8) = v4;
  *(v5 + 9) = v3;
  *(v5 + 16) = v2;
  v9 = *(v0 + 8);
  v6 = v1;
  v7 = v2;

  return v9();
}

uint64_t AutomaticSetupModelExchange.processSignInStateShowFindMy.getter()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 800);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processSignInStateShowFindMy.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 800);

  *(v2 + 792) = a1;
  *(v2 + 800) = a2;
  return result;
}

uint64_t sub_240741010(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 816);

  *(a2 + 808) = &unk_240782E10;
  *(a2 + 816) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateDismissFindMy.getter()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 816);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateDismissFindMy.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 816);

  *(v2 + 808) = a1;
  *(v2 + 816) = a2;
  return result;
}

uint64_t sub_240741114(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4, int *a5)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v14 = (a5 + *a5);
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2405DA4B0;

  return v14(v6, v7, v8, v9, v10);
}

uint64_t sub_240741230(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 832);

  *(a2 + 824) = &unk_240782DF8;
  *(a2 + 832) = v5;
  return result;
}

uint64_t sub_2407412A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 32) = a3;
  *(v6 + 24) = a2;
  *(v6 + 40) = a4;
  *(v6 + 56) = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_2405D3110;

  return v10();
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateAlert.getter()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 832);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 832);

  *(v2 + 824) = a1;
  *(v2 + 832) = a2;
  return result;
}

uint64_t sub_24074146C(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4, int *a5)
{
  *(v5 + 16) = a1;
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = a3[1];
  v10 = *a4;
  v14 = (a5 + *a5);
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_2405C1C40;

  return v14(v6, v7, v8, v9, v10);
}

uint64_t sub_24074158C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 848);

  *(a2 + 840) = &unk_240782DD8;
  *(a2 + 848) = v5;
  return result;
}

uint64_t sub_240741600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 32) = a3;
  *(v6 + 24) = a2;
  *(v6 + 40) = a4;
  *(v6 + 56) = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_240741728;

  return v10(v6 + 57, v6 + 16, v6 + 32, v6 + 56);
}

uint64_t sub_240741728()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 57);
  v4 = *(v6 + 8);

  return v4(v3);
}

uint64_t AutomaticSetupModelExchange.processSignInStateAlert.getter()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 848);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processSignInStateAlert.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 848);

  *(v2 + 840) = a1;
  *(v2 + 848) = a2;
  return result;
}

uint64_t sub_2407418B0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 864);

  *(a2 + 856) = &unk_240782DB8;
  *(a2 + 864) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateFamilyRepair.getter()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 864);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateFamilyRepair.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 864);

  *(v2 + 856) = a1;
  *(v2 + 864) = a2;
  return result;
}

uint64_t sub_2407419B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  v3 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a2 + 96);
  v4 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  v5 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v5;
  return MEMORY[0x2822009F8](sub_2407419F4, 0, 0);
}

uint64_t sub_2407419F4()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[3];
  *(v2 + 96) = *(v1 + 96);
  *(v2 + 64) = v4;
  *(v2 + 80) = v3;
  *(v2 + 48) = v5;
  v6 = *v1;
  v7 = v1[2];
  *(v2 + 16) = v1[1];
  *(v2 + 32) = v7;
  *v2 = v6;
  sub_24065F6F4((v0 + 2), (v0 + 15));
  v8 = v0[1];

  return v8();
}

uint64_t AutomaticSetupModelExchange.processSignInStateFamilyRepair.getter()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 880);

  return v1;
}

uint64_t AutomaticSetupModelExchange.processSignInStateFamilyRepair.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 880);

  *(v2 + 872) = a1;
  *(v2 + 880) = a2;
  return result;
}

uint64_t sub_240741B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240741B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240741BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240741C58(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0) - 8);
  v6 = (*(v5 + 80) + 936) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_24073DD60(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_240741D9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 896);

  *(a2 + 888) = &unk_240782D98;
  *(a2 + 896) = v5;
  return result;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateFinished.getter()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 896);

  return v1;
}

uint64_t AutomaticSetupModelExchange.receiveSignInStateFinished.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 896);

  *(v2 + 888) = a1;
  *(v2 + 896) = a2;
  return result;
}

uint64_t sub_240741EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22[-v15];
  memcpy(v23, v4, sizeof(v23));
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_240741B78(a1, v12);
  v18 = (*(v9 + 80) + 936) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  memcpy(v19 + 4, v23, 0x388uLL);
  sub_240741BE8(v12, v19 + v18);
  v20 = (v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  sub_240603884(v23, v22);

  sub_240602F08(0, 0, v16, &unk_240783160, v19);
}

uint64_t sub_2407420BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 904))
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

uint64_t sub_240742104(uint64_t result, int a2, int a3)
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 888) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 904) = 1;
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

    *(result + 904) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240742240(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2407422C0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24074244C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_2407426AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2405DA4B0;

  return sub_24073E7E8(v2);
}

uint64_t sub_240742758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_24073E690(a1, v5);
}

uint64_t sub_240742810(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407428C4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_24074298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2405CE5D8;

  return sub_240741600(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_240742A70(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2405DA4B0;

  return sub_24074146C(a1, a2, a3, a4, v11);
}

uint64_t sub_240742B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2405DA4B0;

  return sub_2407412A4(a1, a2, a3, a4, a5, v13);
}

uint64_t sub_240742C34(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2405DA4B0;

  return sub_240741114(a1, a2, a3, a4, v11);
}

uint64_t sub_240742D14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240742DC8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405CE450;

  return sub_240740CC4(a1, a2, v7);
}

uint64_t sub_240742E90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240742F44(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_24074300C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407430C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743188(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v7);
}

uint64_t sub_24074324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240735F04(a1, a2, a3, v9);
}

uint64_t sub_24074331C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407433D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743498(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_24074354C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743614(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407436C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240743844(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_24074390C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407439C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743A88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240743B3C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743C04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240743CB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743D80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240743E34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240743EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240743FB0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240744078(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_24074412C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_2407441F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_2407442A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_240744370(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return sub_240603C28(a1, v5);
}

uint64_t sub_240744424(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240603AC0(a1, a2, v7);
}

uint64_t sub_2407444EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v7);
}

uint64_t sub_2407445B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240735F04(a1, a2, a3, v9);
}

uint64_t sub_240744680(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v7);
}

uint64_t sub_240744744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240735F04(a1, a2, a3, v9);
}

uint64_t sub_240744814(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v7);
}

uint64_t sub_2407448D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240735F04(a1, a2, a3, v9);
}

uint64_t sub_2407449A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return sub_240604128(a1, a2, v7);
}

uint64_t sub_240744A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return sub_240735F04(a1, a2, a3, v9);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v155 = *(*(v1 - 8) + 80);
  v152 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  v12 = *(v0 + 184);

  v13 = *(v0 + 208);

  v14 = *(v0 + 224);

  v15 = *(v0 + 240);

  v16 = *(v0 + 256);

  v17 = *(v0 + 272);

  v18 = *(v0 + 288);

  v19 = *(v0 + 304);

  v20 = *(v0 + 320);

  v21 = *(v0 + 336);

  v22 = *(v0 + 352);

  v23 = *(v0 + 368);

  v24 = *(v0 + 384);

  v25 = *(v0 + 400);

  v26 = *(v0 + 416);

  v27 = *(v0 + 432);

  v28 = *(v0 + 448);

  v29 = *(v0 + 464);

  v30 = *(v0 + 480);

  v31 = *(v0 + 496);

  v32 = *(v0 + 512);

  v33 = *(v0 + 528);

  v34 = *(v0 + 544);

  v35 = *(v0 + 560);

  v36 = *(v0 + 576);

  v37 = *(v0 + 592);

  v38 = *(v0 + 608);

  v39 = *(v0 + 624);

  v40 = *(v0 + 640);

  v41 = *(v0 + 656);

  v42 = *(v0 + 672);

  v43 = *(v0 + 688);

  v44 = *(v0 + 704);

  v45 = *(v0 + 720);

  v46 = *(v0 + 736);

  v47 = *(v0 + 752);

  v48 = *(v0 + 768);

  v49 = *(v0 + 784);

  v50 = *(v0 + 800);

  v51 = *(v0 + 816);

  v52 = *(v0 + 832);

  v53 = *(v0 + 848);

  v54 = *(v0 + 864);

  v55 = *(v0 + 880);

  v56 = *(v0 + 896);

  v57 = *(v0 + 912);

  v58 = *(v0 + 928);

  v153 = (v155 + 936) & ~v155;
  v154 = v1;
  v59 = v0 + v153 + *(v1 + 32);
  sub_240604AB8(*(v59 + 8), *(v59 + 16), *(v59 + 24), *(v59 + 32) | ((*(v59 + 36) | (*(v59 + 38) << 16)) << 32));
  v60 = *(v59 + 88);
  if (v60 <= 0xF9)
  {
    sub_2405AEA70(*(v59 + 40), *(v59 + 48), *(v59 + 56), *(v59 + 64), *(v59 + 72), *(v59 + 80), v60);
  }

  v61 = *(v59 + 112);

  v62 = *(v59 + 128);

  v63 = *(v59 + 160);

  sub_240604AE0(*(v59 + 184), *(v59 + 192), *(v59 + 200), *(v59 + 208));
  v64 = *(v59 + 216);

  v65 = *(v59 + 224);

  sub_240604AE0(*(v59 + 240), *(v59 + 248), *(v59 + 256), *(v59 + 264));
  v66 = *(v59 + 272);

  v67 = *(v59 + 288);
  if (v67 != 1)
  {

    v68 = *(v59 + 304);
    if (v68 >> 60 != 15)
    {
      sub_2405BCD98(*(v59 + 296), v68);
    }
  }

  if (*(v59 + 328))
  {

    v69 = *(v59 + 336);

    v70 = *(v59 + 344);
  }

  v71 = *(v59 + 360);

  v72 = *(v59 + 376);

  v73 = type metadata accessor for SetupModel();
  v74 = (v59 + *(v73 + 36));
  v75 = type metadata accessor for IdMSAccount();
  v76 = *(*(v75 - 1) + 48);
  if (!v76(v74, 1, v75))
  {
    v77 = *(v74 + 1);

    v78 = *(v74 + 3);

    v79 = *(v74 + 5);

    v80 = *(v74 + 7);

    v81 = *(v74 + 9);

    v82 = v75[5];
    v83 = sub_2407595A4();
    (*(*(v83 - 8) + 8))(&v74[v82], v83);
    v84 = &v74[v75[6]];
    v146 = v84[18];
    v149 = v84[19];
    sub_240604B08(*v84, v84[1], v84[2], v84[3], v84[4], v84[5], v84[6], v84[7], v84[8], v84[9], v84[10], v84[11], v84[12], v84[13], v84[14], v84[15], v84[16], v84[17]);
    v85 = *&v74[v75[7]];

    v86 = &v74[v75[8]];
    if (*v86 != 1)
    {
    }
  }

  v87 = type metadata accessor for AuthenticationModel(0);
  v88 = &v74[v87[5]];
  if (*(v88 + 1))
  {

    v89 = *(v88 + 3);

    v90 = *(v88 + 5);

    v91 = *(v88 + 7);

    v92 = *(v88 + 9);
  }

  v93 = *&v74[v87[7] + 8];

  v94 = *&v74[v87[8]];

  v95 = &v74[v87[10]];
  type metadata accessor for AuthenticationModel.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v97 = *(v95 + 1);

      v98 = *(v95 + 3);

      v99 = *(v95 + 5);

      v100 = *(v95 + 7);

      v101 = *(v95 + 9);

      v102 = v75[5];
      v103 = sub_2407595A4();
      (*(*(v103 - 8) + 8))(&v95[v102], v103);
      v104 = &v95[v75[6]];
      v147 = v104[18];
      v150 = v104[19];
      sub_240604B08(*v104, v104[1], v104[2], v104[3], v104[4], v104[5], v104[6], v104[7], v104[8], v104[9], v104[10], v104[11], v104[12], v104[13], v104[14], v104[15], v104[16], v104[17]);
      v105 = *&v95[v75[7]];

      v106 = &v95[v75[8]];
      if (*v106 != 1)
      {
      }

      break;
    case 2u:
    case 3u:
      v107 = *(v95 + 1);

      v108 = *(v95 + 3);

      v109 = *(v95 + 6);

      v110 = v95[96];
      if (v110 != 255)
      {
        sub_2405B0558(*(v95 + 8), *(v95 + 9), *(v95 + 10), *(v95 + 11), v110);
      }

      break;
    case 4u:
    case 5u:
    case 6u:

      if (*(v95 + 5) != 1)
      {

        v96 = *(v95 + 7);
      }

      break;
    case 7u:
    case 8u:

      break;
    case 9u:
    case 0xAu:

      break;
    case 0xBu:

      v112 = *(v95 + 2);

      break;
    case 0xCu:
    case 0xDu:
      v111 = *v95;

      break;
    default:
      break;
  }

  v113 = &v74[v87[11]];
  if (*v113)
  {
    v114 = *(v113 + 1);
  }

  v115 = (v59 + *(v73 + 40));
  if (!v76(v115, 1, v75))
  {
    v116 = *(v115 + 1);

    v117 = *(v115 + 3);

    v118 = *(v115 + 5);

    v119 = *(v115 + 7);

    v120 = *(v115 + 9);

    v121 = v75[5];
    v122 = sub_2407595A4();
    (*(*(v122 - 8) + 8))(&v115[v121], v122);
    v123 = &v115[v75[6]];
    v148 = v123[18];
    v151 = v123[19];
    sub_240604B08(*v123, v123[1], v123[2], v123[3], v123[4], v123[5], v123[6], v123[7], v123[8], v123[9], v123[10], v123[11], v123[12], v123[13], v123[14], v123[15], v123[16], v123[17]);
    v124 = *&v115[v75[7]];

    v125 = &v115[v75[8]];
    if (*v125 != 1)
    {
    }
  }

  v126 = type metadata accessor for SignInModel();
  v127 = &v115[v126[5]];
  if (*(v127 + 1))
  {

    v128 = *(v127 + 3);

    v129 = *(v127 + 5);

    v130 = *(v127 + 7);

    v131 = *(v127 + 9);

    v132 = *(v127 + 11);
    if (v132 >> 60 != 15)
    {
      sub_2405BCD98(*(v127 + 10), v132);
    }
  }

  v133 = *&v115[v126[6]];

  v134 = *&v115[v126[7]];

  v135 = &v115[v126[10]];
  if (*(v135 + 1))
  {

    v136 = *(v135 + 2);

    v137 = *(v135 + 3);
  }

  v138 = (v152 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v139 = *&v115[v126[11] + 8];

  v140 = *&v115[v126[14] + 8];

  sub_240604C7C(*&v115[v126[16]], *&v115[v126[16] + 8], v115[v126[16] + 16]);
  v141 = *&v115[v126[17] + 8];

  v142 = &v115[v126[19]];
  sub_240604C90(*v142, *(v142 + 1), *(v142 + 2), *(v142 + 3), *(v142 + 4), *(v142 + 5), *(v142 + 6), *(v142 + 7), *(v142 + 8), *(v142 + 9), *(v142 + 10), *(v142 + 11), v142[96]);
  v143 = *(v0 + v153 + *(v154 + 36));

  v144 = *(v0 + v138 + 8);

  return MEMORY[0x2821FE8E8](v0, v138 + 16, v155 | 7);
}

uint64_t sub_2407454B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_240745520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240745588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2407455F8(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v64 = result + 56;
  v65 = result;
  v63 = v8;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v66 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 96 * (v10 | (v3 << 6)));
    v14 = v13[1];
    v76[0] = *v13;
    v76[1] = v14;
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[2];
    *&v77[9] = *(v13 + 73);
    v76[3] = v16;
    *v77 = v15;
    v76[2] = v17;
    v18 = *(v2 + 40);
    sub_24075AE64();
    v20 = *(&v76[0] + 1);
    v19 = *&v76[0];
    v21 = *&v77[16];
    sub_2405F1048(v76, v74);
    v72 = v20;
    sub_24075A114();
    v67 = v3;
    if (v21 <= 1)
    {
      if (!v21)
      {
        v22 = 0;
        goto LABEL_24;
      }

      if (v21 == 1)
      {
        v22 = 1;
        goto LABEL_24;
      }
    }

    else
    {
      switch(v21)
      {
        case 2:
          v22 = 2;
          goto LABEL_24;
        case 3:
          v22 = 3;
          goto LABEL_24;
        case 4:
          v22 = 5;
LABEL_24:
          MEMORY[0x245CC6BA0](v22);
LABEL_25:
          v23 = v77[24];
          sub_24075AE94();
          v24 = sub_24075AED4();
          v25 = -1 << *(v2 + 32);
          v26 = v24 & ~v25;
          if ((*(v9 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
          {
            v71 = ~v25;
            v70 = v21 + 56;
            do
            {
              v28 = (*(v2 + 48) + 96 * v26);
              v29 = v28[1];
              v74[0] = *v28;
              v74[1] = v29;
              v31 = v28[3];
              v30 = v28[4];
              v32 = v28[2];
              *&v75[9] = *(v28 + 73);
              v74[3] = v31;
              *v75 = v30;
              v74[2] = v32;
              if (v74[0] != __PAIR128__(v72, v19) && (sub_24075ACF4() & 1) == 0)
              {
                goto LABEL_29;
              }

              v33 = *&v75[16];
              if (*&v75[16] <= 1)
              {
                if (!*&v75[16])
                {
                  if (v21)
                  {
                    sub_240669184(v21);
                    v27 = 0;
                    goto LABEL_28;
                  }

                  sub_2405F1048(v74, v73);
                  result = 0;
                  v34 = 0;
                  goto LABEL_56;
                }

                if (*&v75[16] == 1)
                {
                  if (v21 != 1)
                  {
                    sub_240669184(v21);
                    v27 = 1;
                    goto LABEL_28;
                  }

                  sub_2405F1048(v74, v73);
                  result = 1;
                  v34 = 1;
                  goto LABEL_56;
                }
              }

              else
              {
                switch(*&v75[16])
                {
                  case 2:
                    if (v21 != 2)
                    {
                      sub_240669184(v21);
                      v27 = 2;
                      goto LABEL_28;
                    }

                    sub_2405F1048(v74, v73);
                    result = 2;
                    v34 = 2;
                    goto LABEL_56;
                  case 3:
                    if (v21 != 3)
                    {
                      sub_240669184(v21);
                      v27 = 3;
                      goto LABEL_28;
                    }

                    sub_2405F1048(v74, v73);
                    result = 3;
                    v34 = 3;
                    goto LABEL_56;
                  case 4:
                    if (v21 != 4)
                    {
                      sub_240669184(v21);
                      v27 = 4;
                      goto LABEL_28;
                    }

                    sub_2405F1048(v74, v73);
                    result = 4;
                    v34 = 4;
                    goto LABEL_56;
                }
              }

              if (v21 < 5)
              {
                goto LABEL_27;
              }

              if (*&v75[16] == v21)
              {
                sub_2405F1048(v74, v73);
                sub_240669184(v21);
                sub_240669184(v21);
                result = v21;
                v34 = v21;
LABEL_56:
                sub_240669194(result);
                sub_240669194(v34);
                v35 = v75[24];
                sub_2405F10A4(v74);
                if (v35 == v23)
                {
                  sub_2405F10A4(v76);
                  v4 = v64;
                  result = v65;
                  v7 = v66;
                  v3 = v67;
                  v8 = v63;
                  if (v66)
                  {
                    goto LABEL_7;
                  }

                  goto LABEL_8;
                }

                goto LABEL_29;
              }

              if (*(*&v75[16] + 16) != *(v21 + 16))
              {
LABEL_27:
                sub_240669184(v21);
                sub_240669184(v33);
                v27 = v33;
LABEL_28:
                sub_240669194(v27);
                sub_240669194(v21);
                goto LABEL_29;
              }

              v59 = v2;
              v57 = *&v75[16] + 56;
              v36 = 1 << *(*&v75[16] + 32);
              if (v36 < 64)
              {
                v37 = ~(-1 << v36);
              }

              else
              {
                v37 = -1;
              }

              v38 = v37 & *(*&v75[16] + 56);
              sub_2405F1048(v74, v73);
              sub_240669184(v21);
              v69 = v33;
              sub_240669184(v33);
              v39 = 0;
              v40 = (v36 + 63) >> 6;
              v58 = v40;
              v61 = v9;
              v60 = v23;
              result = v33;
              if (!v38)
              {
LABEL_64:
                v42 = v39;
                v2 = v59;
                while (1)
                {
                  v39 = v42 + 1;
                  if (__OFADD__(v42, 1))
                  {
                    goto LABEL_91;
                  }

                  if (v39 >= v40)
                  {
                    v34 = v21;
                    goto LABEL_56;
                  }

                  v43 = *(v57 + 8 * v39);
                  ++v42;
                  if (v43)
                  {
                    v41 = __clz(__rbit64(v43));
                    v62 = (v43 - 1) & v43;
                    goto LABEL_69;
                  }
                }
              }

              while (1)
              {
                v41 = __clz(__rbit64(v38));
                v62 = (v38 - 1) & v38;
LABEL_69:
                v44 = *(*(result + 48) + 8 * (v41 | (v39 << 6)));
                v45 = *(v21 + 40);
                sub_24075A0B4();
                sub_24075AE64();
                v68 = v44;
                sub_24075A114();
                v46 = sub_24075AED4();

                v47 = -1 << *(v21 + 32);
                v48 = v46 & ~v47;
                if (((*(v70 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                {
                  break;
                }

                v49 = ~v47;
                while (1)
                {
                  v50 = *(*(v21 + 48) + 8 * v48);
                  v51 = sub_24075A0B4();
                  v53 = v52;
                  if (v51 == sub_24075A0B4() && v53 == v54)
                  {

                    goto LABEL_80;
                  }

                  v56 = sub_24075ACF4();

                  if (v56)
                  {
                    break;
                  }

                  v48 = (v48 + 1) & v49;
                  if (((*(v70 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                  {
                    goto LABEL_82;
                  }
                }

LABEL_80:
                v9 = v61;
                v38 = v62;
                v23 = v60;
                v40 = v58;
                result = v69;
                if (!v62)
                {
                  goto LABEL_64;
                }
              }

LABEL_82:

              sub_240669194(v69);
              sub_240669194(v21);
              sub_2405F10A4(v74);
              v2 = v59;
              v9 = v61;
              v23 = v60;
LABEL_29:
              v26 = (v26 + 1) & v71;
            }

            while (((*(v9 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
          }

          sub_2405F10A4(v76);
          return 0;
      }
    }

    MEMORY[0x245CC6BA0](4);
    sub_2405F115C(v73, v21);
    goto LABEL_25;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v66 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_240745CD0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = v8;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_24075A0B4();
      sub_24075AE64();
      v29 = v13;
      sub_24075A114();
      v15 = sub_24075AED4();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = sub_24075A0B4();
        v22 = v21;
        if (v20 == sub_24075A0B4() && v22 == v23)
        {

          goto LABEL_24;
        }

        v25 = sub_24075ACF4();

        if (v25)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v26;
      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_240745F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v154 - v10);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v154 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v16 = 0;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v176 = a2;
  v173 = v11;
  v174 = a2 + 56;
  v172 = v4;
  if (!v20)
  {
    goto LABEL_8;
  }

  do
  {
    v156 = v21;
    v157 = v17;
    v22 = __clz(__rbit64(v20));
    v155 = (v20 - 1) & v20;
LABEL_13:
    v158 = v16;
    v160 = v13;
    v161 = a1;
    v25 = *(v13 + 72);
    sub_240753A68(*(a1 + 48) + v25 * (v22 | (v16 << 6)), v15, type metadata accessor for IdMSAccount);
    v159 = v15;
    sub_240753AD0(v15, v11, type metadata accessor for IdMSAccount);
    v26 = v176;
    v27 = *(v176 + 40);
    sub_24075AE64();
    IdMSAccount.hash(into:)(v214);
    v28 = sub_24075AED4();
    v29 = -1 << *(v26 + 32);
    v30 = v28 & ~v29;
    v31 = v174;
    if (((*(v174 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
LABEL_139:
      sub_240753B38(v11, type metadata accessor for IdMSAccount);
      return 0;
    }

    v32 = ~v29;
    v33 = *v11;
    v178 = v11[1];
    v179 = v33;
    v175 = v25;
    v177 = ~v29;
    while (1)
    {
      sub_240753A68(*(v26 + 48) + v30 * v25, v8, type metadata accessor for IdMSAccount);
      v34 = *v8 == v179 && v8[1] == v178;
      if (!v34 && (sub_24075ACF4() & 1) == 0)
      {
        goto LABEL_18;
      }

      v35 = v4[5];
      if ((sub_240759584() & 1) == 0)
      {
        goto LABEL_18;
      }

      v36 = (v8 + v4[6]);
      v37 = v36[3];
      v38 = v36[5];
      v198 = v36[4];
      v199 = v38;
      v39 = v36[3];
      v40 = v36[1];
      v196 = v36[2];
      v197 = v39;
      v41 = v36[7];
      v42 = v36[9];
      v202 = v36[8];
      v203 = v42;
      v43 = v36[7];
      v44 = v36[5];
      v200 = v36[6];
      v201 = v43;
      v45 = v36[1];
      v195[0] = *v36;
      v195[1] = v45;
      v46 = (v11 + v4[6]);
      v47 = v46[7];
      v48 = v46[5];
      v210 = v46[6];
      v211 = v47;
      v49 = v46[7];
      v50 = v46[9];
      v212 = v46[8];
      v213 = v50;
      v51 = v46[3];
      v52 = v46[1];
      v206 = v46[2];
      v207 = v51;
      v53 = v46[3];
      v54 = v46[5];
      v208 = v46[4];
      v209 = v54;
      v55 = v46[1];
      v204 = *v46;
      v205 = v55;
      v56 = v36[7];
      v214[6] = v36[6];
      v214[7] = v56;
      v57 = v36[9];
      v214[8] = v36[8];
      v214[9] = v57;
      v58 = v36[3];
      v214[2] = v36[2];
      v214[3] = v58;
      v59 = v36[5];
      v214[4] = v36[4];
      v214[5] = v59;
      v60 = v36[1];
      v214[0] = *v36;
      v214[1] = v60;
      v214[16] = v210;
      v214[17] = v49;
      v61 = v46[9];
      v214[18] = v212;
      v214[19] = v61;
      v214[12] = v206;
      v214[13] = v53;
      v214[14] = v208;
      v214[15] = v48;
      v214[10] = v204;
      v214[11] = v52;
      v215[6] = v200;
      v215[7] = v41;
      v62 = v36[9];
      v215[8] = v202;
      v215[9] = v62;
      v215[2] = v196;
      v215[3] = v37;
      v215[4] = v198;
      v215[5] = v44;
      v215[0] = v195[0];
      v215[1] = v40;
      v63 = sub_240618940(v215);
      if (v63 <= 1)
      {
        if (v63)
        {
          v101 = sub_24057D704(v215);
          v191 = v210;
          v192 = v211;
          v193 = v212;
          v194 = v213;
          v187 = v206;
          v188 = v207;
          v189 = v208;
          v190 = v209;
          v185 = v204;
          v186 = v205;
          if (sub_240618940(&v185) != 1)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            goto LABEL_17;
          }

          v102 = sub_24057D704(&v185);
          v103 = *v101;
          v104 = *(v101 + 8);
          v105 = *(v101 + 16);
          v106 = *(v101 + 24);
          v107 = *(v101 + 32);
          v170 = *(v101 + 40);
          v171 = v107;
          v108 = *(v101 + 48);
          v166 = *(v101 + 56);
          v167 = v108;
          v109 = *(v101 + 64);
          v110 = *v102;
          v111 = *(v102 + 8);
          v112 = *(v102 + 16);
          v113 = *(v102 + 24);
          v114 = *(v102 + 32);
          v168 = *(v102 + 40);
          v169 = v114;
          v115 = *(v102 + 56);
          v165 = *(v102 + 48);
          v163 = v109;
          v164 = v115;
          v162 = *(v102 + 64);
          if ((v103 != v110 || v104 != v111) && (sub_24075ACF4() & 1) == 0 || (v105 != v112 || v106 != v113) && (sub_24075ACF4() & 1) == 0 || (v171 != v169 || v170 != v168) && (sub_24075ACF4() & 1) == 0)
          {
            goto LABEL_86;
          }

          v25 = v175;
          v26 = v176;
          v4 = v172;
          v11 = v173;
          if ((v167 != v165 || v166 != v164) && (sub_24075ACF4() & 1) == 0 || v163 != v162)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
LABEL_100:
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
LABEL_117:
            v31 = v174;
LABEL_17:
            v32 = v177;
            goto LABEL_18;
          }

          v116 = *(v101 + 88);
          v117 = *(v101 + 120);
          v182[2] = *(v101 + 104);
          v182[3] = v117;
          v183 = *(v101 + 136);
          v182[0] = *(v101 + 72);
          v182[1] = v116;
          v118 = *(v102 + 88);
          v119 = *(v102 + 120);
          v180[2] = *(v102 + 104);
          v180[3] = v119;
          v181 = *(v102 + 136);
          v180[0] = *(v102 + 72);
          v180[1] = v118;
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);
          if ((_s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(v182, v180) & 1) == 0)
          {
            goto LABEL_100;
          }

          if (*(v101 + 144) == *(v102 + 144) && *(v101 + 152) == *(v102 + 152))
          {
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v31 = v174;
          }

          else
          {
            v153 = sub_24075ACF4();
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v31 = v174;
            if ((v153 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          v68 = sub_24057D704(v215);
          v70 = *v68;
          v69 = v68[1];
          v71 = v68[3];
          v170 = v68[2];
          v171 = v69;
          v72 = v68[4];
          v73 = v68[5];
          v75 = v68[6];
          v74 = v68[7];
          v76 = v68[8];
          v191 = v210;
          v192 = v211;
          v193 = v212;
          v194 = v213;
          v189 = v208;
          v190 = v209;
          v187 = v206;
          v188 = v207;
          v185 = v204;
          v186 = v205;
          if (sub_240618940(&v185))
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v4 = v172;
            v11 = v173;
            v31 = v174;
            v25 = v175;
            v26 = v176;
            v32 = v177;
            goto LABEL_18;
          }

          v168 = v72;
          v169 = v71;
          v120 = v170;
          v166 = v76;
          v167 = v73;
          v164 = v74;
          v165 = v75;
          v121 = sub_24057D704(&v185);
          v122 = *v121;
          v123 = v121[1];
          v124 = v121[2];
          v125 = v121[3];
          v127 = v121[4];
          v126 = v121[5];
          v128 = v121[7];
          v163 = v121[6];
          v129 = v121[8];
          if (v70 != v122 || v171 != v123)
          {
            v130 = v124;
            v131 = v125;
            v132 = sub_24075ACF4();
            v125 = v131;
            v124 = v130;
            if ((v132 & 1) == 0)
            {
              sub_240618498(&v204, v184);
              sub_240618498(v195, v184);
              sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
              v25 = v175;
              v26 = v176;
              v4 = v172;
              v11 = v173;
              v31 = v174;
              v32 = v177;
              goto LABEL_18;
            }
          }

          if ((v120 != v124 || v169 != v125) && (sub_24075ACF4() & 1) == 0)
          {
LABEL_86:
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v25 = v175;
            v26 = v176;
            v4 = v172;
            v11 = v173;
            goto LABEL_117;
          }

          v133 = v129;
          v11 = v173;
          v25 = v175;
          if ((v168 != v127 || v167 != v126) && (sub_24075ACF4() & 1) == 0)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v26 = v176;
            v4 = v172;
            goto LABEL_117;
          }

          v134 = v128;
          v31 = v174;
          if (v165 == v163 && v164 == v134)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v135 = v166;
          }

          else
          {
            v146 = sub_24075ACF4();
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v135 = v166;
            if ((v146 & 1) == 0)
            {
              v26 = v176;
              v32 = v177;
              v4 = v172;
              goto LABEL_18;
            }
          }

          v34 = v135 == v133;
          v26 = v176;
          v4 = v172;
          if (!v34)
          {
            goto LABEL_17;
          }
        }
      }

      else if (v63 == 2)
      {
        v77 = sub_24057D704(v215);
        v79 = *v77;
        v78 = v77[1];
        v81 = v77[2];
        v80 = v77[3];
        v191 = v210;
        v192 = v211;
        v193 = v212;
        v194 = v213;
        v187 = v206;
        v188 = v207;
        v189 = v208;
        v190 = v209;
        v185 = v204;
        v186 = v205;
        if (sub_240618940(&v185) != 2)
        {
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);
          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          goto LABEL_132;
        }

        v82 = sub_24057D704(&v185);
        v83 = v82[2];
        v84 = v82[3];
        if (v79 != *v82 || v78 != v82[1])
        {
          v85 = v82[2];
          v86 = sub_24075ACF4();
          v83 = v85;
          if ((v86 & 1) == 0)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            goto LABEL_131;
          }
        }

        if (v80)
        {
          v87 = v81;
          v25 = v175;
          v26 = v176;
          v32 = v177;
          if (!v84)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v11 = v173;
            v31 = v174;
            goto LABEL_18;
          }

          if (v87 == v83 && v80 == v84)
          {
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v11 = v173;
            v31 = v174;
          }

          else
          {
            v147 = sub_24075ACF4();
            sub_240618498(&v204, v184);
            sub_240618498(v195, v184);
            sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
            v11 = v173;
            v31 = v174;
            if ((v147 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);

          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          v31 = v174;
          v25 = v175;
          v26 = v176;
          v32 = v177;
          if (v84)
          {

            v11 = v173;
            goto LABEL_18;
          }

          v11 = v173;
        }
      }

      else if (v63 == 3)
      {
        v64 = sub_24057D704(v215);
        v65 = *v64;
        v66 = v64[1];
        v191 = v210;
        v192 = v211;
        v193 = v212;
        v194 = v213;
        v187 = v206;
        v188 = v207;
        v189 = v208;
        v190 = v209;
        v185 = v204;
        v186 = v205;
        if (sub_240618940(&v185) != 3)
        {
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);
          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          goto LABEL_16;
        }

        v67 = sub_24057D704(&v185);
        if (v65 == *v67 && v66 == v67[1])
        {
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);
          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          v25 = v175;
          v26 = v176;
        }

        else
        {
          v138 = sub_24075ACF4();
          sub_240618498(&v204, v184);
          sub_240618498(v195, v184);
          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          v25 = v175;
          v26 = v176;
          if ((v138 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v191 = v210;
        v192 = v211;
        v193 = v212;
        v194 = v213;
        v187 = v206;
        v188 = v207;
        v189 = v208;
        v190 = v209;
        v185 = v204;
        v186 = v205;
        if (sub_240618940(&v185) != 4)
        {
          sub_240618498(&v204, v184);
          sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
          goto LABEL_18;
        }

        sub_2405B8A50(v214, &unk_27E4B9290, &unk_24076B560);
      }

      if ((sub_240745CD0(*(v8 + v4[7]), *(v11 + v4[7])) & 1) == 0)
      {
        goto LABEL_17;
      }

      v88 = v4[8];
      v90 = *(v8 + v88);
      v89 = *(v8 + v88 + 8);
      v91 = (v11 + v88);
      v92 = *v91;
      v93 = v91[1];
      v32 = v177;
      if (v90 == 1)
      {
        v94 = v91[1];
        v95 = 1;
        v90 = *v91;
        v170 = v89;
        sub_240618500(1, v89);
        if (v90 != 1)
        {
          v171 = v90;
          sub_240618500(v90, v94);
          v137 = v170;
          goto LABEL_92;
        }

        sub_240618500(1, v94);
        v11 = v173;
      }

      else
      {
        if (v92 == 1)
        {
          v171 = 1;
          v136 = v90;
          v94 = v93;
          v95 = v90;
          v137 = v89;
          sub_240618500(v136, v89);
          sub_240618500(1, v94);
          sub_240618500(v95, v137);

LABEL_92:
          sub_2405AFA1C(v95, v137);
          sub_2405AFA1C(v171, v94);
          v11 = v173;
          v31 = v174;
          v26 = v176;
          goto LABEL_18;
        }

        if (v90)
        {
          if (!v92)
          {
            v140 = v89;
            sub_240618500(v90, v89);
            sub_240618500(0, v93);
            sub_240618500(v90, v140);
            v149 = 0;
            goto LABEL_129;
          }

          v139 = *v91;
          v140 = v89;
          sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
          sub_240618500(v90, v140);
          sub_240618500(v139, v93);
          sub_240618500(v90, v140);
          v171 = v139;
          v141 = v139;
          v142 = v90;
          v143 = v141;
          v169 = v142;
          v144 = v142;
          v145 = sub_24075A6D4();

          if ((v145 & 1) == 0)
          {
            sub_2405AFA1C(v171, v93);
            v4 = v172;
            v90 = v169;
            goto LABEL_130;
          }
        }

        else
        {
          v171 = *v91;
          v140 = v89;
          sub_240618500(0, v89);
          v148 = v171;
          if (v171)
          {
            sub_240618500(v171, v93);
            sub_240618500(0, v140);
            v149 = v148;
            goto LABEL_129;
          }

          v169 = 0;
          sub_240618500(0, v93);
          sub_240618500(0, v140);
        }

        if (v140)
        {
          v90 = v169;
          if (!v93)
          {
            sub_2405AFA1C(v171, 0);
            v4 = v172;
            goto LABEL_130;
          }

          sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
          v150 = v93;
          v151 = v140;
          v152 = sub_24075A6D4();

          sub_2405AFA1C(v171, v93);
          v4 = v172;
          if ((v152 & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v4 = v172;
          v90 = v169;
          if (v93)
          {
            v149 = v171;
LABEL_129:
            sub_2405AFA1C(v149, v93);
LABEL_130:

            sub_2405AFA1C(v90, v140);
LABEL_131:
            v11 = v173;
LABEL_132:
            v31 = v174;
LABEL_16:
            v25 = v175;
            v26 = v176;
            goto LABEL_17;
          }

          sub_2405AFA1C(v171, 0);
          v151 = 0;
        }

        v170 = v140;

        v11 = v173;
        v25 = v175;
        v32 = v177;
      }

      v26 = v176;
      sub_2405AFA1C(v90, v170);
      v96 = v4[9];
      v97 = (v8 + v96);
      v98 = *(v8 + v96 + 8);
      v99 = v11 + v96;
      v100 = v99[8];
      if ((v98 & 1) == 0)
      {
        break;
      }

      v31 = v174;
      if (v99[8])
      {
        goto LABEL_136;
      }

LABEL_18:
      sub_240753B38(v8, type metadata accessor for IdMSAccount);
      v30 = (v30 + 1) & v32;
      if (((*(v31 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        goto LABEL_139;
      }
    }

    v31 = v174;
    if ((v99[8] & 1) != 0 || *v97 != *v99)
    {
      goto LABEL_18;
    }

LABEL_136:
    sub_240753B38(v8, type metadata accessor for IdMSAccount);
    result = sub_240753B38(v11, type metadata accessor for IdMSAccount);
    v13 = v160;
    a1 = v161;
    v16 = v158;
    v15 = v159;
    v21 = v156;
    v17 = v157;
    v20 = v155;
  }

  while (v155);
LABEL_8:
  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return 1;
    }

    v24 = *(v17 + 8 * v16);
    ++v23;
    if (v24)
    {
      v156 = v21;
      v157 = v17;
      v22 = __clz(__rbit64(v24));
      v155 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static SetupError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v91[0] = v3;
  v91[1] = v4;
  v91[2] = v6;
  v91[3] = v5;
  v91[4] = v8;
  v91[5] = v7;
  v92 = v9;
  v93 = v10;
  v94 = v11;
  v95 = v12;
  v96 = v13;
  v97 = v14;
  v98 = v15;
  v99 = v16;
  if (v9 > 2)
  {
    if (v9 <= 4)
    {
      if (v9 == 3)
      {
        if (v16 == 3)
        {
          v77 = *(v3 + 72);
          v72 = *(v3 + 88);
          v68 = *(v3 + 104);
          v17 = *(v3 + 120);
          v18 = *(v3 + 64);
          v19 = *(v10 + 64);
          v66 = *(v10 + 88);
          v67 = *(v10 + 72);
          v20 = *(v10 + 104);
          v21 = *(v10 + 112);
          v22 = *(v10 + 120);
          v23 = *(v3 + 32);
          v87 = *(v3 + 16);
          v88 = v23;
          v89 = *(v3 + 48);
          v90 = v18;
          v24 = *(v10 + 32);
          v83 = *(v10 + 16);
          v84 = v24;
          v85 = *(v10 + 48);
          v86 = v19;
          sub_2405AF8D8(v10, v11, v12, v13, v14, v15, 3u);
          sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 3u);
          if (static SetupError.== infix(_:_:)(&v87, &v83))
          {
            v87 = v77;
            v88 = v72;
            v89 = v68;
            v90 = v17;
            v83 = v67;
            v84 = v66;
            *&v85 = v20;
            *(&v85 + 1) = v21;
            v86 = v22;
            v25 = static SetupError.== infix(_:_:)(&v87, &v83);
LABEL_11:
            v27 = v25;
LABEL_27:
            sub_2405B8A50(v91, &qword_27E4BE490, &qword_240783180);
            return v27 & 1;
          }

          goto LABEL_88;
        }

        goto LABEL_86;
      }

      if (v16 == 4)
      {
        if (v3 == v10 && v4 == v11)
        {
          sub_2405AF8D8(v3, v4, v12, v13, v14, v15, 4u);
          sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 4u);
          goto LABEL_85;
        }

        v50 = v10;
        v51 = v11;
        v52 = v12;
        v53 = v13;
        v75 = v14;
        v81 = v15;
        v71 = sub_24075ACF4();
        sub_2405AF8D8(v50, v51, v52, v53, v75, v81, 4u);
        v43 = v3;
        v44 = v4;
        v45 = v6;
        v46 = v5;
        v47 = v8;
        v48 = v7;
        v49 = 4;
        goto LABEL_48;
      }

      goto LABEL_86;
    }

    if (v9 == 5)
    {
      if (v16 != 5)
      {
        goto LABEL_86;
      }

      if (v3 != v10 || v4 != v11)
      {
        v39 = v10;
        v40 = v11;
        v41 = v12;
        v42 = v13;
        v74 = v14;
        v80 = v15;
        v71 = sub_24075ACF4();
        sub_2405AF8D8(v39, v40, v41, v42, v74, v80, 5u);
        v43 = v3;
        v44 = v4;
        v45 = v6;
        v46 = v5;
        v47 = v8;
        v48 = v7;
        v49 = 5;
LABEL_48:
        sub_2405AF8D8(v43, v44, v45, v46, v47, v48, v49);
        sub_2405B8A50(v91, &qword_27E4BE490, &qword_240783180);
        v54 = v71;
        return v54 & 1;
      }

      sub_2405AF8D8(v3, v4, v12, v13, v14, v15, 5u);
      sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 5u);
LABEL_85:
      sub_2405B8A50(v91, &qword_27E4BE490, &qword_240783180);
      return 1;
    }

    if (v6 | v4 | v3 | v5 | v8 | v7)
    {
      v38 = v6 | v4 | v5 | v8 | v7;
      if (v3 != 1 || v38)
      {
        if (v3 != 2 || v38)
        {
          if (v3 != 3 || v38)
          {
            if (v3 != 4 || v38)
            {
              if (v3 != 5 || v38)
              {
                if (v3 != 6 || v38)
                {
                  if (v3 != 7 || v38)
                  {
                    if (v3 != 8 || v38)
                    {
                      if (v16 != 6 || v10 != 9)
                      {
                        goto LABEL_86;
                      }
                    }

                    else if (v16 != 6 || v10 != 8)
                    {
                      goto LABEL_86;
                    }
                  }

                  else if (v16 != 6 || v10 != 7)
                  {
                    goto LABEL_86;
                  }
                }

                else if (v16 != 6 || v10 != 6)
                {
                  goto LABEL_86;
                }
              }

              else if (v16 != 6 || v10 != 5)
              {
                goto LABEL_86;
              }
            }

            else if (v16 != 6 || v10 != 4)
            {
              goto LABEL_86;
            }
          }

          else if (v16 != 6 || v10 != 3)
          {
            goto LABEL_86;
          }
        }

        else if (v16 != 6 || v10 != 2)
        {
          goto LABEL_86;
        }
      }

      else if (v16 != 6 || v10 != 1)
      {
        goto LABEL_86;
      }

      if (!(v12 | v11 | v13 | v14 | v15))
      {
        goto LABEL_85;
      }
    }

    else if (v16 == 6 && !(v12 | v11 | v10 | v13 | v14 | v15))
    {
      goto LABEL_85;
    }

LABEL_86:
    sub_2405AF8D8(v10, v11, v12, v13, v14, v15, v16);
    v55 = v3;
    v56 = v4;
    v57 = v6;
    v58 = v5;
    v59 = v8;
    v60 = v7;
    v61 = v9;
    goto LABEL_87;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      if (v16 == 1)
      {
        v26 = v10;
        sub_2405AF8D8(v10, v11, v12, v13, v14, v15, 1u);
        sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 1u);
        v25 = sub_240745CD0(v3, v26);
        goto LABEL_11;
      }
    }

    else if (v16 == 2)
    {
      *&v87 = v3;
      *(&v87 + 1) = v4;
      *&v88 = v6;
      *(&v88 + 1) = v5;
      *&v89 = v8;
      *(&v89 + 1) = v7;
      *&v83 = v10;
      *(&v83 + 1) = v11;
      *&v84 = v12;
      *(&v84 + 1) = v13;
      *&v85 = v14;
      *(&v85 + 1) = v15;
      v34 = v10;
      v35 = v11;
      v79 = v15;
      v73 = v14;
      v70 = v13;
      v36 = v12;
      v27 = _s12AppleIDSetup15UserProfileInfoV2eeoiySbAC_ACtFZ_0(&v87, &v83);
      sub_2405AF8D8(v34, v35, v36, v70, v73, v79, 2u);
      sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 2u);
      goto LABEL_27;
    }

    goto LABEL_86;
  }

  if (v16)
  {
    goto LABEL_86;
  }

  if (v3 == v10 && v4 == v11)
  {
    goto LABEL_21;
  }

  v28 = v10;
  v29 = v11;
  v78 = v12;
  v69 = v13;
  v30 = v14;
  v31 = v15;
  v32 = sub_24075ACF4();
  v12 = v78;
  v11 = v29;
  v13 = v69;
  v14 = v30;
  v15 = v31;
  v33 = v32;
  v10 = v28;
  if (v33)
  {
LABEL_21:
    if (v6 == v12)
    {
      if (v5 != v13 || v8 != v14)
      {
        v62 = v10;
        v63 = v11;
        v64 = v13;
        v65 = v14;
        v82 = v15;
        v76 = sub_24075ACF4();
        sub_2405AF8D8(v62, v63, v6, v64, v65, v82, 0);
        sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 0);
        sub_2405B8A50(v91, &qword_27E4BE490, &qword_240783180);
        v54 = v76;
        return v54 & 1;
      }

      sub_2405AF8D8(v10, v11, v6, v5, v8, v15, 0);
      sub_2405AF8D8(v3, v4, v6, v5, v8, v7, 0);
      goto LABEL_85;
    }
  }

  sub_2405AF8D8(v10, v11, v12, v13, v14, v15, 0);
  v55 = v3;
  v56 = v4;
  v57 = v6;
  v58 = v5;
  v59 = v8;
  v60 = v7;
  v61 = 0;
LABEL_87:
  sub_2405AF8D8(v55, v56, v57, v58, v59, v60, v61);
LABEL_88:
  sub_2405B8A50(v91, &qword_27E4BE490, &qword_240783180);
  return 0;
}

void sub_240747724(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 48);
  if (v3 != 1)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    if (v3 == 6)
    {
      v9 = v5 | v4 | v6 | v7 | v8;
      if (v2 == 1 && v9 == 0)
      {
        v12 = 1;
        goto LABEL_24;
      }

      if (v2 == 2 && v9 == 0)
      {
        v12 = 2;
        goto LABEL_24;
      }

      if (v2 == 4 && !v9)
      {
        v12 = 3;
LABEL_24:
        *a1 = v12;
        *(a1 + 8) = 0u;
        *(a1 + 24) = 0u;
        v19 = 4;
LABEL_25:
        *(a1 + 40) = v19;
        return;
      }
    }

    v21 = a1;
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v13 = sub_240759AE4();
    __swift_project_value_buffer(v13, qword_280FADA00);
    sub_2405AF8D8(v2, v4, v5, v6, v7, v8, v3);
    v14 = sub_240759AC4();
    v15 = sub_24075A5D4();
    sub_2405AEA70(v2, v4, v5, v6, v7, v8, v3);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 138412290;
      sub_2405B8998();
      swift_allocError();
      *v17 = v2;
      *(v17 + 8) = v4;
      *(v17 + 16) = v5;
      *(v17 + 24) = v6;
      *(v17 + 32) = v7;
      *(v17 + 40) = v8;
      *(v17 + 48) = v3;
      sub_2405AF8D8(v2, v4, v5, v6, v7, v8, v3);
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v20 = v18;
      _os_log_impl(&dword_240579000, v14, v15, "Could not convert SetupError: %@ into RepairError", v16, 0xCu);
      sub_2405B8A50(v20, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v20, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    a1 = v21;
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    v19 = -1;
    goto LABEL_25;
  }

  *a1 = v2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
}

uint64_t sub_240747C40(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7075746573;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0x74726F706572;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0x74706965636572;
    if (a1 != 7)
    {
      v2 = 0x6572756C696166;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 == 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_240747D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240753204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240747D90(uint64_t a1)
{
  v2 = sub_240750840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240747DCC(uint64_t a1)
{
  v2 = sub_240750840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240747E08(uint64_t a1)
{
  v2 = sub_24075093C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240747E44(uint64_t a1)
{
  v2 = sub_24075093C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240747E80(uint64_t a1)
{
  v2 = sub_240750A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240747EBC(uint64_t a1)
{
  v2 = sub_240750A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240747EF8(uint64_t a1)
{
  v2 = sub_240750894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240747F34(uint64_t a1)
{
  v2 = sub_240750894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240747F70(uint64_t a1)
{
  v2 = sub_240750BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240747FAC(uint64_t a1)
{
  v2 = sub_240750BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240747FE8(uint64_t a1)
{
  v2 = sub_240750BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240748024(uint64_t a1)
{
  v2 = sub_240750BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240748060(uint64_t a1)
{
  v2 = sub_240750B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074809C(uint64_t a1)
{
  v2 = sub_240750B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407480D8(uint64_t a1)
{
  v2 = sub_2407508E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240748114(uint64_t a1)
{
  v2 = sub_2407508E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240748150(uint64_t a1)
{
  v2 = sub_240750C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074818C(uint64_t a1)
{
  v2 = sub_240750C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407481C8(uint64_t a1)
{
  v2 = sub_240750C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240748204(uint64_t a1)
{
  v2 = sub_240750C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MachSetupMessage.encode(to:)(void *a1)
{
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE498, &qword_240783188);
  v92 = *(v114 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v88 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4A0, &qword_240783190);
  v110 = *(v111 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v88 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4A8, &qword_240783198);
  v91 = *(v112 - 8);
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v88 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v8 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v107 = &v88 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4B0, &unk_2407831A8);
  v90 = *(v106 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v88 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v12 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v103 = &v88 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4B8, &qword_2407831B8);
  v89 = *(v102 - 8);
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v88 - v15;
  v98 = type metadata accessor for AnisetteCommand.Response();
  v16 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4C0, &qword_2407831C0);
  v88 = *(v122 - 8);
  v18 = *(v88 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v88 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4C8, &qword_2407831C8);
  v96 = *(v120 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v88 - v21;
  v95 = type metadata accessor for ViewServiceConfiguration();
  v22 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v118 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4D0, &qword_2407831D0);
  v97 = *(v93 - 8);
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v93);
  v117 = &v88 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4D8, &qword_2407831D8);
  v94 = *(v116 - 8);
  v26 = *(v94 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v88 - v27;
  v28 = type metadata accessor for SetupModel();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MachSetupMessage();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE4E0, &qword_2407831E0);
  v123 = *(v36 - 8);
  v37 = *(v123 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v88 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240750840();
  v135 = v39;
  sub_24075AF74();
  sub_240753A68(v124, v35, type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v124 = v28;
    v54 = v31;
    v55 = v115;
    v56 = v116;
    v57 = v117;
    v58 = v119;
    v59 = v120;
    v60 = v121;
    v61 = v122;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v64 = v36;
        v65 = v118;
        sub_240753AD0(v35, v118, type metadata accessor for ViewServiceConfiguration);
        LOBYTE(v130) = 2;
        sub_240750BF4();
        v66 = v135;
        sub_24075AB54();
        sub_2407514E0(&qword_27E4B9C98, type metadata accessor for ViewServiceConfiguration);
        sub_24075ABE4();
        (*(v96 + 8))(v58, v59);
        sub_240753B38(v65, type metadata accessor for ViewServiceConfiguration);
        return (*(v123 + 8))(v66, v64);
      }

      else
      {
        v79 = *v35;
        v78 = *(v35 + 1);
        v80 = *(v35 + 3);
        v118 = *(v35 + 2);
        v81 = v35[32];
        LOBYTE(v130) = 3;
        sub_240750BA0();
        v82 = v135;
        sub_24075AB54();
        v119 = v79;
        *&v130 = v79;
        *(&v130 + 1) = v78;
        v83 = v118;
        v124 = v78;
        *&v131 = v118;
        *(&v131 + 1) = v80;
        LODWORD(v120) = v81;
        LOBYTE(v132) = v81;
        sub_2405E17C4();
        sub_24075ABE4();
        (*(v88 + 8))(v60, v61);
        (*(v123 + 8))(v82, v36);
        return sub_2405E1818(v119, v124, v83, v80, v120);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v74 = *(v35 + 3);
      v132 = *(v35 + 2);
      v133 = v74;
      v134 = *(v35 + 4);
      v75 = *(v35 + 1);
      v130 = *v35;
      v131 = v75;
      LOBYTE(v125) = 1;
      sub_240750C48();
      v76 = v135;
      sub_24075AB54();
      v127 = v132;
      v128 = v133;
      v129 = v134;
      v125 = v130;
      v126 = v131;
      sub_2406E7538();
      v77 = v93;
      sub_24075ABE4();
      (*(v97 + 8))(v57, v77);
      (*(v123 + 8))(v76, v36);
      return sub_2406AA188(&v130);
    }

    else
    {
      v62 = v54;
      sub_240753AD0(v35, v54, type metadata accessor for SetupModel);
      LOBYTE(v130) = 0;
      sub_240750C9C();
      v63 = v135;
      sub_24075AB54();
      sub_2407514E0(&qword_27E4BDD40, type metadata accessor for SetupModel);
      sub_24075ABE4();
      (*(v94 + 8))(v55, v56);
      sub_240753B38(v62, type metadata accessor for SetupModel);
      return (*(v123 + 8))(v63, v36);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    v67 = v135;
    if (EnumCaseMultiPayload == 4)
    {
      v68 = v99;
      sub_240753AD0(v35, v99, type metadata accessor for AnisetteCommand.Response);
      LOBYTE(v130) = 4;
      sub_240750B4C();
      v69 = v100;
      sub_24075AB54();
      sub_2407514E0(&qword_27E4B7B70, type metadata accessor for AnisetteCommand.Response);
      v70 = v102;
      sub_24075ABE4();
      (*(v89 + 8))(v69, v70);
      sub_240753B38(v68, type metadata accessor for AnisetteCommand.Response);
    }

    else
    {
      v85 = v103;
      sub_2405E150C(v35, v103, &qword_27E4BB860, &unk_2407749A0);
      LOBYTE(v130) = 5;
      sub_240750A44();
      v86 = v104;
      sub_24075AB54();
      sub_240750A98();
      v87 = v106;
      sub_24075ABE4();
      (*(v90 + 8))(v86, v87);
      sub_2405B8A50(v85, &qword_27E4BB860, &unk_2407749A0);
    }

    return (*(v123 + 8))(v67, v36);
  }

  else
  {
    v42 = v36;
    v43 = v135;
    if (EnumCaseMultiPayload == 6)
    {
      v71 = v107;
      sub_2405E150C(v35, v107, &qword_27E4BB870, &qword_2407831A0);
      LOBYTE(v130) = 6;
      sub_24075093C();
      v72 = v109;
      sub_24075AB54();
      sub_240750990();
      v73 = v112;
      sub_24075ABE4();
      (*(v91 + 8))(v72, v73);
      sub_2405B8A50(v71, &qword_27E4BB870, &qword_2407831A0);
      return (*(v123 + 8))(v43, v36);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v44 = *v35;
      v121 = *(v35 + 1);
      v45 = *(v35 + 2);
      v46 = *(v35 + 3);
      v47 = *(v35 + 4);
      v48 = *(v35 + 5);
      v49 = v35[48];
      LOBYTE(v130) = 8;
      sub_240750894();
      v50 = v113;
      sub_24075AB54();
      v124 = v44;
      *&v130 = v44;
      v51 = v121;
      *(&v130 + 1) = v121;
      *&v131 = v45;
      *(&v131 + 1) = v46;
      *&v132 = v47;
      v122 = v48;
      *(&v132 + 1) = v48;
      LOBYTE(v48) = v49;
      LOBYTE(v133) = v49;
      sub_2405B0D90();
      v52 = v114;
      sub_24075ABE4();
      (*(v92 + 8))(v50, v52);
      (*(v123 + 8))(v135, v42);
      return sub_2405AEA70(v124, v51, v45, v46, v47, v122, v48);
    }

    else
    {
      LOBYTE(v130) = 7;
      sub_2407508E8();
      v84 = v108;
      sub_24075AB54();
      (*(v110 + 8))(v84, v111);
      return (*(v123 + 8))(v43, v36);
    }
  }
}

uint64_t MachSetupMessage.hash(into:)(__int128 *a1)
{
  v111 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v1 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v106 = (&v103 - v2);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v3 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v107 = (&v103 - v4);
  v5 = type metadata accessor for AnisetteCommand.Response();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240759C14();
  *&v109 = *(v9 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9C58, &qword_24076CFE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v103 - v15;
  v17 = type metadata accessor for ViewServiceConfiguration();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for SetupModel();
  v21 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MachSetupMessage();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240753A68(v110, v27, type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          return MEMORY[0x245CC6BA0](7);
        }

        v29 = *v27;
        v30 = *(v27 + 1);
        v31 = *(v27 + 2);
        v32 = *(v27 + 3);
        v33 = *(v27 + 4);
        v34 = *(v27 + 5);
        v35 = v27[48];
        v36 = v111;
        MEMORY[0x245CC6BA0](8);
        *&v117[0] = v29;
        *(&v117[0] + 1) = v30;
        *&v117[1] = v31;
        *(&v117[1] + 1) = v32;
        *&v117[2] = v33;
        *(&v117[2] + 1) = v34;
        LOBYTE(v117[3]) = v35;
        SetupError.hash(into:)(v36);
        return sub_2405AEA70(v29, v30, v31, v32, v33, v34, v35);
      }

      v53 = v106;
      sub_2405E150C(v27, v106, &qword_27E4BB870, &qword_2407831A0);
      v54 = v111;
      MEMORY[0x245CC6BA0](6);
      MEMORY[0x245CC6BE0](*v53);
      MEMORY[0x245CC6BE0](v53[1]);
      v55 = v53 + *(v104 + 32);
      MEMORY[0x245CC6BA0](*v55);
      v56 = *(v55 + 3);
      v57 = *(v55 + 8);
      v58 = *(v55 + 18);
      v59 = v55[38];
      v117[0] = *(v55 + 8);
      *&v117[1] = v56;
      BYTE14(v117[1]) = v59;
      WORD6(v117[1]) = v58;
      DWORD2(v117[1]) = v57;
      RemoteRole.hash(into:)();
      v60 = v55[39];
      sub_24075AE94();
      v61 = v55[88];
      if (v61 > 0xFC)
      {
        v62 = v108;
        switch(v61)
        {
          case 0xFDu:
            v63 = 2;
            goto LABEL_69;
          case 0xFEu:
            v63 = 1;
            goto LABEL_69;
          case 0xFFu:
            v63 = 0;
            goto LABEL_69;
        }
      }

      else
      {
        v62 = v108;
        switch(v61)
        {
          case 0xFAu:
            v63 = 6;
            goto LABEL_69;
          case 0xFBu:
            v63 = 4;
            goto LABEL_69;
          case 0xFCu:
            v63 = 3;
LABEL_69:
            MEMORY[0x245CC6BA0](v63);
            goto LABEL_70;
        }
      }

      v87 = *(v55 + 9);
      v86 = *(v55 + 10);
      v88 = *(v55 + 40);
      v109 = *(v55 + 56);
      v110 = v88;
      MEMORY[0x245CC6BA0](5);
      v117[0] = v110;
      v117[1] = v109;
      *&v117[2] = v87;
      *(&v117[2] + 1) = v86;
      LOBYTE(v117[3]) = v61;
      SetupError.hash(into:)(v54);
LABEL_70:
      memcpy(v117, v55 + 96, 0x131uLL);
      DiscoveryModel.hash(into:)(v54);
      v92 = &v55[*(v62 + 36)];
      AuthenticationModel.hash(into:)(v54);
      v93 = &v55[*(v62 + 40)];
      SignInModel.hash(into:)(v54);
      v94 = &qword_27E4BB870;
      v95 = &qword_2407831A0;
      return sub_2405B8A50(v53, v94, v95);
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_240753AD0(v27, v8, type metadata accessor for AnisetteCommand.Response);
      v52 = v111;
      MEMORY[0x245CC6BA0](4);
      AnisetteCommand.Response.hash(into:)(v52);
      return sub_240753B38(v8, type metadata accessor for AnisetteCommand.Response);
    }

    v53 = v107;
    sub_2405E150C(v27, v107, &qword_27E4BB860, &unk_2407749A0);
    v74 = v111;
    MEMORY[0x245CC6BA0](5);
    MEMORY[0x245CC6BE0](*v53);
    v75 = *(v53 + 8);
    sub_24075AE94();
    v76 = v105;
    v77 = v53 + *(v105 + 32);
    MEMORY[0x245CC6BA0](*v77);
    v78 = *(v77 + 3);
    v79 = *(v77 + 8);
    v80 = *(v77 + 18);
    v81 = v77[38];
    v117[0] = *(v77 + 8);
    *&v117[1] = v78;
    BYTE14(v117[1]) = v81;
    WORD6(v117[1]) = v80;
    DWORD2(v117[1]) = v79;
    RemoteRole.hash(into:)();
    v82 = v77[39];
    sub_24075AE94();
    v83 = v77[88];
    if (v83 > 0xFC)
    {
      v84 = v108;
      switch(v83)
      {
        case 0xFDu:
          v85 = 2;
          goto LABEL_78;
        case 0xFEu:
          v85 = 1;
          goto LABEL_78;
        case 0xFFu:
          v85 = 0;
          goto LABEL_78;
      }
    }

    else
    {
      v84 = v108;
      switch(v83)
      {
        case 0xFAu:
          v85 = 6;
          goto LABEL_78;
        case 0xFBu:
          v85 = 4;
          goto LABEL_78;
        case 0xFCu:
          v85 = 3;
LABEL_78:
          MEMORY[0x245CC6BA0](v85);
          goto LABEL_79;
      }
    }

    v97 = *(v77 + 9);
    v96 = *(v77 + 10);
    v98 = *(v77 + 40);
    v109 = *(v77 + 56);
    v110 = v98;
    MEMORY[0x245CC6BA0](5);
    v117[0] = v110;
    v117[1] = v109;
    *&v117[2] = v97;
    *(&v117[2] + 1) = v96;
    LOBYTE(v117[3]) = v83;
    SetupError.hash(into:)(v74);
LABEL_79:
    memcpy(v117, v77 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v74);
    v101 = &v77[*(v84 + 36)];
    AuthenticationModel.hash(into:)(v74);
    v102 = &v77[*(v84 + 40)];
    SignInModel.hash(into:)(v74);
    *&v117[0] = *(v53 + *(v76 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
    sub_2405E6D2C();
    sub_24075A004();
    v94 = &qword_27E4BB860;
    v95 = &unk_2407749A0;
    return sub_2405B8A50(v53, v94, v95);
  }

  v38 = v109;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v64 = *(v27 + 3);
      v117[2] = *(v27 + 2);
      v117[3] = v64;
      v117[4] = *(v27 + 4);
      v65 = *(v27 + 1);
      v117[0] = *v27;
      v117[1] = v65;
      v66 = v111;
      MEMORY[0x245CC6BA0](1);
      v114 = v117[2];
      v115 = v117[3];
      v116 = v117[4];
      v112 = v117[0];
      v113 = v117[1];
      SetupReport.hash(into:)(v66);
      return sub_2406AA188(v117);
    }

    sub_240753AD0(v27, v23, type metadata accessor for SetupModel);
    v39 = v111;
    MEMORY[0x245CC6BA0](0);
    MEMORY[0x245CC6BA0](*v23);
    v40 = *(v23 + 8);
    v41 = *(v23 + 3);
    v42 = *(v23 + 18);
    v43 = v23[38];
    v117[0] = *(v23 + 8);
    *&v117[1] = v41;
    BYTE14(v117[1]) = v43;
    WORD6(v117[1]) = v42;
    DWORD2(v117[1]) = v40;
    RemoteRole.hash(into:)();
    v44 = v23[39];
    sub_24075AE94();
    v45 = v23[88];
    if (v45 > 0xFC)
    {
      v46 = v108;
      switch(v45)
      {
        case 0xFDu:
          v47 = 2;
          goto LABEL_74;
        case 0xFEu:
          v47 = 1;
          goto LABEL_74;
        case 0xFFu:
          v47 = 0;
          goto LABEL_74;
      }
    }

    else
    {
      v46 = v108;
      switch(v45)
      {
        case 0xFAu:
          v47 = 6;
          goto LABEL_74;
        case 0xFBu:
          v47 = 4;
          goto LABEL_74;
        case 0xFCu:
          v47 = 3;
LABEL_74:
          MEMORY[0x245CC6BA0](v47);
          goto LABEL_75;
      }
    }

    v90 = *(v23 + 9);
    v89 = *(v23 + 10);
    v91 = *(v23 + 40);
    v109 = *(v23 + 56);
    v110 = v91;
    MEMORY[0x245CC6BA0](5);
    v117[0] = v110;
    v117[1] = v109;
    *&v117[2] = v90;
    *(&v117[2] + 1) = v89;
    LOBYTE(v117[3]) = v45;
    SetupError.hash(into:)(v39);
LABEL_75:
    memcpy(v117, v23 + 96, 0x131uLL);
    DiscoveryModel.hash(into:)(v39);
    v99 = &v23[*(v46 + 36)];
    AuthenticationModel.hash(into:)(v39);
    v100 = &v23[*(v46 + 40)];
    SignInModel.hash(into:)(v39);
    return sub_240753B38(v23, type metadata accessor for SetupModel);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v67 = *v27;
    v68 = *(v27 + 1);
    v70 = *(v27 + 2);
    v69 = *(v27 + 3);
    v71 = v27[32];
    MEMORY[0x245CC6BA0](3);
    if (v71)
    {
      v72 = 4;
    }

    else
    {
      v72 = 0;
    }

    v73 = (v69 >> 60) & 3 | v72;
    if (v73 <= 1)
    {
      if (v73)
      {
        MEMORY[0x245CC6BA0](3);
        return sub_24075AE94();
      }

      MEMORY[0x245CC6BA0](1);
    }

    else
    {
      if (v73 == 2)
      {
        MEMORY[0x245CC6BA0](4);
        sub_24075A114();
        return sub_2405E1818(v67, v68, v70, v69, v71);
      }

      if (v73 != 3)
      {
        if (v70 | v68 | v67 | v69)
        {
          return MEMORY[0x245CC6BA0](2);
        }

        else
        {
          return MEMORY[0x245CC6BA0](0);
        }
      }

      MEMORY[0x245CC6BA0](5);
      sub_24075A114();
    }

    sub_2407596D4();
    return sub_2405E1818(v67, v68, v70, v69, v71);
  }

  sub_240753AD0(v27, v20, type metadata accessor for ViewServiceConfiguration);
  MEMORY[0x245CC6BA0](2);
  v48 = *v20;
  v49 = v20[1];
  sub_24075A114();
  v50 = v20[2];
  v51 = v20[3];
  sub_24075A114();
  sub_24063E660(v20 + *(v17 + 24), v16);
  if ((*(v38 + 48))(v16, 1, v9) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    (*(v38 + 32))(v12, v16, v9);
    sub_24075AE94();
    sub_2407514E0(&qword_27E4B9C78, MEMORY[0x277D855F8]);
    sub_24075A004();
    (*(v38 + 8))(v12, v9);
  }

  return sub_240753B38(v20, type metadata accessor for ViewServiceConfiguration);
}

uint64_t MachSetupMessage.hashValue.getter()
{
  sub_24075AE64();
  MachSetupMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t MachSetupMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE548, &qword_2407831E8);
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v131 = &v99 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE550, &qword_2407831F0);
  v120 = *(v121 - 8);
  v5 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v130 = &v99 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE558, &qword_2407831F8);
  v122 = *(v123 - 8);
  v7 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v128 = &v99 - v8;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE560, &qword_240783200);
  v118 = *(v119 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v129 = &v99 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE568, &qword_240783208);
  v116 = *(v117 - 8);
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v139 = &v99 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE570, &qword_240783210);
  v114 = *(v115 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v127 = &v99 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE578, &qword_240783218);
  v113 = *(v112 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  v138 = &v99 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE580, &qword_240783220);
  v110 = *(v111 - 8);
  v17 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v137 = &v99 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE588, &qword_240783228);
  v108 = *(v109 - 8);
  v19 = *(v108 + 64);
  MEMORY[0x28223BE20](v109);
  v126 = &v99 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE590, &unk_240783230);
  v134 = *(v136 - 8);
  v21 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v23 = &v99 - v22;
  v133 = type metadata accessor for MachSetupMessage();
  v24 = *(*(v133 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v133);
  v104 = (&v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v107 = &v99 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v105 = &v99 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v106 = &v99 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v99 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v99 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v99 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v99 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v99 - v45;
  v48 = a1[3];
  v47 = a1[4];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_240750840();
  v135 = v23;
  v49 = v150;
  sub_24075AF34();
  if (v49)
  {
    return __swift_destroy_boxed_opaque_existential_1(v140);
  }

  v102 = v44;
  v100 = v41;
  v103 = v38;
  v101 = v35;
  v50 = v137;
  v51 = v138;
  v52 = v139;
  v150 = v46;
  v53 = v135;
  v54 = v136;
  v55 = sub_24075AB34();
  v56 = (2 * *(v55 + 16)) | 1;
  v146 = v55;
  v147 = v55 + 32;
  v148 = 0;
  v149 = v56;
  v57 = sub_2405B8B08();
  if (v57 == 9 || v148 != v149 >> 1)
  {
    v61 = sub_24075A8C4();
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v63 = v133;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277D84160], v61);
    swift_willThrow();
    (*(v134 + 8))(v53, v54);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v140);
  }

  if (v57 > 3u)
  {
    if (v57 <= 5u)
    {
      v58 = v132;
      if (v57 == 4)
      {
        LOBYTE(v141) = 4;
        sub_240750B4C();
        sub_24075AA54();
        type metadata accessor for AnisetteCommand.Response();
        sub_2407514E0(&qword_27E4B7C00, type metadata accessor for AnisetteCommand.Response);
        v73 = v106;
        v74 = v117;
        sub_24075AAF4();
        (*(v116 + 8))(v52, v74);
      }

      else
      {
        LOBYTE(v141) = 5;
        sub_240750A44();
        v82 = v129;
        sub_24075AA54();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
        sub_240750DA4();
        v73 = v105;
        v83 = v119;
        sub_24075AAF4();
        (*(v118 + 8))(v82, v83);
      }

      (*(v134 + 8))(v53, v54);
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = v132;
      if (v57 != 6)
      {
        if (v57 == 7)
        {
          LOBYTE(v141) = 7;
          sub_2407508E8();
          v59 = v130;
          sub_24075AA54();
          (*(v120 + 8))(v59, v121);
          (*(v134 + 8))(v53, v54);
          swift_unknownObjectRelease();
          v60 = v150;
          swift_storeEnumTagMultiPayload();
LABEL_28:
          v92 = v140;
          goto LABEL_29;
        }

        LOBYTE(v141) = 8;
        sub_240750894();
        v80 = v131;
        sub_24075AA54();
        sub_2405B0DE4();
        v81 = v125;
        sub_24075AAF4();
        (*(v124 + 8))(v80, v81);
        (*(v134 + 8))(v53, v54);
        swift_unknownObjectRelease();
        v96 = v144;
        v97 = v142;
        v95 = v104;
        *v104 = v141;
        v95[1] = v97;
        v95[2] = v143;
        *(v95 + 48) = v96;
        goto LABEL_25;
      }

      LOBYTE(v141) = 6;
      sub_24075093C();
      v75 = v128;
      sub_24075AA54();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
      sub_240750CF0();
      v73 = v107;
      v76 = v123;
      sub_24075AAF4();
      (*(v122 + 8))(v75, v76);
      (*(v134 + 8))(v53, v54);
      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v98 = v73;
    goto LABEL_27;
  }

  if (v57 > 1u)
  {
    v58 = v132;
    if (v57 != 2)
    {
      LOBYTE(v141) = 3;
      sub_240750BA0();
      v79 = v127;
      sub_24075AA54();
      sub_2405E1BAC();
      v88 = v115;
      sub_24075AAF4();
      (*(v114 + 8))(v79, v88);
      (*(v134 + 8))(v53, v54);
      swift_unknownObjectRelease();
      v93 = v143;
      v94 = v142;
      v95 = v101;
      *v101 = v141;
      v95[1] = v94;
      *(v95 + 32) = v93;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      v98 = v95;
LABEL_27:
      v60 = v150;
      sub_240753AD0(v98, v150, type metadata accessor for MachSetupMessage);
      goto LABEL_28;
    }

    LOBYTE(v141) = 2;
    sub_240750BF4();
    v72 = v54;
    sub_24075AA54();
    type metadata accessor for ViewServiceConfiguration();
    sub_2407514E0(&qword_27E4B9C90, type metadata accessor for ViewServiceConfiguration);
    v84 = v103;
    v85 = v112;
    sub_24075AAF4();
    v86 = v134;
    (*(v113 + 8))(v51, v85);
    (*(v86 + 8))(v53, v72);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v71 = v84;
  }

  else if (v57)
  {
    LOBYTE(v141) = 1;
    sub_240750C48();
    v77 = v54;
    sub_24075AA54();
    v78 = v134;
    sub_2406E76AC();
    v87 = v111;
    sub_24075AAF4();
    (*(v110 + 8))(v50, v87);
    (*(v78 + 8))(v53, v77);
    swift_unknownObjectRelease();
    v89 = v144;
    v90 = v100;
    v100[2] = v143;
    v90[3] = v89;
    v90[4] = v145;
    v91 = v142;
    *v90 = v141;
    v90[1] = v91;
    swift_storeEnumTagMultiPayload();
    v71 = v90;
  }

  else
  {
    LOBYTE(v141) = 0;
    sub_240750C9C();
    v66 = v126;
    v67 = v54;
    sub_24075AA54();
    v68 = v134;
    type metadata accessor for SetupModel();
    sub_2407514E0(&qword_27E4BDD58, type metadata accessor for SetupModel);
    v69 = v102;
    v70 = v109;
    sub_24075AAF4();
    (*(v108 + 8))(v66, v70);
    (*(v68 + 8))(v53, v67);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v71 = v69;
  }

  v60 = v150;
  sub_240753AD0(v71, v150, type metadata accessor for MachSetupMessage);
  v92 = v140;
  v58 = v132;
LABEL_29:
  sub_240753AD0(v60, v58, type metadata accessor for MachSetupMessage);
  return __swift_destroy_boxed_opaque_existential_1(v92);
}

unint64_t sub_24074B400(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x656C6C65636E6163;
      break;
    case 2:
      result = 0x636E614372657375;
      break;
    case 3:
      result = 0x70696B5372657375;
      break;
    case 4:
      result = 0x636972656E6567;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
    case 14:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x64657473656ELL;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24074B5F8()
{
  sub_24075AE64();
  MachSetupMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24074B63C()
{
  sub_24075AE64();
  MachSetupMessage.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24074B678(uint64_t a1)
{
  v2 = sub_2407511A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B6B4(uint64_t a1)
{
  v2 = sub_2407511A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B6F0(uint64_t a1)
{
  v2 = sub_240751344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B72C(uint64_t a1)
{
  v2 = sub_240751344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B768(uint64_t a1)
{
  v2 = sub_240750EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B7A4(uint64_t a1)
{
  v2 = sub_240750EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2407534DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24074B810(uint64_t a1)
{
  v2 = sub_240750E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B84C(uint64_t a1)
{
  v2 = sub_240750E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B888(uint64_t a1)
{
  v2 = sub_24075114C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B8C4(uint64_t a1)
{
  v2 = sub_24075114C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B900(uint64_t a1)
{
  v2 = sub_240750FFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B93C(uint64_t a1)
{
  v2 = sub_240750FFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B978(uint64_t a1)
{
  v2 = sub_2407510F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074B9B4(uint64_t a1)
{
  v2 = sub_2407510F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074B9F0(uint64_t a1)
{
  v2 = sub_2407510A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BA2C(uint64_t a1)
{
  v2 = sub_2407510A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BA68(uint64_t a1)
{
  v2 = sub_240751248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BAA4(uint64_t a1)
{
  v2 = sub_240751248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BAE0(uint64_t a1)
{
  v2 = sub_240750FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BB1C(uint64_t a1)
{
  v2 = sub_240750FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BB58(uint64_t a1)
{
  v2 = sub_2407511F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BB94(uint64_t a1)
{
  v2 = sub_2407511F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BBD0(uint64_t a1)
{
  v2 = sub_240751050();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BC0C(uint64_t a1)
{
  v2 = sub_240751050();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BC48(uint64_t a1)
{
  v2 = sub_240750F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BC84(uint64_t a1)
{
  v2 = sub_240750F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BCC0(uint64_t a1)
{
  v2 = sub_240751398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BCFC(uint64_t a1)
{
  v2 = sub_240751398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BD38(uint64_t a1)
{
  v2 = sub_2407512F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BD74(uint64_t a1)
{
  v2 = sub_2407512F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BDB0(uint64_t a1)
{
  v2 = sub_24075129C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BDEC(uint64_t a1)
{
  v2 = sub_24075129C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24074BE28(uint64_t a1)
{
  v2 = sub_240750F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24074BE64(uint64_t a1)
{
  v2 = sub_240750F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetupError.encode(to:)(void *a1)
{
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5A8, &qword_240783240);
  v138 = *(v139 - 8);
  v3 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = &v102 - v4;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5B0, &qword_240783248);
  v135 = *(v136 - 8);
  v5 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v102 - v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5B8, &qword_240783250);
  v106 = *(v107 - 8);
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v105 = &v102 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5C0, &qword_240783258);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v102 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5C8, &qword_240783260);
  v109 = *(v110 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v102 - v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5D0, &qword_240783268);
  v132 = *(v133 - 8);
  v13 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v102 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5D8, &qword_240783270);
  v112 = *(v113 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v102 - v16;
  *&v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5E0, &qword_240783278);
  *&v148 = *(v149 - 8);
  v17 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v102 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5E8, &qword_240783280);
  v115 = *(v116 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v102 - v20;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5F0, &qword_240783288);
  v118 = *(v119 - 8);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v102 - v22;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE5F8, &qword_240783290);
  v145 = *(v146 - 8);
  v23 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v102 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE600, &qword_240783298);
  v130 = *(v25 - 8);
  v26 = *(v130 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v102 - v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE608, &qword_2407832A0);
  v121 = *(v122 - 8);
  v29 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v102 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE610, &qword_2407832A8);
  v124 = *(v125 - 8);
  v31 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v102 - v32;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE618, &qword_2407832B0);
  v127 = *(v128 - 8);
  v33 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE620, &qword_2407832B8);
  v129 = *(v35 - 8);
  v36 = *(v129 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v102 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE628, &unk_2407832C0);
  v40 = *(v39 - 8);
  v153 = v39;
  v154 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v102 - v42;
  v44 = *(v1 + 8);
  *&v151 = *v1;
  *&v150 = v44;
  v45 = *(v1 + 24);
  v143 = *(v1 + 16);
  v142 = v45;
  v46 = *(v1 + 40);
  v141 = *(v1 + 32);
  v140 = v46;
  v47 = *(v1 + 48);
  v48 = a1;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(v48, v50);
  sub_240750E58();
  v152 = v43;
  sub_24075AF74();
  if (v47 <= 2)
  {
    v65 = v144;
    v66 = v28;
    v67 = v145;
    v68 = v146;
    v69 = v147;
    v70 = v148;
    v71 = v149;
    if (!v47)
    {
      LOBYTE(v156) = 4;
      sub_240751248();
      v81 = v152;
      v77 = v153;
      sub_24075AB54();
      LOBYTE(v156) = 0;
      v82 = v155;
      sub_24075ABB4();
      if (v82)
      {
        v83 = v130;
      }

      else
      {
        LOBYTE(v156) = 1;
        sub_24075ABD4();
        v83 = v130;
        LOBYTE(v156) = 2;
        sub_24075ABB4();
      }

      (*(v83 + 8))(v66, v25);
      v85 = *(v154 + 8);
      v86 = v81;
      return v85(v86, v77);
    }

    v72 = v47 == 1;
    v74 = v152;
    v73 = v153;
    if (v72)
    {
      LOBYTE(v156) = 5;
      sub_2407511F4();
      v75 = v65;
      v84 = v73;
      sub_24075AB54();
      *&v156 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
      sub_2405EEFDC();
      sub_24075ABE4();
      (*(v67 + 8))(v75, v68);
    }

    else
    {
      LOBYTE(v156) = 8;
      sub_2407510F8();
      v84 = v73;
      sub_24075AB54();
      *&v156 = v151;
      *(&v156 + 1) = v150;
      *&v157 = v143;
      *(&v157 + 1) = v142;
      v158 = v141;
      v159 = v140;
      sub_24061ADE4();
      sub_24075ABE4();
      (*(v70 + 8))(v69, v71);
    }

    return (*(v154 + 8))(v74, v84);
  }

  else
  {
    if (v47 <= 4)
    {
      if (v47 == 3)
      {
        v51 = v151;
        v52 = *(v151 + 48);
        v53 = *(v151 + 56);
        v54 = *(v151 + 64);
        v55 = *(v151 + 72);
        v148 = *(v151 + 88);
        v149 = v55;
        v56 = *(v151 + 112);
        v147 = *(v151 + 104);
        v57 = *(v151 + 120);
        LOBYTE(v156) = 10;
        sub_240751050();
        v58 = *(v51 + 32);
        v150 = *(v51 + 16);
        v151 = v58;
        v59 = v131;
        v61 = v152;
        v60 = v153;
        sub_24075AB54();
        v156 = v150;
        v157 = v151;
        v158 = v52;
        v159 = v53;
        v160 = v54;
        v162 = 0;
        sub_2405B0D90();
        v62 = v133;
        v63 = v155;
        sub_24075ABE4();
        if (!v63)
        {
          v156 = v149;
          v157 = v148;
          v158 = v147;
          v159 = v56;
          v160 = v57;
          v162 = 1;
          sub_24075ABE4();
        }

        (*(v132 + 8))(v59, v62);
        return (*(v154 + 8))(v61, v60);
      }

      LOBYTE(v156) = 14;
      sub_240750F00();
      v76 = v134;
      v78 = v152;
      v77 = v153;
      sub_24075AB54();
      v79 = v136;
      sub_24075ABB4();
      v80 = &v161;
      goto LABEL_17;
    }

    if (v47 == 5)
    {
      LOBYTE(v156) = 15;
      sub_240750EAC();
      v76 = v137;
      v78 = v152;
      v77 = v153;
      sub_24075AB54();
      v79 = v139;
      sub_24075ABB4();
      v80 = &v163;
LABEL_17:
      (*(*(v80 - 32) + 8))(v76, v79);
      v85 = *(v154 + 8);
      v86 = v78;
      return v85(v86, v77);
    }

    if (v143 | v150 | v151 | v142 | v141 | v140)
    {
      v87 = v143 | v150 | v142 | v141 | v140;
      if (v151 != 1 || v87)
      {
        v90 = v152;
        v89 = v153;
        if (v151 != 2 || v87)
        {
          if (v151 != 3 || v87)
          {
            if (v151 != 4 || v87)
            {
              if (v151 != 5 || v87)
              {
                if (v151 != 6 || v87)
                {
                  if (v151 != 7 || v87)
                  {
                    if (v151 != 8 || v87)
                    {
                      LOBYTE(v156) = 13;
                      sub_240750F54();
                      v101 = v105;
                      sub_24075AB54();
                      v91 = *(v106 + 8);
                      v92 = v101;
                      v93 = &v139;
                    }

                    else
                    {
                      LOBYTE(v156) = 12;
                      sub_240750FA8();
                      v100 = v102;
                      sub_24075AB54();
                      v91 = *(v103 + 8);
                      v92 = v100;
                      v93 = &v136;
                    }
                  }

                  else
                  {
                    LOBYTE(v156) = 11;
                    sub_240750FFC();
                    v99 = v108;
                    sub_24075AB54();
                    v91 = *(v109 + 8);
                    v92 = v99;
                    v93 = &v142;
                  }
                }

                else
                {
                  LOBYTE(v156) = 9;
                  sub_2407510A4();
                  v98 = v111;
                  sub_24075AB54();
                  v91 = *(v112 + 8);
                  v92 = v98;
                  v93 = &v145;
                }
              }

              else
              {
                LOBYTE(v156) = 7;
                sub_24075114C();
                v97 = v114;
                sub_24075AB54();
                v91 = *(v115 + 8);
                v92 = v97;
                v93 = &v148;
              }
            }

            else
            {
              LOBYTE(v156) = 6;
              sub_2407511A0();
              v96 = v117;
              sub_24075AB54();
              v91 = *(v118 + 8);
              v92 = v96;
              v93 = &v149 + 1;
            }
          }

          else
          {
            LOBYTE(v156) = 3;
            sub_24075129C();
            v95 = v120;
            sub_24075AB54();
            v91 = *(v121 + 8);
            v92 = v95;
            v93 = &v151;
          }
        }

        else
        {
          LOBYTE(v156) = 2;
          sub_2407512F0();
          v94 = v123;
          sub_24075AB54();
          v91 = *(v124 + 8);
          v92 = v94;
          v93 = &v153;
        }
      }

      else
      {
        LOBYTE(v156) = 1;
        sub_240751344();
        v88 = v126;
        v90 = v152;
        v89 = v153;
        sub_24075AB54();
        v91 = *(v127 + 8);
        v92 = v88;
        v93 = &v156;
      }

      v91(v92, *(v93 - 32));
    }

    else
    {
      LOBYTE(v156) = 0;
      sub_240751398();
      v90 = v152;
      v89 = v153;
      sub_24075AB54();
      (*(v129 + 8))(v38, v35);
    }

    return (*(v154 + 8))(v90, v89);
  }
}

uint64_t SetupError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 48);
  if (v9 <= 2)
  {
    if (!*(v1 + 48))
    {
      MEMORY[0x245CC6BA0](4);
      sub_24075A114();
      MEMORY[0x245CC6BA0](v6);
LABEL_18:

      return sub_24075A114();
    }

    if (v9 == 1)
    {
      MEMORY[0x245CC6BA0](5);

      return sub_2405F115C(a1, v3);
    }

    MEMORY[0x245CC6BA0](8);
    sub_24075A114();
    if (v5)
    {
      sub_24075AE94();
      sub_24075A114();
      if (v8)
      {
LABEL_15:
        sub_24075AE94();
        goto LABEL_18;
      }
    }

    else
    {
      sub_24075AE94();
      if (v8)
      {
        goto LABEL_15;
      }
    }

    return sub_24075AE94();
  }

  if (*(v1 + 48) <= 4u)
  {
    if (v9 == 3)
    {
      v10 = *(v3 + 48);
      v11 = *(v3 + 56);
      v12 = *(v3 + 64);
      v13 = *(v3 + 104);
      v14 = *(v3 + 112);
      v15 = *(v3 + 120);
      v21 = *(v3 + 32);
      v22 = *(v3 + 16);
      v16 = *(v3 + 88);
      v23 = *(v3 + 72);
      MEMORY[0x245CC6BA0](10);
      SetupError.hash(into:)(a1);
      return SetupError.hash(into:)(a1);
    }

    v18 = 14;
    goto LABEL_17;
  }

  if (v9 == 5)
  {
    v18 = 15;
LABEL_17:
    MEMORY[0x245CC6BA0](v18);
    goto LABEL_18;
  }

  if (v6 | v4 | v3 | v5 | v7 | v8)
  {
    v19 = v6 | v4 | v5 | v7 | v8;
    if (v3 != 1 || v19)
    {
      if (v3 != 2 || v19)
      {
        if (v3 != 3 || v19)
        {
          if (v3 != 4 || v19)
          {
            if (v3 != 5 || v19)
            {
              if (v3 != 6 || v19)
              {
                if (v3 != 7 || v19)
                {
                  if (v3 != 8 || v19)
                  {
                    v20 = 13;
                  }

                  else
                  {
                    v20 = 12;
                  }
                }

                else
                {
                  v20 = 11;
                }
              }

              else
              {
                v20 = 9;
              }
            }

            else
            {
              v20 = 7;
            }
          }

          else
          {
            v20 = 6;
          }
        }

        else
        {
          v20 = 3;
        }
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  return MEMORY[0x245CC6BA0](v20);
}

uint64_t SetupError.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_24075AE64();
  SetupError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t SetupError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v177 = a2;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6B8, &qword_2407832D0);
  v165 = *(v162 - 8);
  v3 = *(v165 + 64);
  MEMORY[0x28223BE20](v162);
  v175 = &v131 - v4;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6C0, &qword_2407832D8);
  v163 = *(v164 - 8);
  v5 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v172 = &v131 - v6;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6C8, &qword_2407832E0);
  v159 = *(v161 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x28223BE20](v161);
  v176 = &v131 - v8;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6D0, &qword_2407832E8);
  v156 = *(v157 - 8);
  v9 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v174 = &v131 - v10;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6D8, &qword_2407832F0);
  v154 = *(v155 - 8);
  v11 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v173 = &v131 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6E0, &qword_2407832F8);
  v158 = *(v160 - 8);
  v13 = *(v158 + 64);
  MEMORY[0x28223BE20](v160);
  v182 = &v131 - v14;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6E8, &qword_240783300);
  v151 = *(v181 - 8);
  v15 = *(v151 + 64);
  MEMORY[0x28223BE20](v181);
  v170 = &v131 - v16;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6F0, &qword_240783308);
  v152 = *(v153 - 8);
  v17 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v171 = &v131 - v18;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE6F8, &qword_240783310);
  v149 = *(v150 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v169 = &v131 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE700, &qword_240783318);
  v145 = *(v146 - 8);
  v21 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v168 = &v131 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE708, &qword_240783320);
  v147 = *(v144 - 8);
  v23 = *(v147 + 64);
  MEMORY[0x28223BE20](v144);
  v167 = &v131 - v24;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE710, &qword_240783328);
  v148 = *(v142 - 8);
  v25 = *(v148 + 64);
  MEMORY[0x28223BE20](v142);
  v180 = &v131 - v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE718, &qword_240783330);
  v143 = *(v141 - 8);
  v27 = *(v143 + 64);
  MEMORY[0x28223BE20](v141);
  v179 = &v131 - v28;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE720, &qword_240783338);
  v140 = *(v178 - 8);
  v29 = *(v140 + 64);
  MEMORY[0x28223BE20](v178);
  v166 = &v131 - v30;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE728, &qword_240783340);
  v138 = *(v139 - 8);
  v31 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v33 = &v131 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE730, &qword_240783348);
  v137 = *(v34 - 8);
  v35 = *(v137 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v131 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE738, &qword_240783350);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v131 - v41;
  v44 = a1[3];
  v43 = a1[4];
  v194 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_240750E58();
  v45 = v183;
  sub_24075AF34();
  if (v45)
  {
    goto LABEL_8;
  }

  v133 = v37;
  v132 = v34;
  v134 = v33;
  v46 = v178;
  v47 = v179;
  v49 = v180;
  v48 = v181;
  v50 = v182;
  v135 = 0;
  v136 = v39;
  v183 = v38;
  v51 = sub_24075AB34();
  v52 = (2 * *(v51 + 16)) | 1;
  v190 = v51;
  v191 = v51 + 32;
  v192 = 0;
  v193 = v52;
  v53 = sub_240598F18();
  if (v192 != v193 >> 1)
  {
LABEL_6:
    v63 = sub_24075A8C4();
    swift_allocError();
    v65 = v64;
    v66 = v42;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v65 = &type metadata for SetupError;
    v68 = v183;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    (*(v136 + 8))(v66, v68);
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v69 = v194;
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  switch(v53)
  {
    case 0:
      LOBYTE(v184) = 0;
      sub_240751398();
      v54 = v133;
      v55 = v183;
      v56 = v135;
      sub_24075AA54();
      v57 = v56;
      if (v56)
      {
        goto LABEL_41;
      }

      (*(v137 + 8))(v54, v132);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      goto LABEL_20;
    case 1:
      LOBYTE(v184) = 1;
      sub_240751344();
      v97 = v134;
      v55 = v183;
      v98 = v135;
      sub_24075AA54();
      v57 = v98;
      if (v98)
      {
        goto LABEL_41;
      }

      (*(v138 + 8))(v97, v139);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 1;
      v123 = v194;
      goto LABEL_46;
    case 2:
      v88 = v46;
      LOBYTE(v184) = 2;
      sub_2407512F0();
      v89 = v166;
      v72 = v183;
      v90 = v135;
      sub_24075AA54();
      v57 = v90;
      if (v90)
      {
        goto LABEL_32;
      }

      (*(v140 + 8))(v89, v88);
      (*(v136 + 8))(v42, v72);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 2;
      v123 = v194;
      goto LABEL_46;
    case 3:
      LOBYTE(v184) = 3;
      sub_24075129C();
      v55 = v183;
      v94 = v135;
      sub_24075AA54();
      v57 = v94;
      if (v94)
      {
        goto LABEL_41;
      }

      (*(v143 + 8))(v47, v141);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 3;
      v123 = v194;
      goto LABEL_46;
    case 4:
      LOBYTE(v184) = 4;
      sub_240751248();
      v72 = v183;
      v79 = v135;
      sub_24075AA54();
      if (v79)
      {
        goto LABEL_32;
      }

      LOBYTE(v184) = 0;
      v80 = v142;
      v81 = sub_24075AAC4();
      v82 = v194;
      v83 = v136;
      v58 = v81;
      v182 = v42;
      v59 = v124;
      LOBYTE(v184) = 1;
      v125 = sub_24075AAE4();
      v126 = v148;
      v181 = v125;
      LOBYTE(v184) = 2;
      v57 = sub_24075AAC4();
      v61 = v129;
      (*(v126 + 8))(v49, v80);
      (*(v83 + 8))(v182, v183);
      swift_unknownObjectRelease();
      v62 = 0;
      v122 = 0;
      v60 = v181;
      v123 = v82;
      goto LABEL_46;
    case 5:
      LOBYTE(v184) = 5;
      sub_2407511F4();
      v99 = v167;
      v72 = v183;
      v100 = v135;
      sub_24075AA54();
      if (v100)
      {
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
      sub_2405EF234();
      v113 = v144;
      sub_24075AAF4();
      v57 = 0;
      v114 = v194;
      (*(v147 + 8))(v99, v113);
      (*(v136 + 8))(v42, v72);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v58 = v184;
      v122 = 1;
      v123 = v114;
      goto LABEL_46;
    case 6:
      LOBYTE(v184) = 6;
      sub_2407511A0();
      v103 = v168;
      v55 = v183;
      v104 = v135;
      sub_24075AA54();
      v57 = v104;
      if (v104)
      {
        goto LABEL_41;
      }

      (*(v145 + 8))(v103, v146);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 4;
      v123 = v194;
      goto LABEL_46;
    case 7:
      LOBYTE(v184) = 7;
      sub_24075114C();
      v95 = v169;
      v55 = v183;
      v96 = v135;
      sub_24075AA54();
      v57 = v96;
      if (v96)
      {
        goto LABEL_41;
      }

      (*(v149 + 8))(v95, v150);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 5;
      v123 = v194;
      goto LABEL_46;
    case 8:
      LOBYTE(v184) = 8;
      sub_2407510F8();
      v108 = v171;
      v55 = v183;
      v109 = v135;
      sub_24075AA54();
      if (v109)
      {
        goto LABEL_41;
      }

      sub_24061AD90();
      v118 = v153;
      sub_24075AAF4();
      v119 = v194;
      (*(v152 + 8))(v108, v118);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v58 = v184;
      v59 = v185;
      v60 = v186;
      v57 = v187;
      v122 = 2;
      v61 = v188;
      v62 = v189;
      v123 = v119;
      goto LABEL_46;
    case 9:
      LOBYTE(v184) = 9;
      sub_2407510A4();
      v86 = v170;
      v55 = v183;
      v87 = v135;
      sub_24075AA54();
      v57 = v87;
      if (v87)
      {
        goto LABEL_41;
      }

      (*(v151 + 8))(v86, v48);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v58 = 6;
LABEL_20:
      v122 = 6;
      v123 = v194;
      goto LABEL_46;
    case 10:
      LOBYTE(v184) = 10;
      sub_240751050();
      v105 = v42;
      v106 = v183;
      v107 = v135;
      sub_24075AA54();
      if (v107)
      {
        (*(v136 + 8))(v105, v106);
        goto LABEL_39;
      }

      v115 = v105;
      v58 = swift_allocObject();
      LOBYTE(v184) = 0;
      sub_2405B0DE4();
      v116 = v160;
      sub_24075AAF4();
      v117 = v194;
      LOBYTE(v184) = 1;
      sub_24075AAF4();
      v57 = 0;
      (*(v158 + 8))(v50, v116);
      (*(v136 + 8))(v115, v106);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 3;
      v123 = v117;
      goto LABEL_46;
    case 11:
      LOBYTE(v184) = 11;
      sub_240750FFC();
      v77 = v173;
      v55 = v183;
      v78 = v135;
      sub_24075AA54();
      v57 = v78;
      if (v78)
      {
        goto LABEL_41;
      }

      (*(v154 + 8))(v77, v155);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 7;
      v123 = v194;
      goto LABEL_46;
    case 12:
      LOBYTE(v184) = 12;
      sub_240750FA8();
      v84 = v174;
      v55 = v183;
      v85 = v135;
      sub_24075AA54();
      v57 = v85;
      if (v85)
      {
        goto LABEL_41;
      }

      (*(v156 + 8))(v84, v157);
      (*(v136 + 8))(v42, v55);
      swift_unknownObjectRelease();
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 6;
      v58 = 8;
      v123 = v194;
      goto LABEL_46;
    case 13:
      LOBYTE(v184) = 13;
      sub_240750F54();
      v101 = v176;
      v55 = v183;
      v102 = v135;
      sub_24075AA54();
      v57 = v102;
      if (!v102)
      {
        (*(v159 + 8))(v101, v161);
        (*(v136 + 8))(v42, v55);
        swift_unknownObjectRelease();
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v122 = 6;
        v58 = 9;
        v123 = v194;
        goto LABEL_46;
      }

LABEL_41:
      (*(v136 + 8))(v42, v55);
      goto LABEL_7;
    case 14:
      LOBYTE(v184) = 14;
      sub_240750F00();
      v71 = v172;
      v72 = v183;
      v73 = v135;
      sub_24075AA54();
      if (!v73)
      {
        v74 = v164;
        v75 = sub_24075AAC4();
        v76 = v194;
        v58 = v75;
        v120 = v42;
        v59 = v121;
        (*(v163 + 8))(v71, v74);
        (*(v136 + 8))(v120, v72);
        swift_unknownObjectRelease();
        v60 = 0;
        v57 = 0;
        v61 = 0;
        v62 = 0;
        v122 = 4;
        v123 = v76;
        goto LABEL_46;
      }

LABEL_32:
      (*(v136 + 8))(v42, v72);
      goto LABEL_7;
    case 15:
      LOBYTE(v184) = 15;
      sub_240750EAC();
      v91 = v175;
      v92 = v183;
      v93 = v135;
      sub_24075AA54();
      if (v93)
      {
        (*(v136 + 8))(v42, v92);
LABEL_39:
        swift_unknownObjectRelease();
        v69 = v194;
        return __swift_destroy_boxed_opaque_existential_1(v69);
      }

      v110 = v162;
      v58 = sub_24075AAC4();
      v111 = v91;
      v112 = v194;
      v127 = v42;
      v59 = v128;
      (*(v165 + 8))(v111, v110);
      (*(v136 + 8))(v127, v92);
      swift_unknownObjectRelease();
      v60 = 0;
      v57 = 0;
      v61 = 0;
      v62 = 0;
      v122 = 5;
      v123 = v112;
LABEL_46:
      v130 = v177;
      *v177 = v58;
      v130[1] = v59;
      v130[2] = v60;
      v130[3] = v57;
      v130[4] = v61;
      v130[5] = v62;
      *(v130 + 48) = v122;
      result = __swift_destroy_boxed_opaque_existential_1(v123);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_24074F0A4(uint64_t a1)
{
  v2 = sub_240753A14();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24074F0E0(uint64_t a1)
{
  v2 = sub_240753A14();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24074F150()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_24075AE64();
  SetupError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t sub_24074F1B0()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_24075AE64();
  SetupError.hash(into:)(v4);
  return sub_24075AED4();
}

uint64_t static SetupError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27E4BE480;

  return v0;
}

uint64_t static SetupError.errorDomain.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27E4BE480 = a1;
  off_27E4BE488 = a2;
}

uint64_t SetupError.errorCode.getter()
{
  v1 = *(v0 + 48);
  if (v1 <= 2)
  {
    v3 = 1005;
    if (v1 != 1)
    {
      v3 = 1007;
    }

    if (*(v0 + 48))
    {
      return v3;
    }

    else
    {
      return 1004;
    }
  }

  else if (*(v0 + 48) > 4u)
  {
    if (v1 == 5)
    {
      return 1014;
    }

    else
    {
      v4 = *v0;
      v5 = v0[3];
      v6 = v0[4] | v0[5];
      v7 = v0[2] | v0[1];
      if (v6 | *v0 | v5 | v7)
      {
        v8 = v6 | v5 | v7;
        if (v4 != 1 || v8)
        {
          if (v4 != 2 || v8)
          {
            if (v4 != 3 || v8)
            {
              if (v4 != 4 || v8)
              {
                if (v4 != 5 || v8)
                {
                  if (v4 != 6 || v8)
                  {
                    if (v4 != 7 || v8)
                    {
                      if (v8)
                      {
                        v9 = 0;
                      }

                      else
                      {
                        v9 = v4 == 8;
                      }

                      if (v9)
                      {
                        return 1011;
                      }

                      else
                      {
                        return 1012;
                      }
                    }

                    else
                    {
                      return 1010;
                    }
                  }

                  else
                  {
                    return 1009;
                  }
                }

                else
                {
                  return 1015;
                }
              }

              else
              {
                return 1006;
              }
            }

            else
            {
              return 1003;
            }
          }

          else
          {
            return 1002;
          }
        }

        else
        {
          return 1001;
        }
      }

      else
      {
        return 1000;
      }
    }
  }

  else if (v1 == 3)
  {
    return 1008;
  }

  else
  {
    return 1013;
  }
}

unint64_t SetupError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v10;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v25 = v7;
  v15 = v1;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_2405AF8D8(v1, v11, v12, v13, v14, v6, v7);
  v20 = SetupError.description.getter();
  v22 = v21;
  sub_2405AEA70(v15, v16, v17, v18, v19, v6, v25);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  v23 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v23;
}

uint64_t SetupError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  if (v6 <= 2)
  {
    if (!*(v0 + 48))
    {
      v14 = 0;
      sub_24075A864();
      MEMORY[0x245CC5E60](0xD00000000000001CLL, 0x80000002407868F0);
      MEMORY[0x245CC5E60](v1, v2);
      MEMORY[0x245CC5E60](0x203A65646F63202CLL, 0xE800000000000000);
      v9 = sub_24075AC34();
      MEMORY[0x245CC5E60](v9);

      MEMORY[0x245CC5E60](0xD000000000000018, 0x8000000240786910);
      MEMORY[0x245CC5E60](v3, v5);
      v10 = 46;
      v11 = 0xE100000000000000;
LABEL_15:
      MEMORY[0x245CC5E60](v10, v11);
      return v14;
    }

    if (v6 == 1)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD00000000000004CLL;
    }
  }

  else
  {
    if (*(v0 + 48) <= 4u)
    {
      if (v6 == 3)
      {
        return 0xD000000000000012;
      }

      sub_24075A864();

      v8 = 0xD000000000000018;
      goto LABEL_14;
    }

    if (v6 == 5)
    {
      sub_24075A864();

      v8 = 0xD00000000000001ALL;
LABEL_14:
      v14 = v8;
      v10 = v1;
      v11 = v2;
      goto LABEL_15;
    }

    v12 = v5 | *(v0 + 40);
    if (v4 | v2 | v1 | v3 | v12)
    {
      v13 = v4 | v2 | v3 | v12;
      if (v1 != 1 || v13)
      {
        if (v1 != 2 || v13)
        {
          if (v1 != 3 || v13)
          {
            if (v1 != 4 || v13)
            {
              if (v1 != 5 || v13)
              {
                if (v1 != 6 || v13)
                {
                  if (v1 != 7 || v13)
                  {
                    if (v1 != 8 || v13)
                    {
                      return 0xD000000000000017;
                    }

                    else
                    {
                      return 0xD000000000000036;
                    }
                  }

                  else
                  {
                    return 0xD000000000000022;
                  }
                }

                else
                {
                  return 0xD000000000000026;
                }
              }

              else
              {
                return 0xD00000000000001ALL;
              }
            }

            else
            {
              return 0xD000000000000035;
            }
          }

          else
          {
            return 0xD000000000000025;
          }
        }

        else
        {
          return 0xD00000000000002ELL;
        }
      }

      else
      {
        return 0xD000000000000014;
      }
    }

    else
    {
      return 0x6E776F6E6B6E55;
    }
  }
}

uint64_t sub_24074F938()
{
  swift_beginAccess();
  v0 = qword_27E4BE480;

  return v0;
}

uint64_t sub_24074F98C()
{
  v1 = *(v0 + 48);
  if (v1 <= 2)
  {
    v3 = 1005;
    if (v1 != 1)
    {
      v3 = 1007;
    }

    if (*(v0 + 48))
    {
      return v3;
    }

    else
    {
      return 1004;
    }
  }

  else if (*(v0 + 48) > 4u)
  {
    if (v1 == 5)
    {
      return 1014;
    }

    else
    {
      v4 = *v0;
      v5 = v0[3];
      v6 = v0[4] | v0[5];
      v7 = v0[2] | v0[1];
      if (v6 | *v0 | v5 | v7)
      {
        v8 = v6 | v5 | v7;
        if (v4 != 1 || v8)
        {
          if (v4 != 2 || v8)
          {
            if (v4 != 3 || v8)
            {
              if (v4 != 4 || v8)
              {
                if (v4 != 5 || v8)
                {
                  if (v4 != 6 || v8)
                  {
                    if (v4 != 7 || v8)
                    {
                      if (v8)
                      {
                        v9 = 0;
                      }

                      else
                      {
                        v9 = v4 == 8;
                      }

                      if (v9)
                      {
                        return 1011;
                      }

                      else
                      {
                        return 1012;
                      }
                    }

                    else
                    {
                      return 1010;
                    }
                  }

                  else
                  {
                    return 1009;
                  }
                }

                else
                {
                  return 1015;
                }
              }

              else
              {
                return 1006;
              }
            }

            else
            {
              return 1003;
            }
          }

          else
          {
            return 1002;
          }
        }

        else
        {
          return 1001;
        }
      }

      else
      {
        return 1000;
      }
    }
  }

  else if (v1 == 3)
  {
    return 1008;
  }

  else
  {
    return 1013;
  }
}

unint64_t sub_24074FAB8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B8950, &unk_2407656C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240765570;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_24075A0B4();
  *(inited + 40) = v10;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v25 = v7;
  v15 = v1;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  sub_2405AF8D8(v1, v11, v12, v13, v14, v6, v7);
  v20 = SetupError.description.getter();
  v22 = v21;
  sub_2405AEA70(v15, v16, v17, v18, v19, v6, v25);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  v23 = sub_2405BD228(inited);
  swift_setDeallocating();
  sub_2405B8A50(inited + 32, &unk_27E4BB680, &qword_240762680);
  return v23;
}

uint64_t _s12AppleIDSetup16MachSetupMessageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB870, &qword_2407831A0);
  v3 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v103 = &v100 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BB860, &unk_2407749A0);
  v5 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = &v100 - v6;
  v7 = type metadata accessor for AnisetteCommand.Response();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewServiceConfiguration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SetupModel();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v109 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MachSetupMessage();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v105 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v107 = &v100 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v108 = &v100 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v100 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v100 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v100 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v100 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BE9B8, &unk_2407851F8);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v100 - v40;
  v42 = &v100 + *(v39 + 56) - v40;
  sub_240753A68(v111, &v100 - v40, type metadata accessor for MachSetupMessage);
  v43 = a2;
  v44 = v42;
  sub_240753A68(v43, v42, type metadata accessor for MachSetupMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v46 = v42;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v47 = v105;
          sub_240753A68(v41, v105, type metadata accessor for MachSetupMessage);
          v111 = v41;
          v48 = *v47;
          v49 = *(v47 + 8);
          v51 = *(v47 + 16);
          v50 = *(v47 + 24);
          v53 = *(v47 + 32);
          v52 = *(v47 + 40);
          v54 = *(v47 + 48);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v56 = *v42;
            v55 = *(v46 + 1);
            v57 = *(v46 + 3);
            v109 = *(v46 + 2);
            v110 = v55;
            v58 = *(v46 + 5);
            v107 = *(v46 + 4);
            v108 = v57;
            v106 = v58;
            LODWORD(v105) = v46[48];
            *&v119 = v48;
            *(&v119 + 1) = v49;
            *&v120 = v51;
            *(&v120 + 1) = v50;
            *&v121 = v53;
            *(&v121 + 1) = v52;
            LOBYTE(v122) = v54;
            *&v114 = v56;
            *(&v114 + 1) = v55;
            *&v115 = v109;
            *(&v115 + 1) = v57;
            *&v116 = v107;
            *(&v116 + 1) = v58;
            LOBYTE(v117) = v105;
            v59 = static SetupError.== infix(_:_:)(&v119, &v114);
            sub_2405AEA70(v56, v110, v109, v108, v107, v106, v105);
            sub_2405AEA70(v48, v49, v51, v50, v53, v52, v54);
LABEL_26:
            sub_240753B38(v111, type metadata accessor for MachSetupMessage);
            return v59 & 1;
          }

          sub_2405AEA70(v48, v49, v51, v50, v53, v52, v54);
          v41 = v111;
          goto LABEL_44;
        }

        if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_28;
        }

LABEL_44:
        sub_2405B8A50(v41, &qword_27E4BE9B8, &unk_2407851F8);
LABEL_45:
        v59 = 0;
        return v59 & 1;
      }

      v69 = v107;
      sub_240753A68(v41, v107, type metadata accessor for MachSetupMessage);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v70 = v103;
        sub_2405E150C(v44, v103, &qword_27E4BB870, &qword_2407831A0);
        if (*v69 == *v70 && *(v69 + 1) == *(v70 + 1))
        {
          v71 = _s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0(&v69[*(v100 + 32)], &v70[*(v100 + 32)]);
          sub_2405B8A50(v70, &qword_27E4BB870, &qword_2407831A0);
          if (v71)
          {
            sub_2405B8A50(v69, &qword_27E4BB870, &qword_2407831A0);
LABEL_28:
            v90 = v41;
            goto LABEL_29;
          }
        }

        else
        {
          sub_2405B8A50(v70, &qword_27E4BB870, &qword_2407831A0);
        }

        sub_2405B8A50(v69, &qword_27E4BB870, &qword_2407831A0);
        sub_240753B38(v41, type metadata accessor for MachSetupMessage);
        goto LABEL_45;
      }

      v96 = &qword_27E4BB870;
      v97 = &qword_2407831A0;
      v98 = v69;
LABEL_43:
      sub_2405B8A50(v98, v96, v97);
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v91 = v108;
      sub_240753A68(v41, v108, type metadata accessor for MachSetupMessage);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v92 = v104;
        sub_2405E150C(v42, v104, &qword_27E4BB860, &unk_2407749A0);
        if (*v91 != *v92 || *(v91 + 8) != *(v92 + 8) || (_s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0((v91 + *(v101 + 32)), (v92 + *(v101 + 32))) & 1) == 0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770), v93 = *(v101 + 36), v94 = *(v91 + v93), v95 = *(v92 + v93), (sub_240759914() & 1) == 0))
        {
          sub_2405B8A50(v92, &qword_27E4BB860, &unk_2407749A0);
          sub_2405B8A50(v91, &qword_27E4BB860, &unk_2407749A0);
          sub_240753B38(v41, type metadata accessor for MachSetupMessage);
          goto LABEL_45;
        }

        sub_2405B8A50(v92, &qword_27E4BB860, &unk_2407749A0);
        sub_2405B8A50(v91, &qword_27E4BB860, &unk_2407749A0);
        v90 = v41;
LABEL_29:
        sub_240753B38(v90, type metadata accessor for MachSetupMessage);
        v59 = 1;
        return v59 & 1;
      }

      v96 = &qword_27E4BB860;
      v97 = &unk_2407749A0;
      v98 = v91;
      goto LABEL_43;
    }

    v67 = v106;
    sub_240753A68(v41, v106, type metadata accessor for MachSetupMessage);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_240753B38(v67, type metadata accessor for AnisetteCommand.Response);
      goto LABEL_44;
    }

    v64 = v41;
    v65 = type metadata accessor for AnisetteCommand.Response;
    v68 = v102;
    sub_240753AD0(v44, v102, type metadata accessor for AnisetteCommand.Response);
    v59 = _s12AppleIDSetup15AnisetteCommandV8ResponseO2eeoiySbAE_AEtFZ_0(v67, v68);
    sub_240753B38(v68, type metadata accessor for AnisetteCommand.Response);
    v66 = v67;
LABEL_51:
    sub_240753B38(v66, v65);
    sub_240753B38(v64, type metadata accessor for MachSetupMessage);
    return v59 & 1;
  }

  v60 = v34;
  v62 = v109;
  v61 = v110;
  if (EnumCaseMultiPayload > 1)
  {
    v63 = v42;
    if (EnumCaseMultiPayload != 2)
    {
      sub_240753A68(v41, v28, type metadata accessor for MachSetupMessage);
      v82 = *v28;
      v81 = *(v28 + 1);
      v84 = *(v28 + 2);
      v83 = *(v28 + 3);
      v85 = v41;
      v86 = v28[32];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v87 = *v42;
        v88 = *(v63 + 1);
        v111 = v85;
        v89 = *(v63 + 2);
        v110 = *(v63 + 3);
        LODWORD(v109) = v63[32];
        *&v119 = v82;
        *(&v119 + 1) = v81;
        *&v120 = v84;
        *(&v120 + 1) = v83;
        LOBYTE(v121) = v86;
        *&v114 = v87;
        *(&v114 + 1) = v88;
        *&v115 = v89;
        *(&v115 + 1) = v110;
        LOBYTE(v116) = v109;
        v59 = _s12AppleIDSetup15AnisetteCommandV7RequestO2eeoiySbAE_AEtFZ_0(&v119, &v114);
        sub_2405E1818(v87, v88, v89, v110, v109);
        sub_2405E1818(v82, v81, v84, v83, v86);
        goto LABEL_26;
      }

      sub_2405E1818(v82, v81, v84, v83, v86);
      v41 = v85;
      goto LABEL_44;
    }

    sub_240753A68(v41, v31, type metadata accessor for MachSetupMessage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_240753B38(v31, type metadata accessor for ViewServiceConfiguration);
      goto LABEL_44;
    }

    v64 = v41;
    v65 = type metadata accessor for ViewServiceConfiguration;
    sub_240753AD0(v44, v61, type metadata accessor for ViewServiceConfiguration);
    v59 = _s12AppleIDSetup24ViewServiceConfigurationV2eeoiySbAC_ACtFZ_0(v31, v61);
    sub_240753B38(v61, type metadata accessor for ViewServiceConfiguration);
    v66 = v31;
    goto LABEL_51;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_240753A68(v41, v36, type metadata accessor for MachSetupMessage);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_240753B38(v36, type metadata accessor for SetupModel);
      goto LABEL_44;
    }

    v64 = v41;
    v65 = type metadata accessor for SetupModel;
    sub_240753AD0(v44, v62, type metadata accessor for SetupModel);
    v59 = _s12AppleIDSetup10SetupModelV2eeoiySbAC_ACtFZ_0(v36, v62);
    sub_240753B38(v62, type metadata accessor for SetupModel);
    v66 = v36;
    goto LABEL_51;
  }

  v72 = v60;
  sub_240753A68(v41, v60, type metadata accessor for MachSetupMessage);
  v73 = v72[3];
  v121 = v72[2];
  v122 = v73;
  v123 = v72[4];
  v74 = v72[1];
  v119 = *v72;
  v120 = v74;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2406AA188(&v119);
    goto LABEL_44;
  }

  v75 = *(v42 + 1);
  v76 = *(v42 + 3);
  v116 = *(v42 + 2);
  v117 = v76;
  v77 = *(v42 + 3);
  v118 = *(v42 + 4);
  v78 = *(v42 + 1);
  v114 = *v42;
  v115 = v78;
  v79 = v72[3];
  v113[2] = v72[2];
  v113[3] = v79;
  v113[4] = v72[4];
  v80 = v72[1];
  v113[0] = *v72;
  v113[1] = v80;
  v112[2] = v116;
  v112[3] = v77;
  v112[4] = *(v42 + 4);
  v112[0] = v114;
  v112[1] = v75;
  v59 = _s12AppleIDSetup11SetupReportV2eeoiySbAC_ACtFZ_0(v113, v112);
  sub_2406AA188(&v114);
  sub_2406AA188(&v119);
  sub_240753B38(v41, type metadata accessor for MachSetupMessage);
  return v59 & 1;
}

uint64_t type metadata accessor for MachSetupMessage()
{
  result = qword_27E4BE760;
  if (!qword_27E4BE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_240750840()
{
  result = qword_27E4BE4E8;
  if (!qword_27E4BE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE4E8);
  }

  return result;
}

unint64_t sub_240750894()
{
  result = qword_27E4BE4F0;
  if (!qword_27E4BE4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE4F0);
  }

  return result;
}

unint64_t sub_2407508E8()
{
  result = qword_27E4BE4F8;
  if (!qword_27E4BE4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE4F8);
  }

  return result;
}

unint64_t sub_24075093C()
{
  result = qword_27E4BE500;
  if (!qword_27E4BE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE500);
  }

  return result;
}

unint64_t sub_240750990()
{
  result = qword_27E4BE508;
  if (!qword_27E4BE508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB870, &qword_2407831A0);
    sub_2407514E0(&qword_27E4BDD40, type metadata accessor for SetupModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE508);
  }

  return result;
}

unint64_t sub_240750A44()
{
  result = qword_27E4BE510;
  if (!qword_27E4BE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE510);
  }

  return result;
}

unint64_t sub_240750A98()
{
  result = qword_27E4BE518;
  if (!qword_27E4BE518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB860, &unk_2407749A0);
    sub_2407514E0(&qword_27E4BDD40, type metadata accessor for SetupModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE518);
  }

  return result;
}

unint64_t sub_240750B4C()
{
  result = qword_27E4BE520;
  if (!qword_27E4BE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE520);
  }

  return result;
}

unint64_t sub_240750BA0()
{
  result = qword_27E4BE528;
  if (!qword_27E4BE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE528);
  }

  return result;
}

unint64_t sub_240750BF4()
{
  result = qword_27E4BE530;
  if (!qword_27E4BE530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE530);
  }

  return result;
}

unint64_t sub_240750C48()
{
  result = qword_27E4BE538;
  if (!qword_27E4BE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE538);
  }

  return result;
}

unint64_t sub_240750C9C()
{
  result = qword_27E4BE540;
  if (!qword_27E4BE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE540);
  }

  return result;
}

unint64_t sub_240750CF0()
{
  result = qword_27E4BE598;
  if (!qword_27E4BE598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB870, &qword_2407831A0);
    sub_2407514E0(&qword_27E4BDD58, type metadata accessor for SetupModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE598);
  }

  return result;
}

unint64_t sub_240750DA4()
{
  result = qword_27E4BE5A0;
  if (!qword_27E4BE5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BB860, &unk_2407749A0);
    sub_2407514E0(&qword_27E4BDD58, type metadata accessor for SetupModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE5A0);
  }

  return result;
}

unint64_t sub_240750E58()
{
  result = qword_27E4BE630;
  if (!qword_27E4BE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE630);
  }

  return result;
}

unint64_t sub_240750EAC()
{
  result = qword_27E4BE638;
  if (!qword_27E4BE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE638);
  }

  return result;
}

unint64_t sub_240750F00()
{
  result = qword_27E4BE640;
  if (!qword_27E4BE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE640);
  }

  return result;
}

unint64_t sub_240750F54()
{
  result = qword_27E4BE648;
  if (!qword_27E4BE648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE648);
  }

  return result;
}

unint64_t sub_240750FA8()
{
  result = qword_27E4BE650;
  if (!qword_27E4BE650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE650);
  }

  return result;
}

unint64_t sub_240750FFC()
{
  result = qword_27E4BE658;
  if (!qword_27E4BE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE658);
  }

  return result;
}

unint64_t sub_240751050()
{
  result = qword_27E4BE660;
  if (!qword_27E4BE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE660);
  }

  return result;
}

unint64_t sub_2407510A4()
{
  result = qword_27E4BE668;
  if (!qword_27E4BE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE668);
  }

  return result;
}

unint64_t sub_2407510F8()
{
  result = qword_27E4BE670;
  if (!qword_27E4BE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE670);
  }

  return result;
}

unint64_t sub_24075114C()
{
  result = qword_27E4BE678;
  if (!qword_27E4BE678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE678);
  }

  return result;
}

unint64_t sub_2407511A0()
{
  result = qword_27E4BE680;
  if (!qword_27E4BE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE680);
  }

  return result;
}

unint64_t sub_2407511F4()
{
  result = qword_27E4BE688;
  if (!qword_27E4BE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE688);
  }

  return result;
}

unint64_t sub_240751248()
{
  result = qword_27E4BE690;
  if (!qword_27E4BE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE690);
  }

  return result;
}

unint64_t sub_24075129C()
{
  result = qword_27E4BE698;
  if (!qword_27E4BE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE698);
  }

  return result;
}

unint64_t sub_2407512F0()
{
  result = qword_27E4BE6A0;
  if (!qword_27E4BE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE6A0);
  }

  return result;
}

unint64_t sub_240751344()
{
  result = qword_27E4BE6A8;
  if (!qword_27E4BE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE6A8);
  }

  return result;
}

unint64_t sub_240751398()
{
  result = qword_27E4BE6B0;
  if (!qword_27E4BE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE6B0);
  }

  return result;
}

uint64_t sub_2407513EC(void *a1)
{
  a1[1] = sub_2407514E0(&qword_27E4BB878, type metadata accessor for MachSetupMessage);
  a1[2] = sub_2407514E0(&qword_27E4BB880, type metadata accessor for MachSetupMessage);
  result = sub_2407514E0(&qword_27E4BE740, type metadata accessor for MachSetupMessage);
  a1[3] = result;
  return result;
}

uint64_t sub_2407514E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240751528(void *a1)
{
  a1[1] = sub_2405B0DE4();
  a1[2] = sub_2405B0D90();
  result = sub_240751560();
  a1[3] = result;
  return result;
}

unint64_t sub_240751560()
{
  result = qword_27E4BE750;
  if (!qword_27E4BE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE750);
  }

  return result;
}

unint64_t sub_2407515B8()
{
  result = qword_27E4BE758;
  if (!qword_27E4BE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE758);
  }

  return result;
}

void sub_240751610()
{
  type metadata accessor for SetupModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ViewServiceConfiguration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AnisetteCommand.Response();
      if (v2 <= 0x3F)
      {
        sub_240751710(319, &qword_27E4BE770, type metadata accessor for _Coordinated.ValueUpdate);
        if (v3 <= 0x3F)
        {
          sub_240751710(319, &qword_27E4BE778, type metadata accessor for _Coordinated.ValueUpdate.Response);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240751710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SetupModel();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_240751770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2407517B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24075180C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2407519F8()
{
  result = qword_27E4BE780;
  if (!qword_27E4BE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE780);
  }

  return result;
}

unint64_t sub_240751A50()
{
  result = qword_27E4BE788;
  if (!qword_27E4BE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE788);
  }

  return result;
}

unint64_t sub_240751AA8()
{
  result = qword_27E4BE790;
  if (!qword_27E4BE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE790);
  }

  return result;
}

unint64_t sub_240751B00()
{
  result = qword_27E4BE798;
  if (!qword_27E4BE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE798);
  }

  return result;
}

unint64_t sub_240751B58()
{
  result = qword_27E4BE7A0;
  if (!qword_27E4BE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7A0);
  }

  return result;
}

unint64_t sub_240751BB0()
{
  result = qword_27E4BE7A8;
  if (!qword_27E4BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7A8);
  }

  return result;
}

unint64_t sub_240751C08()
{
  result = qword_27E4BE7B0;
  if (!qword_27E4BE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7B0);
  }

  return result;
}

unint64_t sub_240751C60()
{
  result = qword_27E4BE7B8;
  if (!qword_27E4BE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7B8);
  }

  return result;
}

unint64_t sub_240751CB8()
{
  result = qword_27E4BE7C0;
  if (!qword_27E4BE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7C0);
  }

  return result;
}

unint64_t sub_240751D10()
{
  result = qword_27E4BE7C8;
  if (!qword_27E4BE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7C8);
  }

  return result;
}

unint64_t sub_240751D68()
{
  result = qword_27E4BE7D0;
  if (!qword_27E4BE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7D0);
  }

  return result;
}

unint64_t sub_240751DC0()
{
  result = qword_27E4BE7D8;
  if (!qword_27E4BE7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7D8);
  }

  return result;
}

unint64_t sub_240751E18()
{
  result = qword_27E4BE7E0;
  if (!qword_27E4BE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7E0);
  }

  return result;
}

unint64_t sub_240751E70()
{
  result = qword_27E4BE7E8;
  if (!qword_27E4BE7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7E8);
  }

  return result;
}

unint64_t sub_240751EC8()
{
  result = qword_27E4BE7F0;
  if (!qword_27E4BE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7F0);
  }

  return result;
}

unint64_t sub_240751F20()
{
  result = qword_27E4BE7F8;
  if (!qword_27E4BE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE7F8);
  }

  return result;
}

unint64_t sub_240751F78()
{
  result = qword_27E4BE800;
  if (!qword_27E4BE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE800);
  }

  return result;
}

unint64_t sub_240751FD0()
{
  result = qword_27E4BE808;
  if (!qword_27E4BE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE808);
  }

  return result;
}

unint64_t sub_240752028()
{
  result = qword_27E4BE810;
  if (!qword_27E4BE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE810);
  }

  return result;
}

unint64_t sub_240752080()
{
  result = qword_27E4BE818;
  if (!qword_27E4BE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE818);
  }

  return result;
}

unint64_t sub_2407520D8()
{
  result = qword_27E4BE820;
  if (!qword_27E4BE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE820);
  }

  return result;
}

unint64_t sub_240752130()
{
  result = qword_27E4BE828;
  if (!qword_27E4BE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE828);
  }

  return result;
}

unint64_t sub_240752188()
{
  result = qword_27E4BE830;
  if (!qword_27E4BE830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE830);
  }

  return result;
}

unint64_t sub_2407521E0()
{
  result = qword_27E4BE838;
  if (!qword_27E4BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE838);
  }

  return result;
}

unint64_t sub_240752238()
{
  result = qword_27E4BE840;
  if (!qword_27E4BE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE840);
  }

  return result;
}

unint64_t sub_240752290()
{
  result = qword_27E4BE848;
  if (!qword_27E4BE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE848);
  }

  return result;
}

unint64_t sub_2407522E8()
{
  result = qword_27E4BE850;
  if (!qword_27E4BE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE850);
  }

  return result;
}

unint64_t sub_240752340()
{
  result = qword_27E4BE858;
  if (!qword_27E4BE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE858);
  }

  return result;
}

unint64_t sub_240752398()
{
  result = qword_27E4BE860;
  if (!qword_27E4BE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE860);
  }

  return result;
}

unint64_t sub_2407523F0()
{
  result = qword_27E4BE868;
  if (!qword_27E4BE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE868);
  }

  return result;
}

unint64_t sub_240752448()
{
  result = qword_27E4BE870;
  if (!qword_27E4BE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE870);
  }

  return result;
}

unint64_t sub_2407524A0()
{
  result = qword_27E4BE878;
  if (!qword_27E4BE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE878);
  }

  return result;
}

unint64_t sub_2407524F8()
{
  result = qword_27E4BE880;
  if (!qword_27E4BE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE880);
  }

  return result;
}

unint64_t sub_240752550()
{
  result = qword_27E4BE888;
  if (!qword_27E4BE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE888);
  }

  return result;
}

unint64_t sub_2407525A8()
{
  result = qword_27E4BE890;
  if (!qword_27E4BE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE890);
  }

  return result;
}

unint64_t sub_240752600()
{
  result = qword_27E4BE898;
  if (!qword_27E4BE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE898);
  }

  return result;
}

unint64_t sub_240752658()
{
  result = qword_27E4BE8A0;
  if (!qword_27E4BE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8A0);
  }

  return result;
}

unint64_t sub_2407526B0()
{
  result = qword_27E4BE8A8;
  if (!qword_27E4BE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8A8);
  }

  return result;
}

unint64_t sub_240752708()
{
  result = qword_27E4BE8B0;
  if (!qword_27E4BE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8B0);
  }

  return result;
}

unint64_t sub_240752760()
{
  result = qword_27E4BE8B8;
  if (!qword_27E4BE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8B8);
  }

  return result;
}

unint64_t sub_2407527B8()
{
  result = qword_27E4BE8C0;
  if (!qword_27E4BE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8C0);
  }

  return result;
}

unint64_t sub_240752810()
{
  result = qword_27E4BE8C8;
  if (!qword_27E4BE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8C8);
  }

  return result;
}

unint64_t sub_240752868()
{
  result = qword_27E4BE8D0;
  if (!qword_27E4BE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8D0);
  }

  return result;
}

unint64_t sub_2407528C0()
{
  result = qword_27E4BE8D8;
  if (!qword_27E4BE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8D8);
  }

  return result;
}

unint64_t sub_240752918()
{
  result = qword_27E4BE8E0;
  if (!qword_27E4BE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8E0);
  }

  return result;
}

unint64_t sub_240752970()
{
  result = qword_27E4BE8E8;
  if (!qword_27E4BE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8E8);
  }

  return result;
}

unint64_t sub_2407529C8()
{
  result = qword_27E4BE8F0;
  if (!qword_27E4BE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8F0);
  }

  return result;
}

unint64_t sub_240752A20()
{
  result = qword_27E4BE8F8;
  if (!qword_27E4BE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE8F8);
  }

  return result;
}

unint64_t sub_240752A78()
{
  result = qword_27E4BE900;
  if (!qword_27E4BE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE900);
  }

  return result;
}

unint64_t sub_240752AD0()
{
  result = qword_27E4BE908;
  if (!qword_27E4BE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE908);
  }

  return result;
}

unint64_t sub_240752B28()
{
  result = qword_27E4BE910;
  if (!qword_27E4BE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE910);
  }

  return result;
}

unint64_t sub_240752B80()
{
  result = qword_27E4BE918;
  if (!qword_27E4BE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE918);
  }

  return result;
}

unint64_t sub_240752BD8()
{
  result = qword_27E4BE920;
  if (!qword_27E4BE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE920);
  }

  return result;
}

unint64_t sub_240752C30()
{
  result = qword_27E4BE928;
  if (!qword_27E4BE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE928);
  }

  return result;
}

unint64_t sub_240752C88()
{
  result = qword_27E4BE930;
  if (!qword_27E4BE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE930);
  }

  return result;
}

unint64_t sub_240752CE0()
{
  result = qword_27E4BE938;
  if (!qword_27E4BE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE938);
  }

  return result;
}

unint64_t sub_240752D38()
{
  result = qword_27E4BE940;
  if (!qword_27E4BE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE940);
  }

  return result;
}

unint64_t sub_240752D90()
{
  result = qword_27E4BE948;
  if (!qword_27E4BE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE948);
  }

  return result;
}

unint64_t sub_240752DE8()
{
  result = qword_27E4BE950;
  if (!qword_27E4BE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE950);
  }

  return result;
}

unint64_t sub_240752E40()
{
  result = qword_27E4BE958;
  if (!qword_27E4BE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE958);
  }

  return result;
}

unint64_t sub_240752E98()
{
  result = qword_27E4BE960;
  if (!qword_27E4BE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE960);
  }

  return result;
}

unint64_t sub_240752EF0()
{
  result = qword_27E4BE968;
  if (!qword_27E4BE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE968);
  }

  return result;
}

unint64_t sub_240752F48()
{
  result = qword_27E4BE970;
  if (!qword_27E4BE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE970);
  }

  return result;
}

unint64_t sub_240752FA0()
{
  result = qword_27E4BE978;
  if (!qword_27E4BE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE978);
  }

  return result;
}

unint64_t sub_240752FF8()
{
  result = qword_27E4BE980;
  if (!qword_27E4BE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE980);
  }

  return result;
}

unint64_t sub_240753050()
{
  result = qword_27E4BE988;
  if (!qword_27E4BE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE988);
  }

  return result;
}

unint64_t sub_2407530A8()
{
  result = qword_27E4BE990;
  if (!qword_27E4BE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE990);
  }

  return result;
}

unint64_t sub_240753100()
{
  result = qword_27E4BE998;
  if (!qword_27E4BE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE998);
  }

  return result;
}

unint64_t sub_240753158()
{
  result = qword_27E4BE9A0;
  if (!qword_27E4BE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE9A0);
  }

  return result;
}

unint64_t sub_2407531B0()
{
  result = qword_27E4BE9A8;
  if (!qword_27E4BE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE9A8);
  }

  return result;
}

uint64_t sub_240753204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7075746573 && a2 == 0xE500000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F706572 && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024078A450 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024078A470 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024078A490 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002407865B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000240786590 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74706965636572 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2407534DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xED000064656C6C65 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70696B5372657375 && a2 == 0xEB00000000646570 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002407869F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000240786A10 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002407866F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024078A4B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024078A4D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64657473656ELL && a2 == 0xE600000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024078A4F0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000024078A510 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024078A530 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024078A550 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024078A570 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_240753A14()
{
  result = qword_27E4BE9B0;
  if (!qword_27E4BE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BE9B0);
  }

  return result;
}

uint64_t sub_240753A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240753AD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240753B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AISSetupAnalyticsEvent.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  v5 = sub_240759744();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed) = 0;
  v7 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics;
  type metadata accessor for AISAnalytics();
  *(v3 + v7) = swift_initStaticObject();
  v8 = (v3 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x8000000240788DE0;
  return v3;
}

uint64_t sub_240753CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v54 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v50 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v50 - v9;
  v11 = sub_240759744();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v52 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v50 - v16;
  v18 = sub_2405BD46C(MEMORY[0x277D84F90]);
  v19 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  v53 = v19;
  sub_24061DDE0(v1 + v19, v10);
  v20 = v12[6];
  if (v20(v10, 1, v11) == 1)
  {
    v8 = v10;
    goto LABEL_5;
  }

  v50[1] = v2;
  v51 = v18;
  v21 = v12[4];
  v21(v17, v10, v11);
  v22 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
  swift_beginAccess();
  sub_24061DDE0(v1 + v22, v8);
  if (v20(v8, 1, v11) != 1)
  {
    v44 = v52;
    v21(v52, v8, v11);
    result = sub_2407596E4();
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -9.22337204e18)
    {
      if (v45 < 9.22337204e18)
      {
        v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v47 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v47;
        sub_2405BC9B8(v46, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
        v18 = v55;
        v49 = v12[1];
        v49(v44, v11);
        v49(v17, v11);
        if (!*(v1 + 24))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  (v12[1])(v17, v11);
  v18 = v51;
LABEL_5:
  sub_2405B8A50(v8, &qword_27E4B92A8, &qword_240779B50);
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v23 = sub_240759AE4();
  __swift_project_value_buffer(v23, qword_280FADA00);

  v24 = sub_240759AC4();
  v25 = sub_24075A604();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56 = v52;
    *v26 = 136315394;
    v27 = v54;
    sub_24061DDE0(v1 + v53, v54);
    v28 = sub_24075A0E4();
    v30 = sub_2405BBA7C(v28, v29, &v56);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v31 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_24061DDE0(v1 + v31, v27);
    v32 = sub_24075A0E4();
    v34 = v18;
    v35 = sub_2405BBA7C(v32, v33, &v56);

    *(v26 + 14) = v35;
    v18 = v34;
    _os_log_impl(&dword_240579000, v24, v25, "Unable to calculate duration for AISSetupAnalyticsEvent \nstartDate: (%s) \nendDate: (%s)", v26, 0x16u);
    v36 = v52;
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v36, -1, -1);
    MEMORY[0x245CC76B0](v26, -1, -1);
  }

  if (!*(v1 + 24))
  {
    goto LABEL_11;
  }

LABEL_10:
  v37 = *(v1 + 16);
  v38 = sub_24075A084();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v18;
  sub_2405BC9B8(v38, 0x43746E756F636361, 0xEC0000007373616CLL, v39);
  v18 = v56;
LABEL_11:
  v40 = *(v1 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed);
  if (v40 != 2)
  {
    v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v18;
    sub_2405BC9B8(v41, 0x6563637553646964, 0xEA00000000006465, v42);
    return v56;
  }

  return v18;
}

uint64_t _s12AppleIDSetup22AISSetupAnalyticsEventC4nameSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name + 8);

  return v1;
}

uint64_t AISSetupAnalyticsEvent.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate;
  v2 = sub_240759744();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed) = 0;
  v4 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics;
  type metadata accessor for AISAnalytics();
  *(v0 + v4) = swift_initStaticObject();
  v5 = (v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name);
  *v5 = 0xD00000000000001CLL;
  v5[1] = 0x8000000240788DE0;
  return v0;
}

uint64_t sub_2407543CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = sub_240759744();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IdMSAccount();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  *(v2 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_didSucceed) = 1;
  if (v18)
  {
    v38 = v12;
    v39 = v8;
    v40 = v2;
    *&v52 = v17;
    *(&v52 + 1) = v18;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = objc_opt_self();

    v20 = [v19 sharedInstance];
    v49 = v54;
    v50 = v55;
    v51 = v56;
    v47 = v52;
    v48 = v53;
    v26 = sub_240619D44(&v47, v20);
    ACAccount.into(with:)(v20, v16);

    sub_240618468(&v52);
    v27 = [v19 sharedInstance];
    v28 = *(v16 + 1);
    v29 = *(v16 + 3);
    v49 = *(v16 + 2);
    v50 = v29;
    v30 = *(v16 + 3);
    v51 = *(v16 + 4);
    v31 = *(v16 + 1);
    v47 = *v16;
    v48 = v31;
    v44 = v49;
    v45 = v30;
    v46 = *(v16 + 4);
    v42 = v47;
    v43 = v28;
    sub_2405AF99C(&v47, v41);
    v32 = sub_240619D44(&v42, v27);

    v41[2] = v44;
    v41[3] = v45;
    v41[4] = v46;
    v41[0] = v42;
    v41[1] = v43;
    sub_240618468(v41);
    v33 = v40;
    sub_240754A84(v32);
    v34 = v38;
    sub_240759734();
    v35 = v39;
    (*(v9 + 16))(v7, v34, v39);
    (*(v9 + 56))(v7, 0, 1, v35);
    v36 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v7, v33 + v36);
    swift_endAccess();
    sub_2406A9CA4(v33);

    (*(v9 + 8))(v34, v35);
    return sub_240618890(v16);
  }

  else
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v21 = sub_240759AE4();
    __swift_project_value_buffer(v21, qword_27E4B8518);
    v22 = sub_240759AC4();
    v23 = sub_24075A5E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_240579000, v22, v23, "Setup report is missing altDSID. Ending analytics event with missing account class.", v24, 2u);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    sub_240759734();
    (*(v9 + 16))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v25 = OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate;
    swift_beginAccess();
    sub_2406A9C2C(v7, v2 + v25);
    swift_endAccess();
    sub_2406A9CA4(v2);
    return (*(v9 + 8))(v12, v8);
  }
}

id sub_240754A84(void *a1)
{
  v2 = v1;
  if ([a1 isNull])
  {
    if (qword_27E4B5EB8 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_27E4B8518);
    v5 = a1;
    v6 = sub_240759AC4();
    v7 = sub_24075A5E4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_240579000, v6, v7, "Missing account class found for the account %@", v8, 0xCu);
      sub_2405B8A50(v9, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v9, -1, -1);
      MEMORY[0x245CC76B0](v8, -1, -1);
    }
  }

  result = [a1 aa_accountClass];
  if (result)
  {
    v12 = result;
    v13 = sub_24075A0B4();
    v15 = v14;

    v16 = *(v2 + 24);
    *(v2 + 16) = v13;
    *(v2 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AISSetupAnalyticsEvent.deinit()
{
  v1 = *(v0 + 24);

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate, &qword_27E4B92A8, &qword_240779B50);
  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, &qword_27E4B92A8, &qword_240779B50);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics);

  v3 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name + 8);

  return v0;
}

uint64_t AISSetupAnalyticsEvent.__deallocating_deinit()
{
  v1 = v0[3];

  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_startDate, &qword_27E4B92A8, &qword_240779B50);
  sub_2405B8A50(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_endDate, &qword_27E4B92A8, &qword_240779B50);
  v2 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_analytics);

  v3 = *(v0 + OBJC_IVAR____TtC12AppleIDSetup22AISSetupAnalyticsEvent_name + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AISSetupAnalyticsEvent()
{
  result = qword_27E4BE9D8;
  if (!qword_27E4BE9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240754E04()
{
  sub_2406E4354();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for CodingUserInfoKeyNotFound()
{
  result = qword_27E4BE9E8;
  if (!qword_27E4BE9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240754FB4()
{
  result = sub_24075A9B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_240755020()
{
  v0 = sub_24075AEF4();
  sub_24075AF24();
  return v0;
}

uint64_t sub_240755068@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
  *a4 = a1;

  sub_24075A864();

  v9 = sub_24075AFC4();
  MEMORY[0x245CC5E60](v9);

  MEMORY[0x245CC5E60](0xD00000000000001ALL, 0x800000024078A610);
  MEMORY[0x245CC5E60](a2, a3);
  sub_24075A8A4();
  v10 = *MEMORY[0x277D84160];
  v11 = sub_24075A8C4();
  v12 = *(*(v11 - 8) + 104);

  return v12(a4, v10, v11);
}

uint64_t sub_2407551CC()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0xD00000000000001ALL, 0x800000024078A5F0);
  sub_24075A9B4();
  sub_24075A994();
  return 0;
}

void *sub_24075525C(void *a1)
{
  v4 = MEMORY[0x277D85000];
  v5 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x70);
  swift_beginAccess();
  if (v5[8])
  {
    return 0;
  }

  v7 = v1;
  v12 = *v5;
  sub_24075595C();
  result = static NSXPCListenerEndpoint.developedUnarchive(from:backing:)(&v12, a1);
  if (!v2)
  {
    v8 = *((*v4 & *v1) + 0x68);
    v9 = result;
    swift_beginAccess();
    v10 = *(v7 + v8);
    *(v7 + v8) = v9;

    *v5 = 0;
    v5[8] = 1;
    v11 = v9;
    return v9;
  }

  return result;
}

id DefaultObjcArchiver.__allocating_init(requiringSecureCoding:backing:)(char a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_2405F7830(a2, v5 + OBJC_IVAR____TtC12AppleIDSetup19DefaultObjcArchiver_encoder);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  [v6 setRequiresSecureCoding_];
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

id DefaultObjcArchiver.init(requiringSecureCoding:backing:)(char a1, uint64_t *a2)
{
  sub_2405F7830(a2, v2 + OBJC_IVAR____TtC12AppleIDSetup19DefaultObjcArchiver_encoder);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DefaultObjcArchiver();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 setRequiresSecureCoding_];
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t static DefaultObjcArchiver.archivedData<A>(for:backing:)(uint64_t a1, uint64_t a2)
{
  sub_2405F7830(a2, v10);
  v3 = type metadata accessor for DefaultObjcArchiver();
  v4 = objc_allocWithZone(v3);
  sub_2405F7830(v10, v4 + OBJC_IVAR____TtC12AppleIDSetup19DefaultObjcArchiver_encoder);
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = objc_msgSendSuper2(&v9, sel_init);
  [v5 setRequiresSecureCoding_];
  __swift_destroy_boxed_opaque_existential_1(v10);
  [v5 setOutputFormat_];
  [v5 encodeObject:a1 forKey:*MEMORY[0x277CCA308]];
  [v5 finishEncoding];
  v6 = [v5 encodedData];
  v7 = sub_2407596C4();

  return v7;
}

uint64_t sub_2407555E4(uint64_t a1)
{
  sub_2405B044C(a1, v25, &qword_27E4BA1E8, &qword_24076E1C0);
  if (v26)
  {
    sub_24075595C();
    if (swift_dynamicCast())
    {
      v3 = v23[0];
      sub_2405F7830(v1 + OBJC_IVAR____TtC12AppleIDSetup19DefaultObjcArchiver_encoder, v25);
      sub_2405F7830(v25, v23);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BB5F8, &qword_2407743E0);
      v5 = objc_allocWithZone(v4);
      v6 = MEMORY[0x277D85000];
      v7 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
      *(v5 + v7) = 0;
      v8 = v5 + *((*v6 & *v5) + 0x70);
      *v8 = 0;
      v8[8] = 1;
      sub_2405B044C(v23, v5 + *((*v6 & *v5) + 0x60), &qword_27E4BB5E8, &qword_240785350);
      swift_beginAccess();
      *(v5 + v7) = v3;
      swift_beginAccess();
      *v8 = 0;
      v8[8] = 1;
      v22.receiver = v5;
      v22.super_class = v4;
      v9 = v3;
      v10 = objc_msgSendSuper2(&v22, sel_init);
      sub_2405B8A50(v23, &qword_27E4BB5E8, &qword_240785350);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v26 = v4;

      v25[0] = v10;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2405B8A50(v25, &qword_27E4BA1E8, &qword_24076E1C0);
  }

  sub_2405B044C(a1, v25, &qword_27E4BA1E8, &qword_24076E1C0);
LABEL_6:
  sub_2405B044C(v25, v23, &qword_27E4BA1E8, &qword_24076E1C0);
  v11 = v24;
  if (v24)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v12);
    v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_24075ACE4();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_24075A084();
  v19 = type metadata accessor for DefaultObjcArchiver();
  v27.receiver = v1;
  v27.super_class = v19;
  objc_msgSendSuper2(&v27, sel_encodeObject_forKey_, v17, v18);
  swift_unknownObjectRelease();

  return sub_2405B8A50(v25, &qword_27E4BA1E8, &qword_24076E1C0);
}

unint64_t sub_24075595C()
{
  result = qword_27E4BEA00;
  if (!qword_27E4BEA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E4BEA00);
  }

  return result;
}

id DefaultObjcArchiver.__allocating_init(requiringSecureCoding:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initRequiringSecureCoding_];
}

id DefaultObjcArchiver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DefaultObjcArchiver.__allocating_init(forWritingWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initForWritingWithMutableData_];

  return v3;
}

id DefaultObjcUnarchiver.__allocating_init(forReadingFrom:backing:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_24075655C(a1, a2, a3);
  sub_2405BCD98(a1, a2);
  return v8;
}

id DefaultObjcUnarchiver.init(forReadingFrom:backing:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = sub_24075655C(a1, a2, a3);
  sub_2405BCD98(a1, a2);
  return v5;
}

uint64_t static DefaultObjcUnarchiver.unarchivedObject<A>(ofType:from:backing:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2405F7830(a4, v14);
  v9 = objc_allocWithZone(type metadata accessor for DefaultObjcUnarchiver());
  sub_2405BB9D4(a2, a3);
  v10 = sub_24075655C(a2, a3, v14);
  sub_2405BCD98(a2, a3);
  if (!v5)
  {
    v11 = v10;
    [v11 setRequiresSecureCoding_];
    [v11 setDecodingFailurePolicy_];

    v12 = *MEMORY[0x277CCA308];
    sub_24075A0B4();
    a5 = sub_24075A6B4();
  }

  return a5;
}

void sub_240755ECC(uint64_t a1@<X8>)
{
  v3 = sub_24075A084();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DefaultObjcUnarchiver();
  v4 = objc_msgSendSuper2(&v11, sel_decodeObjectForKey_, v3);

  if (v4)
  {
    sub_24075A754();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v12 = v9;
  v13 = v10;
  sub_2405B044C(&v12, &v9, &qword_27E4BA1E8, &qword_24076E1C0);
  if (!*(&v10 + 1))
  {
    sub_2405B8A50(&v9, &qword_27E4BA1E8, &qword_24076E1C0);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E4BB5F8, &qword_2407743E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = v13;
    *a1 = v12;
    *(a1 + 16) = v6;
    return;
  }

  v5 = sub_24075525C(&v1[OBJC_IVAR____TtC12AppleIDSetup21DefaultObjcUnarchiver_decoder]);
  if (v5)
  {
    v7 = v5;
    *(a1 + 24) = sub_24075595C();

    *a1 = v7;
    sub_2405B8A50(&v12, &qword_27E4BA1E8, &qword_24076E1C0);
  }

  else
  {
    sub_2405B8A50(&v12, &qword_27E4BA1E8, &qword_24076E1C0);

    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

id DefaultObjcUnarchiver.__allocating_init(forReadingFrom:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(v3);
  v7 = sub_2407596B4();
  v13[0] = 0;
  v8 = [v6 initForReadingFromData:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_2407595D4();

    swift_willThrow();
  }

  sub_2405BCD98(a1, a2);
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

id DefaultObjcUnarchiver.__allocating_init(forReadingWith:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2407596B4();
  v7 = [v5 initForReadingWithData_];

  sub_2405BCD98(a1, a2);
  return v7;
}

id sub_2407564BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_24075655C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_2405F7830(a3, v3 + OBJC_IVAR____TtC12AppleIDSetup21DefaultObjcUnarchiver_decoder);
  v5 = sub_2407596B4();
  v12[0] = 0;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DefaultObjcUnarchiver();
  v6 = objc_msgSendSuper2(&v11, sel_initForReadingFromData_error_, v5, v12);

  if (v6)
  {
    v7 = v12[0];
  }

  else
  {
    v8 = v12[0];
    sub_2407595D4();

    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(a3);
  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t RemoteRole.peerDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 6) | ((*(v1 + 14) | (*(v1 + 30) << 16)) << 32);
  if ((v3 & 0xC000000000) != 0)
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = v1[1];
    v7 = v1[2];
    v4 = *v1;
    v5 = v7 & 0xFF0000FFFFLL;
    v10[0] = v4;
    v10[1] = v6;
    v10[2] = v7;
    v13 = BYTE6(v3);
    v12 = WORD2(v3);
    v11 = v3;
    result = sub_240607D50(v10, &v9);
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;
  *(a1 + 30) = BYTE6(v3);
  *(a1 + 28) = WORD2(v3);
  return result;
}

uint64_t sub_2407567B0(uint64_t a1)
{
  v2 = sub_2407586A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407567EC(uint64_t a1)
{
  v2 = sub_2407586A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240756828(uint64_t a1)
{
  v2 = sub_240758550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240756864(uint64_t a1)
{
  v2 = sub_240758550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2407568A0(uint64_t a1)
{
  v2 = sub_24075864C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2407568DC(uint64_t a1)
{
  v2 = sub_24075864C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_240756918()
{
  v1 = *v0;
  v2 = 0x7463697274736572;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E65696C43656C62;
  if (v1 != 1)
  {
    v5 = 0x6576726553656C62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2407569EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_240759088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240756A14(uint64_t a1)
{
  v2 = sub_2407584FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240756A50(uint64_t a1)
{
  v2 = sub_2407584FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240756A8C(uint64_t a1)
{
  v2 = sub_2407585F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240756AC8(uint64_t a1)
{
  v2 = sub_2407585F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240756B04(uint64_t a1)
{
  v2 = sub_2407585A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240756B40(uint64_t a1)
{
  v2 = sub_2407585A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240756B7C(uint64_t a1)
{
  v2 = sub_2407586F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240756BB8(uint64_t a1)
{
  v2 = sub_2407586F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA10, &qword_2407853F0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA18, &qword_2407853F8);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA20, &qword_240785400);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v43 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA28, &qword_240785408);
  v45 = *(v46 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA30, &qword_240785410);
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA38, &qword_240785418);
  v50 = *(v18 - 8);
  v51 = v18;
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA40, &unk_240785420);
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = *(v62 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = *v1;
  v60 = v1[1];
  v61 = v24;
  v25 = v1[2];
  v26 = *(v1 + 14);
  v27 = *(v1 + 6) | ((v26 | (*(v1 + 30) << 16)) << 32);
  v29 = a1[3];
  v28 = a1[4];
  v30 = a1;
  v32 = &v43 - v31;
  __swift_project_boxed_opaque_existential_1(v30, v29);
  sub_2407584FC();
  sub_24075AF74();
  if ((v26 >> 6) <= 1u)
  {
    if (!(v26 >> 6))
    {
      v43 = v32;
      LOBYTE(v64) = 1;
      sub_2407586A0();
      v33 = v63;
      sub_24075AB54();
      v64 = v61;
      v65 = v60;
      v66 = v25;
      v67 = BYTE4(v25);
      v68 = v27;
      v69 = BYTE4(v27);
      v70 = BYTE5(v27);
      v71 = BYTE6(v27);
      sub_2406BAAB4();
      v34 = v53;
      sub_24075ABE4();
      (*(v52 + 8))(v17, v34);
      return (*(v62 + 8))(v43, v33);
    }

    LOBYTE(v64) = 3;
    sub_2407585F8();
    v36 = v54;
    v37 = v63;
    sub_24075AB54();
    v64 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
    sub_240758748(&qword_27E4BCDC0);
    v38 = v56;
    sub_24075ABE4();
    v39 = v55;
    goto LABEL_7;
  }

  if (v26 >> 6 == 2)
  {
    LOBYTE(v64) = 4;
    sub_2407585A4();
    v36 = v57;
    v37 = v63;
    sub_24075AB54();
    v64 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
    sub_240758748(&qword_27E4BCDC0);
    v38 = v59;
    sub_24075ABE4();
    v39 = v58;
LABEL_7:
    (*(v39 + 8))(v36, v38);
    return (*(v62 + 8))(v32, v37);
  }

  if (v25 | v60 | v61 || v27 != 0xC000000000)
  {
    if (v27 == 0xC000000000 && v61 == 1 && !(v25 | v60))
    {
      LOBYTE(v64) = 2;
      sub_24075864C();
      v41 = v44;
      v40 = v63;
      sub_24075AB54();
      (*(v45 + 8))(v41, v46);
    }

    else
    {
      LOBYTE(v64) = 5;
      sub_240758550();
      v42 = v47;
      v40 = v63;
      sub_24075AB54();
      (*(v48 + 8))(v42, v49);
    }
  }

  else
  {
    LOBYTE(v64) = 0;
    sub_2407586F4();
    v40 = v63;
    sub_24075AB54();
    (*(v50 + 8))(v21, v51);
  }

  return (*(v62 + 8))(v32, v40);
}

void RemoteRole.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 24) | ((v4 | (*(v0 + 30) << 16)) << 32);
  if ((v4 >> 6) > 1u)
  {
    if (v4 >> 6 != 2)
    {
      if (v3 | v2 | v1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5 == 0xC000000000;
      }

      if (v7)
      {
        v10 = 0;
      }

      else if (v5 == 0xC000000000 && v1 == 1 && (v3 | v2) == 0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 5;
      }

      MEMORY[0x245CC6BA0](v10);
      return;
    }

    MEMORY[0x245CC6BA0](4);
    if (!v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!(v4 >> 6))
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075AE94();
      if (v2)
      {
        sub_24075A114();
      }

      sub_24075AEA4();
      sub_24075AE94();
      sub_24075AEB4();
      MEMORY[0x245CC6BA0](qword_240785CE0[SBYTE4(v5)]);
      sub_24075AE94();
      sub_24075AE94();
      return;
    }

    MEMORY[0x245CC6BA0](3);
    if (!v1)
    {
LABEL_11:
      sub_24075AE94();
      return;
    }
  }

  sub_24075AE94();
  v6 = v1;
  sub_24075A6E4();

  sub_240604AB8(v1, v2, v3, v5);
}

uint64_t RemoteRole.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v4 = *(v0 + 6);
  v3 = v0 + 24;
  v7 = *(v3 + 6);
  v6 = *(v3 + 4);
  sub_24075AE64();
  RemoteRole.hash(into:)();
  return sub_24075AED4();
}

uint64_t RemoteRole.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA80, &qword_240785430);
  v66 = *(v68 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v78 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA88, &qword_240785438);
  v6 = *(v5 - 8);
  v73 = v5;
  v74 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v75 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA90, &qword_240785440);
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v77 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEA98, &qword_240785448);
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v76 = &v60 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEAA0, &qword_240785450);
  v65 = *(v67 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEAA8, &qword_240785458);
  v64 = *(v18 - 8);
  v19 = *(v64 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEAB0, &unk_240785460);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_2407584FC();
  v29 = v80;
  sub_24075AF34();
  if (!v29)
  {
    v30 = v21;
    v61 = v18;
    v62 = v17;
    v31 = v76;
    v32 = v77;
    v80 = v23;
    v33 = v78;
    v34 = v79;
    v63 = v22;
    v35 = sub_24075AB34();
    v36 = (2 * *(v35 + 16)) | 1;
    v87 = v35;
    v88 = v35 + 32;
    v89 = 0;
    v90 = v36;
    v37 = sub_2405B8B00();
    if (v37 == 6 || v89 != v90 >> 1)
    {
      v45 = sub_24075A8C4();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v47 = &type metadata for RemoteRole;
      v49 = v63;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      (*(v80 + 8))(v26, v49);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37 > 2u)
      {
        v51 = v80;
        if (v37 == 3)
        {
          LOBYTE(v81) = 3;
          sub_2407585F8();
          v56 = v32;
          v57 = v63;
          sub_24075AA54();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
          sub_240758748(&qword_27E4BCDE8);
          v58 = v72;
          sub_24075AAF4();
          (*(v71 + 8))(v56, v58);
          (*(v51 + 8))(v26, v57);
          swift_unknownObjectRelease();
          v41 = 0;
          v43 = 0;
          v42 = v81;
          v44 = 0x4000000000;
        }

        else
        {
          v52 = v63;
          if (v37 == 4)
          {
            LOBYTE(v81) = 4;
            sub_2407585A4();
            sub_24075AA54();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BCDB8, &qword_24077A5F0);
            sub_240758748(&qword_27E4BCDE8);
            v53 = v73;
            v54 = v75;
            sub_24075AAF4();
            (*(v74 + 8))(v54, v53);
            (*(v51 + 8))(v26, v52);
            swift_unknownObjectRelease();
            v41 = 0;
            v43 = 0;
            v42 = v81;
            v44 = 0x8000000000;
          }

          else
          {
            LOBYTE(v81) = 5;
            sub_240758550();
            sub_24075AA54();
            (*(v66 + 8))(v33, v68);
            (*(v51 + 8))(v26, v52);
            swift_unknownObjectRelease();
            v41 = 0;
            v43 = 0;
            v44 = 0xC000000000;
            v42 = 2;
          }
        }
      }

      else if (v37)
      {
        if (v37 == 1)
        {
          LOBYTE(v81) = 1;
          sub_2407586A0();
          v38 = v62;
          v39 = v63;
          sub_24075AA54();
          sub_2406BAA60();
          v40 = v67;
          sub_24075AAF4();
          (*(v65 + 8))(v38, v40);
          (*(v80 + 8))(v26, v39);
          swift_unknownObjectRelease();
          v42 = v81;
          v41 = v82;
          v43 = v83 & 0xFF0000FFFFLL;
          v44 = (v84 | ((v85 | (v86 << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
        }

        else
        {
          LOBYTE(v81) = 2;
          sub_24075864C();
          v59 = v63;
          sub_24075AA54();
          (*(v69 + 8))(v31, v70);
          (*(v80 + 8))(v26, v59);
          swift_unknownObjectRelease();
          v41 = 0;
          v43 = 0;
          v44 = 0xC000000000;
          v42 = 1;
        }
      }

      else
      {
        LOBYTE(v81) = 0;
        sub_2407586F4();
        v55 = v63;
        sub_24075AA54();
        (*(v64 + 8))(v30, v61);
        (*(v80 + 8))(v26, v55);
        swift_unknownObjectRelease();
        v42 = 0;
        v41 = 0;
        v43 = 0;
        v44 = 0xC000000000;
      }

      *v34 = v42;
      *(v34 + 8) = v41;
      *(v34 + 16) = v43;
      *(v34 + 24) = v44;
      *(v34 + 30) = BYTE6(v44);
      *(v34 + 28) = WORD2(v44);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v91);
}

uint64_t sub_2407580EC()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v4 = *(v0 + 6);
  v3 = v0 + 24;
  v7 = *(v3 + 6);
  v6 = *(v3 + 4);
  sub_24075AE64();
  RemoteRole.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_24075815C()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v4 = *(v0 + 6);
  v3 = v0 + 24;
  v7 = *(v3 + 6);
  v6 = *(v3 + 4);
  sub_24075AE64();
  RemoteRole.hash(into:)();
  return sub_24075AED4();
}

BOOL _s12AppleIDSetup10RemoteRoleO2eeoiySbAC_ACtFZ_0(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v8 = *(a1 + 24);
  v6 = a1 + 24;
  v7 = v8;
  v9 = *(v6 + 4);
  v10 = *(v6 + 6);
  v11 = *a2;
  v12 = a2[1];
  v13 = v2[2];
  v15 = *(v2 + 6);
  v2 += 3;
  v14 = v15;
  v16 = *(v2 + 2);
  v17 = v7 | ((v9 | (v10 << 16)) << 32);
  LODWORD(v2) = *(v2 + 6);
  v18 = v16 | (v2 << 16);
  v19 = v14 | (v18 << 32);
  v47[0] = v4;
  v47[1] = v3;
  v47[2] = v5;
  v48 = v7;
  v50 = v10;
  v49 = v9;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v56 = v2;
  v55 = v16;
  if ((v9 >> 6) > 1u)
  {
    if (v9 >> 6 != 2)
    {
      if (v5 | v3 | v4 || v17 != 0xC000000000)
      {
        if (v17 == 0xC000000000 && v4 == 1 && !(v5 | v3))
        {
          if ((~v19 & 0xC000000000) != 0)
          {
            goto LABEL_41;
          }

          v30 = (v19 & 0xFFFFFFFFFFFFFFLL) == 0xC000000000 && v11 == 1;
          if (!v30 || (v13 | v12) != 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if ((~v19 & 0xC000000000) != 0)
          {
            goto LABEL_41;
          }

          v32 = (v19 & 0xFFFFFFFFFFFFFFLL) == 0xC000000000 && v11 == 2;
          if (!v32 || (v13 | v12) != 0)
          {
            goto LABEL_41;
          }
        }
      }

      else if ((~v19 & 0xC000000000) != 0 || v13 | v12 | v11 || (v19 & 0xFFFFFFFFFFFFFFLL) != 0xC000000000)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    if ((v19 & 0xC000000000) != 0x8000000000)
    {
      goto LABEL_41;
    }

    if (v4)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v11)
    {
      goto LABEL_41;
    }

LABEL_44:
    sub_24075929C(v47);
    return 1;
  }

  if (v9 >> 6)
  {
    if ((v19 & 0xC000000000) != 0x4000000000)
    {
      goto LABEL_41;
    }

    if (v4)
    {
LABEL_12:
      if (v11)
      {
        v25 = v11;
        v26 = v13;
        v27 = v12;
        v28 = v14 | (v18 << 32);
        sub_2406B21DC();
        sub_240609C0C(v25, v27, v26, v28);
        sub_240609C0C(v4, v3, v5, v17);
        sub_240609C0C(v25, v27, v26, v28);
        sub_240609C0C(v4, v3, v5, v17);
        v29 = sub_24075A6D4();
        sub_24075929C(v47);
        sub_240604AB8(v25, v27, v26, v28);
        sub_240604AB8(v4, v3, v5, v17);
        return (v29 & 1) != 0;
      }

LABEL_41:
      sub_240609C0C(v11, v12, v13, v19);
      sub_240609C0C(v4, v3, v5, v17);
      sub_24075929C(v47);
      return 0;
    }

    goto LABEL_8;
  }

  if ((v19 & 0xC000000000) != 0)
  {
    goto LABEL_41;
  }

  v41[0] = v4;
  v41[1] = v3;
  v42 = v5;
  v43 = BYTE4(v5);
  v44 = v7;
  v45 = (v7 | ((v9 | (v10 << 16)) << 32)) >> 32;
  v46 = (v7 | ((v9 | (v10 << 16)) << 32)) >> 48;
  v35[0] = v11;
  v35[1] = v12;
  v36 = v13;
  v37 = BYTE4(v13);
  v38 = v14;
  v39 = (v14 | (v18 << 32)) >> 32;
  v40 = (v14 | (v18 << 32)) >> 48;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14 | (v18 << 32);
  v24 = _s12AppleIDSetup9BLEDeviceV2eeoiySbAC_ACtFZ_0(v41, v35);
  sub_240609C0C(v20, v21, v22, v23);
  sub_240609C0C(v4, v3, v5, v17);
  sub_24075929C(v47);
  return v24;
}

unint64_t sub_2407584FC()
{
  result = qword_27E4BEA48;
  if (!qword_27E4BEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA48);
  }

  return result;
}

unint64_t sub_240758550()
{
  result = qword_27E4BEA50;
  if (!qword_27E4BEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA50);
  }

  return result;
}

unint64_t sub_2407585A4()
{
  result = qword_27E4BEA58;
  if (!qword_27E4BEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA58);
  }

  return result;
}

unint64_t sub_2407585F8()
{
  result = qword_27E4BEA60;
  if (!qword_27E4BEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA60);
  }

  return result;
}

unint64_t sub_24075864C()
{
  result = qword_27E4BEA68;
  if (!qword_27E4BEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA68);
  }

  return result;
}

unint64_t sub_2407586A0()
{
  result = qword_27E4BEA70;
  if (!qword_27E4BEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA70);
  }

  return result;
}

unint64_t sub_2407586F4()
{
  result = qword_27E4BEA78;
  if (!qword_27E4BEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEA78);
  }

  return result;
}

uint64_t sub_240758748(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4BCDB8, &qword_24077A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240758798(void *a1)
{
  a1[1] = sub_24070361C();
  a1[2] = sub_24070352C();
  result = sub_2407587D0();
  a1[3] = result;
  return result;
}

unint64_t sub_2407587D0()
{
  result = qword_27E4BEAB8;
  if (!qword_27E4BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAB8);
  }

  return result;
}

unint64_t sub_240758828()
{
  result = qword_27E4BEAC0;
  if (!qword_27E4BEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAC0);
  }

  return result;
}

uint64_t sub_24075887C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 31))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 24) & 0xFFFF0000 | WORD1(*(a1 + 16));
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_2407588D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 31) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 << 24) & 0xFFFF0000000000 | (-a2 << 16);
      *(result + 30) = 0;
      *(result + 28) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 31) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24075893C(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = a1 + 24;
  v3 = *(result + 6);
  v4 = *(result + 4) | (v3 << 16);
  *(result + 6) = v3;
  *result = v2;
  *(result + 4) = ((v2 | (v4 << 32)) & 0xFFFFFF3FFFFFFFFFLL) >> 32;
  return result;
}

uint64_t sub_24075896C(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 24);
    result += 24;
    v3 = (v2 | ((*(result + 4) | (*(result + 6) << 16)) << 32)) & 0xFFFFFF07FFFFFFFFLL;
    v4 = v3 | (a2 << 38);
    *(result - 8) &= 0xFF0000FFFFuLL;
    *result = v3;
    *(result + 4) = WORD2(v4);
    *(result + 6) = BYTE6(v4);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 3);
    *(result + 30) = 0;
    *(result + 24) = 0;
    *(result + 28) = 192;
  }

  return result;
}

unint64_t sub_240758A5C()
{
  result = qword_27E4BEAC8;
  if (!qword_27E4BEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAC8);
  }

  return result;
}

unint64_t sub_240758AB4()
{
  result = qword_27E4BEAD0;
  if (!qword_27E4BEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAD0);
  }

  return result;
}

unint64_t sub_240758B0C()
{
  result = qword_27E4BEAD8;
  if (!qword_27E4BEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAD8);
  }

  return result;
}

unint64_t sub_240758B64()
{
  result = qword_27E4BEAE0;
  if (!qword_27E4BEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAE0);
  }

  return result;
}

unint64_t sub_240758BBC()
{
  result = qword_27E4BEAE8;
  if (!qword_27E4BEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAE8);
  }

  return result;
}

unint64_t sub_240758C14()
{
  result = qword_27E4BEAF0;
  if (!qword_27E4BEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAF0);
  }

  return result;
}

unint64_t sub_240758C6C()
{
  result = qword_27E4BEAF8;
  if (!qword_27E4BEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEAF8);
  }

  return result;
}

unint64_t sub_240758CC4()
{
  result = qword_27E4BEB00;
  if (!qword_27E4BEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB00);
  }

  return result;
}

unint64_t sub_240758D1C()
{
  result = qword_27E4BEB08;
  if (!qword_27E4BEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB08);
  }

  return result;
}

unint64_t sub_240758D74()
{
  result = qword_27E4BEB10;
  if (!qword_27E4BEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB10);
  }

  return result;
}

unint64_t sub_240758DCC()
{
  result = qword_27E4BEB18;
  if (!qword_27E4BEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB18);
  }

  return result;
}

unint64_t sub_240758E24()
{
  result = qword_27E4BEB20;
  if (!qword_27E4BEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB20);
  }

  return result;
}

unint64_t sub_240758E7C()
{
  result = qword_27E4BEB28;
  if (!qword_27E4BEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB28);
  }

  return result;
}

unint64_t sub_240758ED4()
{
  result = qword_27E4BEB30;
  if (!qword_27E4BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB30);
  }

  return result;
}

unint64_t sub_240758F2C()
{
  result = qword_27E4BEB38;
  if (!qword_27E4BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB38);
  }

  return result;
}

unint64_t sub_240758F84()
{
  result = qword_27E4BEB40;
  if (!qword_27E4BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB40);
  }

  return result;
}

unint64_t sub_240758FDC()
{
  result = qword_27E4BEB48;
  if (!qword_27E4BEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB48);
  }

  return result;
}

unint64_t sub_240759034()
{
  result = qword_27E4BEB50;
  if (!qword_27E4BEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BEB50);
  }

  return result;
}

uint64_t sub_240759088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463697274736572 && a2 == 0xEA00000000006465;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65696C43656C62 && a2 == 0xE900000000000074 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576726553656C62 && a2 == 0xE900000000000072 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024078A7B0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024078A7D0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024078A7F0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24075929C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4BEB58, &unk_240785CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}
unint64_t sub_240D9BAE0()
{
  v2 = qword_27E519BA0;
  if (!qword_27E519BA0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BB90()
{
  v2 = qword_27E519BA8;
  if (!qword_27E519BA8)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BC28()
{
  v2 = qword_27E519BB0;
  if (!qword_27E519BB0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BCA8()
{
  v2 = qword_27E519BB8;
  if (!qword_27E519BB8)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9BD28()
{
  v2 = qword_27E519BC0;
  if (!qword_27E519BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D9BDD4(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t static AMDSwiftTests.strToInt(strValue:)(uint64_t a1, uint64_t a2)
{

  sub_240D9C130();
  sub_240D9C1A8();
  sub_240DAE104();
  if (v13)
  {
    v9 = sub_240DADD64();
  }

  else
  {
    v9 = sub_240DADDE4();
  }

  v10 = v2;
  sub_240DADF84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519BD8, &unk_240DB2EC0);
  sub_240DAE1D4();
  v7 = v3;

  v5 = MEMORY[0x277D837D0];
  v7[3] = MEMORY[0x277D837D0];
  v6 = sub_240D9C220();
  v7[4] = v6;
  *v7 = a1;
  v7[1] = a2;

  v7[8] = v5;
  v7[9] = v6;
  v7[5] = v9;
  v7[6] = v10;
  sub_240D7F8DC();
  v8 = sub_240D9C298();
  sub_240DADC14();
  MEMORY[0x277D82BD8](v8);

  return v9;
}

unint64_t sub_240D9C130()
{
  v2 = qword_27E519BD0;
  if (!qword_27E519BD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9C1A8()
{
  v2 = qword_2810BCF78;
  if (!qword_2810BCF78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240D9C220()
{
  v2 = qword_27E519BE0;
  if (!qword_27E519BE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BE0);
    return WitnessTable;
  }

  return v2;
}

id AMDSwiftTests.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for AMDSwiftTests();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id AMDSwiftTests.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMDSwiftTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_240D9C4C4()
{
  v2 = qword_27E519BE8;
  if (!qword_27E519BE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27E519BE8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240D9C528()
{
  v1 = sub_240DADC54();
  __swift_allocate_value_buffer(v1, qword_2810BD068);
  __swift_project_value_buffer(v1, qword_2810BD068);
  return sub_240DADC44();
}

uint64_t sub_240D9C574()
{
  if (qword_2810BCFF8 != -1)
  {
    swift_once();
  }

  v0 = sub_240DADC54();
  return __swift_project_value_buffer(v0, qword_2810BD068);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_240D9C638(uint64_t a1)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x2822009F8](sub_240D9C678, 0);
}

uint64_t sub_240D9C678()
{
  *(v0 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v9 = v1;
  *v1 = sub_240DADD64();
  v9[1] = v2;
  v3 = sub_240DADD64();
  v9[5] = MEMORY[0x277D837D0];
  v9[2] = v3;
  v9[3] = v4;
  sub_240D7F8DC();
  v5 = sub_240DADCA4();
  v6 = *(*(v0 + 16) + 8);
  v7 = *(v0 + 16);

  return v6(v5);
}

uint64_t sub_240D9C874(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v9 = sub_240DADC84();
  v3[6] = v9;
  v5 = swift_task_alloc();
  *(v8 + 56) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_240D9C98C;

  return sub_240D9C638(v9);
}

uint64_t sub_240D9C98C()
{
  v9 = *v0;
  v1 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v8 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  *(v9 + 16) = *v0;

  v7 = sub_240DADC74();
  v8[2]();

  _Block_release(v8);

  v2 = *(*(v9 + 16) + 8);

  return v2();
}

uint64_t sub_240D9CB84()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_240D9CC70;

  return sub_240D9C874(v7, v5, v6);
}

uint64_t sub_240D9CC70()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

id SearchToolQueryHandler.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SearchToolQueryHandler();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id SearchToolQueryHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchToolQueryHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SearchToolQueryHandler.querySearchTool(searchtoolQueryConfig:)(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v3 = *((*v1 & *MEMORY[0x277D85000]) + 0x50);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_240D9D050;

  return v8(a1);
}

uint64_t sub_240D9D050(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

uint64_t sub_240D9D180()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_240D9D2A8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_240D9D3D0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_240D9D598()
{
  v7 = sub_240DAE1D4();
  v6 = v0;
  *v0 = sub_240DADD64();
  v6[1] = v1;
  v6[2] = sub_240DADD64();
  v6[3] = v2;
  v3 = sub_240DADD64();
  result = v7;
  v6[4] = v3;
  v6[5] = v5;
  sub_240D7F8DC();
  qword_2810BD080 = v7;
  return result;
}

uint64_t *sub_240D9D670()
{
  if (qword_2810BD000 != -1)
  {
    swift_once();
  }

  return &qword_2810BD080;
}

uint64_t sub_240D9D6D0()
{
  v5 = sub_240DAE1D4();
  v4 = v0;
  v1 = sub_240DADD64();
  result = v5;
  *v4 = v1;
  v4[1] = v3;
  sub_240D7F8DC();
  qword_27E51A2A8 = v5;
  return result;
}

uint64_t *sub_240D9D750()
{
  if (qword_27E51A0D8 != -1)
  {
    swift_once();
  }

  return &qword_27E51A2A8;
}

uint64_t sub_240D9D7B0(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
  }

  return 4;
}

uint64_t sub_240D9D87C(char a1)
{
  switch(a1)
  {
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
  }

  return 4;
}

unint64_t sub_240D9D94C()
{
  v2 = qword_27E519BF0;
  if (!qword_27E519BF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519BF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240D9DA98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_240D9D7B0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_240D9DAC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240D9D87C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_240D9DAF8()
{
  v2 = *(v0 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  return v2;
}

char *AMDVectorDBManager.__allocating_init(vectorDBConfig:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v7 = AMDVectorDBManager.init(vectorDBConfig:)(a1);
  if (v5)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

char *AMDVectorDBManager.init(vectorDBConfig:)(uint64_t a1)
{
  v290 = a1;
  v241 = sub_240D9FABC;
  v242 = sub_240DAC09C;
  v243 = sub_240DAC08C;
  v244 = sub_240DAC094;
  v245 = sub_240DAC0A8;
  v246 = sub_240DAC0DC;
  v247 = sub_240DAC0F8;
  v248 = sub_240DAC0E8;
  v249 = sub_240DAC0F0;
  v250 = sub_240DAC104;
  v251 = "Fatal error";
  v252 = "Unexpectedly found nil while unwrapping an Optional value";
  v253 = "AppleMediaDiscovery/AMDVectorDB.swift";
  v364 = *MEMORY[0x277D85DE8];
  v337 = 0;
  v336 = 0;
  v335 = 0;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v326 = 0;
  v327 = 0;
  v325 = 0;
  v322 = 0;
  v316 = 0;
  v317 = 0;
  v311 = 0;
  v312 = 0;
  v308 = 0;
  v303 = 0;
  v304 = 0;
  v275 = 0;
  v254 = sub_240DADA64();
  v255 = *(v254 - 8);
  v256 = v254 - 8;
  v257 = (*(v255 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](0);
  v258 = v94 - v257;
  v259 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v260 = v94 - v259;
  v337 = v94 - v259;
  v261 = sub_240DADAC4();
  v262 = *(v261 - 8);
  v263 = v261 - 8;
  v264 = (*(v262 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v275);
  v265 = v94 - v264;
  v266 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v267 = v94 - v266;
  v336 = v94 - v266;
  v268 = sub_240DADA84();
  v269 = *(v268 - 8);
  v270 = v268 - 8;
  v271 = (*(v269 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v275);
  v272 = v94 - v271;
  v273 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v274 = v94 - v273;
  v335 = v94 - v273;
  v276 = sub_240DAD674();
  v277 = *(v276 - 8);
  v278 = v276 - 8;
  v279 = (*(v277 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v275);
  v280 = v94 - v279;
  v281 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v282 = v94 - v281;
  v334 = v94 - v281;
  v283 = sub_240DADC54();
  v284 = *(v283 - 8);
  v285 = v283 - 8;
  v286 = (v284[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v290);
  v287 = v94 - v286;
  v288 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v10);
  v289 = v94 - v288;
  v332 = v12;
  v333 = v1;
  v13 = sub_240DADD64();
  v291 = v331;
  v331[0] = v13;
  v331[1] = v14;
  sub_240DADCC4();
  sub_240D7F920(v291);
  v239 = v363[3] == 0;
  v238 = v239;
  sub_240D86770(v363);
  if (v238)
  {
    sub_240DAC110();
    v225 = 1;
    v234 = sub_240DADD64();
    v232 = v15;
    v233 = sub_240D9D87C(0);
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v227 = sub_240DAE1D4();
    v226 = v16;
    v229 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v229);
    v17 = sub_240DADD04();
    v18 = v226;
    *v226 = v17;
    v18[1] = v19;
    v20 = sub_240DADD64();
    v21 = v226;
    v22 = v20;
    v23 = v227;
    v231 = MEMORY[0x277D837D0];
    v226[5] = MEMORY[0x277D837D0];
    v21[2] = v22;
    v21[3] = v24;
    sub_240D7F8DC();
    v230 = v23;
    MEMORY[0x277D82BD8](v229);
    v25 = sub_240DADCA4();
    v236 = sub_240D9FA30(v234, v232, v233, v25);
    swift_willThrow();
    v237 = v236;
LABEL_33:
    v94[1] = v237;

    v94[2] = v333;
    type metadata accessor for AMDVectorDBManager();
    swift_deallocPartialClassInstance();
    v93 = __OFSUB__(*MEMORY[0x277D85DE8], v364);
    return v235;
  }

  v26 = sub_240DADD64();
  v224 = v330;
  v330[0] = v26;
  v330[1] = v27;
  sub_240DADCC4();
  sub_240D7F920(v224);
  if (!v361)
  {
    sub_240DAE124();
    __break(1u);
  }

  v218 = v362;
  sub_240D8634C(v360, v362);
  v222 = MEMORY[0x277D84F70] + 8;
  v221 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v219 = v328;
  v220 = v329;
  v326 = v328;
  v327 = v329;
  v325 = 50;
  v28 = sub_240DADD64();
  v223 = v324;
  v324[0] = v28;
  v324[1] = v29;
  sub_240DADCC4();
  sub_240D7F920(v223);
  v217 = v359[3] != 0;
  v216 = v217;
  sub_240D86770(v359);
  if (v216)
  {
    v30 = sub_240DADD64();
    v215 = v293;
    v293[0] = v30;
    v293[1] = v31;
    sub_240DADCC4();
    sub_240D7F920(v215);
    if (!v338[3])
    {
      sub_240DAE124();
      __break(1u);
    }

    v213 = v339;
    sub_240D8634C(v338, v339);
    swift_dynamicCast();
    v325 = v292;
    v214 = v292;
  }

  else
  {
    v214 = 50;
  }

  v32 = v289;
  v197 = v214;
  v33 = sub_240D9C574();
  v198 = v284[2];
  v199 = v284 + 2;
  v198(v32, v33, v283);

  v201 = 32;
  v202 = 7;
  v34 = swift_allocObject();
  v35 = v220;
  v203 = v34;
  *(v34 + 16) = v219;
  *(v34 + 24) = v35;
  v211 = sub_240DADC24();
  v212 = sub_240DADF64();
  v200 = 17;
  v205 = swift_allocObject();
  *(v205 + 16) = 32;
  v206 = swift_allocObject();
  *(v206 + 16) = 8;
  v36 = swift_allocObject();
  v37 = v203;
  v204 = v36;
  *(v36 + 16) = v241;
  *(v36 + 24) = v37;
  v38 = swift_allocObject();
  v39 = v204;
  v208 = v38;
  *(v38 + 16) = v242;
  *(v38 + 24) = v39;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v207 = sub_240DAE1D4();
  v209 = v40;

  v41 = v205;
  v42 = v209;
  *v209 = v243;
  v42[1] = v41;

  v43 = v206;
  v44 = v209;
  v209[2] = v244;
  v44[3] = v43;

  v45 = v208;
  v46 = v209;
  v209[4] = v245;
  v46[5] = v45;
  sub_240D7F8DC();

  if (os_log_type_enabled(v211, v212))
  {
    v190 = sub_240DADFD4();
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v191 = sub_240D98680(0);
    v192 = sub_240D98680(1);
    v193 = v296;
    v296[0] = v190;
    v194 = &v341;
    v341 = v191;
    v195 = &v340;
    v340 = v192;
    sub_240D986D4(2, v296);
    sub_240D986D4(1, v193);
    v47 = v240;
    v294 = v243;
    v295 = v205;
    sub_240D986E8(&v294, v193, v194, v195);
    v196 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {
      v294 = v244;
      v295 = v206;
      sub_240D986E8(&v294, v296, &v341, &v340);
      v187 = 0;
      v294 = v245;
      v295 = v208;
      sub_240D986E8(&v294, v296, &v341, &v340);
      v186 = 0;
      _os_log_impl(&dword_240CB9000, v211, v212, "Fetching vectorDB config for dbName: %s", v190, 0xCu);
      sub_240D987EC(v191);
      sub_240D987EC(v192);
      sub_240DADFB4();

      v188 = v186;
    }
  }

  else
  {

    v188 = v240;
  }

  v179 = v188;
  MEMORY[0x277D82BD8](v211);
  v180 = v284[1];
  v181 = v284 + 1;
  v180(v289, v283);
  v358 = 0;
  v182 = objc_opt_self();

  v184 = sub_240DADCF4();

  v323 = v358;
  v185 = [v182 fetchVectorDBConfigForDBName:v184 error:&v323];
  v183 = v323;
  MEMORY[0x277D82BE0](v323);
  v48 = v358;
  v358 = v183;
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v184);
  if (!v185)
  {
    v95 = v358;
    v96 = sub_240DAD614();
    MEMORY[0x277D82BD8](v95);
    swift_willThrow();

    v237 = v96;
    goto LABEL_33;
  }

  v178 = v185;
  v172 = v185;
  v175 = MEMORY[0x277D84030];
  v176 = MEMORY[0x277D84F70] + 8;
  v177 = MEMORY[0x277D84038];
  v174 = sub_240DADC84();
  v322 = v174;
  MEMORY[0x277D82BD8](v172);
  v321[0] = sub_240DADD64();
  v321[1] = v49;
  v173 = v357;
  sub_240DAE174();
  sub_240DADCC4();
  v171 = v356[3] == 0;
  v170 = v171;
  sub_240D86770(v356);
  sub_240D92370(v357);
  sub_240D7F920(v321);
  if (v170)
  {
    v153 = 0;
    v155 = sub_240DAC110();
    v154 = 1;
    v168 = sub_240DADD64();
    v166 = v50;
    v167 = sub_240D9D87C(v154);
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    v150 = 1;
    v161 = sub_240DAE1D4();
    v160 = v51;
    v163 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v163);
    v52 = sub_240DADD04();
    v53 = v160;
    *v160 = v52;
    v53[1] = v54;
    v151 = 30;
    v55 = sub_240DAE1C4();
    v157 = &v297;
    v297 = v55;
    v298 = v56;
    v57 = sub_240DADD64();
    v152 = v58;
    MEMORY[0x245CD0520](v57);

    v296[1] = v219;
    v296[2] = v220;
    v165 = MEMORY[0x277D837D0];
    sub_240DAE1A4();
    v59 = sub_240DADD64();
    v156 = v60;
    MEMORY[0x245CD0520](v59);

    v159 = v297;
    v158 = v298;

    sub_240DAC174(v157);
    v61 = sub_240DADD54();
    v62 = v160;
    v63 = v61;
    v64 = v161;
    v160[5] = v165;
    v62[2] = v63;
    v62[3] = v65;
    sub_240D7F8DC();
    v164 = v64;
    MEMORY[0x277D82BD8](v163);
    v66 = sub_240DADCA4();
    v169 = sub_240D9FA30(v168, v166, v167, v66);
    swift_willThrow();

    v237 = v169;
    goto LABEL_33;
  }

  v67 = v287;
  v68 = sub_240D9C574();
  v198(v67, v68, v283);

  v139 = 32;
  v140 = 7;
  v69 = swift_allocObject();
  v70 = v220;
  v141 = v69;
  *(v69 + 16) = v219;
  *(v69 + 24) = v70;
  v148 = sub_240DADC24();
  v149 = sub_240DADF64();
  v138 = 17;
  v143 = swift_allocObject();
  *(v143 + 16) = 32;
  v144 = swift_allocObject();
  *(v144 + 16) = 8;
  v71 = swift_allocObject();
  v72 = v141;
  v142 = v71;
  *(v71 + 16) = v246;
  *(v71 + 24) = v72;
  v73 = swift_allocObject();
  v74 = v142;
  v146 = v73;
  *(v73 + 16) = v247;
  *(v73 + 24) = v74;
  v145 = sub_240DAE1D4();
  v147 = v75;

  v76 = v143;
  v77 = v147;
  *v147 = v248;
  v77[1] = v76;

  v78 = v144;
  v79 = v147;
  v147[2] = v249;
  v79[3] = v78;

  v80 = v146;
  v81 = v147;
  v147[4] = v250;
  v81[5] = v80;
  sub_240D7F8DC();

  if (os_log_type_enabled(v148, v149))
  {
    v131 = sub_240DADFD4();
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v132 = sub_240D98680(0);
    v133 = sub_240D98680(1);
    v134 = &v301;
    v301 = v131;
    v135 = &v343;
    v343 = v132;
    v136 = &v342;
    v342 = v133;
    sub_240D986D4(2, &v301);
    sub_240D986D4(1, v134);
    v82 = v179;
    v299 = v248;
    v300 = v143;
    sub_240D986E8(&v299, v134, v135, v136);
    v137 = v82;
    if (v82)
    {

      __break(1u);
    }

    else
    {
      v299 = v249;
      v300 = v144;
      sub_240D986E8(&v299, &v301, &v343, &v342);
      v128 = 0;
      v299 = v250;
      v300 = v146;
      sub_240D986E8(&v299, &v301, &v343, &v342);
      v127 = 0;
      _os_log_impl(&dword_240CB9000, v148, v149, "Successfully fetched config for dbName: %s", v131, 0xCu);
      sub_240D987EC(v132);
      sub_240D987EC(v133);
      sub_240DADFB4();

      v129 = v127;
    }
  }

  else
  {

    v129 = v179;
  }

  v125 = v129;
  MEMORY[0x277D82BD8](v148);
  v180(v287, v283);
  v320[0] = sub_240DADD64();
  v320[1] = v83;
  v126 = v354;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v353[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v119 = v355;
  sub_240D8634C(v353, v355);
  v124 = MEMORY[0x277D84F70] + 8;
  v122 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v121 = v318;
  v120 = v319;
  v316 = v318;
  v317 = v319;
  sub_240D92370(v354);
  sub_240D7F920(v320);
  sub_240DAD634();
  v315[0] = sub_240DADD64();
  v315[1] = v84;
  v123 = v351;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v350[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v112 = v352;
  sub_240D8634C(v350, v352);
  v118 = MEMORY[0x277D84F70] + 8;
  v116 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v114 = v313;
  v113 = v314;
  v311 = v313;
  v312 = v314;
  sub_240D92370(v351);
  sub_240D7F920(v315);
  v115 = type metadata accessor for AMDVectorDBManager();
  sub_240DA38C4(v114, v113, v274);
  v310[0] = sub_240DADD64();
  v310[1] = v85;
  v117 = v348;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v347[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v107 = v349;
  sub_240D8634C(v347, v349);
  v109 = 8;
  v111 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v108 = v309;
  v308 = v309;
  sub_240D92370(v348);
  sub_240D7F920(v310);
  v307[0] = sub_240DADD64();
  v307[1] = v86;
  v110 = v345;
  sub_240DAE174();
  sub_240DADCC4();
  if (!v344[3])
  {
    sub_240DAE124();
    __break(1u);
  }

  v97 = v346;
  sub_240D8634C(v344, v346);
  swift_dynamicCast();
  v98 = v305;
  v105 = v306;
  v303 = v305;
  v304 = v306;
  sub_240D92370(v345);
  sub_240D7F920(v307);
  sub_240DA3A94(v267);
  (*(v277 + 16))(v280, v282, v276);
  (*(v269 + 16))(v272, v274, v268);
  v103 = 0;
  sub_240DADAD4();
  v100 = sub_240DAE1D4();
  (*(v262 + 16))(v265, v267, v261);
  v101 = sub_240D9FAFC();
  v102 = sub_240D9FB08();
  v99 = sub_240D9FB14();
  sub_240D9FB20();
  sub_240DADA54();
  v104 = v333;
  sub_240DADA44();
  (*(v255 + 16))(v258, v260, v254);
  v87 = sub_240DAD9D4();
  v88 = v255;
  v89 = v254;
  v90 = v87;
  v91 = v260;
  *&v104[OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client] = v90;
  (*(v88 + 8))(v91, v89);
  (*(v262 + 8))(v267, v261);

  (*(v269 + 8))(v274, v268);

  (*(v277 + 8))(v282, v276);

  v302.receiver = v333;
  v302.super_class = v115;
  v106 = objc_msgSendSuper2(&v302, sel_init);
  MEMORY[0x277D82BE0](v106);
  v333 = v106;

  MEMORY[0x277D82BD8](v333);
  *MEMORY[0x277D85DE8];
  return v106;
}

uint64_t sub_240D9FABC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240D9FA88();
  return result;
}

id AMDVectorDBManager.__deallocating_deinit()
{
  v5 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  sub_240DADA24();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for AMDVectorDBManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_240D9FD48(uint64_t a1)
{
  v140 = a1;
  v121 = sub_240DAC250;
  v122 = sub_240DAC6A8;
  v123 = sub_240DAC258;
  v124 = sub_240DAC260;
  v125 = sub_240DAC6B4;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v141 = __b;
  v143 = 40;
  memset(__b, 0, sizeof(__b));
  v160 = 0;
  v159 = 0;
  v152 = 0;
  v153 = 0;
  v151 = 0;
  v146 = 0;
  v131 = 0;
  v126 = sub_240DADC54();
  v127 = *(v126 - 8);
  v128 = v126 - 8;
  v129 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v130 = &v42 - v129;
  v132 = sub_240DADAF4();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v136 = *(v133 + 64);
  v135 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v131);
  v137 = &v42 - v135;
  v138 = (v136 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v139 = &v42 - v138;
  v168 = &v42 - v138;
  v167 = v3;
  v166 = v1;
  v165 = sub_240DAE1D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C00, &qword_240DB2F60);
  v142 = &v169;
  sub_240DADC94();
  v4 = v144;
  memcpy(v141, v142, v143);
  for (i = v4; ; i = v116)
  {
    v116 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C08, &qword_240DB2F68);
    sub_240DADCB4();
    v117 = v161;
    v118 = v162;
    v119 = v163;
    if (!v162)
    {
      break;
    }

    v113 = v117;
    v114 = v118;
    v115 = v119;
    v110 = v119;
    v111 = v118;
    v112 = v117;
    v152 = v117;
    v153 = v118;
    v151 = v119;

    sub_240D9C130();
    sub_240DAE114();
    v147 = v149;
    v148 = v150 & 1;
    if (v150)
    {
      v109 = -1;
    }

    else
    {
      v109 = v147;
    }

    v106 = v109;
    v146 = v109;
    v107 = v111;
    v108 = v110;
    if (v109 == -1)
    {
      v102 = v108;
      v103 = v107;
      sub_240DAC110();
      v91 = 1;
      v100 = sub_240DADD64();
      v98 = v5;
      v99 = sub_240D9D87C(3);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      v93 = sub_240DAE1D4();
      v92 = v6;
      v95 = *MEMORY[0x277CCA450];
      MEMORY[0x277D82BE0](v95);
      v7 = sub_240DADD04();
      v8 = v92;
      *v92 = v7;
      v8[1] = v9;
      v10 = sub_240DADD64();
      v11 = v92;
      v12 = v10;
      v13 = v93;
      v97 = MEMORY[0x277D837D0];
      v92[5] = MEMORY[0x277D837D0];
      v11[2] = v12;
      v11[3] = v14;
      sub_240D7F8DC();
      v96 = v13;
      MEMORY[0x277D82BD8](v95);
      v15 = sub_240DADCA4();
      v104 = sub_240D9FA30(v100, v98, v99, v15);
      swift_willThrow();

      sub_240DAC1A0(__b);
      sub_240DAC224(&v165);
      v105 = v104;
      return v101;
    }

    sub_240DADAE4();
    (*(v133 + 16))(v137, v139, v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C10, &qword_240DB2F70);
    sub_240DADE94();
    (*(v133 + 8))(v139, v132);
  }

  sub_240DAC1A0(__b);
  v16 = v116;
  v86 = *(v120 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v87 = v165;

  v17 = sub_240DAD9F4();
  v88 = v16;
  v89 = v17;
  v90 = v16;
  if (v16)
  {
    v44 = v90;

    sub_240DAC224(&v165);
    v105 = v44;
    return v101;
  }

  v82 = v89;

  v18 = v88;
  v160 = v82;
  v83 = *(v120 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  sub_240DADA14();
  v84 = v18;
  v85 = v18;
  if (v18)
  {
    v43 = v85;

    sub_240DAC224(&v165);
    v105 = v43;
    return v101;
  }

  v77 = *(v120 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v19 = sub_240DA09C8();
  v20 = v84;
  v78 = v19;
  v21 = sub_240DAD9C4();
  v79 = v20;
  v80 = v21;
  v81 = v20;
  if (v20)
  {
    v42 = v81;

    sub_240DAC224(&v165);
    v105 = v42;
    return v101;
  }

  v22 = v130;
  v63 = v80;

  v159 = v63;
  v23 = sub_240D9C574();
  (*(v127 + 16))(v22, v23, v126);
  v66 = 7;
  v67 = swift_allocObject();
  *(v67 + 16) = v63;
  v75 = sub_240DADC24();
  v76 = sub_240DADF64();
  v64 = 17;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v65 = 32;
  v24 = swift_allocObject();
  v25 = v67;
  v68 = v24;
  *(v24 + 16) = v121;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v68;
  v72 = v26;
  *(v26 + 16) = v122;
  *(v26 + 24) = v27;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v71 = sub_240DAE1D4();
  v73 = v28;

  v29 = v69;
  v30 = v73;
  *v73 = v123;
  v30[1] = v29;

  v31 = v70;
  v32 = v73;
  v73[2] = v124;
  v32[3] = v31;

  v33 = v72;
  v34 = v73;
  v73[4] = v125;
  v34[5] = v33;
  sub_240D7F8DC();

  if (os_log_type_enabled(v75, v76))
  {
    v56 = sub_240DADFD4();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v55 = 0;
    v57 = sub_240D98680(0);
    v58 = sub_240D98680(v55);
    v59 = &v158;
    v158 = v56;
    v60 = &v157;
    v157 = v57;
    v61 = &v156;
    v156 = v58;
    sub_240D986D4(0, &v158);
    sub_240D986D4(1, v59);
    v35 = v79;
    v154 = v123;
    v155 = v69;
    sub_240D986E8(&v154, v59, v60, v61);
    v62 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v154 = v124;
      v155 = v70;
      sub_240D986E8(&v154, &v158, &v157, &v156);
      v52 = 0;
      v154 = v125;
      v155 = v72;
      sub_240D986E8(&v154, &v158, &v157, &v156);
      v51 = 0;
      _os_log_impl(&dword_240CB9000, v75, v76, "Post data insertion database has: %lld entries", v56, 0xCu);
      v50 = 0;
      sub_240D987EC(v57);
      sub_240D987EC(v58);
      sub_240DADFB4();

      v53 = v51;
    }
  }

  else
  {

    v53 = v79;
  }

  v48 = v53;
  MEMORY[0x277D82BD8](v75);
  (*(v127 + 8))(v130, v126);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  v46 = sub_240DAE1D4();
  v45 = v36;
  v37 = sub_240DADD64();
  v38 = v45;
  v39 = v82;
  *v45 = v37;
  v38[1] = v40;
  v38[5] = MEMORY[0x277D83B88];
  v38[2] = v39;
  sub_240D7F8DC();
  v49 = sub_240DADCA4();
  sub_240DAC224(&v165);
  return v49;
}

uint64_t sub_240DA0BA0(uint64_t a1)
{
  v188 = a1;
  v185 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v216 = 0;
  v210 = 0;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202[1] = 0;
  v202[0] = 0;
  v171 = sub_240DADAB4();
  v172 = *(v171 - 8);
  v173 = v172;
  v2 = *(v172 + 64);
  MEMORY[0x28223BE20](v171 - 8);
  v174 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v174;
  v175 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C18, &qword_240DB2F78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v185);
  v176 = &v38 - v175;
  v177 = sub_240DADC54();
  v178 = *(v177 - 8);
  v179 = v178;
  v181 = *(v178 + 64);
  v4 = MEMORY[0x28223BE20](v188);
  v183 = (v181 + 15) & 0xFFFFFFFFFFFFFFF0;
  v180 = &v38 - v183;
  v5 = MEMORY[0x28223BE20](v4);
  v182 = &v38 - v183;
  v6 = MEMORY[0x28223BE20](v5);
  v184 = &v38 - v183;
  v218 = v6;
  v217 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C20, &qword_240DB2F80);
  sub_240DAE1D4();
  v186 = MEMORY[0x277D837D0];
  v187 = MEMORY[0x277D837E0];
  v216 = sub_240DADCA4();
  v212[0] = sub_240DADD64();
  v212[1] = v7;
  v189 = v212;
  sub_240DADCC4();
  sub_240D7F920(v189);
  if (!v214)
  {
    sub_240DAE124();
    __break(1u);
  }

  v164 = v169;
  v159 = v215;
  sub_240D8634C(v213, v215);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C28, &qword_240DB2F88);
  v161 = MEMORY[0x277D84F70] + 8;
  swift_dynamicCast();
  v160 = v211;
  v210 = v211;
  v207[0] = sub_240DADD64();
  v207[1] = v8;
  v162 = v207;
  sub_240DADCC4();
  sub_240D7F920(v162);
  v163 = *(v170 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

  v9 = sub_240DA09C8();
  v10 = v164;
  v165 = v9;
  v11 = sub_240DAD9C4();
  v166 = v10;
  v167 = v11;
  v168 = v10;
  if (v10)
  {
    v39 = v168;

    sub_240D86770(v208);

    sub_240DAC728(&v216);
    result = v39;
    v40 = v39;
  }

  else
  {
    v158 = v167;

    v206 = v158;
    v205 = 1;
    v157 = v209 != 0;
    if (v209)
    {
      sub_240D862BC(v208, v191);
      if (!v191[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v154 = v192;
      sub_240D8634C(v191, v192);
      swift_dynamicCast();
      v206 = v190;
      v205 = 0;
      v155 = 0;
      v156 = v190;
    }

    else
    {
      v155 = 1;
      v156 = v158;
    }

    v12 = v184;
    v144 = v156;
    v145 = v155;
    v13 = sub_240D9C574();
    v146 = *(v179 + 16);
    v147 = (v179 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v146(v12, v13, v177);
    v152 = sub_240DADC24();
    v148 = v152;
    v151 = sub_240DADF64();
    v149 = v151;
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v153 = sub_240DAE1D4();
    if (os_log_type_enabled(v152, v151))
    {
      v142 = v166;
      v134 = sub_240DADFD4();
      v130 = v134;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v132 = 0;
      v135 = sub_240D98680(0);
      v133 = v135;
      v136 = sub_240D98680(v132);
      v193[0] = v134;
      v192[6] = v135;
      v192[5] = v136;
      v137 = 0;
      v138 = v193;
      sub_240D986D4(0, v193);
      sub_240D986D4(v137, v138);
      v192[4] = v153;
      v139 = &v38;
      MEMORY[0x28223BE20](&v38);
      v140 = &v38 - 6;
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
      sub_240D98764();
      v14 = v142;
      sub_240DADDF4();
      v143 = v14;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_240CB9000, v148, v149, "Starting DB Search", v130, 2u);
        v128 = 0;
        sub_240D987EC(v133);
        sub_240D987EC(v136);
        sub_240DADFB4();

        v129 = v143;
      }
    }

    else
    {

      v129 = v166;
    }

    v123 = v129;

    v109 = *(v179 + 8);
    v110 = (v179 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v109(v184, v177);
    v111 = *(v170 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

    v124 = sub_240DADE64();
    v119 = v15;
    v112 = v124;
    v113 = v15;
    v117 = 0;
    v120 = sub_240DAE1D4();
    v114 = v120;
    v115 = sub_240DADA74();
    v121 = sub_240DAE1D4();
    v116 = v121;
    v118 = sub_240DA1EB8();
    v122 = sub_240DA1EC4();
    sub_240DA1ED0();
    v16 = v123;
    v17 = sub_240DADA04();
    v125 = v16;
    v126 = v17;
    v127 = v16;
    if (v16)
    {
      v38 = v127;

      sub_240D98B10(v112, v113);

      sub_240D86770(v208);

      sub_240DAC728(&v216);
      return v38;
    }

    else
    {
      v18 = v182;
      v103 = v126;

      sub_240D98B10(v112, v113);

      v204 = v103;
      v19 = sub_240D9C574();
      v146(v18, v19, v177);
      v107 = sub_240DADC24();
      v104 = v107;
      v106 = sub_240DADF64();
      v105 = v106;
      v108 = sub_240DAE1D4();
      if (os_log_type_enabled(v107, v106))
      {
        v101 = v125;
        v93 = sub_240DADFD4();
        v89 = v93;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v91 = 0;
        v94 = sub_240D98680(0);
        v92 = v94;
        v95 = sub_240D98680(v91);
        v194 = v93;
        v193[3] = v94;
        v193[2] = v95;
        v96 = 0;
        v97 = &v194;
        sub_240D986D4(0, &v194);
        sub_240D986D4(v96, v97);
        v193[1] = v108;
        v98 = &v38;
        MEMORY[0x28223BE20](&v38);
        v99 = &v38 - 6;
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
        sub_240D98764();
        v20 = v101;
        sub_240DADDF4();
        v102 = v20;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_240CB9000, v104, v105, "Completed DB Search", v89, 2u);
          v87 = 0;
          sub_240D987EC(v92);
          sub_240D987EC(v95);
          sub_240DADFB4();

          v88 = v102;
        }
      }

      else
      {

        v88 = v125;
      }

      v21 = v180;
      v68 = v88;

      v109(v182, v177);
      v69 = sub_240DADE84();
      v203 = v69;
      v22 = sub_240D9C574();
      v146(v21, v22, v177);
      v76 = 7;
      v77 = swift_allocObject();
      *(v77 + 16) = v69;
      v86 = sub_240DADC24();
      v70 = v86;
      v85 = sub_240DADF64();
      v71 = v85;
      v72 = 17;
      v80 = swift_allocObject();
      v73 = v80;
      *(v80 + 16) = 0;
      v81 = swift_allocObject();
      v74 = v81;
      *(v81 + 16) = 8;
      v75 = 32;
      v23 = swift_allocObject();
      v24 = v77;
      v78 = v23;
      *(v23 + 16) = sub_240DAC754;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v78;
      v84 = v25;
      v79 = v25;
      *(v25 + 16) = sub_240DAC7A8;
      *(v25 + 24) = v26;
      v82 = sub_240DAE1D4();
      v83 = v27;

      v28 = v80;
      v29 = v83;
      *v83 = sub_240DAC75C;
      v29[1] = v28;

      v30 = v81;
      v31 = v83;
      v83[2] = sub_240DAC764;
      v31[3] = v30;

      v32 = v83;
      v33 = v84;
      v83[4] = sub_240DAC7B4;
      v32[5] = v33;
      sub_240D7F8DC();

      if (os_log_type_enabled(v86, v85))
      {
        v65 = v68;
        v61 = sub_240DADFD4();
        v57 = v61;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v59 = 0;
        v62 = sub_240D98680(0);
        v60 = v62;
        v63 = sub_240D98680(v59);
        v199[0] = v61;
        v198 = v62;
        v197 = v63;
        v64 = v199;
        sub_240D986D4(0, v199);
        sub_240D986D4(1, v64);
        v34 = v65;
        v195 = sub_240DAC75C;
        v196 = v73;
        sub_240D986E8(&v195, v64, &v198, &v197);
        v66 = v34;
        v67 = v34;
        if (v34)
        {
          v55 = 0;

          __break(1u);
        }

        else
        {
          v195 = sub_240DAC764;
          v196 = v74;
          sub_240D986E8(&v195, v199, &v198, &v197);
          v53 = 0;
          v54 = 0;
          v195 = sub_240DAC7B4;
          v196 = v79;
          sub_240D986E8(&v195, v199, &v198, &v197);
          v51 = 0;
          v52 = 0;
          _os_log_impl(&dword_240CB9000, v70, v71, "Search returned: %ld results", v57, 0xCu);
          v50 = 0;
          sub_240D987EC(v60);
          sub_240D987EC(v63);
          sub_240DADFB4();

          v56 = v51;
        }
      }

      else
      {

        v56 = v68;
      }

      v48 = v56;

      v109(v180, v177);

      v201 = v103;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C38, &qword_240DB2F90);
      sub_240DAC8A0();
      sub_240DADF54();
      for (i = v48; ; i = v45)
      {
        v46 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C48, &qword_240DB2F98);
        sub_240DAE0E4();
        if ((*(v173 + 48))(v176, 1, v171) == 1)
        {
          break;
        }

        v45 = v46;
        (*(v173 + 32))(v174, v176, v171);
        v43 = sub_240DADA94();
        v44 = v35;
        sub_240DADAA4();
        v199[3] = v36;
        v200 = 0;
        v199[1] = v43;
        v199[2] = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C50, &unk_240DB2FA0);
        sub_240DADCD4();
        (*(v173 + 8))(v174, v171);
      }

      v41 = v46;
      sub_240DAC928(v202);
      v42 = v216;

      sub_240D86770(v208);

      sub_240DAC728(&v216);
      return v42;
    }
  }

  return result;
}

uint64_t sub_240DA2088(uint64_t a1)
{
  if (a1)
  {
    v9 = *(v15 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

    v8 = sub_240DAD9E4();
    if (!v16)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      sub_240DAE1D4();
      v7 = v3;
      *v3 = sub_240DADD64();
      v7[1] = v4;
      v7[5] = MEMORY[0x277D83B88];
      v7[2] = v8;
      sub_240D7F8DC();
      return sub_240DADCA4();
    }
  }

  else
  {
    v13 = *(v15 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

    sub_240DA09C8();
    v14 = sub_240DAD9C4();
    if (!v16)
    {

      v12 = *(v15 + OBJC_IVAR____TtC19AppleMediaDiscovery18AMDVectorDBManager_client);

      sub_240DADA34();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
      sub_240DAE1D4();
      v10 = v1;
      *v1 = sub_240DADD64();
      v10[1] = v2;
      v10[5] = MEMORY[0x277D84A28];
      v10[2] = v14;
      sub_240D7F8DC();
      return sub_240DADCA4();
    }
  }

  return v6;
}

uint64_t sub_240DA2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v77 = a3;
  v105 = a1;
  v106 = a2;
  v125 = 0;
  v79 = sub_240DAC9B4;
  v80 = sub_240DACA28;
  v81 = sub_240DACB14;
  v82 = sub_240DACB04;
  v83 = sub_240DACB0C;
  v84 = sub_240DACB20;
  v145 = *MEMORY[0x277D85DE8];
  v141 = 0;
  v140 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v101 = 0;
  v85 = sub_240DADC54();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v89 = &v40 - v88;
  v119 = sub_240DAD624();
  v116 = *(v119 - 8);
  v117 = v119 - 8;
  v90 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v118 = &v40 - v90;
  v100 = sub_240DAD674();
  v92 = *(v100 - 8);
  v91 = v100 - 8;
  v93 = v92;
  v94 = *(v92 + 64);
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v105);
  v96 = &v40 - v95;
  v97 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v115 = &v40 - v97;
  v141 = &v40 - v97;
  v98 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v40 - v98;
  v140 = &v40 - v98;
  v138 = v8;
  v139 = v9;
  v137 = v3;
  v121 = 0x277CCA000uLL;
  v10 = objc_opt_self();
  v122 = 0x1FB108000uLL;
  v99 = [v10 0x1FB10863BLL];
  v107 = 1;
  v103 = [v99 URLsForDirectory:14 inDomains:?];
  MEMORY[0x277D82BD8](v99);
  v102 = sub_240DADE54();
  sub_240DADEB4();

  MEMORY[0x277D82BD8](v103);
  v11 = sub_240DAE1C4();
  v110 = &v135;
  v135 = v11;
  v136 = v12;
  v124 = 1;
  v13 = sub_240DADD64();
  v104 = v14;
  MEMORY[0x245CD0520](v13);

  v134[2] = v105;
  v134[3] = v106;
  v113 = MEMORY[0x277D837D0];
  sub_240DAE1A4();
  v15 = sub_240DADD64();
  v109 = v16;
  MEMORY[0x245CD0520](v15);

  v112 = v135;
  v111 = v136;

  sub_240DAC174(v110);
  v17 = sub_240DADD54();
  v120 = v134;
  v134[0] = v17;
  v134[1] = v18;
  v114 = sub_240D9C1A8();
  sub_240DA35FC(v118);
  sub_240DAD664();
  (*(v116 + 8))(v118, v119);
  sub_240D7F920(v120);
  v144 = 0;
  v19 = *(v121 + 2560);
  v128 = [objc_opt_self() (v122 + 1595)];
  sub_240DAD654();
  v123 = v20;
  v127 = sub_240DADCF4();

  v133 = v144;
  v129 = [v128 createDirectoryAtPath:v127 withIntermediateDirectories:v124 & 1 attributes:v125 error:&v133];
  v126 = v133;
  MEMORY[0x277D82BE0](v133);
  v21 = v144;
  v144 = v126;
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  if (v129)
  {
    v22 = v89;
    v23 = sub_240D9C574();
    (*(v86 + 16))(v22, v23, v85);
    v61 = v93;
    v59 = *(v92 + 16);
    v60 = v92 + 16;
    v59(v96, v115, v100);
    v62 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v66 = 7;
    v63 = swift_allocObject();
    (*(v92 + 32))(v63 + v62, v96, v100);

    v65 = 32;
    v24 = swift_allocObject();
    v25 = v63;
    v67 = v24;
    *(v24 + 16) = v79;
    *(v24 + 24) = v25;

    v75 = sub_240DADC24();
    v76 = sub_240DADF64();
    v64 = 17;
    v69 = swift_allocObject();
    *(v69 + 16) = 32;
    v70 = swift_allocObject();
    *(v70 + 16) = 8;
    v26 = swift_allocObject();
    v27 = v67;
    v68 = v26;
    *(v26 + 16) = v80;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v68;
    v72 = v28;
    *(v28 + 16) = v81;
    *(v28 + 24) = v29;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
    v71 = sub_240DAE1D4();
    v73 = v30;

    v31 = v69;
    v32 = v73;
    *v73 = v82;
    v32[1] = v31;

    v33 = v70;
    v34 = v73;
    v73[2] = v83;
    v34[3] = v33;

    v35 = v72;
    v36 = v73;
    v73[4] = v84;
    v36[5] = v35;
    sub_240D7F8DC();

    if (os_log_type_enabled(v75, v76))
    {
      v52 = sub_240DADFD4();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
      v53 = sub_240D98680(0);
      v54 = sub_240D98680(1);
      v55 = &v132;
      v132 = v52;
      v56 = &v143;
      v143 = v53;
      v57 = &v142;
      v142 = v54;
      sub_240D986D4(2, &v132);
      sub_240D986D4(1, v55);
      v37 = v78;
      v130 = v82;
      v131 = v69;
      sub_240D986E8(&v130, v55, v56, v57);
      v58 = v37;
      if (v37)
      {

        __break(1u);
      }

      else
      {
        v130 = v83;
        v131 = v70;
        sub_240D986E8(&v130, &v132, &v143, &v142);
        v49 = 0;
        v130 = v84;
        v131 = v72;
        sub_240D986E8(&v130, &v132, &v143, &v142);
        v48 = 0;
        _os_log_impl(&dword_240CB9000, v75, v76, "Created Vector DB Directory: %s", v52, 0xCu);
        sub_240D987EC(v53);
        sub_240D987EC(v54);
        sub_240DADFB4();

        v50 = v48;
      }
    }

    else
    {

      v50 = v78;
    }

    v45 = v50;
    MEMORY[0x277D82BD8](v75);
    (*(v86 + 8))(v89, v85);
    v59(v77, v115, v100);
    v47 = *(v92 + 8);
    v46 = v92 + 8;
    v47(v115, v100);
    result = (v47)(v108, v100);
    v39 = __OFSUB__(*MEMORY[0x277D85DE8], v145);
  }

  else
  {
    v41 = v144;
    v42 = sub_240DAD614();
    MEMORY[0x277D82BD8](v41);
    swift_willThrow();
    v44 = *(v92 + 8);
    v43 = v92 + 8;
    v44(v115, v100);
    result = (v44)(v108, v100);
    *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_240DA35FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC91D8];
  v1 = sub_240DAD624();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA38C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = sub_240DADD64();
  v16 = MEMORY[0x245CD00E0](a1, a2, v3);

  if (v16)
  {
    v12 = *MEMORY[0x277D781F0];
    v4 = sub_240DADA84();
    return (*(*(v4 - 8) + 104))(a3, v12);
  }

  else
  {
    v6 = sub_240DADD64();
    v11 = MEMORY[0x245CD00E0](a1, a2, v6);

    if (v11)
    {
      v10 = *MEMORY[0x277D781F8];
      v7 = sub_240DADA84();
      return (*(*(v7 - 8) + 104))(a3, v10);
    }

    else
    {
      v9 = *MEMORY[0x277D781E8];
      v8 = sub_240DADA84();
      return (*(*(v8 - 8) + 104))(a3, v9);
    }
  }
}

uint64_t sub_240DA3A94@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D78218];
  v1 = sub_240DADAC4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA3B18@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D78218];
  v1 = sub_240DADAC4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_240DA3B9C(uint64_t a1)
{
  v195 = a1;
  v196 = sub_240DACB2C;
  v199 = sub_240DACB34;
  v203 = sub_240DACC34;
  v205 = sub_240DACC24;
  v207 = sub_240DACC2C;
  v210 = sub_240DACC40;
  v169 = sub_240DACC4C;
  v170 = sub_240DACC54;
  v171 = sub_240DACD54;
  v172 = sub_240DACD44;
  v173 = sub_240DACD4C;
  v174 = sub_240DACD60;
  v175 = "Fatal error";
  v176 = "Unexpectedly found nil while unwrapping an Optional value";
  v177 = "AppleMediaDiscovery/AMDVectorDB.swift";
  v262 = *MEMORY[0x277D85DE8];
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v235 = 0;
  v236 = 0;
  v233 = 0;
  v227 = 0;
  v228 = 0;
  v225 = 0;
  v188 = 0;
  v178 = sub_240DAD674();
  v179 = *(v178 - 8);
  v180 = v178 - 8;
  v181 = (*(v179 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v182 = &v62 - v181;
  v192 = sub_240DADC54();
  v190 = *(v192 - 8);
  v191 = v192 - 8;
  v184 = v190[8];
  v183 = (v184 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v195);
  v185 = &v62 - v183;
  v186 = (v184 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v3 = &v62 - v186;
  v187 = &v62 - v186;
  v242 = v2;
  v241 = v4;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v240 = sub_240DADCA4();
  v5 = sub_240D9C574();
  v193 = v190[2];
  v194 = v190 + 2;
  v193(v3, v5, v192);

  v201 = 7;
  v197 = swift_allocObject();
  *(v197 + 16) = v195;

  v200 = 32;
  v6 = swift_allocObject();
  v7 = v197;
  v202 = v6;
  *(v6 + 16) = v196;
  *(v6 + 24) = v7;

  v214 = sub_240DADC24();
  v215 = sub_240DADF64();
  v198 = 17;
  v206 = swift_allocObject();
  *(v206 + 16) = 32;
  v208 = swift_allocObject();
  *(v208 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v202;
  v204 = v8;
  *(v8 + 16) = v199;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v204;
  v211 = v10;
  *(v10 + 16) = v203;
  *(v10 + 24) = v11;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
  v209 = sub_240DAE1D4();
  v212 = v12;

  v13 = v206;
  v14 = v212;
  *v212 = v205;
  v14[1] = v13;

  v15 = v208;
  v16 = v212;
  v212[2] = v207;
  v16[3] = v15;

  v17 = v211;
  v18 = v212;
  v212[4] = v210;
  v18[5] = v17;
  sub_240D7F8DC();

  if (os_log_type_enabled(v214, v215))
  {
    v161 = sub_240DADFD4();
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
    v162 = sub_240D98680(0);
    v163 = sub_240D98680(1);
    v164 = &v218;
    v218 = v161;
    v165 = &v244;
    v244 = v162;
    v166 = &v243;
    v243 = v163;
    sub_240D986D4(2, &v218);
    sub_240D986D4(1, v164);
    v19 = v168;
    v216 = v205;
    v217 = v206;
    sub_240D986E8(&v216, v164, v165, v166);
    v167 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v216 = v207;
      v217 = v208;
      sub_240D986E8(&v216, &v218, &v244, &v243);
      v157 = 0;
      v216 = v210;
      v217 = v211;
      sub_240D986E8(&v216, &v218, &v244, &v243);
      v156 = 0;
      _os_log_impl(&dword_240CB9000, v214, v215, "Deletion Payload: %s", v161, 0xCu);
      sub_240D987EC(v162);
      sub_240D987EC(v163);
      sub_240DADFB4();

      v158 = v156;
    }
  }

  else
  {

    v158 = v168;
  }

  v152 = v158;
  MEMORY[0x277D82BD8](v214);
  v153 = v190[1];
  v154 = v190 + 1;
  v153(v187, v192);
  v20 = sub_240DADD64();
  v155 = v239;
  v239[0] = v20;
  v239[1] = v21;
  sub_240DADCC4();
  sub_240D7F920(v155);
  v151 = v261 == 0;
  if (v261)
  {
    sub_240D862BC(v260, v257);
    if (!v258)
    {
      sub_240DAE124();
      __break(1u);
    }

    v133 = v259;
    sub_240D8634C(v257, v259);
    swift_dynamicCast();
    v134 = v237;
    v135 = v238;
    v235 = v237;
    v236 = v238;
    v256 = 0;
    v136 = objc_opt_self();

    v138 = sub_240DADCF4();

    v234 = v256;
    v139 = [v136 fetchVectorDBConfigForDBName:v138 error:&v234];
    v137 = v234;
    MEMORY[0x277D82BE0](v234);
    v33 = v256;
    v256 = v137;
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v138);
    if (v139)
    {
      v132 = v139;
      v34 = v185;
      v117 = v139;
      v118 = sub_240DADC84();
      v233 = v118;
      MEMORY[0x277D82BD8](v117);
      v35 = sub_240D9C574();
      v193(v34, v35, v192);

      v122 = 7;
      v119 = swift_allocObject();
      *(v119 + 16) = v118;

      v121 = 32;
      v36 = swift_allocObject();
      v37 = v119;
      v123 = v36;
      *(v36 + 16) = v169;
      *(v36 + 24) = v37;

      v130 = sub_240DADC24();
      v131 = sub_240DADF64();
      v120 = 17;
      v125 = swift_allocObject();
      *(v125 + 16) = 32;
      v126 = swift_allocObject();
      *(v126 + 16) = 8;
      v38 = swift_allocObject();
      v39 = v123;
      v124 = v38;
      *(v38 + 16) = v170;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v124;
      v128 = v40;
      *(v40 + 16) = v171;
      *(v40 + 24) = v41;
      v127 = sub_240DAE1D4();
      v129 = v42;

      v43 = v125;
      v44 = v129;
      *v129 = v172;
      v44[1] = v43;

      v45 = v126;
      v46 = v129;
      v129[2] = v173;
      v46[3] = v45;

      v47 = v128;
      v48 = v129;
      v129[4] = v174;
      v48[5] = v47;
      sub_240D7F8DC();

      if (os_log_type_enabled(v130, v131))
      {
        v110 = sub_240DADFD4();
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
        v111 = sub_240D98680(0);
        v112 = sub_240D98680(1);
        v113 = &v221;
        v221 = v110;
        v114 = &v246;
        v246 = v111;
        v115 = &v245;
        v245 = v112;
        sub_240D986D4(2, &v221);
        sub_240D986D4(1, v113);
        v49 = v152;
        v219 = v172;
        v220 = v125;
        sub_240D986E8(&v219, v113, v114, v115);
        v116 = v49;
        if (v49)
        {

          __break(1u);
        }

        else
        {
          v219 = v173;
          v220 = v126;
          sub_240D986E8(&v219, &v221, &v246, &v245);
          v107 = 0;
          v219 = v174;
          v220 = v128;
          sub_240D986E8(&v219, &v221, &v246, &v245);
          v106 = 0;
          _os_log_impl(&dword_240CB9000, v130, v131, "Fetched the config: %s", v110, 0xCu);
          sub_240D987EC(v111);
          sub_240D987EC(v112);
          sub_240DADFB4();

          v108 = v106;
        }
      }

      else
      {

        v108 = v152;
      }

      v104 = v108;
      MEMORY[0x277D82BD8](v130);
      v153(v185, v192);
      v232[0] = sub_240DADD64();
      v232[1] = v50;
      v105 = v255;
      sub_240DAE174();
      sub_240DADCC4();
      v103 = v254[3] == 0;
      v102 = v103;
      sub_240D86770(v254);
      sub_240D92370(v255);
      sub_240D7F920(v232);
      if (v102)
      {
        v94 = 1;
        v95 = sub_240DADD64();
        v96 = v51;
        v52 = sub_240DADD64();
        v98 = v247;
        v247[3] = MEMORY[0x277D837D0];
        v247[0] = v52;
        v247[1] = v53;
        v97 = v222;
        v222[0] = v95;
        v222[1] = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        v99 = &v240;
        sub_240DADCD4();
        v100 = v240;

        sub_240D86770(v260);
        sub_240D9060C(v99);
        v101 = v100;
      }

      else
      {
        v231[0] = sub_240DADD64();
        v231[1] = v54;
        v93 = v252;
        sub_240DAE174();
        sub_240DADCC4();
        if (!v251[3])
        {
          sub_240DAE124();
          __break(1u);
        }

        v86 = v253;
        sub_240D8634C(v251, v253);
        swift_dynamicCast();
        v87 = v229;
        v88 = v230;
        v227 = v229;
        v228 = v230;
        sub_240D92370(v252);
        sub_240D7F920(v231);
        v250 = 0;
        v89 = objc_opt_self();

        v91 = sub_240DADCF4();

        v226 = v250;
        v92 = [v89 deleteVectorDBEntryForDBName:v91 error:&v226];
        v90 = v226;
        MEMORY[0x277D82BE0](v226);
        v55 = v250;
        v250 = v90;
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v91);
        if (!v92)
        {
          v65 = v250;
          v66 = sub_240DAD614();
          MEMORY[0x277D82BD8](v65);
          swift_willThrow();

          sub_240D86770(v260);
          sub_240D9060C(&v240);
          v150 = v66;
          goto LABEL_27;
        }

        v85 = v92;
        v74 = v92;
        v75 = sub_240DADC84();
        v225 = v75;
        MEMORY[0x277D82BD8](v74);
        v77 = sub_240DADD64();
        v76 = v56;

        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
        v79 = v249;
        v249[3] = v57;
        v249[0] = v75;
        v78 = v224;
        v224[0] = v77;
        v224[1] = v76;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        sub_240DADCD4();
        v248 = 0;
        v83 = [objc_opt_self() defaultManager];
        sub_240DAD634();
        v82 = sub_240DAD644();
        (*(v179 + 8))(v182, v178);
        v223 = v248;
        v84 = [v83 removeItemAtURL:v82 error:&v223];
        v81 = v223;
        MEMORY[0x277D82BE0](v223);
        v58 = v248;
        v248 = v81;
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v83);
        if ((v84 & 1) == 0)
        {
          v63 = v248;
          v64 = sub_240DAD614();
          MEMORY[0x277D82BD8](v63);
          swift_willThrow();

          sub_240D86770(v260);
          sub_240D9060C(&v240);
          v150 = v64;
          goto LABEL_27;
        }

        v70 = sub_240DADD64();
        v71 = v59;

        v247[7] = MEMORY[0x277D837D0];
        v247[4] = v87;
        v247[5] = v88;
        v222[2] = v70;
        v222[3] = v71;
        v72 = &v240;
        sub_240DADCD4();
        v73 = v240;

        sub_240D86770(v260);
        sub_240D9060C(v72);
        v101 = v73;
      }

      v69 = v101;
      *MEMORY[0x277D85DE8];
      return v101;
    }

    v67 = v256;
    v68 = sub_240DAD614();
    MEMORY[0x277D82BD8](v67);
    swift_willThrow();

    sub_240D86770(v260);
    sub_240D9060C(&v240);
    v150 = v68;
  }

  else
  {
    sub_240DAC110();
    v140 = 1;
    v148 = sub_240DADD64();
    v146 = v22;
    v147 = sub_240D9D87C(0);
    v142 = sub_240DAE1D4();
    v141 = v23;
    v143 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](v143);
    v24 = sub_240DADD04();
    v25 = v141;
    *v141 = v24;
    v25[1] = v26;
    v27 = sub_240DADD64();
    v28 = v141;
    v29 = v27;
    v30 = v142;
    v145 = MEMORY[0x277D837D0];
    v141[5] = MEMORY[0x277D837D0];
    v28[2] = v29;
    v28[3] = v31;
    sub_240D7F8DC();
    v144 = v30;
    MEMORY[0x277D82BD8](v143);
    v32 = sub_240DADCA4();
    v149 = sub_240D9FA30(v148, v146, v147, v32);
    swift_willThrow();
    sub_240D86770(v260);
    sub_240D9060C(&v240);
    v150 = v149;
  }

LABEL_27:
  v62 = v150;
  v61 = __OFSUB__(*MEMORY[0x277D85DE8], v262);
  return v159;
}

uint64_t sub_240DA52CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_240DA5300@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_240DA54D4(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v55[1] = 0;
  v52 = 0;
  v51 = 0;
  v48 = 0;
  v55[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v55[0] = sub_240DADCA4();
  v54[0] = sub_240DADD64();
  v54[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v54);
  if (v69[3])
  {
    sub_240D862BC(v69, v66);
    if (!v67)
    {
      sub_240DAE124();
      __break(1u);
    }

    sub_240D8634C(v66, v68);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
    swift_dynamicCast();
    v52 = v53;
    type metadata accessor for AMDVectorDBManager();

    v37 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v53);
    if (v44)
    {

      sub_240D86770(v69);
      sub_240D9060C(v55);
    }

    else
    {
      v51 = v37;
      v50[0] = sub_240DADD64();
      v50[1] = v8;
      sub_240DADCC4();
      sub_240D7F920(v50);
      if (v65[3])
      {
        sub_240D862BC(v65, v62);
        if (!v63)
        {
          sub_240DAE124();
          __break(1u);
        }

        sub_240D8634C(v62, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C68, &qword_240DB2FB0);
        swift_dynamicCast();
        v30 = (*((*v37 & *MEMORY[0x277D85000]) + 0x60))(v49, v15, v16);

        v48 = v30;
        v27 = sub_240DADD64();
        v28 = v17;

        v61 = v36;
        v60 = v30;
        v47[2] = v27;
        v47[3] = v28;
        sub_240DADCD4();
        v59 = 0;
        v29 = objc_opt_self();
        v47[0] = sub_240DADD64();
        v47[1] = v18;
        sub_240DADCC4();
        sub_240D7F920(v47);
        if (!v57)
        {
          sub_240DAE124();
          __break(1u);
        }

        sub_240D8634C(v56, v58);
        swift_dynamicCast();
        v25 = sub_240DADCF4();

        v46 = v59;
        v26 = [v29 updateLastVectorDBRefreshTimestamp:v25 error:&v46];
        v24 = v46;
        MEMORY[0x277D82BE0](v46);
        v19 = v59;
        v59 = v24;
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v25);
        if (v26)
        {
          v45 = sub_240DADC84();
          MEMORY[0x277D82BD8](v26);
          sub_240DADD64();

          v55[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v55[3] = v45;
          sub_240DADCD4();
          v23 = v55[0];

          sub_240D86770(v65);
          MEMORY[0x277D82BD8](v37);

          sub_240D86770(v69);
          sub_240D9060C(v55);
          *MEMORY[0x277D85DE8];
          return v23;
        }

        v22 = v59;
        sub_240DAD614();
        MEMORY[0x277D82BD8](v22);
        swift_willThrow();

        sub_240D86770(v65);
        MEMORY[0x277D82BD8](v37);

        sub_240D86770(v69);
        sub_240D9060C(v55);
      }

      else
      {
        sub_240DAC110();
        v35 = sub_240DADD64();
        v33 = v9;
        v34 = sub_240D9D87C(3);
        sub_240DAE1D4();
        v31 = v10;
        v32 = *MEMORY[0x277CCA450];
        MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
        *v31 = sub_240DADD04();
        v31[1] = v11;
        v12 = sub_240DADD64();
        v31[5] = MEMORY[0x277D837D0];
        v31[2] = v12;
        v31[3] = v13;
        sub_240D7F8DC();
        MEMORY[0x277D82BD8](v32);
        v14 = sub_240DADCA4();
        sub_240D9FA30(v35, v33, v34, v14);
        swift_willThrow();
        sub_240D86770(v65);
        MEMORY[0x277D82BD8](v37);

        sub_240D86770(v69);
        sub_240D9060C(v55);
      }
    }
  }

  else
  {
    sub_240DAC110();
    v42 = sub_240DADD64();
    v40 = v2;
    v41 = sub_240D9D87C(2);
    sub_240DAE1D4();
    v38 = v3;
    v39 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v38 = sub_240DADD04();
    v38[1] = v4;
    v5 = sub_240DADD64();
    v38[5] = MEMORY[0x277D837D0];
    v38[2] = v5;
    v38[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v39);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v42, v40, v41, v7);
    swift_willThrow();
    sub_240D86770(v69);
    sub_240D9060C(v55);
  }

  v21 = __OFSUB__(*MEMORY[0x277D85DE8], v70);
  return v43;
}

uint64_t sub_240DA61AC(uint64_t a1)
{
  v35[4] = 0;
  v29 = 0;
  v35[5] = a1;
  v34[0] = sub_240DADD64();
  v34[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v34);
  if (!v35[3])
  {
    sub_240DAC110();
    v22 = sub_240DADD64();
    v20 = v2;
    v21 = sub_240D9D87C(2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v18 = v3;
    v19 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v18 = sub_240DADD04();
    v18[1] = v4;
    v5 = sub_240DADD64();
    v18[5] = MEMORY[0x277D837D0];
    v18[2] = v5;
    v18[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v19);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v22, v20, v21, v7);
    swift_willThrow();
    sub_240D86770(v35);
    return v23;
  }

  type metadata accessor for AMDVectorDBManager();
  sub_240D862BC(v35, v31);
  if (!v32)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  swift_dynamicCast();
  v17 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v30);
  if (v24)
  {
    sub_240D86770(v35);
    return v23;
  }

  v29 = v17;
  v27[0] = sub_240DADD64();
  v27[1] = v8;
  sub_240DADCC4();
  sub_240D7F920(v27);
  if (v28[3])
  {
    sub_240D862BC(v28, v26);
    if (v26[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C70, &qword_240DB2FB8);
      if (swift_dynamicCast())
      {
        v14 = v25;
      }

      else
      {
        v14 = 0;
      }

      v13 = v14;
    }

    else
    {
      sub_240D86770(v26);
      v13 = 0;
    }

    v12 = (*((*v17 & *MEMORY[0x277D85000]) + 0x70))(v13, v9, v10);

    sub_240D86770(v28);
    MEMORY[0x277D82BD8](v17);
    sub_240D86770(v35);
    return v12;
  }

  else
  {
    v16 = (*((*v17 & *MEMORY[0x277D85000]) + 0x70))(0);
    sub_240D86770(v28);
    MEMORY[0x277D82BD8](v17);
    sub_240D86770(v35);
    return v16;
  }
}

uint64_t sub_240DA6998(uint64_t a1)
{
  v44[4] = 0;
  v38 = 0;
  v44[5] = a1;
  v43[0] = sub_240DADD64();
  v43[1] = v1;
  sub_240DADCC4();
  sub_240D7F920(v43);
  if (!v44[3])
  {
    sub_240DAC110();
    v29 = sub_240DADD64();
    v27 = v2;
    v28 = sub_240D9D87C(2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v25 = v3;
    v26 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v25 = sub_240DADD04();
    v25[1] = v4;
    v5 = sub_240DADD64();
    v25[5] = MEMORY[0x277D837D0];
    v25[2] = v5;
    v25[3] = v6;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v26);
    v7 = sub_240DADCA4();
    sub_240D9FA30(v29, v27, v28, v7);
    swift_willThrow();
    sub_240D86770(v44);
    return v30;
  }

  type metadata accessor for AMDVectorDBManager();
  sub_240D862BC(v44, v40);
  if (!v41)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v40, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  swift_dynamicCast();
  v24 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v39);
  if (v31)
  {
    sub_240D86770(v44);
    return v30;
  }

  v38 = v24;
  v36[0] = sub_240DADD64();
  v36[1] = v8;
  sub_240DADCC4();
  sub_240D7F920(v36);
  if (!v37[3])
  {
    sub_240DAC110();
    v23 = sub_240DADD64();
    v21 = v9;
    v22 = sub_240D9D87C(3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
    sub_240DAE1D4();
    v19 = v10;
    v20 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v19 = sub_240DADD04();
    v19[1] = v11;
    v12 = sub_240DADD64();
    v19[5] = MEMORY[0x277D837D0];
    v19[2] = v12;
    v19[3] = v13;
    sub_240D7F8DC();
    MEMORY[0x277D82BD8](v20);
    v14 = sub_240DADCA4();
    sub_240D9FA30(v23, v21, v22, v14);
    swift_willThrow();
    sub_240D86770(v37);
    MEMORY[0x277D82BD8](v24);
    sub_240D86770(v44);
    return v30;
  }

  sub_240D862BC(v37, v33);
  if (!v34)
  {
    sub_240DAE124();
    __break(1u);
  }

  sub_240D8634C(v33, v35);
  swift_dynamicCast();
  v18 = (*((*v24 & *MEMORY[0x277D85000]) + 0x68))(v32, v15, v16);

  sub_240D86770(v37);
  MEMORY[0x277D82BD8](v24);
  sub_240D86770(v44);
  return v18;
}

uint64_t sub_240DA722C(uint64_t a1)
{
  v650 = v2;
  v669 = MEMORY[0x28223BE20](a1);
  v755 = *MEMORY[0x277D85DE8];
  v664 = 0;
  v725 = 0;
  v724 = 0;
  v723 = 0;
  v722 = 0;
  v718 = 0;
  v717[1] = 0;
  v717[0] = 0;
  v715 = 0;
  v710 = 0;
  v709 = 0;
  v704 = 0;
  v703 = 0;
  v697 = 0;
  v696 = 0;
  v691 = 0;
  v689 = 0;
  v686 = 0;
  v685 = 0;
  v684 = 0;
  v682 = 0;
  v677 = 0;
  v651 = sub_240DAD674();
  v652 = *(v651 - 8);
  v653 = v652;
  v3 = *(v652 + 64);
  MEMORY[0x28223BE20](0);
  v654 = v188 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v725 = v654;
  v655 = sub_240DADC54();
  v656 = *(v655 - 8);
  v657 = v656;
  v660 = *(v656 + 64);
  v5 = MEMORY[0x28223BE20](v669);
  v662 = (v660 + 15) & 0xFFFFFFFFFFFFFFF0;
  v658 = v188 - v662;
  v6 = MEMORY[0x28223BE20](v5);
  v659 = v188 - v662;
  v7 = MEMORY[0x28223BE20](v6);
  v661 = v188 - v662;
  v8 = MEMORY[0x28223BE20](v7);
  v663 = v188 - v662;
  v724 = v8;
  v723 = v1;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199E0, &qword_240DB28A0);
  sub_240DAE1D4();
  v667 = MEMORY[0x277D84F70] + 8;
  v666 = MEMORY[0x277D837D0];
  v668 = MEMORY[0x277D837E0];
  v722 = sub_240DADCA4();
  v721[0] = sub_240DADD64();
  v721[1] = v9;
  v670 = v721;
  sub_240DADCC4();
  sub_240D7F920(v670);
  v649 = v754[3] == 0;
  v648 = v649;
  sub_240D86770(v754);
  if (!v648)
  {
    v720[0] = sub_240DADD64();
    v720[1] = v22;
    v635 = v720;
    sub_240DADCC4();
    sub_240D7F920(v635);
    if (!v752)
    {
      sub_240DAE124();
      __break(1u);
    }

    v630 = v753;
    sub_240D8634C(v751, v753);
    v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519AB0, &qword_240DB2FC0);
    swift_dynamicCast();
    v632 = v719;
    v631 = v719;
    v718 = v719;

    v716 = v632;
    sub_240DACD6C();
    sub_240DADF54();
    for (i = v650; ; i = v416)
    {
      v628 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519C78, &qword_240DB2FC8);
      sub_240DAE0E4();
      v629 = v750;
      if (!v750)
      {
        v312 = v628;
        sub_240DACDF4(v717);
        v311 = v722;

        sub_240D9060C(&v722);
        v165 = *MEMORY[0x277D85DE8] == v755;
        v313 = v312;
        return v311;
      }

      v627 = v629;
      v625 = v629;
      v715 = v629;
      v714[0] = sub_240DADD64();
      v714[1] = v23;
      v626 = v714;
      sub_240DADCC4();
      sub_240D7F920(v626);
      v624 = v749[3] == 0;
      v622 = v624;
      sub_240D86770(v749);
      v623 = v625;
      if (v622)
      {
        v620 = v623;
        v619 = 0;
        sub_240DAC110();
        v610 = 1;
        v618 = sub_240DADD64();
        v616 = v24;
        v617 = sub_240D9D87C(3);
        v612 = sub_240DAE1D4();
        v611 = v25;
        v613 = *MEMORY[0x277CCA450];
        v26 = v613;
        v27 = sub_240DADD04();
        v28 = v611;
        *v611 = v27;
        v28[1] = v29;
        v30 = sub_240DADD64();
        v31 = v611;
        v32 = v30;
        v33 = v612;
        v615 = MEMORY[0x277D837D0];
        v611[5] = MEMORY[0x277D837D0];
        v31[2] = v32;
        v31[3] = v34;
        sub_240D7F8DC();
        v614 = v33;

        v35 = sub_240DADCA4();
        v621 = sub_240D9FA30(v618, v616, v617, v35);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v621;
        goto LABEL_66;
      }

      v713[0] = sub_240DADD64();
      v713[1] = v36;
      v609 = v713;
      sub_240DADCC4();
      sub_240D7F920(v609);
      if (!v747)
      {
        sub_240DAE124();
        __break(1u);
      }

      v603 = v748;
      sub_240D8634C(v746, v748);
      v607 = MEMORY[0x277D84F70] + 8;
      v606 = MEMORY[0x277D837D0];
      swift_dynamicCast();
      v604 = v711;
      v605 = v712;
      v709 = v711;
      v710 = v712;
      v708[0] = sub_240DADD64();
      v708[1] = v37;
      v608 = v708;
      sub_240DADCC4();
      sub_240D7F920(v608);
      v602 = v745[3] == 0;
      v599 = v602;
      sub_240D86770(v745);
      v600 = v605;
      v601 = v625;
      if (v599)
      {
        v597 = v601;
        v596 = v600;
        v595 = 0;
        sub_240DAC110();
        v586 = 1;
        v594 = sub_240DADD64();
        v592 = v38;
        v593 = sub_240D9D87C(3);
        v588 = sub_240DAE1D4();
        v587 = v39;
        v589 = *MEMORY[0x277CCA450];
        v40 = v589;
        v41 = sub_240DADD04();
        v42 = v587;
        *v587 = v41;
        v42[1] = v43;
        v44 = sub_240DADD64();
        v45 = v587;
        v46 = v44;
        v47 = v588;
        v591 = MEMORY[0x277D837D0];
        v587[5] = MEMORY[0x277D837D0];
        v45[2] = v46;
        v45[3] = v48;
        sub_240D7F8DC();
        v590 = v47;

        v49 = sub_240DADCA4();
        v598 = sub_240D9FA30(v594, v592, v593, v49);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v598;
        goto LABEL_66;
      }

      v707[0] = sub_240DADD64();
      v707[1] = v50;
      v585 = v707;
      sub_240DADCC4();
      sub_240D7F920(v585);
      if (!v743[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v571 = v744;
      sub_240D8634C(v743, v744);
      swift_dynamicCast();
      v574 = v705;
      v572 = v705;
      v575 = v706;
      v580 = v706;
      v703 = v705;
      v704 = v706;
      v573 = *sub_240D9D670();

      v702 = v573;
      v701[2] = v574;
      v701[3] = v575;
      v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A50, &unk_240DB2FD0);
      v576 = v577;
      v578 = sub_240D87BE4();
      v579 = &v702;
      v581 = sub_240DADE04();
      sub_240D86744(v579);
      v582 = v580;
      v583 = v605;
      v584 = v625;
      if ((v581 & 1) == 0)
      {
        v569 = v584;
        v568 = v583;
        v567 = v582;
        v566 = 0;
        sub_240DAC110();
        v557 = 1;
        v565 = sub_240DADD64();
        v563 = v51;
        v564 = sub_240D9D87C(3);
        v559 = sub_240DAE1D4();
        v558 = v52;
        v560 = *MEMORY[0x277CCA450];
        v53 = v560;
        v54 = sub_240DADD04();
        v55 = v558;
        *v558 = v54;
        v55[1] = v56;
        v57 = sub_240DADD64();
        v58 = v558;
        v59 = v57;
        v60 = v559;
        v562 = MEMORY[0x277D837D0];
        v558[5] = MEMORY[0x277D837D0];
        v58[2] = v59;
        v58[3] = v61;
        sub_240D7F8DC();
        v561 = v60;

        v62 = sub_240DADCA4();
        v570 = sub_240D9FA30(v565, v563, v564, v62);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v570;
        goto LABEL_66;
      }

      v701[0] = sub_240DADD64();
      v701[1] = v63;
      v556 = v701;
      sub_240DADCC4();
      sub_240D7F920(v556);
      v555 = v742[3] == 0;
      v551 = v555;
      sub_240D86770(v742);
      v552 = v580;
      v553 = v605;
      v554 = v625;
      if (v551)
      {
        v549 = v554;
        v548 = v553;
        v547 = v552;
        v546 = 0;
        sub_240DAC110();
        v537 = 1;
        v545 = sub_240DADD64();
        v543 = v64;
        v544 = sub_240D9D87C(3);
        v539 = sub_240DAE1D4();
        v538 = v65;
        v540 = *MEMORY[0x277CCA450];
        v66 = v540;
        v67 = sub_240DADD04();
        v68 = v538;
        *v538 = v67;
        v68[1] = v69;
        v70 = sub_240DADD64();
        v71 = v538;
        v72 = v70;
        v73 = v539;
        v542 = MEMORY[0x277D837D0];
        v538[5] = MEMORY[0x277D837D0];
        v71[2] = v72;
        v71[3] = v74;
        sub_240D7F8DC();
        v541 = v73;

        v75 = sub_240DADCA4();
        v550 = sub_240D9FA30(v545, v543, v544, v75);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v550;
        goto LABEL_66;
      }

      v700[0] = sub_240DADD64();
      v700[1] = v76;
      v536 = v700;
      sub_240DADCC4();
      sub_240D7F920(v536);
      if (!v740[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v526 = v741;
      sub_240D8634C(v740, v741);
      swift_dynamicCast();
      v527 = v698;
      v530 = v699;
      v696 = v698;
      v697 = v699;
      v528 = *sub_240D9D670();

      v695 = v528;
      v694[2] = v572;
      v694[3] = v580;
      v529 = &v695;
      v531 = sub_240DADE04();
      sub_240D86744(v529);
      v532 = v530;
      v533 = v580;
      v534 = v605;
      v535 = v625;
      if ((v531 & 1) == 0)
      {
        v524 = v535;
        v523 = v534;
        v522 = v533;
        v521 = v532;
        v520 = 0;
        sub_240DAC110();
        v511 = 1;
        v519 = sub_240DADD64();
        v517 = v77;
        v518 = sub_240D9D87C(3);
        v513 = sub_240DAE1D4();
        v512 = v78;
        v514 = *MEMORY[0x277CCA450];
        v79 = v514;
        v80 = sub_240DADD04();
        v81 = v512;
        *v512 = v80;
        v81[1] = v82;
        v83 = sub_240DADD64();
        v84 = v512;
        v85 = v83;
        v86 = v513;
        v516 = MEMORY[0x277D837D0];
        v512[5] = MEMORY[0x277D837D0];
        v84[2] = v85;
        v84[3] = v87;
        sub_240D7F8DC();
        v515 = v86;

        v88 = sub_240DADCA4();
        v525 = sub_240D9FA30(v519, v517, v518, v88);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v525;
        goto LABEL_66;
      }

      v694[0] = sub_240DADD64();
      v694[1] = v89;
      v510 = v694;
      sub_240DADCC4();
      sub_240D7F920(v510);
      v509 = v739[3] == 0;
      v504 = v509;
      sub_240D86770(v739);
      v505 = v530;
      v506 = v580;
      v507 = v605;
      v508 = v625;
      if (v504)
      {
        v502 = v508;
        v501 = v507;
        v500 = v506;
        v499 = v505;
        v498 = 0;
        sub_240DAC110();
        v489 = 1;
        v497 = sub_240DADD64();
        v495 = v90;
        v496 = sub_240D9D87C(3);
        v491 = sub_240DAE1D4();
        v490 = v91;
        v492 = *MEMORY[0x277CCA450];
        v92 = v492;
        v93 = sub_240DADD04();
        v94 = v490;
        *v490 = v93;
        v94[1] = v95;
        v96 = sub_240DADD64();
        v97 = v490;
        v98 = v96;
        v99 = v491;
        v494 = MEMORY[0x277D837D0];
        v490[5] = MEMORY[0x277D837D0];
        v97[2] = v98;
        v97[3] = v100;
        sub_240D7F8DC();
        v493 = v99;

        v101 = sub_240DADCA4();
        v503 = sub_240D9FA30(v497, v495, v496, v101);
        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v503;
        goto LABEL_66;
      }

      v693[0] = sub_240DADD64();
      v693[1] = v102;
      v488 = v693;
      sub_240DADCC4();
      sub_240D7F920(v488);
      if (!v737[3])
      {
        sub_240DAE124();
        __break(1u);
      }

      v477 = v738;
      sub_240D8634C(v737, v738);
      swift_dynamicCast();
      v478 = v692;
      v691 = v692;
      v736 = 0;
      v479 = objc_opt_self();

      v482 = sub_240DADCF4();

      v690 = v736;
      v483 = [v479 fetchVectorDBConfigForDBName:v482 error:&v690];
      v480 = v483;
      v481 = v690;
      v103 = v690;
      v104 = v736;
      v736 = v481;

      v484 = v530;
      v485 = v580;
      v486 = v605;
      v487 = v625;
      if (!v483)
      {
        v309 = v487;
        v308 = v486;
        v307 = v485;
        v306 = v484;
        v304 = v736;
        v305 = sub_240DAD614();
        v310 = v305;

        swift_willThrow();

        sub_240DACDF4(v717);

        sub_240D9060C(&v722);
        v647 = v310;
        goto LABEL_66;
      }

      v476 = v480;
      v469 = v480;
      v474 = MEMORY[0x277D84F70] + 8;
      v473 = MEMORY[0x277D84030];
      v475 = MEMORY[0x277D84038];
      v472 = sub_240DADC84();
      v470 = v472;
      v689 = v472;

      v688[0] = sub_240DADD64();
      v688[1] = v105;
      v471 = v735;
      sub_240DAE174();
      sub_240DADCC4();
      v468 = v734[3] != 0;
      v467 = v468;
      sub_240D86770(v734);
      sub_240D92370(v735);
      sub_240D7F920(v688);
      if (v467)
      {
        v106 = v663;
        v107 = sub_240D9C574();
        (*(v657 + 16))(v106, v107, v655);

        v450 = 32;
        v454 = 32;
        v455 = 7;
        v108 = swift_allocObject();
        v109 = v605;
        v456 = v108;
        *(v108 + 16) = v604;
        *(v108 + 24) = v109;
        v466 = sub_240DADC24();
        v448 = v466;
        v465 = sub_240DADF64();
        v449 = v465;
        v451 = 17;
        v459 = swift_allocObject();
        v452 = v459;
        *(v459 + 16) = v450;
        v460 = swift_allocObject();
        v453 = v460;
        *(v460 + 16) = 8;
        v110 = swift_allocObject();
        v111 = v456;
        v457 = v110;
        *(v110 + 16) = sub_240DACEB8;
        *(v110 + 24) = v111;
        v112 = swift_allocObject();
        v113 = v457;
        v463 = v112;
        v458 = v112;
        *(v112 + 16) = sub_240DACED4;
        *(v112 + 24) = v113;
        v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
        v461 = sub_240DAE1D4();
        v462 = v114;

        v115 = v459;
        v116 = v462;
        *v462 = sub_240DACEC4;
        v116[1] = v115;

        v117 = v460;
        v118 = v462;
        v462[2] = sub_240DACECC;
        v118[3] = v117;

        v119 = v462;
        v120 = v463;
        v462[4] = sub_240DACEE0;
        v119[5] = v120;
        sub_240D7F8DC();

        if (os_log_type_enabled(v466, v465))
        {
          v442 = v628;
          v437 = sub_240DADFD4();
          v434 = v437;
          v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
          v438 = sub_240D98680(0);
          v436 = v438;
          v440 = 1;
          v439 = sub_240D98680(1);
          v673[0] = v437;
          v727[0] = v438;
          v726 = v439;
          v441 = v673;
          sub_240D986D4(2, v673);
          sub_240D986D4(v440, v441);
          v121 = v442;
          v671 = sub_240DACEC4;
          v672 = v452;
          sub_240D986E8(&v671, v441, v727, &v726);
          v443 = v121;
          v444 = v452;
          v445 = v453;
          v446 = v458;
          v447 = v121;
          if (v121)
          {
            v429 = v444;
            v430 = v445;
            v431 = v446;
            v432 = 0;
            v418 = v446;
            v417 = v445;

            __break(1u);
          }

          else
          {
            v671 = sub_240DACECC;
            v672 = v453;
            sub_240D986E8(&v671, v673, v727, &v726);
            v424 = 0;
            v425 = v452;
            v426 = v453;
            v427 = v458;
            v428 = 0;
            v671 = sub_240DACEE0;
            v672 = v458;
            sub_240D986E8(&v671, v673, v727, &v726);
            v419 = 0;
            v420 = v452;
            v421 = v453;
            v422 = v458;
            v423 = 0;
            _os_log_impl(&dword_240CB9000, v448, v449, "DB exists with name:%s", v434, 0xCu);
            sub_240D987EC(v436);
            sub_240D987EC(v439);
            sub_240DADFB4();

            v433 = v419;
          }
        }

        else
        {

          v433 = v628;
        }

        v415 = v433;

        (*(v657 + 8))(v663, v655);

        v727[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
        v727[1] = v470;
        v673[1] = v604;
        v673[2] = v605;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
        sub_240DADCD4();

        v416 = v415;
      }

      else
      {
        v122 = v661;
        v123 = sub_240D9C574();
        v393 = *(v657 + 16);
        v394 = (v657 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v393(v122, v123, v655);

        v397 = 32;
        v401 = 32;
        v402 = 7;
        v124 = swift_allocObject();
        v125 = v605;
        v403 = v124;
        *(v124 + 16) = v604;
        *(v124 + 24) = v125;
        v414 = sub_240DADC24();
        v395 = v414;
        v413 = sub_240DADF64();
        v396 = v413;
        v398 = 17;
        v407 = swift_allocObject();
        v399 = v407;
        *(v407 + 16) = v397;
        v408 = swift_allocObject();
        v400 = v408;
        *(v408 + 16) = 8;
        v126 = swift_allocObject();
        v127 = v403;
        v404 = v126;
        *(v126 + 16) = sub_240DACE20;
        *(v126 + 24) = v127;
        v128 = swift_allocObject();
        v129 = v404;
        v411 = v128;
        v405 = v128;
        *(v128 + 16) = sub_240DACE3C;
        *(v128 + 24) = v129;
        v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B48, &qword_240DB2B70);
        v406 = v412;
        v409 = sub_240DAE1D4();
        v410 = v130;

        v131 = v407;
        v132 = v410;
        *v410 = sub_240DACE2C;
        v132[1] = v131;

        v133 = v408;
        v134 = v410;
        v410[2] = sub_240DACE34;
        v134[3] = v133;

        v135 = v410;
        v136 = v411;
        v410[4] = sub_240DACE48;
        v135[5] = v136;
        sub_240D7F8DC();

        if (os_log_type_enabled(v414, v413))
        {
          v387 = v628;
          v382 = sub_240DADFD4();
          v379 = v382;
          v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
          v383 = sub_240D98680(0);
          v381 = v383;
          v385 = 1;
          v384 = sub_240D98680(1);
          v676[0] = v382;
          v729[0] = v383;
          v728 = v384;
          v386 = v676;
          sub_240D986D4(2, v676);
          sub_240D986D4(v385, v386);
          v137 = v387;
          v674 = sub_240DACE2C;
          v675 = v399;
          sub_240D986E8(&v674, v386, v729, &v728);
          v388 = v137;
          v389 = v399;
          v390 = v400;
          v391 = v405;
          v392 = v137;
          if (v137)
          {
            v374 = v389;
            v375 = v390;
            v376 = v391;
            v377 = 0;
            v363 = v391;
            v362 = v390;

            __break(1u);
          }

          else
          {
            v674 = sub_240DACE34;
            v675 = v400;
            sub_240D986E8(&v674, v676, v729, &v728);
            v369 = 0;
            v370 = v399;
            v371 = v400;
            v372 = v405;
            v373 = 0;
            v674 = sub_240DACE48;
            v675 = v405;
            sub_240D986E8(&v674, v676, v729, &v728);
            v364 = 0;
            v365 = v399;
            v366 = v400;
            v367 = v405;
            v368 = 0;
            _os_log_impl(&dword_240CB9000, v395, v396, "New vector DB name: %s. Instantiating new vectorDB", v379, 0xCu);
            sub_240D987EC(v381);
            sub_240D987EC(v384);
            sub_240DADFB4();

            v378 = v364;
          }
        }

        else
        {

          v378 = v628;
        }

        v353 = v378;

        v351 = *(v657 + 8);
        v352 = (v657 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v351(v661, v655);
        v138 = type metadata accessor for AMDVectorDBManager();
        v139 = v353;
        v354 = v138;
        sub_240DA2664(v604, v605, v654);
        v355 = v139;
        v356 = v470;
        v357 = v530;
        v358 = v580;
        v359 = v605;
        v360 = v625;
        v361 = v139;
        if (v139)
        {
          v303 = v361;
          v302 = v360;
          v301 = v359;
          v300 = v358;
          v299 = v357;

          sub_240DACDF4(v717);

          sub_240D9060C(&v722);
          v647 = v303;
          goto LABEL_66;
        }

        v733 = 0;
        v347 = objc_opt_self();
        sub_240DAD654();
        v348 = v140;
        v349 = sub_240DADCF4();

        v350 = sub_240DADCF4();

        if (v478 <= 0xFFFFFFFF7FFFFFFFLL)
        {
          sub_240DAE124();
          __break(1u);
        }

        if (v478 >= 0x80000000)
        {
          sub_240DAE124();
          __break(1u);
        }

        v336 = v478;

        v340 = sub_240DADCF4();

        v339 = sub_240DADCF4();

        v687 = v733;
        v341 = [v347 persistVectorDBPath:v349 forDBName:v350 withVectorDimension:v336 andDataType:v340 withDistanceMetric:v339 error:&v687];
        v337 = v341;
        v338 = v687;
        v141 = v687;
        v142 = v733;
        v733 = v338;

        v342 = v470;
        v343 = v530;
        v344 = v580;
        v345 = v605;
        v346 = v625;
        if (!v341)
        {
          v297 = v346;
          v296 = v345;
          v295 = v344;
          v294 = v343;
          v293 = v342;
          v291 = v733;
          v292 = sub_240DAD614();
          v298 = v292;

          swift_willThrow();
          (*(v653 + 8))(v654, v651, 0);

          sub_240DACDF4(v717);

          sub_240D9060C(&v722);
          v647 = v298;
          goto LABEL_66;
        }

        v335 = v337;
        v320 = v337;
        v331 = v355;
        v329 = MEMORY[0x277D84F70] + 8;
        v321 = sub_240DADC84();
        v686 = v321;

        v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519A68, &qword_240DB29A0);
        v322 = 1;
        v323 = sub_240DAE1D4();
        v324 = v143;
        v144 = sub_240DADD64();
        v145 = v324;
        *v324 = v144;
        v145[1] = v146;

        v147 = v324;
        v148 = v605;
        v324[2] = v604;
        v147[3] = v148;
        sub_240D7F8DC();
        v328 = MEMORY[0x277D837D0];
        v330 = MEMORY[0x277D837E0];
        v327 = sub_240DADCA4();
        v326 = v327;
        v685 = v327;

        v149 = sub_240DAE144();
        v150 = v331;
        v151 = AMDVectorDBManager.__allocating_init(vectorDBConfig:)(v149);
        v332 = v150;
        v333 = v151;
        v334 = v150;
        if (v150)
        {
          v167 = v659;
          v272 = v334;
          v271 = 0;

          MEMORY[0x245CD0E40](v272);
          v684 = v272;
          v168 = sub_240D9C574();
          v393(v167, v168, v655);

          v275 = 32;
          v279 = 32;
          v280 = 7;
          v169 = swift_allocObject();
          v170 = v605;
          v281 = v169;
          *(v169 + 16) = v604;
          *(v169 + 24) = v170;
          v290 = sub_240DADC24();
          v273 = v290;
          v289 = sub_240DADF64();
          v274 = v289;
          v276 = 17;
          v284 = swift_allocObject();
          v277 = v284;
          *(v284 + 16) = v275;
          v285 = swift_allocObject();
          v278 = v285;
          *(v285 + 16) = 8;
          v171 = swift_allocObject();
          v172 = v281;
          v282 = v171;
          *(v171 + 16) = sub_240DACE54;
          *(v171 + 24) = v172;
          v173 = swift_allocObject();
          v174 = v282;
          v288 = v173;
          v283 = v173;
          *(v173 + 16) = sub_240DACE70;
          *(v173 + 24) = v174;
          v286 = sub_240DAE1D4();
          v287 = v175;

          v176 = v284;
          v177 = v287;
          *v287 = sub_240DACE60;
          v177[1] = v176;

          v178 = v285;
          v179 = v287;
          v287[2] = sub_240DACE68;
          v179[3] = v178;

          v180 = v287;
          v181 = v288;
          v287[4] = sub_240DACE7C;
          v180[5] = v181;
          sub_240D7F8DC();

          if (os_log_type_enabled(v290, v289))
          {
            v265 = v271;
            v260 = sub_240DADFD4();
            v257 = v260;
            v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
            v261 = sub_240D98680(0);
            v259 = v261;
            v263 = 1;
            v262 = sub_240D98680(1);
            v680[0] = v260;
            v731[0] = v261;
            v730 = v262;
            v264 = v680;
            sub_240D986D4(2, v680);
            sub_240D986D4(v263, v264);
            v182 = v265;
            v678 = sub_240DACE60;
            v679 = v277;
            sub_240D986E8(&v678, v264, v731, &v730);
            v266 = v182;
            v267 = v277;
            v268 = v278;
            v269 = v283;
            v270 = v182;
            if (v182)
            {
              v252 = v267;
              v253 = v268;
              v254 = v269;
              v255 = 0;
              v241 = v269;
              v240 = v268;

              __break(1u);
            }

            else
            {
              v678 = sub_240DACE68;
              v679 = v278;
              sub_240D986E8(&v678, v680, v731, &v730);
              v247 = 0;
              v248 = v277;
              v249 = v278;
              v250 = v283;
              v251 = 0;
              v678 = sub_240DACE7C;
              v679 = v283;
              sub_240D986E8(&v678, v680, v731, &v730);
              v242 = 0;
              v243 = v277;
              v244 = v278;
              v245 = v283;
              v246 = 0;
              _os_log_impl(&dword_240CB9000, v273, v274, "VectorDB instantiation failed for dbName: %s", v257, 0xCu);
              sub_240D987EC(v259);
              sub_240D987EC(v262);
              sub_240DADFB4();

              v256 = v242;
            }
          }

          else
          {

            v256 = v271;
          }

          v183 = v658;
          v234 = v256;

          v351(v659, v655);
          v184 = sub_240D9C574();
          v393(v183, v184, v655);
          v238 = sub_240DADC24();
          v235 = v238;
          v237 = sub_240DADF64();
          v236 = v237;
          v239 = sub_240DAE1D4();
          if (os_log_type_enabled(v238, v237))
          {
            v230 = v234;
            v223 = sub_240DADFD4();
            v219 = v223;
            v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B58, &qword_240DB2B78);
            v221 = 0;
            v224 = sub_240D98680(0);
            v222 = v224;
            v225 = sub_240D98680(v221);
            v681[0] = v223;
            v731[2] = v224;
            v731[1] = v225;
            v226 = 0;
            v227 = v681;
            sub_240D986D4(0, v681);
            sub_240D986D4(v226, v227);
            v680[1] = v239;
            v231 = v188;
            MEMORY[0x28223BE20](v188);
            v228 = &v188[-6];
            v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B60, &qword_240DB2B80);
            sub_240D98764();
            v185 = v230;
            sub_240DADDF4();
            v232 = v185;
            v233 = v231;
            if (v185)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&dword_240CB9000, v235, v236, "Performing cleanup of SQL table", v219, 2u);
              v217 = 0;
              sub_240D987EC(v222);
              sub_240D987EC(v225);
              sub_240DADFB4();

              v218 = v232;
            }
          }

          else
          {

            v218 = v234;
          }

          v203 = v218;

          v351(v658, v655);
          v732 = 0;
          v204 = objc_opt_self();

          v207 = sub_240DADCF4();

          v683 = v732;
          v208 = [v204 deleteVectorDBEntryForDBName:v207 error:&v683];
          v205 = v208;
          v206 = v683;
          v186 = v683;
          v187 = v732;
          v732 = v206;

          v209 = v470;
          v210 = v530;
          v211 = v580;
          v212 = v605;
          v213 = v625;
          v214 = v272;
          v215 = v321;
          v216 = v326;
          if (!v208)
          {
            v192 = v216;
            v193 = v215;
            v191 = v214;
            v198 = v213;
            v197 = v212;
            v196 = v211;
            v195 = v210;
            v194 = v209;
            v189 = v732;
            v190 = sub_240DAD614();
            v199 = v190;

            swift_willThrow();

            (*(v653 + 8))(v654, v651);

            sub_240DACDF4(v717);

            sub_240D9060C(&v722);
            v647 = v199;
            goto LABEL_66;
          }

          v202 = v205;
          v200 = v205;
          v201 = sub_240DADC84();
          v682 = v201;

          v731[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v731[3] = v201;
          v681[1] = v604;
          v681[2] = v605;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
          sub_240DADCD4();

          (*(v653 + 8))(v654, v651);

          v416 = v203;
        }

        else
        {
          v314 = v333;

          v677 = v314;

          v317 = sub_240DAE1D4();
          v316 = v152;
          v315 = 1;
          v153 = sub_240DADD64();
          v154 = v316;
          *v316 = v153;
          v154[1] = v155;
          v156 = sub_240DAD654();
          v157 = v316;
          v318 = MEMORY[0x277D837D0];
          v316[5] = MEMORY[0x277D837D0];
          v157[2] = v156;
          v157[3] = v158;
          v159 = sub_240DADD64();
          v160 = v316;
          v316[6] = v159;
          v160[7] = v161;

          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
          v163 = v316;
          v164 = v321;
          v316[11] = v162;
          v163[8] = v164;
          sub_240D7F8DC();
          v319 = sub_240DADCA4();
          v729[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
          v729[1] = v319;
          v676[1] = v604;
          v676[2] = v605;
          sub_240DADCD4();

          (*(v653 + 8))(v654, v651);

          v416 = v332;
        }
      }
    }
  }

  v645 = 0;
  sub_240DAC110();
  v636 = 1;
  v644 = sub_240DADD64();
  v642 = v10;
  v643 = sub_240D9D87C(3);
  v638 = sub_240DAE1D4();
  v637 = v11;
  v639 = *MEMORY[0x277CCA450];
  v12 = v639;
  v13 = sub_240DADD04();
  v14 = v637;
  *v637 = v13;
  v14[1] = v15;
  v16 = sub_240DADD64();
  v17 = v637;
  v18 = v16;
  v19 = v638;
  v641 = MEMORY[0x277D837D0];
  v637[5] = MEMORY[0x277D837D0];
  v17[2] = v18;
  v17[3] = v20;
  sub_240D7F8DC();
  v640 = v19;

  v21 = sub_240DADCA4();
  v646 = sub_240D9FA30(v644, v642, v643, v21);
  swift_willThrow();
  sub_240D9060C(&v722);
  v647 = v646;
LABEL_66:
  result = v188[0];
  v188[1] = v647;
  v165 = *MEMORY[0x277D85DE8] == v755;
  return result;
}

id sub_240DAAE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = sub_240DADCF4();
  if (a4)
  {
    v6 = sub_240DADC74();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v9 initWithDomain:v11 code:a3 userInfo:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v11);

  return v5;
}

uint64_t sub_240DAAF2C(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_240DADF44();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_240DAE154();
  __break(1u);
LABEL_12:
  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DAB258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_240DAD50C;
        v16 = &v37;
        sub_240DAAF2C(sub_240DAD528, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_240DAE124();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_240DAE124();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_240DAE124();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_240DAE124();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_240DAE124();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_240DAE124();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_240DAE124();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_240DAE124();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_240DAE124();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_240DAE124();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_240DAE124();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_240DAE124();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_240DAE154();
    __break(1u);
  }

  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DABA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_240DAE124();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_240DAE124();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_240DAE124();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_240DAE124();
                __break(1u);
              }

              sub_240DAE124();
              __break(1u);
            }

            sub_240DAE124();
            __break(1u);
          }

          sub_240DAE124();
          __break(1u);
        }

        sub_240DAE124();
        __break(1u);
      }

      sub_240DAE124();
      __break(1u);
    }

    sub_240DAE124();
    __break(1u);
  }

  result = sub_240DAE124();
  __break(1u);
  return result;
}

uint64_t sub_240DABF9C(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_240DADA74();
      v3 = sub_240DADE74();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_240DADA74();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t sub_240DAC0DC()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240D9FAC8();
  return result;
}

unint64_t sub_240DAC110()
{
  v2 = qword_2810BCF50;
  if (!qword_2810BCF50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2810BCF50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_240DAC174(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t *sub_240DAC1A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_240DAC1E0();
  return a1;
}

uint64_t *sub_240DAC224(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_240DAC268(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v24 = a6;
  v26 = a1;
  v20 = 0;
  v30 = a6;
  v21 = *(a6 - 8);
  v22 = v21;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](0);
  v23 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v27 = sub_240DAE0F4() >> 3;
  v28 = *v26;
  v29 = v28;
  if (v27 < 0)
  {
    result = sub_240DAE154();
    __break(1u);
  }

  else
  {
    v19 = v28 + v27;
    v18 = &v18;
    v10 = MEMORY[0x28223BE20](v23);
    v16 = v29;
    v17 = v11;
    sub_240DAC4A4(v10, sub_240DAD554, v15, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v13, MEMORY[0x277D84F78]);
    (*(v22 + 8))(v23, v24);
    result = v18;
    *v26 = v19;
  }

  return result;
}

uint64_t sub_240DAC4A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_240DAE154();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_240DAC66C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240DAC6B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_240D9C130();
  v5 = MEMORY[0x277D84A28];

  return sub_240DAC268(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t *sub_240DAC728(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_240DAC76C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240DAC7B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_240DAC828();
  v5 = MEMORY[0x277D83B88];

  return sub_240DAC268(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_240DAC828()
{
  v2 = qword_27E519C30;
  if (!qword_27E519C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240DAC8A0()
{
  v2 = qword_27E519C40;
  if (!qword_27E519C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519C38, &qword_240DB2F90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C40);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_240DAC928(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_240DAC9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240DAD674();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_240DA366C(v3, a1);
}

uint64_t sub_240DACA28()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_240DAD674();
  v1 = sub_240DACA84();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACA84()
{
  v2 = qword_2810BCFA8;
  if (!qword_2810BCFA8)
  {
    sub_240DAD674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACB34()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5199C8, &qword_240DB2890);
  v1 = sub_240DACB9C();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACB9C()
{
  v2 = qword_27E519C58;
  if (!qword_27E519C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5199C8, &qword_240DB2890);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACC54()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E519B20, &qword_240DB2AB8);
  v1 = sub_240DACCBC();

  return sub_240D98B98(v5, v3, v4, v1);
}

unint64_t sub_240DACCBC()
{
  v2 = qword_27E519C60;
  if (!qword_27E519C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519B20, &qword_240DB2AB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_240DACD6C()
{
  v2 = qword_2810BCF70;
  if (!qword_2810BCF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E519AB0, &qword_240DB2FC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2810BCF70);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_240DACDF4(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_240DACE20()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240DAAB48();
  return result;
}

uint64_t sub_240DACE54()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240DAAB7C();
  return result;
}

uint64_t sub_240DACEB8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_240DAAB14();
  return result;
}

unint64_t sub_240DACF04()
{
  v2 = qword_27E519C80;
  if (!qword_27E519C80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27E519C80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_240DACF80(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_240DAD0E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_240DAD554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_240DAC47C();
}
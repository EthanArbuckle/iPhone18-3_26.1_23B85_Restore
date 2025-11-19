uint64_t sub_23ED9221C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C18, &qword_23EDC5EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED9228C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23ED922EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_23ED9235C()
{
  result = qword_27E388C38;
  if (!qword_27E388C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C38);
  }

  return result;
}

uint64_t sub_23ED923B0()
{
  v1 = (type metadata accessor for ALCInferenceInput() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23EDC0EF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v24 = (v3 + v4 + v7) & ~v7;
  v8 = (*(v6 + 64) + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0);
  v9 = *(v25 - 8);
  v10 = *(v9 + 80);
  v11 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  v23 = *(v9 + 64);
  v12 = v2 | v7 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = v0 + v3;
  v15 = *(v6 + 8);
  v15(v14, v5);
  v16 = v14 + v1[7];

  v17 = *(v16 + 32);

  v18 = *(type metadata accessor for InferenceRecipe() + 24);
  v19 = sub_23EDC13F0();
  (*(*(v19 - 8) + 8))(v16 + v18, v19);
  v15(v0 + v24, v5);
  v20 = *(v0 + v8);

  v21 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  (*(v9 + 8))(v0 + v11, v25);

  return MEMORY[0x2821FE8E8](v0, v11 + v23, v12 | 7);
}

uint64_t sub_23ED92624(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ALCInferenceInput() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23EDC0EF0() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C28, &unk_23EDC5EC0) - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v10);
  v17 = *(v1 + v11);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_23ED68C90;

  return sub_23ED8E800(a1, v14, v15, v1 + v6, v1 + v9, v16, v17, v1 + v13);
}

uint64_t sub_23ED92810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED92878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED92930()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-v5];
  sub_23EDC14D0();
  v7 = sub_23EDC1810();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v11 = sub_23EDC17F0();
    (*(v8 + 8))(v6, v7);
    v12 = MEMORY[0x23EF24CA0](v11);
    if (v12 == sub_23EDC17A0())
    {
      token = 0;
      if (!task_create_identity_token(*MEMORY[0x277D85F48], &token))
      {
        sub_23EDC1A20();
        xpc_dictionary_set_mach_send();

        sub_23EDC14F0();
        swift_unknownObjectRetain();
        sub_23EDC1800();
        (*(v8 + 56))(v4, 0, 1, v7);
        sub_23EDC14E0();
        mach_port_deallocate(*MEMORY[0x277D85F48], token);
        goto LABEL_8;
      }

      sub_23ED6F858();
      swift_allocError();
      *v14 = 1;
    }

    else
    {
      sub_23ED6F858();
      swift_allocError();
      *v13 = 0;
    }

    swift_willThrow();
LABEL_8:
    result = swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_23ED92EA8(v6);
  sub_23ED6F858();
  swift_allocError();
  *v9 = 0;
  result = swift_willThrow();
LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23ED92C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  sub_23EDC14D0();
  v4 = sub_23EDC1810();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_23ED92EA8(v3);
    sub_23ED6F858();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  v8 = sub_23EDC17F0();
  (*(v5 + 8))(v3, v4);
  v9 = MEMORY[0x23EF24CA0](v8);
  if (v9 == sub_23EDC17A0())
  {
    sub_23EDC1A20();
    v11 = xpc_dictionary_copy_mach_send();

    if (v11)
    {
      sub_23EDC1820();
      return swift_unknownObjectRelease();
    }

    sub_23ED6F858();
    swift_allocError();
    *v12 = 2;
  }

  else
  {
    sub_23ED6F858();
    swift_allocError();
    *v10 = 0;
  }

  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_23ED92E54(void *a1, xpc_object_t value)
{
  xpc_dictionary_set_value(a1, "DATA", value);
  swift_unknownObjectRetain();
  return sub_23EDC1800();
}

uint64_t sub_23ED92EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388468, &unk_23EDC4120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ALCBakingOptions.resolution.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ALCBakingOptions.resolution.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

__n128 __swift_memcpy40_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23ED93620(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED93640(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23ED936C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23ED93710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ALCBakingOptions.Resolution(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

id sub_23ED937D4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_23EDC5F00;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 16;
  *(a1 + 48) = 257;
  *(a1 + 52) = 0x3E99999A3F80A3D7;
  *(a1 + 60) = 1065353216;
  *(a1 + 64) = 4096;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_23EDC5F10;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processorCount];

  *(a1 + 96) = v3;
  *(a1 + 104) = 68;
  *(a1 + 112) = 1065185444;
  v4 = MEMORY[0x277D25788];
  *(a1 + 116) = 257;
  v5 = *v4;
  *(a1 + 120) = *v4;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 1;

  return v5;
}

id sub_23ED938DC(__int128 *a1, float *a2, void *a3, char a4, uint64_t a5)
{
  v80 = a5;
  v9 = a1[7];
  v78 = a1[6];
  *v79 = v9;
  *&v79[9] = *(a1 + 121);
  v10 = a1[3];
  v74 = a1[2];
  v75 = v10;
  v11 = a1[5];
  v76 = a1[4];
  v77 = v11;
  v12 = a1[1];
  v72 = *a1;
  v73 = v12;
  if (qword_27E3881B8 != -1)
  {
    a1 = swift_once();
  }

  v13 = qword_27E389878;
  v14 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v15 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23EDC1DE0();
  if (v5)
  {
    sub_23ED93E78(&v72);
  }

  else
  {
    v69 = v73;
    v67 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v68 = *(&v73 + 1);
    v16 = a2[2] * *&v74;
    v17 = *&v74 * a2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C70, &qword_23EDC60B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23EDC5F20;
    v64 = *MEMORY[0x277D257E0];
    *(inited + 32) = *MEMORY[0x277D257E0];
    v19 = atan2f(a2[29], a2[25]);
    v20 = MEMORY[0x277D83A90];
    *(inited + 40) = v19 + v19;
    v63 = *MEMORY[0x277D257B8];
    v21 = *MEMORY[0x277D257B8];
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    v22 = MEMORY[0x277D839B0];
    *(inited + 80) = 1;
    v62 = *MEMORY[0x277D25798];
    v23 = *MEMORY[0x277D25798];
    *(inited + 104) = v22;
    *(inited + 112) = v23;
    v24 = v22;
    v25 = MEMORY[0x277D83B88];
    *(inited + 120) = v76;
    v61 = *MEMORY[0x277D257D8];
    v26 = *MEMORY[0x277D257D8];
    *(inited + 144) = v25;
    *(inited + 152) = v26;
    *(inited + 160) = BYTE8(v76);
    v27 = *MEMORY[0x277D257D0];
    *(inited + 184) = v24;
    *(inited + 192) = v27;
    v28 = *(&v77 + 1);
    *(inited + 200) = v77;
    v66 = v14;
    v29 = *MEMORY[0x277D257C8];
    *(inited + 224) = v25;
    *(inited + 232) = v29;
    *(inited + 240) = v78;
    v30 = *MEMORY[0x277D257A8];
    *(inited + 264) = v25;
    *(inited + 272) = v30;
    *(inited + 280) = v28;
    v31 = *MEMORY[0x277D257A0];
    *(inited + 304) = v25;
    *(inited + 312) = v31;
    type metadata accessor for MXISceneBuilderColorPrimaries(0);
    *(inited + 320) = a3;
    v32 = *MEMORY[0x277D257B0];
    *(inited + 344) = v33;
    *(inited + 352) = v32;
    *(inited + 360) = *&v79[8];
    v65 = v13;
    v34 = a3;
    v35 = *MEMORY[0x277D257C0];
    *(inited + 384) = v33;
    *(inited + 392) = v35;
    v36 = v79[16];
    *(inited + 424) = MEMORY[0x277D839B0];
    *(inited + 400) = v36;
    v37 = v64;
    v38 = v63;
    v39 = v62;
    v40 = v61;
    v41 = v27;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v45 = v34;
    v46 = v32;
    sub_23ED93EA8(&v72, &v71);
    v47 = v35;
    *(inited + 432) = sub_23EDC19A0();
    v48 = MEMORY[0x277D839B0];
    *(inited + 464) = MEMORY[0x277D839B0];
    *(inited + 440) = a4 & 1;
    *(inited + 472) = sub_23EDC19A0();
    v49 = v80;
    v50 = atan2f(*(v80 + 116), *(v80 + 100));
    v51 = MEMORY[0x277D83A90];
    *(inited + 504) = MEMORY[0x277D83A90];
    *(inited + 480) = v50 + v50;
    *(inited + 512) = sub_23EDC19A0();
    v52 = *v49 / v49[1];
    *(inited + 544) = v51;
    *(inited + 520) = v52;
    *(inited + 552) = sub_23EDC19A0();
    v53 = *&v79[20];
    *(inited + 584) = v51;
    *(inited + 560) = v53;
    *(inited + 592) = sub_23EDC19A0();
    v54 = v79[24];
    *(inited + 624) = v48;
    *(inited + 600) = v54;
    sub_23ED7A5F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886F8, &qword_23EDC60C0);
    swift_arrayDestroy();
    type metadata accessor for MXISceneBuilderConfiguration(0);
    sub_23ED93EE0();
    v55 = sub_23EDC1890();

    *&v56 = v16;
    *&v57 = v17;
    v6 = [v67 initWithType:v69 numberOfLayers:v68 depthRange:v55 options:{v56, v57}];

    v58 = sub_23ED93E78(&v72);
    v59 = *(v65 + v66);
    MEMORY[0x28223BE20](v58);
    sub_23EDC1DE0();
  }

  return v6;
}

unint64_t sub_23ED93EE0()
{
  result = qword_27E388508;
  if (!qword_27E388508)
  {
    type metadata accessor for MXISceneBuilderConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388508);
  }

  return result;
}

uint64_t sub_23ED93F38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x647261646E617473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6957736F746F6870;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000074656764;
    }

    else
    {
      v5 = 0x800000023EDC9E50;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7041736F746F6870;
    }

    else
    {
      v4 = 0x647261646E617473;
    }

    if (v3)
    {
      v5 = 0xE900000000000070;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0x6957736F746F6870;
  v8 = 0x800000023EDC9E50;
  if (a2 == 2)
  {
    v8 = 0xEC00000074656764;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x7041736F746F6870;
    v6 = 0xE900000000000070;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23EDC2240();
  }

  return v11 & 1;
}

uint64_t sub_23ED94094(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xEF73726579614C67;
  v4 = 0x800000023EDCAD20;
  v5 = 0xD000000000000010;
  if (a1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000023EDCACE0;
  }

  if (a1)
  {
    v3 = 0xEF73657373615067;
  }

  if (a1 <= 1u)
  {
    v6 = 0x6E696B61426D756ELL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  *&v13[0] = 0xD000000000000016;
  *(&v13[0] + 1) = 0x800000023EDCAD00;
  MEMORY[0x23EF237D0](v6, v7);

  v8 = sub_23EDC19A0();
  v9 = [v1 objectForKey_];

  if (v9)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED741A0(v13);
    v10 = sub_23EDC19A0();

    v11 = [v1 BOOLForKey_];
  }

  else
  {

    memset(v13, 0, sizeof(v13));
    sub_23ED741A0(v13);
    return 2;
  }

  return v11;
}

id sub_23ED94224(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xEF73726579614C67;
  v4 = 0x800000023EDCAD20;
  v5 = 0xD000000000000010;
  if (a1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000023EDCACE0;
  }

  if (a1)
  {
    v3 = 0xEF73657373615067;
  }

  if (a1 <= 1u)
  {
    v6 = 0x6E696B61426D756ELL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = v1;
  *&v14[0] = 0xD000000000000016;
  *(&v14[0] + 1) = 0x800000023EDCAD00;
  MEMORY[0x23EF237D0](v6, v7);

  v9 = sub_23EDC19A0();
  v10 = [v1 objectForKey_];

  if (v10)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
    sub_23ED741A0(v14);
    v11 = sub_23EDC19A0();

    v12 = [v8 integerForKey_];
  }

  else
  {

    memset(v14, 0, sizeof(v14));
    sub_23ED741A0(v14);
    return 0;
  }

  return v12;
}

AlchemistService::ALCConfigurationPreset_optional __swiftcall ALCConfigurationPreset.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23EDC2070();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ALCConfigurationPreset.rawValue.getter()
{
  v1 = 0x647261646E617473;
  v2 = 0x6957736F746F6870;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7041736F746F6870;
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

uint64_t sub_23ED944BC()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

uint64_t sub_23ED94590()
{
  *v0;
  *v0;
  *v0;
  sub_23EDC1A50();
}

uint64_t sub_23ED94650()
{
  v1 = *v0;
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

void sub_23ED9472C(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x647261646E617473;
  v4 = 0xEC00000074656764;
  v5 = 0x6957736F746F6870;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000023EDC9E50;
  }

  if (*v1)
  {
    v3 = 0x7041736F746F6870;
    v2 = 0xE900000000000070;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

__n128 ALCConfiguration.renderOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

__n128 ALCConfiguration.renderOptions.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

double ALCConfiguration.sorterOptions.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 40);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

double ALCConfiguration.sorterOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 48) = v2;
  return result;
}

uint64_t ALCConfiguration.bakingOptions.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 177);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v5;
  v12[4] = *(v1 + 120);
  v12[5] = v2;
  v12[0] = *(v1 + 56);
  v12[1] = v4;
  v6 = *(v1 + 136);
  v7 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 177);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v9;
  a1[4] = *(v1 + 120);
  a1[5] = v6;
  *a1 = *(v1 + 56);
  a1[1] = v8;
  return sub_23ED93EA8(v12, &v11);
}

__n128 ALCConfiguration.bakingOptions.setter(__int128 *a1)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v4;
  *(v13 + 9) = *(v1 + 177);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  sub_23ED93E78(v12);
  v7 = a1[4];
  *(v1 + 136) = a1[5];
  v8 = a1[7];
  *(v1 + 152) = a1[6];
  *(v1 + 168) = v8;
  *(v1 + 177) = *(a1 + 121);
  v9 = *a1;
  *(v1 + 72) = a1[1];
  result = a1[2];
  v11 = a1[3];
  *(v1 + 88) = result;
  *(v1 + 104) = v11;
  *(v1 + 120) = v7;
  *(v1 + 56) = v9;
  return result;
}

__n128 ALCConfiguration.init()@<Q0>(uint64_t a1@<X8>)
{
  *v34 = 0;
  *&v34[4] = 1;
  *&v34[12] = 0xCB1896803F000000;
  *&v34[20] = xmmword_23EDC60E0;
  sub_23ED937D4(&v34[40]);
  LODWORD(v38) = 1025758986;
  HIDWORD(v42) = 1036831949;
  v43 = 0;
  if (qword_27E388140 != -1)
  {
    swift_once();
  }

  if (qword_27E389728)
  {
    v2 = sub_23ED94224(0);
    if ((v3 & 1) == 0)
    {
      v4 = v2;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v5 = sub_23EDC1790();
      __swift_project_value_buffer(v5, qword_27E3897E8);
      v6 = sub_23EDC1770();
      v7 = sub_23EDC1D60();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&dword_23ED67000, v6, v7, "Setting number of baking layers from user defaults: %ld", v8, 0xCu);
        MEMORY[0x23EF24B30](v8, -1, -1);
      }

      *&v36 = v4;
    }

    v9 = sub_23ED94224(1u);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v12 = sub_23EDC1790();
      __swift_project_value_buffer(v12, qword_27E3897E8);
      v13 = sub_23EDC1770();
      v14 = sub_23EDC1D60();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = v11;
        _os_log_impl(&dword_23ED67000, v13, v14, "Setting number of baking passes from user defaults: %ld", v15, 0xCu);
        MEMORY[0x23EF24B30](v15, -1, -1);
      }

      *&v37 = v11;
    }

    v16 = sub_23ED94094(2u);
    if (v16 != 2)
    {
      v17 = v16;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v18 = sub_23EDC1790();
      __swift_project_value_buffer(v18, qword_27E3897E8);
      v19 = sub_23EDC1770();
      v20 = sub_23EDC1D60();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = v17;
        _os_log_impl(&dword_23ED67000, v19, v20, "Setting texture compression flag from user defaults: %{BOOL}d", v21, 8u);
        MEMORY[0x23EF24B30](v21, -1, -1);
      }

      BYTE12(v41) = v17;
    }

    v22 = sub_23ED94094(3u);
    if (v22 != 2)
    {
      v23 = v22;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v24 = sub_23EDC1790();
      __swift_project_value_buffer(v24, qword_27E3897E8);
      v25 = sub_23EDC1770();
      v26 = sub_23EDC1D60();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_23ED67000, v25, v26, "Setting separate opaque geometry flag from user defaults: %{BOOL}d", v27, 8u);
        MEMORY[0x23EF24B30](v27, -1, -1);
      }

      BYTE8(v42) = v23;
    }
  }

  v28 = v42;
  *(a1 + 160) = v41;
  *(a1 + 176) = v28;
  *(a1 + 192) = v43;
  v29 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v29;
  v30 = v40;
  *(a1 + 128) = v39;
  *(a1 + 144) = v30;
  v31 = *&v34[32];
  *(a1 + 32) = *&v34[16];
  *(a1 + 48) = v31;
  v32 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v32;
  result = *v34;
  *a1 = 0u;
  *(a1 + 16) = *v34;
  return result;
}

__n128 ALCConfiguration.init(for:)@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  ALCConfiguration.init()(v28);
  v24 = v28[0];
  v25 = v28[1];
  v26 = v28[2];
  v4 = v30;
  v27 = v29;
  v23 = v31;
  *v22 = *v32;
  v5 = v33;
  *&v22[7] = *&v32[7];
  v21 = v35;
  v6 = v36;
  v7 = v37;
  v19 = v39;
  v20 = v34;
  v8 = v38;
  v9 = v40;
  v17 = v41;
  v18 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  v13 = v46;
  v16 = v48;
  v15 = v47;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v13 = *MEMORY[0x277D25790];
      sub_23ED9513C(v28);
      v9 = 1;
      v23 = 1;
      v4 = 4;
      v5 = 16;
      v6 = 1025758986;
      v8 = 1024;
      v11 = 1;
    }

    else
    {
      v23 = 1;
      v13 = *MEMORY[0x277D25788];
      sub_23ED9513C(v28);
      v10 = 0;
      v4 = 4;
      v5 = 32;
      v6 = 1025758986;
      v7 = 1066192077;
    }
  }

  else if (v3)
  {
    v13 = *MEMORY[0x277D25788];
    sub_23ED9513C(v28);
    v11 = 1;
    v23 = 1;
    v4 = 4;
    v5 = 16;
    v6 = 1025758986;
    v8 = 2048;
    v9 = 1;
  }

  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v4;
  *(a2 + 64) = v23;
  *(a2 + 65) = *v22;
  *(a2 + 72) = *&v22[7];
  *(a2 + 80) = v5;
  *(a2 + 104) = v21;
  *(a2 + 88) = v20;
  *(a2 + 112) = v6;
  *(a2 + 116) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = v19;
  *(a2 + 144) = v9;
  result = v17;
  *(a2 + 152) = v17;
  *(a2 + 168) = v18;
  *(a2 + 172) = v10;
  *(a2 + 173) = v11;
  *(a2 + 174) = v12;
  *(a2 + 192) = v16;
  *(a2 + 176) = v13;
  *(a2 + 184) = v15;
  return result;
}

void *sub_23ED95098(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23ED9510C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_23ED95170()
{
  result = qword_27E388C78;
  if (!qword_27E388C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C78);
  }

  return result;
}

unint64_t sub_23ED951C8()
{
  result = qword_27E388C80;
  if (!qword_27E388C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E388C88, &qword_23EDC6190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388C80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ALCConfigurationPreset(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ALCConfigurationPreset(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23ED953C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 193))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23ED95408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ALCStereoHEICOutput.data.getter()
{
  v1 = *v0;
  sub_23ED922EC(*v0, *(v0 + 8));
  return v1;
}

AlchemistService::Error_optional __swiftcall Error.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23EDC2070();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Error.rawValue.getter()
{
  result = 0x6146796669746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      return result;
    case 0xA:
      result = 0x456E776F6E6B6E75;
      break;
    case 0xB:
      result = 0x7265746C69466963;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_23ED956C8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = Error.rawValue.getter();
  v4 = v3;
  if (v2 == Error.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23EDC2240();
  }

  return v7 & 1;
}

uint64_t sub_23ED95764()
{
  v1 = *v0;
  sub_23EDC22F0();
  Error.rawValue.getter();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

uint64_t sub_23ED957CC()
{
  v2 = *v0;
  Error.rawValue.getter();
  sub_23EDC1A50();
}

uint64_t sub_23ED95830()
{
  v1 = *v0;
  sub_23EDC22F0();
  Error.rawValue.getter();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

unint64_t sub_23ED958A0@<X0>(unint64_t *a1@<X8>)
{
  result = Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double ALCService.GenerationEvent.progressValue.getter()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    return dbl_23EDC6760[v1];
  }

  else
  {
    return fmin(v1 / (*(v0 + 8) + 0.0001), 0.99);
  }
}

uint64_t ALCService.GenerationOption.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 4;
        return MEMORY[0x23EF24060](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x23EF24060](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x23EF24060](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x23EF24060](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x23EF24060](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x23EF24060](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x23EF24060](3);

  return sub_23EDC1A50();
}

uint64_t ALCService.GenerationOption.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        goto LABEL_15;
      case 4:
        v3 = 5;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x23EF24060](v3);
        return sub_23EDC2320();
    }
  }

  MEMORY[0x23EF24060](3);
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23ED95ACC()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = 4;
        return MEMORY[0x23EF24060](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x23EF24060](v2);
      case 5:
        v2 = 6;
        return MEMORY[0x23EF24060](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x23EF24060](v2);
      case 1:
        v2 = 1;
        return MEMORY[0x23EF24060](v2);
      case 2:
        v2 = 2;
        return MEMORY[0x23EF24060](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x23EF24060](3);

  return sub_23EDC1A50();
}

uint64_t sub_23ED95B9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 4;
        goto LABEL_15;
      case 4:
        v3 = 5;
        goto LABEL_15;
      case 5:
        v3 = 6;
        goto LABEL_15;
    }
  }

  else
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_15;
      case 1:
        v3 = 1;
        goto LABEL_15;
      case 2:
        v3 = 2;
LABEL_15:
        MEMORY[0x23EF24060](v3);
        return sub_23EDC2320();
    }
  }

  MEMORY[0x23EF24060](3);
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23ED95C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 192);
  v30 = *(v1 + 176);
  v31 = v3;
  v4 = *(v1 + 96);
  v5 = *(v1 + 128);
  v26 = *(v1 + 112);
  v6 = v26;
  v27 = v5;
  v7 = *(v1 + 128);
  v8 = *(v1 + 160);
  v28 = *(v1 + 144);
  v9 = v28;
  v29 = v8;
  v10 = *(v1 + 32);
  v11 = *(v1 + 64);
  v22 = *(v1 + 48);
  v12 = v22;
  v23 = v11;
  v13 = *(v1 + 64);
  v14 = *(v1 + 96);
  v24 = *(v1 + 80);
  v15 = v24;
  v25 = v14;
  v16 = *(v1 + 32);
  v21[0] = *(v1 + 16);
  v17 = v21[0];
  v21[1] = v16;
  v18 = *(v1 + 192);
  *(a1 + 160) = v30;
  *(a1 + 176) = v18;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 128) = v9;
  *(a1 + 144) = v2;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v4;
  v32 = *(v1 + 208);
  *(a1 + 192) = *(v1 + 208);
  *a1 = v17;
  *(a1 + 16) = v10;
  return sub_23ED9D53C(v21, v20);
}

uint64_t ALCService.__allocating_init(mtlDevice:eventUpdateCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ALCService.init(mtlDevice:eventUpdateCallback:)(a1, a2, a3);
  return v6;
}

uint64_t ALCService.init(mtlDevice:eventUpdateCallback:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a1;
  *(v3 + 216) = xmmword_23EDC6280;
  _s18AnalyticsTelemetryCMa();
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = MEMORY[0x277D84F98];
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = v8;
  *(v7 + 48) = 1;
  *(v7 + 52) = 0;
  *(v7 + 56) = 1;
  *(v3 + 288) = v7;
  ALCConfiguration.init()(v59);
  v9 = v59[11];
  *(v3 + 176) = v59[10];
  *(v3 + 192) = v9;
  *(v3 + 208) = v60;
  v10 = v59[7];
  *(v3 + 112) = v59[6];
  *(v3 + 128) = v10;
  v11 = v59[9];
  *(v3 + 144) = v59[8];
  *(v3 + 160) = v11;
  v12 = v59[3];
  *(v3 + 48) = v59[2];
  *(v3 + 64) = v12;
  v13 = v59[5];
  *(v3 + 80) = v59[4];
  *(v3 + 96) = v13;
  v14 = v59[1];
  *(v3 + 16) = v59[0];
  *(v3 + 32) = v14;
  v15 = *(v3 + 232);
  v16 = *(v4 + 240);
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  sub_23ED9D598(a2);
  sub_23ED9D5A8(v15);
  v17 = objc_opt_self();
  v18 = [v17 processInfo];
  v19 = [v17 processInfo];

  v20 = [v17 processInfo];
  [v20 processIdentifier];

  v21 = [v18 processName];
  v22 = sub_23EDC19D0();
  v24 = v23;

  LODWORD(v21) = [v18 processIdentifier];
  *&v46 = v22;
  *(&v46 + 1) = v24;
  v25 = v61;
  LODWORD(v47) = v21;
  type metadata accessor for InferenceSession();
  swift_allocObject();
  *(v4 + 248) = InferenceSession.init(client:)(&v46);
  *(v4 + 256) = v25;
  v26 = [swift_unknownObjectRetain() newCommandQueue];
  if (v26)
  {
    *(v4 + 264) = v26;
    v27 = v26;
    v28 = objc_opt_self();
    swift_unknownObjectRetain();
    *(v4 + 272) = [v28 contextWithMTLCommandQueue_];
    v29 = [objc_allocWithZone(MEMORY[0x277D00878]) initWithDevice:*(v4 + 256) colorPixelFormat:81 depthPixelFormat:250];
    swift_unknownObjectRelease();
    sub_23ED9D5A8(a2);
    swift_unknownObjectRelease();
    *(v4 + 280) = v29;
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v30 = sub_23EDC1790();
    __swift_project_value_buffer(v30, qword_27E3897E8);
    v31 = sub_23EDC1770();
    v32 = sub_23EDC1D80();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23ED67000, v31, v32, "Failed to create Metal command queue.", v33, 2u);
      MEMORY[0x23EF24B30](v33, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    sub_23ED9D5A8(a2);
    swift_unknownObjectRelease();
    v35 = *(v4 + 192);
    v56 = *(v4 + 176);
    v57 = v35;
    v58 = *(v4 + 208);
    v36 = *(v4 + 128);
    v52 = *(v4 + 112);
    v53 = v36;
    v37 = *(v4 + 160);
    v54 = *(v4 + 144);
    v55 = v37;
    v38 = *(v4 + 64);
    v48 = *(v4 + 48);
    v49 = v38;
    v39 = *(v4 + 96);
    v50 = *(v4 + 80);
    v51 = v39;
    v40 = *(v4 + 32);
    v46 = *(v4 + 16);
    v47 = v40;
    sub_23ED9513C(&v46);
    v41 = *(v4 + 240);
    sub_23ED9D5A8(*(v4 + 232));
    v42 = *(v4 + 248);

    v43 = *(v4 + 256);
    swift_unknownObjectRelease();
    v44 = *(v4 + 288);

    type metadata accessor for ALCService();
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t ALCService.__allocating_init(mtlDevice:configuration:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ALCService.init(mtlDevice:configuration:eventHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ALCService.init(mtlDevice:configuration:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v5 + 216) = xmmword_23EDC6280;
  _s18AnalyticsTelemetryCMa();
  *(v5 + 232) = 0;
  *(v5 + 240) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  v11 = MEMORY[0x277D84F98];
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = v11;
  *(v10 + 48) = 1;
  *(v10 + 52) = 0;
  *(v10 + 56) = 1;
  *(v5 + 288) = v10;
  v12 = *(a2 + 176);
  *(v5 + 176) = *(a2 + 160);
  *(v5 + 192) = v12;
  *(v5 + 208) = *(a2 + 192);
  v13 = *(a2 + 112);
  *(v5 + 112) = *(a2 + 96);
  *(v5 + 128) = v13;
  v14 = *(a2 + 144);
  *(v5 + 144) = *(a2 + 128);
  *(v5 + 160) = v14;
  v15 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v15;
  v16 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v16;
  v17 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v17;
  if (a3)
  {
    v18 = qword_27E388190;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_23EDC1790();
    __swift_project_value_buffer(v19, qword_27E3897E8);
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23ED67000, v20, v21, "The return value of deprecated event handler is ignored. Please use EventUpdateCallback instead.", v22, 2u);
      MEMORY[0x23EF24B30](v22, -1, -1);
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v25 = *(v5 + 232);
    v24 = *(v5 + 240);
    *(v5 + 232) = sub_23ED9D614;
    *(v5 + 240) = v23;
    sub_23ED9D5A8(v25);
  }

  v67 = a4;
  v26 = objc_opt_self();
  v27 = [v26 processInfo];
  v28 = [v26 processInfo];

  v29 = [v26 processInfo];
  [v29 processIdentifier];

  v30 = [v27 processName];
  v31 = sub_23EDC19D0();
  v33 = v32;

  LODWORD(v30) = [v27 processIdentifier];
  *&v54 = v31;
  *(&v54 + 1) = v33;
  LODWORD(v55) = v30;
  type metadata accessor for InferenceSession();
  swift_allocObject();
  *(v5 + 248) = InferenceSession.init(client:)(&v54);
  *(v5 + 256) = a1;
  v34 = [swift_unknownObjectRetain() newCommandQueue];
  if (v34)
  {
    *(v5 + 264) = v34;
    v35 = v34;
    v36 = objc_opt_self();
    swift_unknownObjectRetain();
    *(v5 + 272) = [v36 contextWithMTLCommandQueue_];
    v37 = [objc_allocWithZone(MEMORY[0x277D00878]) initWithDevice:*(v5 + 256) colorPixelFormat:81 depthPixelFormat:250];
    swift_unknownObjectRelease();
    sub_23ED9D5A8(a3);
    swift_unknownObjectRelease();
    *(v5 + 280) = v37;
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v38 = sub_23EDC1790();
    __swift_project_value_buffer(v38, qword_27E3897E8);
    v39 = sub_23EDC1770();
    v40 = sub_23EDC1D80();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_23ED67000, v39, v40, "Failed to create Metal command queue.", v41, 2u);
      MEMORY[0x23EF24B30](v41, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    sub_23ED9D5A8(a3);
    swift_unknownObjectRelease();
    v43 = *(v5 + 192);
    v64 = *(v5 + 176);
    v65 = v43;
    v66 = *(v5 + 208);
    v44 = *(v5 + 128);
    v60 = *(v5 + 112);
    v61 = v44;
    v45 = *(v5 + 160);
    v62 = *(v5 + 144);
    v63 = v45;
    v46 = *(v5 + 64);
    v56 = *(v5 + 48);
    v57 = v46;
    v47 = *(v5 + 96);
    v58 = *(v5 + 80);
    v59 = v47;
    v48 = *(v5 + 32);
    v54 = *(v5 + 16);
    v55 = v48;
    sub_23ED9513C(&v54);
    v49 = *(v5 + 240);
    sub_23ED9D5A8(*(v5 + 232));
    v50 = *(v5 + 248);

    v51 = *(v5 + 256);
    swift_unknownObjectRelease();
    v52 = *(v5 + 288);

    type metadata accessor for ALCService();
    swift_deallocPartialClassInstance();
  }

  return v5;
}

uint64_t sub_23ED96704(uint64_t a1, uint64_t a2)
{
  v3[146] = v2;
  v3[145] = a2;
  v3[144] = a1;
  return MEMORY[0x2822009F8](sub_23ED9672C, 0, 0);
}

uint64_t sub_23ED9672C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x277CBFA08];
  *(inited + 32) = *MEMORY[0x277CBFA08];
  *(inited + 16) = xmmword_23EDC4860;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v5 = v4;
  sub_23ED7A0AC(inited);
  swift_setDeallocating();
  sub_23ED6FA68(inited + 32, &unk_27E388CA0, &qword_23EDC62D0);
  v6 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED9E5DC(&qword_27E388450, type metadata accessor for CIImageOption);
  v7 = sub_23EDC1890();

  v8 = [v6 initWithCVPixelBuffer:v2 options:v7];
  *(v0 + 1176) = v8;

  *(v0 + 16) = *(v1 + 16);
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 80);
  *(v0 + 64) = *(v1 + 64);
  *(v0 + 80) = v11;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  v12 = *(v1 + 96);
  v13 = *(v1 + 112);
  v14 = *(v1 + 144);
  *(v0 + 128) = *(v1 + 128);
  *(v0 + 144) = v14;
  *(v0 + 96) = v12;
  *(v0 + 112) = v13;
  v15 = *(v1 + 160);
  v16 = *(v1 + 176);
  v17 = *(v1 + 192);
  *(v0 + 208) = *(v1 + 208);
  *(v0 + 176) = v16;
  *(v0 + 192) = v17;
  *(v0 + 160) = v15;
  *(v0 + 216) = *(v1 + 16);
  v18 = *(v1 + 32);
  v19 = *(v1 + 48);
  v20 = *(v1 + 80);
  *(v0 + 264) = *(v1 + 64);
  *(v0 + 280) = v20;
  *(v0 + 248) = v19;
  *(v0 + 232) = v18;
  v21 = *(v1 + 96);
  v22 = *(v1 + 112);
  v23 = *(v1 + 144);
  *(v0 + 328) = *(v1 + 128);
  *(v0 + 344) = v23;
  *(v0 + 296) = v21;
  *(v0 + 312) = v22;
  v24 = *(v1 + 160);
  v25 = *(v1 + 176);
  v26 = *(v1 + 192);
  *(v0 + 408) = *(v1 + 208);
  *(v0 + 376) = v25;
  *(v0 + 392) = v26;
  *(v0 + 360) = v24;
  sub_23ED9D53C(v0 + 16, v0 + 416);
  v27 = swift_task_alloc();
  *(v0 + 1184) = v27;
  *v27 = v0;
  v27[1] = sub_23ED96994;
  v28 = *(v0 + 1168);
  v29 = *(v0 + 1160);

  return sub_23ED96CA0(v8, (v0 + 216), v29);
}

uint64_t sub_23ED96994(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *v2 + 216;
  *(v4 + 1128) = v2;
  *(v4 + 1136) = a1;
  *(v4 + 1144) = v1;
  v6 = *(v3 + 1184);
  v27 = *v2;
  *(v4 + 1192) = v1;

  if (v1)
  {
    *(v4 + 616) = *v5;
    v7 = *(v5 + 16);
    v8 = *(v5 + 32);
    v9 = *(v5 + 64);
    *(v4 + 664) = *(v5 + 48);
    *(v4 + 680) = v9;
    *(v4 + 632) = v7;
    *(v4 + 648) = v8;
    v10 = *(v5 + 80);
    v11 = *(v5 + 96);
    v12 = *(v5 + 128);
    *(v4 + 728) = *(v5 + 112);
    *(v4 + 744) = v12;
    *(v4 + 696) = v10;
    *(v4 + 712) = v11;
    v13 = *(v5 + 144);
    v14 = *(v5 + 160);
    v15 = *(v5 + 176);
    *(v4 + 808) = *(v5 + 192);
    *(v4 + 776) = v14;
    *(v4 + 792) = v15;
    *(v4 + 760) = v13;
    sub_23ED9513C(v4 + 616);
    v16 = sub_23ED96C3C;
  }

  else
  {
    *(v4 + 816) = *v5;
    v17 = *(v5 + 16);
    v18 = *(v5 + 32);
    v19 = *(v5 + 64);
    *(v4 + 864) = *(v5 + 48);
    *(v4 + 880) = v19;
    *(v4 + 832) = v17;
    *(v4 + 848) = v18;
    v20 = *(v5 + 80);
    v21 = *(v5 + 96);
    v22 = *(v5 + 128);
    *(v4 + 928) = *(v5 + 112);
    *(v4 + 944) = v22;
    *(v4 + 896) = v20;
    *(v4 + 912) = v21;
    v23 = *(v5 + 144);
    v24 = *(v5 + 160);
    v25 = *(v5 + 176);
    *(v4 + 1008) = *(v5 + 192);
    *(v4 + 976) = v24;
    *(v4 + 992) = v25;
    *(v4 + 960) = v23;
    sub_23ED9513C(v4 + 816);
    v16 = sub_23ED96B50;
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

uint64_t sub_23ED96B50()
{
  v10 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v1 + 232);
  if (v2)
  {
    v3 = *(v0 + 1176);
    v4 = *(v1 + 240);
    v8 = xmmword_23EDC4850;
    v9 = 1;
    *(v0 + 1088) = 0u;
    *(v0 + 1104) = 0u;
    *(v0 + 1120) = 0;

    v2(&v8, v0 + 1088);
    sub_23ED9D5A8(v2);

    sub_23ED6FA68(v0 + 1088, &qword_27E388CB0, &qword_23EDC62E0);
  }

  else
  {
  }

  v5 = *(v0 + 1136);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_23ED96C3C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 1192);

  return v1();
}

uint64_t sub_23ED96CA0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = a2[11];
  *(v4 + 328) = a2[10];
  *(v4 + 344) = v7;
  v8 = a2[4];
  *(v4 + 248) = a2[5];
  v9 = a2[7];
  *(v4 + 264) = a2[6];
  *(v4 + 280) = v9;
  v10 = a2[9];
  *(v4 + 296) = a2[8];
  *(v4 + 312) = v10;
  v11 = *a2;
  *(v4 + 184) = a2[1];
  v12 = a2[3];
  *(v4 + 200) = a2[2];
  *(v4 + 216) = v12;
  *(v4 + 232) = v8;
  *(v4 + 472) = v3;
  *(v4 + 360) = *(a2 + 192);
  *(v4 + 168) = v11;
  v13 = swift_task_alloc();
  *(v4 + 480) = v13;
  *v13 = v4;
  v13[1] = sub_23ED96D9C;

  return sub_23ED97174(v4 + 16, a1, v4 + 168, a3);
}

uint64_t sub_23ED96D9C()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_23ED96F98;
  }

  else
  {
    v3 = sub_23ED96EB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED96EB0()
{
  v10 = v0;
  v1 = *(v0 + 472);
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[30];
    v8 = xmmword_23EDC4850;
    v9 = 1;
    *(v0 + 408) = 0u;
    *(v0 + 424) = 0u;
    *(v0 + 440) = 0;

    v2(&v8, v0 + 408);
    sub_23ED9D5A8(v2);
    sub_23ED6FA68(v0 + 408, &qword_27E388CB0, &qword_23EDC62E0);
    v1 = *(v0 + 472);
  }

  v4 = *(v0 + 16);
  v5 = v1[36];
  sub_23EDA7AEC();
  v6 = *(v0 + 8);

  return v6(v4);
}

void sub_23ED96F98()
{
  v15 = v0;
  v1 = *(v0 + 472);
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[30];
    v13 = xmmword_23EDC6290;
    v14 = 1;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0;

    v2(&v13, v0 + 368);
    sub_23ED9D5A8(v2);
    sub_23ED6FA68(v0 + 368, &qword_27E388CB0, &qword_23EDC62E0);
    v1 = *(v0 + 472);
  }

  v4 = (v1[27] / v1[28]) * 100.0;
  if (COERCE_INT(fabs(v4)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 1.8447e19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v1[36];
  v6 = *(v0 + 488);
  if (v4 >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = v4;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_beginAccess();
  v9 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_23ED78970(v8, 0xD000000000000014, 0x800000023EDCAD40, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v13;
  swift_endAccess();
  swift_willThrow();
  sub_23EDA7AEC();
  v11 = *(v0 + 8);
  v12 = *(v0 + 488);

  v11();
}

uint64_t sub_23ED97174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 1560) = a4;
  *(v5 + 1568) = v6;
  *(v5 + 1552) = a2;
  *(v5 + 1544) = a1;
  *(v5 + 1576) = *v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740) - 8) + 64) + 15;
  *(v5 + 1584) = swift_task_alloc();
  v9 = sub_23EDC13D0();
  *(v5 + 1592) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1600) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 1608) = swift_task_alloc();
  *(v5 + 1616) = swift_task_alloc();
  v12 = type metadata accessor for InferenceRecipe();
  *(v5 + 1624) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 1632) = swift_task_alloc();
  v14 = sub_23EDC0EF0();
  *(v5 + 1640) = v14;
  v15 = *(v14 - 8);
  *(v5 + 1648) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 1656) = swift_task_alloc();
  *(v5 + 1664) = swift_task_alloc();
  v17 = type metadata accessor for InferenceSessionDefinition();
  *(v5 + 1672) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v5 + 1680) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D20, &qword_23EDC45D8) - 8) + 64) + 15;
  *(v5 + 1688) = swift_task_alloc();
  *(v5 + 1696) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D28, &unk_23EDC6750) - 8) + 64) + 15;
  *(v5 + 1704) = swift_task_alloc();
  v21 = sub_23EDC13F0();
  *(v5 + 1712) = v21;
  v22 = *(v21 - 8);
  *(v5 + 1720) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 1728) = swift_task_alloc();
  v24 = *(a3 + 72);
  *(v5 + 976) = *(a3 + 64);
  v25 = *(a3 + 48);
  *(v5 + 944) = *(a3 + 32);
  *(v5 + 960) = v25;
  v26 = *(a3 + 16);
  *(v5 + 912) = *a3;
  *(v5 + 928) = v26;
  *(v5 + 1736) = v24;
  *(v5 + 1448) = *(a3 + 80);
  *(v5 + 1464) = *(a3 + 96);
  *(v5 + 1944) = *(a3 + 104);
  v27 = *(a3 + 153);
  *(v5 + 856) = *(a3 + 137);
  *(v5 + 872) = v27;
  *(v5 + 888) = *(a3 + 169);
  *(v5 + 904) = *(a3 + 185);
  v28 = *(a3 + 121);
  *(v5 + 824) = *(a3 + 105);
  *(v5 + 840) = v28;

  return MEMORY[0x2822009F8](sub_23ED974BC, 0, 0);
}

uint64_t sub_23ED974BC()
{
  v118 = v0;
  v1 = *(v0 + 1560);
  *(v0 + 1744) = *(*(v0 + 1568) + 288);
  v2 = xmmword_23EDC62A0;
  if (v1)
  {
    if (*(v1 + 16))
    {
      v3 = sub_23ED9C9D0(0, 5);
      v2 = xmmword_23EDC62A0;
      if (v4)
      {
        sub_23ED71DA8(*(v1 + 56) + 32 * v3, v0 + 1368);
        if (swift_dynamicCast())
        {
          v2 = *(v0 + 1520);
        }

        else
        {
          v2 = xmmword_23EDC62A0;
        }
      }
    }
  }

  v5 = *(v0 + 1576);
  v6 = *(v0 + 1552);
  v116 = v2;
  sub_23EDA7EE4(&v116);
  sub_23ED9E5BC(v116, *(&v116 + 1));
  static ALCService.isSupported(image:)(v6, &v116);
  v7 = v116;
  if (v116)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v8 = sub_23EDC1790();
    __swift_project_value_buffer(v8, qword_27E3897E8);
    v9 = sub_23EDC1770();
    v10 = sub_23EDC1D80();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v116 = v12;
      *v11 = 136315138;
      v13 = "ge dimension is too large";
      if (v7 != 2)
      {
        v13 = "multiLayerRenderer";
      }

      if (v7 == 1)
      {
        v14 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xD000000000000029;
      }

      if (v7 == 1)
      {
        v15 = "ge dimension is too small";
      }

      else
      {
        v15 = v13;
      }

      v16 = sub_23ED713FC(v14, v15 | 0x8000000000000000, &v116);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_23ED67000, v9, v10, "Input image is not supported. Reason: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x23EF24B30](v12, -1, -1);
      MEMORY[0x23EF24B30](v11, -1, -1);
    }

    sub_23ED721D8();
    swift_allocError();
    *v17 = 5;
    swift_willThrow();
    v38 = *(v0 + 1728);
    v39 = *(v0 + 1704);
    v40 = *(v0 + 1696);
    v41 = *(v0 + 1688);
    v42 = *(v0 + 1680);
    v43 = *(v0 + 1664);
    v44 = *(v0 + 1656);
    v45 = *(v0 + 1632);
    v46 = *(v0 + 1616);
    v47 = *(v0 + 1608);
    v115 = *(v0 + 1584);

    v48 = *(v0 + 8);

    return v48();
  }

  v18 = *(v0 + 1568);
  *(v18 + 216) = xmmword_23EDC6280;
  v19 = *(v18 + 232);
  if (v19)
  {
    v20 = *(v18 + 240);
    v116 = 0uLL;
    v117 = 1;
    *(v0 + 1072) = 0u;
    *(v0 + 1088) = 0u;
    *(v0 + 1104) = 0;

    v19(&v116, v0 + 1072);
    sub_23ED9D5A8(v19);
    sub_23ED6FA68(v0 + 1072, &qword_27E388CB0, &qword_23EDC62E0);
  }

  if (qword_27E3881B8 != -1)
  {
    swift_once();
  }

  v21 = qword_27E389878;
  *(v0 + 1752) = qword_27E389878;
  v22 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  *(v0 + 1760) = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v23 = *(v21 + v22);
  v24 = swift_task_alloc();
  *(v24 + 16) = "generateMXI";
  *(v24 + 24) = 11;
  *(v24 + 32) = 2;
  *(v24 + 40) = v21;
  sub_23EDC1DE0();

  *(v0 + 1144) = 0;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 0u;
  v28 = *(v18 + 216);
  v29 = __CFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_74;
  }

  *(v18 + 216) = v30;
  v31 = *(v18 + 232);
  if (v31)
  {
    v32 = *(v18 + 240);
    v33 = *(v18 + 224);
    *&v116 = v30;
    *(&v116 + 1) = v33;
    v117 = 0;

    v31(&v116, v0 + 1112);
    sub_23ED9D5A8(v31);
  }

  sub_23ED6FA68(v0 + 1112, &qword_27E388CB0, &qword_23EDC62E0);
  v34 = *(v0 + 1552);
  v35 = sub_23ED71E08(1.0);
  *(v0 + 1768) = v35;
  v36 = *(v0 + 1568);
  sub_23ED9BF10(v35, 0);
  *(v0 + 1776) = v37;
  v50 = v37;
  v51 = *(v0 + 1736);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
  v52 = swift_allocObject();
  v53 = *MEMORY[0x277CBFA08];
  *(v52 + 32) = *MEMORY[0x277CBFA08];
  *(v52 + 16) = xmmword_23EDC4860;
  *(v52 + 64) = MEMORY[0x277D839B0];
  *(v52 + 40) = 1;
  v54 = v50;
  v55 = v53;
  sub_23ED7A0AC(v52);
  swift_setDeallocating();
  sub_23ED6FA68(v52 + 32, &unk_27E388CA0, &qword_23EDC62D0);
  swift_deallocClassInstance();
  v56 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED9E5DC(&qword_27E388450, type metadata accessor for CIImageOption);
  v57 = sub_23EDC1890();

  v58 = [v56 initWithCVPixelBuffer:v54 options:v57];
  *(v0 + 1784) = v58;

  if (*(v0 + 1944) != 1 || v51)
  {
    *(v0 + 1816) = 0;
    v61 = *(v0 + 1568);
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0u;
    *(v0 + 1184) = 0;
    v62 = *(v61 + 216);
    v29 = __CFADD__(v62, 1);
    v63 = v62 + 1;
    if (!v29)
    {
      *(v61 + 216) = v63;
      v64 = *(v61 + 232);
      if (v64)
      {
        v65 = *(v0 + 1568);
        v54 = *(v65 + 240);
        v66 = *(v65 + 224);
        *&v116 = v63;
        *(&v116 + 1) = v66;
        v117 = 0;

        v64(&v116, v0 + 1152);
        sub_23ED9D5A8(v64);
      }

      sub_23ED6FA68(v0 + 1152, &qword_27E388CB0, &qword_23EDC62E0);
      ColorSpace = CVImageBufferGetColorSpace(*(v0 + 1776));
      if (ColorSpace)
      {
        v54 = ColorSpace;
        v68 = sub_23EDC1DA0();
      }

      else
      {
        v68 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
        v69 = v68;
        if (v68)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      v69 = v68;

LABEL_45:
      *(v0 + 1824) = v69;
      v70 = *(v0 + 1744);
      [*(v0 + 1784) extent];
      *(v70 + 32) = v71;
      *(v70 + 40) = v72;
      *(v70 + 48) = 0;
      v73 = CGColorSpaceCopyName(v69);
      if (!v73)
      {
        sub_23ED7BB24(0, &unk_27E388CD0, 0x277CCACA8);
        v73 = sub_23EDC1E20();
      }

      v74 = *(v0 + 1744);
      v75 = *(v0 + 1568);
      swift_beginAccess();
      v76 = v73;
      v77 = *(v74 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v116 = *(v74 + 24);
      *(v74 + 24) = 0x8000000000000000;
      sub_23ED78970(v76, 0x6C6F437465737341, 0xEF6563617053726FLL, isUniquelyReferenced_nonNull_native);
      *(v74 + 24) = v116;
      swift_endAccess();

      v79 = *(v75 + 256);
      v80 = type metadata accessor for ServiceOutputDelegate();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      swift_unknownObjectRetain();
      v83 = v69;
      *(v0 + 1832) = sub_23EDB6050(v79, v83);

      v25 = swift_unknownObjectRelease();
      *(v0 + 1224) = 0;
      *(v0 + 1192) = 0u;
      *(v0 + 1208) = 0u;
      v84 = *(v75 + 216);
      v29 = __CFADD__(v84, 1);
      v85 = v84 + 1;
      if (!v29)
      {
        v86 = *(v0 + 1568);
        *(v86 + 216) = v85;
        v87 = *(v86 + 232);
        if (v87)
        {
          v88 = *(v0 + 1568);
          v89 = *(v88 + 240);
          v90 = *(v88 + 224);
          *&v116 = v85;
          *(&v116 + 1) = v90;
          v117 = 0;

          v87(&v116, v0 + 1192);
          sub_23ED9D5A8(v87);
        }

        sub_23ED6FA68(v0 + 1192, &qword_27E388CB0, &qword_23EDC62E0);
        v91 = *(v0 + 1560);
        if (v91)
        {
          v92 = -1.0;
          if (*(v91 + 16))
          {
            v93 = sub_23ED9C9D0(0, 0);
            if (v94)
            {
              sub_23ED71DA8(*(v91 + 56) + 32 * v93, v0 + 1336);
              v95 = swift_dynamicCast();
              v96 = *(v0 + 148);
              if (v95)
              {
                v92 = *(v0 + 148);
              }

              else
              {
                v92 = -1.0;
              }
            }
          }

          if (*(v91 + 16))
          {
            v97 = sub_23ED9C9D0(0, 1);
            if (v98)
            {
              v99 = *(v0 + 1720);
              v100 = *(v0 + 1712);
              v101 = *(v0 + 1704);
              sub_23ED71DA8(*(v91 + 56) + 32 * v97, v0 + 1272);
              v102 = swift_dynamicCast();
              (*(v99 + 56))(v101, v102 ^ 1u, 1, v100);
              if ((*(v99 + 48))(v101, 1, v100) != 1)
              {
                (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1704), *(v0 + 1712));
LABEL_65:
                v107 = *(v91 + 16);
                if (!v107)
                {
                  goto LABEL_70;
                }

                v108 = sub_23ED9C9D0(0, 2);
                if (v109)
                {
                  sub_23ED71DA8(*(v91 + 56) + 32 * v108, v0 + 1304);
                  if (swift_dynamicCast())
                  {
                    LOBYTE(v107) = *(v0 + 345);
                    goto LABEL_70;
                  }
                }

LABEL_69:
                LOBYTE(v107) = 0;
LABEL_70:
                *(v0 + 346) = v107;
                *(v0 + 348) = v92;
                v110 = *(v0 + 1696);
                v111 = *(v0 + 1648);
                v112 = *(v0 + 1640);
                v113 = *(*(v0 + 1568) + 248);
                *(v0 + 1840) = sub_23ED9E5DC(&unk_27E388D30, type metadata accessor for ServiceOutputDelegate);
                (*(v111 + 56))(v110, 1, 1, v112);
                v114 = *(v113 + 16);
                *(v0 + 1848) = v114;

                v25 = sub_23ED98A98;
                v26 = v114;
                v27 = 0;

                return MEMORY[0x2822009F8](v25, v26, v27);
              }

LABEL_62:
              v103 = *(v0 + 1728);
              v104 = *(v0 + 1720);
              v105 = *(v0 + 1712);
              v106 = *(v0 + 1704);
              sub_23EDC13E0();
              if ((*(v104 + 48))(v106, 1, v105) != 1)
              {
                sub_23ED6FA68(*(v0 + 1704), &qword_27E388D28, &unk_23EDC6750);
              }

              v91 = *(v0 + 1560);
              if (!v91)
              {
                goto LABEL_69;
              }

              goto LABEL_65;
            }
          }
        }

        else
        {
          v92 = -1.0;
        }

        (*(*(v0 + 1720) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1712));
        goto LABEL_62;
      }

LABEL_75:
      __break(1u);
      return MEMORY[0x2822009F8](v25, v26, v27);
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v59 = swift_task_alloc();
  *(v0 + 1792) = v59;
  *v59 = v0;
  v59[1] = sub_23ED9824C;
  v60 = *(v0 + 1568);

  return sub_23EDA21E4(v58);
}

uint64_t sub_23ED9824C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1792);
  v6 = *v2;
  *(*v2 + 1800) = v1;

  if (v1)
  {
    v7 = sub_23ED9A628;
  }

  else
  {
    *(v4 + 1808) = a1;
    v7 = sub_23ED98374;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23ED98374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = v4;
  v5 = *(v4 + 1800);
  *(v4 + 1816) = *(v4 + 1808);
  v6 = *(v4 + 1568);
  *(v4 + 1152) = 0u;
  *(v4 + 1168) = 0u;
  *(v4 + 1184) = 0;
  v7 = *(v6 + 216);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_41;
  }

  *(v6 + 216) = v9;
  v10 = *(v6 + 232);
  if (v10)
  {
    v11 = *(v4 + 1568);
    v3 = *(v11 + 240);
    v12 = *(v11 + 224);
    v83 = v9;
    v84 = v12;
    v85 = 0;

    v10(&v83, v4 + 1152);
    sub_23ED9D5A8(v10);
  }

  sub_23ED6FA68(v4 + 1152, &qword_27E388CB0, &qword_23EDC62E0);
  ColorSpace = CVImageBufferGetColorSpace(*(v4 + 1776));
  if (!ColorSpace)
  {
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    v36 = v14;
    if (v14)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    v36 = v14;

LABEL_12:
    *(v4 + 1824) = v36;
    v37 = *(v4 + 1744);
    [*(v4 + 1784) extent];
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    *(v37 + 48) = 0;
    v40 = CGColorSpaceCopyName(v36);
    if (!v40)
    {
      sub_23ED7BB24(0, &unk_27E388CD0, 0x277CCACA8);
      v40 = sub_23EDC1E20();
    }

    v41 = *(v4 + 1744);
    v42 = *(v4 + 1568);
    swift_beginAccess();
    v43 = v40;
    v44 = *(v41 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v41 + 24);
    *(v41 + 24) = 0x8000000000000000;
    sub_23ED78970(v43, 0x6C6F437465737341, 0xEF6563617053726FLL, isUniquelyReferenced_nonNull_native);
    *(v41 + 24) = v83;
    swift_endAccess();

    v46 = *(v42 + 256);
    v47 = type metadata accessor for ServiceOutputDelegate();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v50 = v36;
    *(v4 + 1832) = sub_23EDB6050(v46, v50);

    a1 = swift_unknownObjectRelease();
    *(v4 + 1224) = 0;
    *(v4 + 1192) = 0u;
    *(v4 + 1208) = 0u;
    v51 = *(v42 + 216);
    v8 = __CFADD__(v51, 1);
    v52 = v51 + 1;
    if (!v8)
    {
      v53 = *(v4 + 1568);
      *(v53 + 216) = v52;
      v54 = *(v53 + 232);
      if (v54)
      {
        v55 = *(v4 + 1568);
        v56 = *(v55 + 240);
        v57 = *(v55 + 224);
        v83 = v52;
        v84 = v57;
        v85 = 0;

        v54(&v83, v4 + 1192);
        sub_23ED9D5A8(v54);
      }

      sub_23ED6FA68(v4 + 1192, &qword_27E388CB0, &qword_23EDC62E0);
      v58 = *(v4 + 1560);
      if (v58)
      {
        v59 = -1.0;
        if (*(v58 + 16))
        {
          v60 = sub_23ED9C9D0(0, 0);
          if (v61)
          {
            sub_23ED71DA8(*(v58 + 56) + 32 * v60, v4 + 1336);
            v62 = swift_dynamicCast();
            v63 = *(v4 + 148);
            if (v62)
            {
              v59 = *(v4 + 148);
            }

            else
            {
              v59 = -1.0;
            }
          }
        }

        if (*(v58 + 16))
        {
          v64 = sub_23ED9C9D0(0, 1);
          if (v65)
          {
            v66 = *(v4 + 1720);
            v67 = *(v4 + 1712);
            v68 = *(v4 + 1704);
            sub_23ED71DA8(*(v58 + 56) + 32 * v64, v4 + 1272);
            v69 = swift_dynamicCast();
            (*(v66 + 56))(v68, v69 ^ 1u, 1, v67);
            if ((*(v66 + 48))(v68, 1, v67) != 1)
            {
              (*(*(v4 + 1720) + 32))(*(v4 + 1728), *(v4 + 1704), *(v4 + 1712));
LABEL_32:
              v74 = *(v58 + 16);
              if (!v74)
              {
                goto LABEL_37;
              }

              v75 = sub_23ED9C9D0(0, 2);
              if (v76)
              {
                sub_23ED71DA8(*(v58 + 56) + 32 * v75, v4 + 1304);
                if (swift_dynamicCast())
                {
                  LOBYTE(v74) = *(v4 + 345);
                  goto LABEL_37;
                }
              }

LABEL_36:
              LOBYTE(v74) = 0;
LABEL_37:
              *(v4 + 346) = v74;
              *(v4 + 348) = v59;
              v77 = *(v4 + 1696);
              v78 = *(v4 + 1648);
              v79 = *(v4 + 1640);
              v80 = *(*(v4 + 1568) + 248);
              *(v4 + 1840) = sub_23ED9E5DC(&unk_27E388D30, type metadata accessor for ServiceOutputDelegate);
              (*(v78 + 56))(v77, 1, 1, v79);
              v81 = *(v80 + 16);
              *(v4 + 1848) = v81;

              a1 = sub_23ED98A98;
              a2 = v81;
              a3 = 0;

              return MEMORY[0x2822009F8](a1, a2, a3);
            }

LABEL_29:
            v70 = *(v4 + 1728);
            v71 = *(v4 + 1720);
            v72 = *(v4 + 1712);
            v73 = *(v4 + 1704);
            sub_23EDC13E0();
            if ((*(v71 + 48))(v73, 1, v72) != 1)
            {
              sub_23ED6FA68(*(v4 + 1704), &qword_27E388D28, &unk_23EDC6750);
            }

            v58 = *(v4 + 1560);
            if (!v58)
            {
              goto LABEL_36;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        v59 = -1.0;
      }

      (*(*(v4 + 1720) + 56))(*(v4 + 1704), 1, 1, *(v4 + 1712));
      goto LABEL_29;
    }

LABEL_41:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v3 = ColorSpace;
  v14 = sub_23EDC1DA0();
  if (!v5)
  {
    goto LABEL_11;
  }

  v15 = *(v4 + 1784);
  v16 = *(v4 + 1776);
  v17 = *(v4 + 1768);
  v18 = *(v4 + 1760);
  v19 = *(v4 + 1752);
  v20 = *(v4 + 1568);
  swift_unknownObjectRelease();

  v21 = *(v19 + v18);
  v22 = swift_task_alloc();
  *(v22 + 16) = "generateMXI";
  *(v22 + 24) = 11;
  *(v22 + 32) = 2;
  *(v22 + 40) = v19;
  *(v22 + 48) = sub_23ED9E624;
  *(v22 + 56) = v20;

  sub_23EDC1DE0();
  v23 = *(v4 + 1568);

  v24 = *(v4 + 1728);
  v25 = *(v4 + 1704);
  v26 = *(v4 + 1696);
  v27 = *(v4 + 1688);
  v28 = *(v4 + 1680);
  v29 = *(v4 + 1664);
  v30 = *(v4 + 1656);
  v31 = *(v4 + 1632);
  v32 = *(v4 + 1616);
  v33 = *(v4 + 1608);
  v82 = *(v4 + 1584);

  v34 = *(v4 + 8);

  return v34();
}

uint64_t sub_23ED98A98()
{
  sub_23ED71264(*(v0 + 1848) + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session, *(v0 + 1680));

  return MEMORY[0x2822009F8](sub_23ED98B10, 0, 0);
}

uint64_t sub_23ED98B10()
{
  v1 = *(v0 + 1688);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1640);
  sub_23ED6FA00(*(v0 + 1696), v1, &qword_27E388D20, &qword_23EDC45D8);
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = *(v0 + 1688);
  if (v5 == 1)
  {
    v7 = *(v0 + 1640);
    v8 = *(v0 + 1664);
    sub_23EDC0EE0();
    if (v4(v6, 1, v7) != 1)
    {
      sub_23ED6FA68(*(v0 + 1688), &qword_27E388D20, &qword_23EDC45D8);
    }
  }

  else
  {
    (*(*(v0 + 1648) + 32))(*(v0 + 1664), *(v0 + 1688), *(v0 + 1640));
  }

  if (*(v0 + 346) == 1)
  {
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1640);
    (*(v10 + 16))(v9, *(v0 + 1664), v11);
    v12 = type metadata accessor for InProcessInferenceOperation(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    (*(v10 + 32))(v15 + OBJC_IVAR____TtC16AlchemistService27InProcessInferenceOperation_id, v9, v11);
    *(v0 + 1056) = v12;
    *(v0 + 1064) = sub_23ED9E5DC(&qword_27E3885A8, type metadata accessor for InProcessInferenceOperation);
    *(v0 + 1032) = v15;
LABEL_9:
    v25 = *(v0 + 348);
    v26 = *(v0 + 1776);
    v27 = *(v0 + 1680);
    v28 = *(v0 + 1672);
    v29 = *(v0 + 1632);
    (*(*(v0 + 1720) + 16))(v29 + *(*(v0 + 1624) + 24), *(v0 + 1728), *(v0 + 1712));
    Width = CVPixelBufferGetWidth(v26);
    Height = CVPixelBufferGetHeight(v26);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v26);
    type metadata accessor for PixelBufferArchive.HiddenBufferData();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23EDC45C0;
    *v29 = Width;
    *(v29 + 8) = Height;
    *(v29 + 16) = PixelFormatType;
    *(v29 + 24) = v26;
    *(v29 + 32) = v33;
    *(v29 + 40) = v25;
    v34 = *(v0 + 1056);
    v35 = *(v0 + 1064);
    __swift_project_boxed_opaque_existential_1((v0 + 1032), v34);
    v36 = (v27 + *(v28 + 20));
    v37 = *v36;
    v38 = v36[1];
    LODWORD(v36) = *(v36 + 4);
    *(v0 + 1496) = v37;
    *(v0 + 1504) = v38;
    *(v0 + 1512) = v36;
    v39 = *(v35 + 32);
    v40 = v26;

    v77 = (v39 + *v39);
    v41 = v39[1];
    v42 = swift_task_alloc();
    *(v0 + 1856) = v42;
    *v42 = v0;
    v42[1] = sub_23ED991EC;
    v43 = *(v0 + 1840);
    v44 = *(v0 + 1832);
    v45 = *(v0 + 1632);

    return v77(v45, v0 + 1496, v44, v43, v34, v35);
  }

  v16 = *(v0 + 1680);
  v17 = *(v16 + *(*(v0 + 1672) + 24));
  if (v17)
  {
    v18 = *(v0 + 1656);
    v19 = *(v0 + 1648);
    v20 = *(v0 + 1640);
    (*(v19 + 16))(v18, *(v0 + 1664), v20);
    v21 = type metadata accessor for ModelManagerInferenceOperation(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    (*(v19 + 32))(v24 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_id, v18, v20);
    *(v24 + OBJC_IVAR____TtC16AlchemistService30ModelManagerInferenceOperation_modelManagerInterface) = v17;
    *(v0 + 1056) = v21;
    *(v0 + 1064) = sub_23ED9E5DC(&qword_27E388D40, type metadata accessor for ModelManagerInferenceOperation);
    *(v0 + 1032) = v24;

    goto LABEL_9;
  }

  v47 = *(v0 + 1832);
  v48 = *(v0 + 1696);
  v49 = *(v0 + 1664);
  v50 = *(v0 + 1648);
  v51 = *(v0 + 1640);
  sub_23ED71A8C();
  swift_allocError();
  *v52 = 1;
  swift_willThrow();

  (*(v50 + 8))(v49, v51);
  sub_23ED71AE0(v16, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v48, &qword_27E388D20, &qword_23EDC45D8);
  v53 = *(v0 + 1832);
  v54 = *(v0 + 1824);
  v55 = *(v0 + 1776);
  v56 = *(v0 + 1768);
  v76 = *(v0 + 1816);
  v78 = *(v0 + 1760);
  v57 = *(v0 + 1752);
  v58 = *(v0 + 1728);
  v59 = *(v0 + 1720);
  v60 = *(v0 + 1712);
  v61 = *(v0 + 1568);

  swift_unknownObjectRelease();
  (*(v59 + 8))(v58, v60);
  v62 = *(v57 + v78);
  v63 = swift_task_alloc();
  *(v63 + 16) = "generateMXI";
  *(v63 + 24) = 11;
  *(v63 + 32) = 2;
  *(v63 + 40) = v57;
  *(v63 + 48) = sub_23ED9E624;
  *(v63 + 56) = v61;

  sub_23EDC1DE0();
  v64 = *(v0 + 1568);

  v65 = *(v0 + 1728);
  v66 = *(v0 + 1704);
  v67 = *(v0 + 1696);
  v68 = *(v0 + 1688);
  v69 = *(v0 + 1680);
  v70 = *(v0 + 1664);
  v71 = *(v0 + 1656);
  v72 = *(v0 + 1632);
  v73 = *(v0 + 1616);
  v74 = *(v0 + 1608);
  v79 = *(v0 + 1584);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_23ED991EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1856);
  v7 = *v1;
  *(*v1 + 1864) = v0;

  v4 = *(v2 + 1504);

  if (v0)
  {
    v5 = sub_23ED995C8;
  }

  else
  {
    v5 = sub_23ED99310;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23ED99310()
{
  v1 = v0[229];
  v2 = v0[212];
  v3 = v0[210];
  v4 = v0[208];
  v5 = v0[206];
  v6 = v0[205];
  v7 = v0[204];

  sub_23ED71AE0(v7, type metadata accessor for InferenceRecipe);
  (*(v5 + 8))(v4, v6);
  sub_23ED71AE0(v3, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v2, &qword_27E388D20, &qword_23EDC45D8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 129);

  return MEMORY[0x2822009F8](sub_23ED9941C, v1, 0);
}

uint64_t sub_23ED9941C()
{
  v1 = v0[229];
  v2 = *(v1 + 120);
  v0[234] = v2;
  v3 = *(v1 + 128);
  v0[235] = v3;
  v4 = v3;
  v5 = v2;

  return MEMORY[0x2822009F8](sub_23ED9949C, 0, 0);
}

uint64_t sub_23ED9949C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 1880);
  if (v6)
  {
    v7 = &protocol witness table for ALCMonocularDepthOutput;
    v8 = &type metadata for ALCMonocularDepthOutput;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v3 + 1240) = 0u;
  }

  v9 = *(v3 + 1568);
  *(v3 + 1232) = v6;
  *(v3 + 1256) = v8;
  *(v3 + 1264) = v7;
  v10 = *(v9 + 216);
  v11 = v10 + 1;
  if (v10 == -1)
  {
    __break(1u);
  }

  else
  {
    v24 = v4 | 0x1000000000000000;
    v25 = v5;
    v23 = v3;
    *(v9 + 216) = v11;
    v12 = *(v9 + 232);
    v13 = *(v3 + 1880);
    if (v12)
    {
      v14 = *(v3 + 1568);
      v15 = *(v14 + 240);
      v16 = *(v14 + 224);
      v21[0] = v11;
      v21[1] = v16;
      v22 = 0;
      v17 = v13;
      sub_23ED9D598(v12);
      v12(v21, v3 + 1232);
      sub_23ED9D5A8(v12);
    }

    else
    {
      v18 = v13;
    }

    v19 = *(v3 + 1832);
    sub_23ED6FA68(v3 + 1232, &qword_27E388CB0, &qword_23EDC62E0);
    a1 = sub_23ED99864;
    a2 = v19;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23ED995C8()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1680);
  v4 = *(v0 + 1664);
  v5 = *(v0 + 1648);
  v6 = *(v0 + 1640);
  v7 = *(v0 + 1632);

  sub_23ED71AE0(v7, type metadata accessor for InferenceRecipe);
  (*(v5 + 8))(v4, v6);
  sub_23ED71AE0(v3, type metadata accessor for InferenceSessionDefinition);
  sub_23ED6FA68(v2, &qword_27E388D20, &qword_23EDC45D8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 1032));
  v8 = *(v0 + 1832);
  v9 = *(v0 + 1824);
  v32 = *(v0 + 1816);
  v10 = *(v0 + 1776);
  v11 = *(v0 + 1768);
  v33 = *(v0 + 1760);
  v35 = *(v0 + 1864);
  v12 = *(v0 + 1752);
  v13 = *(v0 + 1728);
  v14 = *(v0 + 1720);
  v15 = *(v0 + 1712);
  v16 = *(v0 + 1568);

  swift_unknownObjectRelease();
  (*(v14 + 8))(v13, v15);
  v17 = *(v12 + v33);
  v18 = swift_task_alloc();
  *(v18 + 16) = "generateMXI";
  *(v18 + 24) = 11;
  *(v18 + 32) = 2;
  *(v18 + 40) = v12;
  *(v18 + 48) = sub_23ED9E624;
  *(v18 + 56) = v16;

  sub_23EDC1DE0();
  v19 = *(v0 + 1568);

  v20 = *(v0 + 1728);
  v21 = *(v0 + 1704);
  v22 = *(v0 + 1696);
  v23 = *(v0 + 1688);
  v24 = *(v0 + 1680);
  v25 = *(v0 + 1664);
  v26 = *(v0 + 1656);
  v27 = *(v0 + 1632);
  v28 = *(v0 + 1616);
  v29 = *(v0 + 1608);
  v34 = *(v0 + 1584);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23ED99864()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1584);
  v3 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  swift_beginAccess();
  sub_23ED6FA00(v1 + v3, v2, &qword_27E388D18, &unk_23EDC6740);

  return MEMORY[0x2822009F8](sub_23ED99910, 0, 0);
}

uint64_t sub_23ED99910()
{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_23ED6FA68(v3, &qword_27E388D18, &unk_23EDC6740);
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v4 = sub_23EDC1790();
    __swift_project_value_buffer(v4, qword_27E3897E8);
    v5 = sub_23EDC1770();
    v6 = sub_23EDC1D80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23ED67000, v5, v6, "User terminated generation at the end of the inference phase.", v7, 2u);
      MEMORY[0x23EF24B30](v7, -1, -1);
    }

    v8 = *(v0 + 1880);
    v9 = *(v0 + 1872);
    v92 = *(v0 + 1832);
    v94 = *(v0 + 1824);
    v10 = *(v0 + 1784);
    v11 = *(v0 + 1768);
    v105 = *(v0 + 1816);
    v109 = *(v0 + 1760);
    v12 = *(v0 + 1752);
    v103 = *(v0 + 1728);
    v13 = *(v0 + 1720);
    v97 = *(v0 + 1776);
    v100 = *(v0 + 1712);
    v14 = *(v0 + 1568);

    sub_23ED721D8();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v13 + 8))(v103, v100);
    v16 = *(v12 + v109);
    v17 = swift_task_alloc();
    *(v17 + 16) = "generateMXI";
    *(v17 + 24) = 11;
    *(v17 + 32) = 2;
    *(v17 + 40) = v12;
    *(v17 + 48) = sub_23ED9E624;
    *(v17 + 56) = v14;

    goto LABEL_10;
  }

  v18 = *(v0 + 1872);
  v110 = v18;
  v113 = *(v0 + 1864);
  v19 = *(v0 + 1784);
  v20 = *(v0 + 1744);
  v106 = *(v0 + 1736);
  (*(v1 + 32))(*(v0 + 1616), v3, v2);
  sub_23EDA8078();
  [v19 extent];
  v22 = v21;
  v24 = v23;
  sub_23EDC1340();
  v26 = v25;
  v27 = *(v0 + 960);
  *(v0 + 520) = *(v0 + 944);
  *(v0 + 536) = v27;
  *(v0 + 552) = *(v0 + 976);
  v28 = *(v0 + 928);
  *(v0 + 488) = *(v0 + 912);
  *(v0 + 504) = v28;
  *(v0 + 560) = v106;
  *(v0 + 568) = *(v0 + 1448);
  *(v0 + 584) = *(v0 + 1464);
  *(v0 + 592) = *(v0 + 1944);
  v29 = *(v0 + 872);
  *(v0 + 625) = *(v0 + 856);
  *(v0 + 641) = v29;
  *(v0 + 657) = *(v0 + 888);
  *(v0 + 673) = *(v0 + 904);
  v30 = *(v0 + 840);
  *(v0 + 593) = *(v0 + 824);
  *(v0 + 609) = v30;
  sub_23EDA68AC(v110, v0 + 488, v0 + 352, v22, v24, v26);
  if (v113)
  {
    v31 = *(v0 + 1872);
    v32 = *(v0 + 1832);
    v33 = *(v0 + 1824);
    v93 = *(v0 + 1816);
    v95 = *(v0 + 1880);
    v34 = *(v0 + 1776);
    v35 = *(v0 + 1768);
    v104 = *(v0 + 1752);
    v107 = *(v0 + 1760);
    v36 = *(v0 + 1720);
    v98 = *(v0 + 1712);
    v101 = *(v0 + 1728);
    v37 = *(v0 + 1616);
    v38 = *(v0 + 1600);
    v39 = *(v0 + 1592);
    v111 = *(v0 + 1568);

    swift_unknownObjectRelease();
    (*(v38 + 8))(v37, v39);
    (*(v36 + 8))(v101, v98);
    v40 = *(v104 + v107);
    v41 = swift_task_alloc();
    *(v41 + 16) = "generateMXI";
    *(v41 + 24) = 11;
    *(v41 + 32) = 2;
    *(v41 + 40) = v104;
    *(v41 + 48) = sub_23ED9E624;
    *(v41 + 56) = v111;

LABEL_10:
    sub_23EDC1DE0();
    v60 = *(v0 + 1568);

    v61 = *(v0 + 1728);
    v62 = *(v0 + 1704);
    v63 = *(v0 + 1696);
    v64 = *(v0 + 1688);
    v65 = *(v0 + 1680);
    v66 = *(v0 + 1664);
    v67 = *(v0 + 1656);
    v68 = *(v0 + 1632);
    v69 = *(v0 + 1616);
    v70 = *(v0 + 1608);
    v112 = *(v0 + 1584);

    v71 = *(v0 + 8);

    return v71();
  }

  v42 = *(v0 + 1784);
  v43 = *(v0 + 1616);
  v44 = *(v0 + 1608);
  v45 = *(v0 + 1600);
  v46 = *(v0 + 1592);
  v47 = *(v0 + 464);
  *(v0 + 784) = *(v0 + 448);
  *(v0 + 800) = v47;
  *(v0 + 816) = *(v0 + 480);
  v48 = *(v0 + 400);
  *(v0 + 720) = *(v0 + 384);
  *(v0 + 736) = v48;
  v49 = *(v0 + 432);
  *(v0 + 752) = *(v0 + 416);
  *(v0 + 768) = v49;
  v50 = *(v0 + 368);
  *(v0 + 688) = *(v0 + 352);
  *(v0 + 704) = v50;
  [v42 extent];
  v52 = v51;
  v54 = v53;
  sub_23EDC1340();
  v56 = v55;
  v57.f64[0] = v52;
  sub_23EDB4BF0(v0 + 16, v57, v54, v56, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  (*(v45 + 16))(v44, v43, v46);
  sub_23EDA89EC();
  *(v0 + 1888) = v59;
  v73 = v58;
  v74 = v59;
  v108 = *(v0 + 1880);
  v96 = *(v0 + 1736);
  v75 = *(v0 + 1608);
  v76 = *(v0 + 1600);
  v77 = *(v0 + 1592);
  v102 = sub_23EDC1360();
  v79 = v78;
  *(v0 + 1896) = v78;
  v99 = sub_23EDC1350();
  v81 = v80;
  *(v0 + 1904) = v80;
  v82 = *(v76 + 8);
  *(v0 + 1912) = v82;
  *(v0 + 1920) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82(v75, v77);
  v83 = *(v0 + 912);
  *(v0 + 168) = *(v0 + 928);
  v84 = *(v0 + 960);
  *(v0 + 184) = *(v0 + 944);
  *(v0 + 200) = v84;
  v85 = *(v0 + 976);
  *(v0 + 152) = v83;
  *(v0 + 216) = v85;
  *(v0 + 224) = v96;
  *(v0 + 232) = *(v0 + 1448);
  *(v0 + 248) = *(v0 + 1464);
  *(v0 + 256) = *(v0 + 1944);
  v86 = *(v0 + 840);
  *(v0 + 257) = *(v0 + 824);
  *(v0 + 273) = v86;
  *(v0 + 337) = *(v0 + 904);
  v87 = *(v0 + 888);
  *(v0 + 305) = *(v0 + 872);
  *(v0 + 321) = v87;
  *(v0 + 289) = *(v0 + 856);
  *(v0 + 1536) = v108;
  *(v0 + 984) = v73;
  *(v0 + 992) = v74;
  *(v0 + 1000) = v102;
  *(v0 + 1008) = v79;
  *(v0 + 1016) = v99;
  *(v0 + 1024) = v81;
  v88 = swift_task_alloc();
  *(v0 + 1928) = v88;
  *v88 = v0;
  v88[1] = sub_23ED9A1F8;
  v89 = *(v0 + 1872);
  v90 = *(v0 + 1816);
  v91 = *(v0 + 1568);

  return sub_23EDA2B64(v89, v0 + 352, v0 + 152, v0 + 16, v90, (v0 + 1536), v0 + 984);
}

uint64_t sub_23ED9A1F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[184] = v2;
  v4[185] = a1;
  v4[186] = v1;
  v5 = v3[241];
  v11 = *v2;
  v4[242] = v1;

  if (v1)
  {
    v6 = sub_23ED9A7E4;
  }

  else
  {
    v7 = v4[238];
    v8 = v4[237];
    v9 = v4[236];

    v6 = sub_23ED9A340;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23ED9A340()
{
  v39 = *(v0 + 1936);
  v33 = *(v0 + 1912);
  v35 = *(v0 + 1920);
  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1784);
  v27 = *(v0 + 1776);
  v28 = *(v0 + 1816);
  v6 = *(v0 + 1768);
  v7 = *(v0 + 1752);
  v30 = *(v0 + 1728);
  v31 = *(v0 + 1760);
  v8 = *(v0 + 1720);
  v29 = *(v0 + 1712);
  v9 = *(v0 + 1616);
  v26 = *(v0 + 1592);
  v37 = *(v0 + 1568);
  sub_23EDC1340();
  v11 = v10;

  swift_unknownObjectRelease();
  v33(v9, v26);
  (*(v8 + 8))(v30, v29);
  v12 = *(v7 + v31);
  v13 = swift_task_alloc();
  *(v13 + 16) = "generateMXI";
  *(v13 + 24) = 11;
  *(v13 + 32) = 2;
  *(v13 + 40) = v7;
  *(v13 + 48) = sub_23ED9E624;
  *(v13 + 56) = v37;

  sub_23EDC1DE0();
  if (v39)
  {
  }

  v14 = *(v0 + 1480);
  v15 = *(v0 + 1728);
  v16 = *(v0 + 1704);
  v17 = *(v0 + 1696);
  v18 = *(v0 + 1688);
  v19 = *(v0 + 1680);
  v20 = *(v0 + 1664);
  v32 = *(v0 + 1656);
  v34 = *(v0 + 1632);
  v36 = *(v0 + 1616);
  v38 = *(v0 + 1608);
  v40 = *(v0 + 1584);
  v21 = *(v0 + 1568);
  v22 = *(v0 + 1544);

  *&v41[8] = *(v0 + 688);
  *&v41[72] = *(v0 + 752);
  *&v41[56] = *(v0 + 736);
  *&v41[40] = *(v0 + 720);
  *&v41[24] = *(v0 + 704);
  v23 = *(v0 + 816);
  *&v41[120] = *(v0 + 800);
  *&v41[104] = *(v0 + 784);
  *&v41[88] = *(v0 + 768);
  *(v22 + 8) = *v41;
  *(v22 + 72) = *&v41[64];
  *(v22 + 56) = *&v41[48];
  *&v41[136] = v23;
  *(v22 + 40) = *&v41[32];
  *(v22 + 24) = *&v41[16];
  *(v22 + 132) = *&v41[124];
  *(v22 + 120) = *&v41[112];
  *(v22 + 104) = *&v41[96];
  *v22 = v14;
  *(v22 + 88) = *&v41[80];
  *(v22 + 148) = v11;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23ED9A628()
{
  v1 = *(v0 + 1784);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1752);
  v5 = *(v0 + 1568);

  v6 = *(v4 + v3);
  v7 = swift_task_alloc();
  *(v7 + 16) = "generateMXI";
  *(v7 + 24) = 11;
  *(v7 + 32) = 2;
  *(v7 + 40) = v4;
  *(v7 + 48) = sub_23ED9E624;
  *(v7 + 56) = v5;

  sub_23EDC1DE0();
  v8 = *(v0 + 1568);

  v9 = *(v0 + 1728);
  v10 = *(v0 + 1704);
  v11 = *(v0 + 1696);
  v12 = *(v0 + 1688);
  v13 = *(v0 + 1680);
  v14 = *(v0 + 1664);
  v15 = *(v0 + 1656);
  v16 = *(v0 + 1632);
  v17 = *(v0 + 1616);
  v18 = *(v0 + 1608);
  v21 = *(v0 + 1584);
  v22 = *(v0 + 1800);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_23ED9A7E4()
{
  v27 = *(v0 + 1912);
  v28 = *(v0 + 1920);
  v33 = *(v0 + 1904);
  v34 = *(v0 + 1880);
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1832);
  v3 = *(v0 + 1824);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1776);
  v6 = *(v0 + 1768);
  v31 = *(v0 + 1896);
  v32 = *(v0 + 1760);
  v29 = *(v0 + 1888);
  v30 = *(v0 + 1752);
  v7 = *(v0 + 1720);
  v25 = *(v0 + 1712);
  v26 = *(v0 + 1728);
  v8 = *(v0 + 1616);
  v9 = *(v0 + 1592);
  v36 = *(v0 + 1568);

  swift_unknownObjectRelease();
  v27(v8, v9);
  (*(v7 + 8))(v26, v25);

  v10 = *(v30 + v32);
  v11 = swift_task_alloc();
  *(v11 + 16) = "generateMXI";
  *(v11 + 24) = 11;
  *(v11 + 32) = 2;
  *(v11 + 40) = v30;
  *(v11 + 48) = sub_23ED9E624;
  *(v11 + 56) = v36;

  sub_23EDC1DE0();
  v12 = *(v0 + 1568);

  v13 = *(v0 + 1728);
  v14 = *(v0 + 1704);
  v15 = *(v0 + 1696);
  v16 = *(v0 + 1688);
  v17 = *(v0 + 1680);
  v18 = *(v0 + 1664);
  v19 = *(v0 + 1656);
  v20 = *(v0 + 1632);
  v21 = *(v0 + 1616);
  v22 = *(v0 + 1608);
  v35 = *(v0 + 1584);
  v37 = *(v0 + 1936);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_23ED9AA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[127] = v6;
  v7[126] = a6;
  v7[125] = a5;
  v7[124] = a4;
  v7[123] = a3;
  v7[122] = a2;
  v7[121] = a1;
  v8 = sub_23EDC16A0();
  v7[128] = v8;
  v9 = *(v8 - 8);
  v7[129] = v9;
  v10 = *(v9 + 64) + 15;
  v7[130] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CB8, &unk_23EDC62F8);
  v7[131] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[132] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED9AB6C, 0, 0);
}

uint64_t sub_23ED9AB6C()
{
  v1 = *(v0 + 984);
  if (v1)
  {
    v2 = *(v0 + 984);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CBEAC0]) init];
    v1 = 0;
  }

  *(v0 + 1064) = v2;
  v3 = *(v0 + 1000);
  v4 = v1;
  sub_23ED74010(v2);
  *(v0 + 168) = *v3;
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v7 = *(v3 + 32);
  *(v0 + 184) = *(v3 + 16);
  *(v0 + 232) = v6;
  *(v0 + 216) = v5;
  *(v0 + 200) = v7;
  v8 = *(v3 + 112);
  v9 = *(v3 + 128);
  v10 = *(v3 + 96);
  *(v0 + 248) = *(v3 + 80);
  *(v0 + 280) = v8;
  *(v0 + 296) = v9;
  *(v0 + 264) = v10;
  v12 = *(v3 + 160);
  v11 = *(v3 + 176);
  v13 = *(v3 + 144);
  *(v0 + 360) = *(v3 + 192);
  *(v0 + 328) = v12;
  *(v0 + 344) = v11;
  *(v0 + 312) = v13;
  v14 = swift_task_alloc();
  *(v0 + 1072) = v14;
  *v14 = v0;
  v14[1] = sub_23ED9ACAC;
  v15 = *(v0 + 1016);
  v16 = *(v0 + 1008);
  v17 = *(v0 + 976);

  return sub_23ED97174(v0 + 16, v17, v0 + 168, v16);
}

uint64_t sub_23ED9ACAC()
{
  v2 = *(*v1 + 1072);
  v5 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_23ED9BAB4;
  }

  else
  {
    v3 = sub_23ED9ADC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23ED9ADC0()
{
  v69 = v1;
  v6 = 0x278C70000;
  [*(v1 + 976) extent];
  Width = CGRectGetWidth(v71);
  v10 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(Width) = 1;
  if (v10 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LODWORD(Width) = 0;
  if (v10 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [*(v1 + 976) extent];
  Width = CGRectGetHeight(v72);
  v11 = Width;
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  LODWORD(Width) = 1;
  if (v11 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(Width) = 0;
  if (v11 < 9.22337204e18)
  {
    v5 = [*(v1 + 976) colorSpace];
    v4 = &unk_27E389000;
    if (!v5)
    {
      if (qword_27E388188 != -1)
      {
        swift_once();
      }

      v5 = qword_27E3897E0;
    }

    v12 = MEMORY[0x23EF241E0](v5);
    v13 = *(v1 + 1016);
    v14 = *(v1 + 976);
    if (v12)
    {
      v15 = *(v13 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CE0, qword_23EDC6310);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_23EDC4860;
      v17 = *MEMORY[0x277CBF930];
      *(v16 + 32) = *MEMORY[0x277CBF930];
      type metadata accessor for CGColorSpace(0);
      *(v16 + 64) = v18;
      *(v16 + 40) = v5;
      v19 = v17;
      v68 = v5;
      sub_23ED7A940(v16);
      swift_setDeallocating();
      sub_23ED6FA68(v16 + 32, &qword_27E388690, &qword_23EDC4C80);
      swift_deallocClassInstance();
      type metadata accessor for CIContextOption(0);
      sub_23ED9E5DC(&qword_27E388440, type metadata accessor for CIContextOption);
      v20 = sub_23EDC1890();

      v21 = [objc_opt_self() contextWithMTLDevice:v15 options:v20];

      [v14 extent];
      v22 = [v21 createCGImage:v14 fromRect:?];

      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v29 = *(v13 + 272);
      [*(v1 + 976) extent];
      if (qword_27E388180 != -1)
      {
        swift_once();
      }

      if (qword_27E388188 != -1)
      {
        swift_once();
      }

      v68 = qword_27E3897E0;
      v22 = [v29 createCGImage:*(v1 + 976) fromRect:? format:? colorSpace:?];
      if (v22)
      {
LABEL_13:
        v3 = v10;
        v2 = v11;
        v6 = (v1 + 368);
        v0 = *(v1 + 1008);
        image = v22;
        if (v0)
        {
          v23 = v22;
          v24 = *(v0 + 16);
          v25 = v68;
          v26 = v23;
          if (v24)
          {
            v27 = sub_23ED9C9D0(0, 4);
            if (v28)
            {
              sub_23ED71DA8(*(v0 + 56) + 32 * v27, v1 + 840);
              if (swift_dynamicCast())
              {
                v8 = *(v1 + 960);
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
          v32 = v68;
          v33 = v22;
        }

        if (v2 <= v3)
        {
          v8 = v10;
        }

        else
        {
          v8 = v11;
        }

LABEL_28:
        LODWORD(Width) = *(v1 + 164);
        v7 = *(v1 + 16);
        v34 = *(v1 + 144);
        *(v1 + 464) = *(v1 + 128);
        *(v1 + 480) = v34;
        *(v1 + 496) = *(v1 + 160);
        v35 = *(v1 + 80);
        *(v1 + 400) = *(v1 + 64);
        *(v1 + 416) = v35;
        v36 = *(v1 + 112);
        *(v1 + 432) = *(v1 + 96);
        *(v1 + 448) = v36;
        v37 = *(v1 + 48);
        *v6 = *(v1 + 32);
        *(v1 + 384) = v37;
        if (qword_27E388188 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_48;
      }
    }

    v30 = *(v1 + 1016);
    sub_23ED7E62C();
    swift_allocError();
    *v31 = 0xD000000000000022;
    *(v31 + 8) = 0x800000023EDCAD60;
    *(v31 + 16) = 3;
    swift_willThrow();

    goto LABEL_39;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v61 = v7;
  v62 = v8;
  v63 = LODWORD(Width);
  swift_once();
  v7 = v61;
  LODWORD(Width) = v63;
  v8 = v62;
LABEL_29:
  v38 = *(v1 + 1080);
  v39 = *(v1 + 1016);
  sub_23EDA3C08(v7, v6, v3, v2, v8, v4[252], *(v1 + 1056), *&Width);
  if (v38)
  {
    v30 = *(v1 + 1016);
  }

  else
  {
    if (v0)
    {
      v40 = *(v1 + 1008);
      if (*(v40 + 16))
      {
        v41 = sub_23ED9C9D0(0, 3);
        if (v42)
        {
          sub_23ED71DA8(*(v40 + 56) + 32 * v41, v1 + 872);
          if (swift_dynamicCast())
          {
            v43 = *(v1 + 928);
            v44 = *(v1 + 936);
          }
        }
      }
    }

    v45 = *(v1 + 1056);
    v46 = *(v1 + 1040);
    v47 = *(v1 + 1032);
    v48 = *(v1 + 1024);
    v66 = *v45;
    v64 = *(*(v1 + 1048) + 32);
    v65 = v45[1];
    v49 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
    sub_23EDC1690();
    sub_23EDC1670();
    (*(v47 + 8))(v46, v48);
    v50 = sub_23EDC19A0();

    v51 = CGImageDestinationCreateWithData(v49, v50, 3uLL, 0);

    if (v51)
    {
      v52 = *(v1 + 1064);
      type metadata accessor for CFString(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886A8, &qword_23EDC4EA0);
      sub_23ED9E5DC(&qword_27E388360, type metadata accessor for CFString);
      sub_23EDC18A0();
      result = 0;
      __break(1u);
      return result;
    }

    v54 = *(v1 + 1056);
    v30 = *(v1 + 1016);
    sub_23ED721D8();
    swift_allocError();
    *v55 = 7;
    swift_willThrow();

    sub_23ED6FA68(v54, &qword_27E388CB8, &unk_23EDC62F8);
  }

LABEL_39:
  sub_23ED9D658(v1 + 16);
  v56 = *(v30 + 288);
  v57 = *(v1 + 1064);
  v58 = *(v1 + 1056);
  v59 = *(v1 + 1040);
  sub_23EDA7AEC();

  v60 = *(v1 + 8);

  return v60();
}

void sub_23ED9BAB4()
{
  v18 = v0;
  v1 = *(v0 + 1016);
  v2 = v1[29];
  if (v2)
  {
    v3 = v1[30];
    v16 = xmmword_23EDC6290;
    v17 = 1;
    *(v0 + 760) = 0u;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0;

    v2(&v16, v0 + 760);
    sub_23ED9D5A8(v2);
    sub_23ED6FA68(v0 + 760, &qword_27E388CB0, &qword_23EDC62E0);
    v1 = *(v0 + 1016);
  }

  v4 = (v1[27] / v1[28]) * 100.0;
  if (COERCE_INT(fabs(v4)) > 2139095039)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 1.8447e19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = v1[36];
  v6 = *(v0 + 1080);
  if (v4 >= 0x64)
  {
    v7 = 100;
  }

  else
  {
    v7 = v4;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  swift_beginAccess();
  v9 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v16 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_23ED78970(v8, 0xD000000000000014, 0x800000023EDCAD40, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v16;
  swift_endAccess();
  swift_willThrow();
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  v14 = *(v0 + 1040);
  sub_23EDA7AEC();

  v15 = *(v0 + 8);

  v15();
}

uint64_t sub_23ED9BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  v11 = *(a4 + 176);
  *(v9 + 176) = *(a4 + 160);
  *(v9 + 192) = v11;
  *(v9 + 208) = *(a4 + 192);
  v12 = *(a4 + 112);
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = v12;
  v13 = *(a4 + 144);
  *(v9 + 144) = *(a4 + 128);
  *(v9 + 160) = v13;
  v14 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v14;
  v15 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v15;
  v16 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v16;
  v17 = swift_task_alloc();
  *(v9 + 216) = v17;
  *v17 = v9;
  v17[1] = sub_23ED9BDC4;

  return sub_23ED9AA58(a1, a2, a3, 0, v9 + 16, a5);
}

uint64_t sub_23ED9BDC4()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  *(v3 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23ED9BEF8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

void sub_23ED9BF10(void *a1, char a2)
{
  v5 = v2;
  v52[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23ED72294();
  if ((v8 & 0x100000000) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = [a1 pixelBuffer];
  if (v10)
  {
    if ((a2 & 1) == 0 || v9 == 1)
    {
      goto LABEL_42;
    }
  }

  if (a2)
  {
    v11 = [a1 imageByApplyingCGOrientation_];
  }

  else
  {
    v11 = a1;
  }

  v12 = v11;
  [v11 extent];
  Width = CGRectGetWidth(v53);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v12 extent];
  Height = CGRectGetHeight(v54);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v15 = sub_23EDC1420();
  if (v3)
  {

LABEL_42:
    v48 = *MEMORY[0x277D85DE8];
    return;
  }

  buffer = v15;
  v16 = [a1 colorSpace];
  if (v16)
  {
    v17 = v16;
    if (sub_23ED9E250(v16))
    {
      goto LABEL_32;
    }

    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v18 = sub_23EDC1790();
    __swift_project_value_buffer(v18, qword_27E3897E8);
    v19 = v17;
    v20 = sub_23EDC1770();
    v21 = sub_23EDC1D90();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = CGColorSpaceCopyName(v19);
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_23ED67000, v20, v21, "Input colorspace %@ is not natively supported, will be converted to sRGB.", v22, 0xCu);
      sub_23ED6FA68(v23, &unk_27E388D00, &unk_23EDC6730);
      MEMORY[0x23EF24B30](v23, -1, -1);
      MEMORY[0x23EF24B30](v22, -1, -1);
    }

    v25 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (v25)
    {
      v17 = v25;

      goto LABEL_32;
    }
  }

  else
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v26 = sub_23EDC1790();
    __swift_project_value_buffer(v26, qword_27E3897E8);
    v27 = sub_23EDC1770();
    v28 = sub_23EDC1D90();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23ED67000, v27, v28, "Input does not specify colorspace, will be regarded as sRGB.", v29, 2u);
      MEMORY[0x23EF24B30](v29, -1, -1);
    }

    v17 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (v17)
    {
LABEL_32:
      v30 = *MEMORY[0x277CC4B78];
      v9 = v17;
      CVBufferSetAttachment(buffer, v30, v9, kCVAttachmentMode_ShouldPropagate);
      v31 = [objc_allocWithZone(MEMORY[0x277CBF778]) initWithPixelBuffer_];
      [v31 setColorSpace_];

      v32 = v5[34];
      [v12 extent];
      v52[0] = 0;
      v33 = [v32 startTaskToRender:v12 fromRect:v31 toDestination:v52 atPoint:? error:?];
      v34 = v52[0];
      if (v33)
      {
        v5 = v33;
        v52[0] = 0;
        v35 = v34;
        v36 = [v5 waitUntilCompletedAndReturnError_];
        if (v36)
        {
          v4 = v36;
          v50 = v31;
          v37 = qword_27E388190;
          v38 = v52[0];
          if (v37 == -1)
          {
LABEL_35:
            v39 = sub_23EDC1790();
            __swift_project_value_buffer(v39, qword_27E3897E8);
            v40 = v4;
            v41 = sub_23EDC1770();
            v42 = sub_23EDC1D70();

            if (os_log_type_enabled(v41, v42))
            {
              log = v41;
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              *v43 = 138412290;
              *(v43 + 4) = v40;
              *v44 = v4;
              v45 = v40;
              _os_log_impl(&dword_23ED67000, log, v42, "Input CIImage to CVPixelBuffer conversion completed with info: %@", v43, 0xCu);
              sub_23ED6FA68(v44, &unk_27E388D00, &unk_23EDC6730);
              MEMORY[0x23EF24B30](v44, -1, -1);
              MEMORY[0x23EF24B30](v43, -1, -1);
            }

            else
            {
            }

            goto LABEL_42;
          }

LABEL_49:
          swift_once();
          goto LABEL_35;
        }

        v47 = v52[0];
        sub_23EDC0E30();

        swift_willThrow();
      }

      else
      {
        v46 = v52[0];
        sub_23EDC0E30();

        swift_willThrow();
      }

      goto LABEL_42;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t ALCService.deinit()
{
  v1 = *(v0 + 192);
  v13[10] = *(v0 + 176);
  v13[11] = v1;
  v14 = *(v0 + 208);
  v2 = *(v0 + 128);
  v13[6] = *(v0 + 112);
  v13[7] = v2;
  v3 = *(v0 + 160);
  v13[8] = *(v0 + 144);
  v13[9] = v3;
  v4 = *(v0 + 64);
  v13[2] = *(v0 + 48);
  v13[3] = v4;
  v5 = *(v0 + 96);
  v13[4] = *(v0 + 80);
  v13[5] = v5;
  v6 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v13[1] = v6;
  sub_23ED9513C(v13);
  v7 = *(v0 + 240);
  sub_23ED9D5A8(*(v0 + 232));
  v8 = *(v0 + 248);

  v9 = *(v0 + 256);
  swift_unknownObjectRelease();
  v10 = *(v0 + 264);
  swift_unknownObjectRelease();

  v11 = *(v0 + 288);

  return v0;
}

uint64_t ALCService.__deallocating_deinit()
{
  ALCService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23ED9C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 288);
  sub_23EDC23B0();
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v9 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + 24);
  *(v6 + 24) = 0x8000000000000000;
  sub_23ED78970(v8, 0xD000000000000013, 0x800000023EDCAEC0, isUniquelyReferenced_nonNull_native);
  *(v6 + 24) = v12;
  return swift_endAccess();
}

void sub_23ED9C744(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_23ED9C7E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23EDC1FC0();
  v5 = sub_23EDC18C0();

  return sub_23ED9CAD4(a1, v5);
}

unint64_t sub_23ED9C844(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23EDC22E0();

  return sub_23ED9CC6C(a1, v4);
}

unint64_t sub_23ED9C888(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23EDC22F0();
  type metadata accessor for CFString(0);
  sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString);
  sub_23EDC14B0();
  v4 = sub_23EDC2320();

  return sub_23ED9CCD8(a1, v4);
}

unint64_t sub_23ED9C940(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23EDC19D0();
  sub_23EDC22F0();
  sub_23EDC1A50();
  v4 = sub_23EDC2320();

  return sub_23ED9D078(a1, v4);
}

unint64_t sub_23ED9C9D0(uint64_t a1, int64_t a2)
{
  v5 = *(v2 + 40);
  sub_23EDC22F0();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v6 = 4;
        goto LABEL_15;
      case 4:
        v6 = 5;
        goto LABEL_15;
      case 5:
        v6 = 6;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x23EF24060](3);
    sub_23EDC1A50();
    goto LABEL_16;
  }

  if (!a2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  MEMORY[0x23EF24060](v6);
LABEL_16:
  v7 = sub_23EDC2320();

  return sub_23ED9CDE4(a1, a2, v7);
}

unint64_t sub_23ED9CAD4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_23EDC1FC0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_23EDC1920();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23ED9CC6C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23ED9CCD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23EDC14A0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23ED9CDE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (a2 == 3)
          {
            v17 = *v9;
            v18 = 3;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 3;
          goto LABEL_24;
        case 4:
          if (a2 == 4)
          {
            v17 = *v9;
            v18 = 4;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 4;
          goto LABEL_24;
        case 5:
          if (a2 == 5)
          {
            v17 = *v9;
            v18 = 5;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          if (!a2)
          {
            v17 = *v9;
            v18 = 0;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 0;
          goto LABEL_24;
        case 1:
          if (a2 == 1)
          {
            v17 = *v9;
            v18 = 1;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 1;
          goto LABEL_24;
        case 2:
          if (a2 == 2)
          {
            v17 = *v9;
            v18 = 2;
            goto LABEL_41;
          }

          sub_23ED9E594(a1, a2);
          v12 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      sub_23ED9E594(a1, a2);
      sub_23ED9E594(v10, v11);
      v12 = v11;
LABEL_24:
      sub_23ED9E5A8(v10, v12);
      sub_23ED9E5A8(a1, a2);
      goto LABEL_25;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = sub_23EDC2240();
    sub_23ED9E594(a1, a2);
    sub_23ED9E594(v10, v11);
    sub_23ED9E5A8(v10, v11);
    sub_23ED9E5A8(a1, a2);
    if (v16)
    {
      return v5;
    }

LABEL_25:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_23ED9E594(a1, a2);
  sub_23ED9E594(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_41:
  sub_23ED9E5A8(v17, v18);
  sub_23ED9E5A8(a1, a2);
  return v5;
}

unint64_t sub_23ED9D078(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23EDC19D0();
      v9 = v8;
      if (v7 == sub_23EDC19D0() && v9 == v10)
      {
        break;
      }

      v12 = sub_23EDC2240();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23ED9D17C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EF23C50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23EDC1FE0();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23ED9D2A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CFString(0);
  sub_23ED9E5DC(&qword_27E388D10, type metadata accessor for CFString);
  return sub_23EDC14A0() & 1;
}

uint64_t _s16AlchemistService10ALCServiceC16GenerationOptionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        if (v5 == 3)
        {
          sub_23ED9E5A8(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 4:
        if (v5 == 4)
        {
          sub_23ED9E5A8(*a1, 4uLL);
          v6 = v4;
          v7 = 4;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 5:
        if (v5 == 5)
        {
          sub_23ED9E5A8(*a1, 5uLL);
          v6 = v4;
          v7 = 5;
          goto LABEL_24;
        }

LABEL_25:
        sub_23ED9E594(*a2, *(a2 + 8));
        sub_23ED9E594(v2, v3);
        sub_23ED9E5A8(v2, v3);
        sub_23ED9E5A8(v4, v5);
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_23ED9E5A8(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_24;
        }

        goto LABEL_25;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_23ED9E5A8(*a1, 1uLL);
          sub_23ED9E5A8(v4, 1uLL);
          return v8;
        }

        goto LABEL_25;
      case 2:
        if (v5 == 2)
        {
          sub_23ED9E5A8(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
LABEL_24:
          sub_23ED9E5A8(v6, v7);
          return 1;
        }

        goto LABEL_25;
    }
  }

  if (v5 < 6)
  {
    goto LABEL_25;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_23ED9E594(*a1, v3);
    sub_23ED9E594(v2, v3);
    sub_23ED9E5A8(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_24;
  }

  v10 = *a1;
  v11 = sub_23EDC2240();
  sub_23ED9E594(v4, v5);
  sub_23ED9E594(v2, v3);
  sub_23ED9E5A8(v2, v3);
  sub_23ED9E5A8(v4, v5);
  return v11 & 1;
}

uint64_t sub_23ED9D598(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23ED9D5A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23ED9D5DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23ED9D614(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

unint64_t sub_23ED9D6B0()
{
  result = qword_27E388CE8;
  if (!qword_27E388CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CE8);
  }

  return result;
}

unint64_t sub_23ED9D708()
{
  result = qword_27E388CF0;
  if (!qword_27E388CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388CF0);
  }

  return result;
}

uint64_t sub_23ED9D75C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23ED9D7A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23ED9D80C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23ED9D860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of ALCService.generate(_:with:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23ED9E628;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ALCService.generate(from:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 288);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23ED9DD08;

  return v12(a1, a2, a3);
}

uint64_t sub_23ED9DD08(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ALCService.generateStereo(from:imageProperties:auxiliaryDictionary:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 304);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_23ED68C90;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ALCService.generateStereo(from:imageProperties:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 312);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23ED70118;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t getEnumTagSinglePayload for ALCService.GenerationEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ALCService.GenerationEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_23ED9E114(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED9E130(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService10ALCServiceC16GenerationOptionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23ED9E178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23ED9E1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_23ED9E220(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23ED9E250(CGColorSpace *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3888A0, &qword_23EDC4EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23EDC62B0;
  v3 = *MEMORY[0x277CBF4B8];
  *(inited + 32) = *MEMORY[0x277CBF4B8];
  v4 = *MEMORY[0x277CBF3E0];
  *(inited + 40) = *MEMORY[0x277CBF3E0];
  v5 = v3;
  v6 = v4;
  v7 = CGColorSpaceCopyName(a1);
  if (!v7)
  {
    swift_setDeallocating();
    v12 = *(inited + 16);
    swift_arrayDestroy();
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v13 = sub_23EDC1790();
    __swift_project_value_buffer(v13, qword_27E3897E8);
    v8 = sub_23EDC1770();
    v14 = sub_23EDC1D80();
    if (os_log_type_enabled(v8, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23ED67000, v8, v14, "CIImage does not contain a valid colorspace.", v15, 2u);
      MEMORY[0x23EF24B30](v15, -1, -1);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v23[2] = &v24;
  v9 = sub_23ED9D17C(sub_23ED9E574, v23, inited);
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  if ((v9 & 1) == 0)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v16 = sub_23EDC1790();
    __swift_project_value_buffer(v16, qword_27E3897E8);
    v17 = v8;
    v18 = sub_23EDC1770();
    v19 = sub_23EDC1D90();

    if (!os_log_type_enabled(v18, v19))
    {

      v11 = 0;
      v8 = v18;
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v8;
    v8 = v17;
    _os_log_impl(&dword_23ED67000, v18, v19, "Input colorspace is not natively supported: %@.", v20, 0xCu);
    sub_23ED6FA68(v21, &unk_27E388D00, &unk_23EDC6730);
    MEMORY[0x23EF24B30](v21, -1, -1);
    MEMORY[0x23EF24B30](v20, -1, -1);

    goto LABEL_12;
  }

  v11 = 1;
LABEL_14:

  return v11;
}

uint64_t sub_23ED9E594(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_23ED9E5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_23ED9E5BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_23ED9E5DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ALCService.availability()@<X0>(char *a1@<X8>)
{
  v2 = sub_23EDC1190();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D48, &qword_23EDC6780);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  result = sub_23EDA12AC();
  if ((result & 1) == 0)
  {
    v23 = 3;
LABEL_21:
    *a1 = v23;
    return result;
  }

  v17 = sub_23EDC0FC0();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_23EDC0FB0();
  sub_23EDC0F20();
  sub_23EDC0F90();

  v55[0] = v57;
  v55[1] = v58;
  v56 = v59;
  v21 = (v3 + 56);
  if (*(&v58 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D58, &qword_23EDC6790);
    v22 = swift_dynamicCast();
    (*v21)(v13, v22 ^ 1u, 1, v2);
  }

  else
  {
    sub_23ED6FA68(v55, &qword_27E388D50, &qword_23EDC6788);
    (*v21)(v13, 1, 1, v2);
  }

  sub_23EDA13AC(v13, v15);
  sub_23ED6FA00(v15, v10, &qword_27E388D48, &qword_23EDC6780);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_23ED6FA68(v10, &qword_27E388D48, &qword_23EDC6780);
LABEL_16:
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v40 = sub_23EDC1790();
    __swift_project_value_buffer(v40, qword_27E3897E8);
    v41 = sub_23EDC1770();
    v42 = sub_23EDC1D80();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23ED67000, v41, v42, "Bundle not resource backed", v43, 2u);
      MEMORY[0x23EF24B30](v43, -1, -1);
    }

    result = sub_23ED6FA68(v15, &qword_27E388D48, &qword_23EDC6780);
    v23 = 2;
    goto LABEL_21;
  }

  v24 = v54;
  v25 = (*(v3 + 32))(v54, v10, v2);
  v26 = *(MEMORY[0x23EF22EE0](v25) + 16);

  if (!v26)
  {
    (*(v3 + 8))(v24, v2);
    goto LABEL_16;
  }

  v52 = v3;
  v53 = a1;
  v28 = MEMORY[0x23EF22EE0](v27);
  v29 = *(v28 + 16);
  if (v29)
  {
    v50 = v15;
    v51 = v20;
    *&v55[0] = MEMORY[0x277D84F90];
    sub_23EDA0DA0(0, v29, 0);
    v30 = *&v55[0];
    v49 = v28;
    v31 = v28 + 32;
    do
    {
      sub_23EDA141C(v31, &v57);
      v32 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
      v33 = *(v32 + 8);
      v34 = sub_23EDC0FD0();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0Tm(&v57);
      *&v55[0] = v30;
      v38 = *(v30 + 16);
      v37 = *(v30 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_23EDA0DA0((v37 > 1), v38 + 1, 1);
        v30 = *&v55[0];
      }

      *(v30 + 16) = v38 + 1;
      v39 = v30 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v31 += 40;
      --v29;
    }

    while (v29);

    v15 = v50;
  }

  else
  {
  }

  sub_23EDC1000();
  v44 = sub_23EDC0FE0();
  v45 = v53;
  v46 = v44;

  MEMORY[0x28223BE20](v47);
  v48 = v54;
  *(&v49 - 2) = v54;
  *(&v49 - 1) = v46;
  sub_23EDC0FF0();
  sub_23ED6FA68(v15, &qword_27E388D48, &qword_23EDC6780);

  *v45 = 0;
  return (*(v52 + 8))(v48, v2);
}

uint64_t sub_23ED9EF5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v23 = sub_23EDC1020();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v23);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x23EF22EE0](v6);
  v21 = *(result + 16);
  if (!v21)
  {
  }

  v10 = 0;
  v11 = result + 32;
  v19 = (v4 + 8);
  v20 = result;
  while (v10 < *(result + 16))
  {
    sub_23EDA141C(v11, v25);
    v24 = v3;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25[6] = &v18;
    v13 = *(AssociatedTypeWitness - 8);
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v16 = &v18 - v15;
    sub_23EDC1010();
    v17 = v24;
    sub_23EDC1060();
    v3 = v17;
    if (v17)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      return (*v19)(v8, v23);
    }

    ++v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    (*v19)(v8, v23);
    (*(v13 + 8))(v16, AssociatedTypeWitness);
    v11 += 40;
    result = v20;
    if (v21 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t static ALCService.requestDownloadProgress()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D60, &qword_23EDC6798);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x277D85778]);
  return sub_23EDC1C40();
}

uint64_t sub_23ED9F304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_23EDC1BE0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v3 + 16))(v6, a1, v2);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v6, v2);
  sub_23EDA059C(0, 0, v10, &unk_23EDC6920, v13);
  return sub_23EDC1BF0();
}

uint64_t sub_23ED9F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D80, &qword_23EDC6940);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_23EDC1150();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v11 = sub_23EDC10C0();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = sub_23EDC1130();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D88, &qword_23EDC6948) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D90, &qword_23EDC6950);
  v4[21] = v18;
  v19 = *(v18 - 8);
  v4[22] = v19;
  v20 = *(v19 + 64) + 15;
  v4[23] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D98, &qword_23EDC6958);
  v4[24] = v21;
  v22 = *(v21 - 8);
  v4[25] = v22;
  v23 = *(v22 + 64) + 15;
  v4[26] = swift_task_alloc();
  v24 = sub_23EDC10E0();
  v4[27] = v24;
  v25 = *(v24 - 8);
  v4[28] = v25;
  v26 = *(v25 + 64) + 15;
  v4[29] = swift_task_alloc();
  v27 = sub_23EDC10A0();
  v4[30] = v27;
  v28 = *(v27 - 8);
  v4[31] = v28;
  v29 = *(v28 + 64) + 15;
  v4[32] = swift_task_alloc();
  v30 = sub_23EDC10B0();
  v4[33] = v30;
  v31 = *(v30 - 8);
  v4[34] = v31;
  v32 = *(v31 + 64) + 15;
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23ED9F904, 0, 0);
}

uint64_t sub_23ED9F904()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = sub_23EDC0FC0();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 288) = sub_23EDC0FB0();
  sub_23EDC1090();
  sub_23EDC1080();
  (*(v6 + 8))(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA0, &unk_23EDC6960);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23EDC4860;
  (*(v2 + 16))(v14 + v13, v1, v3);
  sub_23EDC10D0();
  sub_23EDC0FA0();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v15 = sub_23EDC1790();
  *(v0 + 296) = __swift_project_value_buffer(v15, qword_27E3897E8);
  v16 = sub_23EDC1770();
  v17 = sub_23EDC1D60();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23ED67000, v16, v17, "Starting download progress reporting", v18, 2u);
    MEMORY[0x23EF24B30](v18, -1, -1);
  }

  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);

  sub_23EDC1C20();
  *(v0 + 44) = *MEMORY[0x277D29BD0];
  *(v0 + 312) = *MEMORY[0x277D29BE0];
  v22 = MEMORY[0x277D29BF0];
  *(v0 + 316) = *MEMORY[0x277D29BE8];
  *(v0 + 320) = *v22;
  *(v0 + 324) = *MEMORY[0x277D29BC8];
  v23 = MEMORY[0x277D29CB0];
  *(v0 + 328) = *MEMORY[0x277D29BC0];
  *(v0 + 332) = *v23;
  *(v0 + 336) = *MEMORY[0x277D29CA8];
  v24 = MEMORY[0x277D29C98];
  *(v0 + 340) = *MEMORY[0x277D29CB8];
  *(v0 + 344) = *v24;
  v25 = *(MEMORY[0x277D85798] + 4);
  v26 = swift_task_alloc();
  *(v0 + 304) = v26;
  *v26 = v0;
  v26[1] = sub_23ED9FC0C;
  v27 = *(v0 + 184);
  v28 = *(v0 + 160);
  v29 = *(v0 + 168);

  return MEMORY[0x2822003E8](v28, 0, 0, v29);
}

uint64_t sub_23ED9FC0C()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23ED9FD08, 0, 0);
}

uint64_t sub_23ED9FD08()
{
  v80 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);

LABEL_36:
    v55 = *(v0 + 272);
    v56 = *(v0 + 280);
    v71 = *(v0 + 264);
    v72 = *(v0 + 256);
    v57 = *(v0 + 224);
    v58 = *(v0 + 232);
    v59 = *(v0 + 208);
    v60 = *(v0 + 216);
    v61 = *(v0 + 192);
    v62 = *(v0 + 200);
    v73 = *(v0 + 160);
    v74 = *(v0 + 152);
    v63 = *(v0 + 128);
    v75 = *(v0 + 104);
    v76 = *(v0 + 96);
    v78 = *(v0 + 72);
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    (*(v62 + 8))(v59, v61);
    (*(v57 + 8))(v58, v60);
    (*(v55 + 8))(v56, v71);

    v64 = *(v0 + 8);

    return v64();
  }

  v5 = *(v0 + 44);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  (*(v3 + 32))(*(v0 + 152), v1, v2);
  sub_23EDC1110();
  v9 = (*(v7 + 88))(v6, v8);
  if (v9 == v5)
  {
    v10 = *(v0 + 332);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    v15 = *(v0 + 80);
    (*(*(v0 + 120) + 96))(v11, *(v0 + 112));
    (*(v14 + 32))(v12, v11, v15);
    (*(v14 + 16))(v13, v12, v15);
    v16 = (*(v14 + 88))(v13, v15);
    if (v16 == v10)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v17 = 0;
      v18 = 0xEE00676E6964616FLL;
      v19 = 0x6C776F6420746F4ELL;
      v20 = 2;
      goto LABEL_24;
    }

    if (v16 == *(v0 + 336))
    {
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v17 = 0;
      v19 = 0;
      v18 = 0;
      v20 = 1;
      goto LABEL_24;
    }

    if (v16 == *(v0 + 340))
    {
      v19 = 0xD000000000000010;
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
      v17 = 0;
      v18 = 0x800000023EDCAF60;
      v20 = 3;
      goto LABEL_24;
    }

    v21 = *(v0 + 344);
    v22 = *(*(v0 + 88) + 8);
    v23 = v16;
    v22(*(v0 + 104), *(v0 + 80));
    if (v23 == v21)
    {
      v18 = 0x800000023EDCAF80;
      v19 = 0xD000000000000011;
      v17 = 1;
      v20 = 4;
      goto LABEL_24;
    }

    v19 = 0x6573697270727553;
    v22(*(v0 + 96), *(v0 + 80));
    v20 = 0;
    v18 = 0xEF73757461747320;
LABEL_8:
    v17 = 1;
    goto LABEL_24;
  }

  if (v9 == *(v0 + 312))
  {
    v20 = 0;
    v18 = 0xEE00657461647075;
    v19 = 0x206E776F6E6B6E55;
    goto LABEL_8;
  }

  if (v9 == *(v0 + 316))
  {
    v18 = 0x800000023EDCAFA0;
    v19 = 0xD000000000000011;
    v17 = 1;
    v20 = 5;
    goto LABEL_24;
  }

  if (v9 == *(v0 + 320))
  {
    v19 = 0;
    v18 = 0;
    v17 = 1;
    v20 = 6;
    goto LABEL_24;
  }

  if (v9 == *(v0 + 324))
  {
    v19 = 0xD000000000000010;
    v18 = 0x800000023EDCAF40;
    v17 = 1;
    v20 = 7;
  }

  else
  {
    if (v9 != *(v0 + 328))
    {
      v19 = 0x6573697270727553;
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      v20 = 0;
      v18 = 0xEF65746164707520;
      goto LABEL_8;
    }

    v18 = 0xED0000726F727265;
    v19 = 0x206B726F7774654ELL;
    v17 = 1;
    v20 = 8;
  }

LABEL_24:
  v24 = *(v0 + 152);
  sub_23EDC1120();
  v26 = v25;
  v27 = sub_23EDC1100();
  v28 = sub_23EDC10F0();
  if (!v18)
  {
    goto LABEL_32;
  }

  if (((1 << v20) & 0x1D1) != 0)
  {
    v29 = *(v0 + 296);

    v30 = sub_23EDC1770();
    v31 = sub_23EDC1D80();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v77 = v28;
      v79 = swift_slowAlloc();
      v33 = v27;
      v34 = v17;
      v35 = v79;
      *v32 = 136315138;
      v36 = sub_23ED713FC(v19, v18, &v79);

      *(v32 + 4) = v36;
      v37 = "progress error: %s";
LABEL_28:
      _os_log_impl(&dword_23ED67000, v30, v31, v37, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v38 = v35;
      v17 = v34;
      v27 = v33;
      v28 = v77;
      MEMORY[0x23EF24B30](v38, -1, -1);
      MEMORY[0x23EF24B30](v32, -1, -1);

      goto LABEL_32;
    }
  }

  else
  {
    v39 = *(v0 + 296);

    v30 = sub_23EDC1770();
    v31 = sub_23EDC1D60();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v77 = v28;
      v79 = swift_slowAlloc();
      v33 = v27;
      v34 = v17;
      v35 = v79;
      *v32 = 136315138;
      v40 = sub_23ED713FC(v19, v18, &v79);

      *(v32 + 4) = v40;
      v37 = "progress update: %s";
      goto LABEL_28;
    }
  }

LABEL_32:
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);
  v43 = *(v0 + 48);
  v44 = *(v0 + 56);
  *(v0 + 16) = v26;
  *(v0 + 24) = v27;
  *(v0 + 32) = v28;
  *(v0 + 40) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  sub_23EDC1C00();
  (*(v42 + 8))(v41, v44);
  if (v17)
  {
    v45 = *(v0 + 296);
    v46 = *(v0 + 48);
    sub_23EDC1C10();
    v47 = sub_23EDC1770();
    v48 = sub_23EDC1D60();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 288);
    v52 = *(v0 + 144);
    v51 = *(v0 + 152);
    v53 = *(v0 + 136);
    if (v49)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23ED67000, v47, v48, "Finishing download progress", v54, 2u);
      MEMORY[0x23EF24B30](v54, -1, -1);
    }

    (*(v52 + 8))(v51, v53);
    goto LABEL_36;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v66 = *(MEMORY[0x277D85798] + 4);
  v67 = swift_task_alloc();
  *(v0 + 304) = v67;
  *v67 = v0;
  v67[1] = sub_23ED9FC0C;
  v68 = *(v0 + 184);
  v69 = *(v0 + 160);
  v70 = *(v0 + 168);

  return MEMORY[0x2822003E8](v69, 0, 0, v70);
}

uint64_t sub_23EDA059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C58, &qword_23EDC5EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23ED6FA00(a3, v27 - v11, &qword_27E388C58, &qword_23EDC5EE0);
  v13 = sub_23EDC1BE0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23ED6FA68(v12, &qword_27E388C58, &qword_23EDC5EE0);
  }

  else
  {
    sub_23EDC1BD0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23EDC1B90();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23EDC1A20() + 32;
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

      sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);

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

  sub_23ED6FA68(a3, &qword_27E388C58, &qword_23EDC5EE0);
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

uint64_t sub_23EDA089C()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v0 = sub_23EDC1790();
  __swift_project_value_buffer(v0, qword_27E3897E8);
  v1 = sub_23EDC1770();
  v2 = sub_23EDC1D60();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23ED67000, v1, v2, "Terminating download progress", v3, 2u);
    MEMORY[0x23EF24B30](v3, -1, -1);
  }

  return sub_23EDC1C50();
}

void static ALCService.adjustSubscription(subscribe:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_23EDC19A0();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    sub_23ED721D8();
    swift_allocError();
    *v6 = 8;
    swift_willThrow();
    return;
  }

  v5 = sub_23EDC19A0();
  if (a1)
  {
    [v4 removeObjectForKey_];
  }

  else
  {
    [v4 setBool:1 forKey:v5];
  }

  if (![v4 synchronize])
  {
    sub_23ED721D8();
    swift_allocError();
    v10 = 8;
    goto LABEL_10;
  }

  v7 = sub_23EDC1A20();
  v8 = notify_post((v7 + 32));

  if (v8)
  {
    sub_23ED721D8();
    swift_allocError();
    v10 = 9;
LABEL_10:
    *v9 = v10;
    swift_willThrow();
  }
}

uint64_t sub_23EDA0B70(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23EDA0C68;

  return v7(a1);
}

uint64_t sub_23EDA0C68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_23EDA0D60(size_t a1, int64_t a2, char a3)
{
  result = sub_23EDA0DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23EDA0D80(char *a1, int64_t a2, char a3)
{
  result = sub_23EDA109C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23EDA0DA0(char *a1, int64_t a2, char a3)
{
  result = sub_23EDA11A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23EDA0DC0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DB0, &qword_23EDC6970);
  v10 = *(sub_23EDC0E80() - 8);
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
  v15 = *(sub_23EDC0E80() - 8);
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

char *sub_23EDA0F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885D8, &qword_23EDC4830);
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

char *sub_23EDA109C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3885C0, &qword_23EDC4818);
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

char *sub_23EDA11A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA8, &qword_23EDC85C0);
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

uint64_t sub_23EDA12AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23EDC19A0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_23EDC19A0();
    v4 = [v2 BOOLForKey_];

    v5 = v4 ^ 1;
  }

  else
  {
    sub_23ED721D8();
    swift_allocError();
    *v6 = 8;
    swift_willThrow();
  }

  return v5 & 1;
}

uint64_t sub_23EDA13AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D48, &qword_23EDC6780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDA141C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23EDA14A0()
{
  result = qword_27E388D68;
  if (!qword_27E388D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388D68);
  }

  return result;
}

unint64_t sub_23EDA14F8()
{
  result = qword_27E388D70;
  if (!qword_27E388D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388D70);
  }

  return result;
}

uint64_t _s14DownloadStatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14DownloadStatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23EDA16C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23EDA1704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_23EDA175C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23EDA182C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D78, "Ta") - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23ED68C90;

  return sub_23ED9F4FC(a1, v6, v7, v1 + v5);
}

uint64_t sub_23EDA1930()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23EDA1968(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23ED70118;

  return sub_23EDA0B70(a1, v5);
}

uint64_t sub_23EDA1A20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23ED68C90;

  return sub_23EDA0B70(a1, v5);
}

uint64_t ALCService.Metadata.alcVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ALCService.Metadata.jpVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ALCService.Metadata.fovVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void ALCService.Metadata.init(scene:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23EDC19A0();
  v5 = [a1 attribute_];

  if (v5)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v16;
      v6 = v17;
      goto LABEL_9;
    }
  }

  else
  {
    sub_23ED741A0(&v20);
  }

  v6 = 0xE300000000000000;
  v7 = 4271950;
LABEL_9:
  v8 = sub_23EDC19A0();
  v9 = [a1 attribute_];

  if (v9)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v16;
      v10 = v17;
      goto LABEL_17;
    }
  }

  else
  {
    sub_23ED741A0(&v20);
  }

  v10 = 0xE300000000000000;
  v11 = 4271950;
LABEL_17:
  v12 = sub_23EDC19A0();
  v13 = [a1 attribute_];

  if (v13)
  {
    sub_23EDC1E50();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_23ED741A0(&v20);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    v14 = 0xE300000000000000;
    v15 = 4271950;
    goto LABEL_25;
  }

  v15 = v16;
  v14 = v17;

LABEL_25:
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v10;
  a2[4] = v15;
  a2[5] = v14;
}

void sub_23EDA1E4C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = sub_23EDC19A0();
  v10 = sub_23EDC19A0();
  [a1 setAttribute:v9 forKey:v10];

  v11 = sub_23EDC19A0();
  v12 = sub_23EDC19A0();
  [a1 setAttribute:v11 forKey:v12];

  v13 = sub_23EDC19A0();
  v14 = sub_23EDC19A0();
  [a1 setAttribute:v13 forKey:v14];
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23EDA1FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23EDA1FE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy152_16(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_23EDA2078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_23EDA20C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23EDA2140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23EDA2188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_23EDA21E4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_23EDA2204, 0, 0);
}

uint64_t sub_23EDA2204()
{
  v35 = v0;
  if (qword_27E3881B8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E389878;
  v2 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  *(v0 + 80) = qword_27E389878;
  *(v0 + 88) = v2;
  v3 = *(v1 + v2);
  v4 = swift_task_alloc();
  *(v4 + 16) = "makeRefineImage";
  *(v4 + 24) = 15;
  *(v4 + 32) = 2;
  *(v4 + 40) = v1;
  v5 = MEMORY[0x277D84F78];
  sub_23EDC1DE0();
  v6 = *(v0 + 64);

  CGAffineTransformMakeScale(&v34, 1.0, -1.0);
  v7 = *&v34.c;
  v8 = *&v34.tx;
  *(v0 + 16) = *&v34.a;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  v9 = [v6 imageByApplyingTransform_];
  *(v0 + 96) = v9;
  v10 = objc_opt_self();
  [v9 extent];
  Width = CGRectGetWidth(v37);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v9 extent];
  Height = CGRectGetHeight(v38);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x2821FF5E8](v11);
  }

  v14 = [v10 texture2DDescriptorWithPixelFormat:81 width:Width height:Height mipmapped:1];
  *(v0 + 104) = v14;
  [v14 setUsage_];
  sub_23EDC1C80();
  v15 = [*(*(v0 + 72) + 256) newTextureWithDescriptor_];
  *(v0 + 112) = v15;
  if (v15)
  {
    v16 = v15;
    v17 = [*(*(v0 + 72) + 264) commandBuffer];
    *(v0 + 120) = v17;
    if (v17)
    {
      v33 = v17;
      v18 = [*(v0 + 64) colorSpace];
      if (v18)
      {
        v5 = v18;
        v19 = sub_23EDC1DA0();
      }

      else
      {
        v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
        v28 = v19;
        if (v19)
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      v28 = v19;

LABEL_21:
      *(v0 + 128) = v28;
      sub_23EDC1C80();
      v32 = *(*(v0 + 72) + 272);
      swift_unknownObjectRetain();
      [v9 extent];
      [v32 render:v9 toMTLTexture:v16 commandBuffer:v33 bounds:v28 colorSpace:?];
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      [v33 commit];
      sub_23EDC1C80();
      *(v0 + 136) = 0;
      v30 = *(MEMORY[0x277D85360] + 4);
      v31 = swift_task_alloc();
      *(v0 + 144) = v31;
      *v31 = v0;
      v31[1] = sub_23EDA2960;
      v11 = ObjectType;

      return MEMORY[0x2821FF5E8](v11);
    }

    sub_23ED7E62C();
    swift_allocError();
    *v25 = 0xD00000000000001DLL;
    *(v25 + 8) = 0x800000023EDCB210;
    *(v25 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v26 = *(v1 + v2);
    v27 = swift_task_alloc();
    *(v27 + 16) = "makeRefineImage";
    *(v27 + 24) = 15;
    *(v27 + 32) = 2;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 40) = v1;
    sub_23EDC1DE0();
  }

  else
  {
    sub_23ED7E62C();
    swift_allocError();
    *v22 = 0xD000000000000016;
    *(v22 + 8) = 0x800000023EDCB1F0;
    *(v22 + 16) = 0;
    swift_willThrow();

    v23 = *(v1 + v2);
    v24 = swift_task_alloc();
    *(v24 + 16) = "makeRefineImage";
    *(v24 + 24) = 15;
    *(v24 + 32) = 2;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 40) = v1;
    sub_23EDC1DE0();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23EDA2960()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23EDA2A5C, 0, 0);
}

uint64_t sub_23EDA2A5C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  swift_unknownObjectRelease();
  v7 = *(v6 + v5);
  v8 = swift_task_alloc();
  *(v8 + 16) = "makeRefineImage";
  *(v8 + 24) = 15;
  *(v8 + 32) = 2;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = v6;
  sub_23EDC1DE0();
  if (v1)
  {
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 112);

  return v9(v10);
}

uint64_t sub_23EDA2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  *(v8 + 464) = a4;
  *(v8 + 472) = a5;
  *(v8 + 448) = a1;
  *(v8 + 456) = a2;
  v9 = *(a3 + 136);
  v10 = *(a3 + 168);
  *(v8 + 208) = *(a3 + 152);
  *(v8 + 224) = v10;
  *(v8 + 233) = *(a3 + 177);
  v11 = *(a3 + 72);
  v12 = *(a3 + 104);
  *(v8 + 144) = *(a3 + 88);
  *(v8 + 160) = v12;
  *(v8 + 176) = *(a3 + 120);
  *(v8 + 192) = v9;
  *(v8 + 112) = *(a3 + 56);
  *(v8 + 128) = v11;
  v13 = *a6;
  *(v8 + 480) = v7;
  *(v8 + 488) = v13;
  *(v8 + 496) = *a7;
  *(v8 + 512) = *(a7 + 16);
  *(v8 + 520) = *(a7 + 24);
  *(v8 + 536) = *(a7 + 40);
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23EDA2C5C, 0, 0);
}

void sub_23EDA2C5C()
{
  v133 = v0;
  v132 = *MEMORY[0x277D85DE8];
  v1 = (v0 + 256);
  v2 = [objc_allocWithZone(MEMORY[0x277D00870]) init];
  v3 = *(v0 + 136);
  v4 = v2;
  [v4 setLayers_];
  v5 = *(v0 + 128);
  if (v5)
  {
    if (v5 != 1)
    {
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      sub_23EDC1EC0();
      *(v0 + 256) = 0;
      *(v0 + 264) = 0xE000000000000000;
      MEMORY[0x23EF237D0](0xD000000000000010, 0x800000023EDCB260);
      *(v0 + 424) = v5;
      type metadata accessor for MXIType(0);
      sub_23EDC1FA0();
      v28 = *(v0 + 256);
      v29 = *(v0 + 264);
      sub_23EDC2000();
      v30 = *MEMORY[0x277D85DE8];
      return;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 464);
  v8 = *(v0 + 472);
  v9 = *(v0 + 448);
  v10 = *(v0 + 456);
  [v4 setType_];
  [v4 setNumPasses_];
  [v4 setEnableDepthTessellation_];
  LODWORD(v11) = *(v0 + 168);
  [v4 setNdcOverlapFactor_];
  [v4 setRefineImage_];
  sub_23EDB4A38(v0 + 64);
  [v4 setCameraIntrinsicsRefine_];
  [v4 setCameraExtrinsics_];
  sub_23EDB4A38(v0 + 16);
  [v4 setCameraIntrinsics_];
  [v4 setCameraImageSize_];
  [v4 setCameraNearFarPlane_];

  v12 = [v9 cgColorSpace];
  if (!v12)
  {
    if (qword_27E388190 != -1)
    {
      swift_once();
    }

    v13 = sub_23EDC1790();
    __swift_project_value_buffer(v13, qword_27E3897E8);
    v14 = sub_23EDC1770();
    v15 = sub_23EDC1D80();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23ED67000, v14, v15, "GSAsset does not contain a valid colorspace, setting to linearSRGB.", v16, 2u);
      MEMORY[0x23EF24B30](v16, -1, -1);
    }

    v12 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    if (!v12)
    {
      goto LABEL_48;
    }
  }

  v18 = *(v0 + 456);
  v17 = *(v0 + 464);
  v19 = v12;
  v20 = sub_23EDA70F8(v19);
  v22 = v21;

  sub_23ED7BB24(0, &qword_27E388DC0, 0x277D257F8);
  v23 = *(v0 + 224);
  v130 = *(v0 + 208);
  v131[0] = v23;
  *(v131 + 9) = *(v0 + 233);
  v24 = *(v0 + 160);
  v126 = *(v0 + 144);
  v127 = v24;
  v25 = *(v0 + 192);
  v128 = *(v0 + 176);
  v129 = v25;
  v26 = *(v0 + 128);
  v124 = *(v0 + 112);
  v125 = v26;
  sub_23ED93EA8(v0 + 112, v0 + 256);
  v27 = v20;
  v31 = sub_23ED938DC(&v124, v18, v27, v22 & 1, v17);
  sub_23EDC1C80();
  v34 = *(v0 + 488);
  if (v34)
  {
    v35 = v34;
    v36 = sub_23ED72BA8(v35);
    if (v36)
    {
      *(v0 + 400) = v36;
      *(v0 + 408) = v37;
      *(v0 + 416) = v38;
      sub_23ED73F28(v36, *&v38);
      sub_23ED730A4(v31, (v0 + 400));
    }
  }

  sub_23EDC1C80();
  v39 = *(v0 + 536);
  v40 = *(v0 + 528);
  v41 = *(v0 + 512);
  v124 = *(v0 + 496);
  v125 = v41;
  *&v126 = v40;
  *(&v126 + 1) = v39;
  sub_23EDA1E4C(v31, &v124);
  sub_23EDC1C80();
  v42 = *(v0 + 480);
  *v1 = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  v43 = v42[27];
  v44 = __CFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_46:
    swift_once();
    goto LABEL_24;
  }

  v42[27] = v45;
  v46 = v42[29];
  v121 = v42;
  if (v46)
  {
    v47 = v42[30];
    v48 = *(*(v0 + 480) + 224);
    *&v124 = v45;
    *(&v124 + 1) = v48;
    LOBYTE(v125) = 0;

    v46(&v124, v0 + 256);
    sub_23ED9E62C(v46);
  }

  v49 = sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  v123 = MEMORY[0x23EF24460](v49);
  if (qword_27E3881B8 != -1)
  {
    goto LABEL_46;
  }

LABEL_24:
  v50 = qword_27E389878;
  v122 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  v51 = *(qword_27E389878 + OBJC_IVAR____TtC16AlchemistService10Signposter_queue);
  v52 = swift_task_alloc();
  *(v52 + 16) = "renderMultiLayer";
  *(v52 + 24) = 16;
  *(v52 + 32) = 2;
  *(v52 + 40) = v50;
  sub_23EDC1DE0();
  v119 = v50;
  v53 = *(v0 + 480);

  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  v55 = [*(v53 + 264) commandBuffer];
  if (!v55)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v62 = 0xD00000000000001DLL;
    *(v62 + 8) = 0x800000023EDCB210;
    *(v62 + 16) = 0;
    swift_willThrow();
LABEL_27:

    objc_autoreleasePoolPop(v123);

LABEL_13:
    v32 = *(v0 + 8);
    v33 = *MEMORY[0x277D85DE8];

    v32();
    return;
  }

  v113 = (v54 + 16);
  v118 = *(v0 + 480);
  v115 = *(v118 + 280);
  v116 = *(v0 + 448);
  v120 = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = v31;
  *(v56 + 24) = v54;
  *(v0 + 288) = sub_23EDA7504;
  *(v0 + 296) = v56;
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_23EDA62CC;
  *(v0 + 280) = &block_descriptor;
  v57 = _Block_copy((v0 + 256));
  v58 = *(v0 + 296);
  v114 = v31;

  v117 = [v115 renderMultiLayerWith:v120 asset:v116 convertMXIOption:v4 multiLayerCallback:v57 error:0];
  _Block_release(v57);
  [v120 commit];
  [v120 waitUntilCompleted];
  v59 = *(v119 + v122);
  v60 = swift_task_alloc();
  *(v60 + 16) = "renderMultiLayer";
  *(v60 + 24) = 16;
  *(v60 + 32) = 2;
  *(v60 + 40) = v119;
  *(v60 + 48) = sub_23EDA7524;
  *(v60 + 56) = v118;

  sub_23EDC1DE0();
  v61 = *(v0 + 480);

  if ((v117 & 1) == 0)
  {
    swift_beginAccess();
    v63 = *v113;
    if (*v113)
    {
      *&v124 = 0;
      *(&v124 + 1) = 0xE000000000000000;
      v64 = v63;
      sub_23EDC1EC0();

      *&v124 = 0xD000000000000029;
      *(&v124 + 1) = 0x800000023EDCB340;
      v65 = [v64 localizedDescription];
      v66 = sub_23EDC19D0();
      v68 = v67;

      MEMORY[0x23EF237D0](v66, v68);

      MEMORY[0x23EF237D0](46, 0xE100000000000000);
      v69 = v124;
      sub_23ED7E62C();
      swift_allocError();
      *v70 = v69;
      *(v70 + 16) = 1;
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_27;
    }
  }

  swift_unknownObjectRelease();

  objc_autoreleasePoolPop(v123);
  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v71 = v121[27];
  v44 = __CFADD__(v71, 1);
  v72 = v71 + 1;
  if (v44)
  {
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v121[27] = v72;
  v73 = v121[29];
  if (v73)
  {
    v74 = v121[30];
    v75 = *(*(v0 + 480) + 224);
    *&v124 = v72;
    *(&v124 + 1) = v75;
    LOBYTE(v125) = 0;

    v73(&v124, v0 + 256);
    sub_23ED9E62C(v73);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  sub_23EDC1C80();
  v76 = *(v119 + v122);
  v77 = swift_task_alloc();
  *(v77 + 16) = "mxiSceneBuilder";
  *(v77 + 24) = 15;
  *(v77 + 32) = 2;
  *(v77 + 40) = v119;
  sub_23EDC1DE0();

  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v78 = v121[27];
  v44 = __CFADD__(v78, 1);
  v79 = v78 + 1;
  if (v44)
  {
    goto LABEL_49;
  }

  v121[27] = v79;
  v80 = v121[29];
  if (v80)
  {
    v81 = v121[30];
    v82 = *(*(v0 + 480) + 224);
    *&v124 = v79;
    *(&v124 + 1) = v82;
    LOBYTE(v125) = 0;

    v80(&v124, v0 + 256);
    sub_23ED9E62C(v80);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DC8, &qword_23EDC6B58);
  v83 = swift_allocObject();
  v84 = *MEMORY[0x277D25748];
  *(v83 + 32) = *MEMORY[0x277D25748];
  v85 = MEMORY[0x277D83B88];
  *(v83 + 40) = *(v0 + 216);
  v86 = MEMORY[0x277D25750];
  *(v83 + 16) = xmmword_23EDC4D80;
  v87 = *v86;
  *(v83 + 64) = v85;
  *(v83 + 72) = v87;
  v88 = *(v0 + 224);
  *(v83 + 104) = MEMORY[0x277D83A90];
  *(v83 + 80) = v88;
  v89 = v84;
  v90 = v87;
  *(v83 + 112) = sub_23EDC19A0();
  v91 = *(v0 + 228);
  v92 = MEMORY[0x277D839B0];
  *(v83 + 144) = MEMORY[0x277D839B0];
  *(v83 + 120) = (v91 & 1) == 0;
  *(v83 + 152) = sub_23EDC19A0();
  v93 = *(v0 + 229);
  *(v83 + 184) = v92;
  *(v83 + 160) = v93;
  sub_23ED7A818(v83);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3886E8, &qword_23EDC6B60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for MXIBuildOption(0);
  sub_23EDA75CC(&qword_27E388518, type metadata accessor for MXIBuildOption);
  v94 = sub_23EDC1890();

  *(v0 + 256) = 0;
  v95 = [v114 buildSceneWithOptions:v94 error:v0 + 256];

  v96 = *(v0 + 256);
  if (v96)
  {
    v97 = *(v0 + 480);
    v98 = *(v0 + 256);
    swift_willThrow();
    v96;

    v99 = *(v119 + v122);
    v100 = swift_task_alloc();
    *(v100 + 16) = "mxiSceneBuilder";
    *(v100 + 24) = 15;
    *(v100 + 32) = 2;
    *(v100 + 40) = v119;
    *(v100 + 48) = sub_23EDA7614;
    *(v100 + 56) = v118;

    sub_23EDC1DE0();
    v101 = *(v0 + 480);

    goto LABEL_13;
  }

  *(v0 + 288) = 0;
  *v1 = 0u;
  *(v0 + 272) = 0u;
  v102 = v121[27];
  v44 = __CFADD__(v102, 1);
  v103 = v102 + 1;
  if (v44)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v121[27] = v103;
  v104 = v121[29];
  if (v104)
  {
    v105 = v121[30];
    v106 = *(*(v0 + 480) + 224);
    *&v124 = v103;
    *(&v124 + 1) = v106;
    LOBYTE(v125) = 0;
    sub_23ED9D598(v104);
    v104(&v124, v0 + 256);
    sub_23ED9E62C(v104);
  }

  sub_23ED6FA68(v0 + 256, &qword_27E388CB0, &qword_23EDC62E0);
  v107 = *(v0 + 480);
  v108 = *(v119 + v122);
  v109 = swift_task_alloc();
  *(v109 + 16) = "mxiSceneBuilder";
  *(v109 + 24) = 15;
  *(v109 + 32) = 2;
  *(v109 + 40) = v119;
  *(v109 + 48) = sub_23EDA7578;
  *(v109 + 56) = v118;

  sub_23EDC1DE0();
  v110 = *(v0 + 480);

  v111 = *(v0 + 8);
  v112 = *MEMORY[0x277D85DE8];

  v111(v95);
}

void sub_23EDA3C08(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, float a8@<S0>)
{
  v299 = a6;
  v304 = a2;
  v306 = a1;
  v296 = a7;
  v365 = *MEMORY[0x277D85DE8];
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E388798, &unk_23EDC4E00);
  v294 = *(v295 - 8);
  v13 = *(v294 + 64);
  MEMORY[0x28223BE20](v295);
  v293 = &v252 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388788, &qword_23EDC4D78);
  v291 = *(v15 - 8);
  v292 = v15;
  v16 = *(v291 + 64);
  MEMORY[0x28223BE20](v15);
  v290 = &v252 - v17;
  v297 = type metadata accessor for StereoProperties();
  v18 = *(*(v297 - 8) + 64);
  MEMORY[0x28223BE20](v297);
  v298 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388778, &unk_23EDC6B30);
  v305 = *(v308 - 8);
  v20 = *(v305 + 64);
  v21 = MEMORY[0x28223BE20](v308);
  v300.i64[0] = &v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v252 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v302 = &v252 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v301.i64[0] = &v252 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v303 = &v252 - v31;
  MEMORY[0x28223BE20](v30);
  v307 = &v252 - v32;
  v33 = sub_23EDC11A0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&v252 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_23EDC1250();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v310 = &v252 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v44 = 0xD00000000000002CLL;
    *(v44 + 8) = 0x800000023EDCAFC0;
    *(v44 + 16) = 4;
    swift_willThrow();
    goto LABEL_63;
  }

  v288 = v41;
  v289 = v40;
  *v37 = a5;
  (*(v34 + 104))(v37, *MEMORY[0x277CEA598], v33);
  v43 = v310;
  sub_23EDC1410();
  if (v8)
  {
    (*(v34 + 8))(v37, v33);
LABEL_63:
    v185 = *MEMORY[0x277D85DE8];
    return;
  }

  (*(v34 + 8))(v37, v33);
  sub_23EDC1230();
  v46 = round(v45);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_23EDC1230();
  v48 = round(v47);
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v48 <= -9.22337204e18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v48 >= 9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  sub_23EDC1240();
  v49 = v316;
  v50 = roundf(v49 * a8);
  if ((LODWORD(v50) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v50 <= -9.2234e18)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v50 >= 9.2234e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v51 = *(v309 + 32);
  v52 = objc_allocWithZone(MEMORY[0x277D257F0]);
  v339.i64[0] = 0;
  v53 = [v52 initWithDevice:v51 colorPixelFormat:81 depthPixelFormat:250 sampleCount:1 error:&v339];
  v54 = v339.i64[0];
  if (!v53)
  {
    v78 = v339.i64[0];
    sub_23EDC0E30();

    swift_willThrow();
LABEL_24:
    (*(v288 + 8))(v43, v289);
    goto LABEL_63;
  }

  v287 = v53;
  v55 = v48;
  v56 = objc_opt_self();
  v57 = v54;
  *&v284 = v56;
  v58 = [v56 texture2DDescriptorWithPixelFormat:250 width:v46 height:v48 mipmapped:0];
  [v58 setTextureType_];
  [v58 setUsage_];
  v285.i64[0] = v51;
  v59 = [v51 newTextureWithDescriptor_];
  if (!v59)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v79 = 0xD000000000000027;
    *(v79 + 8) = 0x800000023EDCAFF0;
    *(v79 + 16) = 0;
    swift_willThrow();
LABEL_23:

    goto LABEL_24;
  }

  v60 = v59;
  v286 = v46;
  v61 = [*(v309 + 33) commandBuffer];
  if (!v61)
  {
    sub_23ED83D68();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v280 = v61;
  v281 = v60;
  v62 = v50;
  v63 = *(v304 + 8);
  v64 = *(v304 + 80);
  v282 = *(v304 + 96);
  v283 = v64;
  *&v279 = *v304;
  v65 = *(v304 + 28);
  v66 = *(v304 + 60);
  v313 = *(v304 + 44);
  v314 = v66;
  v315 = *(v304 + 76);
  v311 = *(v304 + 12);
  v312 = v65;
  v67 = *(v304 + 112);
  v68 = *(v304 + 116);
  v364 = *(v304 + 128);
  v363 = v67;
  [v306 effectiveVerticalFOV];
  v70 = tanf(v69 * 0.5);
  v71 = objc_opt_self();
  v72 = [v71 meters];
  v73 = sub_23ED7BB24(0, &qword_27E388780, 0x277CCAE20);
  v74 = v307;
  v75 = v62;
  v76 = v73;
  sub_23EDC0D60();
  sub_23ED7E064(v74, v75, v286, v55);
  v80 = *v77.i64;
  v276 = v58;
  v277 = v55;
  v268 = 0;
  v77.f32[0] = v68 / v70;
  v275 = v77;
  v81 = v308;
  sub_23EDC0D70();
  v274 = v75;
  v82 = v75;
  v83 = [v71 meters];
  sub_23EDC0D60();
  sub_23EDC0D70();
  if (qword_27E388158 != -1)
  {
    swift_once();
  }

  v261 = v76;
  __swift_project_value_buffer(v81, qword_27E389760);
  v262 = v71;
  v84 = [v71 meters];
  sub_23EDC0D90();
  sub_23EDC0D70();

  v85 = v305;
  v86 = *(v305 + 8);
  v304 = v305 + 8;
  v278 = v86;
  v86(v25, v81);
  sub_23EDC0D80();
  v87 = v81;
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v88 = v282;
  v88.i32[1] = v275.i32[0];
  v282 = v88;
  v89 = v283;
  v89.i32[0] = v275.i32[0];
  v283 = v89;
  v90 = sub_23EDC1790();
  v91 = __swift_project_value_buffer(v90, qword_27E3897E8);
  v92 = v300.i64[0];
  v275.i64[0] = *(v85 + 16);
  (v275.i64[0])(v300.i64[0], v307, v81);
  v260 = v91;
  v93 = sub_23EDC1770();
  v94 = sub_23EDC1D60();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = v286;
    v96 = (v274 * 36.0) / v286;
    v97 = swift_slowAlloc();
    v273.i64[0] = swift_slowAlloc();
    v362[0] = v273.i64[0];
    *v97 = 136315906;
    sub_23EDA6848();
    v98 = sub_23EDC21E0();
    v99 = v278;
    v100 = v92;
    v102 = v101;
    v278(v100, v308);
    v103 = sub_23ED713FC(v98, v102, v362);
    v104 = v99;

    *(v97 + 4) = v103;
    *(v97 + 12) = 2048;
    *(v97 + 14) = v80 / v95;
    *(v97 + 22) = 2048;
    *(v97 + 24) = v96;
    *(v97 + 32) = 2048;
    v105 = v302;
    swift_beginAccess();
    sub_23EDC0D70();
    v107 = v106;
    swift_endAccess();
    *(v97 + 34) = v107 * 1000.0;
    _os_log_impl(&dword_23ED67000, v93, v94, "\n [Stereo Baking] \n  Near Distance: %s, \n Max disparity %%: %f \n Focal Length(35mm): %f, Recommended stereo baseline (mm): %f", v97, 0x2Au);
    v108 = v273.i64[0];
    __swift_destroy_boxed_opaque_existential_0Tm(v273.i64[0]);
    v87 = v308;
    MEMORY[0x23EF24B30](v108, -1, -1);
    MEMORY[0x23EF24B30](v97, -1, -1);

    v109 = v303;
    v110 = v277;
    v111 = v301.i64[0];
  }

  else
  {

    v112 = v92;
    v104 = v278;
    v278(v112, v81);
    v109 = v303;
    v110 = v277;
    v111 = v301.i64[0];
    v105 = v302;
  }

  swift_beginAccess();
  (v275.i64[0])(v111, v105, v87);
  v104(v105, v87);
  (*(v305 + 32))(v109, v111, v87);
  v331 = v312;
  v332 = v313;
  v333 = v314;
  v113 = v279;
  v328 = v279;
  v329 = v63 * 0.98;
  v334 = v315;
  v330 = v311;
  v335 = v283;
  v336 = v282;
  v337 = v363;
  v338 = v364;
  sub_23EDA64B0(&v328, 0, &v339);
  v275 = v339;
  v272 = v341;
  v273 = v340;
  v300 = v344;
  v301 = v343;
  v318 = v63 * 0.98;
  v320 = v312;
  v321 = v313;
  v322 = v314;
  v270 = v345;
  v271 = v342;
  v269 = v346;
  v317 = v113;
  v323 = v315;
  v319 = v311;
  v324 = v283;
  v325 = v282;
  v327 = v364;
  v326 = v363;
  sub_23EDA64B0(&v317, 1, &v339);
  v265 = v340;
  v266 = v339;
  v263 = v342;
  v264 = v341;
  v282 = v344;
  v283 = v343;
  v279 = v345;
  v267 = v346;
  v114 = [v306 cgColorSpaceName];
  v115 = CGColorSpaceCreateWithName(v114);

  if (!v115)
  {
    if (qword_27E388188 != -1)
    {
      swift_once();
    }

    v115 = qword_27E3897E0;
  }

  v116 = v286;
  v117 = sub_23ED80D20(v286, v110, v115);
  if (!v117)
  {
    goto LABEL_61;
  }

  v302 = v117;
  v118 = sub_23ED80D20(v116, v110, v115);
  if (!v118)
  {

LABEL_61:
    sub_23ED7E62C();
    swift_allocError();
    *v184 = 0xD00000000000002ALL;
    *(v184 + 8) = 0x800000023EDCB0A0;
    *(v184 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v104(v303, v87);
    v104(v307, v87);
LABEL_62:
    (*(v288 + 8))(v310, v289);
    goto LABEL_63;
  }

  v119 = v118;
  v120 = [v284 texture2DDescriptorWithPixelFormat:81 width:v116 height:v110 mipmapped:0];
  [v120 setUsage_];
  v259 = v120;
  v121 = v302;
  v122 = [v285.i64[0] newTextureWithDescriptor:v120 iosurface:v302 plane:0];
  if (!v122)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v186 = 0xD000000000000027;
    *(v186 + 8) = 0x800000023EDCB0D0;
    *(v186 + 16) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v187 = v287;
    v188 = v276;
    v189 = v310;
LABEL_66:
    v191 = v303;

    v192 = v278;
    v278(v191, v87);
    v192(v307, v87);
    (*(v288 + 8))(v189, v289);
    goto LABEL_63;
  }

  v257 = v119;
  v258 = v122;
  [v306 modelToWorldTransform];
  v254 = v124;
  v255 = v123;
  v252 = v126;
  v253 = v125;
  v127 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v128 = [v127 colorAttachments];
  v129 = [v128 objectAtIndexedSubscript_];

  if (!v129)
  {
    __break(1u);
    goto LABEL_108;
  }

  [v129 setLoadAction_];

  v130 = [v127 colorAttachments];
  v131 = [v130 objectAtIndexedSubscript_];

  if (!v131)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  [v131 setStoreAction_];

  v132 = [v127 colorAttachments];
  v133 = [v132 objectAtIndexedSubscript_];

  if (!v133)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  [v133 setTexture_];

  v134 = [v127 colorAttachments];
  v135 = [v134 objectAtIndexedSubscript_];

  if (!v135)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  [v135 setClearColor_];

  [v127 setRenderTargetArrayLength_];
  v136 = [v127 depthAttachment];
  v137 = v287;
  if (!v136)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v138 = v136;
  [v136 setTexture_];

  v139 = [v127 depthAttachment];
  if (!v139)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v140 = v139;
  [v139 setLoadAction_];

  v141 = [v127 depthAttachment];
  if (!v141)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v142 = v141;
  v256 = v115;
  [v141 setStoreAction_];

  v143 = [v127 depthAttachment];
  if (!v143)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v144 = v143;
  [v143 setClearDepth_];

  v145 = [v280 renderCommandEncoderWithDescriptor_];
  if (!v145)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v190 = 0xD000000000000025;
    *(v190 + 8) = 0x800000023EDCB100;
    *(v190 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v187 = v276;
    v188 = v256;
    v115 = v127;
    v119 = v137;
    v189 = v310;
    v87 = v308;
    goto LABEL_66;
  }

  v146 = v145;
  v339 = v255;
  v340 = v254;
  v341 = v253;
  v342 = v252;
  v343 = v275;
  v344 = v273;
  v345 = v272;
  v346 = v271;
  v347 = 0u;
  v348 = 0u;
  v349 = 0u;
  v350 = 0u;
  v351 = v301;
  v352 = v300;
  v353 = v270;
  v354 = v269;
  v355 = 0u;
  v356 = 0u;
  v357 = 0u;
  v358 = 0u;
  v359 = 7;
  v360 = 0xFFFFFFFFLL;
  v361 = 0;
  v147 = v137;
  v148 = v306;
  [(__IOSurface *)v147 renderScene:v306 withEncoder:v146 context:&v339];
  [v146 endEncoding];

  swift_unknownObjectRelease();
  v149 = [v284 texture2DDescriptorWithPixelFormat:81 width:v286 height:v277 mipmapped:0];
  [v149 setUsage_];
  v150 = v257;
  v151 = [v285.i64[0] newTextureWithDescriptor:v149 iosurface:v257 plane:0];
  if (!v151)
  {
    sub_23ED7E62C();
    swift_allocError();
    *v193 = 0xD000000000000027;
    *(v193 + 8) = 0x800000023EDCB0D0;
    *(v193 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v167 = v308;
    v168 = v303;
    v169 = v276;
    goto LABEL_69;
  }

  v301.i64[0] = v151;
  [v148 modelToWorldTransform];
  v300 = v152;
  v284 = v154;
  v285 = v153;
  v275 = v155;
  v156 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v157 = [v156 colorAttachments];
  v158 = [v157 objectAtIndexedSubscript_];

  v159 = v280;
  if (!v158)
  {
    goto LABEL_115;
  }

  [v158 setLoadAction_];

  v160 = [v156 colorAttachments];
  v161 = [v160 objectAtIndexedSubscript_];

  if (!v161)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  [v161 setStoreAction_];

  v162 = [v156 colorAttachments];
  v163 = [v162 objectAtIndexedSubscript_];

  if (!v163)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  [v163 setTexture_];

  v164 = [v156 colorAttachments];
  v165 = [v164 objectAtIndexedSubscript_];

  if (!v165)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  [v165 setClearColor_];

  [v156 setRenderTargetArrayLength_];
  v166 = [v156 depthAttachment];
  v167 = v308;
  v168 = v303;
  v169 = v276;
  if (!v166)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v170 = v166;
  [v166 setTexture_];

  v171 = [v156 depthAttachment];
  if (!v171)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v172 = v171;
  [v171 setLoadAction_];

  v173 = [v156 depthAttachment];
  if (!v173)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v174 = v173;
  [v173 setStoreAction_];

  v175 = [v156 depthAttachment];
  if (v175)
  {
    v176 = v175;
    [v175 setClearDepth_];

    v177 = [v159 renderCommandEncoderWithDescriptor_];
    if (v177)
    {
      v178 = v177;
      v339 = v300;
      v340 = v285;
      v341 = v284;
      v342 = v275;
      v343 = v266;
      v344 = v265;
      v345 = v264;
      v346 = v263;
      v347 = 0u;
      v348 = 0u;
      v349 = 0u;
      v350 = 0u;
      v351 = v283;
      v352 = v282;
      v353 = v279;
      v354 = v267;
      v355 = 0u;
      v356 = 0u;
      v357 = 0u;
      v358 = 0u;
      v359 = 7;
      v360 = 0xFFFFFFFFLL;
      v361 = 0;
      v179 = v287;
      [v287 renderScene:v306 withEncoder:v177 context:&v339];
      [v178 endEncoding];

      swift_unknownObjectRelease();
      [v159 commit];
      [v159 waitUntilCompleted];
      v180 = v256;
      v181 = v268;
      v182 = sub_23EDC1DA0();
      if (v181)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v183 = v303;
LABEL_70:
        v195 = v278;
        v278(v183, v167);
        v195(v307, v167);
        goto LABEL_62;
      }

      v196 = v182;
      v306 = *(v309 + 34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388600, &unk_23EDC4890);
      v197 = swift_allocObject();
      *(v197 + 16) = xmmword_23EDC4860;
      v198 = *MEMORY[0x277CBFA40];
      *(v197 + 32) = *MEMORY[0x277CBFA40];
      type metadata accessor for CGColorSpace(0);
      *(v197 + 64) = v199;
      *(v197 + 40) = v196;
      v200 = v198;
      v309 = v196;
      v201 = v301.i64[0];
      swift_unknownObjectRetain();
      v202 = v258;
      swift_unknownObjectRetain();
      sub_23ED7A0AC(v197);
      swift_setDeallocating();
      sub_23ED6FA68(v197 + 32, &unk_27E388CA0, &qword_23EDC62D0);
      swift_deallocClassInstance();
      v203 = objc_allocWithZone(MEMORY[0x277CBF758]);
      type metadata accessor for CIImageOption(0);
      sub_23EDA75CC(&qword_27E388450, type metadata accessor for CIImageOption);
      v204 = sub_23EDC1890();
      a4 = [v203 initWithMTLTexture:v202 options:v204];

      if (!a4)
      {

        goto LABEL_90;
      }

      v205 = objc_allocWithZone(MEMORY[0x277CBF758]);
      v206 = sub_23EDC1890();

      v207 = [v205 initWithMTLTexture:v201 options:v206];

      if (v207)
      {
        [a4 extent];
        v208 = *MEMORY[0x277CBF978];
        v209 = v306;
        v210 = v299;
        v300.i64[0] = [v306 createCGImage:a4 fromRect:v208 format:v299 colorSpace:?];
        if (v300.i64[0])
        {
          [v207 extent];
          v211 = [v209 createCGImage:v207 fromRect:v208 format:v210 colorSpace:?];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v211)
          {
            if (qword_27E388168 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v308, qword_27E389790);
            sub_23EDC0D70();
            v213 = v212;
            sub_23ED7E064(v307, v274, v286, v277);
            v222 = v286;
            v223 = v213 * v286 / v277;
            v224 = v214 / v286;
            if (qword_27E388150 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v308, qword_27E389748);
            sub_23EDC0D70();
            v226 = v224 - v225 / v223;
            if (v226 < 0.0)
            {
              v227 = 0.0;
            }

            else
            {
              v227 = v226;
            }

            v228 = sub_23EDC1770();
            v229 = sub_23EDC1D60();
            if (os_log_type_enabled(v228, v229))
            {
              v230 = swift_slowAlloc();
              *v230 = 134217984;
              *(v230 + 4) = v227;
              _os_log_impl(&dword_23ED67000, v228, v229, "\n [Stereo Baking] Recommended Disparity Adjustment: %f", v230, 0xCu);
              MEMORY[0x23EF24B30](v230, -1, -1);
            }

            v306 = objc_opt_self();
            v231 = [v306 degrees];
            v299 = sub_23ED7BB24(0, &qword_27E388790, 0x277CCADA8);
            sub_23EDC0D60();
            v232 = *(v297 + 20);
            if (qword_27E388170 != -1)
            {
              swift_once();
            }

            v233 = qword_27E3897A8;
            type metadata accessor for CustomUnitProportion();
            v234 = v233;
            v235 = v298;
            sub_23EDC0D60();
            v236 = v297;
            v237 = *(v297 + 24);
            v238 = [v262 millimeters];
            sub_23EDC0D60();
            v239 = &v235[*(v236 + 28)];
            *v239 = 0;
            v239[8] = 1;
            (*(v305 + 24))(&v235[v237], v303, v308);
            if (v274 < 1 || v286 <= 0)
            {
              sub_23ED83D68();
              swift_allocError();
              swift_willThrow();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v250 = v308;
              v251 = v278;
              v278(v303, v308);
              v251(v307, v250);
              (*(v288 + 8))(v310, v289);
              v249 = v298;
            }

            else
            {
              atan2(v222 * 0.5, v82);
              v240 = [v306 degrees];
              v241 = v290;
              sub_23EDC0D60();
              v242 = v298;
              (*(v291 + 40))(v298, v241, v292);
              v243 = v234;
              v244 = v293;
              sub_23EDC0D60();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              v245 = v308;
              v246 = v278;
              v278(v303, v308);
              v246(v307, v245);
              (*(v288 + 8))(v310, v289);
              (*(v294 + 40))(v242 + v232, v244, v295);
              v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388CB8, &unk_23EDC62F8);
              v248 = v296;
              sub_23EDA67E4(v242, v296 + *(v247 + 32));
              *v248 = v300.i64[0];
              v248[1] = v211;
              v249 = v242;
            }

            sub_23EDA6788(v249);
            goto LABEL_63;
          }

          v215 = v310;
          v216 = v308;
          v217 = v303;
          v218 = v276;
          goto LABEL_91;
        }

LABEL_90:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v215 = v310;
        v216 = v308;
        v217 = v303;
        v218 = v276;
LABEL_91:
        sub_23ED7E62C();
        swift_allocError();
        *v219 = 0xD000000000000024;
        *(v219 + 8) = 0x800000023EDCB130;
        *(v219 + 16) = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v220 = v217;
        v221 = v278;
        v278(v220, v216);
        v221(v307, v216);
        (*(v288 + 8))(v215, v289);
        goto LABEL_63;
      }

LABEL_88:

      goto LABEL_90;
    }

    sub_23ED7E62C();
    swift_allocError();
    *v194 = 0xD000000000000025;
    *(v194 + 8) = 0x800000023EDCB100;
    *(v194 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_69:
    v183 = v168;
    goto LABEL_70;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_23EDA602C(unsigned int a1)
{
  if (a1 < 6)
  {
    return qword_23EDC6B68[a1];
  }

  sub_23EDC1EC0();
  MEMORY[0x23EF237D0](0xD00000000000001DLL, 0x800000023EDCB3E0);
  type metadata accessor for GSConvertMXIFace(0);
  sub_23EDC1FA0();
  MEMORY[0x23EF237D0](46, 0xE100000000000000);
  result = sub_23EDC2000();
  __break(1u);
  return result;
}

void sub_23EDA6124()
{
  v0 = *MEMORY[0x277CBF3E0];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_27E3897E0 = v1;
  }

  else
  {
    __break(1u);
  }
}
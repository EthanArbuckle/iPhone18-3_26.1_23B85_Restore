id AVSAutomationSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSAutomationSupport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AVSAutomationSupport.userInterfaceClient(_:accessQueueForProcessingMessageWithIdentifier:)()
{
  v0 = [objc_opt_self() mainAccessQueue];

  return v0;
}

unint64_t sub_23E80B274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A840, &unk_23E8308C0);
    v3 = sub_23E82EDFC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23E81DE40(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_23E80B388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A8E0, &qword_23E830938);
    v3 = sub_23E82EDFC();
    v4 = a1 + 32;

    while (1)
    {
      sub_23E80B694(v4, v13);
      result = sub_23E81DEB8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23E80B704(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t _s22AdaptiveVoiceShortcuts20AVSAutomationSupportC35connectionWithServiceWasInterrupted22forUserInterfaceClientySo10AXUIClientCSg_tF_0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_23E82DFEC();
  v7 = sub_23E82EBCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23E7EF000, v6, v7, "Connection to the AVS Service was interrupted", v8, 2u);
    MEMORY[0x23EF15860](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23E80B694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A868, &qword_23E8308D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23E80B704(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id static AVSSettings.avsFeatureEnabled.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isAdaptiveVoiceShortcutsEnabled];

  return v1;
}

void static AVSSettings.avsFeatureEnabled.setter(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setAdaptiveVoiceShortcutsEnabled:a1 & 1 source:*MEMORY[0x277CE7CE0]];
}

void static AVSSettings.setVocalShortcutsEnabled(_:source:)(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 setAdaptiveVoiceShortcutsEnabled:a1 & 1 source:a2];
}

id static AVSSettings.shouldHideAudioDonationPrompt.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23E82EA5C();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void static AVSSettings.shouldHideAudioDonationPrompt.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_23E82EA5C();
  [v2 setBool:a1 & 1 forKey:v3];
}

AVSSettings __swiftcall AVSSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  result = [swift_getObjCClassFromMetadata() *a2];
  *a3 = result;
  return result;
}

id keypath_setTm_0(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char **a5)
{
  v6 = *a1;
  v7 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = *a5;

  return [ObjCClassFromMetadata v9];
}

unint64_t type metadata accessor for AVSSettings()
{
  result = qword_27E35A950;
  if (!qword_27E35A950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35A950);
  }

  return result;
}

uint64_t sub_23E80BDA0()
{
  v0 = sub_23E82E00C();
  __swift_allocate_value_buffer(v0, qword_27E35A958);
  __swift_project_value_buffer(v0, qword_27E35A958);
  return sub_23E82DFFC();
}

uint64_t AVSLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E82E00C();
  v3 = __swift_project_value_buffer(v2, qword_27E35A958);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t AVSLogger.setter(uint64_t a1)
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23E82E00C();
  v3 = __swift_project_value_buffer(v2, qword_27E35A958);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*AVSLogger.modify())()
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v0 = sub_23E82E00C();
  __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23E80C0C0(uint64_t a1)
{
  v53 = sub_23E82DDDC();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AvailableShortcutAction();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v49 = v9;
  v42 = v1;
  v56 = MEMORY[0x277D84F90];
  sub_23E800950(0, v10, 0);
  v11 = v56;
  v12 = a1 + 64;
  v13 = -1 << *(a1 + 32);
  result = sub_23E82ECBC();
  v15 = result;
  v16 = 0;
  v17 = *(a1 + 36);
  v47 = a1;
  v48 = (v3 + 40);
  v43 = a1 + 72;
  v44 = v10;
  v45 = v17;
  v46 = a1 + 64;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v19 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_22;
    }

    if (v17 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v54 = v16;
    v20 = *(a1 + 56);
    v21 = (*(a1 + 48) + 16 * v15);
    v22 = v21[1];
    v55 = *v21;
    v23 = (v20 + 16 * v15);
    v24 = *v23;
    v25 = v23[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v26 = v11;
    v27 = v52;
    sub_23E82DDCC();
    v28 = v49;
    sub_23E82DDCC();
    v29 = v27;
    v11 = v26;
    (*v48)(v28, v29, v53);

    v30 = v51;
    v31 = (v28 + *(v51 + 20));
    *v31 = v24;
    v31[1] = v25;
    v32 = v28 + *(v30 + 24);
    *v32 = v55;
    *(v32 + 8) = v22;
    *(v32 + 16) = 1;
    v56 = v26;
    v34 = *(v26 + 16);
    v33 = *(v26 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_23E800950(v33 > 1, v34 + 1, 1);
      v28 = v49;
      v11 = v56;
    }

    *(v11 + 16) = v34 + 1;
    result = sub_23E818C8C(v28, v11 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v34, type metadata accessor for AvailableShortcutAction);
    a1 = v47;
    v18 = 1 << *(v47 + 32);
    if (v15 >= v18)
    {
      goto LABEL_24;
    }

    v12 = v46;
    v35 = *(v46 + 8 * v19);
    if ((v35 & (1 << v15)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v17) = v45;
    if (v45 != *(v47 + 36))
    {
      goto LABEL_26;
    }

    v36 = v35 & (-2 << (v15 & 0x3F));
    if (v36)
    {
      v18 = __clz(__rbit64(v36)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v37 = v19 << 6;
      v38 = v19 + 1;
      v39 = (v43 + 8 * v19);
      while (v38 < (v18 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          result = sub_23E818CF4(v15, v45, 0);
          v18 = __clz(__rbit64(v40)) + v37;
          goto LABEL_4;
        }
      }

      result = sub_23E818CF4(v15, v45, 0);
    }

LABEL_4:
    v16 = v54 + 1;
    v15 = v18;
    if (v54 + 1 == v44)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23E80C4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E8001E0(a3, v27 - v11, &qword_27E35A618, &qword_23E831730);
  v13 = sub_23E82EB9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23E7F55E0(v12, &qword_27E35A618, &qword_23E831730);
  }

  else
  {
    sub_23E82EB8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E82EB4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E82EAAC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABA0, &qword_23E830E18);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);

      return v24;
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

  sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABA0, &qword_23E830E18);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_23E80C7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E8001E0(a3, v27 - v11, &qword_27E35A618, &qword_23E831730);
  v13 = sub_23E82EB9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23E7F55E0(v12, &qword_27E35A618, &qword_23E831730);
  }

  else
  {
    sub_23E82EB8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E82EB4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E82EAAC() + 32;
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

      sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);

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

  sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);
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

uint64_t sub_23E80CAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23E8001E0(a3, v27 - v11, &qword_27E35A618, &qword_23E831730);
  v13 = sub_23E82EB9C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23E7F55E0(v12, &qword_27E35A618, &qword_23E831730);
  }

  else
  {
    sub_23E82EB8C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23E82EB4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23E82EAAC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);

      return v24;
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

  sub_23E7F55E0(a3, &qword_27E35A618, &qword_23E831730);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AVSCoordinatorObject.Stage.hashValue.getter()
{
  v1 = *v0;
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](v1);
  return sub_23E82EF4C();
}

uint64_t sub_23E80CEC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t (*sub_23E80CF34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23E82E0BC();
  return sub_23E818DCC;
}

uint64_t sub_23E80CFD8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A980, &qword_23E8309A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A978, &qword_23E830998);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23E80D178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A980, &qword_23E8309A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A978, &qword_23E830998);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23E80D2B0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A980, &qword_23E8309A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__recordingMagnitudes;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A978, &qword_23E830998);
  sub_23E82E09C();
  swift_endAccess();
  return sub_23E818DD0;
}

uint64_t sub_23E80D420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  *a2 = v5;
  return result;
}

uint64_t sub_23E80D4A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t sub_23E80D514()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  return v1;
}

uint64_t sub_23E80D588()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t (*sub_23E80D5F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23E82E0BC();
  return sub_23E818DCC;
}

uint64_t sub_23E80D69C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A998, &qword_23E8309F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A990, &qword_23E8309F0);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23E80D83C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A998, &qword_23E8309F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A990, &qword_23E8309F0);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23E80D974(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A998, &qword_23E8309F8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__enrollmentsRecorded;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A990, &qword_23E8309F0);
  sub_23E82E09C();
  swift_endAccess();
  return sub_23E818DD0;
}

uint64_t (*sub_23E80DB34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23E82E0BC();
  return sub_23E80DBD8;
}

uint64_t sub_23E80DBDC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23E80DD7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23E80DEB4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__isRecording;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E09C();
  swift_endAccess();
  return sub_23E80E024;
}

uint64_t sub_23E80E03C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  *a2 = v5;
  return result;
}

uint64_t sub_23E80E0CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t sub_23E80E150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  return v1;
}

uint64_t sub_23E80E1D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t (*sub_23E80E23C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23E82E0BC();
  return sub_23E818DCC;
}

void sub_23E80E2E0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_23E80E348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23E82E09C();
  return swift_endAccess();
}

uint64_t sub_23E80E3C4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_23E80E564(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_23E82E09C();
  return swift_endAccess();
}

uint64_t sub_23E80E5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E0AC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23E80E714(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9B0, &qword_23E830A50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__cacheAVSfeatureEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  sub_23E82E09C();
  swift_endAccess();
  return sub_23E818DD0;
}

void sub_23E80E884(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_23E82E0AC();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_23E82E0AC();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t sub_23E80E9EC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23E818DD4;
  a2[1] = v6;
}

uint64_t sub_23E80EA78(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = sub_23E818DC0;
  v6[1] = v5;
}

uint64_t sub_23E80EB14()
{
  v1 = (v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_23E80EB6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23E80EC2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_23E80EC94()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23E80ECDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AVSCoordinatorObject.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AVSCoordinatorObject.init()();
  return v3;
}

uint64_t AVSCoordinatorObject.init()()
{
  v1 = v0;
  v2 = sub_23E82E00C();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E82DE0C();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v12 = &v47 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A990, &qword_23E8309F0);
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v49);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9C0, &qword_23E830AA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__navigationPath;
  v55[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9D0, &qword_23E830AA8);
  sub_23E82E08C();
  (*(v18 + 32))(v1 + v22, v21, v17);
  v23 = v8;
  v24 = v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  sub_23E82DDCC();
  v25 = type metadata accessor for AdaptiveVoiceShortcut();
  v26 = (v24 + v25[5]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v24 + v25[6]);
  *v27 = 0;
  v27[1] = 0;
  v28 = v25[7];
  v29 = type metadata accessor for AvailableShortcutAction();
  (*(*(v29 - 8) + 56))(v24 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__enrollmentsRecorded;
  v55[0] = 0;
  sub_23E82E08C();
  (*(v13 + 32))(v1 + v30, v16, v49);
  v31 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__isRecording;
  LOBYTE(v55[0]) = 0;
  sub_23E82E08C();
  v32 = *(v9 + 32);
  v33 = v50;
  v32(v1 + v31, v12, v50);
  v34 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__cacheAVSfeatureEnabled;
  LOBYTE(v55[0]) = [objc_opt_self() avsFeatureEnabled];
  sub_23E82E08C();
  v32(v1 + v34, v12, v33);
  v36 = v51;
  v35 = v52;
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_numberOfSamples) = 50;
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_maxEnrollments) = 3;
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollingWithAudioFileForAutomation) = 0;
  v37 = (v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  *v37 = nullsub_1;
  v37[1] = 0;
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_verifierModel) = 0;
  v38 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments) = v38;
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory) = 0;
  v39 = v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller;
  type metadata accessor for AVSAudioProvider();
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider) = sub_23E819A20();
  v40 = sub_23E82EB2C();
  *(v40 + 16) = 50;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 0u;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  *(v40 + 208) = 0u;
  *(v40 + 224) = 0;
  swift_beginAccess();
  v54 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA10, &qword_23E830AB0);
  sub_23E82E08C();
  swift_endAccess();
  v41 = type metadata accessor for AVSCoordinatorObject(0);
  v56 = v41;
  v57 = sub_23E816BF0(&qword_27E35AA18, type metadata accessor for AVSCoordinatorObject);
  v55[0] = v1;
  (*(v36 + 104))(v23, *MEMORY[0x277D797B0], v35);

  v42 = sub_23E82DF4C();
  (*(v36 + 8))(v23, v35);
  sub_23E7F55E0(v55, &qword_27E35AA20, &qword_23E830AB8);

  v43 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  v44 = *(v1 + v43);
  *(v1 + v43) = v42;

  v45 = *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
  v56 = v41;
  v57 = &off_2851164E8;
  v55[0] = v1;
  swift_beginAccess();

  sub_23E81518C(v55, v45 + 40, &qword_27E35AA28, &unk_23E830AC0);
  swift_endAccess();

  return v1;
}

uint64_t sub_23E80F68C()
{
  v1 = v0;
  v2 = sub_23E82DDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setVocalShortcutsEnabled:0 source:*MEMORY[0x277CE7CD8]];
  v7 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  *&v14[0] = sub_23E82DDBC();
  *(&v14[0] + 1) = v8;
  v13[3] = 45;
  v13[4] = 0xE100000000000000;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_23E7F84B0();
  sub_23E82EC7C();

  sub_23E82EA9C();

  (*(v3 + 8))(v6, v2);
  v9 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  if (*(v1 + v9))
  {

    sub_23E82DF3C();
  }

  else
  {

    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller;
  swift_beginAccess();
  sub_23E81518C(v14, v1 + v10, &qword_27E35AA30, &unk_23E830AD0);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v14[0]) = 1;

  sub_23E82E0DC();
  v11 = *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
  return sub_23E81AD10();
}

uint64_t sub_23E80F94C()
{
  v1 = v0;
  v2 = sub_23E82DDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() setVocalShortcutsEnabled:0 source:*MEMORY[0x277CE7CD8]];
  v7 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  *&v13[0] = sub_23E82DDBC();
  *(&v13[0] + 1) = v8;
  v12[3] = 45;
  v12[4] = 0xE100000000000000;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_23E7F84B0();
  sub_23E82EC7C();

  sub_23E82EA9C();

  (*(v3 + 8))(v6, v2);
  v9 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
  swift_beginAccess();
  if (*(v1 + v9))
  {

    sub_23E82DF3C();
  }

  else
  {

    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller;
  swift_beginAccess();
  sub_23E81518C(v13, v1 + v10, &qword_27E35AA30, &unk_23E830AD0);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollingWithAudioFileForAutomation) = 1;
  return result;
}

void sub_23E80FBC8(uint64_t a1)
{
  v3 = sub_23E82E00C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  if (AXIsInternalInstall())
  {
    v5 = *(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
    sub_23E81C9EC(a1);
  }
}

uint64_t sub_23E80FE28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  v1 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
  return sub_23E81B214();
}

uint64_t sub_23E80FEA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E82DC9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  v18[2] = a2;
  sub_23E82DC8C();
  sub_23E7F84B0();
  v11 = sub_23E82EC6C();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v14 = v3 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v15 = (v14 + *(type metadata accessor for AdaptiveVoiceShortcut() + 20));
  v16 = v15[1];
  *v15 = v11;
  v15[1] = v13;
}

uint64_t sub_23E80FFE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  sub_23E817120(a1, &v11 - v5, type metadata accessor for AvailableShortcutAction);
  v7 = type metadata accessor for AvailableShortcutAction();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v9 = type metadata accessor for AdaptiveVoiceShortcut();
  sub_23E81518C(v6, v8 + *(v9 + 28), &qword_27E35A210, &unk_23E82FFD0);
  return swift_endAccess();
}

uint64_t sub_23E810118()
{
  v2 = v0;
  swift_getKeyPath();
  v3 = &unk_23E830B08;
  swift_getKeyPath();
  sub_23E82E0CC();

  v4 = *(v29[0] + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  if (!v4)
  {
    v2 = sub_23E82E0BC();
    v9 = v8;
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_23E80306C(0, *(v10 + 2) + 1, 1, v10);
      *v9 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_23E80306C((v12 > 1), v13 + 1, 1, v10);
      *v9 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = 3;
    goto LABEL_13;
  }

  sub_23E82E0CC();

  v5 = *(v29[0] + 16);
  if (!v5)
  {

    goto LABEL_20;
  }

  v6 = *(v29[0] + v5 + 31);

  if (!qword_285115F10)
  {
    goto LABEL_20;
  }

  v7 = 0;
  while (*(&unk_285115F00 + v7 + 32) != v6)
  {
    if (qword_285115F10 == ++v7)
    {
      goto LABEL_20;
    }
  }

  v14 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v14 > 5)
  {
LABEL_20:
    v15 = &v2[OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow];
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 1);

    v17(v18);
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    LODWORD(v1) = *(&unk_285115F00 + v14 + 32);
    if (v1 == 5 && [objc_opt_self() shouldHideAudioDonationPrompt])
    {
      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v2 = sub_23E82E0BC();
    v4 = v20;
    v3 = *v20;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v3;
    if (v21)
    {
      goto LABEL_23;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  v3 = sub_23E80306C(0, *(v3 + 2) + 1, 1, v3);
  *v4 = v3;
LABEL_23:
  v22 = *(v3 + 2);
  v23 = *(v3 + 3);
  v24 = v22 + 1;
  if (v22 >= v23 >> 1)
  {
    v25 = v1;
    v1 = v22 + 1;
    v26 = v3;
    v27 = *(v3 + 2);
    v28 = sub_23E80306C((v23 > 1), v22 + 1, 1, v26);
    v22 = v27;
    v24 = v1;
    LOBYTE(v1) = v25;
    v3 = v28;
    *v4 = v28;
  }

  *(v3 + 2) = v24;
  v3[v22 + 32] = v1;
LABEL_13:
  (v2)(v29, 0);
}

uint64_t sub_23E810458()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v1 = *(v10[0] + 16);

  if (!v1)
  {
    v6 = v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow;
    swift_beginAccess();
    v8 = *v6;
    v7 = *(v6 + 8);

    v8(v9);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  result = sub_23E82E0BC();
  if (*(*v3 + 16))
  {
    v4 = result;
    v5 = v3;
    sub_23E816ACC(&v11);
    if (v11 == 6)
    {
      sub_23E816A44(*(*v5 + 16) - 1, &v11);
    }

    v4(v10, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8105B0()
{
  v1 = (type metadata accessor for AdaptiveVoiceShortcut() - 8);
  v2 = *(*v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = &unk_285115F28;

  sub_23E82E0DC();
  sub_23E82DDCC();
  v5 = &v4[v1[7]];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v4[v1[8]];
  *v6 = 0;
  v6[1] = 0;
  v7 = v1[9];
  v8 = type metadata accessor for AvailableShortcutAction();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  sub_23E80A96C(v4, v0 + v9);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = 0;

  sub_23E82E0DC();
  v10 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = MEMORY[0x277D84F90];
  *(v0 + v10) = MEMORY[0x277D84F90];

  v13 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments;
  swift_beginAccess();
  v14 = *(v0 + v13);
  *(v0 + v13) = v12;
}

uint64_t sub_23E8107A8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  *(v0 + v1) = MEMORY[0x277D84F90];

  v4 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = v3;
}

uint64_t sub_23E81086C(void *a1)
{
  v3 = sub_23E82E00C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_23E82E9BC();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23E82E9EC();
  v21 = *(v23 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller;
  swift_beginAccess();
  sub_23E8001E0(v1 + v11, aBlock, &qword_27E35AA30, &unk_23E830AD0);
  if (v28)
  {
    sub_23E818254(aBlock, v26);
    sub_23E7F55E0(aBlock, &qword_27E35AA30, &unk_23E830AD0);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v20 = a1;
    sub_23E82DE1C();
    result = __swift_destroy_boxed_opaque_existential_0(v26);
    a1 = v20;
  }

  else
  {
    result = sub_23E7F55E0(aBlock, &qword_27E35AA30, &unk_23E830AD0);
  }

  if ((*(v1 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollingWithAudioFileForAutomation) & 1) == 0)
  {
    sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
    v13 = a1;
    v14 = sub_23E82EC0C();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    *(v15 + 24) = v13;
    v29 = sub_23E818234;
    v30 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E826F04;
    v28 = &block_descriptor_1;
    v16 = _Block_copy(aBlock);

    v17 = v13;

    sub_23E82E9DC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23E816BF0(&qword_27E35A3D0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
    sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410);
    v18 = v22;
    v19 = v25;
    sub_23E82ECAC();
    MEMORY[0x23EF14CB0](0, v10, v18, v16);
    _Block_release(v16);

    (*(v24 + 8))(v18, v19);
    return (*(v21 + 8))(v10, v23);
  }

  return result;
}

uint64_t sub_23E810E50(uint64_t a1, uint64_t a2)
{
  sub_23E818610(a2);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23E82E0DC();
}

uint64_t sub_23E810ECC()
{
  v1 = v0;
  v2 = sub_23E82E9BC();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_23E82E9EC();
  v61 = *(v63 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23E82EA0C();
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v52 - v11;
  v12 = type metadata accessor for AdaptiveVoiceShortcut();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = sub_23E82E00C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v21, qword_27E35A958);
  swift_beginAccess();
  (*(v22 + 16))(v25, v26, v21);

  v27 = sub_23E82DFEC();
  v28 = sub_23E82EBEC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v54 = v10;
    v30 = v29;
    v31 = swift_slowAlloc();
    v53 = v18;
    v32 = v31;
    aBlock[0] = v31;
    *v30 = 136315138;
    v52 = v12;
    v33 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
    swift_beginAccess();
    sub_23E817120(v1 + v33, v20, type metadata accessor for AdaptiveVoiceShortcut);
    v34 = sub_23E82EA8C();
    v36 = sub_23E8257E0(v34, v35, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_23E7EF000, v27, v28, "Enrolling command: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v37 = v32;
    v18 = v53;
    MEMORY[0x23EF15860](v37, -1, -1);
    v38 = v30;
    v10 = v54;
    MEMORY[0x23EF15860](v38, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  v54 = [objc_allocWithZone(AVSStore) init];
  v39 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  sub_23E817120(v1 + v39, v18, type metadata accessor for AdaptiveVoiceShortcut);
  v40 = sub_23E803FC0();
  v41 = v55;
  sub_23E817120(v18, v55, type metadata accessor for AdaptiveVoiceShortcut);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = sub_23E8031B0(0, v40[2] + 1, 1, v40);
  }

  v43 = v40[2];
  v42 = v40[3];
  if (v43 >= v42 >> 1)
  {
    v40 = sub_23E8031B0(v42 > 1, v43 + 1, 1, v40);
  }

  v40[2] = v43 + 1;
  sub_23E818C8C(v41, v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v43, type metadata accessor for AdaptiveVoiceShortcut);
  sub_23E805830(v40);

  sub_23E818C2C(v18, type metadata accessor for AdaptiveVoiceShortcut);
  sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
  v44 = sub_23E82EC0C();
  sub_23E82E9FC();
  v45 = v57;
  sub_23E82EA1C();
  v58 = *(v58 + 8);
  v46 = v59;
  (v58)(v10, v59);
  aBlock[4] = sub_23E81171C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor_142;
  v47 = _Block_copy(aBlock);
  v48 = v60;
  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E816BF0(&qword_27E35A3D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E7F5640(&qword_27E35A3E0, &qword_27E35A3D8, &qword_23E830410);
  v49 = v62;
  v50 = v65;
  sub_23E82ECAC();
  MEMORY[0x23EF14C90](v45, v48, v49, v47);
  _Block_release(v47);

  (*(v64 + 8))(v49, v50);
  (*(v61 + 8))(v48, v63);
  return (v58)(v45, v46);
}

id sub_23E81171C()
{
  v0 = [objc_opt_self() shortcutsNamesDictionary];
  v1 = sub_23E82EA3C();

  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277CE7CD8];

    return [v4 setVocalShortcutsEnabled:1 source:v5];
  }

  return result;
}

uint64_t AVSCoordinatorObject.deinit()
{
  v1 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9C0, &qword_23E830AA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23E818C2C(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut, type metadata accessor for AdaptiveVoiceShortcut);
  v3 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__recordingMagnitudes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A978, &qword_23E830998);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__enrollmentsRecorded;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A990, &qword_23E8309F0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__isRecording;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9A8, &qword_23E830A48);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject__cacheAVSfeatureEnabled, v8);
  v10 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);

  v11 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow + 8);

  v12 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_verifierModel);

  v13 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments);

  v14 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments);

  v15 = *(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory);

  sub_23E7F55E0(v0 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller, &qword_27E35AA30, &unk_23E830AD0);
  return v0;
}

uint64_t AVSCoordinatorObject.__deallocating_deinit()
{
  AVSCoordinatorObject.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23E811A4C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AVSCoordinatorObject(0);
  result = sub_23E82E07C();
  *a1 = result;
  return result;
}

uint64_t AVSCoordinatorObject.enrollmentDidComplete(VASingleEnrollmentData:)(uint64_t a1)
{
  v168 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v146 = &v140 - v4;
  v159 = sub_23E82DF2C();
  v163 = *(v159 - 8);
  v5 = *(v163 + 64);
  v6 = MEMORY[0x28223BE20](v159);
  v157 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v158 = &v140 - v8;
  v175 = sub_23E82E00C();
  v167 = *(v175 - 8);
  v9 = *(v167 + 64);
  v10 = MEMORY[0x28223BE20](v175 - 8);
  v153 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v152 = &v140 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v150 = &v140 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v140 - v17;
  MEMORY[0x28223BE20](v16);
  v155 = &v140 - v18;
  v19 = sub_23E82DDDC();
  v164 = *(v19 - 8);
  v20 = *(v164 + 64);
  MEMORY[0x28223BE20](v19);
  v151 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A568, &unk_23E830B30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v162 = &v140 - v24;
  v25 = sub_23E82DEEC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v147 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v148 = &v140 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v156 = &v140 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v140 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v160 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v140 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v140 - v43;
  v45 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments;
  swift_beginAccess();
  v166 = v1;
  v154 = v45;
  v46 = *(v1 + v45);
  v47 = *(v46 + 16);
  v161 = v26;
  v165 = v25;
  if (v47)
  {
    (*(v26 + 16))(v35, v46 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * (v47 - 1), v25);
    sub_23E82DECC();
    (*(v26 + 8))(v35, v25);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v164;
  v50 = *(v164 + 56);
  v50(v44, v48, 1, v19);
  sub_23E82DECC();
  v50(v42, 0, 1, v19);
  v51 = v19;
  v52 = *(v22 + 48);
  v53 = v162;
  sub_23E8001E0(v44, v162, &qword_27E35A468, &qword_23E830290);
  sub_23E8001E0(v42, v53 + v52, &qword_27E35A468, &qword_23E830290);
  v54 = v49;
  v55 = v53;
  v56 = *(v54 + 48);
  if (v56(v55, 1, v51) == 1)
  {
    sub_23E7F55E0(v42, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v44, &qword_27E35A468, &qword_23E830290);
    if (v56(v55 + v52, 1, v51) == 1)
    {
      return sub_23E7F55E0(v55, &qword_27E35A468, &qword_23E830290);
    }
  }

  else
  {
    v58 = v160;
    sub_23E8001E0(v55, v160, &qword_27E35A468, &qword_23E830290);
    if (v56(v55 + v52, 1, v51) != 1)
    {
      v115 = v164;
      v116 = v55 + v52;
      v117 = v151;
      (*(v164 + 32))(v151, v116, v51);
      sub_23E816BF0(&qword_27E35A590, MEMORY[0x277CC95F0]);
      LODWORD(v145) = sub_23E82EA4C();
      v118 = *(v115 + 8);
      v118(v117, v51);
      sub_23E7F55E0(v42, &qword_27E35A468, &qword_23E830290);
      sub_23E7F55E0(v44, &qword_27E35A468, &qword_23E830290);
      v118(v58, v51);
      result = sub_23E7F55E0(v55, &qword_27E35A468, &qword_23E830290);
      if (v145)
      {
        return result;
      }

      goto LABEL_10;
    }

    sub_23E7F55E0(v42, &qword_27E35A468, &qword_23E830290);
    sub_23E7F55E0(v44, &qword_27E35A468, &qword_23E830290);
    (*(v164 + 8))(v58, v51);
  }

  sub_23E7F55E0(v55, &qword_27E35A568, &unk_23E830B30);
LABEL_10:
  v140 = v51;
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v59 = v175;
  v60 = __swift_project_value_buffer(v175, qword_27E35A958);
  swift_beginAccess();
  v61 = v167;
  v62 = *(v167 + 16);
  v63 = v155;
  v162 = v167 + 16;
  v160 = v62;
  (v62)(v155, v60, v59);
  v64 = sub_23E82DFEC();
  v65 = sub_23E82EBEC();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v156;
  v68 = v154;
  if (v66)
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_23E7EF000, v64, v65, "Enrollment did complete", v69, 2u);
    v59 = v175;
    MEMORY[0x23EF15860](v69, -1, -1);
  }

  v72 = *(v61 + 8);
  v71 = v61 + 8;
  v70 = v72;
  v72(v63, v59);
  v73 = v161;
  v74 = *(v161 + 16);
  v144 = v161 + 16;
  v143 = v74;
  v74(v67, v168, v165);
  v75 = v166;
  swift_beginAccess();
  v76 = *(v75 + v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v75 + v68) = v76;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = sub_23E803188(0, v76[2] + 1, 1, v76);
    *(v166 + v68) = v76;
  }

  v79 = v76[2];
  v78 = v76[3];
  v155 = v60;
  v167 = v71;
  v145 = v70;
  if (v79 >= v78 >> 1)
  {
    v76 = sub_23E803188(v78 > 1, v79 + 1, 1, v76);
  }

  v76[2] = v79 + 1;
  v80 = *(v73 + 32);
  v142 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v141 = *(v73 + 72);
  v81 = v165;
  v156 = v80;
  (v80)(v76 + v142 + v141 * v79, v67, v165);
  *(v166 + v68) = v76;
  swift_endAccess();
  v82 = v158;
  v83 = v168;
  sub_23E82DEDC();
  v84 = v163;
  v85 = v157;
  v86 = v159;
  (*(v163 + 104))(v157, *MEMORY[0x277D79818], v159);
  v87 = sub_23E82DF0C();
  v88 = *(v84 + 8);
  v88(v85, v86);
  v163 = v84 + 8;
  v88(v82, v86);
  if (v87)
  {
    v89 = v149;
    v90 = v155;
    v91 = v175;
    (v160)(v149, v155, v175);
    v92 = sub_23E82DFEC();
    v93 = sub_23E82EBEC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_23E7EF000, v92, v93, "Data for enrollment was successfully collected", v94, 2u);
      v95 = v94;
      v91 = v175;
      MEMORY[0x23EF15860](v95, -1, -1);
    }

    v96 = v145;
    v145(v89, v91);
    v97 = v148;
    v143(v148, v168, v165);
    v98 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
    v99 = v166;
    swift_beginAccess();
    v100 = *(v99 + v98);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *(v99 + v98) = v100;
    if ((v101 & 1) == 0)
    {
      v100 = sub_23E803188(0, v100[2] + 1, 1, v100);
      *(v99 + v98) = v100;
    }

    v103 = v100[2];
    v102 = v100[3];
    if (v103 >= v102 >> 1)
    {
      v100 = sub_23E803188(v102 > 1, v103 + 1, 1, v100);
    }

    v100[2] = v103 + 1;
    (v156)(v100 + v142 + v103 * v141, v97, v165);
    *(v99 + v98) = v100;
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23E82E0CC();

    v104 = *&v173[0] + 1;
    if (__OFADD__(*&v173[0], 1))
    {
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v173[0] = v104;

    sub_23E82E0DC();
    v105 = v175;
  }

  else
  {
    v106 = v150;
    v90 = v155;
    (v160)(v150, v155, v175);
    v107 = v147;
    v143(v147, v83, v81);
    v108 = sub_23E82DFEC();
    v109 = sub_23E82EBCC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 134217984;
      v111 = v158;
      sub_23E82DEDC();
      v112 = sub_23E82DF1C();
      v113 = v111;
      v90 = v155;
      v88(v113, v159);
      (*(v161 + 8))(v107, v81);
      *(v110 + 4) = v112;
      _os_log_impl(&dword_23E7EF000, v108, v109, "Data for enrollment was unsuccessful with status: %ld", v110, 0xCu);
      v114 = v110;
      v105 = v175;
      MEMORY[0x23EF15860](v114, -1, -1);
      v99 = v166;
    }

    else
    {
      (*(v161 + 8))(v107, v81);
      v99 = v166;
      v105 = v175;
    }

    v96 = v145;
    v145(v106, v105);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (*&v173[0] >= 3)
  {
    (v160)(v152, v90, v105);
    v130 = sub_23E82DFEC();
    v131 = sub_23E82EBEC();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_23E7EF000, v130, v131, "Collected max number of enrollments. Setting audio enrollments to verifier model and saving data.", v132, 2u);
      v133 = v132;
      v105 = v175;
      MEMORY[0x23EF15860](v133, -1, -1);
    }

    v96(v152, v105);
    if (*(v99 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollingWithAudioFileForAutomation) == 1)
    {
      *(v99 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollingWithAudioFileForAutomation) = 0;
    }

    v134 = sub_23E82EB9C();
    v135 = v146;
    (*(*(v134 - 8) + 56))(v146, 1, 1, v134);
    sub_23E82EB6C();

    v136 = sub_23E82EB5C();
    v137 = swift_allocObject();
    v138 = MEMORY[0x277D85700];
    v137[2] = v136;
    v137[3] = v138;
    v137[4] = v99;
    sub_23E80C7D8(0, 0, v135, &unk_23E830B48, v137);
  }

  else
  {
    (v160)(v153, v90, v105);
    v119 = sub_23E82DFEC();
    v120 = sub_23E82EBEC();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_23E7EF000, v119, v120, "Starting collection of next enrollment", v121, 2u);
      v122 = v121;
      v105 = v175;
      MEMORY[0x23EF15860](v122, -1, -1);
    }

    v96(v153, v105);
    v123 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
    swift_beginAccess();
    v124 = v164;
    v125 = v151;
    v126 = v140;
    (*(v164 + 16))(v151, v99 + v123, v140);
    *&v173[0] = sub_23E82DDBC();
    *(&v173[0] + 1) = v127;
    v171 = 45;
    v172 = 0xE100000000000000;
    v169 = 0;
    v170 = 0xE000000000000000;
    sub_23E7F84B0();
    sub_23E82EC7C();

    sub_23E82EA9C();

    (*(v124 + 8))(v125, v126);
    v128 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_enrollerFactory;
    swift_beginAccess();
    if (*(v99 + v128))
    {
      v129 = *(v99 + v128);

      sub_23E82DF3C();
    }

    else
    {

      v174 = 0;
      memset(v173, 0, sizeof(v173));
    }

    v139 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_currentEnroller;
    swift_beginAccess();
    sub_23E81518C(v173, v99 + v139, &qword_27E35AA30, &unk_23E830AD0);
    return swift_endAccess();
  }
}

uint64_t sub_23E812EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_23E82E00C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_23E82EB6C();
  v4[15] = sub_23E82EB5C();
  v9 = sub_23E82EB4C();

  return MEMORY[0x2822009F8](sub_23E812FA0, v9, v8);
}

uint64_t sub_23E812FA0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);

  v3 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
  swift_beginAccess();
  v6 = objc_allocWithZone(AVSStore);

  v7 = [v6 init];
  v8 = sub_23E82DDBC();
  v10 = _sSo8AVSStoreC22AdaptiveVoiceShortcutsE33saveShortcutEnrollmentDataToFiles10shortcutId_SSSgSS_Say0C7Actions08VASinglegH0VGtF_0(v8, v9, v4);
  v12 = v11;
  v13 = (v5 + *(type metadata accessor for AdaptiveVoiceShortcut() + 24));
  v14 = v13[1];
  *v13 = v10;
  v13[1] = v12;
  swift_endAccess();

  if (*(v2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_verifierModel))
  {
    v15 = *(v2 + v3);
    v16 = *(v2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_verifierModel);

    sub_23E82DE5C();
  }

  v17 = *(v0 + 112);
  v18 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 128) = 0;

  sub_23E82E0DC();
  v19 = *(v18 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
  sub_23E81B214();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23E813328()
{
  v0 = type metadata accessor for AVSCoordinatorObject(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AVSCoordinatorObject.init()();
  return v3;
}

uint64_t sub_23E813364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E82E3CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA38, &qword_23E830B80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  sub_23E8001E0(v1 + *(v12 + 20), v11, &qword_27E35AA38, &qword_23E830B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23E82E21C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23E82EBDC();
    v16 = sub_23E82E5BC();
    sub_23E82DFDC();

    sub_23E82E3BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23E81356C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AVSEnrollmentCoordinatorView(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_23E8188CC;
  a2[1] = v6;
}

uint64_t sub_23E8135EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for AVSEnrollmentCoordinatorView(0) + 24));
  v7 = v6[1];

  *v6 = sub_23E8188A4;
  v6[1] = v5;
  return result;
}

uint64_t AVSEnrollmentCoordinatorView.completionHandler.getter()
{
  v1 = (v0 + *(type metadata accessor for AVSEnrollmentCoordinatorView(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AVSEnrollmentCoordinatorView.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AVSEnrollmentCoordinatorView(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AVSEnrollmentCoordinatorView.init(completionHandler:axActionsDictionary:systemActionsDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_23E813328;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v11 = *(v10 + 20);
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA38, &qword_23E830B80);
  swift_storeEnumTagMultiPayload();
  v12 = (a5 + *(v10 + 24));
  *v12 = a1;
  v12[1] = a2;
  v13 = qword_27E35A1D0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_27E35D0C0;
  v18[0] = sub_23E80C0C0(a3);

  sub_23E815294(v18);

  v15 = *(v14 + 16);
  *(v14 + 16) = v18[0];

  v18[0] = sub_23E80C0C0(a4);

  sub_23E815294(v18);

  v16 = *(v14 + 24);
  *(v14 + 24) = v18[0];
}

uint64_t AVSEnrollmentCoordinatorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v19 = *(v3 - 8);
  v18[2] = *(v19 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  type metadata accessor for AVSCoordinatorObject(0);
  sub_23E816BF0(&qword_27E35A2E0, type metadata accessor for AVSCoordinatorObject);
  sub_23E82E19C();
  swift_getKeyPath();
  sub_23E82E25C();

  v27 = v29;
  v28 = v30;
  v20 = v1;
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A9D0, &qword_23E830AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA40, &qword_23E830B88);
  sub_23E7F5640(&qword_27E35AA48, &qword_27E35A9D0, &qword_23E830AA8);
  sub_23E7F5640(&qword_27E35AA50, &qword_27E35A9D0, &qword_23E830AA8);
  sub_23E7F5640(&qword_27E35AA58, &qword_27E35A9D0, &qword_23E830AA8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AA60, &qword_23E830B90);
  v10 = sub_23E816C60();
  v11 = sub_23E8170CC();
  v21 = v9;
  v22 = &type metadata for AVSCoordinatorObject.Stage;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v10;
  swift_getOpaqueTypeConformance2();
  sub_23E82E2CC();
  sub_23E817120(v1, v5, type metadata accessor for AVSEnrollmentCoordinatorView);
  v12 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v13 = swift_allocObject();
  sub_23E818C8C(v5, v13 + v12, type metadata accessor for AVSEnrollmentCoordinatorView);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAE8, &qword_23E830BB8) + 36));
  *v14 = sub_23E817188;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_23E817120(v1, v5, type metadata accessor for AVSEnrollmentCoordinatorView);
  v15 = swift_allocObject();
  sub_23E818C8C(v5, v15 + v12, type metadata accessor for AVSEnrollmentCoordinatorView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAF0, &qword_23E830BC0);
  v17 = (a1 + *(result + 36));
  *v17 = 0;
  v17[1] = 0;
  v17[2] = sub_23E8172DC;
  v17[3] = v15;
  return result;
}

uint64_t sub_23E813CB0(uint64_t a1)
{
  v2 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA60, &qword_23E830B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  v13 = 0;
  sub_23E813EA8(&v13, &v12[-v7]);
  sub_23E817120(a1, &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AVSEnrollmentCoordinatorView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23E818C8C(&v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for AVSEnrollmentCoordinatorView);
  sub_23E816C60();
  sub_23E8170CC();
  sub_23E82E74C();

  return sub_23E7F55E0(v8, &qword_27E35AA60, &qword_23E830B90);
}

uint64_t sub_23E813EA8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB80, &qword_23E830DE8);
  v4 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = (&v65 - v5);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAA8, &qword_23E830BA8);
  v6 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v74 = &v65 - v7;
  v70 = type metadata accessor for AVSCommandNameView();
  v8 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A468, &qword_23E830290);
  v10 = *(*(v67 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v73 = type metadata accessor for AVSCommandShortcutActionView(0);
  v15 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB88, &qword_23E830DF0);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v82 = (&v65 - v19);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB90, &qword_23E830DF8);
  v20 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v77 = &v65 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AB98, &qword_23E830E00);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v65 - v24);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA88, &qword_23E830BA0);
  v26 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v71 = &v65 - v27;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA78, &qword_23E830B98);
  v28 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v65 - v29;
  v30 = *a1;
  v31 = *v2;
  v32 = v2[1];
  v33 = *(v2 + 16);
  type metadata accessor for AVSCoordinatorObject(0);
  sub_23E816BF0(&qword_27E35A2E0, type metadata accessor for AVSCoordinatorObject);
  sub_23E82E18C();
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      *v17 = sub_23E82E24C();
      *(v17 + 1) = v48;
      *(v17 + 2) = sub_23E7F9FF4;
      *(v17 + 3) = 0;
      v17[32] = 0;
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_23E82E86C();
      v49 = v90;
      *(v17 + 40) = v89;
      *(v17 + 7) = v49;
      v50 = v73;
      v51 = *(v73 + 28);
      v52 = sub_23E82DDDC();
      (*(*(v52 - 8) + 56))(v14, 1, 1, v52);
      sub_23E8001E0(v14, v66, &qword_27E35A468, &qword_23E830290);
      sub_23E82E86C();
      sub_23E7F55E0(v14, &qword_27E35A468, &qword_23E830290);
      v53 = &v17[*(v50 + 32)];
      LOBYTE(v84) = 0;
      sub_23E82E86C();
      v54 = *(&v89 + 1);
      *v53 = v89;
      *(v53 + 1) = v54;
      sub_23E817120(v17, v25, type metadata accessor for AVSCommandShortcutActionView);
      swift_storeEnumTagMultiPayload();
      sub_23E816E34();
      sub_23E816BF0(&qword_27E35AA98, type metadata accessor for AVSCommandShortcutActionView);
      v55 = v71;
      sub_23E82E49C();
      sub_23E8001E0(v55, v77, &qword_27E35AA88, &qword_23E830BA0);
      swift_storeEnumTagMultiPayload();
      sub_23E816D78();
      sub_23E816E88();
      v56 = v79;
      sub_23E82E49C();
      sub_23E7F55E0(v55, &qword_27E35AA88, &qword_23E830BA0);
      sub_23E8001E0(v56, v82, &qword_27E35AA78, &qword_23E830B98);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAC8, &qword_23E830BB0);
      sub_23E816CEC();
      sub_23E816F98();
      sub_23E82E49C();
      sub_23E7F55E0(v56, &qword_27E35AA78, &qword_23E830B98);
      return sub_23E818C2C(v17, type metadata accessor for AVSCommandShortcutActionView);
    }

    else
    {
      if (v30 == 4)
      {
        v84 = sub_23E82E24C();
        v85 = v38;
        v86 = 0;
        v87 = 0;
        v88 = 0;
        sub_23E817024();
        sub_23E817078();

        sub_23E82E49C();
        v39 = v91;
        v40 = v90;
        v41 = v82;
        *v82 = v89;
        v41[1] = v40;
        *(v41 + 32) = v39;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAC8, &qword_23E830BB0);
        sub_23E816CEC();
        sub_23E816F98();
        sub_23E82E49C();
      }

      else
      {
        v59 = sub_23E82E24C();
        v61 = v60;
        LOBYTE(v84) = 0;
        sub_23E82E86C();
        v84 = v59;
        v85 = v61;
        v86 = v89;
        v87 = *(&v89 + 1);
        v88 = 1;
        sub_23E817024();
        sub_23E817078();

        sub_23E82E49C();
        v62 = v91;
        v63 = v90;
        v64 = v82;
        *v82 = v89;
        v64[1] = v63;
        *(v64 + 32) = v62;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAC8, &qword_23E830BB0);
        sub_23E816CEC();
        sub_23E816F98();
        sub_23E82E49C();
      }
    }
  }

  else
  {
    if (v30)
    {
      if (v30 == 1)
      {
        v34 = v68;
        sub_23E7F7D48(0, 0xE000000000000000, v68);
        sub_23E817120(v34, v72, type metadata accessor for AVSCommandNameView);
        swift_storeEnumTagMultiPayload();
        sub_23E816BF0(&qword_27E35AAB0, type metadata accessor for AVSCommandNameView);
        sub_23E816F44();
        v35 = v74;
        sub_23E82E49C();
        sub_23E8001E0(v35, v77, &qword_27E35AAA8, &qword_23E830BA8);
        swift_storeEnumTagMultiPayload();
        sub_23E816D78();
        sub_23E816E88();
        v36 = v79;
        sub_23E82E49C();
        sub_23E7F55E0(v35, &qword_27E35AAA8, &qword_23E830BA8);
        sub_23E8001E0(v36, v82, &qword_27E35AA78, &qword_23E830B98);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAC8, &qword_23E830BB0);
        sub_23E816CEC();
        sub_23E816F98();
        sub_23E82E49C();
        sub_23E7F55E0(v36, &qword_27E35AA78, &qword_23E830B98);
        return sub_23E818C2C(v34, type metadata accessor for AVSCommandNameView);
      }

      *v25 = sub_23E82E24C();
      v25[1] = v57;
      swift_storeEnumTagMultiPayload();
      sub_23E816E34();
      sub_23E816BF0(&qword_27E35AA98, type metadata accessor for AVSCommandShortcutActionView);

      v45 = v71;
      sub_23E82E49C();
      v46 = &qword_27E35AA88;
      v47 = &qword_23E830BA0;
      sub_23E8001E0(v45, v77, &qword_27E35AA88, &qword_23E830BA0);
    }

    else
    {
      v42 = sub_23E82E24C();
      v43 = v72;
      *v72 = v42;
      v43[1] = v44;
      swift_storeEnumTagMultiPayload();
      sub_23E816BF0(&qword_27E35AAB0, type metadata accessor for AVSCommandNameView);
      sub_23E816F44();

      v45 = v74;
      sub_23E82E49C();
      v46 = &qword_27E35AAA8;
      v47 = &qword_23E830BA8;
      sub_23E8001E0(v45, v77, &qword_27E35AAA8, &qword_23E830BA8);
    }

    swift_storeEnumTagMultiPayload();
    sub_23E816D78();
    sub_23E816E88();
    v58 = v79;
    sub_23E82E49C();
    sub_23E7F55E0(v45, v46, v47);
    sub_23E8001E0(v58, v82, &qword_27E35AA78, &qword_23E830B98);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AAC8, &qword_23E830BB0);
    sub_23E816CEC();
    sub_23E816F98();
    sub_23E82E49C();

    return sub_23E7F55E0(v58, &qword_27E35AA78, &qword_23E830B98);
  }
}

uint64_t sub_23E814BCC(uint64_t a1)
{
  v2 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for AVSCoordinatorObject(0);
  sub_23E816BF0(&qword_27E35A2E0, type metadata accessor for AVSCoordinatorObject);
  v8 = sub_23E82E18C();
  sub_23E817120(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AVSEnrollmentCoordinatorView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23E818C8C(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AVSEnrollmentCoordinatorView);
  v11 = (v8 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow);
  swift_beginAccess();
  v12 = v11[1];
  *v11 = sub_23E818A64;
  v11[1] = v10;
}

uint64_t sub_23E814D8C(uint64_t a1)
{
  v2 = sub_23E82E21C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E813364(v6);
  sub_23E82E20C();
  (*(v3 + 8))(v6, v2);
  v7 = a1 + *(type metadata accessor for AVSEnrollmentCoordinatorView(0) + 24);
  v8 = *(v7 + 8);
  return (*v7)();
}

uint64_t sub_23E814EA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E818DBC;

  return v7(a1);
}

uint64_t sub_23E814F9C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E815094;

  return v7(a1);
}

uint64_t sub_23E815094()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E81518C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E8151F4(uint64_t a1)
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
    sub_23E82ECDC();
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
  result = sub_23E82ED4C();
  *v1 = result;
  return result;
}

uint64_t sub_23E815294(void **a1)
{
  v2 = *(type metadata accessor for AvailableShortcutAction() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23E826874(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23E81533C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23E81533C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E82EEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AvailableShortcutAction();
        v6 = sub_23E82EB2C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AvailableShortcutAction() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23E815710(v8, v9, a1, v4);
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
    return sub_23E815468(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E815468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AvailableShortcutAction();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v33 - v17;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v40 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v38 = v21;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      sub_23E817120(v24, v18, type metadata accessor for AvailableShortcutAction);
      sub_23E817120(v21, v14, type metadata accessor for AvailableShortcutAction);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v18[v25 + 8];
      v28 = &v14[v25];
      if (v26 == *v28 && v27 == *(v28 + 1))
      {
        sub_23E818C2C(v14, type metadata accessor for AvailableShortcutAction);
        result = sub_23E818C2C(v18, type metadata accessor for AvailableShortcutAction);
LABEL_5:
        a3 = v39 + 1;
        v21 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_23E82EF0C();
      sub_23E818C2C(v14, type metadata accessor for AvailableShortcutAction);
      result = sub_23E818C2C(v18, type metadata accessor for AvailableShortcutAction);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v31 = v41;
      sub_23E818C8C(v24, v41, type metadata accessor for AvailableShortcutAction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23E818C8C(v31, v21, type metadata accessor for AvailableShortcutAction);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E815710(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = type metadata accessor for AvailableShortcutAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v145 = &v126 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v146 = &v126 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v144 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v143 = (&v126 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v132 = &v126 - v23;
  result = MEMORY[0x28223BE20](v22);
  v131 = &v126 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_111:
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_23E82684C(v29);
      v29 = result;
    }

    v149 = v29;
    v121 = *(v29 + 16);
    if (v121 >= 2)
    {
      while (*a3)
      {
        v122 = *(v29 + 16 * v121);
        v123 = v29;
        v124 = *(v29 + 16 * (v121 - 1) + 32);
        v29 = *(v29 + 16 * (v121 - 1) + 40);
        sub_23E8161A4(*a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v124, *a3 + *(v9 + 72) * v29, v30);
        if (v5)
        {
        }

        if (v29 < v122)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_23E82684C(v123);
        }

        if (v121 - 2 >= *(v123 + 2))
        {
          goto LABEL_137;
        }

        v125 = &v123[16 * v121];
        *v125 = v122;
        *(v125 + 1) = v29;
        v149 = v123;
        result = sub_23E8267C0(v121 - 1);
        v29 = v149;
        v121 = *(v149 + 16);
        if (v121 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v147 = v25;
  v127 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  v128 = v9;
  v148 = v8;
  while (1)
  {
    v30 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_37;
    }

    v139 = v27;
    a3 = *a3;
    v31 = *(v9 + 72);
    v141 = v28 + 1;
    v32 = v131;
    sub_23E817120(a3 + v31 * v30, v131, type metadata accessor for AvailableShortcutAction);
    v134 = v28;
    v142 = v31;
    v30 = v132;
    sub_23E817120(a3 + v31 * v28, v132, type metadata accessor for AvailableShortcutAction);
    v33 = *(v8 + 20);
    v34 = *(v32 + v33);
    v35 = *(v32 + v33 + 8);
    v36 = (v30 + v33);
    v37 = v34 == *v36 && v35 == v36[1];
    v130 = v5;
    LODWORD(v140) = v37 ? 0 : sub_23E82EF0C();
    v129 = v29;
    sub_23E818C2C(v132, type metadata accessor for AvailableShortcutAction);
    result = sub_23E818C2C(v131, type metadata accessor for AvailableShortcutAction);
    v38 = v134 + 2;
    v39 = v141;
    v40 = v142 * (v134 + 2);
    v41 = a3 + v40;
    v42 = v142 * v141;
    v43 = a3 + v142 * v141;
    do
    {
      v9 = v38;
      v29 = v39;
      v45 = v42;
      v5 = v40;
      if (v38 >= v139)
      {
        break;
      }

      a3 = v143;
      sub_23E817120(v41, v143, type metadata accessor for AvailableShortcutAction);
      v46 = v144;
      sub_23E817120(v43, v144, type metadata accessor for AvailableShortcutAction);
      v47 = *(v148 + 20);
      v48 = *(a3 + v47);
      v49 = *(a3 + v47 + 8);
      v50 = (v46 + v47);
      v51 = v48 == *v50 && v49 == v50[1];
      v44 = v51 ? 0 : sub_23E82EF0C();
      v30 = type metadata accessor for AvailableShortcutAction;
      sub_23E818C2C(v144, type metadata accessor for AvailableShortcutAction);
      result = sub_23E818C2C(v143, type metadata accessor for AvailableShortcutAction);
      v38 = v9 + 1;
      v41 += v142;
      v43 += v142;
      v39 = v29 + 1;
      v42 = v45 + v142;
      v40 = v5 + v142;
    }

    while (((v140 ^ v44) & 1) == 0);
    if (v140)
    {
      v52 = v134;
      if (v9 < v134)
      {
        goto LABEL_140;
      }

      if (v134 >= v9)
      {
        v30 = v9;
        v29 = v129;
        v5 = v130;
        a3 = v135;
        v9 = v128;
        v8 = v148;
        v28 = v134;
        goto LABEL_37;
      }

      v53 = v134 * v142;
      v8 = v148;
      do
      {
        if (v52 != v29)
        {
          v55 = *v135;
          if (!*v135)
          {
            goto LABEL_146;
          }

          sub_23E818C8C(v55 + v53, v138, type metadata accessor for AvailableShortcutAction);
          if (v53 < v45 || v55 + v53 >= (v55 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_23E818C8C(v138, v55 + v45, type metadata accessor for AvailableShortcutAction);
          v8 = v148;
        }

        ++v52;
        v45 -= v142;
        v5 -= v142;
        v53 += v142;
      }

      while (v52 < v29--);
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
    }

    else
    {
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
      v8 = v148;
    }

    v28 = v134;
LABEL_37:
    v56 = a3[1];
    if (v30 < v56)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_139;
      }

      if (v30 - v28 < v127)
      {
        v57 = v28 + v127;
        if (__OFADD__(v28, v127))
        {
          goto LABEL_141;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v28)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v30 != v57)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v30 < v28)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E8033B4(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_23E8033B4((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v28;
    *(v78 + 40) = v30;
    v141 = v30;
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v76)
    {
      while (1)
      {
        v79 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_80:
          if (v83)
          {
            goto LABEL_127;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_130;
          }

          v102 = (v29 + 32 + 16 * v79);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_134;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v79 = v77 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_94:
        if (v101)
        {
          goto LABEL_129;
        }

        v109 = v29 + 16 * v79;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_132;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_101:
        v117 = v79 - 1;
        if (v79 - 1 >= v77)
        {
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v118 = *(v29 + 32 + 16 * v117);
        v119 = *(v29 + 32 + 16 * v79 + 8);
        sub_23E8161A4(*a3 + *(v9 + 72) * v118, *a3 + *(v9 + 72) * *(v29 + 32 + 16 * v79), *a3 + *(v9 + 72) * v119, v30);
        if (v5)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_23E82684C(v29);
        }

        if (v117 >= *(v29 + 16))
        {
          goto LABEL_124;
        }

        v120 = v29 + 16 * v117;
        *(v120 + 32) = v118;
        *(v120 + 40) = v119;
        v149 = v29;
        result = sub_23E8267C0(v79);
        v29 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_125;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_126;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_128;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_131;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v79);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_135;
        }

        if (v82 < v116)
        {
          v79 = v77 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v141;
    v8 = v148;
    if (v141 >= v27)
    {
      goto LABEL_111;
    }
  }

  v129 = v29;
  v130 = v5;
  v58 = *a3;
  v59 = *(v9 + 72);
  v60 = *a3 + v59 * (v30 - 1);
  v61 = -v59;
  v134 = v28;
  v62 = v28 - v30;
  v136 = v59;
  v137 = v57;
  v63 = v58 + v30 * v59;
  v64 = v146;
  while (2)
  {
    v140 = v62;
    v141 = v30;
    v139 = v63;
    v65 = v63;
    v142 = v60;
LABEL_49:
    v66 = v147;
    sub_23E817120(v65, v147, type metadata accessor for AvailableShortcutAction);
    sub_23E817120(v60, v64, type metadata accessor for AvailableShortcutAction);
    v67 = *(v8 + 20);
    v68 = *(v66 + v67);
    v69 = *(v66 + v67 + 8);
    v70 = (v64 + v67);
    if (v68 == *v70 && v69 == v70[1])
    {
      sub_23E818C2C(v64, type metadata accessor for AvailableShortcutAction);
      sub_23E818C2C(v66, type metadata accessor for AvailableShortcutAction);
LABEL_47:
      v30 = v141 + 1;
      v60 = v142 + v136;
      v62 = v140 - 1;
      v63 = v139 + v136;
      if (v141 + 1 != v137)
      {
        continue;
      }

      v30 = v137;
      v29 = v129;
      v5 = v130;
      v28 = v134;
      a3 = v135;
      v9 = v128;
      goto LABEL_60;
    }

    break;
  }

  v72 = sub_23E82EF0C();
  sub_23E818C2C(v64, type metadata accessor for AvailableShortcutAction);
  result = sub_23E818C2C(v66, type metadata accessor for AvailableShortcutAction);
  if ((v72 & 1) == 0)
  {
    v8 = v148;
    goto LABEL_47;
  }

  v8 = v148;
  if (v58)
  {
    v73 = v145;
    sub_23E818C8C(v65, v145, type metadata accessor for AvailableShortcutAction);
    swift_arrayInitWithTakeFrontToBack();
    sub_23E818C8C(v73, v60, type metadata accessor for AvailableShortcutAction);
    v60 += v61;
    v65 += v61;
    v74 = __CFADD__(v62++, 1);
    v64 = v146;
    if (v74)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_23E8161A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v57 = type metadata accessor for AvailableShortcutAction();
  v7 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v55 = &v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v50 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = v58;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (v58 < a2 || a2 + v23 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = v58 + v23;
    if (v23 >= 1)
    {
      v34 = -v19;
      v35 = v58 + v23;
      do
      {
        v51 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v53 = v36;
        v54 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v61 = v36;
            v59 = v51;
            goto LABEL_69;
          }

          v38 = a3;
          v52 = v33;
          v39 = v34;
          v40 = v35 + v34;
          v41 = v35 + v34;
          v42 = v55;
          sub_23E817120(v41, v55, type metadata accessor for AvailableShortcutAction);
          v43 = v56;
          sub_23E817120(v37, v56, type metadata accessor for AvailableShortcutAction);
          v44 = *(v57 + 20);
          v45 = *(v42 + v44);
          v46 = *(v42 + v44 + 8);
          v47 = (v43 + v44);
          v48 = v45 == *v47 && v46 == v47[1];
          v49 = v48 ? 0 : sub_23E82EF0C();
          v34 = v39;
          a3 = v38 + v39;
          sub_23E818C2C(v56, type metadata accessor for AvailableShortcutAction);
          sub_23E818C2C(v55, type metadata accessor for AvailableShortcutAction);
          if (v49)
          {
            break;
          }

          v33 = v40;
          v37 = v54;
          if (v38 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v40;
          v36 = v53;
          if (v40 <= v58)
          {
            a2 = v53;
            goto LABEL_68;
          }
        }

        a2 = v54;
        if (v38 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
        }

        else
        {
          v33 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v58);
    }

LABEL_68:
    v61 = a2;
    v59 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (v58 < a1 || a1 + v22 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v58 + v22;
    v59 = v58 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_23E817120(a2, v17, type metadata accessor for AvailableShortcutAction);
        sub_23E817120(v58, v14, type metadata accessor for AvailableShortcutAction);
        v26 = *(v57 + 20);
        v27 = *&v17[v26];
        v28 = *&v17[v26 + 8];
        v29 = &v14[v26];
        if (v27 == *v29 && v28 == *(v29 + 1))
        {
          break;
        }

        v31 = sub_23E82EF0C();
        sub_23E818C2C(v14, type metadata accessor for AvailableShortcutAction);
        sub_23E818C2C(v17, type metadata accessor for AvailableShortcutAction);
        if ((v31 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_38:
        a1 += v19;
        v61 = a1;
        if (v58 >= v24 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_23E818C2C(v14, type metadata accessor for AvailableShortcutAction);
      sub_23E818C2C(v17, type metadata accessor for AvailableShortcutAction);
LABEL_30:
      v32 = v58 + v19;
      if (a1 < v58 || a1 >= v32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = v32;
      v58 = v32;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_23E816758(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_23E816758(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AvailableShortcutAction();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23E81683C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23E816930;

  return v6(v2 + 32);
}

uint64_t sub_23E816930()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23E816A44@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E8182CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    *a2 = *(v5 + a1 + 32);
    result = memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23E816ACC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_23E8182CC(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E816B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E801B00;

  return sub_23E812EAC(a1, v4, v5, v6);
}

uint64_t sub_23E816BF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E816C60()
{
  result = qword_27E35AA68;
  if (!qword_27E35AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AA60, &qword_23E830B90);
    sub_23E816CEC();
    sub_23E816F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AA68);
  }

  return result;
}

unint64_t sub_23E816CEC()
{
  result = qword_27E35AA70;
  if (!qword_27E35AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AA78, &qword_23E830B98);
    sub_23E816D78();
    sub_23E816E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AA70);
  }

  return result;
}

unint64_t sub_23E816D78()
{
  result = qword_27E35AA80;
  if (!qword_27E35AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AA88, &qword_23E830BA0);
    sub_23E816E34();
    sub_23E816BF0(&qword_27E35AA98, type metadata accessor for AVSCommandShortcutActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AA80);
  }

  return result;
}

unint64_t sub_23E816E34()
{
  result = qword_27E35AA90;
  if (!qword_27E35AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AA90);
  }

  return result;
}

unint64_t sub_23E816E88()
{
  result = qword_27E35AAA0;
  if (!qword_27E35AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AAA8, &qword_23E830BA8);
    sub_23E816BF0(&qword_27E35AAB0, type metadata accessor for AVSCommandNameView);
    sub_23E816F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAA0);
  }

  return result;
}

unint64_t sub_23E816F44()
{
  result = qword_27E35AAB8;
  if (!qword_27E35AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAB8);
  }

  return result;
}

unint64_t sub_23E816F98()
{
  result = qword_27E35AAC0;
  if (!qword_27E35AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AAC8, &qword_23E830BB0);
    sub_23E817024();
    sub_23E817078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAC0);
  }

  return result;
}

unint64_t sub_23E817024()
{
  result = qword_27E35AAD0;
  if (!qword_27E35AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAD0);
  }

  return result;
}

unint64_t sub_23E817078()
{
  result = qword_27E35AAD8;
  if (!qword_27E35AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAD8);
  }

  return result;
}

unint64_t sub_23E8170CC()
{
  result = qword_27E35AAE0;
  if (!qword_27E35AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAE0);
  }

  return result;
}

uint64_t sub_23E817120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = *(v0 + v4 + 16);
  sub_23E7F8354();
  v9 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA38, &qword_23E830B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23E82E21C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23E8172DC()
{
  v1 = type metadata accessor for AVSEnrollmentCoordinatorView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_23E81734C()
{
  result = qword_27E35AAF8;
  if (!qword_27E35AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AAF8);
  }

  return result;
}

void sub_23E8173C4()
{
  sub_23E817D50(319, &qword_27E35AB10, &qword_27E35A9D0, &qword_23E830AA8);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AdaptiveVoiceShortcut();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_23E817D50(319, &qword_27E35AB18, &qword_27E35AA10, &qword_23E830AB0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_23E817DA4(319, &qword_27E35AB20);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_23E817DA4(319, &qword_27E35AB28);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_23E817D50(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23E82E0EC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23E817DA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23E82E0EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AVSCoordinatorObject.Stage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AVSCoordinatorObject.Stage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23E817F68()
{
  sub_23E818004();
  if (v0 <= 0x3F)
  {
    sub_23E818098();
    if (v1 <= 0x3F)
    {
      sub_23E8014F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E818004()
{
  if (!qword_27E35AB48)
  {
    type metadata accessor for AVSCoordinatorObject(255);
    sub_23E816BF0(&qword_27E35A2E0, type metadata accessor for AVSCoordinatorObject);
    v0 = sub_23E82E1AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35AB48);
    }
  }
}

void sub_23E818098()
{
  if (!qword_27E35AB50)
  {
    sub_23E82E21C();
    v0 = sub_23E82E17C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35AB50);
    }
  }
}

unint64_t sub_23E8180F0()
{
  result = qword_27E35AB58;
  if (!qword_27E35AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AAF0, &qword_23E830BC0);
    sub_23E81817C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AB58);
  }

  return result;
}

unint64_t sub_23E81817C()
{
  result = qword_27E35AB60;
  if (!qword_27E35AB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AAE8, &qword_23E830BB8);
    sub_23E7F5640(&qword_27E35AB68, &qword_27E35AB70, &unk_23E830DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AB60);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E818254(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23E8182E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for AdaptiveVoiceShortcut();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23E818428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_23E8011D8(0, &qword_27E35AB78, 0x277CCABB0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23E82ECDC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23E82ECDC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23E818538(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23E82ECDC();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_23E82ECDC();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_23E8151F4(result);

  return sub_23E818428(v4, v2, 0);
}

uint64_t sub_23E8188A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E8188CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E8188F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E801C00;

  return sub_23E814F9C(a1, v5);
}

uint64_t sub_23E8189AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E801B00;

  return sub_23E814F9C(a1, v5);
}

uint64_t sub_23E818A7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AVSEnrollmentCoordinatorView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23E818AF0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AVSEnrollmentCoordinatorView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *a1;
  return sub_23E813EA8(&v7, a2);
}

uint64_t sub_23E818B74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E801C00;

  return sub_23E81683C(a1, v5);
}

uint64_t sub_23E818C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E818C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E818CF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23E818D00(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E801C00;

  return sub_23E814EA4(a1, v5);
}

uint64_t sub_23E818E04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[4] = a1;
  v20[6] = a2;
  v2 = sub_23E82DF7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v20[5] = v20 - v9;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v10 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v11 = qword_27E35D0B8;
    v12 = qword_27E35D0B8;
  }

  else
  {
    v12 = [objc_opt_self() mainBundle];
    v11 = 0;
  }

  v13 = v11;
  v14 = sub_23E82DCDC();
  v20[2] = v15;
  v20[3] = v14;

  sub_23E81E284(0xD000000000000013);
  if (!v10)
  {
    v13 = [objc_opt_self() mainBundle];
  }

  v16 = sub_23E82DCDC();
  v20[0] = v17;
  v20[1] = v16;

  MEMORY[0x28223BE20](v18);
  v20[7] = MEMORY[0x277D84F90];
  sub_23E8199D8(&qword_27E35A228, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0);
  sub_23E82ECAC();
  sub_23E82E8EC();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABC0, &unk_23E830EE0);
  sub_23E81988C();
  return sub_23E82DF5C();
}

uint64_t sub_23E819240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = sub_23E82DFAC();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABC0, &unk_23E830EE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  sub_23E82E8BC();
  sub_23E82E15C();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  sub_23E8199D8(&qword_27E35A280, MEMORY[0x277CE76F0]);
  v21 = v30;
  sub_23E82E6EC();
  (*(v31 + 8))(v9, v21);
  (*(v11 + 8))(v14, v10);
  LOBYTE(v14) = sub_23E82E5EC();
  sub_23E82E10C();
  v22 = &v19[*(v15 + 36)];
  *v22 = v14;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v32;
  sub_23E7F274C(v19, v32);
  return (*(v16 + 56))(v27, 0, 1, v15);
}

uint64_t sub_23E8195B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_23E82E8BC();
}

uint64_t sub_23E81965C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow;
  swift_beginAccess();
  v4 = *v2;
  v3 = *(v2 + 8);

  v4(v5);
}

uint64_t sub_23E8196E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABA8, &qword_23E830EC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-v3];
  v6 = *v0;
  v5 = v0[1];
  *v4 = sub_23E82E48C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABB0, &unk_23E830ED0);
  sub_23E818E04(v5, &v4[*(v7 + 44)]);
  v10 = v6;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  sub_23E7F5640(&qword_27E35ABB8, &qword_27E35ABA8, &qword_23E830EC8);
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  sub_23E82E7BC();
  return sub_23E7F26AC(v4);
}

unint64_t sub_23E81988C()
{
  result = qword_27E35ABC8;
  if (!qword_27E35ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ABC0, &unk_23E830EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
    sub_23E82DFAC();
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
    sub_23E8199D8(&qword_27E35A280, MEMORY[0x277CE76F0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ABC8);
  }

  return result;
}

uint64_t sub_23E8199D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E819A20()
{
  v2 = v0;
  v135[3] = *MEMORY[0x277D85DE8];
  v3 = sub_23E82E00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v129 = &v122 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v128 = &v122 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v122 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v122 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v122 - v18;
  *(v2 + 67) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v20 = 0x277CB8000uLL;
  if (AXDeviceSupportsAudioSessionForIndependentRoute())
  {
    v21 = [objc_allocWithZone(MEMORY[0x277CB83F8]) initSessionForIndependentInputRoute];
    *(v2 + 24) = v21;
    [*(v2 + 16) setAudioSession_];
  }

  else
  {
    *(v2 + 24) = [objc_opt_self() sharedInstance];
  }

  *(v2 + 32) = [*(v2 + 16) inputNode];
  if ([objc_opt_self() supportsVirtualAudioDevice])
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v3, qword_27E35A958);
    swift_beginAccess();
    (*(v4 + 16))(v19, v22, v3);
    v23 = sub_23E82DFEC();
    v1 = sub_23E82EBEC();
    if (os_log_type_enabled(v23, v1))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23E7EF000, v23, v1, "AVS supports virtual audio device", v24, 2u);
      MEMORY[0x23EF15860](v24, -1, -1);
    }

    (*(v4 + 8))(v19, v3);
    sub_23E81BB54();
  }

  else
  {
    v25 = AXDeviceSupportsAudioSessionForIndependentRoute();
    v26 = MEMORY[0x277CB8038];
    if (!v25)
    {
      v26 = MEMORY[0x277CB8028];
    }

    v27 = *v26;
    v28 = *(v2 + 24);
    v29 = *MEMORY[0x277CB80A8];
    v135[0] = 0;
    if ([v28 setCategory:v27 mode:v29 options:41 error:v135])
    {
      v30 = v135[0];
    }

    else
    {
      v31 = v135[0];
      v1 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 != -1)
      {
LABEL_51:
        swift_once();
      }

      v32 = __swift_project_value_buffer(v3, qword_27E35A958);
      swift_beginAccess();
      (*(v4 + 16))(v17, v32, v3);
      v33 = sub_23E82DFEC();
      v34 = sub_23E82EBCC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_23E7EF000, v33, v34, "AVS unable to set audio session category to measurement mode", v35, 2u);
        MEMORY[0x23EF15860](v35, -1, -1);
      }

      (*(v4 + 8))(v17, v3);
    }
  }

  v36 = [*(v2 + 24) availableInputs];
  if (v36)
  {
    v37 = v36;
    sub_23E8011D8(0, &qword_27E35ABE8, 0x277CB8408);
    v17 = sub_23E82EB0C();

    if (v17 >> 62)
    {
      goto LABEL_47;
    }

    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_48:

      goto LABEL_71;
    }

LABEL_21:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x23EF14DD0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v38 = *(v17 + 32);
    }

    v39 = v38;

    v40 = [v39 dataSources];
    if (!v40)
    {
      goto LABEL_70;
    }

    v17 = v40;
    v126 = v39;
    v124 = v8;
    v125 = v4;
    sub_23E8011D8(0, &qword_27E35ABF0, 0x277CB8400);
    v41 = sub_23E82EB0C();

    v134[0] = MEMORY[0x277D84F90];
    if (!(v41 >> 62))
    {
      v8 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    v8 = sub_23E82ECDC();
    if (v8)
    {
LABEL_27:
      v122 = v3;
      v123 = v2;
      v1 = 0;
      v131 = v41 & 0xC000000000000001;
      v3 = v41 & 0xFFFFFFFFFFFFFF8;
      v130 = *MEMORY[0x277CB8108];
      while (1)
      {
        if (v131)
        {
          v42 = MEMORY[0x23EF14DD0](v1, v41);
        }

        else
        {
          if (v1 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v42 = *(v41 + 8 * v1 + 32);
        }

        v43 = v42;
        v2 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          if (!sub_23E82ECDC())
          {
            goto LABEL_48;
          }

          goto LABEL_21;
        }

        v44 = [v42 orientation];
        if (v44)
        {
          v17 = v44;
          v45 = sub_23E82EA6C();
          v20 = v46;
          v47 = sub_23E82EA6C();
          v4 = v48;
          if (v45 == v47 && v20 == v48)
          {

LABEL_42:
            v17 = v134;
            sub_23E82ED8C();
            v51 = *(v134[0] + 2);
            sub_23E82EDAC();
            sub_23E82EDBC();
            sub_23E82ED9C();
            goto LABEL_29;
          }

          v50 = sub_23E82EF0C();

          if (v50)
          {
            goto LABEL_42;
          }
        }

LABEL_29:
        ++v1;
        if (v2 == v8)
        {
          v52 = v134[0];
          v2 = v123;
          v20 = 0x277CB8000;
          v3 = v122;
          goto LABEL_54;
        }
      }
    }

LABEL_53:
    v52 = MEMORY[0x277D84F90];
LABEL_54:

    v4 = v125;
    v8 = v124;
    if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
    {
      v39 = v126;
      if (*(v52 + 16))
      {
        goto LABEL_57;
      }

LABEL_69:

LABEL_70:

      goto LABEL_71;
    }

    v72 = sub_23E82ECDC();
    v39 = v126;
    if (!v72)
    {
      goto LABEL_69;
    }

LABEL_57:
    if ((v52 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x23EF14DD0](0, v52);
      goto LABEL_60;
    }

    if (*(v52 + 16))
    {
      v53 = *(v52 + 32);
LABEL_60:
      v54 = v53;

      v55 = *(v2 + 24);
      v134[0] = 0;
      v56 = [v55 setPreferredInput:v39 error:v134];
      v57 = v134[0];
      if (v56)
      {
        v58 = *(v2 + 24);
        v134[0] = 0;
        v59 = v57;
        v60 = [v58 setInputDataSource:v54 error:v134];
        v57 = v134[0];
        if (v60)
        {
          v61 = v134[0];

          goto LABEL_71;
        }
      }

      v62 = v57;
      v52 = sub_23E82DCEC();

      swift_willThrow();
      if (qword_27E35A1C0 == -1)
      {
LABEL_64:
        v63 = __swift_project_value_buffer(v3, qword_27E35A958);
        swift_beginAccess();
        (*(v4 + 16))(v127, v63, v3);
        v64 = v52;
        v65 = sub_23E82DFEC();
        v66 = sub_23E82EBCC();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138412290;
          v69 = v52;
          v70 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 4) = v70;
          *v68 = v70;
          _os_log_impl(&dword_23E7EF000, v65, v66, "AVS unable to set prefered input data source %@", v67, 0xCu);
          sub_23E7F55E0(v68, &unk_27E35A870, &qword_23E8308E0);
          MEMORY[0x23EF15860](v68, -1, -1);
          MEMORY[0x23EF15860](v67, -1, -1);
          v71 = v65;
          v65 = v126;
        }

        else
        {
          v71 = v126;
        }

        (*(v4 + 8))(v127, v3);
        goto LABEL_71;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_64;
  }

LABEL_71:
  v73 = *(v2 + 24);
  v74 = sub_23E82EA5C();
  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v134[0] = 0;
  v76 = [v73 setMXSessionProperty:v74 value:v75 error:v134];

  if (v76)
  {
    v77 = v134[0];
  }

  else
  {
    v78 = v134[0];
    v79 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v3, qword_27E35A958);
    swift_beginAccess();
    (*(v4 + 16))(v128, v80, v3);
    v81 = v79;
    v82 = sub_23E82DFEC();
    v83 = sub_23E82EBCC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = v79;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_23E7EF000, v82, v83, "AVS unable to set kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl on audio session %@ ", v84, 0xCu);
      sub_23E7F55E0(v85, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v85, -1, -1);
      MEMORY[0x23EF15860](v84, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v128, v3);
  }

  v88 = *(v2 + 24);
  v133[0] = 0;
  if ([v88 setAllowHapticsAndSystemSoundsDuringRecording:1 error:{v133, v122, v123}])
  {
    v89 = v133[0];
  }

  else
  {
    v90 = v133[0];
    v91 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v92 = __swift_project_value_buffer(v3, qword_27E35A958);
    swift_beginAccess();
    (*(v4 + 16))(v129, v92, v3);
    v93 = v91;
    v94 = sub_23E82DFEC();
    v95 = sub_23E82EBCC();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      v98 = v91;
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v99;
      *v97 = v99;
      _os_log_impl(&dword_23E7EF000, v94, v95, "AVS unable to set allow haptics and system sounds during recording %@ ", v96, 0xCu);
      sub_23E7F55E0(v97, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v97, -1, -1);
      MEMORY[0x23EF15860](v96, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v129, v3);
  }

  v100 = *(v2 + 24);
  v132[0] = 0;
  if ([v100 setPrefersNoInterruptionsFromSystemAlerts:1 error:v132])
  {
    v101 = v132[0];
    if (*(v2 + 81))
    {
      goto LABEL_97;
    }

LABEL_96:
    v112 = [objc_opt_self() defaultCenter];
    v113 = *MEMORY[0x277CB8068];
    v114 = *(v20 + 1016);
    v115 = [objc_opt_self() sharedInstance];
    [v112 addObserver:v2 selector:sel_handleAudioSessionInterruptionWithNotification_ name:v113 object:v115];

    *(v2 + 81) = 1;
    goto LABEL_97;
  }

  v102 = v132[0];
  v103 = sub_23E82DCEC();

  swift_willThrow();
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v104 = __swift_project_value_buffer(v3, qword_27E35A958);
  swift_beginAccess();
  (*(v4 + 16))(v8, v104, v3);
  v105 = v103;
  v106 = sub_23E82DFEC();
  v107 = sub_23E82EBCC();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    *v108 = 138412290;
    v110 = v103;
    v111 = _swift_stdlib_bridgeErrorToNSError();
    *(v108 + 4) = v111;
    *v109 = v111;
    _os_log_impl(&dword_23E7EF000, v106, v107, "AVS unable to set prefers no interruptions from system alerts: %@", v108, 0xCu);
    sub_23E7F55E0(v109, &unk_27E35A870, &qword_23E8308E0);
    MEMORY[0x23EF15860](v109, -1, -1);
    MEMORY[0x23EF15860](v108, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v8, v3);
  if ((*(v2 + 81) & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_97:
  if ((*(v2 + 82) & 1) == 0)
  {
    v116 = [objc_opt_self() defaultCenter];
    v117 = *MEMORY[0x277CB80A0];
    v118 = *(v20 + 1016);
    v119 = [objc_opt_self() sharedInstance];
    [v116 addObserver:v2 selector:sel_handleAudioSessionResetWithNotification_ name:v117 object:v119];

    *(v2 + 82) = 1;
  }

  v120 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23E81AB70()
{
  if (*(v0 + 81) == 1)
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = *MEMORY[0x277CB8068];
    v3 = [objc_opt_self() sharedInstance];
    [v1 removeObserver:v0 name:v2 object:v3];

    *(v0 + 81) = 0;
  }

  if (*(v0 + 82) == 1)
  {
    v4 = [objc_opt_self() defaultCenter];
    v5 = *MEMORY[0x277CB80A0];
    v6 = [objc_opt_self() sharedInstance];
    [v4 removeObserver:v0 name:v5 object:v6];

    *(v0 + 82) = 0;
  }

  sub_23E7F55E0(v0 + 40, &qword_27E35AA28, &unk_23E830AC0);
  return v0;
}

uint64_t sub_23E81ACDC()
{
  sub_23E81AB70();

  return MEMORY[0x2821FE8D8](v0, 83, 7);
}

uint64_t sub_23E81AD10()
{
  v1 = v0;
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = v32 - v13;
  if (*(v1 + 80))
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    (*(v3 + 16))(v8, v15, v2);
    v16 = sub_23E82DFEC();
    v17 = sub_23E82EBEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23E7EF000, v16, v17, "AVS attempted to start listening but it is already actively listening", v18, 2u);
      MEMORY[0x23EF15860](v18, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v32[1] = v12;
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    v21 = *(v3 + 16);
    v21(v14, v20, v2);
    v22 = sub_23E82DFEC();
    v23 = sub_23E82EBEC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32[0] = v1;
      v25 = v3;
      v26 = v24;
      *v24 = 0;
      _os_log_impl(&dword_23E7EF000, v22, v23, "Will start listening", v24, 2u);
      v27 = v26;
      v3 = v25;
      v1 = v32[0];
      MEMORY[0x23EF15860](v27, -1, -1);
    }

    v28 = *(v3 + 8);
    v28(v14, v2);
    sub_23E81BE84();
    v21(v11, v20, v2);
    v29 = sub_23E82DFEC();
    v30 = sub_23E82EBEC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23E7EF000, v29, v30, "AVS [AVS Audio Engine] started listening successfully", v31, 2u);
      MEMORY[0x23EF15860](v31, -1, -1);
    }

    result = (v28)(v11, v2);
    *(v1 + 80) = 1;
  }

  return result;
}

uint64_t sub_23E81B214()
{
  v1 = v0;
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v34 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = v34 - v13;
  if (*(v1 + 80) == 1)
  {
    v34[1] = v12;
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    v16 = v3[2];
    v16(v14, v15, v2);
    v17 = sub_23E82DFEC();
    v18 = sub_23E82EBEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34[0] = v11;
      v20 = v1;
      v21 = v3;
      v22 = v19;
      *v19 = 0;
      _os_log_impl(&dword_23E7EF000, v17, v18, "Will stop listening", v19, 2u);
      v23 = v22;
      v3 = v21;
      v1 = v20;
      v11 = v34[0];
      MEMORY[0x23EF15860](v23, -1, -1);
    }

    v24 = v3[1];
    v24(v14, v2);
    sub_23E81CE54();
    v16(v11, v15, v2);
    v30 = sub_23E82DFEC();
    v31 = sub_23E82EBEC();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23E7EF000, v30, v31, "AVS [AVS Audio Provider] stopped listening successfully", v33, 2u);
      MEMORY[0x23EF15860](v33, -1, -1);
    }

    result = (v24)(v11, v2);
    *(v1 + 80) = 0;
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    (v3[2])(v8, v25, v2);
    v26 = sub_23E82DFEC();
    v27 = sub_23E82EBEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23E7EF000, v26, v27, "AVS attempted to stop listening but it is not actively listening", v28, 2u);
      MEMORY[0x23EF15860](v28, -1, -1);
    }

    return (v3[1])(v8, v2);
  }

  return result;
}

id sub_23E81B720()
{
  v1 = v0;
  v31[3] = *MEMORY[0x277D85DE8];
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  if (![*(v1 + 24) isActive])
  {
    result = AXDeviceIsUnlocked();
    if (result)
    {
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v2, qword_27E35A958);
      swift_beginAccess();
      (*(v3 + 16))(v9, v15, v2);
      v16 = sub_23E82DFEC();
      v17 = sub_23E82EBEC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23E7EF000, v16, v17, "Session is not active, restarting", v18, 2u);
        MEMORY[0x23EF15860](v18, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      result = sub_23E81AD10();
    }

    goto LABEL_18;
  }

  v10 = *(v1 + 16);
  v31[0] = 0;
  v11 = [v10 startAndReturnError_];
  v12 = v31[0];
  if (!v11)
  {
    v30[0] = v31[0];
    v19 = v31[0];
    v20 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v2, qword_27E35A958);
    swift_beginAccess();
    (*(v3 + 16))(v7, v21, v2);
    v22 = v20;
    v23 = sub_23E82DFEC();
    v24 = sub_23E82EBCC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v20;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_23E7EF000, v23, v24, "AVS unable to resume listening %@", v25, 0xCu);
      sub_23E7F55E0(v26, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v26, -1, -1);
      MEMORY[0x23EF15860](v25, -1, -1);
    }

    else
    {
    }

    result = (*(v3 + 8))(v7, v2);
LABEL_18:
    v29 = *MEMORY[0x277D85DE8];
    return result;
  }

  *(v1 + 80) = 1;
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_23E81BB54()
{
  v27[3] = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CB8410]) init];
  [v6 setRouteControlOptions_];
  v7 = *(v0 + 24);
  v8 = *MEMORY[0x277CB8038];
  v9 = *MEMORY[0x277CB80A8];
  v27[0] = 0;
  v10 = [v7 setCategory:v8 mode:v9 options:131073 error:v27];
  v11 = v27[0];
  if (v10 && (v27[0] = 0, v12 = v11, v13 = [v7 setPreferredRouteControlConfig:v6 error:v27], v11 = v27[0], v13))
  {
    v14 = v27[0];
  }

  else
  {
    v15 = v11;
    v16 = sub_23E82DCEC();

    swift_willThrow();
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v1, qword_27E35A958);
    swift_beginAccess();
    (*(v2 + 16))(v5, v17, v1);
    v18 = v16;
    v19 = sub_23E82DFEC();
    v20 = sub_23E82EBCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_23E7EF000, v19, v20, "Error setting up echo cancelled independent route for AVS. %@", v21, 0xCu);
      sub_23E7F55E0(v22, &unk_27E35A870, &qword_23E8308E0);
      MEMORY[0x23EF15860](v22, -1, -1);
      MEMORY[0x23EF15860](v21, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_23E81BE84()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_23E82E00C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  aBlock[0] = 0;
  if ([v6 setActive:1 error:aBlock])
  {
    v7 = *(v0 + 16);
    v8 = aBlock[0];
    v9 = [v7 attachedNodes];
    sub_23E8011D8(0, &qword_27E35ABD8, 0x277CB83B8);
    sub_23E81E188();
    v10 = sub_23E82EBBC();

    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_23E82ECDC();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    if (v11 >= 1)
    {
      [*(v0 + 32) removeTapOnBus_];
    }

    v13 = [*(v0 + 32) inputFormatForBus_];
    v14 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
    if (!v14)
    {
LABEL_12:

      goto LABEL_20;
    }

    v15 = v14;
    v16 = objc_allocWithZone(MEMORY[0x277CB8380]);
    v17 = v15;
    v18 = [v16 initFromFormat:v13 toFormat:v17];
    if (v18)
    {
      v19 = v18;

      v34 = v7;
      v20 = *(v0 + 32);
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = v17;
      v22[3] = v19;
      v22[4] = v21;
      aBlock[4] = sub_23E81E1F0;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23E81C968;
      aBlock[3] = &block_descriptor_30;
      v23 = _Block_copy(aBlock);
      v24 = v17;
      v25 = v20;
      v26 = v13;
      v13 = v19;

      [v25 installTapOnBus:0 bufferSize:0x2000 format:v26 block:v23];
      _Block_release(v23);

      aBlock[0] = 0;
      if (![v34 startAndReturnError_])
      {
        v32 = aBlock[0];
        sub_23E82DCEC();

        swift_willThrow();
        goto LABEL_20;
      }

      v27 = aBlock[0];

      goto LABEL_12;
    }

    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v1, qword_27E35A958);
    swift_beginAccess();
    (*(v2 + 16))(v5, v28, v1);
    v29 = sub_23E82DFEC();
    v30 = sub_23E82EBCC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23E7EF000, v29, v30, "AVS [AVS Audio Provider] unable to create converter", v31, 2u);
      MEMORY[0x23EF15860](v31, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v12 = aBlock[0];
    sub_23E82DCEC();

    swift_willThrow();
  }

LABEL_20:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_23E81C37C(void *a1, void *a2, void *a3, void *a4)
{
  v39 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v7 = sub_23E82E00C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;

  v14 = a1;
  [a3 sampleRate];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v15 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= 4294967300.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = a2;
  v16 = v15 * [v14 frameLength];
  if ((v16 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = [v14 format];
  [v17 sampleRate];
  v19 = v18;
  v20 = v18;

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v19 >= 4294967300.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v19)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = v19;
  v22 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:a3 frameCapacity:v16 / v21];
  if (!v22)
  {
    if (qword_27E35A1C0 == -1)
    {
LABEL_14:
      v32 = __swift_project_value_buffer(v7, qword_27E35A958);
      swift_beginAccess();
      (*(v8 + 16))(v11, v32, v7);
      v33 = sub_23E82DFEC();
      v34 = sub_23E82EBCC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_23E7EF000, v33, v34, "AVS [AVS Audio Provider] unable to convert buffer to output format", v35, 2u);
        MEMORY[0x23EF15860](v35, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v7);
      goto LABEL_19;
    }

LABEL_31:
    swift_once();
    goto LABEL_14;
  }

  v23 = v22;
  v45 = sub_23E81E1FC;
  v46 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E81E994;
  v44 = &block_descriptor_39;
  v24 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v39 convertToBuffer:v23 error:aBlock withInputFromBlock:v24];
  _Block_release(v24);
  v25 = aBlock[0];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_19:

    goto LABEL_22;
  }

  v27 = Strong;
  v28 = v25;
  v29 = [v38 hostTime];
  swift_beginAccess();
  sub_23E81E204(v27 + 40, aBlock);
  if (v44)
  {
    sub_23E818254(aBlock, v40);
    sub_23E7F55E0(aBlock, &qword_27E35AA28, &unk_23E830AC0);
    v30 = v41;
    v31 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v31 + 8))(v23, v29, v30, v31);

    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {

    sub_23E7F55E0(aBlock, &qword_27E35AA28, &unk_23E830AC0);
  }

LABEL_22:
  v36 = *MEMORY[0x277D85DE8];
}

void *sub_23E81C8DC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    *a2 = 0;
    swift_beginAccess();
    *(a3 + 16) = 0;
    v7 = a4;
  }

  else
  {
    a4 = 0;
    *a2 = 1;
  }

  return a4;
}

void sub_23E81C968(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void sub_23E81C9EC(uint64_t a1)
{
  v32[2] = a1;
  v36[5] = *MEMORY[0x277D85DE8];
  v1 = sub_23E82DCFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A7E0, &qword_23E830890);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v32 - v8;
  v10 = sub_23E82DD3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - v16;
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);

  sub_23E82DD2C();
  (*(v11 + 16))(v15, v17, v10);
  v18 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v19 = v32[3];
  v20 = sub_23E81DC9C(v15, 3, 0);
  if (v19)
  {
    goto LABEL_9;
  }

  v21 = v20;
  v22 = v32[1];
  v23 = [v20 processingFormat];
  v24 = [v21 length];
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (HIDWORD(v24))
  {
    goto LABEL_13;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v23 frameCapacity:v24];

  if (v25)
  {
    v36[0] = 0;
    if ([v21 readIntoBuffer:v25 error:v36])
    {
      v26 = v36[0];
      v27 = mach_absolute_time();
      swift_beginAccess();
      sub_23E81E204(v22 + 40, v36);
      if (v36[3])
      {
        sub_23E818254(v36, v33);
        sub_23E7F55E0(v36, &qword_27E35AA28, &unk_23E830AC0);
        v28 = v34;
        v29 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v29 + 8))(v25, v27, v28, v29);

        (*(v11 + 8))(v17, v10);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }

      else
      {

        (*(v11 + 8))(v17, v10);
        sub_23E7F55E0(v36, &qword_27E35AA28, &unk_23E830AC0);
      }

      goto LABEL_10;
    }

    v30 = v36[0];
    sub_23E82DCEC();

    swift_willThrow();
LABEL_9:
    (*(v11 + 8))(v17, v10);
LABEL_10:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

id sub_23E81CE54()
{
  v5[1] = *MEMORY[0x277D85DE8];
  [*(v0 + 32) removeTapOnBus_];
  [*(v0 + 16) stop];
  v1 = *(v0 + 24);
  v5[0] = 0;
  if ([v1 setActive:0 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_23E82DCEC();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E81CF24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23E82DCCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23E82E00C();
  v53 = *(v9 - 8);
  v10 = v53[8];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v44[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v44[-v17];
  result = sub_23E82DCBC();
  if (result)
  {
    v20 = result;
    v21 = *MEMORY[0x277CB8080];
    v54 = sub_23E82EA6C();
    v55 = v22;
    sub_23E82ED0C();
    if (*(v20 + 16) && (v23 = sub_23E81DEB8(v56), (v24 & 1) != 0))
    {
      sub_23E81DF50(*(v20 + 56) + 32 * v23, v57);
      sub_23E81DEFC(v56);

      result = swift_dynamicCast();
      if (result)
      {
        v52 = v54;
        if (qword_27E35A1C0 != -1)
        {
          swift_once();
        }

        v25 = __swift_project_value_buffer(v9, qword_27E35A958);
        swift_beginAccess();
        v26 = v53[2];
        v50 = v53 + 2;
        v51 = v25;
        v49 = v26;
        v26(v18, v25, v9);
        (*(v5 + 16))(v8, a1, v4);
        v27 = sub_23E82DFEC();
        v28 = sub_23E82EBEC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v46 = v27;
          v30 = v29;
          v47 = swift_slowAlloc();
          v57[0] = v47;
          *v30 = 136315138;
          sub_23E81DDF8(&qword_27E35ABD0, MEMORY[0x277CC8900]);
          v45 = v28;
          v31 = sub_23E82EEFC();
          v48 = v2;
          v33 = v32;
          (*(v5 + 8))(v8, v4);
          v34 = sub_23E8257E0(v31, v33, v57);

          *(v30 + 4) = v34;
          v35 = v46;
          _os_log_impl(&dword_23E7EF000, v46, v45, "AVS - handling audio session interruption - %s", v30, 0xCu);
          v36 = v47;
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x23EF15860](v36, -1, -1);
          MEMORY[0x23EF15860](v30, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v8, v4);
        }

        v37 = v53[1];
        result = v37(v18, v9);
        if (v52)
        {
          if (v52 == 1)
          {
            v49(v16, v51, v9);
            v38 = sub_23E82DFEC();
            v39 = sub_23E82EBEC();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              *v40 = 0;
              _os_log_impl(&dword_23E7EF000, v38, v39, "AVS - Stopped listening due to interruption", v40, 2u);
              MEMORY[0x23EF15860](v40, -1, -1);
            }

            v37(v16, v9);
            return sub_23E81B214();
          }
        }

        else
        {
          v49(v13, v51, v9);
          v41 = sub_23E82DFEC();
          v42 = sub_23E82EBEC();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_23E7EF000, v41, v42, "AVS - Interruption ended. Started listening again.", v43, 2u);
            MEMORY[0x23EF15860](v43, -1, -1);
          }

          v37(v13, v9);
          return sub_23E81AD10();
        }
      }
    }

    else
    {

      return sub_23E81DEFC(v56);
    }
  }

  return result;
}

void sub_23E81D508(uint64_t a1)
{
  v2 = sub_23E82E9BC();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_23E82E9EC();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23E82EA0C();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v38 - v13;
  v14 = sub_23E82DCCC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v47) = sub_23E82EBCC();
  v19 = AXLogAVS();
  if (v19)
  {
    v20 = v19;
    (*(v15 + 16))(v18, a1, v14);
    v21 = os_log_type_enabled(v20, v47);
    v38 = v6;
    v39 = v5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      sub_23E81DDF8(&qword_27E35ABD0, MEMORY[0x277CC8900]);
      v24 = sub_23E82EEFC();
      v25 = v9;
      v26 = v2;
      v28 = v27;
      (*(v15 + 8))(v18, v14);
      v29 = sub_23E8257E0(v24, v28, aBlock);
      v2 = v26;
      v9 = v25;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_23E7EF000, v20, v47, "AVS [AVS Audio Provider]  AudioSession reset: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23EF15860](v23, -1, -1);
      MEMORY[0x23EF15860](v22, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v30 = v46;
    if (*(v46 + 80) == 1)
    {
      sub_23E81B214();
      sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
      v31 = sub_23E82EC0C();
      v32 = v41;
      sub_23E82E9FC();
      v33 = v40;
      sub_23E82EA1C();
      v47 = *(v9 + 8);
      v34 = v43;
      v47(v32, v43);
      aBlock[4] = sub_23E81DC1C;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23E826F04;
      aBlock[3] = &block_descriptor_2;
      v35 = _Block_copy(aBlock);

      v36 = v45;
      sub_23E82E9DC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23E81DDF8(&qword_27E35A3D0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
      sub_23E81DC38();
      v37 = v39;
      sub_23E82ECAC();
      MEMORY[0x23EF14C90](v33, v36, v37, v35);
      _Block_release(v35);

      (*(v44 + 8))(v37, v2);
      (*(v38 + 8))(v36, v42);
      v47(v33, v34);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E81DB00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_23E82DCCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DCAC();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23E81DC38()
{
  result = qword_27E35A3E0;
  if (!qword_27E35A3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A3D8, &qword_23E830410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3E0);
  }

  return result;
}

id sub_23E81DC9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_23E82DD1C();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_23E82DD3C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_23E82DCEC();

    swift_willThrow();
    v15 = sub_23E82DD3C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_23E81DDF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23E81DE40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23E82EF2C();
  sub_23E82EABC();
  v6 = sub_23E82EF4C();

  return sub_23E81DFAC(a1, a2, v6);
}

unint64_t sub_23E81DEB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23E82ECEC();

  return sub_23E81E064(a1, v5);
}

uint64_t sub_23E81DF50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23E81DFAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23E82EF0C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E81E064(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23E81E12C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF14D90](v9, a1);
      sub_23E81DEFC(v9);
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

unint64_t sub_23E81E188()
{
  result = qword_27E35ABE0;
  if (!qword_27E35ABE0)
  {
    sub_23E8011D8(255, &qword_27E35ABD8, 0x277CB83B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ABE0);
  }

  return result;
}

uint64_t sub_23E81E204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA28, &unk_23E830AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E81E284(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 6)
  {
    v7 = a1;

    v4 = 0x4E4F495349565FLL;
LABEL_7:
    v5 = 0xE700000000000000;
    goto LABEL_8;
  }

  if (v3 != 1)
  {
    if (v3)
    {

      return a1;
    }

    v7 = a1;

    v4 = 0x454E4F4850495FLL;
    goto LABEL_7;
  }

  v7 = a1;

  v4 = 0x444150495FLL;
  v5 = 0xE500000000000000;
LABEL_8:
  MEMORY[0x23EF14B60](v4, v5);
  return v7;
}

uint64_t UUID.avsFormattedString.getter()
{
  sub_23E82DDBC();
  sub_23E7F84B0();
  sub_23E82EC7C();

  v0 = sub_23E82EA9C();

  return v0;
}

AVAudioPCMBuffer_optional __swiftcall convertToFloat32PCM(buffer:)(AVAudioPCMBuffer buffer)
{
  isa = buffer.super.super.isa;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_23E82E00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:16000.0];
  if (!v7)
  {
    goto LABEL_20;
  }

  v43 = v3;
  v10 = v7;
  v11 = &off_278C5C000;
  v12 = [(objc_class *)isa format];
  v13 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:v12 toFormat:v10];

  if (!v13)
  {

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = isa;

  v16 = isa;
  [v10 sampleRate];
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v17 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 >= 4294967300.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = v17 * [(objc_class *)v16 frameLength];
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = [(objc_class *)v16 format];
  [(objc_class *)v16 sampleRate];
  v19 = v18;
  v20 = v18;

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 >= 4294967300.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = v14;
  v21 = v19;
  v22 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v10 frameCapacity:v3 / v21];
  if (!v22)
  {
    __break(1u);
    goto LABEL_32;
  }

  v16 = v22;
  aBlock[4] = sub_23E81E1FC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E81E994;
  aBlock[3] = &block_descriptor_3;
  v23 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v13 convertToBuffer:v16 error:aBlock withInputFromBlock:v23];
  _Block_release(v23);
  v3 = aBlock[0];
  if (aBlock[0])
  {
    v24 = qword_27E35A1C0;
    v11 = aBlock[0];
    if (v24 == -1)
    {
LABEL_14:
      v25 = __swift_project_value_buffer(v2, qword_27E35A958);
      swift_beginAccess();
      v26 = v43;
      v27 = *(v43 + 16);
      v41 = v2;
      v27(v6, v25, v2);
      v28 = sub_23E82DFEC();
      v29 = sub_23E82EBCC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v40 = v13;
        v31 = v11;
        v32 = v30;
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v31;
        *v33 = v3;
        v34 = v31;
        _os_log_impl(&dword_23E7EF000, v28, v29, "Error converting buffer %@", v32, 0xCu);
        sub_23E81EA88(v33);
        v35 = v33;
        v26 = v43;
        MEMORY[0x23EF15860](v35, -1, -1);
        v36 = v32;
        v11 = v31;
        v37 = v40;
        MEMORY[0x23EF15860](v36, -1, -1);
      }

      else
      {

        v28 = v10;
        v37 = v10;
      }

      (*(v26 + 8))(v6, v41);

      goto LABEL_20;
    }

LABEL_30:
    swift_once();
    goto LABEL_14;
  }

LABEL_21:
  v38 = *MEMORY[0x277D85DE8];
  v22 = v16;
LABEL_32:
  result.value.super._impl = v8;
  result.value.super.super.isa = v22;
  result.is_nil = v9;
  return result;
}

id sub_23E81E994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void sub_23E81EA00()
{
  v0 = sub_23E82EA5C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E35D0B8 = v1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E81EA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35A870, &qword_23E8308E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E81EAF0()
{
  type metadata accessor for AXShortcutsProvider();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = v1;
  qword_27E35D0C0 = result;
  return result;
}

uint64_t sub_23E81EB28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t AvailableShortcutAction.init(id:name:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 16);
  sub_23E82DDCC();
  v12 = sub_23E82DDDC();
  (*(*(v12 - 8) + 40))(a5, a1, v12);
  result = type metadata accessor for AvailableShortcutAction();
  v14 = (a5 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = a5 + *(result + 24);
  *v15 = v9;
  *(v15 + 8) = v10;
  *(v15 + 16) = v11;
  return result;
}

uint64_t type metadata accessor for AvailableShortcutAction()
{
  result = qword_2810C2488;
  if (!qword_2810C2488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E81ECA0(uint64_t a1)
{
  v2 = sub_23E820540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E81ECDC(uint64_t a1)
{
  v2 = sub_23E820540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E81ED18()
{
  v1 = 0x6374726F68537861;
  if (*v0 != 1)
  {
    v1 = 0x7571655269726973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F685369726973;
  }
}

uint64_t sub_23E81ED88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E8210A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E81EDB0(uint64_t a1)
{
  v2 = sub_23E820498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E81EDEC(uint64_t a1)
{
  v2 = sub_23E820498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E81EE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E82EF0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E81EEC8(uint64_t a1)
{
  v2 = sub_23E8204EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E81EF04(uint64_t a1)
{
  v2 = sub_23E8204EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E81EF40()
{
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](0);
  return sub_23E82EF4C();
}

uint64_t sub_23E81EF84()
{
  sub_23E82EF2C();
  MEMORY[0x23EF14FD0](0);
  return sub_23E82EF4C();
}

uint64_t sub_23E81EFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23E82EF0C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23E81F044(uint64_t a1)
{
  v2 = sub_23E820594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E81F080(uint64_t a1)
{
  v2 = sub_23E820594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailableShortcutAction.AvailableShortcutActionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ABF8, &qword_23E830FA0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC00, &qword_23E830FA8);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC08, &qword_23E830FB0);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC10, &qword_23E830FB8);
  v14 = *(v39 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v29 - v16;
  v18 = v1[1];
  v37 = *v1;
  v38 = v18;
  v19 = *(v1 + 16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E820498();
  sub_23E82EF6C();
  v21 = (v14 + 8);
  if (v19)
  {
    if (v19 == 1)
    {
      v41 = 1;
      sub_23E820540();
      v22 = v39;
      sub_23E82EE8C();
      v23 = v33;
      sub_23E82EEBC();
      (*(v32 + 8))(v9, v23);
    }

    else
    {
      v42 = 2;
      sub_23E8204EC();
      v27 = v34;
      v22 = v39;
      sub_23E82EE8C();
      v28 = v36;
      sub_23E82EEBC();
      (*(v35 + 8))(v27, v28);
    }

    return (*v21)(v17, v22);
  }

  else
  {
    v40 = 0;
    sub_23E820594();
    v24 = v39;
    sub_23E82EE8C();
    v25 = v31;
    sub_23E82EEBC();
    (*(v30 + 8))(v13, v25);
    return (*v21)(v17, v24);
  }
}

uint64_t AvailableShortcutAction.AvailableShortcutActionType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC38, &qword_23E830FC0);
  v56 = *(v59 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC40, &qword_23E830FC8);
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC48, &qword_23E830FD0);
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC50, &qword_23E830FD8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23E820498();
  v21 = v60;
  sub_23E82EF5C();
  if (!v21)
  {
    v51 = 0;
    v52 = v15;
    v23 = v58;
    v22 = v59;
    v60 = v18;
    v24 = sub_23E82EE7C();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
    {
      v28 = sub_23E82ED6C();
      swift_allocError();
      v29 = v14;
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC58, &qword_23E830FE0) + 48);
      *v31 = &type metadata for AvailableShortcutAction.AvailableShortcutActionType;
      v33 = v60;
      sub_23E82EE1C();
      sub_23E82ED5C();
      (*(*(v28 - 8) + 104))(v31, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v52 + 8))(v33, v29);
    }

    else
    {
      if (*(v24 + 32))
      {
        if (v26 != 1)
        {
          v64 = 2;
          sub_23E8204EC();
          v42 = v60;
          v43 = v51;
          sub_23E82EE0C();
          if (!v43)
          {
            v40 = sub_23E82EE4C();
            v47 = v52;
            v51 = 0;
            v39 = v48;
            (*(v56 + 8))(v23, v22);
            (*(v47 + 8))(v60, v14);
            swift_unknownObjectRelease();
            goto LABEL_21;
          }

          (*(v52 + 8))(v42, v14);
          goto LABEL_17;
        }

        v63 = 1;
        sub_23E820540();
        v34 = v9;
        v35 = v60;
        v36 = v51;
        sub_23E82EE0C();
        if (!v36)
        {
          v37 = v54;
          v59 = sub_23E82EE4C();
          v39 = v38;
          (*(v55 + 8))(v34, v37);
          (*(v52 + 8))(v35, v14);
          swift_unknownObjectRelease();
          v40 = v59;
LABEL_21:
          v49 = v57;
          *v57 = v40;
          v49[1] = v39;
          *(v49 + 16) = v26;
          return __swift_destroy_boxed_opaque_existential_0(v61);
        }
      }

      else
      {
        v62 = 0;
        sub_23E820594();
        v35 = v60;
        v41 = v51;
        sub_23E82EE0C();
        if (!v41)
        {
          v45 = v10;
          v40 = sub_23E82EE4C();
          v39 = v46;
          (*(v53 + 8))(v13, v45);
          (*(v52 + 8))(v35, v14);
          swift_unknownObjectRelease();
          goto LABEL_21;
        }
      }

      (*(v52 + 8))(v35, v14);
    }

LABEL_17:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v61);
}

uint64_t sub_23E81FB3C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23E81FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E8211CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E81FBA4(uint64_t a1)
{
  v2 = sub_23E8205E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E81FBE0(uint64_t a1)
{
  v2 = sub_23E8205E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailableShortcutAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC60, &qword_23E830FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E8205E8();
  sub_23E82EF6C();
  LOBYTE(v20) = 0;
  sub_23E82DDDC();
  sub_23E8206A8(&qword_27E35A758);
  sub_23E82EEDC();
  if (!v2)
  {
    v11 = type metadata accessor for AvailableShortcutAction();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v20) = 1;
    sub_23E82EEBC();
    v15 = v3 + *(v11 + 24);
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v20 = *v15;
    v21 = v16;
    v22 = v17;
    v19[7] = 2;
    sub_23E82063C(v20, v16, v17);
    sub_23E820654();
    sub_23E82EEDC();
    sub_23E8000E4(v20, v21, v22);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AvailableShortcutAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_23E82DDDC();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AC78, &qword_23E830FF0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v29 = type metadata accessor for AvailableShortcutAction();
  v12 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DDCC();
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E8205E8();
  sub_23E82EF5C();
  if (v2)
  {
    v17 = v30;
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v17 + 8))(v14, v4);
  }

  else
  {
    v16 = v27;
    LOBYTE(v31) = 0;
    sub_23E8206A8(&qword_27E35A778);
    sub_23E82EE6C();
    (*(v30 + 40))(v14, v7, v4);
    LOBYTE(v31) = 1;
    v18 = sub_23E82EE4C();
    v19 = v29;
    v20 = &v14[*(v29 + 20)];
    *v20 = v18;
    v20[1] = v21;
    v33 = 2;
    sub_23E8206EC();
    sub_23E82EE6C();
    (*(v16 + 8))(v11, v28);
    v22 = v32;
    v23 = &v14[*(v19 + 24)];
    *v23 = v31;
    v23[16] = v22;
    sub_23E820740(v14, v26);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_23E7F543C(v14);
  }
}

uint64_t _s22AdaptiveVoiceShortcuts23AvailableShortcutActionV0deF4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_23E82EF0C();
        sub_23E82063C(v6, v5, 0);
        sub_23E82063C(v3, v2, 0);
        sub_23E8000E4(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_21;
      }

      sub_23E82063C(v14, v2, 0);
      sub_23E82063C(v3, v2, 0);
      sub_23E8000E4(v3, v2, 0);
      v19 = v3;
      v20 = v2;
      v21 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_23E82EF0C();
        sub_23E82063C(v6, v5, 1u);
        sub_23E82063C(v3, v2, 1u);
        sub_23E8000E4(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_21:
        sub_23E8000E4(v11, v12, v13);
        return v10 & 1;
      }

      sub_23E82063C(v8, v2, 1u);
      sub_23E82063C(v3, v2, 1u);
      sub_23E8000E4(v3, v2, 1u);
      v19 = v3;
      v20 = v2;
      v21 = 1;
      goto LABEL_26;
    }

LABEL_22:
    sub_23E82063C(*a2, *(a2 + 8), v7);
    sub_23E82063C(v3, v2, v4);
    sub_23E8000E4(v3, v2, v4);
    sub_23E8000E4(v6, v5, v7);
    return 0;
  }

  if (v7 != 2)
  {
    goto LABEL_22;
  }

  v16 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_23E82EF0C();
    sub_23E82063C(v6, v5, 2u);
    sub_23E82063C(v3, v2, 2u);
    sub_23E8000E4(v3, v2, 2u);
    v11 = v6;
    v12 = v5;
    v13 = 2;
    goto LABEL_21;
  }

  sub_23E82063C(v16, v2, 2u);
  sub_23E82063C(v3, v2, 2u);
  sub_23E8000E4(v3, v2, 2u);
  v19 = v3;
  v20 = v2;
  v21 = 2;
LABEL_26:
  sub_23E8000E4(v19, v20, v21);
  return 1;
}

unint64_t sub_23E820498()
{
  result = qword_27E35AC18;
  if (!qword_27E35AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC18);
  }

  return result;
}

unint64_t sub_23E8204EC()
{
  result = qword_27E35AC20;
  if (!qword_27E35AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC20);
  }

  return result;
}

unint64_t sub_23E820540()
{
  result = qword_27E35AC28;
  if (!qword_27E35AC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC28);
  }

  return result;
}

unint64_t sub_23E820594()
{
  result = qword_27E35AC30;
  if (!qword_27E35AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC30);
  }

  return result;
}

unint64_t sub_23E8205E8()
{
  result = qword_27E35AC68;
  if (!qword_27E35AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC68);
  }

  return result;
}

uint64_t sub_23E82063C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_23E820654()
{
  result = qword_27E35AC70;
  if (!qword_27E35AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC70);
  }

  return result;
}

uint64_t sub_23E8206A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23E82DDDC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23E8206EC()
{
  result = qword_27E35AC80;
  if (!qword_27E35AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC80);
  }

  return result;
}

uint64_t sub_23E820740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailableShortcutAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8207CC()
{
  result = sub_23E82DDDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E820870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23E8208B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23E820924(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23E8209B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23E820AA0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_23E820AF0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23E820B80()
{
  result = qword_27E35AC88;
  if (!qword_27E35AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC88);
  }

  return result;
}

unint64_t sub_23E820BD8()
{
  result = qword_27E35AC90;
  if (!qword_27E35AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC90);
  }

  return result;
}

unint64_t sub_23E820C30()
{
  result = qword_27E35AC98;
  if (!qword_27E35AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AC98);
  }

  return result;
}

unint64_t sub_23E820C88()
{
  result = qword_27E35ACA0;
  if (!qword_27E35ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACA0);
  }

  return result;
}

unint64_t sub_23E820CE0()
{
  result = qword_27E35ACA8;
  if (!qword_27E35ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACA8);
  }

  return result;
}

unint64_t sub_23E820D38()
{
  result = qword_27E35ACB0;
  if (!qword_27E35ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACB0);
  }

  return result;
}

unint64_t sub_23E820D90()
{
  result = qword_27E35ACB8;
  if (!qword_27E35ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACB8);
  }

  return result;
}

unint64_t sub_23E820DE8()
{
  result = qword_27E35ACC0;
  if (!qword_27E35ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACC0);
  }

  return result;
}

unint64_t sub_23E820E40()
{
  result = qword_27E35ACC8;
  if (!qword_27E35ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACC8);
  }

  return result;
}

unint64_t sub_23E820E98()
{
  result = qword_27E35ACD0;
  if (!qword_27E35ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACD0);
  }

  return result;
}

unint64_t sub_23E820EF0()
{
  result = qword_27E35ACD8;
  if (!qword_27E35ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACD8);
  }

  return result;
}

unint64_t sub_23E820F48()
{
  result = qword_27E35ACE0;
  if (!qword_27E35ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACE0);
  }

  return result;
}

unint64_t sub_23E820FA0()
{
  result = qword_27E35ACE8;
  if (!qword_27E35ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACE8);
  }

  return result;
}

unint64_t sub_23E820FF8()
{
  result = qword_27E35ACF0;
  if (!qword_27E35ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACF0);
  }

  return result;
}

unint64_t sub_23E821050()
{
  result = qword_27E35ACF8;
  if (!qword_27E35ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ACF8);
  }

  return result;
}

uint64_t sub_23E8210A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F685369726973 && a2 == 0xEC00000074756374;
  if (v4 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6374726F68537861 && a2 == 0xEA00000000007475 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7571655269726973 && a2 == 0xEB00000000747365)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23E8211CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_23E82131C()
{
  result = [objc_allocWithZone(AVSTriggerController) init];
  qword_27E35AD00 = result;
  return result;
}

id AVSTriggerController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t AVSTriggerController.displayAlertHandler.getter()
{
  v1 = (v0 + OBJC_IVAR___AVSTriggerController_displayAlertHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23E8214C0(v3);
  return v3;
}

uint64_t sub_23E8214C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23E8214D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23E82EA6C();
    v8 = v7;
    if (v3)
    {
LABEL_3:
      v9 = sub_23E82EA6C();
      v3 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:

  v5(v6, v8, v9, v3);
}

void sub_23E821644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_23E82EA5C();
    if (a4)
    {
LABEL_3:
      v8 = sub_23E82EA5C();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

uint64_t AVSTriggerController.displayAlertHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AVSTriggerController_displayAlertHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23E82173C(v6);
}

uint64_t sub_23E82173C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_23E82174C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayAlertHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_23E826F18;
    result[3] = v5;
    v6 = sub_23E826DC4;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_23E8217F4(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = sub_23E826D84;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_23E8214D0;
    v7[3] = &block_descriptor_32;
    v3 = _Block_copy(v7);
  }

  else
  {
    v6 = *a2;
  }

  [v6 setDisplayAlertHandler_];
  _Block_release(v3);
}

void *AVSTriggerController.spotter.getter()
{
  v1 = OBJC_IVAR___AVSTriggerController_spotter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AVSTriggerController.spotter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AVSTriggerController_spotter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t static AVSTriggerController.sharedInstance()()
{
  if (qword_27E35A1D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E35AD00;
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v2 = result;
    v3 = v0;
    return v2;
  }

  return result;
}

char *AVSTriggerController.init()()
{
  v1 = &v0[OBJC_IVAR___AVSTriggerController_displayAlertHandler];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___AVSTriggerController_spotter] = 0;
  *&v0[OBJC_IVAR___AVSTriggerController_enrollmentReceiver] = 0;
  v2 = &v0[OBJC_IVAR___AVSTriggerController_avsBundleDonorID];
  *v2 = 0xD000000000000030;
  *(v2 + 1) = 0x800000023E832EF0;
  type metadata accessor for AVSAudioProvider();
  swift_allocObject();
  *&v0[OBJC_IVAR___AVSTriggerController_audioProvider] = sub_23E819A20();
  v8.receiver = v0;
  v8.super_class = AVSTriggerController;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  AXPIBridgePerformWarm();
  v4 = *&v3[OBJC_IVAR___AVSTriggerController_audioProvider];
  v7[3] = type metadata accessor for AVSTriggerController(v5);
  v7[4] = &off_285116E90;

  v7[0] = v3;
  swift_beginAccess();
  sub_23E821BD4(v7, v4 + 40);
  swift_endAccess();

  return v3;
}

uint64_t sub_23E821BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA28, &unk_23E830AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall AVSTriggerController.startListening()()
{
  v0 = sub_23E82E9BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23E82E9EC();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E82E9CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
  v14 = sub_23E82EC2C();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v20;
  aBlock[4] = sub_23E822254;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);
  v18 = v16;
  sub_23E82E9DC();
  v22 = MEMORY[0x277D84F90];
  sub_23E822B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E81DC38();
  sub_23E82ECAC();
  MEMORY[0x23EF14CB0](0, v8, v4, v17);
  _Block_release(v17);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v21);
}

uint64_t sub_23E821FB8(void *a1)
{
  v2 = sub_23E82E9BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E82E9EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSo8AVSStoreC22AdaptiveVoiceShortcutsE28retriveDataForAllEnrollmentsSay0C7Actions018VASingleEnrollmentF0VGvgZ_0();
  sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
  v13 = sub_23E82EC0C();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v12;
  aBlock[4] = sub_23E826EEC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E826F04;
  aBlock[3] = &block_descriptor_51;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_23E82E9DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23E822B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
  sub_23E81DC38();
  sub_23E82ECAC();
  MEMORY[0x23EF14CB0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E82225C(uint64_t a1, void *a2)
{
  v62 = a2;
  v3 = sub_23E82E00C();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = sub_23E82DE8C();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23E82DE0C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR___AVSTriggerController_spotter;
  swift_beginAccess();
  if (*(a1 + v23))
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v24 = v63;
    v25 = __swift_project_value_buffer(v63, qword_27E35A958);
    swift_beginAccess();
    v26 = v64;
    (*(v64 + 16))(v11, v25, v24);
    v27 = sub_23E82DFEC();
    v28 = sub_23E82EBCC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23E7EF000, v27, v28, "Spotter already exists, not proceeding", v29, 2u);
      MEMORY[0x23EF15860](v29, -1, -1);
    }

    return (*(v26 + 8))(v11, v24);
  }

  else
  {
    v56 = v13;
    v57 = v14;
    v58 = v17;
    v59 = v8;
    v60 = v23;
    (*(v19 + 104))(v22, *MEMORY[0x277D797B0], v18);
    v31 = a1;
    v32 = sub_23E82DEFC();
    v34 = v33;
    (*(v19 + 8))(v22, v18);
    v35 = *(a1 + v60);
    *(a1 + v60) = v32;
    v36 = v32;

    v37 = OBJC_IVAR___AVSTriggerController_enrollmentReceiver;
    v38 = *(a1 + OBJC_IVAR___AVSTriggerController_enrollmentReceiver);
    *(a1 + OBJC_IVAR___AVSTriggerController_enrollmentReceiver) = v34;

    sub_23E82DE5C();
    v39 = v63;
    sub_23E82DE3C();
    v40 = v64;
    v62 = v36;
    sub_23E82DE6C();
    v65[0] = _sSo8AVSStoreC22AdaptiveVoiceShortcutsE29shortcutsFormattedIdentifiersSaySSGvgZ_0();

    sub_23E825D88(v65);
    v42 = v60;

    v43 = v65[0];
    v65[0] = sub_23E82DE7C();

    sub_23E825D88(v65);

    LOBYTE(v36) = sub_23E822AAC(v43, v65[0]);

    if (v36)
    {
      v44 = v58;
      v45 = v62;
      sub_23E82DE2C();

      (*(v61 + 8))(v44, v57);
      v41 = *(v31 + OBJC_IVAR___AVSTriggerController_audioProvider);
      return sub_23E81AD10();
    }

    else
    {
      if (qword_27E35A1C0 != -1)
      {
        swift_once();
      }

      v46 = __swift_project_value_buffer(v39, qword_27E35A958);
      swift_beginAccess();
      v47 = v56;
      (*(v40 + 16))(v56, v46, v39);
      v48 = sub_23E82DFEC();
      v49 = sub_23E82EBCC();
      v50 = os_log_type_enabled(v48, v49);
      v51 = v61;
      if (v50)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_23E7EF000, v48, v49, "Unexpected state. AVSStore identifiers do not match runtime keywords. Enrollments could be stale.", v52, 2u);
        v53 = v52;
        v47 = v56;
        MEMORY[0x23EF15860](v53, -1, -1);
      }

      (*(v40 + 8))(v47, v39);
      (*(v51 + 8))(v58, v57);
      v54 = *(v31 + v42);
      *(v31 + v42) = 0;

      v55 = *(v31 + v37);
      *(v31 + v37) = 0;
    }
  }
}

uint64_t sub_23E822AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23E82EF0C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23E822B3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23E822B98()
{
  result = qword_27E35A3D0;
  if (!qword_27E35A3D0)
  {
    sub_23E82E9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35A3D0);
  }

  return result;
}

Swift::Void __swiftcall AVSTriggerController.stopListening()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_23E82EB7C();
  v4 = sub_23E82EB9C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_23E80C7D8(0, 0, v3, &unk_23E831740, v6);
}

uint64_t sub_23E822D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_23E82E00C();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E822E20, 0, 0);
}

uint64_t sub_23E822E20()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR___AVSTriggerController_spotter;
    swift_beginAccess();
    v5 = *&v3[v4];
    v0[27] = v5;
    if (v5)
    {
      v5;

      v6 = *(MEMORY[0x277D797B8] + 4);
      v23 = (*MEMORY[0x277D797B8] + MEMORY[0x277D797B8]);
      v7 = swift_task_alloc();
      v0[28] = v7;
      *v7 = v0;
      v7[1] = sub_23E823044;

      return v23();
    }
  }

  v9 = v0[23];
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR___AVSTriggerController_audioProvider);
    v12 = v10;

    sub_23E81B214();
  }

  v13 = v0[23];
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = OBJC_IVAR___AVSTriggerController_spotter;
    v16 = v14;
    swift_beginAccess();
    v17 = *&v16[v15];
    *&v16[v15] = 0;
  }

  v18 = v0[23];
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *&v19[OBJC_IVAR___AVSTriggerController_enrollmentReceiver];
    *&v19[OBJC_IVAR___AVSTriggerController_enrollmentReceiver] = 0;
  }

  v21 = v0[26];

  v22 = v0[1];

  return v22();
}

uint64_t sub_23E823044()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_23E8232A8;
  }

  else
  {

    v4 = sub_23E823160;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E823160()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___AVSTriggerController_audioProvider);
    v4 = Strong;

    sub_23E81B214();
  }

  v5 = v0[23];
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = OBJC_IVAR___AVSTriggerController_spotter;
    v8 = v6;
    swift_beginAccess();
    v9 = *&v8[v7];
    *&v8[v7] = 0;
  }

  v10 = v0[23];
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = *&v11[OBJC_IVAR___AVSTriggerController_enrollmentReceiver];
    *&v11[OBJC_IVAR___AVSTriggerController_enrollmentReceiver] = 0;
  }

  v13 = v0[26];

  v14 = v0[1];

  return v14();
}

uint64_t sub_23E8232A8()
{
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = __swift_project_value_buffer(v4, qword_27E35A958);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_23E82DFEC();
  v8 = sub_23E82EBCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23E7EF000, v7, v8, "Error stopping spotter %@", v11, 0xCu);
    sub_23E7F55E0(v12, &unk_27E35A870, &qword_23E8308E0);
    MEMORY[0x23EF15860](v12, -1, -1);
    MEMORY[0x23EF15860](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v15 = *(v0 + 208);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23E8234A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E801C00;

  return sub_23E822D60(a1, v4, v5, v6);
}

Swift::Void __swiftcall AVSTriggerController.pauseListening()()
{
  v1 = *(v0 + OBJC_IVAR___AVSTriggerController_audioProvider);
  if (*(v1 + 80) == 1)
  {
    [*(v1 + 16) stop];
    *(v1 + 80) = 0;
  }
}

Swift::Void __swiftcall AVSTriggerController.handleAudioBufferInput(_:time:)(AVAudioPCMBuffer_optional _, Swift::UInt64 time)
{
  isa = _.value.super.super.isa;
  v3 = sub_23E82E00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v13 = isa;
    sub_23E8239C4();
    v8 = v13;
  }

  else
  {
    if (qword_27E35A1C0 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v3, qword_27E35A958);
    swift_beginAccess();
    (*(v4 + 16))(v7, v9, v3);
    v10 = sub_23E82DFEC();
    v11 = sub_23E82EBCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23E7EF000, v10, v11, "Failed to get audio buffer", v12, 2u);
      MEMORY[0x23EF15860](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_23E8239C4()
{
  v1 = sub_23E82E00C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = OBJC_IVAR___AVSTriggerController_spotter;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4)
  {
    v5 = v4;
    sub_23E82DE4C();
  }
}

uint64_t AVSTriggerController.keywordSpotterDidDetectKeyword(event:)(char *a1)
{
  v100 = sub_23E82E9BC();
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_23E82E9EC();
  v96 = *(v98 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AVSDebugEvent();
  v6 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v107 = &v95 - v12;
  v13 = type metadata accessor for AvailableShortcutAction();
  v111 = *(v13 - 8);
  v14 = *(v111 + 64);
  MEMORY[0x28223BE20](v13);
  v105 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for AdaptiveVoiceShortcut();
  v120 = *(v110 - 8);
  v16 = *(v120 + 64);
  v17 = MEMORY[0x28223BE20](v110);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v106 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v95 - v22;
  v24 = sub_23E82E00C();
  v25 = *(v24 - 1);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v95 - v30;
  if (qword_27E35A1C0 != -1)
  {
LABEL_32:
    swift_once();
  }

  v116 = v29;
  v108 = v13;
  v109 = v23;
  v32 = __swift_project_value_buffer(v24, qword_27E35A958);
  swift_beginAccess();
  v33 = v25[2];
  v113 = v25 + 2;
  v114 = v32;
  v112 = v33;
  v33(v31, v32, v24);
  v34 = sub_23E82DFEC();
  v35 = sub_23E82EBEC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23E7EF000, v34, v35, "Keyword spotter did detect keyword", v36, 2u);
    MEMORY[0x23EF15860](v36, -1, -1);
  }

  v37 = v25[1];
  v117 = ++v25;
  v118 = v24;
  v115 = v37;
  v37(v31, v24);

  v119 = a1;
  v31 = a1;
  sub_23E82DEBC();
  v13 = v38;
  v39 = sub_23E803FC0();
  a1 = *(v39 + 16);
  if (a1)
  {
    v23 = 0;
    v29 = MEMORY[0x277D837D0];
    while (1)
    {
      if (v23 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_23E826888(v39 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v23, v19);
      aBlock = sub_23E82DDBC();
      v122 = v40;
      v129 = 45;
      v130 = 0xE100000000000000;
      v127 = 0;
      v128 = 0xE000000000000000;
      sub_23E7F84B0();
      sub_23E82EC7C();

      sub_23E82EA9C();

      v31 = sub_23E82EA5C();

      v24 = sub_23E82EA5C();
      v25 = [v31 isEqual_];

      if (v25)
      {
        break;
      }

      ++v23;
      sub_23E826A78(v19, type metadata accessor for AdaptiveVoiceShortcut);
      if (a1 == v23)
      {
        goto LABEL_9;
      }
    }

    v53 = v19;
    v54 = v106;
    sub_23E8268EC(v53, v106, type metadata accessor for AdaptiveVoiceShortcut);
    v55 = v109;
    sub_23E8268EC(v54, v109, type metadata accessor for AdaptiveVoiceShortcut);
    v56 = v110;
    v57 = *(v110 + 28);
    v58 = v107;
    sub_23E7F537C(v55 + v57, v107);
    v59 = v111 + 48;
    v60 = *(v111 + 48);
    v61 = v108;
    if (v60(v58, 1, v108) == 1)
    {
      sub_23E826A78(v55, type metadata accessor for AdaptiveVoiceShortcut);
      sub_23E7F55E0(v58, &qword_27E35A210, &unk_23E82FFD0);
      goto LABEL_10;
    }

    v111 = v59;
    v62 = v105;
    sub_23E8268EC(v58, v105, type metadata accessor for AvailableShortcutAction);
    sub_23E826954(v62);
    v63 = _AXSAudioDonationSiriImprovementEnabled();
    v64 = v119;
    if (v63)
    {
      v65 = (v55 + *(v56 + 20));
      v66 = v65[1];
      if (v66)
      {
        v67 = *v65;
      }

      else
      {
        v67 = 0;
      }

      if (v66)
      {
        v68 = v65[1];
      }

      else
      {
        v68 = 0xE000000000000000;
      }

      sub_23E824A18(v64, v67, v68);
    }

    if (AXIsInternalInstall())
    {
      v69 = v102;
      sub_23E82DDCC();
      v70 = sub_23E82DEBC();
      v72 = v71;
      v73 = sub_23E82DE9C();
      sub_23E82DEAC();
      v74 = v101;
      v75 = (v69 + *(v101 + 20));
      *v75 = v70;
      v75[1] = v72;
      *(v69 + *(v74 + 24)) = v73;
      *(v69 + *(v74 + 28)) = v76;
      v77 = [objc_allocWithZone(AVSStore) init];
      _sSo8AVSStoreC22AdaptiveVoiceShortcutsE22storeEventForDebugging5eventyAC08AVSDebugF0V_tF_0(v69);

      v78 = v69;
      v56 = v110;
      sub_23E826A78(v78, type metadata accessor for AVSDebugEvent);
    }

    v79 = (v55 + *(v56 + 20));
    v80 = v79[1];
    if (v80)
    {
      v81 = *v79;
      v82 = v103;
      sub_23E7F537C(v55 + v57, v103);
      if (v60(v82, 1, v61) == 1)
      {
        sub_23E826A78(v62, type metadata accessor for AvailableShortcutAction);
        sub_23E826A78(v55, type metadata accessor for AdaptiveVoiceShortcut);
        return sub_23E7F55E0(v82, &qword_27E35A210, &unk_23E82FFD0);
      }

      v84 = (v82 + *(v61 + 20));
      v86 = *v84;
      v85 = v84[1];

      sub_23E826A78(v82, type metadata accessor for AvailableShortcutAction);
      sub_23E8011D8(0, &qword_27E35A3C8, 0x277D85C78);
      v87 = sub_23E82EC0C();
      v88 = swift_allocObject();
      v88[2] = v81;
      v88[3] = v80;
      v89 = v104;
      v88[4] = v104;
      v88[5] = v86;
      v88[6] = v85;
      v125 = sub_23E826A68;
      v126 = v88;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v123 = sub_23E826F04;
      v124 = &block_descriptor_13;
      v90 = _Block_copy(&aBlock);
      v91 = v89;

      v92 = v95;
      sub_23E82E9DC();
      aBlock = MEMORY[0x277D84F90];
      sub_23E822B98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3D8, &qword_23E830410);
      sub_23E81DC38();
      v93 = v97;
      v94 = v100;
      sub_23E82ECAC();
      MEMORY[0x23EF14CB0](0, v92, v93, v90);
      _Block_release(v90);

      (*(v99 + 8))(v93, v94);
      (*(v96 + 8))(v92, v98);
      v83 = v62;
    }

    else
    {
      v83 = v62;
    }

    sub_23E826A78(v83, type metadata accessor for AvailableShortcutAction);
    return sub_23E826A78(v55, type metadata accessor for AdaptiveVoiceShortcut);
  }

  else
  {
LABEL_9:

LABEL_10:
    v42 = v118;
    v41 = v119;
    v43 = v116;
    v112(v116, v114, v118);
    v44 = v41;
    v45 = sub_23E82DFEC();
    v46 = sub_23E82EBEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock = v48;
      *v47 = 136315138;
      v49 = sub_23E82DEBC();
      v51 = sub_23E8257E0(v49, v50, &aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_23E7EF000, v45, v46, "No shortcut found for keyword %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EF15860](v48, -1, -1);
      MEMORY[0x23EF15860](v47, -1, -1);
    }

    return v115(v43, v42);
  }
}
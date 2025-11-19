uint64_t sub_23D679FD4()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v0[v1])
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D685860();
    __swift_project_value_buffer(v2, qword_27E2E0868);
    v3 = v0;
    v4 = sub_23D685850();
    v5 = sub_23D685A60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v12 = v11;

      v13 = sub_23D652534(v10, v12, &v22);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: trying to stop sound analysis while the feature is enabled. Need to disable it first.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEE7580](v7, -1, -1);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }

    sub_23D67A7F4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  else
  {
    v16 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
    result = swift_beginAccess();
    v17 = *&v0[v16];
    if (v17 >> 62)
    {
      result = sub_23D685B50();
      v18 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return result;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v18; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x23EEE6980](i, v17);
        }

        else
        {
          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        sub_23D66FA40(v20);
      }
    }
  }

  return result;
}

uint64_t sub_23D67A41C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23D6856A0() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23D67A9FC;

  return sub_23D673020(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_23D67A554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D67A5C4()
{
  result = qword_27E2E08F8;
  if (!qword_27E2E08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E08E8, &qword_23D6898C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E08F8);
  }

  return result;
}

uint64_t sub_23D67A628(uint64_t a1)
{
  v4 = *(sub_23D685740() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D667DA8;

  return sub_23D670CF4(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t sub_23D67A758()
{
  result = qword_27E2E0560;
  if (!qword_27E2E0560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E0560);
  }

  return result;
}

uint64_t sub_23D67A7AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23D67A7F4()
{
  result = qword_27E2E0910;
  if (!qword_27E2E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E0910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoundRecognitionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SoundRecognitionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23D67A9A8()
{
  result = qword_27E2E0918;
  if (!qword_27E2E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E0918);
  }

  return result;
}

uint64_t type metadata accessor for AXSDError()
{
  result = qword_27E2E0928;
  if (!qword_27E2E0928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D67AA80()
{
  sub_23D67AAD8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_23D67AAD8()
{
  if (!qword_27E2E0938)
  {
    v0 = sub_23D6856A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E0938);
    }
  }
}

id sub_23D67AB6C()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D67AC20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_23D67AC78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_23D67AE48()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v2 = [*(v0 + v1) currentDetectors];
  type metadata accessor for AXSDSoundDetectionType();
  v3 = sub_23D685980();

  v4 = sub_23D6549C0(v3);

  return v4;
}

id sub_23D67AF7C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldBeListeningForSoundRecognitionSystemSounds];

  return v1;
}

id sub_23D67AFD4()
{
  v0 = [objc_allocWithZone(AXSDDetectorManager) init];
  v1 = [objc_allocWithZone(AXSDDetectorQueueManager) init];
  v2 = objc_allocWithZone(type metadata accessor for AXSDNSControllerImplementation());
  v3 = v0;
  v4 = v1;
  v5 = AXSDNSControllerImplementation.init(detectorManager:queueManager:)(v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v6 = v5;
  [v3 setDelegate_];
  [v4 setDelegate_];

  return v6;
}

id AXSDNSControllerImplementation.init(detectorManager:queueManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager] = 0;
  *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections] = 0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  __swift_project_value_buffer(v6, qword_27E2E0868);
  v7 = sub_23D685850();
  v8 = sub_23D685A50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23D62D000, v7, v8, "Initializing NS Sound Detection Controller", v9, 2u);
    MEMORY[0x23EEE7580](v9, -1, -1);
  }

  *&v3[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager] = a1;
  *&v3[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] = a2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for AXSDNSControllerImplementation();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_23D67B2F4(void *a1, char *a2, const char **a3)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v7 = sub_23D685860();
  __swift_project_value_buffer(v7, qword_27E2E0868);
  v8 = v3;
  v9 = a1;
  v10 = sub_23D685850();
  v11 = sub_23D685A70();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = v8;
    v15 = [v14 description];
    format = a2;
    v27 = a3;
    v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v18 = v17;

    v19 = sub_23D652534(v16, v18, &v28);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v22 = sub_23D652534(v20, v21, &v28);
    a3 = v27;

    *(v12 + 14) = v22;
    _os_log_impl(&dword_23D62D000, v10, v11, format, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v13, -1, -1);
    MEMORY[0x23EEE7580](v12, -1, -1);
  }

  v23 = *&v8[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager];
  v24 = *a3;

  return [v23 v24];
}

uint64_t sub_23D67B568()
{
  v1 = sub_23D685880();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23D6858A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v11 = sub_23D685860();
  __swift_project_value_buffer(v11, qword_27E2E0868);
  v12 = v0;
  v13 = sub_23D685850();
  v14 = sub_23D685A70();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v15 = 136315138;
    v16 = v12;
    v39 = v10;
    v17 = v16;
    v18 = [v16 description];
    v36 = v14;
    v19 = v5;
    v20 = v6;
    v21 = v1;
    v22 = v18;
    v23 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v38 = v12;
    v24 = v23;
    v40 = v7;
    v25 = v2;
    v27 = v26;

    v10 = v39;
    v1 = v21;
    v6 = v20;
    v5 = v19;
    v28 = sub_23D652534(v24, v27, aBlock);
    v2 = v25;
    v7 = v40;

    *(v15 + 4) = v28;
    v12 = v38;
    _os_log_impl(&dword_23D62D000, v13, v36, "[%s]: removing all listen types", v15, 0xCu);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x23EEE7580](v29, -1, -1);
    MEMORY[0x23EEE7580](v15, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v30 = sub_23D685AA0();
  v31 = swift_allocObject();
  *(v31 + 16) = v12;
  aBlock[4] = sub_23D67FFC4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_4;
  v32 = _Block_copy(aBlock);
  v33 = v12;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v10, v5, v32);
  _Block_release(v32);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC28assetsReadyAndDetectorsAddedyyF_0()
{
  v1 = v0;
  v2 = [v1 description];
  v3 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v5 = v4;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  __swift_project_value_buffer(v6, qword_27E2E0868);

  v7 = sub_23D685850();
  v8 = sub_23D685A70();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D652534(v3, v5, &v16);
    _os_log_impl(&dword_23D62D000, v7, v8, "[%s]: start listening", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE7580](v10, -1, -1);
    MEMORY[0x23EEE7580](v9, -1, -1);
  }

  if ([*&v1[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] prepareToListen])
  {

    sub_23D653BD8(v1, v1);
  }

  else
  {

    oslog = sub_23D685850();
    v11 = sub_23D685A70();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      v14 = sub_23D652534(v3, v5, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_23D62D000, oslog, v11, "[%s]: detector queue manager not ready, returning", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEE7580](v13, -1, -1);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23D67BCC4()
{
  v1 = sub_23D685880();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6858A0();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0;
  v11 = [v10 description];
  v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v14 = v13;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v15 = sub_23D685860();
  __swift_project_value_buffer(v15, qword_27E2E0868);

  v16 = sub_23D685850();
  v17 = sub_23D685A70();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    v21 = sub_23D652534(v12, v14, aBlock);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_23D62D000, v16, v17, "[%s]: stop listening", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23EEE7580](v20, -1, -1);
    v22 = v19;
    v2 = v29;
    MEMORY[0x23EEE7580](v22, -1, -1);
  }

  else
  {
  }

  [*&v10[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] stopListening];
  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v23 = sub_23D685AA0();
  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  aBlock[4] = sub_23D67FFE8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_6_1;
  v25 = _Block_copy(aBlock);
  v26 = v10;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v9, v5, v25);
  _Block_release(v25);

  (*(v2 + 8))(v5, v1);
  return (*(v30 + 8))(v9, v31);
}

id sub_23D67C0F8(char *a1)
{
  sub_23D656FE0(a1, a1);
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*&a1[v2] stopDetection];
}

uint64_t sub_23D67C19C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections);
}

id AXSDNSControllerImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSDNSControllerImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AXSDNSControllerImplementation.pipe(inFileURL:)(uint64_t a1)
{
  v2 = v1;
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23D6856A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_23D685650() & 1) == 0)
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v13 = sub_23D685860();
    __swift_project_value_buffer(v13, qword_27E2E0868);
    v43 = *(v5 + 16);
    v43(v8, a1, v4);
    v14 = v1;
    v15 = sub_23D685850();
    v16 = sub_23D685A70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v17 = 136315394;
      v18 = v14;
      v40 = v15;
      v19 = v18;
      v20 = [v18 description];
      v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v39 = v16;
      v22 = v21;
      v42 = a1;
      v24 = v23;

      v25 = sub_23D652534(v22, v24, v44);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      sub_23D67FFF0(&qword_27E2E0970, MEMORY[0x277CC9260]);
      v26 = sub_23D685CF0();
      v28 = v27;
      (*(v5 + 8))(v8, v4);
      v29 = sub_23D652534(v26, v28, v44);
      a1 = v42;

      *(v17 + 14) = v29;
      v30 = v40;
      _os_log_impl(&dword_23D62D000, v40, v39, "[%s]: piped in fileURL: %s is not a valid file URL", v17, 0x16u);
      v31 = v41;
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v31, -1, -1);
      MEMORY[0x23EEE7580](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    type metadata accessor for AXSDError();
    sub_23D67FFF0(&unk_27E2E0960, type metadata accessor for AXSDError);
    swift_allocError();
    v33 = v32;
    v43(v32, a1, v4);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0920, &qword_23D689A08);
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    goto LABEL_11;
  }

  sub_23D685690();
  v9 = sub_23D6858E0();

  v44[0] = 0;
  v10 = [v2 pipeInFilePath:v9 error:v44];

  v11 = v44[0];
  if (!v10)
  {
    v35 = v44[0];
    sub_23D685640();

LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  type metadata accessor for AXSDSoundDetectionType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0978, &qword_23D689A70);
  sub_23D67FFF0(&qword_27E2E04E0, type metadata accessor for AXSDSoundDetectionType);
  v4 = sub_23D6858C0();
  v12 = v11;

LABEL_12:
  v36 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t AXSDNSControllerImplementation.pipe(inFilePath:)(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v7 = [v6 description];
  v8 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v10 = v9;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v11 = sub_23D685860();
  __swift_project_value_buffer(v11, qword_27E2E0868);

  v12 = sub_23D685850();
  v13 = sub_23D685A70();

  if (os_log_type_enabled(v12, v13))
  {
    v28[4] = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v14 = 136315394;
    v16 = sub_23D652534(v8, v10, v28);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_23D652534(a1, a2, v28);
    _os_log_impl(&dword_23D62D000, v12, v13, "[%s]: AUTOMATION: piped in file: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v15, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  else
  {
  }

  v17 = sub_23D66212C(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections;
  v19 = *&v6[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections];
  *&v6[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections] = v17;

  v20 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v21 = *&v6[v20];
  v22 = sub_23D6858E0();
  [v21 pipeInFile_];

  result = *&v6[v18];
  if (result)
  {
    *&v6[v18] = 0;
  }

  else
  {
    type metadata accessor for AXSDError();
    sub_23D67FFF0(&unk_27E2E0960, type metadata accessor for AXSDError);
    swift_allocError();
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0920, &qword_23D689A08);
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    swift_willThrow();
    v27 = *&v6[v18];
    *&v6[v18] = 0;
  }

  return result;
}

id AXSDNSControllerImplementation.trackObservation(_:forDetector:)(void *a1, void *a2)
{
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections);
    if (v6)
    {
      v17 = *(v2 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections);

      v7 = [a2 soundIdentifier];
      v8 = AXSDSoundDetectionTypeForIdentifier();

      if (*(v6 + 16) && (v9 = sub_23D67EF28(v8), (v10 & 1) != 0))
      {
        v16 = *(*(v6 + 56) + 8 * v9);

        v11 = a1;
        MEMORY[0x23EEE6700]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23D685990();
        }

        sub_23D6859A0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_23D67FA68(v16, v8, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0908, &qword_23D6898E8);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_23D689A60;
        *(v13 + 32) = a1;
        v14 = a1;
        sub_23D67FE5C(v13, v8);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall AXSDNSControllerImplementation.receivedBuffer(_:at:)(AVAudioPCMBuffer _, AVAudioTime *at)
{
  impl = _.super._impl;
  isa = _.super.super.isa;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AXSDNSControllerImplementation();
  objc_msgSendSuper2(&v5, sel_receivedBuffer_atTime_, isa, impl);
  [v2 receivedBuffer:isa atTime:impl isFile:0];
}

void sub_23D67D134(void *a1)
{
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager;
  if (!*(v1 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager))
  {
    [a1 sampleRate];
    v3 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
    v5 = 1.0 / v4;
    swift_beginAccess();
    v6 = [objc_allocWithZone(AXSDUltronInternalRecordingManager) initWithSampleLength:v5 bufferSize:{objc_msgSend(*(v1 + v3), sel_bufferSize)}];
    v7 = *(v1 + v2);
    *(v1 + v2) = v6;
  }
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineDidStart(withInputFormat:)(AVAudioFormat_optional *withInputFormat)
{
  v2 = v1;
  v4 = sub_23D685880();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6858A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AXSDNSControllerImplementation();
  v36.receiver = v2;
  v36.super_class = v14;
  [(AVAudioFormat_optional *)&v36 listenEngineDidStartWithInputFormat:withInputFormat];
  if (withInputFormat)
  {
    sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
    v34 = v9;
    v15 = withInputFormat;
    v16 = sub_23D685AA0();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v15;
    aBlock[4] = sub_23D6800F8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D650AF8;
    aBlock[3] = &block_descriptor_12_1;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    v20 = v2;

    sub_23D685890();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
    sub_23D65444C();
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v13, v8, v18);
    _Block_release(v18);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v34);
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v21 = sub_23D685860();
    __swift_project_value_buffer(v21, qword_27E2E0868);
    v22 = v2;
    v23 = sub_23D685850();
    v24 = sub_23D685A60();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      v27 = v22;
      v28 = [v27 description];
      v29 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v31 = v30;

      v32 = sub_23D652534(v29, v31, aBlock);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_23D62D000, v23, v24, "[%s]: Listen Engine did not return an audio format. This should NOT happen; bailing. File a radar!", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23EEE7580](v26, -1, -1);
      MEMORY[0x23EEE7580](v25, -1, -1);
    }
  }
}

void sub_23D67D63C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  [*(a1 + v4) startDetectionWithFormat_];
  if ([objc_opt_self() isInternalInstall])
  {
    if ([objc_opt_self() isEnrolled])
    {
      sub_23D67D134(a2);
    }
  }
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineReceivedAudioFile(_:)(AVAudioFile a1)
{
  isa = a1.super.isa;
  v84 = sub_23D685880();
  v78 = *(v84 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23D6858A0();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v80 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v8 = sub_23D685860();
  v9 = __swift_project_value_buffer(v8, qword_27E2E0868);
  v10 = isa;
  v79 = v10;
  v11 = v1;
  v12 = sub_23D685850();
  v13 = sub_23D685A40();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77 = v9;
    v17 = v16;
    aBlock = v16;
    *v14 = 136315650;
    v18 = v11;
    v19 = [v18 description];
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v22 = v21;

    v23 = sub_23D652534(v20, v22, &aBlock);
    v24 = v79;

    *(v14 + 4) = v23;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v24;
    *v15 = v24;
    *(v14 + 22) = 2112;
    v25 = [v24 processingFormat];
    *(v14 + 24) = v25;
    v15[1] = v25;
    _os_log_impl(&dword_23D62D000, v12, v13, "[%s]: Received audio file: %@ with audio format: %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEE7580](v17, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  v26 = v11;
  v27 = sub_23D685850();
  v28 = sub_23D685A50();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v31 = v26;
    v32 = [v31 description];
    v33 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v35 = v34;

    v36 = sub_23D652534(v33, v35, &aBlock);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_23D62D000, v27, v28, "[%s]: Stopping detector manager.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23EEE7580](v30, -1, -1);
    MEMORY[0x23EEE7580](v29, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v37 = sub_23D685AA0();
  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  v89 = sub_23D68068C;
  v90 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_23D650AF8;
  v88 = &block_descriptor_18_0;
  v39 = _Block_copy(&aBlock);
  v40 = v26;

  v41 = v80;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v42 = sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  v44 = sub_23D65444C();
  v45 = v83;
  v46 = v84;
  v75 = v44;
  v76 = v43;
  v77 = v42;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v41, v45, v39);
  _Block_release(v39);

  v78 = *(v78 + 8);
  (v78)(v45, v46);
  v47 = v81 + 8;
  v74 = *(v81 + 8);
  v74(v41, v82);
  v48 = v79;
  v49 = v40;
  v50 = sub_23D685850();
  v51 = sub_23D685A50();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v81 = v47;
    v53 = v52;
    v73 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    aBlock = v79;
    *v53 = 136315394;
    v54 = v49;
    v55 = [v54 description];
    v56 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v72 = v51;
    v58 = v57;

    v59 = sub_23D652534(v56, v58, &aBlock);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2112;
    v60 = [v48 processingFormat];
    *(v53 + 14) = v60;
    v61 = v73;
    *v73 = v60;
    _os_log_impl(&dword_23D62D000, v50, v72, "[%s]: Starting detector manager with audio format: %@", v53, 0x16u);
    sub_23D654530(v61);
    MEMORY[0x23EEE7580](v61, -1, -1);
    v62 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x23EEE7580](v62, -1, -1);
    MEMORY[0x23EEE7580](v53, -1, -1);
  }

  v63 = sub_23D685AA0();
  v64 = swift_allocObject();
  *(v64 + 16) = v49;
  *(v64 + 24) = v48;
  v89 = sub_23D680100;
  v90 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_23D650AF8;
  v88 = &block_descriptor_24_1;
  v65 = _Block_copy(&aBlock);
  v66 = v48;
  v67 = v49;

  v68 = v80;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v69 = v83;
  v70 = v84;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v68, v69, v65);
  _Block_release(v65);

  (v78)(v69, v70);
  v74(v68, v82);
}

void sub_23D67DFD8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = [a2 processingFormat];
  [v5 startDetectionWithFormat_];
}

Swift::Void __swiftcall AXSDNSControllerImplementation.listenEngineFinishedAudioFile(_:)(AVAudioFile a1)
{
  isa = a1.super.isa;
  v96 = sub_23D685880();
  v3 = *(v96 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v96);
  v95 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23D6858A0();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v9 = sub_23D685860();
  v10 = __swift_project_value_buffer(v9, qword_27E2E0868);
  v11 = v1;
  v12 = isa;
  v91 = v10;
  v13 = sub_23D685850();
  v14 = sub_23D685A40();

  v15 = os_log_type_enabled(v13, v14);
  v90 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock = v89;
    *v16 = 136315394;
    v18 = v11;
    v19 = [v18 description];
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v22 = v21;

    v23 = sub_23D652534(v20, v22, &aBlock);

    *(v16 + 4) = v23;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    v24 = v12;
    _os_log_impl(&dword_23D62D000, v13, v14, "[%s]: Finished processing audio file: %@.", v16, 0x16u);
    sub_23D654530(v17);
    MEMORY[0x23EEE7580](v17, -1, -1);
    v25 = v89;
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x23EEE7580](v25, -1, -1);
    MEMORY[0x23EEE7580](v16, -1, -1);
  }

  v26 = v11;
  v27 = sub_23D685850();
  v28 = sub_23D685A50();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v31 = v26;
    v32 = [v31 description];
    v33 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v35 = v34;

    v36 = sub_23D652534(v33, v35, &aBlock);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_23D62D000, v27, v28, "[%s]: Stopping detector manager.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23EEE7580](v30, -1, -1);
    MEMORY[0x23EEE7580](v29, -1, -1);
  }

  v37 = v90;
  v38 = v93;
  v89 = sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v39 = sub_23D685AA0();
  v40 = swift_allocObject();
  *(v40 + 16) = v26;
  v101 = sub_23D680108;
  v102 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_23D650AF8;
  v100 = &block_descriptor_30_0;
  v41 = _Block_copy(&aBlock);
  v42 = v26;

  v43 = v92;
  sub_23D685890();
  aBlock = MEMORY[0x277D84F90];
  v44 = sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198]);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  v46 = sub_23D65444C();
  v47 = v95;
  v87 = v45;
  v86 = v46;
  v48 = v96;
  v88 = v44;
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v43, v47, v41);
  _Block_release(v41);

  v49 = v37[1];
  (v49)(v47, v48);
  v52 = *(v38 + 8);
  v50 = v38 + 8;
  v51 = v52;
  v52(v43, v94);
  v53 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  v54 = [*&v42[v53] audioFormat];
  if (v54)
  {
    v55 = v54;
    v90 = v49;
    v56 = v42;
    v57 = v55;
    v58 = sub_23D685850();
    v59 = sub_23D685A50();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v93 = v50;
      v61 = v60;
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v61 = 136315394;
      v62 = v56;
      v91 = v56;
      v63 = v62;
      v64 = [v62 description];
      v65 = v51;
      v66 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v83 = v59;
      v68 = v67;

      v69 = v66;
      v51 = v65;
      v70 = sub_23D652534(v69, v68, &aBlock);

      *(v61 + 4) = v70;
      v56 = v91;
      *(v61 + 12) = 2112;
      *(v61 + 14) = v57;
      v71 = v84;
      *v84 = v55;
      v72 = v57;
      _os_log_impl(&dword_23D62D000, v58, v83, "[%s]: Starting detector manager with audio format: %@", v61, 0x16u);
      sub_23D654530(v71);
      MEMORY[0x23EEE7580](v71, -1, -1);
      v73 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x23EEE7580](v73, -1, -1);
      MEMORY[0x23EEE7580](v61, -1, -1);
    }

    v74 = sub_23D685AA0();
    v75 = swift_allocObject();
    *(v75 + 16) = v56;
    *(v75 + 24) = v57;
    v101 = sub_23D680170;
    v102 = v75;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_23D650AF8;
    v100 = &block_descriptor_36_0;
    v76 = _Block_copy(&aBlock);
    v77 = v56;
    v78 = v57;

    v79 = v92;
    sub_23D685890();
    aBlock = MEMORY[0x277D84F90];
    v80 = v95;
    v81 = v96;
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v79, v80, v76);
    _Block_release(v76);

    (v90)(v80, v81);
    v51(v79, v94);
  }
}

void AXSDNSControllerImplementation.receivedObservation(_:forDetector:)(void *a1, void *a2)
{
  v3 = v2;
  if ([a1 detected])
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v6 = sub_23D685860();
    __swift_project_value_buffer(v6, qword_27E2E0868);
    v7 = a2;
    v8 = a1;
    v9 = sub_23D685850();
    v10 = sub_23D685A40();

    v11 = &selRef_bufferSize;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315394;
      v14 = [v7 soundIdentifier];
      v15 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v17 = v16;

      v18 = sub_23D652534(v15, v17, &v25);

      *(v12 + 4) = v18;
      v11 = &selRef_bufferSize;
      *(v12 + 12) = 2048;
      [v8 confidence];
      *(v12 + 14) = v19;
      _os_log_impl(&dword_23D62D000, v9, v10, "Detected type: %s at confidence level: %f", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEE7580](v13, -1, -1);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    v20 = [v7 soundIdentifier];
    v21 = AXSDSoundDetectionTypeForIdentifier();

    v24 = v21;
    [v8 v11[16]];
    *&v22 = v22;
    AXSDSoundDetectionGenerateUserNotificationForDetectionType(v24, *&v22);

    v23 = objc_opt_self();
    if ([v23 isInternalInstall] && objc_msgSend(objc_opt_self(), sel_isEnrolled))
    {
      [*(v3 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager) saveDetectionResult_];
    }

    if ([v23 isInternalInstall] && *(v3 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections))
    {
      AXSDNSControllerImplementation.trackObservation(_:forDetector:)(v8, v7);
    }
  }
}

unint64_t sub_23D67EE10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D685AF0();
  return sub_23D67FBD4(a1, v5, &qword_27E2E0560, off_278BDC930);
}

unint64_t sub_23D67EE60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D685AF0();
  return sub_23D67FBD4(a1, v5, &qword_27E2E0720, 0x277CCABB0);
}

unint64_t sub_23D67EEB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D685DA0();
  sub_23D685940();
  v6 = sub_23D685DC0();

  return sub_23D67FCA0(a1, a2, v6);
}

unint64_t sub_23D67EF28(uint64_t a1)
{
  v3 = *(v1 + 40);
  _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  sub_23D685DA0();
  sub_23D685940();
  v4 = sub_23D685DC0();

  return sub_23D67FD58(a1, v4);
}

uint64_t sub_23D67EFBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0750, &qword_23D689620);
  result = sub_23D685CB0();
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
      result = sub_23D685AF0();
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

uint64_t sub_23D67F22C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0760, &unk_23D689630);
  result = sub_23D685CB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v33 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = *(v8 + 40);
      result = sub_23D685AF0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23D67F4A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0A40, &qword_23D689618);
  v37 = a2;
  result = sub_23D685CB0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v8 + 40);
      _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      sub_23D685DA0();
      sub_23D685940();
      v26 = sub_23D685DC0();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

id sub_23D67F768(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23D67EE10(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23D67EFBC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_23D67EE10(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23D678B34();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

id sub_23D67F8E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_23D67EE60(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_23D67F22C(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_23D67EE60(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_23D654A7C(0, &qword_27E2E0720, 0x277CCABB0);
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_23D678C98();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

id sub_23D67FA68(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_23D67EF28(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_23D67F4A0(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_23D67EF28(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AXSDSoundDetectionType();
        result = sub_23D685D20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_23D678E10();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_23D67FBD4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_23D654A7C(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_23D685B00();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_23D67FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D685D00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23D67FD58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v9 = v8;
      if (v7 == _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0() && v9 == v10)
      {
        break;
      }

      v12 = sub_23D685D00();

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

unint64_t sub_23D67FE5C(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  result = sub_23D67EF28(a2);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v15)
  {
    sub_23D67F4A0(v15, isUniquelyReferenced_nonNull_native);
    result = sub_23D67EF28(a2);
    if ((v3 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    type metadata accessor for AXSDSoundDetectionType();
    result = sub_23D685D20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_23D678E10();
    result = v19;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v3)
  {
LABEL_7:
    v17 = v9[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = a1;
LABEL_12:
    *v4 = v9;
    return v18;
  }

LABEL_10:
  v9[(result >> 6) + 8] |= 1 << result;
  *(v9[6] + 8 * result) = a2;
  *(v9[7] + 8 * result) = a1;
  v20 = v9[2];
  v14 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v14)
  {
    v9[2] = v21;
    v22 = a2;
    v18 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D67FFF0(unint64_t *a1, void (*a2)(uint64_t))
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

id _s18AXSoundDetectionUI30AXSDNSControllerImplementationC14receivedBuffer_2at6isFileySo16AVAudioPCMBufferC_So0K4TimeCSbtF_0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  [*(v2 + v5) processAudioBuffer:a1 atTime:a2];
  result = [objc_opt_self() isInternalInstall];
  if (result)
  {
    result = [objc_opt_self() isEnrolled];
    if (result)
    {
      return [*(v2 + OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager) trackBuffer:a1 atTime:a2];
    }
  }

  return result;
}

id sub_23D680114(SEL *a1)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*(v3 + v4) *a1];
}

id sub_23D680170()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  return [*(v2 + v3) startDetectionWithFormat_];
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC18receivedCompletionyySo20SNDetectSoundRequestCF_0(void *a1)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = a1;
  oslog = sub_23D685850();
  v4 = sub_23D685A50();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_23D62D000, oslog, v4, "Received completion for request: %@", v5, 0xCu);
    sub_23D654530(v6);
    MEMORY[0x23EEE7580](v6, -1, -1);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC13receivedError_12fromDetectorys0G0_p_So20SNDetectSoundRequestCtF_0(void *a1, void *a2)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v4 = sub_23D685860();
  __swift_project_value_buffer(v4, qword_27E2E0868);
  v5 = a2;
  v6 = a1;
  oslog = sub_23D685850();
  v7 = sub_23D685A60();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2112;
    v10 = v5;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    v9[1] = v12;
    _os_log_impl(&dword_23D62D000, oslog, v7, "Received error for request: %@ - error: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v9, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }
}

void AXSDSoundDetectionGenerateUserNotificationForDetectionType_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_23D62D000, v1, OS_LOG_TYPE_FAULT, "Asked to send notification for type %{public}@, but it's not in the list of detectors %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionGenerateUserNotificationForDetectionType_cold_2(uint64_t a1, NSObject *a2, float a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "Requesting send notification for detection: %@ w/ confidence %f", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void _SoundDetectionSendNotificationForCustomDetector_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v3 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_23D62D000, v4, v5, "Requesting send notification for detector: %@ %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionSendKShotModelFailedNotification_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Requesting send notification for failed training of detector: %@ with reason: unknown error.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void AXSDSoundDetectionSendKShotModelFailedWithEmptySoundEmbeddingsNotification_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Requesting send notification for failed training of detector: %@ with reason: empty sound embeddings.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void AXSDKShotGatherFilesAndGenerateRadarForDetector_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_23D62D000, v0, OS_LOG_TYPE_FAULT, "no detector identifier! %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}
uint64_t sub_23A7AE2D8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_23A7AE354()
{
  v1 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_quickLookPreviewAppExtensionPointQuery;
  v2 = sub_23A7EE0F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_23A7A8E74(v0 + OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess, &unk_27DFA9F80, &unk_23A7FD810);
  sub_23A7A8E74(v0 + OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config, &qword_27DFA97C8, &unk_23A7FD858);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for QLHostRemotePreviewModel()
{
  result = qword_27DFA9768;
  if (!qword_27DFA9768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7AE484()
{
  v0 = sub_23A7EE0F4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23A7AE5C0(319, &qword_27DFA9778, MEMORY[0x277CC5DB8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_23A7AE5C0(319, &qword_27DFA9780, MEMORY[0x277CC5DA8]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23A7AE5C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23A7EEC34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7AE62C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23A7AE674()
{
  v1 = *(sub_23A7EDFE4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = sub_23A7EDFB4();
  [v2 previewTerminatedWithSessionUUID_];
}

uint64_t sub_23A7AE708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A7AE770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97C8, &unk_23A7FD858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7AE7E0()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA97D8);
  __swift_project_value_buffer(v0, qword_27DFA97D8);
  return sub_23A7EE3A4();
}

id sub_23A7AE860(uint64_t a1, char a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23A7EDF24();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_23A7EDF64();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_23A7EDEF4();

    swift_willThrow();
    v11 = sub_23A7EDF64();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

void static PreviewApplication.restoreScene(items:targetBundleID:sceneID:completionHandler:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, NSObject *a7)
{
  sub_23A7AFAF8(a1, a2, a3, a4, a5, a6, a7, &unk_284D5C4F8, sub_23A7B1AEC, &unk_284D5C520, &unk_23A7FD888);
}

{
  sub_23A7AFAF8(a1, a2, a3, a4, a5, a6, a7, &unk_284D5C548, sub_23A7B1FD8, &unk_284D5C570, &unk_23A7FD898);
}

uint64_t sub_23A7AEA18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA97F0, &qword_23A7FD878);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_23A7A8E74(a1, qword_27DFA97F0, &qword_23A7FD878);
    sub_23A7B24E4(a2, type metadata accessor for PreviewApplication.RestorationSession, type metadata accessor for PreviewApplication.RestorationSession, sub_23A7B3C68, v8);
    v14 = sub_23A7EDFE4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_23A7A8E74(v8, qword_27DFA97F0, &qword_23A7FD878);
  }

  else
  {
    sub_23A7B7C34(a1, v12, type metadata accessor for PreviewApplication.RestorationSession);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23A7B35E0(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23A7EDFE4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23A7AEC64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_23A7A8E74(a1, &qword_27DFA98B0, &qword_23A7FD8E8);
    sub_23A7B24E4(a2, type metadata accessor for PreviewApplication.PreviewSessionMap, type metadata accessor for PreviewApplication.PreviewSessionMap, sub_23A7B3F94, v8);
    v14 = sub_23A7EDFE4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_23A7A8E74(v8, &qword_27DFA98B0, &qword_23A7FD8E8);
  }

  else
  {
    sub_23A7B7C34(a1, v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23A7B37CC(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23A7EDFE4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23A7AEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  sub_23A7EEA34();
  *(v8 + 208) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 216) = v10;
  *(v8 + 224) = v9;

  return MEMORY[0x2822009F8](sub_23A7AEF64, v10, v9);
}

uint64_t sub_23A7AEF64()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFAC690;
  v0[29] = qword_27DFAC690;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_23A7AF048;
  v4 = v0[18];
  v3 = v0[19];

  return sub_23A7AD3A0(v1, v3);
}

uint64_t sub_23A7AF048(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[27];
    v6 = v3[28];
    v7 = sub_23A7AF408;
  }

  else
  {
    v8 = v3[29];

    v5 = v3[27];
    v6 = v3[28];
    v7 = sub_23A7AF164;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7AF164()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  type metadata accessor for PreviewApplication.RestorationItem(0);
  v6 = sub_23A7EE994();
  v0[33] = v6;
  v7 = sub_23A7EE814();
  v0[34] = v7;
  v8 = sub_23A7EDFB4();
  v0[35] = v8;
  v0[2] = v0;
  v0[3] = sub_23A7AF2D8;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_40;
  v0[14] = v9;
  [v1 restoreWithItems:v6 targetAppBundleIdentifier:v7 sessionUUID:v8 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7AF2D8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_23A7AF5CC;
  }

  else
  {
    v6 = sub_23A7B82FC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23A7AF408()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[32];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA97D8);
  v5 = v3;
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v6, v7, "Error restoring scene: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[23];

  v14(MEMORY[0x277D84F90]);
  sub_23A7B4F80(v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_23A7AF5CC()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[26];

  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[36];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v8 = sub_23A7EE3B4();
  __swift_project_value_buffer(v8, qword_27DFA97D8);
  v9 = v7;
  v10 = sub_23A7EE394();
  v11 = sub_23A7EEB34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23A714000, v10, v11, "Error restoring scene: %@", v12, 0xCu);
    sub_23A7A8E74(v13, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v13, -1, -1);
    MEMORY[0x23EE8D760](v12, -1, -1);
  }

  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];

  v18(MEMORY[0x277D84F90]);
  sub_23A7B4F80(v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_23A7AF7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23A7B80AC(a3, v27 - v11);
  v13 = sub_23A7EEA64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23A7A8E74(v12, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23A7EE9E4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23A7EE8C4() + 32;
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

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

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

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
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

void sub_23A7AFAF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v107 = a5;
  v108 = a8;
  v123 = a7;
  v117 = a6;
  v114 = a10;
  v115 = a2;
  v109 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA97F0, &qword_23A7FD878);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v111 = &v98 - v20;
  v110 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v112 = *(v110 - 8);
  v21 = *(v112 + 64);
  v22 = MEMORY[0x28223BE20](v110);
  v120 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v98 - v24;
  v26 = sub_23A7EDFE4();
  v121 = *(v26 - 8);
  v122 = v26;
  v27 = *(v121 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v118 = v29;
  v119 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v116 = &v98 - v30;
  v31 = [objc_opt_self() mainBundle];
  v32 = [v31 bundleIdentifier];

  if (v32)
  {
    v33 = sub_23A7EE844();
    v35 = v34;

    if (v33 == 0xD000000000000015 && 0x800000023A80BA90 == v35)
    {

      v36 = v25;
LABEL_6:
      v105 = a4;
      v106 = v17;
      if (qword_27DFA8D38 != -1)
      {
        swift_once();
      }

      v38 = sub_23A7EE3B4();
      __swift_project_value_buffer(v38, qword_27DFA97D8);

      v39 = v107;

      v40 = sub_23A7EE394();
      v41 = sub_23A7EEB44();

      v42 = os_log_type_enabled(v40, v41);
      v104 = a11;
      v103 = a1;
      v102 = a3;
      if (v42)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v124[0] = v44;
        *v43 = 136315650;
        v45 = type metadata accessor for PreviewApplication.RestorationItem(0);
        v46 = MEMORY[0x23EE8BE10](a1, v45);
        v48 = sub_23A797A74(v46, v47, v124);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_23A797A74(v115, a3, v124);
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_23A797A74(v105, v39, v124);
        _os_log_impl(&dword_23A714000, v40, v41, "Restoring scene with items: %s target bundle ID: %s sceneID: %s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EE8D760](v44, -1, -1);
        v49 = v43;
        v36 = v25;
        MEMORY[0x23EE8D760](v49, -1, -1);
      }

      v50 = v121;
      v51 = v116;
      sub_23A7EDFD4();
      v52 = *(v50 + 16);
      v53 = v122;
      v52(v36, v51, v122);
      v54 = v119;
      v52(v119, v51, v53);
      v55 = *(v50 + 80);
      v99 = ~v55;
      v56 = (v55 + 32) & ~v55;
      v100 = v55;
      v57 = swift_allocObject();
      v58 = v50;
      v59 = v57;
      v60 = v123;
      *(v57 + 16) = v117;
      *(v57 + 24) = v60;
      v61 = *(v58 + 32);
      v108 = v58 + 32;
      v101 = v61;
      v61((v57 + v56), v54, v53);
      v62 = v110;
      v63 = (v36 + *(v110 + 20));
      *v63 = v105;
      v63[1] = v39;
      v64 = (v36 + *(v62 + 24));
      *v64 = v109;
      v64[1] = v59;
      v65 = qword_27DFA8D58;

      if (v65 != -1)
      {
        swift_once();
      }

      v52(v54, v51, v53);
      v66 = v111;
      sub_23A7B802C(v36, v111, type metadata accessor for PreviewApplication.RestorationSession);
      v67 = v112 + 56;
      (*(v112 + 56))(v66, 0, 1, v62);
      swift_beginAccess();
      sub_23A7AEA18(v66, v54);
      swift_endAccess();
      v68 = type metadata accessor for QLHostRemotePreviewModel();
      v69 = *(v68 + 48);
      v70 = *(v68 + 52);
      v71 = swift_allocObject();
      v72 = v36;
      v98 = v36;
      v73 = v71;
      sub_23A7EE0B4();
      v74 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
      v75 = sub_23A7EE154();
      (*(*(v75 - 8) + 56))(v73 + v74, 1, 1, v75);
      v76 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
      v77 = sub_23A7EE124();
      (*(*(v77 - 8) + 56))(v73 + v76, 1, 1, v77);
      v78 = sub_23A7EEA64();
      (*(*(v78 - 8) + 56))(v106, 1, 1, v78);
      sub_23A7B802C(v72, v120, type metadata accessor for PreviewApplication.RestorationSession);
      v52(v54, v51, v53);
      sub_23A7EEA34();
      v79 = v103;

      v80 = v102;

      v81 = sub_23A7EEA24();
      v82 = (*(v67 + 24) + 40) & ~*(v67 + 24);
      v83 = (v113 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
      v85 = (v84 + 23) & 0xFFFFFFFFFFFFFFF8;
      v86 = (v100 + v85 + 16) & v99;
      v87 = swift_allocObject();
      v88 = MEMORY[0x277D85700];
      v87[2] = v81;
      v87[3] = v88;
      v87[4] = v73;
      sub_23A7B7C34(v120, v87 + v82, type metadata accessor for PreviewApplication.RestorationSession);
      *(v87 + v83) = v79;
      v89 = (v87 + v84);
      *v89 = v115;
      v89[1] = v80;
      v90 = (v87 + v85);
      v91 = v123;
      *v90 = v117;
      v90[1] = v91;
      v92 = v87 + v86;
      v93 = v122;
      v101(v92, v119, v122);
      sub_23A7AF7B0(0, 0, v106, v104, v87);

      sub_23A7B7DC4(v98, type metadata accessor for PreviewApplication.RestorationSession);
      (*(v121 + 8))(v116, v93);
      return;
    }

    v37 = sub_23A7EEE04();

    v36 = v25;
    if (v37)
    {
      goto LABEL_6;
    }
  }

  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v94 = sub_23A7EE3B4();
  __swift_project_value_buffer(v94, qword_27DFA97D8);
  v123 = sub_23A7EE394();
  v95 = sub_23A7EEB34();
  if (os_log_type_enabled(v123, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_23A714000, v123, v95, "This API is only allowed to be used by the system preview application", v96, 2u);
    MEMORY[0x23EE8D760](v96, -1, -1);
  }

  v97 = v123;
}

uint64_t sub_23A7B0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v14;
  *(v8 + 184) = v13;
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a5;
  *(v8 + 160) = a6;
  *(v8 + 144) = a4;
  sub_23A7EEA34();
  *(v8 + 208) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 216) = v10;
  *(v8 + 224) = v9;

  return MEMORY[0x2822009F8](sub_23A7B05E4, v10, v9);
}

uint64_t sub_23A7B05E4()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFAC690;
  v0[29] = qword_27DFAC690;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_23A7B06C8;
  v4 = v0[18];
  v3 = v0[19];

  return sub_23A7AD3A0(v1, v3);
}

uint64_t sub_23A7B06C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v10 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[27];
    v6 = v3[28];
    v7 = sub_23A7B0B10;
  }

  else
  {
    v8 = v3[29];

    v5 = v3[27];
    v6 = v3[28];
    v7 = sub_23A7B07E4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7B07E4()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  type metadata accessor for PreviewApplication.RestorationItem(0);
  v6 = sub_23A7EE994();
  v0[33] = v6;
  v7 = sub_23A7EE814();
  v0[34] = v7;
  v8 = sub_23A7EDFB4();
  v0[35] = v8;
  v0[2] = v0;
  v0[3] = sub_23A7B0958;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_5;
  v0[14] = v9;
  [v1 restoreSandboxAccessWithItems:v6 targetAppBundleIdentifier:v7 sessionUUID:v8 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7B0958()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 224);
  v5 = *(v1 + 216);
  if (v3)
  {
    v6 = sub_23A7B0CE8;
  }

  else
  {
    v6 = sub_23A7B0A88;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23A7B0A88()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[26];

  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7B0B10()
{
  v1 = v0[29];
  v2 = v0[26];

  v3 = v0[32];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA97D8);
  v5 = v3;
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v6, v7, "Error restoring scene: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  v12 = v0[24];
  v13 = v0[25];
  v14 = v0[23];

  v15 = v3;
  v14(MEMORY[0x277D84F90], v3);

  sub_23A7B4F80(v13);
  v16 = v0[1];

  return v16();
}

uint64_t sub_23A7B0CE8()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[26];

  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[36];
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v8 = sub_23A7EE3B4();
  __swift_project_value_buffer(v8, qword_27DFA97D8);
  v9 = v7;
  v10 = sub_23A7EE394();
  v11 = sub_23A7EEB34();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_23A714000, v10, v11, "Error restoring scene: %@", v12, 0xCu);
    sub_23A7A8E74(v13, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v13, -1, -1);
    MEMORY[0x23EE8D760](v12, -1, -1);
  }

  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[23];

  v19 = v7;
  v18(MEMORY[0x277D84F90], v7);

  sub_23A7B4F80(v17);
  v20 = v0[1];

  return v20();
}

uint64_t sub_23A7B0EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_23A7EEA34();
  v5[11] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7B8300, v7, v6);
}

uint64_t sub_23A7B1090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_23A7EEA34();
  v5[11] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7B1128, v7, v6);
}

void sub_23A7B1128()
{
  v1 = v0[11];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  v4 = sub_23A7A3798(0, &qword_27DFA9890, 0x277D75940);
  sub_23A7B7D5C();
  v5 = sub_23A7EEAF4();

  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23A7EEC74();
    sub_23A7EEB04();
    v5 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[6];
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v5 + 56);

    v7 = v11;
    v8 = 0;
  }

  v35 = v7;
  v14 = (v7 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v19)
    {
      while (1)
      {
        v21 = v14;
        v22 = v5;
        v23 = v6;
        v24 = v4;
        v36 = v0[9];
        v37 = v0[10];
        v38 = v19;
        v25 = [v19 session];
        v26 = [v25 persistentIdentifier];

        v27 = sub_23A7EE844();
        v29 = v28;

        if (v27 == v36 && v29 == v37)
        {
          break;
        }

        v31 = v0[9];
        v32 = v0[10];
        v33 = sub_23A7EEE04();

        v6 = v23;
        v5 = v22;
        if (v33)
        {
          goto LABEL_25;
        }

        v8 = v17;
        v9 = v18;
        v4 = v24;
        v14 = v21;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v20 = sub_23A7EEC94();
        if (v20)
        {
          v0[8] = v20;
          swift_dynamicCast();
          v19 = v0[7];
          v17 = v8;
          v18 = v9;
          if (v19)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_23A7A69C8();

      objc_opt_self();
    }

    else
    {
LABEL_23:
      sub_23A7A69C8();
    }

    v34 = v0[1];

    v34();
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_23;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A7B1490(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  a4(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23A7B1AEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(sub_23A7EDFE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6(a1);

  return sub_23A7B4F80(v2 + v5);
}

uint64_t sub_23A7B1B74(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_23A7EDFE4() - 8);
  v10 = (*(v9 + 80) + v8 + 16) & ~*(v9 + 80);
  v21 = v1[3];
  v22 = v1[2];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = *(v13 + 1);
  v16 = v1 + v8;
  v18 = *(v1 + v8);
  v17 = *(v16 + 1);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_23A7A3828;

  return sub_23A7AEEB0(a1, v22, v21, v11, v1 + v5, v12, v14, v15);
}

uint64_t sub_23A7B1D24(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A7B1E1C;

  return v7(a1);
}

uint64_t sub_23A7B1E1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = sub_23A7EDFE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A7B1FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_23A7EDFE4() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8(a1, a2);

  return sub_23A7B4F80(v3 + v7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = (type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v23 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  v10 = *(v6 + 8);
  v10(v0 + v3, v5);
  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = (v0 + v3 + v1[8]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = v2 | v7;
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v7 + v17 + 16) & ~v7;
  v19 = *(v0 + v15);

  v20 = *(v0 + v16 + 8);

  v21 = *(v0 + v17 + 8);

  v10(v0 + v18, v5);

  return MEMORY[0x2821FE8E8](v0, v18 + v23, v14 | 7);
}

uint64_t sub_23A7B2238(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PreviewApplication.RestorationSession(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_23A7EDFE4() - 8);
  v10 = (*(v9 + 80) + v8 + 16) & ~*(v9 + 80);
  v21 = v1[3];
  v22 = v1[2];
  v11 = v1[4];
  v12 = *(v1 + v6);
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = *(v13 + 1);
  v16 = v1 + v8;
  v18 = *(v1 + v8);
  v17 = *(v16 + 1);
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_23A7A3828;

  return sub_23A7B0530(a1, v22, v21, v11, v1 + v5, v12, v14, v15);
}

uint64_t sub_23A7B2414(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_23A7EEAB4();
  if (v3 <= 0x3F)
  {
    result = sub_23A7EEAA4();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A7B24E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = sub_23A7C0FD0(a1);
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v30 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_23A7EDFE4();
    v20 = v14;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_23A7B7C34(v21 + *(v29 + 72) * v20, a5, a3);
    sub_23A7B3290(v20, v17, a3);
    *v9 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_23A7B2698(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23A7EDFE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
  v48 = a2;
  result = sub_23A7EEDA4();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23A7B7C34(v31 + v32 * v28, v52, type metadata accessor for PreviewApplication.RestorationSession);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23A7B802C(v33 + v32 * v28, v52, type metadata accessor for PreviewApplication.RestorationSession);
      }

      v34 = *(v16 + 40);
      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
      result = sub_23A7EE7E4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_23A7B7C34(v52, *(v16 + 56) + v32 * v24, type metadata accessor for PreviewApplication.RestorationSession);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23A7B2B38(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23A7EDFE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
  v48 = a2;
  result = sub_23A7EEDA4();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23A7B7C34(v31 + v32 * v28, v52, type metadata accessor for PreviewApplication.PreviewSessionMap);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_23A7B802C(v33 + v32 * v28, v52, type metadata accessor for PreviewApplication.PreviewSessionMap);
      }

      v34 = *(v16 + 40);
      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
      result = sub_23A7EE7E4();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_23A7B7C34(v52, *(v16 + 56) + v32 * v24, type metadata accessor for PreviewApplication.PreviewSessionMap);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23A7B2FD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
  v36 = a2;
  result = sub_23A7EEDA4();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23A7A8AB8(v25, v37);
      }

      else
      {
        sub_23A79842C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23A7EEE84();
      sub_23A7EE8E4();
      result = sub_23A7EEEA4();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23A7A8AB8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_23A7B3290(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_23A7EDFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_23A7EEC64();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_23A7B7EE4(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
      v25 = sub_23A7EE7E4();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A7B35E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A7C0FD0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for PreviewApplication.RestorationSession(0);
      return sub_23A7B828C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for PreviewApplication.RestorationSession);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_23A7B3C68();
    goto LABEL_7;
  }

  sub_23A7B2698(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_23A7C0FD0(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23A7EEE34();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A7B3B08(v15, v12, a1, v21, type metadata accessor for PreviewApplication.RestorationSession, type metadata accessor for PreviewApplication.RestorationSession);
}

uint64_t sub_23A7B37CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A7EDFE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23A7C0FD0(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
      return sub_23A7B828C(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for PreviewApplication.PreviewSessionMap);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_23A7B3F94();
    goto LABEL_7;
  }

  sub_23A7B2B38(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_23A7C0FD0(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_23A7EEE34();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_23A7B3B08(v15, v12, a1, v21, type metadata accessor for PreviewApplication.PreviewSessionMap, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

_OWORD *sub_23A7B39B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23A7C1068(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23A7B42C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23A7B2FD8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23A7C1068(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23A7EEE34();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_23A7A8AB8(a1, v23);
  }

  else
  {
    sub_23A7B3BFC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_23A7B3B08(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_23A7EDFE4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_23A7B7C34(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

_OWORD *sub_23A7B3BFC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23A7A8AB8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

char *sub_23A7B3C68()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23A7EDFE4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
  v7 = *v0;
  v8 = sub_23A7EED94();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_23A7B802C(*(v7 + 56) + v28, v37, type metadata accessor for PreviewApplication.RestorationSession);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_23A7B7C34(v27, *(v29 + 56) + v28, type metadata accessor for PreviewApplication.RestorationSession);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_23A7B3F94()
{
  v1 = v0;
  v2 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23A7EDFE4();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B8, &qword_23A7FD900);
  v7 = *v0;
  v8 = sub_23A7EED94();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_23A7B802C(*(v7 + 56) + v28, v37, type metadata accessor for PreviewApplication.PreviewSessionMap);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_23A7B7C34(v27, *(v29 + 56) + v28, type metadata accessor for PreviewApplication.PreviewSessionMap);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_23A7B42C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98C8, &qword_23A7FD918);
  v2 = *v0;
  v3 = sub_23A7EED94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23A79842C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23A7A8AB8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_23A7B4464(uint64_t *a1)
{
  v2 = sub_23A7EDF64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v74 = (&v73 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v73 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v73 - v19);
  v21 = type metadata accessor for PreviewItem.Source(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[1];
  v75 = *a1;
  v76 = v25;
  v77 = a1[2];
  v26 = type metadata accessor for PreviewItem(0);
  sub_23A7B802C(a1 + *(v26 + 24), v24, type metadata accessor for PreviewItem.Source);
  (*(v3 + 32))(v20, v24, v2);
  sub_23A7A3798(0, &qword_27DFA9888, 0x277CC6438);
  v78 = v3;
  v27 = *(v3 + 16);
  v27(v18, v20, v2);
  v28 = sub_23A7AE860(v18, 0);
  v42 = v28;
  if (v28)
  {
    if (qword_27DFA8D38 != -1)
    {
      swift_once();
    }

    v43 = sub_23A7EE3B4();
    __swift_project_value_buffer(v43, qword_27DFA97D8);
    v27(v15, v20, v2);
    v44 = sub_23A7EE394();
    v45 = sub_23A7EEB44();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v73 = v46;
      v74 = swift_slowAlloc();
      v79[0] = v74;
      *v46 = 136315138;
      sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260]);
      v47 = sub_23A7EEDD4();
      v49 = v48;
      v50 = *(v78 + 8);
      v50(v15, v2);
      v51 = sub_23A797A74(v47, v49, v79);

      v52 = v73;
      *(v73 + 4) = v51;
      v53 = v45;
      v39 = v50;
      v54 = v52;
      _os_log_impl(&dword_23A714000, v44, v53, "Readwrite sandbox wrapper created for PreviewItem %s", v52, 0xCu);
      v55 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x23EE8D760](v55, -1, -1);
      v56 = v54;
      goto LABEL_20;
    }

    v39 = *(v78 + 8);
    v39(v15, v2);
    goto LABEL_26;
  }

  v27(v12, v20, v2);
  v29 = sub_23A7AE860(v12, 1);
  v42 = v29;
  if (v29)
  {
    if (qword_27DFA8D38 != -1)
    {
      swift_once();
    }

    v58 = sub_23A7EE3B4();
    __swift_project_value_buffer(v58, qword_27DFA97D8);
    v59 = v74;
    v27(v74, v20, v2);
    v44 = sub_23A7EE394();
    v60 = sub_23A7EEB44();
    if (os_log_type_enabled(v44, v60))
    {
      v61 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79[0] = v73;
      *v61 = 136315138;
      sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260]);
      v62 = sub_23A7EEDD4();
      v63 = v59;
      v65 = v64;
      v39 = *(v78 + 8);
      v39(v63, v2);
      v66 = sub_23A797A74(v62, v65, v79);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_23A714000, v44, v60, "Readonly sandbox wrapper created for PreviewItem %s", v61, 0xCu);
      v67 = v73;
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x23EE8D760](v67, -1, -1);
      v56 = v61;
LABEL_20:
      MEMORY[0x23EE8D760](v56, -1, -1);

      if (!v76)
      {
LABEL_21:
        v57 = 0;
LABEL_28:
        v70 = objc_allocWithZone(MEMORY[0x277D43F58]);
        v69 = [v70 initWithURLSandboxWrapper:v42 previewTitle:v57 editingMode:v77];
        goto LABEL_29;
      }

LABEL_27:
      v57 = sub_23A7EE814();
      goto LABEL_28;
    }

    v39 = *(v78 + 8);
    v39(v59, v2);
LABEL_26:
    if (!v76)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v30 = sub_23A7EE3B4();
  __swift_project_value_buffer(v30, qword_27DFA97D8);
  v27(v7, v20, v2);
  v31 = sub_23A7EE394();
  v32 = sub_23A7EEB34();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v74 = v20;
    v35 = v34;
    v79[0] = v34;
    *v33 = 136315138;
    sub_23A7B7EE4(&qword_27DFA98D0, MEMORY[0x277CC9260]);
    v36 = sub_23A7EEDD4();
    v38 = v37;
    v39 = *(v78 + 8);
    v39(v7, v2);
    v40 = sub_23A797A74(v36, v38, v79);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_23A714000, v31, v32, "Couod not create sandbox wrapper created for PreviewItem %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v41 = v35;
    v20 = v74;
    MEMORY[0x23EE8D760](v41, -1, -1);
    MEMORY[0x23EE8D760](v33, -1, -1);
  }

  else
  {

    v39 = *(v78 + 8);
    v39(v7, v2);
  }

  v42 = sub_23A7EDF24();
  if (v76)
  {
    v57 = sub_23A7EE814();
  }

  else
  {
    v57 = 0;
  }

  v68 = objc_allocWithZone(MEMORY[0x277D43F58]);
  v69 = [v68 initWithURL:v42 previewTitle:v57 editingMode:v77];
LABEL_29:
  v71 = v69;

  v39(v20, v2);
  return v71;
}

uint64_t sub_23A7B4CD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23A7EEC84())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EE8C140](j, a1);
        v4 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v5 = *(a1 + 8 * j + 32);
      swift_unknownObjectRetain();
      v4 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

LABEL_11:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([v6 previewItemDataProvider])
        {
          swift_unknownObjectRelease();
          if (qword_27DFA8D38 != -1)
          {
            swift_once();
          }

          v18 = sub_23A7EE3B4();
          __swift_project_value_buffer(v18, qword_27DFA97D8);
          v14 = sub_23A7EE394();
          v15 = sub_23A7EEB34();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "Invalid QLItem dataProvider found in preview items.";
LABEL_22:
            _os_log_impl(&dword_23A714000, v14, v15, v17, v16, 2u);
            MEMORY[0x23EE8D760](v16, -1, -1);
          }

LABEL_23:

          swift_unknownObjectRelease();
          return 0;
        }

        v8 = [v7 previewItemData];
        if (v8)
        {
          v9 = v8;
          v10 = sub_23A7EDF94();
          v12 = v11;

          sub_23A7A8BF8(v10, v12);
          if (qword_27DFA8D38 != -1)
          {
            swift_once();
          }

          v13 = sub_23A7EE3B4();
          __swift_project_value_buffer(v13, qword_27DFA97D8);
          v14 = sub_23A7EE394();
          v15 = sub_23A7EEB34();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            v17 = "Invalid QLItem data found in preview items.";
            goto LABEL_22;
          }

          goto LABEL_23;
        }
      }

      swift_unknownObjectRelease();
      if (v4 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return 1;
}

uint64_t sub_23A7B4F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA97F0, &qword_23A7FD878);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_23A7EDFE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v14 = sub_23A7EE3B4();
  __swift_project_value_buffer(v14, qword_27DFA97D8);
  v32 = *(v7 + 16);
  v32(v13, a1, v6);
  v15 = sub_23A7EE394();
  v16 = sub_23A7EEB44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v29 = swift_slowAlloc();
    v33 = v29;
    *v18 = 136315138;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0]);
    v19 = sub_23A7EEDD4();
    v30 = v11;
    v20 = v5;
    v22 = v21;
    (*(v7 + 8))(v13, v6);
    v23 = sub_23A797A74(v19, v22, &v33);
    v5 = v20;
    v11 = v30;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_23A714000, v15, v16, "Untracking restoration session: %s", v18, 0xCu);
    v24 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23EE8D760](v24, -1, -1);
    v25 = v18;
    a1 = v31;
    MEMORY[0x23EE8D760](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  v32(v11, a1, v6);
  v26 = type metadata accessor for PreviewApplication.RestorationSession(0);
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  swift_beginAccess();
  sub_23A7AEA18(v5, v11);
  return swift_endAccess();
}

uint64_t sub_23A7B5334(uint64_t a1)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = type metadata accessor for PreviewSession.Event(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v24 = sub_23A7C0FD0(v38);
  if ((v25 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v23 + 56) + *(v16 + 72) * v24, v20, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v20, v22, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7B802C(v14, v12, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v37 + 8))(v7, v4);
  sub_23A7B7DC4(v14, type metadata accessor for PreviewSession.Event);
  v27 = &v22[*(v15 + 24)];
  v28 = *(v27 + 1);
  if (v28)
  {
    v29 = *v27;
    v30 = sub_23A7EEA64();
    v31 = v36;
    (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    sub_23A7EEA34();

    v32 = sub_23A7EEA24();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v29;
    v33[5] = v28;
    sub_23A7AF7B0(0, 0, v31, &unk_23A7FD910, v33);
  }

  return sub_23A7B7DC4(v22, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B5798(uint64_t a1, void *a2)
{
  v37 = a2;
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v36 - v4;
  v5 = sub_23A7EDFE4();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for PreviewSession.Event(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v36 - v17);
  v19 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v36 - v25;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v28 = sub_23A7C0FD0(v42);
  if ((v29 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v27 + 56) + *(v20 + 72) * v28, v24, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v24, v26, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v30 = v37;
  *v18 = v37;
  swift_storeEnumTagMultiPayload();
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7B802C(v18, v16, type metadata accessor for PreviewSession.Event);
  v32 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v36 + 8))(v11, v8);
  sub_23A7B7DC4(v18, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  v33 = v40;
  (*(v38 + 16))(v40, v42, v39);
  v34 = v41;
  (*(v20 + 56))(v41, 1, 1, v19);
  swift_beginAccess();
  sub_23A7AEC64(v34, v33);
  swift_endAccess();
  return sub_23A7B7DC4(v26, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B5C48(uint64_t a1)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - v3;
  v4 = sub_23A7EDFE4();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for PreviewSession.Event(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v49 = *(v22 - 8);
  v23 = *(v49 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v30 = sub_23A7C0FD0(v50);
  if ((v31 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v29 + 56) + *(v49 + 72) * v30, v26, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v26, v28, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7B802C(v21, v19, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v11 + 8))(v14, v10);
  sub_23A7B7DC4(v21, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  v33 = &v28[*(v22 + 24)];
  v34 = *(v33 + 1);
  if (v34)
  {
    v35 = *v33;
    v36 = sub_23A7EEA64();
    v37 = v44;
    (*(*(v36 - 8) + 56))(v44, 1, 1, v36);
    sub_23A7EEA34();

    v38 = sub_23A7EEA24();
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v39[2] = v38;
    v39[3] = v40;
    v39[4] = v35;
    v39[5] = v34;
    sub_23A7AF7B0(0, 0, v37, &unk_23A7FD8F8, v39);
  }

  v41 = v47;
  (*(v45 + 16))(v47, v50, v46);
  v42 = v48;
  (*(v49 + 56))(v48, 1, 1, v22);
  swift_beginAccess();
  sub_23A7AEC64(v42, v41);
  swift_endAccess();
  return sub_23A7B7DC4(v28, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B61F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = type metadata accessor for PreviewSession.Event(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v22 = sub_23A7C0FD0(a1);
  if ((v23 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v21 + 56) + *(v14 + 72) * v22, v18, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v18, v20, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7B802C(v12, v10, type metadata accessor for PreviewSession.Event);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  (*(v26 + 8))(v5, v2);
  sub_23A7B7DC4(v12, type metadata accessor for PreviewSession.Event);
  sub_23A7EEA94();
  return sub_23A7B7DC4(v20, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B6550(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v45 = sub_23A7EDF64();
  v42 = *(v45 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A0, &qword_23A7FD8E0);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = type metadata accessor for PreviewSession.Event(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v25 = sub_23A7C0FD0(a1);
  if ((v26 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v24 + 56) + *(v17 + 72) * v25, v21, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v21, v23, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v27 = v42;
  v28 = v5;
  v36 = *(v42 + 16);
  v37 = v5;
  v29 = v45;
  v36(v15, v46, v45);
  v41 = v9;
  swift_storeEnumTagMultiPayload();
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  v40 = type metadata accessor for PreviewSession.Event;
  sub_23A7B802C(v15, v13, type metadata accessor for PreviewSession.Event);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  sub_23A7EEA84();
  v44 = *(v44 + 8);
  (v44)(v8, v28);
  v35 = type metadata accessor for PreviewSession.Event;
  sub_23A7B7DC4(v15, type metadata accessor for PreviewSession.Event);
  v30 = v43;
  v36(v43, v46, v29);
  v31 = type metadata accessor for PreviewItem(0);
  v32 = &v15[*(v31 + 28)];
  sub_23A7EDFD4();
  (*(v27 + 32))(&v15[*(v31 + 24)], v30, v29);
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = 1;
  swift_storeEnumTagMultiPayload();
  sub_23A7B802C(v15, v13, v40);
  sub_23A7EEA84();
  (v44)(v8, v37);
  sub_23A7B7DC4(v15, v35);
  sub_23A7EEA94();
  return sub_23A7B7DC4(v23, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

uint64_t sub_23A7B6A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = qword_27DFAC688;
  if (!*(qword_27DFAC688 + 16))
  {
    return swift_endAccess();
  }

  v15 = sub_23A7C0FD0(a1);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_23A7B802C(*(v14 + 56) + *(v7 + 72) * v15, v11, type metadata accessor for PreviewApplication.PreviewSessionMap);
  sub_23A7B7C34(v11, v13, type metadata accessor for PreviewApplication.PreviewSessionMap);
  swift_endAccess();
  v17 = &v13[*(v6 + 24)];
  v18 = *(v17 + 1);
  if (v18)
  {
    v19 = *v17;
    v20 = sub_23A7EEA64();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    sub_23A7EEA34();

    v21 = sub_23A7EEA24();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v19;
    v22[5] = v18;
    sub_23A7AF7B0(0, 0, v5, &unk_23A7FD8D8, v22);
  }

  return sub_23A7B7DC4(v13, type metadata accessor for PreviewApplication.PreviewSessionMap);
}

void sub_23A7B6CE8(unint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v62 = *(v64 - 8);
  v4 = *(v62 + 64);
  v5 = MEMORY[0x28223BE20](v64);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v9 = sub_23A7EDFE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  if (qword_27DFA8D38 != -1)
  {
    swift_once();
  }

  v17 = sub_23A7EE3B4();
  v18 = __swift_project_value_buffer(v17, qword_27DFA97D8);
  v19 = v10[2];
  v68 = a2;
  v66 = v19;
  v19(v16, a2, v9);

  v67 = v18;
  v20 = sub_23A7EE394();
  v21 = sub_23A7EEB44();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v59 = v14;
    v23 = v22;
    v24 = swift_slowAlloc();
    v61 = v8;
    v25 = v24;
    v69[0] = v24;
    *v23 = 136315394;
    v26 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    v27 = MEMORY[0x23EE8BE10](a1, v26);
    v29 = sub_23A797A74(v27, v28, v69);
    v60 = a1;
    v30 = v29;

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0]);
    v31 = sub_23A7EEDD4();
    v33 = v32;
    v65 = v10[1];
    v65(v16, v9);
    v34 = sub_23A797A74(v31, v33, v69);
    a1 = v60;

    *(v23 + 14) = v34;
    _os_log_impl(&dword_23A714000, v20, v21, "Did restore items: %s for session: %s", v23, 0x16u);
    swift_arrayDestroy();
    v35 = v25;
    v8 = v61;
    MEMORY[0x23EE8D760](v35, -1, -1);
    v36 = v23;
    v14 = v59;
    MEMORY[0x23EE8D760](v36, -1, -1);
  }

  else
  {

    v65 = v10[1];
    v65(v16, v9);
  }

  v37 = v68;
  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_27DFAC698;
  if (!*(qword_27DFAC698 + 16) || (v39 = sub_23A7C0FD0(v37), (v40 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_15;
  }

  v41 = *(v38 + 56);
  v42 = v63;
  sub_23A7B802C(v41 + *(v62 + 72) * v39, v63, type metadata accessor for PreviewApplication.RestorationSession);
  sub_23A7B7C34(v42, v8, type metadata accessor for PreviewApplication.RestorationSession);
  swift_endAccess();
  v43 = &v8[*(v64 + 24)];
  v44 = *v43;
  if (!*v43)
  {
    sub_23A7B7DC4(v8, type metadata accessor for PreviewApplication.RestorationSession);
LABEL_15:
    v66(v14, v37, v9);
    v47 = sub_23A7EE394();
    v48 = sub_23A7EEB34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v69[0] = v50;
      *v49 = 136315138;
      sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0]);
      v51 = sub_23A7EEDD4();
      v53 = v52;
      v65(v14, v9);
      v54 = sub_23A797A74(v51, v53, v69);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_23A714000, v47, v48, "Could not find restoration session with ID: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23EE8D760](v50, -1, -1);
      MEMORY[0x23EE8D760](v49, -1, -1);
    }

    else
    {

      v65(v14, v9);
    }

    return;
  }

  v45 = *(v43 + 1);
  if (a1 >> 62)
  {

    sub_23A7B7C24(v44);
    v57 = sub_23A7EED74();

    a1 = v57;
  }

  else
  {
    v46 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_23A7B7C24(v44);
    sub_23A7EEE14();
    if (!swift_dynamicCastMetatype())
    {
      v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        v56 = (v46 + 32);
        while (*v56)
        {
          ++v56;
          if (!--v55)
          {
            goto LABEL_13;
          }
        }

        a1 = v46 | 1;
      }
    }
  }

LABEL_13:
  v44(a1, 0);
  sub_23A7A2DD4(v44);

  sub_23A7B7DC4(v8, type metadata accessor for PreviewApplication.RestorationSession);
}

void sub_23A7B7410(uint64_t a1, uint64_t a2, char **a3)
{
  v63 = a2;
  v64 = a1;
  v68 = type metadata accessor for PreviewApplication.RestorationSession(0);
  v66 = *(v68 - 8);
  v4 = *(v66 + 64);
  v5 = MEMORY[0x28223BE20](v68);
  v67 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  v9 = sub_23A7EDFE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  if (qword_27DFA8D38 != -1)
  {
LABEL_39:
    swift_once();
  }

  v17 = sub_23A7EE3B4();
  v18 = __swift_project_value_buffer(v17, qword_27DFA97D8);
  v70 = v10[2];
  v70(v16, a3, v9);
  v71 = v18;
  v19 = sub_23A7EE394();
  v20 = sub_23A7EEB44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v62 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v69 = v10;
    v65 = v8;
    v61 = a3;
    v24 = v23;
    v72[0] = v23;
    *v22 = 136315138;
    sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0]);
    v25 = sub_23A7EEDD4();
    v27 = v26;
    v28 = v69[1];
    v28(v16, v9);
    v29 = sub_23A797A74(v25, v27, v72);

    *(v22 + 4) = v29;
    v30 = v20;
    v31 = v28;
    _os_log_impl(&dword_23A714000, v19, v30, "Did restore for session: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v32 = v24;
    a3 = v61;
    v8 = v65;
    MEMORY[0x23EE8D760](v32, -1, -1);
    v33 = v22;
    v14 = v62;
    MEMORY[0x23EE8D760](v33, -1, -1);
  }

  else
  {

    v31 = v10[1];
    v31(v16, v9);
  }

  if (qword_27DFA8D58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v34 = qword_27DFAC698;
  if (!*(qword_27DFAC698 + 16) || (v35 = sub_23A7C0FD0(a3), (v36 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_22;
  }

  v37 = v67;
  sub_23A7B802C(*(v34 + 56) + *(v66 + 72) * v35, v67, type metadata accessor for PreviewApplication.RestorationSession);
  sub_23A7B7C34(v37, v8, type metadata accessor for PreviewApplication.RestorationSession);
  swift_endAccess();
  v38 = &v8[*(v68 + 24)];
  if (!*v38)
  {
    sub_23A7B7DC4(v8, type metadata accessor for PreviewApplication.RestorationSession);
LABEL_22:
    v70(v14, a3, v9);
    v47 = sub_23A7EE394();
    v48 = sub_23A7EEB34();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72[0] = v50;
      *v49 = 136315138;
      sub_23A7B7EE4(&qword_27DFA9878, MEMORY[0x277CC95F0]);
      v51 = sub_23A7EEDD4();
      v53 = v52;
      v31(v14, v9);
      v54 = sub_23A797A74(v51, v53, v72);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_23A714000, v47, v48, "Could not find restoration session with ID: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23EE8D760](v50, -1, -1);
      MEMORY[0x23EE8D760](v49, -1, -1);
    }

    else
    {

      v31(v14, v9);
    }

    return;
  }

  v71 = *v38;
  v39 = *(v38 + 1);
  v40 = MEMORY[0x277D84F90];
  v72[0] = MEMORY[0x277D84F90];
  v41 = v64;
  v16 = *(v64 + 16);
  v70 = v39;

  if (v16)
  {
    v42 = 0;
    v43 = v41 + 40;
    v10 = 0x277CC6438;
    v65 = v8;
    v68 = v41 + 40;
    do
    {
      v69 = v40;
      a3 = (v43 + 16 * v42);
      v9 = v42;
      while (1)
      {
        if (v9 >= v16)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v42 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_38;
        }

        v44 = *(a3 - 1);
        v8 = *a3;
        sub_23A7A3798(0, &qword_27DFA9880, 0x277CCAAC8);
        sub_23A7A3798(0, &qword_27DFA9888, 0x277CC6438);
        sub_23A7A8C88(v44, v8);
        v14 = sub_23A7EEB54();
        v45 = sub_23A7A8BF8(v44, v8);
        if (v14)
        {
          break;
        }

        ++v9;
        a3 += 2;
        if (v42 == v16)
        {
          v8 = v65;
          v40 = v69;
          goto LABEL_27;
        }
      }

      MEMORY[0x23EE8BDE0](v45);
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v46 = *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23A7EE9C4();
      }

      sub_23A7EE9D4();
      v40 = v72[0];
      v8 = v65;
      v43 = v68;
    }

    while (v42 != v16);
  }

LABEL_27:
  if (v40 >> 62)
  {

    v59 = sub_23A7EED74();
    swift_bridgeObjectRelease_n();
    v40 = v59;
  }

  else
  {
    v55 = v40 & 0xFFFFFFFFFFFFFF8;

    sub_23A7EEE14();
    if (swift_dynamicCastMetatype() || (v57 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_29:
    }

    else
    {
      v58 = (v55 + 32);
      while (*v58)
      {
        ++v58;
        if (!--v57)
        {
          goto LABEL_29;
        }
      }

      v40 = v55 | 1;
    }
  }

  v56 = v71;
  v71(v40, v63);
  sub_23A7A2DD4(v56);

  sub_23A7B7DC4(v8, type metadata accessor for PreviewApplication.RestorationSession);
}

uint64_t sub_23A7B7C24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A7B7C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B7C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7B0EE0(a1, v4, v5, v7, v6);
}

unint64_t sub_23A7B7D5C()
{
  result = qword_27DFA9898;
  if (!qword_27DFA9898)
  {
    sub_23A7A3798(255, &qword_27DFA9890, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9898);
  }

  return result;
}

uint64_t sub_23A7B7DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A7B7E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3240;

  return sub_23A7B1090(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7B7EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A7B7F6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7B0EE0(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7B802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B80AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7B811C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A3828;

  return sub_23A7B1D24(a1, v5);
}

uint64_t sub_23A7B81D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A3240;

  return sub_23A7B1D24(a1, v5);
}

uint64_t sub_23A7B828C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7B8354()
{
  v1 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_23A7B83EC(char a1)
{
  v3 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer);
  if (a1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setStartPoint_];
  return [v4 setEndPoint_];
}

void (*sub_23A7B8490(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23A7B8518;
}

void sub_23A7B8518(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer);
    if (*(v4 + v3[4]))
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    if (*(v4 + v3[4]))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    [v5 setStartPoint_];
    [v5 setEndPoint_];
  }

  free(v3);
}

id QLGradientView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QLGradientView.init()()
{
  v0[OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed] = 0;
  v1 = OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for QLGradientView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_23A7B87D0();

  return v2;
}

void sub_23A7B87D0()
{
  v1 = *&v0[OBJC_IVAR____TtC9QuickLook14QLGradientView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23A7FD280;
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.5];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v2 + 56) = v5;
  *(v2 + 32) = v4;
  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.0];
  v8 = [v7 CGColor];

  *(v2 + 88) = v6;
  *(v2 + 64) = v8;
  v9 = sub_23A7EE994();

  [v1 setColors_];

  v10 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  swift_beginAccess();
  v0[v10] = 0;
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v11 = [v0 layer];
  [v11 insertSublayer:v1 atIndex:0];
}

id QLGradientView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id QLGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A7B8BCC()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA98F8);
  __swift_project_value_buffer(v0, qword_27DFA98F8);
  return sub_23A7EE3A4();
}

uint64_t QLPreviewCollectionWrapper.hostProxy.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  sub_23A7EE724();
  return v1;
}

uint64_t sub_23A7B8C88(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  return sub_23A7EE734();
}

void (*QLPreviewCollectionWrapper.hostProxy.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  *(v3 + 32) = sub_23A7EE714();
  return sub_23A796D2C;
}

uint64_t QLPreviewCollectionWrapper.$hostProxy.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);

  return MEMORY[0x282133B70](v0);
}

uint64_t QLPreviewCollectionWrapper.init(hostProxy:)()
{
  type metadata accessor for QLAppExtensionSceneProxy(0);
  sub_23A7B970C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);

  return sub_23A7EE754();
}

uint64_t sub_23A7B8E80()
{
  v1 = v0;
  v2 = type metadata accessor for QLPreviewCollectionWrapper();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v45 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v42 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  if (qword_27DFA8D40 != -1)
  {
    swift_once();
  }

  v11 = sub_23A7EE3B4();
  v12 = __swift_project_value_buffer(v11, qword_27DFA98F8);
  sub_23A7B9754(v1, v10);
  v44 = v12;
  v13 = sub_23A7EE394();
  v14 = sub_23A7EEB14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    sub_23A7B9754(v10, v8);
    v17 = sub_23A7EE8B4();
    v19 = v18;
    sub_23A7B97B8(v10);
    v20 = sub_23A797A74(v17, v19, &v46);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_23A714000, v13, v14, "Configuring %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23EE8D760](v16, -1, -1);
    MEMORY[0x23EE8D760](v15, -1, -1);
  }

  else
  {

    sub_23A7B97B8(v10);
  }

  v21 = objc_opt_self();
  v22 = [v21 previewCollectionClassName];
  if (!v22)
  {
    sub_23A7EE844();
    v22 = sub_23A7EE814();
  }

  v42[0] = v8;
  v42[1] = v2;
  v23 = sub_23A7EE844();
  v43 = v24;
  v25 = [v21 previewCollectionWithClassName_];

  v48 = &unk_284DB55B0;
  v49 = &unk_284DB66A0;
  v26 = swift_dynamicCastObjCProtocolConditional();
  if (v26)
  {
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
    sub_23A7EE724();
    v28 = v46;
    KeyPath = swift_getKeyPath();
    v30 = v1;
    MEMORY[0x28223BE20](KeyPath);
    v46 = v28;
    sub_23A7B970C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
    v31 = v25;
    sub_23A7EE004();

    v32 = v45;
    sub_23A7B9754(v30, v45);
    v33 = sub_23A7EE394();
    v34 = sub_23A7EEB14();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136315138;
      sub_23A7B9754(v32, v42[0]);
      v37 = sub_23A7EE8B4();
      v39 = v38;
      sub_23A7B97B8(v32);
      v40 = sub_23A797A74(v37, v39, &v46);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_23A714000, v33, v34, "Configured %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23EE8D760](v36, -1, -1);
      MEMORY[0x23EE8D760](v35, -1, -1);
    }

    else
    {

      sub_23A7B97B8(v32);
    }

    return v27;
  }

  else
  {

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_23A7EECD4();

    v46 = 0xD00000000000002DLL;
    v47 = 0x800000023A80BC00;
    MEMORY[0x23EE8BD70](v23, v43);
    result = sub_23A7EED64();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for QLPreviewCollectionWrapper()
{
  result = qword_27DFA9920;
  if (!qword_27DFA9920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7B94A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23A7B9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23A7B95C8()
{
  sub_23A7B970C(qword_27DFA9938, type metadata accessor for QLPreviewCollectionWrapper);
  sub_23A7EE5E4();
  __break(1u);
}

void sub_23A7B9648()
{
  sub_23A7B96B4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A7B96B4()
{
  if (!qword_27DFA9930)
  {
    type metadata accessor for QLAppExtensionSceneProxy(255);
    v0 = sub_23A7EE764();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9930);
    }
  }
}

uint64_t sub_23A7B970C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A7B9754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLPreviewCollectionWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7B97B8(uint64_t a1)
{
  v2 = type metadata accessor for QLPreviewCollectionWrapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A7B9814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23A798AB4();
}

uint64_t sub_23A7B9830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject();
  v6 = sub_23A7B9D28(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

void sub_23A7B98B4(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_23A7B9D64();
}

id sub_23A7B98F4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23A7B9964(uint64_t *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *a1;
  v4 = *MEMORY[0x277D85000];
  v5 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x60));

  v6 = *(*(*((v4 & v3) + 0x50) - 8) + 8);
  v7 = a1 + *((*v2 & *a1) + 0x68);

  return v6(v7);
}

uint64_t sub_23A7B9A40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7B9A88(uint64_t *a1, int a2)
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

uint64_t sub_23A7B9AD0(uint64_t result, int a2, int a3)
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

uint64_t sub_23A7B9B28(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_23A7B9C20(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  type metadata accessor for QLNonUIProxy();
  *&v1[v6] = swift_allocObject();
  (*(*(*((v5 & v3) + 0x50) - 8) + 16))(&v1[*((*v4 & *v1) + 0x68)], a1, *((v5 & v3) + 0x50));
  v7 = *((v5 & v3) + 0x58);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_23A7B9D28(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for QLGlobalAppExtensionConfiguration.ExportedObject());
  return sub_23A7B9C20(a1);
}

uint64_t sub_23A7B9D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23A7A8D38(a3, v24 - v10, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v12 = sub_23A7EEA64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23A7A8E74(v11, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23A7EE9E4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23A7EE8C4() + 32;

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

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

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

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23A7BA040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23A7A8D38(a3, v24 - v10, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v12 = sub_23A7EEA64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23A7A8E74(v11, &qword_27DFA8FD0, &qword_23A7FDBC0);
  }

  else
  {
    sub_23A7EEA54();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23A7EE9E4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23A7EE8C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C40, &unk_23A7FE010);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

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

  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C40, &unk_23A7FE010);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23A7BA2FC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C50, &unk_23A7FE020);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t PreviewItem.init(url:displayName:editingMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PreviewItem(0);
  v11 = &a5[*(v10 + 28)];
  sub_23A7EDFD4();
  v12 = *(v10 + 24);
  v13 = sub_23A7EDF64();
  result = (*(*(v13 - 8) + 32))(&a5[v12], a1, v13);
  *a5 = a2;
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

unint64_t sub_23A7BA468()
{
  result = sub_23A7C81FC(MEMORY[0x277D84F90]);
  qword_27DFAC688 = result;
  return result;
}

uint64_t sub_23A7BA490()
{
  type metadata accessor for HostHandler();
  result = swift_allocObject();
  qword_27DFAC690 = result;
  return result;
}

unint64_t sub_23A7BA4C0()
{
  result = sub_23A7C7FE0(MEMORY[0x277D84F90]);
  qword_27DFAC698 = result;
  return result;
}

uint64_t PreviewApplication.RestorationItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PreviewApplication.RestorationItem.__allocating_init(url:isReadonly:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v7 = sub_23A7EDF64();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  v5[OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id PreviewApplication.RestorationItem.init(url:isReadonly:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___PreviewApplicationRestorationItem_url;
  v6 = sub_23A7EDF64();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v2[OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for PreviewApplication.RestorationItem(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

id PreviewApplication.RestorationItem.init(coder:)(void *a1)
{
  v3 = sub_23A7EDF64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23A7EE814();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_23A7EEC44();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
    if (swift_dynamicCast())
    {
      v10 = v22;
      v11 = sub_23A7EE814();
      v12 = [a1 containsValueForKey_];

      if (v12)
      {
        sub_23A7EDF44();
        (*(v4 + 32))(v1 + OBJC_IVAR___PreviewApplicationRestorationItem_url, v7, v3);
        v13 = sub_23A7EE814();
        v14 = [a1 decodeBoolForKey_];

        *(v1 + OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly) = v14;
        v15 = type metadata accessor for PreviewApplication.RestorationItem(0);
        v21.receiver = v1;
        v21.super_class = v15;
        v16 = objc_msgSendSuper2(&v21, sel_init);

        return v16;
      }
    }
  }

  else
  {

    sub_23A7A8E74(v25, &qword_27DFA9A40, &unk_23A7FDBA0);
  }

  type metadata accessor for PreviewApplication.RestorationItem(0);
  v18 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v19 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_23A7BAA98(void *a1)
{
  v2 = v1;
  v4 = sub_23A7EDF24();
  v5 = sub_23A7EE814();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v2 + OBJC_IVAR___PreviewApplicationRestorationItem_isReadonly);
  v7 = sub_23A7EE814();
  [a1 encodeBool:v6 forKey:v7];
}

id PreviewApplication.RestorationItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreviewApplication.RestorationItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewApplication.RestorationItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static PreviewApplication.open(urls:selectedURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59 = type metadata accessor for PreviewItem(0);
  v5 = *(v59 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v59);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94D0, &unk_23A7FD340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = sub_23A7EDF64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v65 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v52 - v19;
  MEMORY[0x28223BE20](v18);
  v55 = &v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v56 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v27 = a1;
  v28 = *(a1 + 16);
  v29 = MEMORY[0x277D84F90];
  v57 = v14;
  if (v28)
  {
    v52 = v12;
    v53 = &v52 - v25;
    v54 = a2;
    v66 = v5;
    v68 = MEMORY[0x277D84F90];
    sub_23A7C14EC(0, v28, 0);
    v29 = v68;
    v30 = *(v14 + 16);
    v63 = v14 + 16;
    v64 = v30;
    v31 = (v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
    v32 = *(v14 + 72);
    v61 = (v14 + 8);
    v62 = v32;
    v60 = (v14 + 32);
    v33 = v59;
    do
    {
      v34 = v67;
      v35 = v64;
      v64(v67, v31, v13);
      v36 = v65;
      v35(v65, v34, v13);
      v37 = &v8[*(v33 + 28)];
      sub_23A7EDFD4();
      (*v61)(v34, v13);
      v38 = v36;
      v39 = v13;
      (*v60)(&v8[*(v33 + 24)], v38, v13);
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = 1;
      v68 = v29;
      v41 = *(v29 + 16);
      v40 = *(v29 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_23A7C14EC(v40 > 1, v41 + 1, 1);
        v33 = v59;
        v29 = v68;
      }

      *(v29 + 16) = v41 + 1;
      sub_23A7C1B3C(v8, v29 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 9) * v41, type metadata accessor for PreviewItem);
      v31 += v62;
      --v28;
      v13 = v39;
    }

    while (v28);
    v42 = v58;
    v5 = v66;
    v26 = v53;
    a2 = v54;
    v12 = v52;
  }

  else
  {
    v42 = v58;
  }

  v43 = *(v5 + 7);
  v44 = v59;
  v43(v26, 1, 1, v59);
  sub_23A7A8D38(a2, v12, &unk_27DFA94D0, &unk_23A7FD340);
  v45 = v57;
  if ((*(v57 + 48))(v12, 1, v13) == 1)
  {
    sub_23A7A8E74(v12, &unk_27DFA94D0, &unk_23A7FD340);
  }

  else
  {
    v65 = *(v45 + 32);
    v66 = v43;
    v46 = v55;
    (v65)(v55, v12, v13);
    v47 = v67;
    (*(v45 + 16))(v67, v46, v13);
    v48 = v56;
    v49 = &v56[*(v44 + 28)];
    sub_23A7EDFD4();
    (*(v45 + 8))(v46, v13);
    sub_23A7A8E74(v26, &qword_27DFA9A48, &qword_23A7FDBB0);
    (v65)(&v48[*(v44 + 24)], v47, v13);
    *v48 = 0;
    *(v48 + 1) = 0;
    *(v48 + 2) = 1;
    v66(v48, 0, 1, v44);
    v50 = v48;
    v42 = v58;
    sub_23A7C150C(v50, v26);
  }

  static PreviewApplication.open(items:selectedItem:)(v29, v26, v42);

  return sub_23A7A8E74(v26, &qword_27DFA9A48, &qword_23A7FDBB0);
}

uint64_t static PreviewApplication.open(items:selectedItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = sub_23A7EDF64();
  v67 = *(v74 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v76 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v62 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v11 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v62 - v15;
  v73 = type metadata accessor for PreviewItem(0);
  v16 = *(v73 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v73);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v62 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v62 - v24);
  v26 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  v64 = a3;
  v65 = v3;
  v68 = v16;
  if (v26)
  {
    v63 = a2;
    v66 = &v62 - v24;
    v77 = MEMORY[0x277D84F90];
    sub_23A7EED34();
    v28 = a1;
    v29 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v30 = *(v16 + 72);
    v31 = v26;
    do
    {
      sub_23A7C1A20(v29, v23, type metadata accessor for PreviewItem);
      sub_23A7B4464(v23);
      sub_23A7C20A4(v23, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      v32 = *(v77 + 16);
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v29 += v30;
      --v31;
    }

    while (v31);
    v27 = v77;
    a3 = v64;
    v25 = v66;
    a1 = v28;
    a2 = v63;
  }

  v33 = v69;
  sub_23A7A8D38(a2, v69, &qword_27DFA9A48, &qword_23A7FDBB0);
  v34 = v68;
  if ((*(v68 + 48))(v33, 1, v73) == 1)
  {
    sub_23A7A8E74(v33, &qword_27DFA9A48, &qword_23A7FDBB0);
    v35 = -1;
    goto LABEL_27;
  }

  sub_23A7C1B3C(v33, v25, type metadata accessor for PreviewItem);
  if (!v26)
  {
    v35 = -1;
    goto LABEL_26;
  }

  v63 = v27;
  v35 = 0;
  v36 = *(v73 + 24);
  v37 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v38 = *(v34 + 72);
  v68 = v67 + 32;
  v69 = v36;
  v66 = v38;
  v67 += 8;
  v70 = v26;
  v39 = v71;
  v40 = v68;
  do
  {
    sub_23A7C1A20(v37, v20, type metadata accessor for PreviewItem);
    v44 = *(v72 + 48);
    sub_23A7C1A20(&v20[*(v73 + 24)], v39, type metadata accessor for PreviewItem.Source);
    sub_23A7C1A20(v25 + v69, v39 + v44, type metadata accessor for PreviewItem.Source);
    v45 = *v40;
    v46 = v20;
    v47 = v74;
    (*v40)(v75, v39, v74);
    v48 = v47;
    v20 = v46;
    v45(v76, v39 + v44, v48);
    if ((sub_23A7EDF34() & 1) == 0)
    {
LABEL_9:
      v41 = *v67;
      v42 = v74;
      (*v67)(v76, v74);
      v41(v75, v42);
      v43 = v70;
LABEL_10:
      sub_23A7C20A4(v46, type metadata accessor for PreviewItem);
      goto LABEL_11;
    }

    v49 = *(v46 + 1);
    v50 = v25[1];
    if (v49)
    {
      if (!v50)
      {
        goto LABEL_9;
      }

      if (*v46 == *v25 && v49 == v50)
      {
        v51 = *v67;
        v52 = v74;
        (*v67)(v76, v74);
        v51(v75, v52);
        v43 = v70;
      }

      else
      {
        v55 = v25[1];
        v56 = sub_23A7EEE04();
        v57 = *v67;
        v58 = v74;
        (*v67)(v76, v74);
        v57(v75, v58);
        v43 = v70;
        if ((v56 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v53 = *v67;
      v54 = v74;
      (*v67)(v76, v74);
      v53(v75, v54);
      v43 = v70;
      if (v50)
      {
        goto LABEL_10;
      }
    }

    v59 = *(v46 + 2);
    v60 = v25[2];
    sub_23A7C20A4(v46, type metadata accessor for PreviewItem);
    if (v59 == v60)
    {
      goto LABEL_24;
    }

LABEL_11:
    ++v35;
    v37 += v66;
  }

  while (v43 != v35);
  v35 = -1;
LABEL_24:
  a3 = v64;
  v27 = v63;
LABEL_26:
  sub_23A7C20A4(v25, type metadata accessor for PreviewItem);
LABEL_27:
  static PreviewApplication.open(items:selectedItemIndex:)(v27, v35, 0, a3);
}

uint64_t static PreviewApplication.open(items:selectedItemIndex:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v45 = a2;
  v49 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for PreviewSession(0);
  v14 = v13 - 8;
  v43 = *(v13 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for QLHostRemotePreviewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  sub_23A7EE0B4();
  v23 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v24 = sub_23A7EE154();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v26 = sub_23A7EE124();
  (*(*(v26 - 8) + 56))(v22 + v25, 1, 1, v26);
  v27 = *(v14 + 32);

  sub_23A7EDFD4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v8);
  type metadata accessor for PreviewSession.Event(0);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7EEA74();
  (*(v9 + 8))(v12, v8);
  *&v18[*(v14 + 28)] = v22;
  if (sub_23A7B4CD4(a1))
  {
    v29 = sub_23A7EEA64();
    (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
    v30 = v44;
    sub_23A7C1A20(v18, v44, type metadata accessor for PreviewSession);
    sub_23A7EEA34();

    v31 = sub_23A7EEA24();
    v32 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 31) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v31;
    v35[3] = v36;
    v35[4] = v22;
    sub_23A7C1B3C(v30, v35 + v32, type metadata accessor for PreviewSession);
    *(v35 + v33) = a1;
    v37 = v35 + v43;
    *v37 = v45;
    v37[8] = v46 & 1;
    v38 = v35 + v34;
    *v38 = 0;
    *(v38 + 1) = 0;
    *(v38 + 2) = 1;
    v38[26] = 0;
    *(v38 + 12) = 0;
    v39 = v48;
    *(v35 + ((v34 + 34) & 0xFFFFFFFFFFFFFFF8)) = v47;
    sub_23A7B9D94(0, 0, v39, &unk_23A7FDBF8, v35);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v40 = swift_allocError();

    sub_23A7B5798(&v18[v27], v40);
  }

  return sub_23A7C1B3C(v18, v49, type metadata accessor for PreviewSession);
}

uint64_t static PreviewApplication.open(items:selectedItem:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a2;
  v109 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v108 = &v92 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v9 = *(v110 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v110);
  v12 = &v92 - v11;
  v107 = type metadata accessor for PreviewSession(0);
  v98 = *(v107 - 8);
  v13 = *(v98 + 64);
  v14 = MEMORY[0x28223BE20](v107);
  v100 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v92 - v16;
  v18 = sub_23A7EDF64();
  v93 = *(v18 - 8);
  v19 = *(v93 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v119 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v92 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v23 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v25 = &v92 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v104 = &v92 - v28;
  v117 = type metadata accessor for PreviewItem(0);
  v29 = *(v117 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v117);
  v33 = (&v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v92 - v35);
  MEMORY[0x28223BE20](v34);
  v120 = (&v92 - v37);
  v38 = *(a3 + 8);
  v97 = *a3;
  v105 = *(a3 + 16);
  v106 = v38;
  v96 = *(a3 + 26);
  v95 = *(a3 + 24);
  v39 = *(a1 + 16);
  v40 = MEMORY[0x277D84F90];
  v116 = v39;
  v111 = v17;
  v102 = v12;
  v103 = v9;
  v94 = a1;
  v113 = v29;
  if (v39)
  {
    v121 = MEMORY[0x277D84F90];
    v41 = v39;
    sub_23A7EED34();
    v42 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v43 = *(v29 + 72);
    do
    {
      sub_23A7C1A20(v42, v36, type metadata accessor for PreviewItem);
      sub_23A7B4464(v36);
      sub_23A7C20A4(v36, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      v44 = *(v121 + 16);
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v42 += v43;
      --v41;
    }

    while (v41);
    v40 = v121;
    v45 = v110;
    v17 = v111;
    v12 = v102;
    v9 = v103;
  }

  else
  {
    v45 = v110;
  }

  v46 = v104;
  sub_23A7A8D38(v114, v104, &qword_27DFA9A48, &qword_23A7FDBB0);
  v47 = v113;
  v48 = (*(v113 + 48))(v46, 1, v117);
  v112 = v40;
  if (v48 == 1)
  {
    sub_23A7A8E74(v46, &qword_27DFA9A48, &qword_23A7FDBB0);
    v49 = -1;
    goto LABEL_28;
  }

  sub_23A7C1B3C(v46, v120, type metadata accessor for PreviewItem);
  if (!v116)
  {
    v49 = -1;
    goto LABEL_27;
  }

  v49 = 0;
  v114 = *(v117 + 24);
  v50 = v94 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v113 = *(v47 + 72);
  v51 = (v93 + 32);
  v52 = (v93 + 8);
  do
  {
    sub_23A7C1A20(v50, v33, type metadata accessor for PreviewItem);
    v54 = *(v115 + 48);
    sub_23A7C1A20(v33 + *(v117 + 24), v25, type metadata accessor for PreviewItem.Source);
    sub_23A7C1A20(v120 + v114, &v25[v54], type metadata accessor for PreviewItem.Source);
    v55 = *v51;
    (*v51)(v118, v25, v18);
    v55(v119, &v25[v54], v18);
    if ((sub_23A7EDF34() & 1) == 0)
    {
LABEL_10:
      v53 = *v52;
      (*v52)(v119, v18);
      v53(v118, v18);
LABEL_11:
      sub_23A7C20A4(v33, type metadata accessor for PreviewItem);
      goto LABEL_12;
    }

    v56 = v33[1];
    v57 = v120[1];
    if (v56)
    {
      if (!v57)
      {
        goto LABEL_10;
      }

      if (*v33 == *v120 && v56 == v57)
      {
        v58 = *v52;
        (*v52)(v119, v18);
        v58(v118, v18);
      }

      else
      {
        v60 = sub_23A7EEE04();
        v61 = *v52;
        (*v52)(v119, v18);
        v61(v118, v18);
        if ((v60 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v59 = *v52;
      (*v52)(v119, v18);
      v59(v118, v18);
      if (v57)
      {
        goto LABEL_11;
      }
    }

    v62 = v33[2];
    v63 = v120[2];
    sub_23A7C20A4(v33, type metadata accessor for PreviewItem);
    if (v62 == v63)
    {
      goto LABEL_25;
    }

LABEL_12:
    ++v49;
    v50 += v113;
  }

  while (v116 != v49);
  v49 = -1;
LABEL_25:
  v45 = v110;
  v17 = v111;
  v12 = v102;
  v9 = v103;
LABEL_27:
  sub_23A7C20A4(v120, type metadata accessor for PreviewItem);
LABEL_28:
  v64 = v107;
  v65 = type metadata accessor for QLHostRemotePreviewModel();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  sub_23A7EE0B4();
  v69 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v70 = sub_23A7EE154();
  (*(*(v70 - 8) + 56))(v68 + v69, 1, 1, v70);
  v71 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v72 = sub_23A7EE124();
  (*(*(v72 - 8) + 56))(v68 + v71, 1, 1, v72);
  v73 = *(v64 + 24);

  sub_23A7EDFD4();
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v45);
  type metadata accessor for PreviewSession.Event(0);
  v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7EEA74();
  (*(v9 + 8))(v12, v45);
  *&v17[*(v64 + 20)] = v68;
  if (sub_23A7B4CD4(v112))
  {
    LODWORD(v120) = v95 | (v96 << 16);
    v75 = sub_23A7EEA64();
    (*(*(v75 - 8) + 56))(v108, 1, 1, v75);
    v76 = v100;
    sub_23A7C1A20(v17, v100, type metadata accessor for PreviewSession);
    sub_23A7EEA34();
    v77 = v97;
    sub_23A7C1D44(v97, v106, v105);
    v78 = sub_23A7EEA24();
    v79 = (*(v98 + 80) + 40) & ~*(v98 + 80);
    v80 = (v99 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = ((v80 + 15) & 0xFFFFFFFFFFFFFFF8);
    v81 = (v80 + 31) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    v83 = MEMORY[0x277D85700];
    *(v82 + 16) = v78;
    *(v82 + 24) = v83;
    *(v82 + 32) = v68;
    v84 = v82 + v79;
    v17 = v111;
    sub_23A7C1B3C(v76, v84, type metadata accessor for PreviewSession);
    *(v82 + v80) = v112;
    v85 = &v119[v82];
    *v85 = v49;
    v85[8] = 0;
    v86 = (v82 + v81);
    v87 = v105;
    v88 = v106;
    *v86 = v77;
    *(v86 + 1) = v88;
    *(v86 + 2) = v87;
    LOWORD(v88) = v120;
    v86[26] = BYTE2(v120);
    *(v86 + 12) = v88;
    *(v82 + ((v81 + 34) & 0xFFFFFFFFFFFFFFF8)) = v101;
    sub_23A7B9D94(0, 0, v108, &unk_23A7FDC00, v82);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v89 = swift_allocError();

    sub_23A7B5798(&v17[v73], v89);
  }

  v90 = v109;

  return sub_23A7C1B3C(v17, v90, type metadata accessor for PreviewSession);
}

uint64_t static PreviewApplication.open(items:selectedItemIndex:configuration:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a3;
  v52 = a2;
  v59 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A60, &qword_23A7FDBC8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v15 = type metadata accessor for PreviewSession(0);
  v16 = v15 - 8;
  v50 = *(v15 - 8);
  v17 = *(v50 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v57 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = *(a4 + 8);
  v51 = *a4;
  v55 = *(a4 + 16);
  v56 = v21;
  v22 = *(a4 + 26);
  v48 = *(a4 + 24);
  v49 = v22;
  v23 = type metadata accessor for QLHostRemotePreviewModel();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  sub_23A7EE0B4();
  v27 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  v28 = sub_23A7EE154();
  (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  v30 = sub_23A7EE124();
  (*(*(v30 - 8) + 56))(v26 + v29, 1, 1, v30);
  v31 = *(v16 + 32);

  sub_23A7EDFD4();
  (*(v11 + 104))(v14, *MEMORY[0x277D85778], v10);
  type metadata accessor for PreviewSession.Event(0);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  sub_23A7EEA74();
  (*(v11 + 8))(v14, v10);
  *&v20[*(v16 + 28)] = v26;
  if (sub_23A7B4CD4(a1))
  {
    v49 = v48 | (v49 << 16);
    v33 = sub_23A7EEA64();
    (*(*(v33 - 8) + 56))(v58, 1, 1, v33);
    sub_23A7C1A20(v20, v57, type metadata accessor for PreviewSession);
    sub_23A7EEA34();

    v34 = v51;
    sub_23A7C1D44(v51, v56, v55);
    v35 = sub_23A7EEA24();
    v36 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v37 = (v17 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 31) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = MEMORY[0x277D85700];
    v39[2] = v35;
    v39[3] = v40;
    v39[4] = v26;
    sub_23A7C1B3C(v57, v39 + v36, type metadata accessor for PreviewSession);
    *(v39 + v37) = a1;
    v41 = v39 + v50;
    *v41 = v52;
    v41[8] = v53 & 1;
    v42 = v39 + v38;
    v43 = v55;
    v44 = v56;
    *v42 = v34;
    *(v42 + 1) = v44;
    *(v42 + 2) = v43;
    LOWORD(v44) = v49;
    v42[26] = BYTE2(v49);
    *(v42 + 12) = v44;
    *(v39 + ((v38 + 34) & 0xFFFFFFFFFFFFFFF8)) = v54;
    sub_23A7B9D94(0, 0, v58, &unk_23A7FDC08, v39);
  }

  else
  {

    if (qword_27DFA8D50 != -1)
    {
      swift_once();
    }

    sub_23A7C1AE8();
    v45 = swift_allocError();

    sub_23A7B5798(&v20[v31], v45);
  }

  return sub_23A7C1B3C(v20, v59, type metadata accessor for PreviewSession);
}

uint64_t sub_23A7BD0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 368) = v21;
  *(v8 + 216) = v20;
  *(v8 + 200) = v19;
  *(v8 + 376) = a8;
  *(v8 + 184) = a6;
  *(v8 + 192) = a7;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v9 = type metadata accessor for PreviewSession(0);
  *(v8 + 224) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98B0, &qword_23A7FD8E8) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v12 = sub_23A7EDFE4();
  *(v8 + 248) = v12;
  v13 = *(v12 - 8);
  *(v8 + 256) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  sub_23A7EEA34();
  *(v8 + 272) = sub_23A7EEA24();
  v16 = sub_23A7EE9E4();
  *(v8 + 280) = v16;
  *(v8 + 288) = v15;

  return MEMORY[0x2822009F8](sub_23A7BD224, v16, v15);
}

uint64_t sub_23A7BD224()
{
  if (qword_27DFA8D50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = qword_27DFAC690;
  *(v0 + 296) = qword_27DFAC690;
  v4 = *(v1 + 24);
  *(v0 + 372) = v4;

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_23A7BD324;
  v6 = *(v0 + 168);

  return sub_23A7AD3A0(v3, v2 + v4);
}

uint64_t sub_23A7BD324(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v10 = *v2;
  v3[39] = a1;
  v3[40] = v1;

  if (v1)
  {
    v5 = v3[35];
    v6 = v3[36];
    v7 = sub_23A7BDB14;
  }

  else
  {
    v8 = v3[37];

    v5 = v3[35];
    v6 = v3[36];
    v7 = sub_23A7BD440;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7BD440()
{
  v1 = *(v0 + 184);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v25 = *(v0 + 184);
    }

    v2 = sub_23A7EEC84();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v27 = MEMORY[0x277D84F90];
    v3 = sub_23A7EED34();
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x282200938](v3);
    }

    v4 = *(v0 + 184);
    v5 = objc_opt_self();
    v6 = 0;
    v7 = v4 + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE8C140](v6, *(v0 + 184));
      }

      else
      {
        v8 = *(v7 + 8 * v6);
        swift_unknownObjectRetain();
      }

      ++v6;
      v9 = [v5 itemWithPreviewItem_];
      swift_unknownObjectRelease();
      sub_23A7EED14();
      v10 = *(v27 + 16);
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
    }

    while (v2 != v6);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 376);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176) + *(v0 + 372);
  v15 = sub_23A7EDFB4();
  *(v0 + 328) = v15;
  sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  v16 = sub_23A7EE994();
  *(v0 + 336) = v16;

  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];
  *(v0 + 344) = v18;

  if (v11 == 1)
  {
    sub_23A7C8418(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = *(v0 + 368);
    v20 = *(v0 + 200);
    v28 = *(v0 + 208);
    v29 = *(v0 + 216);

    sub_23A7BDD4C();
  }

  if (v12)
  {
    v21 = -1;
  }

  else
  {
    v21 = v13;
  }

  v22 = *(v0 + 312);
  v23 = sub_23A7EE7C4();
  *(v0 + 352) = v23;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7BD7C8;
  v24 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A7BA2FC;
  *(v0 + 104) = &block_descriptor_105;
  *(v0 + 112) = v24;
  [v22 openWithSessionUUID:v15 items:v16 selectedIndex:v21 bundleID:v18 configuration:v23 completionHandler:v0 + 80];
  v3 = v0 + 16;

  return MEMORY[0x282200938](v3);
}

uint64_t sub_23A7BD7C8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 360) = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 280);
  if (v3)
  {
    v6 = sub_23A7BDC20;
  }

  else
  {
    v6 = sub_23A7BD8F8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_23A7BD8F8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 272);

  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 312);
  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 232);
  v20 = *(v0 + 368);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  (*(*(v0 + 256) + 16))(v7, v13 + *(v0 + 372), *(v0 + 248));
  sub_23A7C1A20(v13, v9, type metadata accessor for PreviewSession);
  if (v10 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  if (v10 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  sub_23A7C1B3C(v9, v8, type metadata accessor for PreviewSession);
  v16 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  *(v8 + *(v16 + 20)) = v6;
  v17 = (v8 + *(v16 + 24));
  *v17 = v14;
  v17[1] = v15;
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  swift_beginAccess();
  sub_23A7C1D44(v12, v11, v10);
  swift_unknownObjectRetain();
  sub_23A7AEC64(v8, v7);
  swift_endAccess();
  swift_unknownObjectRelease();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_23A7BDB14()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);

  v3 = *(v0 + 320);
  v4 = *(v0 + 372);
  v5 = *(v0 + 264);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 176);
  sub_23A7C1AE8();
  v9 = swift_allocError();

  sub_23A7B5798(v8 + v4, v9);

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A7BDC20()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  v7 = *(v0 + 272);

  swift_willThrow();
  swift_unknownObjectRelease();

  v8 = *(v0 + 360);
  v9 = *(v0 + 372);
  v10 = *(v0 + 264);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 176);
  sub_23A7C1AE8();
  v14 = swift_allocError();

  sub_23A7B5798(v13 + v9, v14);

  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

unint64_t sub_23A7BDD4C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9C70, &qword_23A7FE030);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_23A7FDB90;
  *(inited + 40) = 0x800000023A80BCF0;
  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(inited + 72) = v9;
  *(inited + 80) = 0x736F6C43776F6873;
  *(inited + 88) = 0xEF6E6F7474754265;
  *(inited + 96) = v2;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x800000023A80BD30;
  *(inited + 144) = v5;
  *(inited + 168) = v9;
  *(inited + 176) = 0x746E6F4374696465;
  *(inited + 184) = 0xEB00000000746E65;
  *(inited + 192) = v6;
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x800000023A80BD50;
  *(inited + 264) = v9;
  *(inited + 240) = v7;

  v10 = sub_23A7C8418(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9C78, &qword_23A7FE038);
  swift_arrayDestroy();
  if (v3)
  {
    v15 = MEMORY[0x277D837D0];
    *&v14 = v4;
    *(&v14 + 1) = v3;
    sub_23A7A8AB8(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A7B39B8(v13, 0xD000000000000015, 0x800000023A80BD10, isUniquelyReferenced_nonNull_native);
  }

  return v10;
}

uint64_t PreviewApplication.PreviewConfiguration.matchScenePlacementID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PreviewApplication.PreviewConfiguration.matchScenePlacementID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

QuickLook::PreviewApplication::PreviewConfiguration __swiftcall PreviewApplication.PreviewConfiguration.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 23) = 0;
  return result;
}

uint64_t PreviewItem.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PreviewItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PreviewItem(0) + 28);
  v4 = sub_23A7EDFE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PreviewItem.hash(into:)()
{
  v0 = *(type metadata accessor for PreviewItem(0) + 28);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  return sub_23A7EE7F4();
}

uint64_t PreviewItem.hashValue.getter()
{
  sub_23A7EEE84();
  v0 = *(type metadata accessor for PreviewItem(0) + 28);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23A7EDFE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23A7BE3D8(uint64_t a1)
{
  sub_23A7EEE84();
  v2 = *(a1 + 28);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 28);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  return sub_23A7EE7F4();
}

uint64_t sub_23A7BE4F4(uint64_t a1, uint64_t a2)
{
  sub_23A7EEE84();
  v3 = *(a2 + 28);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  sub_23A7EE7F4();
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE594()
{
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](0);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BE600()
{
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](0);
  return sub_23A7EEEA4();
}

uint64_t PreviewSession.events.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewSession.close()()
{
  v1[5] = v0;
  v2 = type metadata accessor for PreviewSession(0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v1[11] = v5;
  v1[12] = *(v5 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BE82C, 0, 0);
}

uint64_t sub_23A7BE82C()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[5] + *(v0[6] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v23 = v0[12];
    v24 = v0[8];
    v22 = v0[7];
    v10 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v23 + *(v22 + 80) + v12) & ~*(v22 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    sub_23A7B9D94(0, 0, v7, &unk_23A7FDC20, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_23A7BEAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_23A7BEB14, 0, 0);
}

uint64_t sub_23A7BEB14()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v2 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  v4 = v1 + *(type metadata accessor for PreviewSession(0) + 24);
  v5 = sub_23A7EDFB4();
  v0[20] = v5;
  v0[2] = v0;
  v0[3] = sub_23A7BEC60;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_100;
  v0[14] = v6;
  [v3 closeWithSessionUUID:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7BEC60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23A7C356C;
  }

  else
  {
    v3 = sub_23A7C3578;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7BEDA4()
{
  v1 = *v0;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v1);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7BEE18()
{
  v1 = *v0;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v1);
  return sub_23A7EEEA4();
}

unint64_t sub_23A7BEE5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23A7C2104(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PreviewSession.perform(action:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for PreviewSession(0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v2[12] = v6;
  v2[13] = *(v6 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BF0B8, 0, 0);
}

uint64_t sub_23A7BF0B8()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[6] + *(v0[7] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];
    v24 = v0[9];
    v25 = v0[13];
    v22 = v0[8];
    v23 = v7;
    v10 = v0[6];
    v26 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v25 + *(v22 + 80) + v12) & ~*(v22 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    *(v14 + ((v24 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    sub_23A7B9D94(0, 0, v23, &unk_23A7FDC38, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v16 = v0[15];
  v15 = v0[16];
  v17 = v0[14];
  v19 = v0[10];
  v18 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_23A7BF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x2822009F8](sub_23A7BF3C0, 0, 0);
}

uint64_t sub_23A7BF3C0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = *(v3 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  v5 = v1 + *(type metadata accessor for PreviewSession(0) + 24);
  v6 = sub_23A7EDFB4();
  v0[21] = v6;
  v0[2] = v0;
  v0[3] = sub_23A7BF518;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_96;
  v0[14] = v7;
  [v4 performActionWithSessionUUID:v6 action:v2 itemIndex:0 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7BF518()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_23A7BF68C;
  }

  else
  {
    v3 = sub_23A7BF628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7BF628()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7BF68C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t PreviewSession.update(items:selectedItem:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for PreviewSession(0);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BF8E4, 0, 0);
}

uint64_t sub_23A7BF8E4()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[7] + *(v0[8] + 24)), (v3 & 1) != 0))
  {
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    v8 = v0[15];
    v7 = v0[16];
    v29 = v0[17];
    v9 = v0[14];
    v25 = v0[11];
    v26 = v0[12];
    v27 = v0[9];
    v28 = v0[13];
    v10 = v0[6];
    v24 = v0[7];
    v30 = v0[10];
    v31 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v7 + 72) * v2, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v4, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_23A7A8D38(v10, v9, &qword_27DFA9A48, &qword_23A7FDBB0);
    sub_23A7C1A20(v5, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v24, v25, type metadata accessor for PreviewSession);
    v12 = (*(v26 + 80) + 40) & ~*(v26 + 80);
    v13 = (v28 + *(v7 + 80) + v12) & ~*(v7 + 80);
    v14 = (v29 + *(v27 + 80) + v13) & ~*(v27 + 80);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v31;
    sub_23A7C150C(v9, v15 + v12);
    sub_23A7C1B3C(v6, v15 + v13, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v25, v15 + v14, type metadata accessor for PreviewSession);

    sub_23A7B9D94(0, 0, v8, &unk_23A7FDC50, v15);

    sub_23A7C20A4(v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[18];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[11];

  v22 = v0[1];

  return v22();
}

uint64_t sub_23A7BFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = sub_23A7EDF64();
  v7[22] = v8;
  v9 = *(v8 - 8);
  v7[23] = v9;
  v10 = *(v9 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v7[26] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v14 = type metadata accessor for PreviewItem(0);
  v7[29] = v14;
  v15 = *(v14 - 8);
  v7[30] = v15;
  v16 = *(v15 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7BFDE0, 0, 0);
}

uint64_t sub_23A7BFDE0()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    v75 = MEMORY[0x277D84F90];
    sub_23A7EED34();
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = v2;
    do
    {
      v7 = v0[32];
      sub_23A7C1A20(v4, v7, type metadata accessor for PreviewItem);
      sub_23A7B4464(v7);
      sub_23A7C20A4(v7, type metadata accessor for PreviewItem);
      sub_23A7EED14();
      v8 = *(v75 + 16);
      sub_23A7EED44();
      sub_23A7EED54();
      sub_23A7EED24();
      v4 += v5;
      --v6;
    }

    while (v6);
  }

  v9 = v0[29];
  v10 = v0[30];
  v11 = v0[28];
  sub_23A7A8D38(v0[19], v11, &qword_27DFA9A48, &qword_23A7FDBB0);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_23A7A8E74(v0[28], &qword_27DFA9A48, &qword_23A7FDBB0);
    v12 = -1;
    goto LABEL_28;
  }

  sub_23A7C1B3C(v0[28], v0[33], type metadata accessor for PreviewItem);
  if (v2)
  {
    v13 = 0;
    v72 = v0[33];
    v14 = v0[30];
    v65 = v0[31];
    v70 = v0[26];
    v71 = v0[29];
    v15 = v0[23];
    v16 = v0[18] + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v68 = (v15 + 32);
    v69 = *(v71 + 24);
    v66 = *(v14 + 72);
    v67 = (v15 + 8);
    while (1)
    {
      v73 = v13;
      v20 = v0[31];
      v21 = v0[27];
      v23 = v0[24];
      v22 = v0[25];
      v24 = v0[22];
      sub_23A7C1A20(v16, v20, type metadata accessor for PreviewItem);
      v25 = *(v70 + 48);
      sub_23A7C1A20(v20 + *(v71 + 24), v21, type metadata accessor for PreviewItem.Source);
      sub_23A7C1A20(v72 + v69, v21 + v25, type metadata accessor for PreviewItem.Source);
      v26 = *v68;
      (*v68)(v22, v21, v24);
      v26(v23, v21 + v25, v24);
      if ((sub_23A7EDF34() & 1) == 0)
      {
        break;
      }

      v27 = *(v65 + 8);
      v28 = *(v72 + 8);
      if (v27)
      {
        if (!v28)
        {
          break;
        }

        v30 = v0[24];
        v29 = v0[25];
        v31 = v0[22];
        if (*v0[31] == *v0[33] && v27 == v28)
        {
          v39 = *v67;
          (*v67)(v0[24], v0[22]);
          v39(v29, v31);
          v12 = v73;
        }

        else
        {
          v33 = *(v72 + 8);
          v34 = sub_23A7EEE04();
          v35 = *v67;
          (*v67)(v30, v31);
          v35(v29, v31);
          v12 = v73;
          if ((v34 & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v36 = v0[25];
        v37 = v0[22];
        v38 = *v67;
        (*v67)(v0[24], v37);
        v38(v36, v37);
        v12 = v73;
        if (v28)
        {
          goto LABEL_10;
        }
      }

      v40 = *(v65 + 16);
      v41 = *(v72 + 16);
      sub_23A7C20A4(v0[31], type metadata accessor for PreviewItem);
      if (v40 == v41)
      {
        goto LABEL_27;
      }

LABEL_11:
      v13 = v12 + 1;
      v16 += v66;
      if (v2 == v13)
      {
        goto LABEL_26;
      }
    }

    v17 = v0[25];
    v18 = v0[22];
    v19 = *v67;
    (*v67)(v0[24], v18);
    v19(v17, v18);
    v12 = v73;
LABEL_10:
    sub_23A7C20A4(v0[31], type metadata accessor for PreviewItem);
    goto LABEL_11;
  }

LABEL_26:
  v12 = -1;
LABEL_27:
  sub_23A7C20A4(v0[33], type metadata accessor for PreviewItem);
LABEL_28:
  v42 = MEMORY[0x277D84F90];
  if (!v2)
  {
    v49 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_32;
    }

LABEL_41:
    v50 = sub_23A7EEC84();
    if (v50)
    {
      goto LABEL_33;
    }

LABEL_42:

    goto LABEL_43;
  }

  v43 = v0[30];
  v44 = v0[18];
  v76 = MEMORY[0x277D84F90];
  sub_23A7EED34();
  v45 = v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v46 = *(v43 + 72);
  do
  {
    v47 = v0[32];
    sub_23A7C1A20(v45, v47, type metadata accessor for PreviewItem);
    sub_23A7B4464(v47);
    sub_23A7C20A4(v47, type metadata accessor for PreviewItem);
    sub_23A7EED14();
    v48 = *(v76 + 16);
    sub_23A7EED44();
    sub_23A7EED54();
    sub_23A7EED24();
    v45 += v46;
    --v2;
  }

  while (v2);
  v49 = v76;
  if (v76 >> 62)
  {
    goto LABEL_41;
  }

LABEL_32:
  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v50)
  {
    goto LABEL_42;
  }

LABEL_33:
  v51 = sub_23A7EED34();
  if (v50 < 0)
  {
    __break(1u);
    return MEMORY[0x282200938](v51);
  }

  v74 = v12;
  v52 = objc_opt_self();
  v53 = 0;
  do
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x23EE8C140](v53, v49);
    }

    else
    {
      v54 = *(v49 + 8 * v53 + 32);
      swift_unknownObjectRetain();
    }

    ++v53;
    v55 = [v52 itemWithPreviewItem_];
    swift_unknownObjectRelease();
    sub_23A7EED14();
    v56 = *(v42 + 16);
    sub_23A7EED44();
    sub_23A7EED54();
    sub_23A7EED24();
  }

  while (v50 != v53);

  v12 = v74;
LABEL_43:
  v57 = v0[20];
  v58 = v0[21];
  v59 = *(v57 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  v60 = v58 + *(type metadata accessor for PreviewSession(0) + 24);
  v61 = sub_23A7EDFB4();
  v0[34] = v61;
  sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  v62 = sub_23A7EE994();
  v0[35] = v62;

  v0[2] = v0;
  v0[3] = sub_23A7C0590;
  v63 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_92;
  v0[14] = v63;
  [v59 updateContentsWithSessionUUID:v61 items:v62 selectedIndex:v12 completionHandler:v0 + 10];
  v51 = (v0 + 2);

  return MEMORY[0x282200938](v51);
}

uint64_t sub_23A7C0590()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_23A7C0768;
  }

  else
  {
    v3 = sub_23A7C06A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7C06A0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23A7C0768()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[25];
  v13 = v0[24];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[36];

  return v10();
}

uint64_t PreviewSession.bringToFront()()
{
  v1[5] = v0;
  v2 = type metadata accessor for PreviewSession(0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v1[8] = *(v3 + 64);
  v1[9] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v1[11] = v5;
  v1[12] = *(v5 + 64);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7C09B8, 0, 0);
}

uint64_t sub_23A7C09B8()
{
  if (qword_27DFA8D48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27DFAC688;
  if (*(qword_27DFAC688 + 16) && (v2 = sub_23A7C0FD0(v0[5] + *(v0[6] + 24)), (v3 & 1) != 0))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v23 = v0[12];
    v24 = v0[8];
    v22 = v0[7];
    v10 = v0[5];
    sub_23A7C1A20(*(v1 + 56) + *(v8 + 72) * v2, v5, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v5, v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
    swift_endAccess();
    v11 = sub_23A7EEA64();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_23A7C1A20(v4, v6, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1A20(v10, v9, type metadata accessor for PreviewSession);
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v23 + *(v22 + 80) + v12) & ~*(v22 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_23A7C1B3C(v6, v14 + v12, type metadata accessor for PreviewApplication.PreviewSessionMap);
    sub_23A7C1B3C(v9, v14 + v13, type metadata accessor for PreviewSession);
    sub_23A7B9D94(0, 0, v7, &unk_23A7FDC68, v14);

    sub_23A7C20A4(v4, type metadata accessor for PreviewApplication.PreviewSessionMap);
  }

  else
  {
    swift_endAccess();
  }

  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v19 = v0[9];
  v18 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_23A7C0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_23A7C0CA0, 0, 0);
}

uint64_t sub_23A7C0CA0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = *(v2 + *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) + 20));
  v4 = v1 + *(type metadata accessor for PreviewSession(0) + 24);
  v5 = sub_23A7EDFB4();
  v0[20] = v5;
  v0[2] = v0;
  v0[3] = sub_23A7C0DEC;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98D8, &qword_23A7FD920);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A7BA2FC;
  v0[13] = &block_descriptor_6;
  v0[14] = v6;
  [v3 bringToFrontWithSessionUUID:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7C0DEC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23A7C0F60;
  }

  else
  {
    v3 = sub_23A7C0EFC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7C0EFC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7C0F60()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

unint64_t sub_23A7C0FD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23A7EDFE4();
  sub_23A7C28F8(&qword_27DFA98C0, MEMORY[0x277CC95F0]);
  v5 = sub_23A7EE7E4();

  return sub_23A7C1170(a1, v5);
}

unint64_t sub_23A7C1068(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23A7EEE84();
  sub_23A7EE8E4();
  v6 = sub_23A7EEEA4();

  return sub_23A7C1330(a1, a2, v6);
}

unint64_t sub_23A7C10E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23A7EE844();
  sub_23A7EEE84();
  sub_23A7EE8E4();
  v4 = sub_23A7EEEA4();

  return sub_23A7C13E8(a1, v4);
}

unint64_t sub_23A7C1170(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23A7EDFE4();
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
      sub_23A7C28F8(&unk_27DFA9C60, MEMORY[0x277CC95F0]);
      v16 = sub_23A7EE804();
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

unint64_t sub_23A7C1330(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23A7EEE04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A7C13E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23A7EE844();
      v9 = v8;
      if (v7 == sub_23A7EE844() && v9 == v10)
      {
        break;
      }

      v12 = sub_23A7EEE04();

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

size_t sub_23A7C14EC(size_t a1, int64_t a2, char a3)
{
  result = sub_23A7C157C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23A7C150C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_23A7C157C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9C80, &unk_23A7FE040);
  v10 = *(type metadata accessor for PreviewItem(0) - 8);
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
  v15 = *(type metadata accessor for PreviewItem(0) - 8);
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

BOOL _s9QuickLook11PreviewItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9A50, &qword_23A7FDBB8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *(type metadata accessor for PreviewItem(0) + 24);
  v18 = *(v13 + 56);
  sub_23A7C1A20(a1 + v17, v16, type metadata accessor for PreviewItem.Source);
  sub_23A7C1A20(a2 + v17, &v16[v18], type metadata accessor for PreviewItem.Source);
  v19 = v5[4];
  v19(v11, v16, v4);
  v19(v9, &v16[v18], v4);
  if ((sub_23A7EDF34() & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = a1[1];
  v21 = a2[1];
  if (!v20)
  {
    v25 = v5[1];
    v25(v9, v4);
    v25(v11, v4);
    if (!v21)
    {
      return a1[2] == a2[2];
    }

    return 0;
  }

  if (!v21)
  {
LABEL_7:
    v23 = v5[1];
    v23(v9, v4);
    v23(v11, v4);
    return 0;
  }

  if (*a1 != *a2 || v20 != v21)
  {
    v26 = a2[1];
    v27 = sub_23A7EEE04();
    v28 = v5[1];
    v28(v9, v4);
    v28(v11, v4);
    if (v27)
    {
      return a1[2] == a2[2];
    }

    return 0;
  }

  v22 = v5[1];
  v22(v9, v4);
  v22(v11, v4);
  return a1[2] == a2[2];
}

uint64_t sub_23A7C1A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A7C1AE8()
{
  result = qword_27DFA9A70;
  if (!qword_27DFA9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9A70);
  }

  return result;
}

uint64_t sub_23A7C1B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A7C1BA4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PreviewSession(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = v1[3];
  v20 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v18 = *(v1 + v7);
  v13 = *(v1 + v7 + 16);
  v14 = *(v1 + v7 + 24) | (*(v1 + v7 + 26) << 16);
  v15 = *(v1 + ((v7 + 34) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_23A7A3828;

  return sub_23A7BD0A4(a1, v20, v19, v8, v1 + v5, v9, v11, v12);
}

uint64_t sub_23A7C1D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PreviewSession(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0) + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  v12 = *(v8 + v1[7]);

  v13 = v1[8];
  v14 = sub_23A7EDFE4();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);
  v15 = *(v0 + v4);

  if (*(v0 + v5 + 16) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + 34) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23A7C1F54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23A7A3828;

  return sub_23A7BEAF4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23A7C20A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A7C2104(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_23A7C2114(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23A7A3828;

  return sub_23A7BF39C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_23A7C229C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PreviewSession(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_23A7A3828;

  return sub_23A7BFC28(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t objectdestroy_17Tm()
{
  v1 = (type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for PreviewSession(0) - 8);
  v6 = *(*v5 + 80);
  v23 = (v3 + v4 + v6) & ~v6;
  v24 = v2 | v6;
  v25 = *(*v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v22 = *(*(v9 - 8) + 8);
  v22(v8, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v10 = *(v21 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  v20 = *(*(v11 - 8) + 8);
  v20(v8 + v10, v11);
  v12 = *(v8 + v5[7]);

  v13 = v5[8];
  v14 = sub_23A7EDFE4();
  v15 = *(*(v14 - 8) + 8);
  v15(v8 + v13, v14);
  v16 = *(v8 + v1[7]);
  swift_unknownObjectRelease();
  v17 = *(v8 + v1[8] + 8);

  v22(v0 + v23, v9);
  v20(v0 + v23 + *(v21 + 28), v11);
  v18 = *(v0 + v23 + v5[7]);

  v15(v0 + v23 + v5[8], v14);

  return MEMORY[0x2821FE8E8](v0, v23 + v25, v24 | 7);
}

uint64_t sub_23A7C2718(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PreviewSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23A7A3240;

  return sub_23A7C0C80(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23A7C28F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23A7C2944()
{
  result = qword_27DFA9AF8;
  if (!qword_27DFA9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9AF8);
  }

  return result;
}

uint64_t sub_23A7C29DC()
{
  result = sub_23A7EDF64();
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_23A7C2AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 27))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23A7C2B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_23A7C2BEC()
{
  sub_23A7C2CA0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for QLPreviewItemEditingMode(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PreviewItem.Source(319);
      if (v2 <= 0x3F)
      {
        sub_23A7EDFE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A7C2CA0()
{
  if (!qword_27DFA9B88)
  {
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9B88);
    }
  }
}

void sub_23A7C2D58()
{
  if (!qword_27DFA9BA8)
  {
    type metadata accessor for PreviewSession.Event(255);
    v0 = type metadata accessor for DataProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9BA8);
    }
  }
}

unint64_t sub_23A7C2E00()
{
  result = sub_23A7C2E88();
  if (v1 <= 0x3F)
  {
    result = sub_23A7EDF64();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PreviewItem(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7C2E88()
{
  result = qword_27DFA9BC0;
  if (!qword_27DFA9BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DFA9BC0);
  }

  return result;
}

unint64_t sub_23A7C2EFC()
{
  result = qword_27DFA9BD0;
  if (!qword_27DFA9BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9BD0);
  }

  return result;
}

uint64_t sub_23A7C2FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7C3080()
{
  result = qword_27DFA9BF0;
  if (!qword_27DFA9BF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DFA9BF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewSession.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PreviewSession.Failure(_WORD *result, int a2, int a3)
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

uint64_t sub_23A7C31C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A7C3230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7EDF64();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_23A7C32AC(uint64_t a1)
{
  result = sub_23A7EDF64();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_23A7C3398()
{
  sub_23A7EDFE4();
  if (v0 <= 0x3F)
  {
    sub_23A7C3424();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23A7C3424()
{
  if (!qword_27DFA9C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9C28, qword_23A7FDF58);
    v0 = sub_23A7EEC34();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA9C20);
    }
  }
}

unint64_t sub_23A7C348C()
{
  result = qword_27DFA9C30;
  if (!qword_27DFA9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9C30);
  }

  return result;
}

unint64_t sub_23A7C34E0()
{
  result = qword_27DFA9C38;
  if (!qword_27DFA9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9C38);
  }

  return result;
}

uint64_t type metadata accessor for QLWebLocationBarView()
{
  result = qword_27DFA9CF0;
  if (!qword_27DFA9CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7C35F0()
{
  result = sub_23A7EDF64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_23A7C3678@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for QLWebLocationBarView();
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = v6;
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_23A7EDF64();
  v64 = *(v67 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D00, &qword_23A7FE0B8);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v58 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D08, &qword_23A7FE0C0);
  v13 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v15 = &v58 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D10, &qword_23A7FE0C8);
  v16 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v18 = &v58 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D18, &qword_23A7FE0D0);
  v19 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D20, &qword_23A7FE0D8);
  v69 = *(v22 - 8);
  v70 = v22;
  v23 = *(v69 + 64);
  MEMORY[0x28223BE20](v22);
  v68 = &v58 - v24;
  v25 = sub_23A7EDF54();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    if (sub_23A7EE934())
    {
      v29 = sub_23A7EE8F4();
      v30 = sub_23A7C41A8(v29, v27, v28);
      v59 = v10;
      v60 = v7;
      v31 = a1;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = v33;
      a1 = v31;
      v10 = v59;
      v39 = v35;
      v2 = v1;
      v27 = MEMORY[0x23EE8BD30](v30, v38, v39, v37);
      v28 = v40;
      v7 = v60;
    }
  }

  else
  {
    v27 = sub_23A7EDF14();
    v28 = v41;
  }

  v74 = v27;
  v75 = v28;
  (*(v64 + 16))(v65, v2, v67);
  sub_23A7C3D0C();
  v42 = v63;
  sub_23A7EE644();
  v43 = sub_23A7EE6C4();
  KeyPath = swift_getKeyPath();
  (*(v66 + 32))(v15, v42, v10);
  v45 = &v15[*(v62 + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = sub_23A7EE634();
  v47 = swift_getKeyPath();
  sub_23A7AA428(v15, v18, &qword_27DFA9D08, &qword_23A7FE0C0);
  v48 = &v18[*(v61 + 36)];
  *v48 = v47;
  v48[1] = v46;
  v49 = &v21[*(v71 + 36)];
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D30, &qword_23A7FE140) + 28);
  v51 = *MEMORY[0x277CE0B20];
  v52 = sub_23A7EE654();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  sub_23A7AA428(v18, v21, &qword_27DFA9D10, &qword_23A7FE0C8);
  sub_23A7ABC3C(v2, v7);
  v53 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v54 = swift_allocObject();
  sub_23A7C3E28(v7, v54 + v53);
  sub_23A7C3EEC();
  v55 = v68;
  sub_23A7EE6A4();

  sub_23A7C4140(v21);
  LOBYTE(v51) = sub_23A7EE624();
  (*(v69 + 32))(a1, v55, v70);
  v56 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D80, &qword_23A7FE188) + 36);
  *v56 = v51;
  result = 0.0;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 1;
  return result;
}

id sub_23A7C3CB8()
{
  v0 = sub_23A7EDF24();
  v1 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

  return v1;
}

unint64_t sub_23A7C3D0C()
{
  result = qword_27DFA9D28;
  if (!qword_27DFA9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D28);
  }

  return result;
}

uint64_t sub_23A7C3D60(uint64_t a1)
{
  v2 = sub_23A7EE654();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23A7EE4B4();
}

uint64_t sub_23A7C3E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLWebLocationBarView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23A7C3E8C()
{
  v0 = *(*(type metadata accessor for QLWebLocationBarView() - 8) + 80);

  return sub_23A7C3CB8();
}

unint64_t sub_23A7C3EEC()
{
  result = qword_27DFA9D38;
  if (!qword_27DFA9D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D18, &qword_23A7FE0D0);
    sub_23A7C3FA4();
    sub_23A7AA790(&qword_27DFA9D78, &qword_27DFA9D30, &qword_23A7FE140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D38);
  }

  return result;
}

unint64_t sub_23A7C3FA4()
{
  result = qword_27DFA9D40;
  if (!qword_27DFA9D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D10, &qword_23A7FE0C8);
    sub_23A7C405C();
    sub_23A7AA790(&qword_27DFA9D68, &qword_27DFA9D70, &qword_23A7FE180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D40);
  }

  return result;
}

unint64_t sub_23A7C405C()
{
  result = qword_27DFA9D48;
  if (!qword_27DFA9D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D08, &qword_23A7FE0C0);
    sub_23A7AA790(&qword_27DFA9D50, &qword_27DFA9D00, &qword_23A7FE0B8);
    sub_23A7AA790(&qword_27DFA9D58, &qword_27DFA9D60, &qword_23A7FE178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D48);
  }

  return result;
}

uint64_t sub_23A7C4140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9D18, &qword_23A7FE0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7C41A8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_23A7EE904();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

unint64_t sub_23A7C4258()
{
  result = qword_27DFA9D88;
  if (!qword_27DFA9D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D80, &qword_23A7FE188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9D18, &qword_23A7FE0D0);
    sub_23A7C3EEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9D88);
  }

  return result;
}

uint64_t sub_23A7C4320()
{
  swift_getKeyPath();
  v4 = v0;
  sub_23A7C4B00();
  sub_23A7EE014();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);
  sub_23A7A3D7C(v2);
  return v2;
}

uint64_t sub_23A7C43A4()
{
  v1 = v0[3];
  sub_23A7A3DBC(v0[2]);
  v2 = OBJC_IVAR____TtC9QuickLook45QLHostAccessoryViewControllerWrapperViewModel___observationRegistrar;
  v3 = sub_23A7EE054();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel()
{
  result = qword_27DFA9D98;
  if (!qword_27DFA9D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7C449C()
{
  result = sub_23A7EE054();
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

uint64_t sub_23A7C4548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_23A7EE154();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = sub_23A7EEBB4();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7C4678, 0, 0);
}

uint64_t sub_23A7C4678()
{
  v1 = v0[23];
  v2 = v0[21];
  v16 = v0[20];
  v17 = v0[22];
  v3 = v0[18];
  v15 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  sub_23A7EEBA4();
  sub_23A7EEB94();
  v0[24] = sub_23A7EEBE4();
  (*(v3 + 16))(v15, v8, v4);
  (*(v2 + 16))(v17, v1, v16);
  v10 = *(MEMORY[0x277CC5E60] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_23A7C47C4;
  v12 = v0[22];
  v13 = v0[19];

  return MEMORY[0x282116B10](v13, v12);
}

uint64_t sub_23A7C47C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_23A7A43AC;
  }

  else
  {
    v5 = sub_23A7C48D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A7C48D8()
{
  *(v0 + 16) = *(v0 + 208);
  v1 = *(v0 + 192);
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_284D5CEE0;
  type metadata accessor for QLAccessoryExtensionProxy();
  v20 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  *(v0 + 56) = *v5;
  *(v0 + 80) = v1;
  *(v0 + 88) = &off_284D5CEE0;
  v6 = qword_27DFA8D28;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 96);
  v14 = qword_27DFAC670;

  (*(v11 + 8))(v13, v12);
  (*(v9 + 8))(v8, v10);
  *(v20 + 16) = v14;
  *(v20 + 64) = 0;
  sub_23A7A44BC((v0 + 56), v20 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v15 = *(v0 + 8);
  v16 = *(v0 + 208);

  return v15(v16, v20);
}

unint64_t sub_23A7C4B00()
{
  result = qword_27DFA9F70;
  if (!qword_27DFA9F70)
  {
    type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9F70);
  }

  return result;
}

uint64_t sub_23A7C4B58(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v12(a2, a3, a4, a5, a6);
}

uint64_t sub_23A7C4BDC(uint64_t a1)
{
  v2 = sub_23A7EE794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23A7EE7B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A3798(0, &qword_27DFA9020, 0x277D85C78);
  v12 = sub_23A7EEB64();
  sub_23A7C54BC(a1, v17);
  v13 = swift_allocObject();
  sub_23A7C54F4(v17, v13 + 16);
  aBlock[4] = sub_23A7C552C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);

  sub_23A7EE7A4();
  v17[0] = MEMORY[0x277D84F90];
  sub_23A7A8AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94E8, &unk_23A7FE270);
  sub_23A7A8B4C();
  sub_23A7EEC54();
  MEMORY[0x23EE8BFD0](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_23A7C4E80()
{
  v1 = v0;
  if (_UISolariumEnabled())
  {
    v2 = [v0 parentViewForAccessoryContainer];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 accessoryViewContainer];
      if (v4)
      {
        v23 = v4;
      }

      else
      {
        type metadata accessor for QLAccessoryContainerView();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v23 setTranslatesAutoresizingMaskIntoConstraints_];
        [v23 setHidden_];
        [v3 addSubview_];
        v5 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_23A7FD2F0;
        v7 = [v23 leadingAnchor];
        v8 = [v3 leadingAnchor];
        v9 = [v7 constraintEqualToAnchor_];

        *(v6 + 32) = v9;
        v10 = [v23 trailingAnchor];
        v11 = [v3 trailingAnchor];
        v12 = [v10 constraintEqualToAnchor_];

        *(v6 + 40) = v12;
        v13 = [v23 topAnchor];
        v14 = [v3 topAnchor];
        v15 = [v13 constraintEqualToAnchor_];

        *(v6 + 48) = v15;
        v16 = [v23 bottomAnchor];
        v17 = [v3 bottomAnchor];
        v18 = [v16 constraintEqualToAnchor_];

        *(v6 + 56) = v18;
        sub_23A7A3798(0, &qword_27DFA95B0, 0x277CCAAD0);
        v19 = sub_23A7EE994();

        [v5 activateConstraints_];

        v20 = [v1 accessoryView];
        v21 = *&v23[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView];
        *&v23[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView] = v20;
        v22 = v20;
        sub_23A7A69D0(v21);

        [v1 setAccessoryViewContainer_];
        v3 = v23;
      }
    }
  }
}

double sub_23A7C52A0()
{
  v1 = [v0 accessoryViewContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    type metadata accessor for QLAccessoryContainerView();
    v4 = swift_dynamicCastClass();
    if (v4 && (v5 = v4, [v0 accessoryViewVisible]))
    {
      v6 = *(v5 + OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView);
      if (v6)
      {
        [v6 frame];
        Height = CGRectGetHeight(v9);

        return Height + 20.0;
      }

      else
      {

        return 20.0;
      }
    }

    else
    {
    }
  }

  return v2;
}

uint64_t sub_23A7C5380(uint64_t a1)
{
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = off_27DFA9DA8;
  v3 = *(off_27DFA9DA8 + 2);
  sub_23A7C54BC(a1, v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_27DFA9DA8 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A7C63BC(0, v3 + 1, 1, v2);
    off_27DFA9DA8 = v2;
  }

  v6 = v2[2];
  v5 = v2[3];
  if (v6 >= v5 >> 1)
  {
    v2 = sub_23A7C63BC((v5 > 1), v6 + 1, 1, v2);
  }

  v2[2] = v6 + 1;
  sub_23A7C54F4(v8, &v2[6 * v6 + 4]);
  off_27DFA9DA8 = v2;
  result = swift_endAccess();
  if (!v3)
  {
    return sub_23A7C554C();
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7C554C()
{
  v32 = sub_23A7EDFE4();
  v31 = *(v32 - 8);
  v0 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23A7EE374();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23A7EDF64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (*(off_27DFA9DA8 + 2))
  {
    sub_23A7C54BC(off_27DFA9DA8 + 32, v35);
    v30 = [objc_allocWithZone(MEMORY[0x277D41248]) init];
    [v30 setPrintPageRenderer_];
    v16 = objc_opt_self();
    sub_23A7EE334();
    v17 = sub_23A7EE324();
    v29 = v8;
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    v19 = [v35[0] uuid];
    sub_23A7EDFC4();

    v20 = sub_23A7EDFB4();
    (*(v31 + 8))(v2, v32);
    v21 = [v16 _QLTemporaryFileURLWithType_uuid_];

    sub_23A7EDF44();
    v22 = sub_23A7EDF24();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_23A7C54BC(v35, v34);
    v24 = v29;
    (*(v9 + 16))(v12, v14, v29);
    v25 = (*(v9 + 80) + 64) & ~*(v9 + 80);
    v26 = swift_allocObject();
    sub_23A7C54F4(v34, v26 + 16);
    (*(v9 + 32))(v26 + v25, v12, v24);
    aBlock[4] = sub_23A7C64FC;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7C6328;
    aBlock[3] = &block_descriptor_6_0;
    v27 = _Block_copy(aBlock);

    v28 = v30;
    [v30 savePDFToURL:v22 showProgress:0 hostingScene:Strong completionHandler:v27];
    _Block_release(v27);

    (*(v9 + 8))(v14, v24);
    return sub_23A7A8CE4(v35);
  }

  return result;
}

uint64_t sub_23A7C59F0()
{
  v0 = sub_23A7EE794();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23A7EE7B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A3798(0, &qword_27DFA9020, 0x277D85C78);
  v10 = sub_23A7EEB64();
  aBlock[4] = sub_23A7C5C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_21;
  v11 = _Block_copy(aBlock);
  sub_23A7EE7A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23A7A8AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94E8, &unk_23A7FE270);
  sub_23A7A8B4C();
  sub_23A7EEC54();
  MEMORY[0x23EE8BFD0](0, v9, v4, v11);
  _Block_release(v11);

  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_23A7C5C58()
{
  if (qword_27DFA8D60 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (*(off_27DFA9DA8 + 2))
  {
    sub_23A7C6954(0, 1);
    v1 = swift_endAccess();
    return sub_23A7C554C(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A7C5CF8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (aBlock - v11);
  v13 = sub_23A7EDF64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  if ((a2 & 1) == 0 || a3)
  {
    v25 = *(a4 + 32);
    v24 = *(a4 + 40);
    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
    }

    *v12 = v26;
    swift_storeEnumTagMultiPayload();
    v27 = a3;
    v25(v12);
    sub_23A7C6588(v12);
    sub_23A7C59F0();
  }

  else
  {
    [*(a4 + 16) printableRect];
    v17 = v16;
    v19 = v18;
    v20 = *(a4 + 8);
    sub_23A7C54BC(a4, v29);
    (*(v14 + 16))(aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v22 = swift_allocObject();
    sub_23A7C54F4(v29, v22 + 16);
    (*(v14 + 32))(v22 + v21, aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = sub_23A7C66D4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7C62D4;
    aBlock[3] = &block_descriptor_12_0;
    v23 = _Block_copy(aBlock);

    [v20 numberOfPagesWithSize:v23 completionHandler:{v17, v19}];
    _Block_release(v23);
  }
}

void sub_23A7C5FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7EDF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *(a2 + 8);
  sub_23A7C54BC(a2, v14);
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_23A7C54F4(v14, v11 + 16);
  (*(v7 + 32))(v11 + v10, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_23A7C6748;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7C4B58;
  aBlock[3] = &block_descriptor_18;
  v12 = _Block_copy(aBlock);

  [v9 provideCurrentPageAndVisibleRectWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_23A7C6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  v21 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = sub_23A7EDF64();
  result = (*(*(v22 - 8) + 16))(v19, a3, v22);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = _s12GeneratedPDFVMa();
    *&v19[v24[5]] = a4;
    *&v19[v24[6]] = a1;
    v25 = &v19[v24[7]];
    *v25 = a5;
    v25[1] = a6;
    v25[2] = a7;
    v25[3] = a8;
    swift_storeEnumTagMultiPayload();
    v21(v19);
    sub_23A7C6588(v19);
    return sub_23A7C59F0();
  }

  return result;
}

uint64_t sub_23A7C62D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_23A7C6328(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(v10, a3, a4);
}

void *sub_23A7C63BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DB0, &qword_23A7FE280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23A7C64FC(uint64_t a1, char a2, void *a3)
{
  v7 = *(sub_23A7EDF64() - 8);
  v8 = v3 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  sub_23A7C5CF8(a1, a2, a3, v3 + 16, v8);
}

uint64_t sub_23A7C6588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = sub_23A7EDF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();

  MEMORY[0x23EE8D830](v0 + 40);
  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_23A7C66D4(uint64_t a1)
{
  v3 = *(sub_23A7EDF64() - 8);
  v4 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  sub_23A7C5FAC(a1, v1 + 16, v4);
}

uint64_t sub_23A7C6748(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = *(sub_23A7EDF64() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23A7C6180(a1, v5 + 16, v5 + v12, v13, a2, a3, a4, a5);
}

uint64_t _s12GeneratedPDFVMa()
{
  result = qword_27DFA9DB8;
  if (!qword_27DFA9DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23A7C6864(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 48 * a3;
  v12 = v7 + 32 + 48 * a2;
  if (result < v12 || result >= v12 + 48 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_23A7C6954(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_23A7C63BC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_23A7C6864(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_23A7C6A3C()
{
  sub_23A7EDF64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23A7C6AD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23A7C6B18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_23A7C6C4C()
{
  v1 = v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *v1;
  if (v2)
  {
    sub_23A7C6D2C(v5, v4, v2);
    sub_23A7C6D44(v3, v4, 1);
    v6 = [v3 string];
    v7 = sub_23A7EE844();

    sub_23A7C6D54(v3, v4, v2);
    sub_23A7C6D54(v3, v4, v2);
    return v7;
  }

  else
  {
    sub_23A7C6D44(v5, v4, 0);
    return v3;
  }
}

id sub_23A7C6D2C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23A7C6D44(result, a2, a3 & 1);
  }

  return result;
}

id sub_23A7C6D44(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23A7C6D54(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_23A7C6D6C(a1, a2, a3 & 1);
  }
}

void sub_23A7C6D6C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_23A7C6DC0()
{
  v1 = v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v2 == 255)
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  if (v2)
  {
    sub_23A7C6D44(*v1, *(v1 + 8), 1);
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
    sub_23A7C6D44(v3, v4, 0);
    v6 = sub_23A7EE814();
    v7 = [v5 initWithString_];

    sub_23A7C6D54(v3, v4, v2);
    return v7;
  }

  return v3;
}

void sub_23A7C6E8C(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content];
  v3 = v1[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16];
  if (v3 != 255)
  {
    v4 = *v2;
    v5 = *(v2 + 1);
    if (v3)
    {
      *v2 = a1;
      *(v2 + 1) = v5 & 1;
      v2[16] = 1;
      v6 = a1;
    }

    else
    {
      sub_23A7C6D44(*v2, *(v2 + 1), 0);
      v8 = [a1 string];
      v9 = sub_23A7EE844();
      v11 = v10;

      v12 = *v2;
      v13 = *(v2 + 1);
      *v2 = v9;
      *(v2 + 1) = v11;
      v14 = v2[16];
      v2[16] = 0;
      sub_23A7C6D54(v12, v13, v14);
    }

    [v1 updateChangeCount_];

    sub_23A7C6D54(v4, v5, v3);
  }
}

void sub_23A7C6FFC(uint64_t a1@<X8>)
{
  v45[13] = *MEMORY[0x277D85DE8];
  v4 = sub_23A7EE8A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v11 = *(v1 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 16);
  if (v11 == 255)
  {
    *(a1 + 24) = MEMORY[0x277CC9318];
    *a1 = xmmword_23A7FE300;
    goto LABEL_14;
  }

  v13 = *v10;
  v12 = *(v10 + 8);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DD0, &qword_23A7FE320);
    if (v12)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23A7FE310;
      v15 = *MEMORY[0x277D74090];
      *(inited + 32) = *MEMORY[0x277D74090];
      v16 = *MEMORY[0x277D74128];
      *(inited + 40) = *MEMORY[0x277D74128];
      sub_23A7C6D2C(v13, v12, v11);
      v17 = v15;
      v18 = v16;
      v19 = sub_23A7C8548(inited);
      swift_setDeallocating();
      sub_23A7C8640(inited + 32);
      v20 = [v13 length];
      sub_23A7C74E0(v19);

      type metadata accessor for DocumentAttributeKey(0);
      sub_23A7C8B38(&qword_27DFA8E30, type metadata accessor for DocumentAttributeKey);
      v21 = sub_23A7EE7C4();

      v45[0] = 0;
      v22 = [v13 fileWrapperFromRange:0 documentAttributes:v20 error:{v21, v45}];

      v23 = v45[0];
      if (v22)
      {
        *(a1 + 24) = sub_23A7C86A8();
        v24 = v23;
        sub_23A7C6D54(v13, v12, v11);
        *a1 = v22;
        goto LABEL_14;
      }

      v38 = v45[0];
    }

    else
    {
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_23A7FE310;
      v30 = *MEMORY[0x277D74090];
      *(v29 + 32) = *MEMORY[0x277D74090];
      v31 = *MEMORY[0x277D74130];
      *(v29 + 40) = *MEMORY[0x277D74130];
      sub_23A7C6D2C(v13, v12, v11);
      v32 = v30;
      v33 = v31;
      v34 = sub_23A7C8548(v29);
      swift_setDeallocating();
      sub_23A7C8640(v29 + 32);
      v35 = [v13 length];
      sub_23A7C74E0(v34);

      type metadata accessor for DocumentAttributeKey(0);
      sub_23A7C8B38(&qword_27DFA8E30, type metadata accessor for DocumentAttributeKey);
      v36 = sub_23A7EE7C4();

      v45[0] = 0;
      v37 = [v13 dataFromRange:0 documentAttributes:v35 error:{v36, v45}];

      v38 = v45[0];
      if (v37)
      {
        v39 = sub_23A7EDF94();
        v41 = v40;

        *(a1 + 24) = MEMORY[0x277CC9318];
        sub_23A7C6D54(v13, v12, v11);
        *a1 = v39;
        *(a1 + 8) = v41;
        goto LABEL_14;
      }
    }

    v42 = v38;
    sub_23A7EDEF4();

    swift_willThrow();
    sub_23A7C6D54(v13, v12, v11);
    goto LABEL_14;
  }

  v44[1] = v2;
  v25 = v7;

  sub_23A7EE874();
  v26 = sub_23A7EE854();
  v28 = v27;
  (*(v5 + 8))(v9, v25);
  *(a1 + 24) = MEMORY[0x277CC9318];
  sub_23A7C6D54(v13, v12, v11);
  if (v28 >> 60 == 15)
  {
    *a1 = xmmword_23A7FE300;
  }

  else
  {
    *a1 = v26;
    *(a1 + 8) = v28;
  }

LABEL_14:
  v43 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23A7C74E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9DF8, &qword_23A7FE3E0);
    v1 = sub_23A7EEDB4();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for DocumentType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_23A7A8AB8((v28 + 8), v26);
    sub_23A7A8AB8(v26, v28);
    v16 = *(v1 + 40);
    sub_23A7EE844();
    sub_23A7EEE84();
    sub_23A7EE8E4();
    v17 = sub_23A7EEEA4();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_23A7A8AB8(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23A7C7860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v7 = sub_23A7EE8A4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23A7EE374();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A79842C(a1, v52);
  if (swift_dynamicCast())
  {
    v14 = v50;
    v48 = v3;
    v49 = v51;
    if (a3)
    {
      v47 = v4;
      sub_23A7EE344();
      v15 = sub_23A7EE314();
      v17 = v16;
      (*(v10 + 8))(v13, v9);
      if (v15 == v53 && v17 == a3)
      {

        v20 = v47;
      }

      else
      {
        v19 = sub_23A7EEE04();

        v20 = v47;
        if ((v19 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v40 = v49;
      sub_23A7A8C88(v14, v49);
      v41 = sub_23A7C86F4(MEMORY[0x277D84F90]);
      v42 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v43 = sub_23A7C881C(v14, v40, v41, 0);
      sub_23A7A8BF8(v14, v40);
      sub_23A7A8BF8(v14, v40);
      if (v20)
      {
        return;
      }

      v44 = v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
      v27 = *(v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
      v28 = *(v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
      *v44 = v43;
      *(v44 + 8) = 0;
      v29 = *(v44 + 16);
      *(v44 + 16) = 1;
      goto LABEL_24;
    }

LABEL_8:
    sub_23A7EE874();
    v21 = v49;
    v22 = sub_23A7EE864();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    sub_23A7A8BF8(v14, v21);
    v26 = v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
    v27 = *(v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
    v28 = *(v48 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
    *v26 = v24;
    *(v26 + 8) = v25;
    v29 = *(v26 + 16);
    *(v26 + 16) = 0;
    goto LABEL_24;
  }

  sub_23A79842C(a1, v52);
  sub_23A7C86A8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v30 = v50;
  v31 = [v50 serializedRepresentation];
  if (!v31)
  {

    return;
  }

  v32 = v3;
  v33 = v31;
  v34 = sub_23A7EDF94();
  v36 = v35;

  sub_23A7A8C88(v34, v36);
  v37 = sub_23A7C86F4(MEMORY[0x277D84F90]);
  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = sub_23A7C881C(v34, v36, v37, 0);
  sub_23A7A8BF8(v34, v36);
  if (v4)
  {
    sub_23A7A8BF8(v34, v36);

    return;
  }

  sub_23A7A8BF8(v34, v36);
  v45 = v32 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content;
  v27 = *(v32 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content);
  v28 = *(v32 + OBJC_IVAR____TtC9QuickLook14QLTextDocument_content + 8);
  *v45 = v39;
  *(v45 + 8) = 1;
  v29 = *(v45 + 16);
  *(v45 + 16) = 1;
LABEL_24:
  sub_23A7C6D54(v27, v28, v29);
}

id QLTextDocument.__allocating_init(fileURL:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23A7EDF24();
  v5 = [v3 initWithFileURL_];

  v6 = sub_23A7EDF64();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id QLTextDocument.init(fileURL:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC9QuickLook14QLTextDocument_content];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = -1;
  v5 = sub_23A7EDF24();
  v9.receiver = v2;
  v9.super_class = type metadata accessor for QLTextDocument();
  v6 = objc_msgSendSuper2(&v9, sel_initWithFileURL_, v5);

  v7 = sub_23A7EDF64();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

id QLTextDocument.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLTextDocument();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23A7C7FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E10, &qword_23A7FE3F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98E0, &qword_23A7FD940);
    v8 = sub_23A7EEDB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A7A8D38(v10, v6, &qword_27DFA9E10, &qword_23A7FE3F8);
      result = sub_23A7C0FD0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23A7EDFE4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PreviewApplication.RestorationSession(0);
      result = sub_23A7C8B80(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PreviewApplication.RestorationSession);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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
uint64_t static QLAppExtensionSceneBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v24 = a5;
  v25 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  (*(v11 + 16))(v14, a2, a4);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  v22 = v25;
  *(v21 + 4) = v24;
  *(v21 + 5) = v22;
  (*(v16 + 32))(&v21[v19], v18, a3);
  result = (*(v11 + 32))(&v21[v20], v14, a4);
  *a7 = sub_23A7E8054;
  a7[1] = v21;
  return result;
}

uint64_t sub_23A7E8054@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = *(*(v1[2] - 8) + 80);
  return sub_23A7E80F0(v1 + ((v3 + 48) & ~v3), v1 + ((((v3 + 48) & ~v3) + *(*(v1[2] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1[2], v2, *(v1[4] + 8), *(v1[5] + 8), a1);
}

uint64_t sub_23A7E80F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v27 = a7;
  v28 = a6;
  v25 = a5;
  v26 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v12);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA218, &qword_23A7FF1D0);
  v20 = *(sub_23A7EE0A4() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23A7FD280;
  (*(v16 + 16))(v19, a1, a3);
  sub_23A7EE094();
  (*(v10 + 16))(v14, v26, a4);
  result = sub_23A7EE094();
  *v27 = v23;
  return result;
}

uint64_t QLAppExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v18[1] = a3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = *(v7 + 16);
  v13(v18 - v11, v4, a1);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v7 + 32))(v15 + v14, v12, a1);
  v13(v10, v4, a1);
  sub_23A7B9830(v10, a1, &v19);
  v18[2] = v19;
  swift_getAssociatedTypeWitness();
  type metadata accessor for QLGlobalAppExtensionConfiguration();
  v16 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  return sub_23A7EE074();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7E85B4()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t sub_23A7E861C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_23A7E86BC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_23A7E86FC(a1);
  return v5;
}

uint64_t *sub_23A7E86FC(uint64_t a1)
{
  v3 = *v1;
  sub_23A7EE3A4();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23A7E87C8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v81 - v8;
  sub_23A7E861C(v81 - v8);
  v10 = *(v4 + 88);
  v11 = (*(v10 + 16))(v5, v10);
  (*(v6 + 8))(v9, v5);
  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  v12 = objc_opt_self();
  v13 = [v12 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v14 = [v12 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 resume];
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = v10;
  v16[4] = v15;
  v86 = sub_23A7E955C;
  v87 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = sub_23A7A0EA0;
  v85 = &block_descriptor_11;
  v17 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v10;
  v19[4] = v18;
  v86 = sub_23A7E9678;
  v87 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = sub_23A7A0EA0;
  v85 = &block_descriptor_19;
  v20 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler_];
  _Block_release(v20);
  v21 = [a1 exportedInterface];
  if (v21)
  {
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_23A7FD280;
    v24 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v23 + 32) = v24;
    v25 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    *(v23 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
    *(v23 + 64) = v25;
    v26 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v27 = sub_23A7EE994();

    v28 = [v26 initWithArray_];

    aBlock = 0;
    result = sub_23A7EEAE4();
    if (!aBlock)
    {
      __break(1u);
      goto LABEL_24;
    }

    v30 = sub_23A7EEAD4();

    [v22 setClasses:v30 forSelector:sel_openWithSessionUUID_items_selectedIndex_bundleID_configuration_completionHandler_ argumentIndex:1 ofReply:0];
  }

  v31 = [a1 exportedInterface];
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_23A7FD280;
  v34 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v33 + 32) = v34;
  v35 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  *(v33 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
  *(v33 + 64) = v35;
  v36 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v37 = sub_23A7EE994();

  v38 = [v36 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = sub_23A7EEAD4();

  [v32 setClasses:v39 forSelector:sel_updateContentsWithSessionUUID_items_selectedIndex_completionHandler_ argumentIndex:1 ofReply:0];

LABEL_7:
  v40 = [a1 exportedInterface];
  if (!v40)
  {
    goto LABEL_10;
  }

  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23A7FD270;
  v43 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v42 + 32) = v43;
  v44 = type metadata accessor for PreviewApplication.RestorationItem(0);
  *(v42 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
  *(v42 + 64) = v44;
  v45 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
  *(v42 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
  *(v42 + 96) = v45;
  v46 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v47 = sub_23A7EE994();

  v48 = [v46 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v49 = sub_23A7EEAD4();

  [v41 setClasses:v49 forSelector:sel_restoreWithItems_targetAppBundleIdentifier_sessionUUID_completionHandler_ argumentIndex:0 ofReply:0];

LABEL_10:
  v50 = [a1 exportedInterface];
  if (!v50)
  {
    goto LABEL_13;
  }

  v51 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23A7FD270;
  v53 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v52 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v52 + 32) = v53;
  v54 = type metadata accessor for PreviewApplication.RestorationItem(0);
  *(v52 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
  *(v52 + 64) = v54;
  v55 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
  *(v52 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
  *(v52 + 96) = v55;
  v56 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v57 = sub_23A7EE994();

  v58 = [v56 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v59 = sub_23A7EEAD4();

  [v51 setClasses:v59 forSelector:sel_restoreSandboxAccessWithItems_targetAppBundleIdentifier_sessionUUID_completionHandler_ argumentIndex:0 ofReply:0];

LABEL_13:
  v60 = [a1 remoteObjectInterface];
  if (!v60)
  {
    goto LABEL_16;
  }

  v61 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_23A7FD280;
  v63 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v62 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v62 + 32) = v63;
  v64 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  *(v62 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
  *(v62 + 64) = v64;
  v65 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v66 = sub_23A7EE994();

  v67 = [v65 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = sub_23A7EEAD4();

  [v61 setClasses:v68 forSelector:sel_didRestoreWithItems_sessionUUID_ argumentIndex:0 ofReply:0];

LABEL_16:
  v69 = [a1 remoteObjectInterface];
  if (v69)
  {
    v70 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_23A7FD280;
    v72 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v71 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v71 + 32) = v72;
    v73 = sub_23A7A3798(0, &qword_27DFA97B0, 0x277CBEA90);
    *(v71 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97B8, &unk_23A7FD840);
    *(v71 + 64) = v73;
    v74 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v75 = sub_23A7EE994();

    v76 = [v74 initWithArray_];

    aBlock = 0;
    result = sub_23A7EEAE4();
    if (aBlock)
    {

      v77 = sub_23A7EEAD4();

      [v70 setClasses:v77 forSelector:sel_didRestoreWithSandboxWrapperData_error_sessionUUID_ argumentIndex:0 ofReply:0];

      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_19:
  v78 = [a1 remoteObjectProxy];
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0F8, &qword_23A7FF038);
  if (swift_dynamicCast())
  {
    v79 = v81[1];
  }

  else
  {
    v79 = 0;
  }

  v80 = *(*v2 + 104);
  swift_beginAccess();
  (*(v10 + 32))(v79, v5, v10);
  swift_endAccess();
  return 1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23A7E959C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_23A7EE394();
    v6 = sub_23A7EEB34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23A714000, v5, v6, a4, v7, 2u);
      MEMORY[0x23EE8D760](v7, -1, -1);
    }
  }
}

uint64_t *QuickLookPreviewConfiguration.deinit()
{
  v1 = *v0;
  v2 = qword_27DFAA100;
  v3 = sub_23A7EE3B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t QuickLookPreviewConfiguration.__deallocating_deinit()
{
  QuickLookPreviewConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23A7E97B8(void *a1)
{
  v2 = *v1;
  sub_23A7E87C8(a1);
  return 1;
}

uint64_t QuickLookPreviewAppExtension.configuration.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for QuickLookPreviewConfiguration();
  (*(v3 + 16))(v6, v1, a1);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_23A7E86FC(v6);
  return v10;
}

uint64_t sub_23A7E9918(uint64_t a1)
{
  result = sub_23A7EE3B4();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7E9A8C()
{
  result = qword_27DFAA188;
  if (!qword_27DFAA188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DFAA190, &qword_23A7FF110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA188);
  }

  return result;
}

uint64_t sub_23A7E9AF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7E9B70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for QLHostDebugView()
{
  result = qword_27DFAA228;
  if (!qword_27DFAA228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7E9C28()
{
  sub_23A7E9C94();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A7E9C94()
{
  if (!qword_27DFAA238)
  {
    type metadata accessor for QLHostRemoteViewModel();
    v0 = sub_23A7EE764();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAA238);
    }
  }
}

uint64_t sub_23A7E9D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
  sub_23A7EE014();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_23A7A3D7C(v4);
}

uint64_t sub_23A7E9DB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
  sub_23A7EE004();
}

uint64_t sub_23A7E9E84()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E9F10;

  return sub_23A7A4A7C();
}

uint64_t sub_23A7E9F10(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23A7EA044, 0, 0);
  }
}

uint64_t sub_23A7EA044()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B8, &qword_23A7FF338);
  *v5 = v0;
  v5[1] = sub_23A7EA16C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023A80C4E0, sub_23A7ED63C, v3, v6);
}

uint64_t sub_23A7EA16C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23A7EA2F4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23A7EA288;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A7EA288()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23A7EA2F4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[8];
  v5 = v0[1];

  return v5();
}

uint64_t sub_23A7EA368()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23A7EA3F4;

  return sub_23A7A5044();
}

uint64_t sub_23A7EA3F4(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23A7EA528, 0, 0);
  }
}

uint64_t sub_23A7EA528()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D0, &qword_23A7FF370);
  *v5 = v0;
  v5[1] = sub_23A7EA650;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023A80C4E0, sub_23A7ED984, v3, v6);
}

uint64_t sub_23A7EA650()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23A7EDAEC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23A7EDAE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_23A7EA76C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_23A7EA7D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2C0, &qword_23A7FF340);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  (*(v7 + 16))(&v19 - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_23A7ED644;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7EA76C;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);

  v14 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B8, &qword_23A7FF338);
  if (swift_dynamicCast() && (v15 = v20) != 0)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v19 = v15;
      return sub_23A7EEA04();
    }
  }

  else
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      sub_23A7ED670();
      v17 = swift_allocError();
      *v18 = 1;
      v19 = v17;
      return sub_23A7EE9F4();
    }
  }

  return result;
}

uint64_t sub_23A7EAAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D8, &qword_23A7FF378);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  (*(v7 + 16))(v19 - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_23A7EDA4C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7EA76C;
  aBlock[3] = &block_descriptor_63;
  v13 = _Block_copy(aBlock);

  v14 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D0, &qword_23A7FF370);
  if (swift_dynamicCast())
  {
    v15 = v19[1];
    swift_beginAccess();
    if (*(a3 + 16))
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v19[0] = v15;
      return sub_23A7EEA04();
    }
  }

  else
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      sub_23A7ED670();
      v17 = swift_allocError();
      *v18 = 1;
      v19[0] = v17;
      return sub_23A7EE9F4();
    }
  }

  return result;
}

uint64_t sub_23A7EAD98(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_23A7EE9F4();
  }

  return result;
}

uint64_t sub_23A7EAE3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  *a2 = *(v3 + 40);
}

uint64_t sub_23A7EAEE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23A7CCDC8(v4);
}

uint64_t sub_23A7EAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA248, &qword_23A7FF250);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  *v11 = sub_23A7EE524();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA250, &qword_23A7FF258);
  sub_23A7EB08C(a1, &v11[*(v12 + 44)]);
  v13 = sub_23A7EE624();
  v14 = &v11[*(v5 + 44)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  sub_23A7A8D38(v11, v9, &qword_27DFAA248, &qword_23A7FF250);
  *a2 = 0;
  *(a2 + 8) = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA258, &qword_23A7FF260);
  sub_23A7A8D38(v9, a2 + *(v15 + 48), &qword_27DFAA248, &qword_23A7FF250);
  sub_23A7A8E74(v11, &qword_27DFAA248, &qword_23A7FF250);
  return sub_23A7A8E74(v9, &qword_27DFAA248, &qword_23A7FF250);
}

uint64_t sub_23A7EB08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for QLHostDebugView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA260, &qword_23A7FF268);
  v97 = *(v83 - 8);
  v7 = *(v97 + 64);
  v8 = MEMORY[0x28223BE20](v83);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v76 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - v12;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA268, &qword_23A7FF270);
  v14 = *(*(v96 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v96);
  v86 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v76 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v76 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v76 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v82 = &v76 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v76 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v80 = &v76 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v76 - v30;
  MEMORY[0x28223BE20](v29);
  v95 = &v76 - v32;
  sub_23A7ED13C(a1, v6);
  v33 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v94 = v5;
  v34 = swift_allocObject();
  sub_23A7AC5F4(v6, v34 + v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA270, &qword_23A7FF278);
  v92 = sub_23A7ED1B8();
  v93 = v35;
  sub_23A7EE704();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v36 = v98;
  swift_getKeyPath();
  v98 = v36;
  v90 = sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v37 = *(v36 + 40);

  swift_getKeyPath();
  v98 = v37;
  v89 = sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
  sub_23A7EE014();

  v38 = *(v37 + 16);
  sub_23A7A3D7C(v38);

  if (v38)
  {
    sub_23A7A3DBC(v38);
  }

  v39 = v38 != 0;
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  v42 = *(v97 + 32);
  v43 = v13;
  v44 = v83;
  v97 += 32;
  v88 = v42;
  v42(v31, v43, v83);
  v45 = v95;
  v46 = &v31[*(v96 + 36)];
  *v46 = KeyPath;
  v46[1] = sub_23A7ED370;
  v46[2] = v41;
  sub_23A7ED388(v31, v45);
  sub_23A7ED13C(a1, v6);
  v47 = swift_allocObject();
  sub_23A7AC5F4(v6, v47 + v33);
  v48 = v78;
  sub_23A7EE704();
  sub_23A7EE724();
  v49 = v98;
  swift_getKeyPath();
  v98 = v49;
  sub_23A7EE014();

  v50 = *(v49 + 40);

  swift_getKeyPath();
  v98 = v50;
  sub_23A7EE014();

  v51 = *(v50 + 16);
  sub_23A7A3D7C(v51);

  if (v51)
  {
    sub_23A7A3DBC(v51);
  }

  v52 = v51 == 0;
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v55 = v77;
  v88(v77, v48, v44);
  v56 = (v55 + *(v96 + 36));
  *v56 = v53;
  v56[1] = sub_23A7EDAF4;
  v56[2] = v54;
  v57 = v80;
  sub_23A7ED388(v55, v80);
  sub_23A7ED13C(a1, v6);
  v58 = swift_allocObject();
  sub_23A7AC5F4(v6, v58 + v33);
  v59 = v81;
  sub_23A7EE704();
  sub_23A7EE724();
  v60 = v98;
  swift_getKeyPath();
  v98 = v60;
  sub_23A7EE014();

  v61 = *(v60 + 40);

  swift_getKeyPath();
  v98 = v61;
  sub_23A7EE014();

  v62 = *(v61 + 16);
  sub_23A7A3D7C(v62);

  if (v62)
  {
    sub_23A7A3DBC(v62);
  }

  v63 = v62 == 0;
  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  v66 = v79;
  v88(v79, v59, v44);
  v67 = (v66 + *(v96 + 36));
  *v67 = v64;
  v67[1] = sub_23A7EDAF4;
  v67[2] = v65;
  v68 = v82;
  sub_23A7ED388(v66, v82);
  v69 = v95;
  v70 = v84;
  sub_23A7A8D38(v95, v84, &qword_27DFAA268, &qword_23A7FF270);
  v71 = v85;
  sub_23A7A8D38(v57, v85, &qword_27DFAA268, &qword_23A7FF270);
  v72 = v86;
  sub_23A7A8D38(v68, v86, &qword_27DFAA268, &qword_23A7FF270);
  v73 = v87;
  sub_23A7A8D38(v70, v87, &qword_27DFAA268, &qword_23A7FF270);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B0, &qword_23A7FF318);
  sub_23A7A8D38(v71, v73 + *(v74 + 48), &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8D38(v72, v73 + *(v74 + 64), &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v68, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v57, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v69, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v72, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v71, &qword_27DFAA268, &qword_23A7FF270);
  return sub_23A7A8E74(v70, &qword_27DFAA268, &qword_23A7FF270);
}

uint64_t sub_23A7EBA98(uint64_t a1)
{
  v2 = type metadata accessor for QLHostDebugView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_23A7ED13C(a1, v5);
  sub_23A7EEA34();
  v11 = sub_23A7EEA24();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23A7AC5F4(v5, v13 + v12);
  sub_23A7B9D94(0, 0, v9, &unk_23A7FF360, v13);
}

uint64_t sub_23A7EBC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_23A7EBCE8, v6, v5);
}

uint64_t sub_23A7EBCE8()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v0[7] = v0[2];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_23A7EBD9C;

  return sub_23A7CE42C();
}

uint64_t sub_23A7EBD9C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_23A7EBF1C;
  }

  else
  {
    v7 = v2[7];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_23A7EBEB8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23A7EBEB8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7EBF1C()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_23A7EBFCC(uint64_t a1)
{
  v2 = type metadata accessor for QLHostDebugView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_23A7EEA44();
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_23A7ED13C(a1, v5);
  sub_23A7EEA34();
  v11 = sub_23A7EEA24();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_23A7AC5F4(v5, v13 + v12);
  sub_23A7AF7B0(0, 0, v9, &unk_23A7FF350, v13);
}

uint64_t sub_23A7EC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_23A7EEA34();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7EC228, v6, v5);
}

uint64_t sub_23A7EC228()
{
  v1 = v0[3];
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v2 = v0[2];
  swift_getKeyPath();
  v0[2] = v2;
  v0[9] = sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v3 = *(v2 + 40);

  swift_getKeyPath();
  v0[2] = v3;
  v0[10] = sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
  sub_23A7EE014();

  v4 = *(v3 + 16);
  v0[11] = v4;
  v0[12] = *(v3 + 24);
  sub_23A7A3D7C(v4);

  if (v4)
  {
    v5 = v0[4];
    v0[13] = sub_23A7EEA24();
    v7 = sub_23A7EE9E4();

    return MEMORY[0x2822009F8](sub_23A7EC530, v7, v6);
  }

  else
  {
    v8 = v0[5];

    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[3];
    sub_23A7EE724();
    v13 = v0[2];
    swift_getKeyPath();
    v0[2] = v13;
    sub_23A7EE014();

    v14 = *(v13 + 40);

    swift_getKeyPath();
    v15 = swift_task_alloc();
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = v14;
    v0[2] = v14;
    sub_23A7EE004();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_23A7EC530()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = *__swift_project_boxed_opaque_existential_0((v2 + 24), *(v2 + 48));
  sub_23A7EEB84();
  [*(v2 + 64) invalidate];
  v5 = *(v2 + 64);
  *(v2 + 64) = 0;

  v6 = v0[6];
  v7 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7EC5E0, v6, v7);
}

uint64_t sub_23A7EC5E0()
{
  v1 = v0[5];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[3];
  sub_23A7EE724();
  v6 = v0[2];
  swift_getKeyPath();
  v0[2] = v6;
  sub_23A7EE014();

  v7 = *(v6 + 40);

  swift_getKeyPath();
  v8 = swift_task_alloc();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v7;
  v0[2] = v7;
  sub_23A7EE004();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A7EC77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v4 = v14;
  swift_getKeyPath();
  v14 = v4;
  sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel);
  sub_23A7EE014();

  v5 = *(v4 + 40);

  swift_getKeyPath();
  v14 = v5;
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel);
  sub_23A7EE014();

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_23A7A3D7C(v6);

  if (v6)
  {
    v8 = sub_23A7EEA64();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_23A7EEA34();

    v9 = sub_23A7EEA24();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v6;
    v10[5] = v7;
    sub_23A7B9D94(0, 0, v3, &unk_23A7FF328, v10);
  }

  else
  {
    result = sub_23A7EED64();
    __break(1u);
  }

  return result;
}

uint64_t sub_23A7ECA30()
{
  v0[2] = sub_23A7EEA34();
  v0[3] = sub_23A7EEA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23A7ECAF4;

  return sub_23A7E9E84();
}

uint64_t sub_23A7ECAF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = sub_23A7EE9E4();
    v11 = v10;
    v12 = sub_23A7ECF2C;
    v13 = v9;
    v14 = v11;
  }

  else
  {
    v4[6] = a1;
    v12 = sub_23A7ECC44;
    v13 = 0;
    v14 = 0;
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23A7ECC44()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_23A7ECD2C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0x29286873617263, 0xE700000000000000, sub_23A7ED634, v2, v5);
}

uint64_t sub_23A7ECD2C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23A7ECE44, 0, 0);
}

uint64_t sub_23A7ECE44()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  swift_unknownObjectRelease();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7ECEC8, v5, v4);
}

uint64_t sub_23A7ECEC8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7ECF2C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_23A7ECFD0@<X0>(uint64_t a1@<X8>)
{
  sub_23A7EE534();
  sub_23A7EE6D4();
  v2 = sub_23A7EE624();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA288, &qword_23A7FF280) + 36);
  *v3 = v2;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA270, &qword_23A7FF278) + 36);
  sub_23A7EE774();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2A8, &qword_23A7FF290);
  v6 = *(v5 + 52);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_23A7EE544();
  result = (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  return result;
}

uint64_t sub_23A7ED0E8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23A7EE554();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA240, &qword_23A7FF248);
  return sub_23A7EAF14(v1, a1 + *(v3 + 44));
}

uint64_t sub_23A7ED13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLHostDebugView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A7ED1B8()
{
  result = qword_27DFAA278;
  if (!qword_27DFAA278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAA270, &qword_23A7FF278);
    sub_23A7ED270();
    sub_23A7AA790(&qword_27DFAA2A0, &qword_27DFAA2A8, &qword_23A7FF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA278);
  }

  return result;
}

unint64_t sub_23A7ED270()
{
  result = qword_27DFAA280;
  if (!qword_27DFAA280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAA288, &qword_23A7FF280);
    sub_23A7AA790(&qword_27DFAA290, &qword_27DFAA298, &qword_23A7FF288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA280);
  }

  return result;
}

uint64_t sub_23A7ED328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A7ED388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA268, &qword_23A7FF270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for QLHostDebugView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7ED500(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QLHostDebugView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23A7ED574()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A7A3240;

  return sub_23A7ECA30();
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A7ED670()
{
  result = qword_27DFAA2C8;
  if (!qword_27DFAA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA2C8);
  }

  return result;
}

uint64_t sub_23A7ED6C4(uint64_t a1)
{
  v4 = *(type metadata accessor for QLHostDebugView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3240;

  return sub_23A7EC18C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(type metadata accessor for QLHostDebugView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7ED894(uint64_t a1)
{
  v4 = *(type metadata accessor for QLHostDebugView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7EBC50(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_41Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

double gotLoadHelper_x8__DDDetectionControllerDidDismissActionNotification(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsUI))
  {
    return dlopenHelper_DataDetectorsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__DDDetectionControllerWillPresentActionNotification(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsUI))
  {
    return dlopenHelper_DataDetectorsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFImageMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PHAssetCreationRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    return dlopenHelper_Photos(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PHLivePhoto(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    return dlopenHelper_Photos(result);
  }

  return result;
}

void gotLoadHelper_x24__OBJC_CLASS___PHLivePhoto(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    dlopenHelper_Photos(a1);
  }
}

void gotLoadHelper_x23__OBJC_CLASS___PHLivePhotoView(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUI))
  {
    dlopenHelper_PhotosUI(a1);
  }
}

void gotLoadHelper_x20__OBJC_CLASS___PHPhotoLibrary(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    dlopenHelper_Photos(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___PHPlaceholderView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUFilmstripView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUTouchingGestureRecognizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUUISaveToCameraRollActivity(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUVideoComplementItemSource(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PXSimpleVideoScrubberControllerTarget(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUICore))
  {
    return dlopenHelper_PhotosUICore(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PXVideoScrubberController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUICore))
  {
    return dlopenHelper_PhotosUICore(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___STBlockingViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ScreenTimeUI))
  {
    return dlopenHelper_ScreenTimeUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___TUDialRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_TelephonyUtilities))
  {
    return dlopenHelper_TelephonyUtilities(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Photos(double a1)
{
  dlopen("/System/Library/Frameworks/Photos.framework/Photos", 0);
  atomic_store(1u, &dlopenHelperFlag_Photos);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PhotosUI(double a1)
{
  dlopen("/System/Library/Frameworks/PhotosUI.framework/PhotosUI", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DataDetectorsUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI", 0);
  atomic_store(1u, &dlopenHelperFlag_DataDetectorsUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PhotosFormats(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosFormats.framework/PhotosFormats", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosFormats);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PhotosUICore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosUICore.framework/PhotosUICore", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUICore);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PhotosUIPrivate(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUIPrivate);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_ScreenTimeUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ScreenTimeUI.framework/ScreenTimeUI", 0);
  atomic_store(1u, &dlopenHelperFlag_ScreenTimeUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_TelephonyUtilities(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 0);
  atomic_store(1u, &dlopenHelperFlag_TelephonyUtilities);
  return a1;
}
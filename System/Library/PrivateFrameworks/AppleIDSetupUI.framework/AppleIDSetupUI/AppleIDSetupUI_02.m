uint64_t sub_240939FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24093A034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24093A09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24093A1B0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(type metadata accessor for DiscoveryView() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_240934F38(a1);
}

uint64_t sub_24093A224@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiscoveryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_240935224(v4, a1);
}

uint64_t sub_24093A2A0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_24093A2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for DiscoveryView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24093A3B8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4(Strong, a1);
}

void sub_24093A420(void *a1)
{
  v2 = *(*(type metadata accessor for DiscoveryView() - 8) + 80);

  sub_240936140(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for DiscoveryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940) + 32);
  v9 = sub_240A2A10C();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v0 + v3 + v1[5];
  v11 = *(v10 + 8);

  v12 = *(v10 + 16);

  v13 = (v0 + v3 + v1[8]);
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v17 = sub_240A2976C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v13[v16], 6, v17))
  {
    (*(v18 + 8))(&v13[v16], v17);
  }

  v19 = v5 + v1[9];
  v20 = sub_240A2975C();
  (*(*(v20 - 8) + 8))(v19, v20);
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0) + 28));

  v22 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_240A29DBC();
    (*(*(v23 - 8) + 8))(v5 + v22, v23);
  }

  else
  {
    v24 = *(v5 + v22);
  }

  v25 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = sub_240A29DBC();
    (*(*(v26 - 8) + 8))(v5 + v25, v26);
  }

  else
  {
    v27 = *(v5 + v25);
  }

  sub_24090C1E4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_24090C1E4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24093A7C4()
{
  v0 = *(*(type metadata accessor for DiscoveryView() - 8) + 80);

  return sub_240935A2C();
}

uint64_t sub_24093A824(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24093A86C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_24093A8FC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24093A95C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24093A9A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *RepairCardViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a1;
  v56 = a2;
  v7 = sub_240A29A9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v11 = *(*(v53 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v53, v12);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v51 - v21;
  v23 = type metadata accessor for RepairView();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController] = 0;
  v29 = type metadata accessor for RepairCardViewController();
  v61.receiver = v4;
  v61.super_class = v29;
  v30 = objc_msgSendSuper2(&v61, sel_initWithContentView_, 0);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = a3;
  v32[4] = a4;
  sub_240A2A27C();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v33 = v30;

  sub_240A2C32C();
  v34 = sub_240A2B01C();
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  v35 = sub_240A2A25C();
  v36 = v24[10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
  sub_240919298(v17, v52, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_24093B450(v17);
  v38 = v28 + v24[11];
  v57 = 0;
  v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v39 = v60;
  *v38 = v59;
  *(v38 + 2) = v39;
  v40 = v24[12];
  *(v28 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v57 = sub_240A29CDC();
  sub_240A2BC4C();

  v44 = *(&v59 + 1);
  v28[5] = v59;
  v28[6] = v44;
  v45 = v56;
  *v28 = v55;
  v28[1] = v45;
  v28[2] = sub_24093B444;
  v28[3] = v32;
  v28[4] = v35;
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C080, qword_240A31FB0));
  v47 = sub_240A2B5EC();

  v48 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v49 = *&v33[v48];
  *&v33[v48] = v47;

  return v33;
}

void sub_24093AF64(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v26 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_240A2C24C();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    sub_240919298(a1, v12, &qword_27E50C088, &unk_240A32000);
    sub_240A2C21C();
    v21 = v19;

    v22 = sub_240A2C20C();
    v23 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v22;
    v24[3] = v25;
    v24[4] = v21;
    v24[5] = a3;
    v24[6] = a4;
    sub_24093BCB8(v12, v24 + v23);
    sub_2409230D4(0, 0, v17, &unk_240A32018, v24);
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_24093B1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v7[12] = v8;
  v7[13] = *(v8 + 64);
  v7[14] = swift_task_alloc();
  sub_240A2C21C();
  v7[15] = sub_240A2C20C();
  v10 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24093B2AC, v10, v9);
}

uint64_t sub_24093B2AC()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];

  sub_240919298(v6, v2, &qword_27E50C088, &unk_240A32000);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  sub_24093BCB8(v2, v10 + v9);
  v0[6] = sub_24093BE40;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_5;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v7 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24093B450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24093B4B8()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v65.receiver = v0;
  v65.super_class = type metadata accessor for RepairCardViewController();
  objc_msgSendSuper2(&v65, sel_viewDidLoad);
  v5 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (!v6)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = v6;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v8 = *&v0[v5];
  if (!v8)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v8;
  v10 = sub_240A2B3BC();
  v12 = sub_240A2B5BC();
  if ((*v11 & v10) != 0)
  {
    *v11 &= ~v10;
  }

  v12(v64, 0);

  v13 = *&v1[v5];
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = [v13 view];
  if (!v14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  v16 = *&v1[v5];
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v16 willMoveToParentViewController_];
  if (!*&v1[v5])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = *&v1[v5];
  if (!v19)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = v20;
  [v18 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_240A318E0;
  v25 = *&v1[v5];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v23 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 32) = v30;
  v31 = *&v1[v5];
  if (!v31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v23 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 40) = v36;
  v37 = *&v1[v5];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v23 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v24 + 48) = v42;
  v43 = *&v1[v5];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = [v43 view];
  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v23 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v24 + 56) = v48;
  v49 = *&v1[v5];
  if (!v49)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = [v49 view];
  if (!v50)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v51 = v50;
  v52 = [v50 centerXAnchor];

  v53 = [v23 centerXAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v24 + 64) = v54;
  v55 = *&v1[v5];
  if (!v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = [v55 view];
  if (!v56)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v57 = v56;
  v58 = objc_opt_self();
  v59 = [v57 centerYAnchor];

  v60 = [v23 centerYAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v24 + 72) = v61;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v62 = sub_240A2C15C();

  [v58 activateConstraints_];

  v63 = *&v1[v5];
  if (v63)
  {
    [v63 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

id RepairCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id RepairCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepairCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24093BCB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24093BD28(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240915E50;

  return sub_24093B1A4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24093BE40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24093BECC()
{
  v1[8] = v0;
  v2 = sub_240A2B00C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_240A2C21C();
  v1[13] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v1[14] = v6;
  v1[15] = v5;

  return MEMORY[0x2822009F8](sub_24093BFCC, v6, v5);
}

uint64_t sub_24093BFCC()
{
  v1 = *(*(v0[8] + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings) + 16);
  v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_240A2AB3C();
  if (v4 == sub_240A2AB3C())
  {
    v6 = v0[12];
    v5 = v0[13];

    sub_240A2AE9C();
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "AISFlowStepLocationSetup settings flow. Skipping...", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];

    (*(v12 + 8))(v10, v11);
    sub_2409F4D78();
LABEL_12:
    v33 = v0[11];
    v32 = v0[12];

    v34 = v0[1];

    return v34();
  }

  v14 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
    v23 = v0[13];
    v24 = v0[11];

    sub_240A2AE9C();
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C2BC();
    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "AISFlowStepLocationSetup delegate is nil! Skipping...", v31, 2u);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    goto LABEL_12;
  }

  v16 = *(v0[8] + 24);
  v17 = [objc_allocWithZone(sub_240A2983C()) init];
  v0[17] = v17;
  ObjectType = swift_getObjectType();
  v19 = *(v16 + 24);
  v35 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v0[18] = v21;
  *v21 = v0;
  v21[1] = sub_24093C338;

  return v35(v17, ObjectType, v16);
}

uint64_t sub_24093C338(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 160) = a1;

  v4 = *(v2 + 120);
  v5 = *(v2 + 112);

  return MEMORY[0x2822009F8](sub_24093C460, v5, v4);
}

uint64_t sub_24093C460()
{
  *(*(v0 + 64) + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled) = *(v0 + 160);
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_24093C518;
  v2 = *(v0 + 64);

  return sub_2409127E4();
}

uint64_t sub_24093C518()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24093C638, v4, v3);
}

uint64_t sub_24093C638()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];

  sub_240A2982C();

  swift_unknownObjectRelease();
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24093C6C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDA88];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_24093C798()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_childAuthResponse);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled);
  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings);
  v5 = objc_allocWithZone(sub_240A2983C());
  v6 = v1;
  v7 = v2;

  v8 = [v5 init];
  v9 = sub_240A2A12C();
  v10 = sub_240A2A11C();
  v11 = type metadata accessor for AISFlowStepChildAccountRepair();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = v6;
  v17[4] = MEMORY[0x277CED7C0];
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = v7;
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = v3;
  v17[3] = v9;
  v17[0] = v10;
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v4;
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v8;
  sub_240919A14(v17, v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v15 = (v14 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  *v15 = sub_24097B004;
  v15[1] = 0;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v18 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v17);
  *(v14 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v14;
}

uint64_t sub_24093C984()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings);

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask);

  return swift_unknownObjectRelease();
}

uint64_t sub_24093C9E4()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse);

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings);

  v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask);

  swift_unknownObjectRelease();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for AISFlowStepLocationSetup()
{
  result = qword_27E50C098;
  if (!qword_27E50C098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_UNKNOWN **sub_24093CBBC()
{
  result = sub_24093C798();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_24093CBE8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24093CC30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for DiscoveringRepairView()
{
  result = qword_27E50C0B0;
  if (!qword_27E50C0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24093CD5C()
{
  sub_24093CE9C();
  if (v0 <= 0x3F)
  {
    sub_24093CF00(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24093CF00(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24093CF64();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24093CE9C()
{
  if (!qword_27E50C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C0C8, &qword_240A32740);
    v0 = sub_240A2B1DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50C0C0);
    }
  }
}

void sub_24093CF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24093CF64()
{
  if (!qword_27E50C0D8)
  {
    v0 = sub_240A2BC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50C0D8);
    }
  }
}

uint64_t sub_24093CFD0()
{
  v0 = sub_240A2B73C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C190, &qword_240A32228);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - v22;
  sub_2409460C4(&v31 - v22);
  (*(v1 + 104))(v20, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v20, 0, 1, v0);
  v24 = *(v6 + 56);
  sub_240919298(v23, v10, &qword_27E50C0C8, &qword_240A32740);
  sub_240919298(v20, &v10[v24], &qword_27E50C0C8, &qword_240A32740);
  v25 = *(v1 + 48);
  if (v25(v10, 1, v0) != 1)
  {
    sub_240919298(v10, v16, &qword_27E50C0C8, &qword_240A32740);
    if (v25(&v10[v24], 1, v0) != 1)
    {
      v27 = &v10[v24];
      v28 = v32;
      (*(v1 + 32))(v32, v27, v0);
      sub_240940CB4(&qword_27E50C198, MEMORY[0x277CE0570]);
      v26 = sub_240A2BF0C();
      v29 = *(v1 + 8);
      v29(v28, v0);
      sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
      sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
      v29(v16, v0);
      sub_240919300(v10, &qword_27E50C0C8, &qword_240A32740);
      return v26 & 1;
    }

    sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
    sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
    (*(v1 + 8))(v16, v0);
    goto LABEL_6;
  }

  sub_240919300(v20, &qword_27E50C0C8, &qword_240A32740);
  sub_240919300(v23, &qword_27E50C0C8, &qword_240A32740);
  if (v25(&v10[v24], 1, v0) != 1)
  {
LABEL_6:
    sub_240919300(v10, &qword_27E50C190, &qword_240A32228);
    v26 = 0;
    return v26 & 1;
  }

  sub_240919300(v10, &qword_27E50C0C8, &qword_240A32740);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_24093D418()
{
  v1 = v0;
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_240A29EEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DiscoveringRepairView();
  v15 = *(v14 + 40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v16);
  sub_240A29E8C();
  (*(v9 + 8))(v13, v8);
  v17 = (*(v3 + 88))(v7, v2);
  if (v17 != *MEMORY[0x277CED6A0])
  {
    if (v17 == *MEMORY[0x277CED698] || v17 == *MEMORY[0x277CED6A8])
    {
      (*(v3 + 8))(v7, v2);
      return 1;
    }

    if (v17 != *MEMORY[0x277CED6B0])
    {
      if (v17 == *MEMORY[0x277CED6B8])
      {
        (*(v3 + 8))(v7, v2);
      }

      else if (v17 != *MEMORY[0x277CED690])
      {
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      v22 = (v1 + *(v14 + 44));
      v23 = *v22;
      v24 = *(v22 + 1);
      v25[16] = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
      sub_240A2BC5C();
      return v25[15];
    }
  }

  (*(v3 + 96))(v7, v2);
  v18 = *(v7 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v20 = sub_240A2A0DC();
  (*(*(v20 - 8) + 8))(&v7[v19], v20);
  return 1;
}

uint64_t sub_24093D768@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0E0, &qword_240A32150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0E8, &qword_240A32158);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0F0, &unk_240A32160);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v24 - v21;
  if (*(v1 + *(type metadata accessor for DiscoveringRepairView() + 24)))
  {
    sub_24093DB48(&v25);
    *v11 = v25;
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);

    sub_240A2B6EC();
    sub_240919298(v16, v6, &qword_27E50C0F0, &unk_240A32160);
    swift_storeEnumTagMultiPayload();
    sub_240940274();
    sub_240A2B6EC();

    return sub_240919300(v16, &qword_27E50C0F0, &unk_240A32160);
  }

  else
  {
    sub_240A2B22C();
    (*(v18 + 16))(v11, v22, v17);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    sub_240A2B6EC();
    sub_240919298(v16, v6, &qword_27E50C0F0, &unk_240A32160);
    swift_storeEnumTagMultiPayload();
    sub_240940274();
    sub_240A2B6EC();
    sub_240919300(v16, &qword_27E50C0F0, &unk_240A32160);
    return (*(v18 + 8))(v22, v17);
  }
}

uint64_t sub_24093DB48@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C100, &qword_240A32170);
  v1 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v2);
  v40 = (&v38 - v3);
  v4 = sub_240A29EFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A29EEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_240A2A0DC();
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v39, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v38 - v23;
  v25 = *(type metadata accessor for DiscoveringRepairView() + 40);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v26);
  sub_240A29E8C();
  (*(v11 + 8))(v15, v10);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277CED6A0])
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    v35 = sub_240A2B55C();
    v36 = v40;
    *v40 = v35;
    v36[1] = 0;
    *(v36 + 16) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C108, &qword_240A32178);
    sub_24093DF9C(v43, v36 + *(v37 + 44));
    sub_24091CE28(&qword_27E50C110, &qword_27E50C100, &qword_240A32170);
    result = sub_240A2BCDC();
    goto LABEL_7;
  }

  (*(v5 + 96))(v9, v4);
  v28 = *v9;
  v27 = *(v9 + 1);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180);
  v30 = v39;
  (*(v16 + 32))(v24, &v9[*(v29 + 48)], v39);
  *v21 = 4;
  (*(v16 + 104))(v21, *MEMORY[0x277CED780], v30);
  v31 = MEMORY[0x245CCAD90](v24, v21);
  v32 = *(v16 + 8);
  v32(v21, v30);
  if ((v31 & 1) == 0)
  {
    v32(v24, v30);

    goto LABEL_6;
  }

  v44 = v28;
  v45 = v27;
  sub_24094032C();
  v33 = sub_240A2BCDC();
  v32(v24, v30);
  result = v33;
LABEL_7:
  *v42 = result;
  return result;
}

uint64_t sub_24093DF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C128, &qword_240A32188);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C130, &qword_240A32190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C138, &qword_240A32198);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v66 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v66 - v24;
  if ((sub_24093D418() & 1) != 0 && (sub_24093CFD0() & 1) == 0)
  {
    v26 = sub_240A2B59C();
  }

  else
  {
    v26 = sub_240A2B58C();
  }

  *v7 = v26;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C140, &qword_240A321A0);
  sub_24093EBC8(a1, &v7[*(v27 + 44)]);
  v28 = sub_240A2B86C();
  sub_24093A86C(v7, v12, &qword_27E50C128, &qword_240A32188);
  v29 = &v12[*(v8 + 36)];
  *v29 = v28;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = sub_240A2B85C();
  sub_24093A86C(v12, v22, &qword_27E50C130, &qword_240A32190);
  v31 = &v22[*(v13 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  v32 = v25;
  sub_24093A86C(v22, v25, &qword_27E50C138, &qword_240A32198);
  v33 = sub_24093CFD0();
  v76 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if ((v33 & 1) == 0)
  {
    sub_24093E450(v87);
    v76 = v87[0];
    sub_240A2BDEC();
    sub_240A2B42C();
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    v39 = v96;
    v40 = v97;
    v41 = v98;
    v42 = v99;
    v43 = v100;
    v44 = v101;
    v45 = v102;
    v46 = v103;
    v47 = v104;
  }

  v67 = v39;
  v68 = v47;
  *&v77 = v43;
  *(&v77 + 1) = v44;
  *&v78 = v45;
  *(&v78 + 1) = v46;
  v48 = v32;
  v73 = v32;
  v74 = v18;
  v49 = v18;
  v50 = v18;
  v51 = v34;
  v69 = v34;
  v70 = v35;
  v52 = v38;
  v71 = v40;
  v72 = v41;
  v53 = v42;
  sub_240919298(v48, v50, &qword_27E50C138, &qword_240A32198);
  v54 = v49;
  v55 = v75;
  sub_240919298(v54, v75, &qword_27E50C138, &qword_240A32198);
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C148, &qword_240A321A8) + 48);
  v57 = v76;
  *&v79 = v76;
  *(&v79 + 1) = v51;
  *&v80 = v35;
  *(&v80 + 1) = v36;
  *&v81 = v37;
  *(&v81 + 1) = v52;
  v58 = v67;
  *&v82 = v67;
  *(&v82 + 1) = v40;
  *&v83 = v41;
  *(&v83 + 1) = v53;
  v84 = v77;
  v85 = v78;
  v59 = v68;
  v86 = v68;
  *(v56 + 112) = v68;
  v60 = v84;
  *(v56 + 64) = v83;
  *(v56 + 80) = v60;
  *(v56 + 96) = v85;
  v61 = v79;
  v62 = v80;
  v63 = v82;
  *(v56 + 32) = v81;
  *(v56 + 48) = v63;
  *v56 = v61;
  *(v56 + 16) = v62;
  v64 = v57;
  sub_240919298(&v79, v87, &qword_27E50C150, &unk_240A321B0);
  sub_240919300(v73, &qword_27E50C138, &qword_240A32198);
  v87[0] = v64;
  v87[1] = v69;
  v87[2] = v70;
  v87[3] = v36;
  v87[4] = v37;
  v87[5] = v52;
  v87[6] = v58;
  v87[7] = v71;
  v87[8] = v72;
  v87[9] = v53;
  v88 = v77;
  v89 = v78;
  v90 = v59;
  sub_240919300(v87, &qword_27E50C150, &unk_240A321B0);
  return sub_240919300(v74, &qword_27E50C138, &qword_240A32198);
}

uint64_t sub_24093E450@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v66 = &v58 - v5;
  v69 = type metadata accessor for PairingView();
  v6 = *(*(v69 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v69, v7);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v58 - v11;
  v13 = sub_240A2BBDC();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v17 = *(*(v64 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v64, v18);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v63 = &v58 - v22;
  v23 = sub_240A29EFC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_240A29EEC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DiscoveringRepairView();
  v35 = *(v65 + 40);
  v67 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E8C();
  (*(v30 + 8))(v34, v29);
  v36 = (*(v24 + 88))(v28, v23);
  if (v36 == *MEMORY[0x277CED6A0])
  {
    goto LABEL_2;
  }

  if (v36 == *MEMORY[0x277CED698] || v36 == *MEMORY[0x277CED6A8])
  {
    (*(v24 + 8))(v28, v23);
    goto LABEL_6;
  }

  if (v36 == *MEMORY[0x277CED6B0])
  {
LABEL_2:
    (*(v24 + 96))(v28, v23);
    v37 = *(v28 + 1);

    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v39 = sub_240A2A0DC();
    (*(*(v39 - 8) + 8))(&v28[v38], v39);
LABEL_6:
    v40 = v67;
    v41 = v66;
    sub_240A2BD1C();
    swift_getKeyPath();
    sub_240A2BD0C();

    sub_240919300(v41, &qword_27E50BE28, qword_240A320C0);
    v42 = *(v40 + *(v65 + 28));
    v43 = v69;
    v44 = *(v69 + 24);
    *&v12[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v12[*(v43 + 20)] = v42;
    sub_2409407A4(v12, v68, type metadata accessor for PairingView);
    sub_240940CB4(&qword_27E50C160, type metadata accessor for PairingView);
    v45 = sub_240A2BCDC();
    result = sub_240940380(v12);
LABEL_7:
    *v70 = v45;
    return result;
  }

  if (v36 == *MEMORY[0x277CED6B8])
  {
    (*(v24 + 8))(v28, v23);
LABEL_12:
    sub_240A2BBCC();
    v48 = v59;
    v47 = v60;
    v49 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x277CE0FE0], v61);
    v50 = sub_240A2BC1C();

    (*(v47 + 8))(v48, v49);
    v71 = v50;
    v72 = 0;
    v73 = 1;
    sub_240A2B8FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B830, &qword_240A31320);
    sub_2409208F0();
    v51 = v63;
    sub_240A2BA0C();

    v52 = sub_240A2B72C();
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C168, &qword_240A32218) + 36)) = v52;
    LOBYTE(v52) = sub_240A2B85C();
    sub_240A2B1AC();
    v53 = v51 + *(v64 + 36);
    *v53 = v52;
    *(v53 + 8) = v54;
    *(v53 + 16) = v55;
    *(v53 + 24) = v56;
    *(v53 + 32) = v57;
    *(v53 + 40) = 0;
    sub_240919298(v51, v62, &qword_27E50C158, &qword_240A38E90);
    sub_2409403DC();
    v45 = sub_240A2BCDC();
    result = sub_240919300(v51, &qword_27E50C158, &qword_240A38E90);
    goto LABEL_7;
  }

  if (v36 == *MEMORY[0x277CED690])
  {
    goto LABEL_12;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

id sub_24093EBC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v175 = a2;
  v171 = sub_240A2B3DC();
  v168 = *(v171 - 8);
  v3 = *(v168 + 64);
  MEMORY[0x28223BE20](v171, v4);
  v167 = v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1A0, &qword_240A32230);
  v170 = *(v172 - 8);
  v6 = *(v170 + 64);
  MEMORY[0x28223BE20](v172, v7);
  v169 = v149 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1A8, &qword_240A32238);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v174 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v173 = v149 - v15;
  v16 = sub_240A2B75C();
  v159 = *(v16 - 8);
  v160 = v16;
  v17 = *(v159 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v158 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DiscoveringRepairView();
  v151 = *(v20 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v177 = v23;
  v161 = v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v163 = *(v24 - 8);
  v164 = v24;
  v25 = *(v163 + 64);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v162 = v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v156 = v149 - v30;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B0, &unk_240A38F20);
  v155 = *(v157 - 8);
  v31 = *(v155 + 64);
  MEMORY[0x28223BE20](v157, v32);
  v152 = v149 - v33;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B8, &unk_240A32250);
  v34 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v35);
  v153 = v149 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C0, &qword_240A38F30);
  v38 = *(*(v37 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v37 - 8, v39);
  v166 = v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v182 = v149 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C8, &qword_240A32260);
  v45 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v44 - 8, v46);
  v165 = v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v179 = v149 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D0, &qword_240A32268);
  v52 = *(*(v51 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v51 - 8, v53);
  v180 = v149 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v183 = v149 - v57;
  if ((sub_24093D418() & 1) != 0 || (sub_24093CFD0() & 1) == 0)
  {
    v178 = 0;
  }

  else
  {
    sub_24093E450(v193);
    v178 = *&v193[0];
  }

  LODWORD(v150) = *(a1 + *(v20 + 36));
  *&v193[0] = sub_240A2C06C();
  *(&v193[0] + 1) = v58;
  v181 = sub_24091C4F8();
  v59 = sub_240A2B9CC();
  v184 = a1;
  v176 = v20;
  v61 = v60;
  v63 = v62;
  sub_240A2B8BC();
  v64 = sub_240A2B9AC();
  v66 = v65;
  v68 = v67;

  sub_240920658(v59, v61, v63 & 1);

  v69 = sub_240A2B99C();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_240920658(v64, v66, v68 & 1);

  v76 = sub_240A2B86C();
  v73 &= 1u;
  v195 = v73;
  v194 = 1;
  v77 = sub_240A2B70C();
  *&v190 = v69;
  *(&v190 + 1) = v71;
  LOBYTE(v191) = v73;
  *(&v191 + 1) = v75;
  LOBYTE(v192[0]) = v76;
  *(v192 + 8) = 0u;
  *(&v192[1] + 8) = 0u;
  BYTE8(v192[2]) = 1;
  HIDWORD(v192[2]) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D8, &qword_240A32270);
  sub_24094055C();
  sub_240A2BA6C();
  v193[2] = v192[0];
  v193[3] = v192[1];
  v193[4] = v192[2];
  v193[0] = v190;
  v193[1] = v191;
  sub_240919300(v193, &qword_27E50C1D8, &qword_240A32270);
  v78 = v184;
  sub_24093FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_240A305D0;
  v80 = [objc_opt_self() sharedInstance];
  v81 = (v78 + *(v176 + 32));
  v82 = *v81;
  v83 = v81[1];
  v84 = sub_240A2BF1C();
  v85 = [v80 authKitAccountWithAltDSID_];

  if (v85)
  {
    result = [v85 username];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v87 = result;
    v88 = sub_240A2BF4C();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
  }

  v91 = "IR_VIEW_BUTTON_UPDATE";
  v92 = 0xD000000000000026;
  v93 = v150;
  if (v150)
  {
    v92 = 0xD00000000000002DLL;
  }

  v176 = v92;
  if (v150)
  {
    v91 = "IR_VIEW_BUTTON_NOT_NOW";
  }

  v149[1] = v91;
  v94 = 0xD000000000000025;
  if (v150)
  {
    v94 = 0xD00000000000002BLL;
  }

  v149[0] = v94;
  v95 = "IR_VIEW_BUTTON_SIGN_IN_MANUAL";
  *(v79 + 56) = MEMORY[0x277D837D0];
  if (!v93)
  {
    v95 = "DESCRIPTION_REPAIR_TEXT";
  }

  v150 = v95;
  *(v79 + 64) = sub_240913AEC();
  *(v79 + 32) = v88;
  *(v79 + 40) = v90;
  v96 = sub_240A2BF6C();
  v98 = v97;

  *&v190 = v96;
  *(&v190 + 1) = v98;
  v99 = sub_240A2B9CC();
  v101 = v100;
  LOBYTE(v98) = v102;
  sub_240A2B96C();
  v103 = sub_240A2B9AC();
  v105 = v104;
  v107 = v106;

  sub_240920658(v99, v101, v98 & 1);

  LODWORD(v190) = sub_240A2B72C();
  v108 = sub_240A2B98C();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  sub_240920658(v103, v105, v107 & 1);

  v115 = v184;
  v116 = (sub_24093D418() & 1) == 0;
  KeyPath = swift_getKeyPath();
  if (sub_24093D418())
  {
    v118 = 12.0;
  }

  else
  {
    v118 = 0.0;
  }

  v119 = swift_getKeyPath();
  v189 = v112 & 1;
  *&v185 = v108;
  *(&v185 + 1) = v110;
  LOBYTE(v186) = v112 & 1;
  *(&v186 + 1) = v114;
  *&v187 = KeyPath;
  BYTE8(v187) = v116;
  *&v188 = v119;
  *(&v188 + 1) = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F8, &unk_240A38FD0);
  sub_2409406EC();
  sub_240A2BA6C();
  v190 = v185;
  v191 = v186;
  v192[0] = v187;
  v192[1] = v188;
  sub_240919300(&v190, &qword_27E50C1F8, &unk_240A38FD0);
  *&v185 = sub_240A2C06C();
  *(&v185 + 1) = v120;
  v150 = type metadata accessor for DiscoveringRepairView;
  v121 = v161;
  sub_2409407A4(v115, v161, type metadata accessor for DiscoveringRepairView);
  v122 = (*(v151 + 80) + 16) & ~*(v151 + 80);
  v123 = swift_allocObject();
  sub_24094080C(v121, v123 + v122);
  v124 = v156;
  sub_240A2BCCC();
  v125 = v158;
  sub_240A2B74C();
  v151 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
  sub_240940CB4(&qword_27E50C228, MEMORY[0x277CDE400]);
  v126 = v152;
  v127 = v164;
  v128 = v160;
  sub_240A2BA1C();
  (*(v159 + 8))(v125, v128);
  v163 = *(v163 + 8);
  (v163)(v124, v127);
  v129 = sub_240A2B86C();
  v130 = v153;
  (*(v155 + 32))(v153, v126, v157);
  v131 = v130 + *(v154 + 36);
  *v131 = v129;
  *(v131 + 8) = 0u;
  *(v131 + 24) = 0u;
  *(v131 + 40) = 1;
  sub_240940888();
  sub_240A2BA6C();
  sub_240919300(v130, &qword_27E50C1B8, &unk_240A32250);
  *&v185 = sub_240A2C06C();
  *(&v185 + 1) = v132;
  sub_2409407A4(v184, v121, v150);
  v133 = swift_allocObject();
  sub_24094080C(v121, v133 + v122);
  v134 = v162;
  sub_240A2BCCC();
  v135 = v167;
  sub_240A2B3CC();
  v136 = sub_240940CB4(&qword_27E50C238, MEMORY[0x277CDDB18]);
  v137 = v169;
  v138 = v171;
  v139 = v151;
  sub_240A2BA1C();
  (*(v168 + 8))(v135, v138);
  (v163)(v134, v127);
  *&v185 = v127;
  *(&v185 + 1) = v138;
  *&v186 = v139;
  *(&v186 + 1) = v136;
  swift_getOpaqueTypeConformance2();
  v140 = v172;
  v141 = v173;
  sub_240A2BA6C();
  (*(v170 + 8))(v137, v140);
  v142 = v180;
  sub_240919298(v183, v180, &qword_27E50C1D0, &qword_240A32268);
  v143 = v179;
  v144 = v165;
  sub_240919298(v179, v165, &qword_27E50C1C8, &qword_240A32260);
  v145 = v166;
  sub_240919298(v182, v166, &qword_27E50C1C0, &qword_240A38F30);
  v146 = v174;
  sub_240919298(v141, v174, &qword_27E50C1A8, &qword_240A32238);
  v147 = v175;
  *v175 = v178;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C240, &qword_240A32300);
  sub_240919298(v142, v147 + v148[12], &qword_27E50C1D0, &qword_240A32268);
  sub_240919298(v144, v147 + v148[16], &qword_27E50C1C8, &qword_240A32260);
  sub_240919298(v145, v147 + v148[20], &qword_27E50C1C0, &qword_240A38F30);
  sub_240919298(v146, v147 + v148[24], &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v141, &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v182, &qword_27E50C1C0, &qword_240A38F30);
  sub_240919300(v143, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v183, &qword_27E50C1D0, &qword_240A32268);
  sub_240919300(v146, &qword_27E50C1A8, &qword_240A32238);
  sub_240919300(v145, &qword_27E50C1C0, &qword_240A38F30);
  sub_240919300(v144, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v180, &qword_27E50C1D0, &qword_240A32268);
}

uint64_t sub_24093FC78()
{
  v1 = sub_240A29DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiscoveringRepairView();
  v8 = *(v0 + *(v7 + 36));
  v9 = v0 + *(v7 + 20);
  sub_240945D78(v6);
  sub_240A2C05C();
  (*(v2 + 8))(v6, v1);
  v10 = sub_240A2C06C();

  return v10;
}

uint64_t sub_24093FDC0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DiscoveringRepairView() + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_24093FE3C()
{
  sub_240A2BE1C();
  sub_240A2B2DC();
}

uint64_t sub_24093FE9C()
{
  v1 = v0;
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_240A29EEC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = sub_240A2B00C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - v19;
  v21 = type metadata accessor for DiscoveringRepairView();
  if (*(v1 + *(v21 + 36)) == 1)
  {
    sub_240A2AE7C();
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v22, v23, "Sign in Manually tapped", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    (*(v12 + 8))(v20, v11);
    v25 = *(v21 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    MEMORY[0x245CCC9B0]();
    sub_240A29EBC();
  }

  else
  {
    v36 = v2;
    sub_240A2AE7C();
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C29C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = v1;
      v29 = v28;
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v26, v27, "Not now tapped, cancelling", v28, 2u);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
    v30 = swift_allocBox();
    v31 = v36;
    (*(v3 + 56))(v32, 1, 1, v36);
    *v7 = v30;
    (*(v3 + 104))(v7, *MEMORY[0x277CED6B8], v31);
    v33 = *(v21 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    MEMORY[0x245CCC9B0]();
    sub_240A29E9C();
  }

  return sub_240A2BCFC();
}

unint64_t sub_240940274()
{
  result = qword_27E50C0F8;
  if (!qword_27E50C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C0F0, &unk_240A32160);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C0F8);
  }

  return result;
}

unint64_t sub_24094032C()
{
  result = qword_27E50C120;
  if (!qword_27E50C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C120);
  }

  return result;
}

uint64_t sub_240940380(uint64_t a1)
{
  v2 = type metadata accessor for PairingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2409403DC()
{
  result = qword_27E50C170;
  if (!qword_27E50C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C158, &qword_240A38E90);
    sub_240940468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C170);
  }

  return result;
}

unint64_t sub_240940468()
{
  result = qword_27E50C178;
  if (!qword_27E50C178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C168, &qword_240A32218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B830, &qword_240A31320);
    sub_2409208F0();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50C180, &qword_27E50C188, &qword_240A32220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C178);
  }

  return result;
}

unint64_t sub_24094055C()
{
  result = qword_27E50C1E0;
  if (!qword_27E50C1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1D8, &qword_240A32270);
    sub_240940614();
    sub_24091CE28(&qword_27E50C180, &qword_27E50C188, &qword_240A32220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C1E0);
  }

  return result;
}

unint64_t sub_240940614()
{
  result = qword_27E50C1E8;
  if (!qword_27E50C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1F0, &unk_240A32278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C1E8);
  }

  return result;
}

uint64_t sub_240940698@<X0>(void *a1@<X8>)
{
  result = sub_240A2B45C();
  *a1 = v3;
  return result;
}

unint64_t sub_2409406EC()
{
  result = qword_27E50C200;
  if (!qword_27E50C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1F8, &unk_240A38FD0);
    sub_2409206F4();
    sub_24091CE28(&qword_27E50C208, &qword_27E50C210, &unk_240A322F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C200);
  }

  return result;
}

uint64_t sub_2409407A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24094080C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringRepairView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240940888()
{
  result = qword_27E50C230;
  if (!qword_27E50C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C1B8, &unk_240A32250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D8A0, &unk_240A32240);
    sub_240A2B75C();
    sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240);
    sub_240940CB4(&qword_27E50C228, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C230);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DiscoveringRepairView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B73C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A29DBC();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  else
  {
    v11 = *&v5[v9];
  }

  v12 = *&v5[v1[8] + 8];

  v13 = &v5[v1[10]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v17 = sub_240A29EEC();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
  v18 = *&v5[v1[11] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240940CB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_240940D44()
{
  result = qword_27E50C258;
  if (!qword_27E50C258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C260, &qword_240A32318);
    sub_240940274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C258);
  }

  return result;
}

id AISShieldViewController.init(with:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithShieldFlowContext_];

  return v2;
}

id AISShieldViewController.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  *&v1[OBJC_IVAR___AISShieldViewController_context] = a1;
  v5.receiver = v1;
  v5.super_class = AISShieldViewController;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id AISShieldViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void AISShieldViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___AISShieldViewController_protoAccountNavController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ProtoAccountNavigationController()) init];
  sub_240A2C58C();
  __break(1u);
}

Swift::Void __swiftcall AISShieldViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v38 - v7;
  v9 = sub_240A2B00C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - v17;
  v38.receiver = v2;
  v38.super_class = AISShieldViewController;
  objc_msgSendSuper2(&v38, sel_viewWillAppear_, a1);
  v19 = [v2 context];
  v20 = [v19 skipSetupWithGuardian];

  if (v20 && (v21 = [v2 context], v22 = objc_msgSend(v21, sel_skipConnectToFamily), v21, v22))
  {
    sub_240A2AE9C();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "Jumping to notify parent", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    v26 = *(v10 + 8);
    v26(v18, v9);
    v27 = [v2 navigationController];
    if (v27)
    {
      v28 = v27;
      v29 = sub_240A2C24C();
      (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
      sub_240A2C21C();
      v30 = v28;
      v31 = v2;
      v32 = sub_240A2C20C();
      v33 = swift_allocObject();
      v34 = MEMORY[0x277D85700];
      v33[2] = v32;
      v33[3] = v34;
      v33[4] = v30;
      v33[5] = v31;
      sub_2409230D4(0, 0, v8, &unk_240A32338, v33);
    }

    else
    {
      sub_240A2AE9C();
      v35 = sub_240A2AFFC();
      v36 = sub_240A2C2AC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2408FE000, v35, v36, "We dont have a navigation controller", v37, 2u);
        MEMORY[0x245CCDDB0](v37, -1, -1);
      }

      v26(v15, v9);
    }
  }

  else
  {
    [v2 setupViewController];
  }
}

uint64_t sub_240941548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_240A2C21C();
  v5[4] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2409415E0, v7, v6);
}

uint64_t sub_2409415E0()
{
  v1 = v0[3];
  v0[7] = type metadata accessor for ShieldSetup();
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = v1;

  return MEMORY[0x2822009F8](sub_240941674, 0, 0);
}

uint64_t sub_240941674()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_240941750;
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[2];

  return sub_240A02C98(v1, v5, sub_240942358, v3);
}

uint64_t sub_240941750()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24094184C, 0, 0);
}

uint64_t sub_24094184C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_2409418B8, v2, v3);
}

uint64_t sub_2409418B8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_240941918(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C2CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "Calling delegate setup finished with setupLater error ", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v13 = [a3 delegate];
  if (v13)
  {
    v14 = v13;
    if ([v13 respondsToSelector_])
    {
      sub_240915CF8();
      v15 = swift_allocError();
      *v16 = xmmword_240A32320;
      v17 = sub_240A2952C();
      [v14 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v17];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  v18 = [a3 delegate];
  if (v18)
  {
    v19 = v18;
    sub_240915CF8();
    v20 = swift_allocError();
    *v21 = xmmword_240A32320;
    v22 = sub_240A2952C();

    [v19 shieldSetupDidFinishWithResult:0 error:v22];
    swift_unknownObjectRelease();
  }
}

void sub_240941BCC()
{
  v1 = v0;
  v2 = [v0 protoAccountNavController];
  v3 = [v1 navigationController];
  v4 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController];
  *&v2[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController] = v3;

  [v1 protoAccountNavController];
  [v1 context];
  v5 = [v1 delegate];
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C288, qword_240A32340));
  v7 = sub_240A2B5EC();
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_240A318E0;
  v13 = [v9 topAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  *(v12 + 32) = v17;
  v18 = [v9 leadingAnchor];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v12 + 40) = v22;
  v23 = [v9 trailingAnchor];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v24 trailingAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v12 + 48) = v27;
  v28 = [v9 bottomAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v12 + 56) = v32;
  v33 = [v9 centerXAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 centerXAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v12 + 64) = v37;
  v38 = [v9 centerYAnchor];
  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 centerYAnchor];

    v43 = [v38 constraintEqualToAnchor_];
    *(v12 + 72) = v43;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v44 = sub_240A2C15C();

    [v41 activateConstraints_];

    [v7 didMoveToParentViewController_];
    return;
  }

LABEL_17:
  __break(1u);
}

id AISShieldViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_240942284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240941548(a1, v4, v5, v7, v6);
}

uint64_t AISFlowStepSilentChildSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepSilentChildSignIn.stepLoadTask.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t AISFlowStepSilentChildSignIn.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id sub_240942524()
{
  v1 = v0;
  v70 = sub_240A2B00C();
  v2 = *(v70 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v70, v4);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v68 = &v66 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v66 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v66 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  [v20 setServiceType_];
  [v20 setAuthenticationType_];
  [v20 setAppProvidedContext_];
  v21 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember);
  v22 = [v21 altDSID];
  [v20 setAltDSID_];

  v23 = [v21 appleID];
  [v20 setUsername_];

  [v20 setIsUsernameEditable_];
  sub_240A2AE9C();
  v24 = v20;
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C29C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_2408FE000, v25, v26, "Attaching U13/teen proto account context to context: %@", v27, 0xCu);
    sub_240915C68(v28);
    MEMORY[0x245CCDDB0](v28, -1, -1);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

  v69 = *(v2 + 8);
  v69(v19, v70);
  v30 = [v21 contact];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 givenName];

    sub_240A2BF4C();
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = [v21 lastName];
  if (v35)
  {
    v36 = v35;
    sub_240A2BF4C();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) + 16);
  v40 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v41 = *(v39 + v40);
  if (v34)
  {
    v42 = sub_240A2BF1C();

    if (v38)
    {
LABEL_11:
      v43 = sub_240A2BF1C();

      goto LABEL_14;
    }
  }

  else
  {
    v42 = 0;
    if (v38)
    {
      goto LABEL_11;
    }
  }

  v43 = 0;
LABEL_14:
  v44 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:v42 lastName:v43 ageRange:v41];

  [v24 setProtoAccountContext_];
  v45 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse);
  sub_240A2AC0C();
  if (v46)
  {
    sub_240A2AE9C();
    v47 = sub_240A2AFFC();
    v48 = sub_240A2C29C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2408FE000, v47, v48, "AISFlowStepSilentChildSignIn: Setting serviceToken on silent auth context.", v49, 2u);
      MEMORY[0x245CCDDB0](v49, -1, -1);
    }

    v69(v16, v70);
    v50 = sub_240A2BF1C();

    [v24 setServiceToken_];
  }

  else
  {
    v51 = v66;
    sub_240A2AE9C();
    v52 = sub_240A2AFFC();
    v53 = sub_240A2C2AC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2408FE000, v52, v53, "AISFlowStepSilentChildSignIn: Missing psToken. Silent auth will fail.", v54, 2u);
      MEMORY[0x245CCDDB0](v54, -1, -1);
    }

    v69(v51, v70);
  }

  sub_240A2ABEC();
  if (v55)
  {
    v56 = v68;
    sub_240A2AE9C();
    v57 = sub_240A2AFFC();
    v58 = sub_240A2C29C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2408FE000, v57, v58, "AISFlowStepSilentChildSignIn: Setting sourceAltDSID on silent auth context.", v59, 2u);
      MEMORY[0x245CCDDB0](v59, -1, -1);
    }

    v69(v56, v70);
    v60 = sub_240A2BF1C();

    [v24 setSourceAltDSID_];
  }

  else
  {
    v61 = v67;
    sub_240A2AE9C();
    v62 = sub_240A2AFFC();
    v63 = sub_240A2C2AC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_2408FE000, v62, v63, "AISFlowStepSilentChildSignIn: Missing sourceAltDSID. Silent auth will fail.", v64, 2u);
      MEMORY[0x245CCDDB0](v64, -1, -1);
    }

    v69(v61, v70);
  }

  return v24;
}

uint64_t AISFlowStepSilentChildSignIn.continue(with:error:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v35 - v9;
  v11 = sub_240A2B00C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  [*(v3 + v17) complete];
  if (a2)
  {
    v18 = a2;
    sub_240A2AE9C();
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C2AC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = a1;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_2408FE000, v20, v21, "AISFlowStepSilentChildSignIn: Failed with error: %@", v23, 0xCu);
      sub_240915C68(v24);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      v27 = v23;
      a1 = v35;
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v16, v11);
  }

  v28 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = a1;
  v29 = a1;

  v30 = sub_240A2C24C();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  sub_240A2C21C();

  v31 = sub_240A2C20C();
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  v32[2] = v31;
  v32[3] = v33;
  v32[4] = v3;
  sub_2409230D4(0, 0, v10, &unk_240A32390, v32);
}

uint64_t sub_240942F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_240A2C21C();
  *(v4 + 24) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240943010, v6, v5);
}

uint64_t sub_240943010()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2409F4D84();
  v3 = v0[1];

  return v3();
}

uint64_t sub_240943074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240942F78(a1, v4, v5, v6);
}

uint64_t AISFlowStepSilentChildSignIn.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v36 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse);
  if (v12)
  {
    v13 = v12;
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "AISFlowStepSilentChildSignIn: Silent auth is successful. Starting AIDA sign-in step.", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    v17 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse);
    v18 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);
    v19 = type metadata accessor for AISFlowStepAIDASignIn();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v17;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v13;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v18;
    *(v22 + 24) = 0;
    swift_unknownObjectWeakInit();
    v37 = 0;
    v23 = v17;

    sub_240A2B0DC();
    result = v22;
    *(v22 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  }

  else
  {
    sub_240A2AE9C();
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C2AC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "AISFlowStepSilentChildSignIn: Silent auth failed. Starting interactive auth step.", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v28 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember);
    v29 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse);
    v30 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);
    v31 = type metadata accessor for AISFlowStepChildSignIn();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = v28;
    v35 = v29;

    return sub_240911894(v28, v35, v30);
  }

  return result;
}

uint64_t sub_240943458()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask);
  swift_unknownObjectRelease();

  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);
}

uint64_t AISFlowStepSilentChildSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask);
  swift_unknownObjectRelease();

  v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings);

  return v0;
}

uint64_t AISFlowStepSilentChildSignIn.__deallocating_deinit()
{
  AISFlowStepSilentChildSignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_UNKNOWN **sub_2409435F8()
{
  result = AISFlowStepSilentChildSignIn.nextStep()();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

uint64_t sub_240943624()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24094366C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void sub_240943724(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - v10;
  if (a2)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(v11, a1, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v7 + 32))(v14 + v13, v11, v6);
    aBlock[4] = sub_2409440BC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240976B34;
    aBlock[3] = &block_descriptor_6;
    v15 = _Block_copy(aBlock);

    [a2 authenticateWithContext:a3 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_240943914(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      sub_240A1E87C(a1);
      v4 = objc_allocWithZone(sub_240A2AC6C());
      v5 = sub_240A2ABDC();
      AISFlowStepSilentChildSignIn.continue(with:error:)(v5, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
      sub_240A2C1CC();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    AISFlowStepSilentChildSignIn.continue(with:error:)(0, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  return sub_240A2C1CC();
}

uint64_t sub_240943A44()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return sub_240943CFC();
}

uint64_t sub_240943AE8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_240943B48(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_240943BC0()
{
  result = qword_27E50C2B0;
  if (!qword_27E50C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2B0);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepSilentChildSignIn()
{
  result = qword_27E50C2B8;
  if (!qword_27E50C2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240943CFC()
{
  v1[2] = v0;
  v1[3] = sub_240A2C21C();
  v1[4] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_240943D98, v3, v2);
}

uint64_t sub_240943D98()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[7] = v3;
  v4 = sub_240942524();
  v0[8] = v4;
  v5 = sub_240A2C20C();
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v2;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_240943EDC;
  v9 = MEMORY[0x277D85700];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v5, v9, 0xD00000000000001ALL, 0x8000000240A3B960, sub_2409440B0, v6, v10);
}

uint64_t sub_240943EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24094403C, v6, v5);
}

uint64_t sub_24094403C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2409440BC(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_240943914(a1, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AISFlowStepParentSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepParentSignIn.privacyLinkIdentifiers.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t AISFlowStepParentSignIn.hideCreationAndForgotPasswordButton.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISFlowStepParentSignIn.hideCreationAndForgotPasswordButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISFlowStepParentSignIn.prepareForPresentation()()
{
  v1[8] = v0;
  v2 = sub_240A2B00C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_240A2C21C();
  v1[14] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240944450, v6, v5);
}

uint64_t sub_240944450()
{
  v1 = v0[14];
  v2 = v0[8];

  v3 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider + 24);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  LOBYTE(v4) = sub_240A2AD6C();
  (*(v5 + 8))(v7, v3);

  if (v4)
  {
    v8 = v0[13];
    sub_240A2AE9C();
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "AISFlowStepParentSignIn Fetching disablePSCreateAndForgetLink from AKURLBag", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[9];
    v15 = v0[10];
    v16 = v0[8];

    v17 = *(v15 + 8);
    v17(v12, v14);
    v18 = *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag + 24);
    v19 = __swift_project_boxed_opaque_existential_0((v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag), v18);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64) + 15;
    v22 = swift_task_alloc();
    (*(v20 + 16))(v22, v19, v18);
    v23 = sub_240A2A48C();
    (*(v20 + 8))(v22, v18);

    sub_240A2AE9C();
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C29C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      *(v26 + 4) = v23 & 1;
      _os_log_impl(&dword_2408FE000, v24, v25, "AISFlowStepParentSignIn disablePSCreateAndForgetLink %{BOOL}d", v26, 8u);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    v27 = v0[12];
    v28 = v0[9];
    v29 = v0[10];
    v30 = v0[8];

    v17(v27, v28);
    v31 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
    swift_beginAccess();
    *(v30 + v31) = v23 & 1;
  }

  else
  {
    v32 = v0[11];
    v33 = v0[8];
    sub_240A2AE9C();

    v34 = sub_240A2AFFC();
    v35 = sub_240A2C29C();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[8];
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      v39 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
      swift_beginAccess();
      *(v38 + 4) = *(v37 + v39);

      _os_log_impl(&dword_2408FE000, v34, v35, "AISFlowStepParentSignIn Internet connection is not availble using default hideCreationAndForgotPasswordButton: %{BOOL}d", v38, 8u);
      MEMORY[0x245CCDDB0](v38, -1, -1);
    }

    else
    {
      v40 = v0[8];
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  v42 = v0[12];
  v41 = v0[13];
  v43 = v0[11];

  v44 = v0[1];

  return v44();
}

void AISFlowStepParentSignIn.configure(context:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v54 - v6;
  v8 = sub_240A2B52C();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v54 - v15);
  v17 = sub_240A29DBC();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setServiceType_];
  [a1 setAuthenticationType_];
  [a1 setIsEphemeral_];
  sub_240A2C06C();
  v22 = sub_240A2BF1C();

  [a1 setTitle_];

  v59 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  if ((*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge + 8) & 1) == 0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge);
    if (__OFSUB__(v23, 1))
    {
      __break(1u);
      return;
    }

    v24 = v1;
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v26 = [v59 stringFromNumber_];

    if (v26)
    {
      v27 = sub_240A2BF4C();
      v29 = v28;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_240A305D0;
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_240913AEC();
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      sub_240A2BF6C();

      v31 = sub_240A2BF1C();
LABEL_11:

      [a1 setReason_];

      goto LABEL_12;
    }
  }

  v32 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v24 = v1;
  v33 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v32 + v33) == 2)
  {
    sub_240919298(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, v16, &qword_27E50C720, &unk_240A30CC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v57;
      v34 = v58;
      (*(v57 + 32))(v21, v16, v58);
    }

    else
    {
      v37 = *v16;
      sub_240A2C2BC();
      v38 = sub_240A2B84C();
      sub_240A2AFEC();

      v39 = v54;
      sub_240A2B51C();
      swift_getAtKeyPath();

      (*(v55 + 8))(v39, v56);
      v35 = v57;
      v34 = v58;
    }

    sub_240A2C00C();
    (*(v35 + 8))(v21, v34);
    v31 = sub_240A2BF1C();
    goto LABEL_11;
  }

  sub_240A2C06C();
  v36 = sub_240A2BF1C();

  [a1 setReason_];

LABEL_12:
  [a1 setAppProvidedContext_];
  v40 = *(*(v24 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v41 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240919298(v40 + v41, v7, &unk_27E50DCE0, &qword_240A32E20);
  v42 = sub_240A2962C();
  if ((*(*(v42 - 8) + 48))(v7, 1, v42) == 1)
  {

    sub_240919300(v7, &unk_27E50DCE0, &qword_240A32E20);
    return;
  }

  sub_240919300(v7, &unk_27E50DCE0, &qword_240A32E20);
  [a1 setAppProvidedContext_];
  v43 = [*(v24 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_accountManager) primaryAuthKitAccount];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 aa_firstName];
    if (v45)
    {
      v46 = v45;
      v47 = sub_240A2BF4C();
      v49 = v48;

      sub_240A2BFDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_240A32540;
      v51 = MEMORY[0x277D837D0];
      *(v50 + 56) = MEMORY[0x277D837D0];
      v52 = sub_240913AEC();
      *(v50 + 32) = v47;
      *(v50 + 40) = v49;
      *(v50 + 96) = v51;
      *(v50 + 104) = v52;
      *(v50 + 64) = v52;
      *(v50 + 72) = v47;
      *(v50 + 80) = v49;

      sub_240A2BF6C();

      v53 = sub_240A2BF1C();

      [a1 setReason_];

      return;
    }
  }
}

uint64_t AISFlowStepParentSignIn.continue(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240945128, v4, v3);
}

uint64_t sub_240945128()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = v2;

  v4 = v2;
  sub_2409464AC();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409451EC;
  v6 = v0[3];

  return sub_240912B34();
}

uint64_t sub_2409451EC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2409418B8, v4, v3);
}

uint64_t AISFlowStepParentSignIn.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAA8];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t AISFlowStepParentSignIn.nextStep()()
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v57 - v19;
  v21 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  if (v21)
  {
    v61 = v1;
    v58 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings);
    v59 = v2;
    v22 = *(v58 + 16);
    v23 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240919298(v22 + v23, v20, &unk_27E50DCE0, &qword_240A32E20);
    v24 = sub_240A2962C();
    LODWORD(v22) = (*(*(v24 - 8) + 48))(v20, 1, v24);
    v25 = v21;
    sub_240919300(v20, &unk_27E50DCE0, &qword_240A32E20);
    if (v22 == 1)
    {
      sub_240A2AE9C();
      v26 = sub_240A2AFFC();
      v27 = sub_240A2C2CC();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v59;
      if (v28)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2408FE000, v26, v27, "AISFlowStepParentSignIn: Authentication success. Starting family picker step.", v30, 2u);
        MEMORY[0x245CCDDB0](v30, -1, -1);
      }

      (*(v3 + 8))(v12, v29);
      v31 = objc_allocWithZone(sub_240A2983C());
      v32 = v58;

      v33 = [v31 init];
      v34 = type metadata accessor for AISFlowStepFamilyPicker();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      v37 = swift_allocObject();
      return sub_240946338(v25, v32, v33, v37);
    }

    else
    {
      sub_240A2AE9C();
      v42 = sub_240A2AFFC();
      v43 = sub_240A2C2CC();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v59;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_2408FE000, v42, v43, "AISFlowStepParentSignIn: Authentication success. Starting migration flow", v46, 2u);
        MEMORY[0x245CCDDB0](v46, -1, -1);
      }

      (*(v3 + 8))(v15, v45);
      v47 = type metadata accessor for RemoteUIPresenter();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_remoteUIPresenter] = 0;
      v49 = &v48[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler];
      *v49 = 0;
      *(v49 + 1) = 0;
      v50 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_authResults;
      v51 = v25;
      *&v48[v50] = sub_24092624C(MEMORY[0x277D84F90]);
      *&v48[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_guardianAuthResponse] = v51;
      v60.receiver = v48;
      v60.super_class = v47;
      v52 = objc_msgSendSuper2(&v60, sel_init);
      v53 = type metadata accessor for AISFlowStepChildMigration();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v56 = v58;

      return AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(v51, v56, v52);
    }
  }

  else
  {
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C2AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "AISFlowStepParentSignIn: Missing auth response.", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    sub_240946BB4();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2409458F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag));
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings);

  return sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, &unk_27E50BD30, &qword_240A32570);
}

uint64_t AISFlowStepParentSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag));
  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings);

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass, &unk_27E50BD30, &qword_240A32570);
  return v0;
}

uint64_t AISFlowStepParentSignIn.__deallocating_deinit()
{
  AISFlowStepParentSignIn.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_240945AE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240945B7C, v4, v3);
}

uint64_t sub_240945B7C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = v2;

  v4 = v2;
  sub_2409464AC();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409122A4;
  v6 = v0[3];

  return sub_240912B34();
}

uint64_t sub_240945C40()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) + 16);
  v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_240945C9C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240945CF8(void *a1)
{
  v3 = *v1;

  v4 = a1;
  sub_2409198E8(v3, v4);

  sub_240946E0C();
  return sub_240A2BCDC();
}

uint64_t sub_240945D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_240919298(v2, &v19 - v13, &qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_240A2C2BC();
    v18 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

void *sub_240945F78(void *a1, char a2)
{
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a1;
  }

  else
  {

    sub_240A2C2BC();
    v11 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24091C37C(a1, 0);
    (*(v5 + 8))(v9, v4);
    return v13[1];
  }

  return a1;
}

uint64_t sub_2409460C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B52C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v18 - v13);
  sub_240919298(v2, &v18 - v13, &qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_240946E60(v14, a1);
  }

  v16 = *v14;
  sub_240A2C2BC();
  v17 = sub_240A2B84C();
  sub_240A2AFEC();

  sub_240A2B51C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v4);
}

void *sub_240946294(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_240946308@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_240946338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17[-v12];
  v14 = a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v17[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v15, v13, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_2409464AC()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x28223BE20](v0, v3);
  v87 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v88 = &v85 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v85 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v85 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v85 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v85 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v85 - v26;
  sub_240A2ABAC();
  if (v28)
  {
  }

  else
  {
    sub_240A2AE9C();
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v86 = v16;
      v32 = v0;
      v33 = v12;
      v34 = v1;
      v35 = v31;
      *v31 = 0;
      _os_log_impl(&dword_2408FE000, v29, v30, "AISFlowStepParentSignIn.verifyResponse identityToken is nil!", v31, 2u);
      v36 = v35;
      v1 = v34;
      v12 = v33;
      v0 = v32;
      v16 = v86;
      MEMORY[0x245CCDDB0](v36, -1, -1);
    }

    (*(v1 + 8))(v27, v0);
  }

  sub_240A2AB9C();
  if (v37)
  {
  }

  else
  {
    sub_240A2AE9C();
    v38 = sub_240A2AFFC();
    v39 = sub_240A2C2AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v16;
      v41 = v0;
      v42 = v12;
      v43 = v1;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2408FE000, v38, v39, "AISFlowStepParentSignIn.verifyResponse familyGSToken is nil!", v44, 2u);
      v45 = v44;
      v1 = v43;
      v12 = v42;
      v0 = v41;
      v16 = v40;
      MEMORY[0x245CCDDB0](v45, -1, -1);
    }

    (*(v1 + 8))(v24, v0);
  }

  sub_240A2ABBC();
  if (v46)
  {
  }

  else
  {
    sub_240A2AE9C();
    v47 = sub_240A2AFFC();
    v48 = sub_240A2C2AC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v16;
      v50 = v0;
      v51 = v12;
      v52 = v1;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2408FE000, v47, v48, "AISFlowStepParentSignIn.verifyResponse familyRepairToken is nil!", v53, 2u);
      v54 = v53;
      v1 = v52;
      v12 = v51;
      v0 = v50;
      v16 = v49;
      MEMORY[0x245CCDDB0](v54, -1, -1);
    }

    (*(v1 + 8))(v20, v0);
  }

  sub_240A2AC4C();
  if (v55)
  {
  }

  else
  {
    sub_240A2AE9C();
    v56 = sub_240A2AFFC();
    v57 = sub_240A2C2AC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v16;
      v59 = v0;
      v60 = v12;
      v61 = v1;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2408FE000, v56, v57, "AISFlowStepParentSignIn.verifyResponse petToken is nil!", v62, 2u);
      v63 = v62;
      v1 = v61;
      v12 = v60;
      v0 = v59;
      MEMORY[0x245CCDDB0](v63, -1, -1);

      (*(v1 + 8))(v58, v59);
    }

    else
    {

      (*(v1 + 8))(v16, v0);
    }
  }

  sub_240A2ABEC();
  v64 = v88;
  if (v65)
  {
  }

  else
  {
    sub_240A2AE9C();
    v66 = sub_240A2AFFC();
    v67 = sub_240A2C2AC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v12;
      v69 = v1;
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2408FE000, v66, v67, "AISFlowStepParentSignIn.verifyResponse altDSID is nil!", v70, 2u);
      v71 = v70;
      v1 = v69;
      MEMORY[0x245CCDDB0](v71, -1, -1);

      (*(v69 + 8))(v68, v0);
    }

    else
    {

      (*(v1 + 8))(v12, v0);
    }
  }

  sub_240A2AC5C();
  if (v72)
  {
  }

  else
  {
    sub_240A2AE9C();
    v73 = sub_240A2AFFC();
    v74 = sub_240A2C2AC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = v1;
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2408FE000, v73, v74, "AISFlowStepParentSignIn.verifyResponse usernameKey is nil!", v76, 2u);
      v77 = v76;
      v1 = v75;
      MEMORY[0x245CCDDB0](v77, -1, -1);

      v78 = v75;
    }

    else
    {

      v78 = v1;
    }

    (*(v78 + 8))(v64, v0);
  }

  sub_240A2AC0C();
  if (v79)
  {
  }

  v81 = v87;
  sub_240A2AE9C();
  v82 = sub_240A2AFFC();
  v83 = sub_240A2C2AC();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_2408FE000, v82, v83, "AISFlowStepParentSignIn.verifyResponse psToken is nil!", v84, 2u);
    MEMORY[0x245CCDDB0](v84, -1, -1);
  }

  return (*(v1 + 8))(v81, v0);
}

unint64_t sub_240946BB4()
{
  result = qword_27E50C2F0;
  if (!qword_27E50C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2F0);
  }

  return result;
}

unint64_t sub_240946C0C()
{
  result = qword_27E50C2F8;
  if (!qword_27E50C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C2F8);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepParentSignIn()
{
  result = qword_27E50C300;
  if (!qword_27E50C300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240946CC4()
{
  sub_240946DB4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_240946DB4()
{
  if (!qword_27E50C310)
  {
    sub_240A29DBC();
    v0 = sub_240A2B1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50C310);
    }
  }
}

unint64_t sub_240946E0C()
{
  result = qword_27E50C318;
  if (!qword_27E50C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C318);
  }

  return result;
}

uint64_t sub_240946E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240946ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_240946F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240946F68()
{
  result = qword_27E50C320;
  if (!qword_27E50C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C320);
  }

  return result;
}

id sub_240946FBC()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "Making DustCloudView", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  v9 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  sub_240A2C01C();
  v10 = sub_240A2BF1C();

  [v9 setTitleText_];

  sub_240A2C01C();
  v11 = sub_240A2BF1C();

  [v9 setDetailedText_];

  [v9 setShowHeaderView_];
  v12 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];
  v13 = sub_240A2BF1C();
  [v12 setVerificationCode_];

  return v12;
}

id sub_240947218()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_240946FBC();
}

uint64_t sub_240947220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240947310();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240947284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240947310();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409472E8()
{
  sub_240947310();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_240947310()
{
  result = qword_27E50C328;
  if (!qword_27E50C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C328);
  }

  return result;
}

id ProtoAccountNavigationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_240947398(unint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController);
  if (result)
  {
    v4 = [result viewControllers];
    sub_2409476D4();
    v5 = sub_240A2C16C();

    v6 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v22 = *(a1 + 16);
    if (v22)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
LABEL_27:
        v8 = sub_240A2C59C();
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = a1 + 32;
      a1 = 0;
      v9 = v5 & 0xC000000000000001;
      v10 = &off_278CB1000;
      v11 = v22;
      do
      {
        if (a1 == v11)
        {
          goto LABEL_26;
        }

        v23 = a1;
        v25 = v6;
        if (v8)
        {
          v6 = 0;
          v24 = *(v21 + 8 * a1);
          while (1)
          {
            if (v9)
            {
              v13 = MEMORY[0x245CCD150](v6, v5);
            }

            else
            {
              if (v6 >= *(v7 + 16))
              {
                goto LABEL_25;
              }

              v13 = *(v5 + 8 * v6 + 32);
            }

            v14 = v13;
            v15 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if ([v13 v10[228]])
            {
              sub_240A2C4EC();
              a1 = v9;
              v16 = v8;
              v17 = v7;
              v18 = v5;
              v19 = v10;
              v20 = *(v25 + 16);
              sub_240A2C51C();
              v10 = v19;
              v5 = v18;
              v7 = v17;
              v8 = v16;
              v9 = a1;
              sub_240A2C52C();
              sub_240A2C4FC();
            }

            else
            {
            }

            ++v6;
            if (v15 == v8)
            {
              v12 = v25;
              v6 = MEMORY[0x277D84F90];
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v12 = v6;
LABEL_7:
        a1 = v23 + 1;
        sub_24095D914(v12);
        v11 = v22;
      }

      while (v23 + 1 != v22);

      return v26;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id ProtoAccountNavigationController.init()()
{
  *&v0[OBJC_IVAR____TtC14AppleIDSetupUI32ProtoAccountNavigationController_navigationController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtoAccountNavigationController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ProtoAccountNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProtoAccountNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2409476D4()
{
  result = qword_27E50C5E0;
  if (!qword_27E50C5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50C5E0);
  }

  return result;
}

uint64_t sub_240947720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240947794()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240947808()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_24094787C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v2 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

char *sub_240947948()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C420, &unk_240A342E0);
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v47 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C428, &qword_240A329A0);
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v45 = &v44 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C430, &unk_240A329A8);
  v13 = *(v44 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v44, v15);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C440, &unk_240A329B8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v44 - v28;
  v30 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner__string;
  v53 = 0;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_240A2B0DC();
  (*(v25 + 32))(&v0[v30], v29, v24);
  v31 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner___isRunning;
  LOBYTE(v53) = 0;
  sub_240A2B0DC();
  (*(v19 + 32))(&v0[v31], v23, v18);
  v32 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner___captureDevice;
  v53 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C3F8, &qword_240A328C8);
  sub_240A2B0DC();
  (*(v13 + 32))(&v0[v32], v17, v44);
  v33 = OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession;
  *&v0[v33] = [objc_allocWithZone(MEMORY[0x277CE5B38]) init];
  v55.receiver = v0;
  v55.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v55, sel_init);
  v35 = *&v34[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];
  swift_getKeyPath();
  v36 = v34;
  v37 = v35;
  v38 = v45;
  sub_240A2956C();

  swift_beginAccess();
  v39 = v47;
  sub_240A2B0EC();
  swift_endAccess();
  sub_240949284();
  v40 = v48;
  sub_240A2B16C();
  (*(v49 + 8))(v38, v40);
  v41 = v51;
  v42 = v52;
  (*(v51 + 16))(v50, v39, v52);
  swift_beginAccess();
  sub_240A2B0FC();
  swift_endAccess();

  (*(v41 + 8))(v39, v42);
  return v36;
}

id sub_240947EA0(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];
  [v3 beginConfiguration];
  v4 = objc_allocWithZone(MEMORY[0x277CE5AD8]);
  v20[0] = 0;
  v5 = a1;
  v6 = [v4 initWithDevice:v5 error:v20];
  if (v6)
  {
    v7 = v6;
    v8 = v20[0];

    [v3 addInput_];
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = v5;
    v9 = v5;
    v10 = v1;
    sub_240A2B12C();
    v11 = [objc_allocWithZone(MEMORY[0x277CE5B00]) init];
    sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
    v12 = sub_240A2C32C();
    [v11 setMetadataObjectsDelegate:v10 queue:v12];

    [v3 addOutput_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C458, &qword_240A32A38);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_240A305D0;
    v14 = *MEMORY[0x277CE5A80];
    *(v13 + 32) = *MEMORY[0x277CE5A80];
    type metadata accessor for ObjectType(0);
    v15 = v14;
    v16 = sub_240A2C15C();

    [v11 setMetadataObjectTypes_];
  }

  else
  {
    v17 = v20[0];
    sub_240A2953C();

    swift_willThrow();
  }

  result = [v3 commitConfiguration];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for QRCodeScanner()
{
  result = qword_27E50C3C8;
  if (!qword_27E50C3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240948318()
{
  sub_2409484A8(319, &qword_27E50C3D8, &unk_27E50C3E0, &unk_240A30960);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_240948458();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2409484A8(319, &qword_27E50C3F0, &qword_27E50C3F8, &qword_240A328C8);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_240948458()
{
  if (!qword_27E50CCA0)
  {
    v0 = sub_240A2B13C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50CCA0);
    }
  }
}

void sub_2409484A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2B13C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2409484FC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_240A2B0BC();
  *a1 = result;
  return result;
}

__n128 sub_24094853C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C460, &qword_240A32AD8);
  sub_240A2BC5C();
  v6 = *&v9[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession];

  *&v10 = a1;
  *(&v10 + 1) = a2;
  sub_240A2BC7C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C468, &qword_240A32B08);
  sub_240A2BD0C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C470, &qword_240A32B10);
  sub_240A2BC4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C478, &qword_240A32B18);
  sub_240A2BC4C();
  result = v8;
  *a3 = v6;
  *(a3 + 8) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v8;
  return result;
}

void *sub_2409486BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240948BF4();
  [v4 setSession_];

  v14 = *(v1 + 8);
  v15 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C488, &qword_240A32C60);
  result = MEMORY[0x245CCC9B0](&v17, v5);
  v7 = v17;
  if (v17)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CE5AE0]) initWithDevice:v17 previewLayer:*(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer)];
    v14 = *(v1 + 32);
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C490, qword_240A32C68);
    sub_240A2BC6C();
    v14 = *(v1 + 32);
    sub_240A2BC5C();
    v9 = v17;
    if (v17)
    {
      *&v14 = v17;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = sub_240A2955C();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v2 + 48);
    v16 = *(v2 + 56);
    v17 = v11;
    *&v14 = v11;
    *(&v14 + 1) = v16;
    v13[1] = v10;
    sub_240919298(&v17, v13, &qword_27E50C478, &qword_240A32B18);
    sub_240919298(&v16, v13, &qword_27E50C498, &qword_240A32CC8);
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C4A0, &qword_240A32CD0);
    sub_240A2BC6C();

    sub_240919300(&v17, &qword_27E50C478, &qword_240A32B18);
    return sub_240919300(&v16, &qword_27E50C498, &qword_240A32CC8);
  }

  return result;
}

void sub_24094890C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C4A8, &qword_240A32CD8);
  sub_240A2954C();
  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_240948BF4();

      v3 = [v2 connection];
      [v3 setVideoRotationAngle_];
    }
  }
}

id sub_2409489D0()
{
  v1 = *v0;
  type metadata accessor for CameraView.PlatformView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_240948BF4();
  [v3 setSession_];

  return v2;
}

void *sub_240948A38(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2409486BC(a1);
}

uint64_t sub_240948AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24094943C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_240948B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24094943C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_240948B90()
{
  sub_24094943C();
  sub_240A2B6AC();
  __break(1u);
}

void *sub_240948BF4()
{
  v1 = OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer;
  v2 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI10CameraViewP33_B0D7FA8B1BB82268A88AE70EE84F2F5712PlatformView____lazy_storage___videoPreviewLayer];
  }

  else
  {
    v4 = [v0 layer];
    objc_opt_self();
    v3 = swift_dynamicCastObjCClassUnconditional();
    [v3 setVideoGravity_];
    v5 = *&v0[v1];
    *&v0[v1] = v3;
    v6 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_240948DB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraView.PlatformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_240948E38@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_240948EB8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_240A2B12C();
}

uint64_t sub_240948F38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v5;
  return result;
}

uint64_t sub_240948FB8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_240A2B12C();
}

void sub_24094902C(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_27:
    v3 = sub_240A2C59C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  v5 = *MEMORY[0x277CE5A80];
  while ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245CCD150](v4, a1);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v19 = v6;
    v1 = [v6 type];
    v8 = sub_240A2BF4C();
    v10 = v9;
    if (v8 == sub_240A2BF4C() && v10 == v11)
    {
      goto LABEL_17;
    }

    v13 = sub_240A2C66C();

    if (v13)
    {
      goto LABEL_18;
    }

    ++v4;
    if (v7 == v3)
    {
      return;
    }
  }

  if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = *(a1 + 8 * v4 + 32);
  v7 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v14 stringValue];
    if (v15)
    {
      v16 = v15;
      sub_240A2BF4C();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v18;
    sub_240A2B12C();
  }

  else
  {
  }
}

unint64_t sub_240949284()
{
  result = qword_27E50C448;
  if (!qword_27E50C448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50C428, &qword_240A329A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C448);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240949328(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_240949370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2409493D0()
{
  result = qword_27E50C480;
  if (!qword_27E50C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C480);
  }

  return result;
}

unint64_t sub_24094943C()
{
  result = qword_27E50C4B0;
  if (!qword_27E50C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C4B0);
  }

  return result;
}

uint64_t sub_240949490()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C4C0);
  __swift_project_value_buffer(v0, qword_27E50C4C0);
  return sub_240A2AE9C();
}

void sub_2409494DC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_24094953C()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_240949590(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_240949648(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409496A8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409496F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2409497AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_240949814()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_24094985C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_240949914@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_240963C10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24090C23C(v4);
}

uint64_t sub_2409499B4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_240963BD4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24090C23C(v3);
  return sub_24090C1A0(v8);
}

uint64_t sub_240949A7C()
{
  v1 = (v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24090C23C(v3);
  return v3;
}

uint64_t sub_240949AD8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24090C1A0(v6);
}

id sub_240949B98()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D37660]) initWithRootViewController_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController;
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController) = v1;
  v4 = v1;

  [v4 setModalInPresentation_];
  result = *(v0 + v2);
  if (result && ([result setModalPresentationStyle_], (result = *(v0 + v2)) != 0))
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ConnectToFamilyViewController.__allocating_init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v26 = a7;
  v15 = objc_allocWithZone(v8);
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18, v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_24095DCFC(a1, a2, a3, a4, v21, a6, v26, v15, v17, v16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v23;
}

id ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v15 = a5[3];
  v14 = a5[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a5, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16, v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_24095DCFC(a1, a2, a3, a4, v19, a6, a7, v23[1], v15, v14);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v21;
}

uint64_t sub_240949ECC()
{
  if (*v0)
  {
    v1 = [*v0 authenticatableResource];
    if (v1)
    {
      v2 = v1;
      if ([v1 resourceType])
      {
        if ([v2 resourceType] == 1)
        {
          if (qword_27E50AEF0 != -1)
          {
            swift_once();
          }

          v3 = &qword_27E516200;
        }

        else
        {
          if (qword_27E50AEE8 != -1)
          {
            swift_once();
          }

          v3 = &qword_27E5161F0;
        }

        v4 = *v3;
        v5 = v3[1];

        return v4;
      }
    }
  }

  if (qword_27E50AEE8 != -1)
  {
    swift_once();
  }

  v4 = qword_27E5161F0;

  return v4;
}

uint64_t sub_24094A010()
{
  v1 = *v0;
  if (!*v0 || (v2 = [*v0 accountMigrationContext]) == 0)
  {
    v4 = *(v0 + 16);
    if (v4 && (v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v4 + v5) == 2))
    {
      [objc_opt_self() deviceIsiPad];
      return sub_240A2BFEC();
    }

    else
    {
      if (!v1 || (v6 = [v1 authenticatableResource]) == 0 || (v7 = v6, v8 = objc_msgSend(v6, sel_resourceName), v7, !v8))
      {
        if (qword_27E50AEF8 != -1)
        {
          swift_once();
        }

        v3 = &qword_27E516210;
        goto LABEL_18;
      }

      v9 = sub_240A2BF4C();
      v11 = v10;

      if (qword_27E50AF08 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_240A305D0;
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 64) = sub_240913AEC();
      *(v12 + 32) = v9;
      *(v12 + 40) = v11;
      return sub_240A2BF6C();
    }
  }

  if (qword_27E50AF00 != -1)
  {
    swift_once();
  }

  v3 = &qword_27E516220;
LABEL_18:
  v13 = *v3;
  v14 = v3[1];

  return v13;
}

uint64_t sub_24094A27C()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v2 + v3) == 1 || (v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v2 + v4) == 2))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v5 = sub_240A2B00C();
      __swift_project_value_buffer(v5, qword_27E50C4C0);
      v6 = sub_240A2AFFC();
      v7 = sub_240A2C29C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2408FE000, v6, v7, "Showing primary child/teen options", v8, 2u);
        MEMORY[0x245CCDDB0](v8, -1, -1);
      }

      v9 = v1[7];
      __swift_project_boxed_opaque_existential_0(v1 + 3, v1[6]);
      v10 = sub_240A2AB4C();
      if (!v10)
      {
        if (qword_27E50AF18 != -1)
        {
          swift_once();
        }

        v17 = &qword_27E516250;
        goto LABEL_24;
      }

      v11 = sub_240A2AFFC();
      v12 = sub_240A2C29C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2408FE000, v11, v12, "There is a protoaccount on device, using continue button title", v13, 2u);
        MEMORY[0x245CCDDB0](v13, -1, -1);
      }

LABEL_21:
      if (qword_27E50AF10 != -1)
      {
        swift_once();
      }

      v17 = &qword_27E516240;
LABEL_24:
      v16 = *v17;
      v18 = v17[1];

      return v16;
    }
  }

  v14 = v1[1];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = v14;
  if ([v15 signInFlowType] != 1)
  {

    goto LABEL_21;
  }

  if (qword_27E50AF18 != -1)
  {
    swift_once();
  }

  v16 = qword_27E516250;

  return v16;
}

uint64_t sub_24094A55C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_240A2974C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v10, *MEMORY[0x277CED208], v5);
  v11 = sub_240A2973C();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) != 0 && (v12 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v13 = *(v2 + v12), v14 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v13 + v14) == 2))
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C28C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Age range is teen, creating UIAction for presenting teen setup flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
  }

  else
  {
    sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = ObjectType;
    v21 = a1;
  }

  return sub_240A2C39C();
}

uint64_t sub_24094A874()
{
  v1 = v0;
  v2 = v0[2];
  if (v2)
  {
    v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v2 + v3) == 1 || (v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v2 + v4) == 2))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v5 = sub_240A2B00C();
      __swift_project_value_buffer(v5, qword_27E50C4C0);
      v6 = sub_240A2AFFC();
      v7 = sub_240A2C29C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2408FE000, v6, v7, "Showing secondary child/teen options", v8, 2u);
        MEMORY[0x245CCDDB0](v8, -1, -1);
      }

      v9 = v1[7];
      __swift_project_boxed_opaque_existential_0(v1 + 3, v1[6]);
      v10 = sub_240A2AB4C();
      if (!v10)
      {
        if (qword_27E50AF28 != -1)
        {
          swift_once();
        }

        v14 = &qword_27E516270;
        goto LABEL_22;
      }

LABEL_19:
      if (qword_27E50AF20 != -1)
      {
        swift_once();
      }

      v14 = &qword_27E516260;
LABEL_22:
      v13 = *v14;
      v15 = v14[1];

      return v13;
    }
  }

  v11 = v1[1];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  if ([v12 signInFlowType] != 1)
  {

    goto LABEL_19;
  }

  if (qword_27E50AF28 != -1)
  {
    swift_once();
  }

  v13 = qword_27E516270;

  return v13;
}

uint64_t sub_24094AAD8(void *a1)
{
  v2 = v1;
  v4 = sub_240A2974C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v11 + v12) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v13 = sub_240A2B00C();
    __swift_project_value_buffer(v13, qword_27E50C4C0);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Providing secondary child options", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v17 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32];
    __swift_project_boxed_opaque_existential_0(&v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager], *&v2[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24]);
    v18 = sub_240A2AB4C();
    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "ConnectToFamilyViewController present child other options features", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    v22 = sub_240956298(0);
    [v2 presentViewController:v22 animated:1 completion:0];
  }

  (*(v5 + 104))(v9, *MEMORY[0x277CED208], v4);
  v23 = sub_240A2973C();
  (*(v5 + 8))(v9, v4);
  if (v23)
  {
    v24 = *&v2[v10];
    v25 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v24 + v25) == 2)
    {
      return sub_240952A44();
    }
  }

  if (a1)
  {
    v27 = a1;
    if ([v27 signInFlowType] == 1)
    {
      sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = sub_240A2C39C();

      return v28;
    }
  }

LABEL_17:
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_24094AF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ConnectToFamilyViewController();
  v12.receiver = v0;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  sub_24094B0E4();
  if (!*&v0[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext])
  {
    v7 = sub_240A2C24C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    sub_240A2C21C();
    v8 = v0;
    v9 = sub_240A2C20C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_2409230D4(0, 0, v5, &unk_240A32D60, v10);
  }
}

void sub_24094B0E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v47 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240A308E0;
  v14 = objc_allocWithZone(MEMORY[0x277D37608]);
  v15 = sub_240A2BF1C();
  v16 = [v14 initWithStateName:v15 transitionDuration:0.01 transitionSpeed:1.0];

  *(v13 + 32) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D37608]);
  v18 = sub_240A2BF1C();
  v19 = sub_240A2BF1C();
  v20 = [v17 initWithStateName:v18 darkStateName:v19 transitionDuration:1.0 transitionSpeed:0.5];

  *(v13 + 40) = v20;
  v21 = sub_240A2BF1C();
  v22 = [objc_opt_self() bundleWithIdentifier_];

  if (!v22)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = sub_240A2BF1C();
  v25 = sub_240A2BF1C();
  v26 = [v23 URLForResource:v24 withExtension:v25];
  v49 = v23;

  if (v26)
  {
    sub_240A2958C();

    v27 = sub_240A295AC();
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  }

  else
  {
    v27 = sub_240A295AC();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  }

  sub_24093A86C(v9, v12, &qword_27E50C7E0, &qword_240A33150);
  sub_240919298(v12, v5, &qword_27E50C7E0, &qword_240A33150);
  sub_240A295AC();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v5, 1, v27) == 1)
  {
    goto LABEL_17;
  }

  v29 = [v50 headerView];
  v30 = [v29 animationView];

  if (!v30)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v12;
  if (v31)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x245CCD150](0, v13);
    }

    else
    {
      v32 = *(v13 + 32);
    }

    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_allocWithZone(MEMORY[0x277D37600]);
  v35 = sub_240A2957C();
  sub_2409194E8(0, &qword_27E50C7E8, 0x277D37608);
  v36 = sub_240A2C15C();
  v37 = [v34 initWithUrlToPackage:v35 animationView:v30 animatedStates:v36 startAtFirstState:v33];

  (*(v28 + 8))(v5, v27);
  v38 = v50;
  v39 = *&v50[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController];
  *&v50[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = v37;

  v40 = [v38 headerView];
  v41 = [v40 animationView];

  if (!v41)
  {
    goto LABEL_19;
  }

  v42 = [v38 headerView];
  v43 = [v42 animationView];

  v44 = v48;
  if (v43)
  {

    [v43 defaultScale];
    v46 = v45;

    [v41 setScale_];
    sub_240919300(v44, &qword_27E50C7E0, &qword_240A33150);
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_24094B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_24094B728, v6, v5);
}

uint64_t sub_24094B728()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[9] = v3;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_24094B7F8;
  v5 = v0[5];

  return sub_24094B9E4(v3);
}

uint64_t sub_24094B7F8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24094B93C, v5, v4);
}

uint64_t sub_24094B93C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24094B9E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24094BA7C, v4, v3);
}

uint64_t sub_24094BA7C()
{
  v1 = *MEMORY[0x277D08178];
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24094BB34;
  v3 = *(v0 + 16);

  return sub_24095E258(v3, v1);
}

uint64_t sub_24094BB34(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_24094BC5C, v5, v4);
}

uint64_t sub_24094BC5C()
{
  v1 = *(v0 + 32);

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_2408FE000, v3, v4, "Family URL for inviting is available: %{BOOL}d", v6, 8u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v7 = *(v0 + 64);
  v8 = *(v0 + 24);

  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable) = v7;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24094BD9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_240A295AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v12 = swift_allocError();
    *v13 = a3;
    v14 = a3;

    return MEMORY[0x282200958](v11, v12);
  }

  else
  {
    sub_240A2958C();
    (*(v6 + 32))(*(*(v11 + 64) + 40), v10, v5);
    return swift_continuation_throwingResume();
  }
}

void sub_24094BF0C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ConnectToFamilyViewController();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  [*&v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] startAnimation];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController;
  if (!*&v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController])
  {
    v4 = [v1 navigationController];
    v5 = *&v1[v3];
    *&v1[v3] = v4;
  }
}

id ConnectToFamilyViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ConnectToFamilyViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_24094C478()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277CECA08]);
    oslog = v1;
    v3 = [v2 initWithNavController_];
    v4 = [objc_allocWithZone(MEMORY[0x277CECA78]) initWithSetupSignInConfig_];
    v5 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController;
    v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController);
    *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController) = v4;
    v7 = v4;

    if (v7)
    {
      [v7 setDelegate_];
    }

    v8 = *(v0 + v5);
    [v8 start];
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    oslog = sub_240A2AFFC();
    v10 = sub_240A2C2AC();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v10, "ConnectToFamilyViewController - No nav controller for sign in controller.", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }
  }
}

void sub_24094C628()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50C4C0);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C28C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Presenting teen setup flow", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24094C738();
  }
}

void sub_24094C738()
{
  v1 = v0;
  v2 = sub_240A2981C();
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v79 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v70 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v10 = *(*(v78 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v78, v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v70 - v21;
  v23 = type metadata accessor for SetupView();
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v28 = sub_240A2B00C();
  v82 = __swift_project_value_buffer(v28, qword_27E50C4C0);
  v29 = sub_240A2AFFC();
  v30 = sub_240A2C29C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2408FE000, v29, v30, "Starting to present teen setup flow", v31, 2u);
    MEMORY[0x245CCDDB0](v31, -1, -1);
  }

  v32 = [v1 navigationController];
  v33 = v32;
  if (v32)
  {
  }

  LOBYTE(v84) = v33 == 0;
  sub_240A2BD3C();
  v76 = v89;
  v77 = v88;
  v75 = v90;
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v86) = 0;

  sub_240A2BD3C();
  v73 = *(&v84 + 1);
  v74 = v84;
  v72 = v85;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v34 = sub_240A2B01C();
  (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
  v35 = sub_240A2A1BC();
  LOBYTE(v86) = 0;
  sub_240A2BC4C();
  v36 = *(&v84 + 1);
  v27[48] = v84;
  *(v27 + 7) = v36;
  v83 = v1;
  v37 = v23[10];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v38 - 8) + 56))(v17, 1, 1, v38);
  sub_240919298(v17, v14, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v17, &qword_27E50C700, &unk_240A32F50);
  v39 = &v27[v23[11]];
  v86 = 0;
  v87 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v40 = v85;
  *v39 = v84;
  *(v39 + 2) = v40;
  v41 = v23[12];
  *&v27[v41] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v42 = v23[13];
  *&v27[v42] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v43 = v23[14];
  *&v27[v43] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v44 = &v27[v23[15]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = &v27[v23[16]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = &v27[v23[17]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = v23[18];
  v48 = v23[19];
  v49 = &v27[v23[22]];
  LOBYTE(v86) = 1;
  sub_240A2BC4C();
  v50 = *(&v84 + 1);
  *v49 = v84;
  *(v49 + 1) = v50;
  sub_240A2979C();
  v51 = v23[9];
  v52 = v80;
  v53 = v81;
  (*(v80 + 16))(v79, v9, v81);
  sub_240A2BC4C();
  (*(v52 + 8))(v9, v53);
  *v27 = sub_24094E6B8;
  *(v27 + 1) = 0;
  v54 = v71;
  *(v27 + 2) = sub_240964534;
  *(v27 + 3) = v54;
  *&v27[v47] = 0;
  *&v27[v48] = 0;
  *(v27 + 4) = v35;
  v55 = &v27[v23[20]];
  v56 = v76;
  *v55 = v77;
  *(v55 + 1) = v56;
  v55[16] = v75;
  v57 = &v27[v23[21]];
  v58 = v73;
  *v57 = v74;
  *(v57 + 1) = v58;
  v57[16] = v72;
  v59 = objc_allocWithZone(sub_240A29DEC());

  *(v27 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v60 = sub_240A297AC();
  sub_240A2A04C();
  v60(&v84, 0);
  v61 = v83;
  sub_240A2BC6C();

  v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v63 = sub_240A2B5EC();
  v64 = [v61 navigationController];
  v65 = sub_240A2AFFC();
  v66 = sub_240A2C29C();
  v67 = os_log_type_enabled(v65, v66);
  if (v64)
  {
    if (v67)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2408FE000, v65, v66, "Presenting teen setup view controller with navigation controller", v68, 2u);
      MEMORY[0x245CCDDB0](v68, -1, -1);
    }

    [v64 pushViewController:v63 animated:1];
  }

  else
  {
    if (v67)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2408FE000, v65, v66, "Presenting teen setup view controller modally", v69, 2u);
      MEMORY[0x245CCDDB0](v69, -1, -1);
    }

    [v61 presentViewController:v63 animated:1 completion:0];
  }
}

void sub_24094CFF8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v110 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v110 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v110 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v111 = v17;
    v114 = v6;
    v115 = v20;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v28 = sub_240A2B00C();
    v29 = __swift_project_value_buffer(v28, qword_27E50C4C0);
    v30 = v27;
    v117 = v29;
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C28C();

    v33 = os_log_type_enabled(v31, v32);
    v113 = v7;
    v112 = v11;
    v116 = a4;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v121 = v35;
      *v34 = 136315138;
      v36 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
      swift_beginAccess();
      v120 = *&v30[v36];
      v37 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C758, &qword_240A330B8);
      v38 = sub_240A2BF9C();
      v40 = a3;
      v41 = sub_240925464(v38, v39, &v121);

      *(v34 + 4) = v41;
      a3 = v40;
      _os_log_impl(&dword_2408FE000, v31, v32, "Invoking primary button with context: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245CCDDB0](v35, -1, -1);
      MEMORY[0x245CCDDB0](v34, -1, -1);
    }

    v42 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
    swift_beginAccess();
    v43 = *&v30[v42];
    if (!v43)
    {
      goto LABEL_11;
    }

    v44 = [v43 accountMigrationContext];
    if (v44)
    {
      v45 = v44;
      v46 = sub_240A2C24C();
      (*(*(v46 - 8) + 56))(v25, 1, 1, v46);
      sub_240A2C21C();
      v47 = v30;
      v48 = v45;
      v49 = sub_240A2C20C();
      v50 = swift_allocObject();
      v51 = MEMORY[0x277D85700];
      v50[2] = v49;
      v50[3] = v51;
      v50[4] = v47;
      v50[5] = v48;
      sub_2409230D4(0, 0, v25, &unk_240A330B0, v50);

LABEL_27:

      return;
    }

    v52 = *&v30[v42];
    if (v52)
    {
      sub_2409194E8(0, &qword_27E50C750, 0x277CF0388);
      v53 = v52;
      v54 = sub_240A2C34C();
      [v54 set:1 shouldBroadcastForProximityAuthOnly:?];
      v55 = v54;
    }

    else
    {
LABEL_11:
      v55 = [objc_allocWithZone(MEMORY[0x277CF0388]) init];
    }

    v56 = v55;
    [v56 setAuthenticationType_];
    v57 = v30;
    v58 = [v57 navigationController];
    [v56 setPresentingViewController_];

    v59 = sub_240A2AFFC();
    v60 = sub_240A2C28C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2408FE000, v59, v60, "Checking we have valid Setting secondary button title", v61, 2u);
      MEMORY[0x245CCDDB0](v61, -1, -1);
    }

    v62 = [v56 respondsToSelector_];
    if (v62)
    {
      v63 = sub_240A2AFFC();
      v64 = sub_240A2C28C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2408FE000, v63, v64, "Setting secondary button title", v65, 2u);
        MEMORY[0x245CCDDB0](v65, -1, -1);
      }

      sub_24094DD58(a3);
      v66 = sub_240A2BF1C();

      [v56 setSecondaryButtonTitle_];
    }

    v67 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:0 lastName:0 ageRange:1];
    [v56 setProtoAccountContext_];

    v68 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v69 = *&v57[v68];
    v70 = *&v30[v42];
    v110 = v56;
    if (v70)
    {
      v71 = v69;
      v72 = [v70 pendingDOB];
      v73 = v115;
      if (v72)
      {
        v74 = v111;
        v75 = v72;
        sub_240A295FC();

        v76 = 0;
      }

      else
      {
        v76 = 1;
        v74 = v111;
      }

      v79 = sub_240A2962C();
      (*(*(v79 - 8) + 56))(v74, v76, 1, v79);
      sub_24093A86C(v74, v73, &unk_27E50DCE0, &qword_240A32E20);
    }

    else
    {
      v77 = sub_240A2962C();
      v73 = v115;
      (*(*(v77 - 8) + 56))(v115, 1, 1, v77);
      v78 = v69;
    }

    v80 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_240963E78(v73, v69 + v80);
    swift_endAccess();
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for AISSignInSettings();
    v82 = swift_allocObject();
    v82[2] = v69;
    v82[3] = sub_2409645E8;
    v82[4] = v81;
    v82[5] = sub_240964BB0;
    v82[6] = 0;
    v83 = swift_allocObject();
    v117 = v57;
    swift_unknownObjectWeakInit();
    v84 = swift_allocObject();
    v84[2] = v83;
    v84[3] = a3;
    v85 = v116;
    v84[4] = v82;
    v84[5] = v85;
    v86 = objc_allocWithZone(MEMORY[0x277CF0178]);
    v87 = a3;
    v88 = v69;

    v89 = [v86 init];
    if (v89)
    {
      v90 = v89;
      v115 = v83;
      v116 = v88;
      v91 = [objc_opt_self() defaultStore];
      if (v91)
      {
        v92 = v91;
        v93 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

        v94 = type metadata accessor for SignInOptionAuthenticationController();
        v95 = objc_allocWithZone(v94);
        *&v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
        *&v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
        v96 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
        *&v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
        v97 = &v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
        *v97 = 0;
        v97[1] = 0;
        v98 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
        v119 = 0;

        v99 = v112;
        sub_240A2B0DC();
        (*(v113 + 32))(&v95[v98], v99, v114);
        v100 = *&v95[v96];
        *&v95[v96] = v90;
        v101 = v90;

        *&v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v82;
        *&v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v93;
        v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
        v102 = *v97;
        v103 = v97[1];
        *v97 = sub_240964608;
        v97[1] = v84;

        v104 = v93;

        sub_24090C1A0(v102);
        v95[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
        v118.receiver = v95;
        v118.super_class = v94;
        v105 = objc_msgSendSuper2(&v118, sel_init);

        v105[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 0;
        v106 = v117;
        v107 = [v117 navigationController];

        v108 = *&v105[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController];
        *&v105[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = v107;

        v109 = v110;
        sub_240976A18(v110);

        v48 = *&v106[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController];
        *&v106[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = v105;

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_24094DB10()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409603D0();
}

uint64_t sub_24094DBBC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24094DCF8, v5, v4);
}

uint64_t sub_24094DCF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24094DD58(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v5 + v6) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v7 = sub_240A2B00C();
    __swift_project_value_buffer(v7, qword_27E50C4C0);
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "Showing secondary child options", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v11 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32);
    __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
    v12 = sub_240A2AB4C();
    if (!v12)
    {
      return sub_240A2BFEC();
    }
  }

  else
  {
    if (a1)
    {
      v13 = a1;
      if ([v13 signInFlowType] == 1)
      {
        v14 = sub_240A2BFEC();

        return v14;
      }
    }

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C4C0);
  }

  v17 = sub_240A2AFFC();
  v18 = sub_240A2C29C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2408FE000, v17, v18, "No flow context was given, using default button title", v19, 2u);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  return sub_240A2BFEC();
}

void sub_24094E018(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {

    sub_240959544(a1);
  }

  else
  {
    v5 = ObjectType;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = a1;
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C28C();
    sub_240963F50(a1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = [v7 description];
      v13 = sub_240A2BF4C();
      v15 = v14;

      sub_240963F50(a1);
      v16 = sub_240925464(v13, v15, &v20);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_2408FE000, v8, v9, "Finished signing in with result: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x245CCDDB0](v11, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_opt_self();
    sub_240963F5C(a1);

    sub_240963F5C(a1);

    v19 = [v18 sharedInstance];
    sub_240962848(v19, v17, v7, v5);

    sub_240963F50(a1);
  }
}

void sub_24094E2C0(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "ConnectToFamilyViewController - Proximity setup fallback", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_24094E4C4(a2, a3);
  }

  else
  {
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = sub_240A2C7BC();
      v17 = sub_240925464(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2408FE000, v11, v12, "%s has been released and unable to launch personalized setup", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x245CCDDB0](v14, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }
  }
}

void sub_24094E4C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v7 = *&v3[v6];
  v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, "Providing secondary child prox fallback", v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    v13 = *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32];
    __swift_project_boxed_opaque_existential_0(&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager], *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24]);
    v14 = sub_240A2AB4C();
    if (!v14)
    {
      sub_24095267C(a2, 0);
      return;
    }
  }

  else if (a1)
  {
    v15 = a1;
    if ([v15 signInFlowType] == 1)
    {
      sub_24095267C(a2, 0);

      return;
    }
  }

  v16 = sub_240956298(0);
  [v3 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_24094E6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v36 = sub_240A29C7C();
  v38 = *(v36 - 8);
  v3 = *(v38 + 64);
  v5 = MEMORY[0x28223BE20](v36, v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v35[0] = v35 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v35[1] = v35 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = MEMORY[0x28223BE20](v19, v20);
  MEMORY[0x28223BE20](v21, v22);
  (*(v23 + 16))(v7, a1);
  v24 = *MEMORY[0x277CED1A0];
  sub_240A29C0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C738, &qword_240A33090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A32CE0;
  v26 = *MEMORY[0x277CED1C0];
  *(inited + 32) = *MEMORY[0x277CED1C0];
  v27 = *MEMORY[0x277CED1A8];
  v28 = *MEMORY[0x277CED1B8];
  *(inited + 40) = *MEMORY[0x277CED1A8];
  *(inited + 48) = v28;
  v29 = *MEMORY[0x277CED1B0];
  *(inited + 56) = *MEMORY[0x277CED1B0];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  sub_240962BFC(inited);
  swift_setDeallocating();
  type metadata accessor for AIDAServiceType(0);
  swift_arrayDestroy();
  sub_240A29BFC();

  sub_240A29C1C();
  sub_240A29BAC();
  sub_240A29BBC();
  sub_240A29BCC();
  sub_240A29C5C();
  sub_240A29C2C();
  return (*(v38 + 8))(v37, v36);
}

void sub_24094E9D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v13 = sub_240A2B00C();
    __swift_project_value_buffer(v13, qword_27E50C4C0);
    sub_240919298(a1, v10, &qword_27E50C6E0, &qword_240A32F18);
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C28C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315138;
      v23 = a1;
      v24 = v17;
      sub_240919298(v10, v7, &qword_27E50C6E0, &qword_240A32F18);
      v18 = sub_240A2BF9C();
      v20 = v19;
      sub_240919300(v10, &qword_27E50C6E0, &qword_240A32F18);
      v21 = sub_240925464(v18, v20, &v24);

      *(v16 + 4) = v21;
      a1 = v23;
      _os_log_impl(&dword_2408FE000, v14, v15, "Finished teen setup with result: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    else
    {

      sub_240919300(v10, &qword_27E50C6E0, &qword_240A32F18);
    }

    sub_24094EC60(a1);
  }
}

void sub_24094EC60(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_240A29ACC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v41 - v19);
  sub_240919298(a1, &v41 - v19, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_24095A588(*v20);
  }

  else
  {
    v43 = v1;
    (*(v4 + 32))(v15, v20, v3);
    v22 = v3;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50C4C0);
    v24 = *(v4 + 16);
    v24(v12, v15, v3);
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C28C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v15;
      v29 = v28;
      v46 = v28;
      *v27 = 136315138;
      v24(v44, v12, v3);
      v30 = sub_240A2BF9C();
      v32 = v31;
      v33 = v12;
      v34 = *(v4 + 8);
      v34(v33, v22);
      v35 = sub_240925464(v30, v32, &v46);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_2408FE000, v25, v26, "Finished signing in with report: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v36 = v29;
      v15 = v42;
      MEMORY[0x245CCDDB0](v36, -1, -1);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    else
    {

      v37 = *(v4 + 8);
      v37(v12, v3);
      v34 = v37;
    }

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = objc_opt_self();
    swift_retain_n();
    v40 = [v39 sharedInstance];
    sub_240962DF0(v40, v38, ObjectType);

    v34(v15, v22);
  }
}

uint64_t sub_24094F070(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_240A29ACC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v43 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (&v43 - v19);
  sub_240919298(a1, &v43 - v19, &qword_27E50C6E8, &qword_240A32F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = v20[1];
    sub_24095AA48(*v20, v22);
    return sub_240915CE4(v21, v22);
  }

  else
  {
    v45 = v1;
    (*(v4 + 32))(v15, v20, v3);
    v24 = v3;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v25 = sub_240A2B00C();
    __swift_project_value_buffer(v25, qword_27E50C4C0);
    v26 = *(v4 + 16);
    v26(v12, v15, v3);
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C28C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v15;
      v31 = v30;
      v48 = v30;
      *v29 = 136315138;
      v26(v46, v12, v3);
      v32 = sub_240A2BF9C();
      v34 = v33;
      v35 = v12;
      v36 = *(v4 + 8);
      v36(v35, v24);
      v37 = sub_240925464(v32, v34, &v48);

      *(v29 + 4) = v37;
      _os_log_impl(&dword_2408FE000, v27, v28, "Finished signing in with report: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v38 = v31;
      v15 = v44;
      MEMORY[0x245CCDDB0](v38, -1, -1);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }

    else
    {

      v39 = *(v4 + 8);
      v39(v12, v3);
      v36 = v39;
    }

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = objc_opt_self();
    swift_retain_n();
    v42 = [v41 sharedInstance];
    sub_240962DF0(v42, v40, ObjectType);

    v36(v15, v24);
  }
}

uint64_t sub_24094F488(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = sub_240A2C21C();
  v2[11] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x2822009F8](sub_24094F524, v4, v3);
}

uint64_t sub_24094F524()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = sub_240A2AB3C();
  if (v6 == sub_240A2AB3C())
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v7 = sub_240A2B00C();
    v0[14] = __swift_project_value_buffer(v7, qword_27E50C4C0);
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "Setting up passcode and biometric for teens...", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v12 = v0[9];
    v11 = v0[10];

    v13 = sub_240A2C20C();
    v0[15] = v13;
    v14 = swift_task_alloc();
    v0[16] = v14;
    *(v14 + 16) = v12;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_24094F7B4;
    v17 = MEMORY[0x277D85700];
    v18 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 20, v13, v17, 0xD000000000000024, 0x8000000240A3C210, sub_240964040, v14, v18);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = sub_24094FBE8;
    v20 = v0[8];
    v21 = v0[9];

    return sub_24094FD08(v20);
  }
}

uint64_t sub_24094F7B4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v8 = *v0;

  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24094F914, v6, v5);
}

uint64_t sub_24094F914()
{
  if (*(v0 + 160) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_24094FA68;
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    return sub_24094FD08(v2);
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);

    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "Passcode and biometric setup for teens was not successful, so we won't launch CDP.", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24094FA68()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24094FB88, v4, v3);
}

uint64_t sub_24094FB88()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24094FBE8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_240964C0C, v4, v3);
}

uint64_t sub_24094FD08(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = swift_getObjectType();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = sub_240A299DC();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v2[22] = v8;
  v2[23] = v7;

  return MEMORY[0x2822009F8](sub_24094FE40, v8, v7);
}

uint64_t sub_24094FE40()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[21];

    v3 = sub_240A1E87C(v1);
    v4 = v0[15];
    sub_240A1EADC(v3);

    v5 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
    v6 = sub_240A2BE9C();

    v7 = [v5 initWithAuthenticationResults_];

    sub_2409517A4(v7);
    v23 = sub_240951A04(v7);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v24 = sub_240A2B00C();
    __swift_project_value_buffer(v24, qword_27E50C4C0);
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C29C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "Starting to present CDP join flow", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    v28 = v0[15];
    v29 = v0[16];
    v30 = v0[14];

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v30;
    v32[4] = v29;
    v0[6] = sub_2409640EC;
    v0[7] = v32;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409520D4;
    v0[5] = &block_descriptor_152;
    v33 = _Block_copy(v0 + 2);
    v34 = v0[7];

    [v23 handleCloudDataProtectionStateWithCompletion_];
    _Block_release(v33);

LABEL_18:
    v39 = v0[20];
    v40 = v0[17];

    v41 = v0[1];

    return v41();
  }

  v8 = v0[18];
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[15];
  sub_240950F64(v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v12 = v0[21];
    v13 = v0[17];

    sub_240919300(v13, &qword_27E50BB78, &qword_240A32E80);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50C4C0);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "No primary account ID, cannot begin CDP flow", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v18 = v0[15];

    v19 = v18 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {
      v21 = *(v19 + 8);
      sub_24090C23C(v20);
      v22 = sub_24092624C(MEMORY[0x277D84F90]);
      v20(0, v22);
      sub_24090C1A0(v20);
    }

    goto LABEL_18;
  }

  (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
  v35 = swift_task_alloc();
  v0[24] = v35;
  *v35 = v0;
  v35[1] = sub_2409503C4;
  v36 = v0[20];
  v37 = v0[15];

  return sub_2409511D4(v36);
}

uint64_t sub_2409503C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_240950868;
  }

  else
  {
    v4[26] = a1;
    v7 = v4[22];
    v8 = v4[23];
    v9 = sub_2409504EC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2409504EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  v6 = v0[15];
  sub_240A1EADC(v0[26]);

  v7 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v8 = sub_240A2BE9C();

  v9 = [v7 initWithAuthenticationResults_];

  sub_2409517A4(v9);
  v10 = sub_240951A04(v9);
  if (v5)
  {

    v11 = v0[15] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {
      v13 = *(v11 + 8);
      v14 = v0[14];
      if (v14)
      {

        v15 = v14;
      }

      else
      {
        sub_24090C23C(v12);
        v15 = sub_24092624C(MEMORY[0x277D84F90]);
      }

      v12(0, v15);
      sub_24090C1A0(v12);
    }

    else
    {
    }
  }

  else
  {
    v16 = v10;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v17 = sub_240A2B00C();
    __swift_project_value_buffer(v17, qword_27E50C4C0);
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C29C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Starting to present CDP join flow", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[14];

    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v22;
    v0[6] = sub_2409640EC;
    v0[7] = v25;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409520D4;
    v0[5] = &block_descriptor_152;
    v26 = _Block_copy(v0 + 2);
    v27 = v0[7];

    [v16 handleCloudDataProtectionStateWithCompletion_];
    _Block_release(v26);
  }

  v28 = v0[20];
  v29 = v0[17];

  v30 = v0[1];

  return v30();
}

uint64_t sub_240950868()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  v6 = v0[15] + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);
    v9 = v0[14];
    if (v9)
    {

      v10 = v9;
    }

    else
    {
      sub_24090C23C(v7);
      v10 = sub_24092624C(MEMORY[0x277D84F90]);
    }

    v7(0, v10);
    sub_24090C1A0(v7);
  }

  else
  {
  }

  v11 = v0[20];
  v12 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2409509B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = aBlock - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*(v3 + 16))(v7, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v7, v2);
    aBlock[4] = sub_240964048;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_240950B98;
    aBlock[3] = &block_descriptor_144;
    v12 = _Block_copy(aBlock);

    [v9 setupPasscodeAndBiometricWithCompletion_];
    _Block_release(v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock[0]) = 0;
    return sub_240A2C1CC();
  }
}

uint64_t sub_240950B98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_240950BEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C680, &unk_240A32EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C688, &unk_240A366E0);
  sub_24091CE28(&qword_27E50C690, &qword_27E50C688, &unk_240A366E0);
  sub_240A2B6FC();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C698, &qword_240A32EB0));
  v6 = sub_240A2B5EC();
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v7 = sub_240A2B00C();
  __swift_project_value_buffer(v7, qword_27E50C4C0);
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "For inline, let's present a data syncing progress view for intermediate states.", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v11 = [v1 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 pushViewController:v6 animated:1];
  }

  else
  {
    [v1 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_240950E74()
{
  sub_240A2C01C();
  sub_24091C4F8();
  return sub_240A2BC3C();
}

uint64_t sub_240950EF4@<X0>(uint64_t a1@<X8>)
{
  sub_240A2C01C();
  sub_24091C4F8();
  result = sub_240A2B9CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_240950F64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v4 = sub_240A2AB6C();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() sharedInstance];
    v7 = 0;
    sub_240A2C3AC();

    v11 = v5;
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v8 = sub_240A2B00C();
    __swift_project_value_buffer(v8, qword_27E50C4C0);
    v11 = sub_240A2AFFC();
    v9 = sub_240A2C2AC();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v11, v9, "Missing primary account. Cannot continue", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    v7 = 1;
  }

  v12 = sub_240A299DC();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v7, 1, v12);
}

uint64_t sub_2409511D4(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_240951290;

  return sub_24095215C(a1);
}

uint64_t sub_240951290(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v12 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v3;

  v9 = sub_240A2C1BC();
  if (v3)
  {
    v10 = sub_240951740;
  }

  else
  {
    v10 = sub_2409513F0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2409513F0()
{
  v22 = v0;
  v1 = v0[5];
  v2 = v0[3];

  if (v1)
  {
    v3 = v0[5];
  }

  else
  {
    v3 = sub_24092624C(MEMORY[0x277D84F90]);
  }

  v4 = sub_240A1E87C(v3);

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);

  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_240A2BECC();
    v12 = sub_240925464(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v6, v7, "Silent auth completed successfully with results: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  if (*(v4 + 16))
  {
    v13 = v0[1];

    return v13(v4);
  }

  else
  {

    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "Failed to perform silent authentication", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v18 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277CED2D0], v18);
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_240951740()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

void sub_2409517A4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = sub_240A2AB3C();
  if (v8 != sub_240A2AB3C() || a1 == 0)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50C4C0);
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C29C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "Not setting the local secret on the CDPContext for teens since we are NOT in buddy.", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }
  }

  else
  {
    v14 = qword_27E50AEE0;
    v15 = a1;
    v16 = v15;
    if (v14 != -1)
    {
      swift_once();
    }

    v17 = sub_240A2B00C();
    __swift_project_value_buffer(v17, qword_27E50C4C0);
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C29C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Setting the local secret on the CDPContext for teens", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if ([Strong respondsToSelector_])
      {
        [v22 shieldSetupUpdateCDPContext_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_240951A04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CFDAE0]) initWithPresentingViewController_];
    if (v3)
    {
      v4 = v3;
      sub_2409194E8(0, &unk_27E50C670, 0x277D757A0);
      if ([v1 isKindOfClass_])
      {
        [v4 setForceInlinePresentation_];
      }

      [v2 setUiProvider_];
    }

    else
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v11 = sub_240A2B00C();
      __swift_project_value_buffer(v11, qword_27E50C4C0);
      v12 = sub_240A2AFFC();
      v13 = sub_240A2C2AC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2408FE000, v12, v13, "Failed to create CDPUIController and perform CDP", v14, 2u);
        MEMORY[0x245CCDDB0](v14, -1, -1);
      }

      v15 = sub_240A2976C();
      sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CED2D0], v15);
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50C4C0);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "Failed to create CDPStateController and perform CDP", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v9 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277CED2D0], v9);
    swift_willThrow();
  }

  return v2;
}

void sub_240951D8C(uint64_t a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50C4C0);
    v11 = a3;
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C29C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 67109378;
      *(v14 + 4) = a2 & 1;
      *(v14 + 8) = 2112;
      if (a3)
      {
        v16 = a3;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v14 + 10) = v17;
      *v15 = v18;
      _os_log_impl(&dword_2408FE000, v12, v13, "CDP enabled: %{BOOL}d with error %@", v14, 0x12u);
      sub_240919300(v15, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v26 = v9 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v27 = *v26;
    if (*v26)
    {
      v28 = *(v26 + 1);
      if (a5)
      {

        v29 = a5;
      }

      else
      {
        sub_24090C23C(v27);
        v29 = sub_24092624C(MEMORY[0x277D84F90]);
      }

      v27(0, v29);
      sub_24090C1A0(v27);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v19 = sub_240A2B00C();
    __swift_project_value_buffer(v19, qword_27E50C4C0);
    v9 = sub_240A2AFFC();
    v20 = sub_240A2C2BC();
    if (os_log_type_enabled(v9, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      v23 = sub_240A2C7BC();
      v25 = sub_240925464(v23, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2408FE000, v9, v20, "%s has been released and completion was not called.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245CCDDB0](v22, -1, -1);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }
  }
}

void sub_2409520D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_24095215C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x2822009F8](sub_2409521F4, v4, v3);
}

uint64_t sub_2409521F4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[24] = v3;
  v4 = *MEMORY[0x277CEFF28];
  v5 = v3;
  [v5 setAppProvidedContext_];
  sub_240A299BC();
  v6 = sub_240A2BF1C();

  [v5 setAltDSID_];

  [v5 setAuthenticationType_];
  [v5 setPresentingViewController_];
  [v5 setIsUsernameEditable_];
  v7 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v0[25] = v7;
  if (v7)
  {
    v8 = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240952438;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD10, &unk_240A357D0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2409AD124;
    v0[13] = &block_descriptor_157;
    v0[14] = v9;
    [v8 authenticateWithContext:v5 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v10 = v0[21];

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_240952438()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_2409525F4;
  }

  else
  {
    v6 = sub_240952568;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_240952568()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];

  v4 = v0[18];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_2409525F4()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];

  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

void sub_24095267C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [v2 navigationController];
  if (!v6)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v27 = sub_240A2B00C();
    __swift_project_value_buffer(v27, qword_27E50C4C0);
    v28 = sub_240A2AFFC();
    v29 = sub_240A2C2AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2408FE000, v28, v29, "Failed to launch personalized setup: Missing navigation controller", v30, 2u);
      MEMORY[0x245CCDDB0](v30, -1, -1);
    }

    v32 = *(a1 + 24);
    v31 = *(a1 + 32);
    sub_240963EF4();
    v33 = swift_allocError();
    v32(v33, 1);
    v34 = v33;

LABEL_15:

    return;
  }

  v7 = v6;
  v8 = [objc_opt_self() defaultStore];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v11 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());

    v13 = sub_240A0B5C4(v12, v10, 0);

    v14 = *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController];
    *&v3[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = v13;
    v35 = v13;

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C28C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Starting personalized setup flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    if (a2)
    {
      v19 = [v7 topViewController];
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v21 = type metadata accessor for FilteringNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController] = v7;
      v23 = &v22[OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_navigationStackFilter];
      *v23 = sub_240963F48;
      v23[1] = v20;
      v36.receiver = v22;
      v36.super_class = v21;
      v24 = v7;
      v25 = v19;
      v26 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
      sub_240A09428(v26);

      return;
    }

    sub_240A09428(v7);

    v34 = v35;

    goto LABEL_15;
  }

  __break(1u);
}

uint64_t sub_240952A44()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Providing secondary teen options", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v7 = sub_240A2AB4C();
  if (v7)
  {

    v8 = sub_240A2AFFC();
    v9 = sub_240A2C29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v8, v9, "ConnectToFamilyViewController present teen other options features", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }
  }

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_240952C6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C4C0);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "ConnectToFamilyViewController secondaryButtonAction tapped: not in Buddy flow...not presenting any safety features/settings", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v6 = sub_240956298(0);
    [v1 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_240952DA8(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v29[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50C4C0);
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C29C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, a3, v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v15 = [v10 navigationController];
    if (v15)
    {
      v16 = v15;
      v17 = sub_240A2962C();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = objc_opt_self();
      sub_24090C23C(v19);
      v22 = [v21 sharedInstance];
      v23 = objc_opt_self();
      v24 = v22;
      v25 = [v23 defaultStore];
      if (!v25)
      {
        __break(1u);
        return;
      }

      v26 = v25;
      v27 = objc_allocWithZone(type metadata accessor for ChildSafetyFeaturesViewController());
      v28 = sub_240963180(v8, v24, v26, v19, v20, v27);
      sub_24090C1A0(v19);

      [v16 pushViewController:v28 animated:1];
    }
  }
}

uint64_t sub_240953064(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_240A2C21C();
  v2[9] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_2409530FC, v4, v3);
}

uint64_t sub_2409530FC()
{
  sub_240919298(v0[7], (v0 + 2), &qword_27E50C6D0, &unk_240A33620);
  if (v0[5])
  {
    sub_2409194E8(0, &qword_27E50C6D8, 0x277D37690);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_240919300((v0 + 2), &qword_27E50C6D0, &unk_240A33620);
    v1 = 0;
  }

  v0[12] = v1;
  [v1 showsBusyIndicator];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_240953224;
  v3 = v0[8];

  return sub_2409539B4();
}

uint64_t sub_240953224()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_240953344, v4, v3);
}

uint64_t sub_240953344()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Checking if teen settings can be shown", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_240953490;
  v6 = *(v0 + 64);

  return sub_240954408();
}

uint64_t sub_240953490(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 152) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_2409535B8, v5, v4);
}

uint64_t sub_2409535B8()
{
  if (*(v0 + 152) == 1)
  {
    v1 = *(v0 + 64);
    v2 = sub_24095488C();
    *(v0 + 120) = v2;
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_2409536B8;
    v4 = *(v0 + 64);

    return sub_240954988(v2);
  }

  else
  {
    v6 = *(v0 + 72);

    v7 = *(v0 + 96);
    [v7 hidesBusyIndicator];

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2409536B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;
  v3[17] = a1;

  v6 = swift_task_alloc();
  v3[18] = v6;
  *v6 = v5;
  v6[1] = sub_24095380C;
  v7 = v3[8];

  return sub_240954FF8(a1);
}

uint64_t sub_24095380C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24095392C, v4, v3);
}

uint64_t sub_24095392C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[12];
  [v4 hidesBusyIndicator];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2409539B4()
{
  v1[22] = v0;
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x2822009F8](sub_240953A4C, v3, v2);
}

uint64_t sub_240953A4C()
{
  v1 = v0[22];
  v2 = [objc_opt_self() defaultStore];
  v0[26] = v2;
  v3 = (v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager);
  v4 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager), *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager + 24));
  v5 = sub_240A2AB6C();
  if (v5)
  {
    v6 = v5;
    v7 = v0[23];

    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v8 = sub_240A2B00C();
    __swift_project_value_buffer(v8, qword_27E50C4C0);
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "Primary account found, skipping saving proto account", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

LABEL_30:

    v31 = v0[1];

    return v31();
  }

  v12 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v13 = sub_240A2AB4C();
  if (v13)
  {
    v14 = v13;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v15 = sub_240A2B00C();
    __swift_project_value_buffer(v15, qword_27E50C4C0);
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Updating existing proto account with teen age range", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v19 = sub_240A2B00C();
    __swift_project_value_buffer(v19, qword_27E50C4C0);
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Creating new proto account for teen", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = v3[4];
    __swift_project_boxed_opaque_existential_0(v3, v3[3]);
    v24 = sub_240A2AB5C();
    v14 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];

    if (!v14)
    {
      if (v2)
      {
        v26 = v0[23];

        v14 = 0;
LABEL_25:
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v28 = sub_240A2B00C();
        __swift_project_value_buffer(v28, qword_27E50C4C0);
        v9 = sub_240A2AFFC();
        v29 = sub_240A2C2AC();
        if (os_log_type_enabled(v9, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2408FE000, v9, v29, "Failed to get account store or proto account", v30, 2u);
          MEMORY[0x245CCDDB0](v30, -1, -1);
        }

        goto LABEL_30;
      }

      v14 = 0;
LABEL_24:
      v27 = v0[23];

      goto LABEL_25;
    }
  }

  v0[27] = v14;
  [v14 proto:2 setAgeRange:?];
  if (!v2)
  {
    goto LABEL_24;
  }

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_240953FA0;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_223;
  v0[14] = v25;
  [v2 saveVerifiedAccount:v14 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240953FA0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_240954218;
  }

  else
  {
    v6 = sub_2409540D0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2409540D0()
{
  v1 = v0[27];
  v2 = v0[23];

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50C4C0);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[26];
  v7 = v0[27];
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "Successfully saved teen proto account", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  else
  {

    v4 = v7;
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_240954218()
{
  v24 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[23];

  swift_willThrow();

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = v0[28];
  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C4C0);
  v6 = v4;
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2AC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[20];
    v18 = sub_240A2C6CC();
    v20 = sub_240925464(v18, v19, &v23);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_2408FE000, v7, v8, "Failed to save teen proto account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_240954408()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  sub_240A2C21C();
  v1[8] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v1[9] = v5;
  v1[10] = v4;

  return MEMORY[0x2822009F8](sub_2409544DC, v5, v4);
}

uint64_t sub_2409544DC()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[11] = v3;
  v4 = *MEMORY[0x277D081D8];
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2409545CC;

  return sub_24095E258(v3, v4);
}

uint64_t sub_2409545CC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v5 = *(v2 + 80);
  v6 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_240954718, v6, v5);
}

uint64_t sub_240954718()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  if ((v1 & 1) == 0)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v3 = sub_240A2B00C();
    __swift_project_value_buffer(v3, qword_27E50C4C0);
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2AC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "Allowing teen to proceed by setting up later for now, due to no URL available (rather than blocking)", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);

    *v7 = xmmword_240A32320;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v7);
    sub_240919300(v7, &qword_27E50C6E8, &qword_240A32F28);
  }

  v10 = *(v0 + 56);

  v11 = *(v0 + 8);
  v12 = *(v0 + 104);

  return v11(v12);
}

id sub_24095488C()
{
  v1 = [v0 navigationController];
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];

  [v2 setPresentationType_];
  v5[4] = sub_240955B80;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_219;
  v3 = _Block_copy(v5);
  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

uint64_t sub_240954988(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_240A2C21C();
  v2[37] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[38] = v4;
  v2[39] = v3;

  return MEMORY[0x2822009F8](sub_240954A20, v4, v3);
}

uint64_t sub_240954A20()
{
  v1 = v0[36];
  v2 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v0[40] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  strcpy((inited + 32), "userAgeRange");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = v7;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BB00, &unk_240A38260);
  v8 = sub_240A2BE9C();

  [v2 setAdditionalParameters_];

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  v0[41] = __swift_project_value_buffer(v9, qword_27E50C4C0);
  v10 = v2;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C29C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_2408FE000, v11, v12, "Performing circle request with context: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v16 = v0[35];

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_240954DA8;
  v17 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_240A271E4;
  v0[23] = &block_descriptor_216;
  v0[24] = v17;
  [v16 performWithContext:v10 completion:v0 + 20];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240954DA8()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240954EB0, v2, v1);
}

uint64_t sub_240954EB0()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);

  v3 = *(v0 + 272);
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_2408FE000, v4, v5, "Finished performing circle request with response: %@", v6, 0xCu);
    sub_240919300(v7, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_240954FF8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_240A2C21C();
  v2[8] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v2[9] = v6;
  v2[10] = v5;

  return MEMORY[0x2822009F8](sub_2409550CC, v6, v5);
}

uint64_t sub_2409550CC()
{
  v32 = v0;
  if ([*(v0 + 32) success])
  {
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_2409554E8;
    v2 = *(v0 + 40);

    return sub_240955BA0();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 32);

    v6 = [v5 error];
    if (v6 && (v7 = v6, swift_willThrow(), type metadata accessor for Code(0), *(v0 + 24) = -1018, sub_24096471C(&qword_27E50B220, type metadata accessor for Code), v8 = sub_240A2949C(), v7, (v8 & 1) != 0))
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v9 = sub_240A2B00C();
      __swift_project_value_buffer(v9, qword_27E50C4C0);
      v10 = sub_240A2AFFC();
      v11 = sub_240A2C28C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2408FE000, v10, v11, "User cancelled teen settings controller, we are to do nothing for now", v12, 2u);
        MEMORY[0x245CCDDB0](v12, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AEE0 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 32);
      v14 = sub_240A2B00C();
      __swift_project_value_buffer(v14, qword_27E50C4C0);
      v15 = v13;
      v16 = sub_240A2AFFC();
      v17 = sub_240A2C2AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = *(v0 + 32);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        *(v0 + 16) = [v18 error];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
        v21 = sub_240A2BF9C();
        v23 = sub_240925464(v21, v22, &v31);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2408FE000, v16, v17, "Failed to configure teen settings with error: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x245CCDDB0](v20, -1, -1);
        MEMORY[0x245CCDDB0](v19, -1, -1);
      }

      v24 = [*(v0 + 32) error];
      if (!v24)
      {
        sub_240915CF8();
        v24 = swift_allocError();
        *v25 = xmmword_240A32320;
      }

      v26 = *(v0 + 48);
      v27 = *(v0 + 56);
      v28 = *(v0 + 40);
      *v27 = v24;
      swift_storeEnumTagMultiPayload();
      sub_24094EC60(v27);
      sub_240919300(v27, &qword_27E50C6E0, &qword_240A32F18);
    }

    v29 = *(v0 + 56);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2409554E8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_240955608, v4, v3);
}

uint64_t sub_240955608()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_240955670(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v20 - v5;
  if ([a1 sender])
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2408FE000, v10, v11, "ConnectToFamilyViewController present teen safety features", v12, 2u);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    v13 = sub_240A2C24C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_240919298(v23, &v21, &qword_27E50C6D0, &unk_240A33620);
    sub_240A2C21C();
    v14 = v8;
    v15 = sub_240A2C20C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v14;
    v18 = v22;
    *(v16 + 40) = v21;
    *(v16 + 56) = v18;
    sub_2409230D4(0, 0, v6, &unk_240A32EE8, v16);
  }

  return sub_240919300(v23, &qword_27E50C6D0, &unk_240A33620);
}

uint64_t sub_24095590C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_240A2C21C();
  v5[3] = sub_240A2C20C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_2409559C8;

  return sub_240953064(a5);
}

uint64_t sub_2409559C8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240964C10, v5, v4);
}

void sub_240955B04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_240956298(0);
    [v1 presentViewController:v2 animated:1 completion:0];
  }
}

uint64_t sub_240955BA0()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_240A2C21C();
  v1[11] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240955C74, v5, v4);
}

uint64_t sub_240955C74()
{
  v1 = v0[11];

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully completed setting up teen safety settings", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v0[8];

  v7 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = sub_240A2AB3C();
  v12 = sub_240A2AB3C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  v15 = os_log_type_enabled(v13, v14);
  if (v11 == v12)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "In buddy flow, presenting ReadyForTeenViewController", v16, 2u);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v17 = v0[8];

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = objc_allocWithZone(type metadata accessor for ReadyForTeenViewController());
    v20 = ReadyForTeenViewController.init(completionHandler:)(sub_24096439C, v18);
    v21 = [v17 navigationController];
    if (v21)
    {
      v22 = v21;
      [v21 pushViewController:v20 animated:1];
    }

    else
    {
    }
  }

  else
  {
    if (v15)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Not in buddy flow, skipping ReadyForTeenViewController and calling completion directly", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];

    *v24 = xmmword_240A32CF0;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v24);
    sub_240919300(v24, &qword_27E50C6E8, &qword_240A32F28);
  }

  v27 = v0[10];

  v28 = v0[1];

  return v28();
}

uint64_t sub_240955FA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E8, &qword_240A32F28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  if (!a1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C4C0);
    v10 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v10, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v10, v17, "ReadyForTeenViewController completed successfully", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    goto LABEL_10;
  }

  v7 = a1;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50C4C0);
  v9 = a1;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C2AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2408FE000, v10, v11, "ReadyForTeenViewController completed with error: %@", v12, 0xCu);
    sub_240919300(v13, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v13, -1, -1);
    MEMORY[0x245CCDDB0](v12, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    *v6 = xmmword_240A32CF0;
    swift_storeEnumTagMultiPayload();
    sub_24094F070(v6);

    return sub_240919300(v6, &qword_27E50C6E8, &qword_240A32F28);
  }

  return result;
}

id sub_240956298(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v69 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v69 - v19;
  v21 = [objc_opt_self() deviceIsiPad];
  v71 = v9;
  if (v21)
  {
    v22 = sub_240A2BF1C();
    v73 = [objc_opt_self() alertControllerWithTitle:v22 message:0 preferredStyle:1];
  }

  else
  {
    v73 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  }

  v72 = sub_240A2BFEC();
  v23 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (!v24)
  {
    v32 = sub_240A2962C();
    (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
LABEL_10:
    sub_240919300(v20, &unk_27E50DCE0, &qword_240A32E20);
    goto LABEL_12;
  }

  v70 = ObjectType;
  v25 = v1;
  v26 = v23;
  v27 = v13;
  v28 = [v24 pendingDOB];
  v29 = a1;
  if (v28)
  {
    v30 = v28;
    sub_240A295FC();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v33 = sub_240A2962C();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v17, v31, 1, v33);
  sub_24093A86C(v17, v20, &unk_27E50DCE0, &qword_240A32E20);
  v35 = (*(v34 + 48))(v20, 1, v33);
  a1 = v29;
  v13 = v27;
  v23 = v26;
  v1 = v25;
  ObjectType = v70;
  if (v35 == 1)
  {
    goto LABEL_10;
  }

  sub_240919300(v20, &unk_27E50DCE0, &qword_240A32E20);

  sub_240A2BFEC();
LABEL_12:
  sub_240A2BFEC();

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1 & 1;
  *(v37 + 32) = ObjectType;

  v38 = sub_240A2BF1C();

  v78 = sub_240963D80;
  v79 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2409DFF20;
  v77 = &block_descriptor_81;
  v39 = _Block_copy(&aBlock);

  v40 = objc_opt_self();
  v41 = [v40 actionWithTitle:v38 style:0 handler:v39];
  _Block_release(v39);

  v42 = v73;
  [v73 addAction_];

  if (*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable) == 1)
  {
    sub_240A2BFEC();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v44 = sub_240A2BF1C();

    v78 = sub_240963DA8;
    v79 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2409DFF20;
    v77 = &block_descriptor_97;
    v45 = _Block_copy(&aBlock);

    v46 = [v40 actionWithTitle:v44 style:0 handler:v45];
    v47 = v45;
    v42 = v73;
    _Block_release(v47);

    [v42 addAction_];
  }

  v48 = *(v1 + v23);
  if (v48)
  {
    v49 = [v48 pendingDOB];
    if (v49)
    {
      v50 = v71;
      v51 = v49;
      sub_240A295FC();

      v52 = 0;
    }

    else
    {
      v52 = 1;
      v50 = v71;
    }

    v55 = sub_240A2962C();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v50, v52, 1, v55);
    sub_24093A86C(v50, v13, &unk_27E50DCE0, &qword_240A32E20);
    v57 = (*(v56 + 48))(v13, 1, v55);
    v54 = &off_278CB1000;
    if (v57 != 1)
    {
      sub_240919300(v13, &unk_27E50DCE0, &qword_240A32E20);
      sub_240A2BFEC();
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v59 = sub_240A2BF1C();

      v78 = sub_240963DA0;
      v79 = v61;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v60 = &block_descriptor_93;
      goto LABEL_22;
    }
  }

  else
  {
    v53 = sub_240A2962C();
    (*(*(v53 - 8) + 56))(v13, 1, 1, v53);
    v54 = &off_278CB1000;
  }

  sub_240919300(v13, &unk_27E50DCE0, &qword_240A32E20);
  sub_240A2BFEC();
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v59 = sub_240A2BF1C();

  v78 = sub_240963D90;
  v79 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v60 = &block_descriptor_85;
LABEL_22:
  v76 = sub_2409DFF20;
  v77 = v60;
  v62 = _Block_copy(&aBlock);

  v63 = [v40 v54[85]];
  _Block_release(v62);

  [v42 addAction_];
  sub_240A2BFEC();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v65 = sub_240A2BF1C();

  v78 = sub_240963D98;
  v79 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v75 = 1107296256;
  v76 = sub_2409DFF20;
  v77 = &block_descriptor_89;
  v66 = _Block_copy(&aBlock);

  v67 = [v40 v54[85]];
  _Block_release(v66);

  [v42 addAction_];
  return v42;
}
uint64_t objectdestroy_22Tm()
{
  sub_199ABA1F8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_199ABC5BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C70);

  return sub_199AB9F10(a1);
}

uint64_t objectdestroy_89Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_199ABC6BC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C78);

  return sub_199AB7E88(a1);
}

uint64_t get_enum_tag_for_layout_string_10ContactsUI19CNPosterSnapshotterC12SnapshotTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199ABC788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_199ABC7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_199ABC818(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_199ABC848()
{
  result = qword_1EAF72C80;
  if (!qword_1EAF72C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72C80);
  }

  return result;
}

id CNWallpaperUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNWallpaperUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNWallpaperUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s10ContactsUI20CNWallpaperUtilitiesC28supportsWatchImageDataRepair3forSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000028 && 0x8000000199E45740 == a2 || (sub_199DFA99C() & 1) != 0 || a1 == 0xD00000000000002CLL && 0x8000000199E456C0 == a2 || (sub_199DFA99C() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD00000000000002ELL && 0x8000000199E45770 == a2)
  {
    return 0;
  }

  sub_199DFA99C();
  return 0;
}

uint64_t sub_199ABCB28()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86E10);
  __swift_project_value_buffer(v0, qword_1EAF86E10);
  return sub_199DF803C();
}

uint64_t sub_199ABCCA4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_199ABCD04(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_199ABCD9C;
}

void sub_199ABCD9C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_199ABCEDC()
{
  v1 = *(v0 + OBJC_IVAR___CNUIVisualIdentityEditorViewController_model);
  swift_getKeyPath();
  sub_199ABEA8C();

  sub_199DF73AC();

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_199ABCFEC(void *a1)
{

  sub_199ABEB30(a1);
}

uint64_t sub_199ABD03C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___CNUIVisualIdentityEditorViewController_model);
  swift_getKeyPath();
  sub_199ABEA8C();

  sub_199DF73AC();

  v4 = *(v3 + 16);

  *a2 = v4;
  return result;
}

uint64_t sub_199ABD0E4(id *a1)
{
  v1 = *a1;

  sub_199ABEB30(v1);
}

uint64_t (*sub_199ABD140(void *a1))(void **a1, char a2)
{
  v3 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_model;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  swift_getKeyPath();
  a1[1] = v4;
  sub_199ABEA8C();

  sub_199DF73AC();

  v5 = *(v4 + 16);

  *a1 = v5;
  return sub_199ABD200;
}

uint64_t sub_199ABD200(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;

    sub_199ABEB30(v3);
  }

  else
  {

    sub_199ABEB30(v2);
  }
}

id VisualIdentityEditorViewController.__allocating_init(contact:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.init(contact:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v3 = sub_199ABED24(a1, 2, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id VisualIdentityEditorViewController.__allocating_init(contact:configuration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, 2, 0, a2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id VisualIdentityEditorViewController.init(contact:configuration:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 2, 0, a2);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.__allocating_init(contact:isMeContact:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, a2 & 1, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id VisualIdentityEditorViewController.init(contact:isMeContact:)(void *a1, char a2)
{
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, a2 & 1, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.__allocating_init(contact:saveChangesToContactStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v5 = sub_199ABED24(a1, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id VisualIdentityEditorViewController.init(contact:saveChangesToContactStore:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v3 = sub_199ABED24(a1, 0, 0, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id VisualIdentityEditorViewController.__allocating_init(contact:isMeContact:saveChangesToContactStore:)(void *a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v9 = sub_199ABED24(a1, a2 & 1, a3, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

id VisualIdentityEditorViewController.init(contact:isMeContact:saveChangesToContactStore:)(void *a1, char a2, char a3)
{
  v6 = objc_allocWithZone(type metadata accessor for VisualIdentityEditorViewController());
  v7 = sub_199ABED24(a1, a2 & 1, a3, 0);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

void sub_199ABDC28()
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8);
  v2 = MEMORY[0x1EEE9AC00](v83, v1);
  v84 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v4);
  v85 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CC0);
  v87 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v82 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v79 - v11;
  v13 = sub_199DF796C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v79 - v24;
  sub_199DF78EC();
  v88 = v25;
  v89 = v0;
  v26 = *&v0[OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration];
  v86 = v13;
  if (v26)
  {
    v27 = v26;
    if ([v27 includeRecents])
    {
      sub_199DF794C();
      sub_199DF791C();
      v28 = *(v14 + 8);
      v29 = v86;
      v28(v18, v86);
      v28(v22, v29);
      v25 = v88;
    }

    if ([v27 allowPhotoFromLibrary])
    {
      sub_199DF793C();
      sub_199DF791C();
      v30 = *(v14 + 8);
      v31 = v86;
      v30(v18, v86);
      v30(v22, v31);
      v25 = v88;
    }

    if ([v27 includeAnimoji])
    {
      sub_199DF792C();
      sub_199DF791C();
      v32 = *(v14 + 8);
      v33 = v86;
      v32(v18, v86);
      v32(v22, v33);
      v25 = v88;
    }

    if ([v27 includeMonograms])
    {
      sub_199DF795C();
      sub_199DF791C();
      v34 = *(v14 + 8);
      v35 = v86;
      v34(v18, v86);
      v34(v22, v35);
      v25 = v88;
    }

    if ([v27 includeEmoji])
    {
      sub_199DF790C();
      sub_199DF791C();

      v36 = *(v14 + 8);
      v13 = v86;
      v36(v18, v86);
      v36(v22, v13);
    }

    else
    {

      v13 = v86;
    }
  }

  else
  {
    sub_199DF78FC();
    (*(v14 + 8))(v25, v13);
    (*(v14 + 32))(v25, v22, v13);
  }

  v37 = v89;
  type metadata accessor for VisualIdentityEditorViewController.Model();
  sub_199ABEA8C();

  sub_199DF9A3C();
  v38 = v82;
  v81 = v12;
  sub_199DF9A2C();
  swift_getKeyPath();
  sub_199DF9A4C();

  v39 = *(v87 + 8);
  v82 = v6;
  v87 += 8;
  v79 = v39;
  v39(v38, v6);
  v80 = v14;
  (*(v14 + 16))(v22, v25, v13);
  v40 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  sub_199DF81AC();
  [v40 init];
  v41 = v85;
  sub_199DF789C();
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v84;
  v45 = (v41 + *(v83 + 36));
  *v45 = KeyPath;
  v45[1] = sub_199ABF2F0;
  v45[2] = v43;
  sub_199ABF2F8(v41, v44);
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CC8));
  v47 = sub_199DF8DFC();
  [v37 addChildViewController_];
  v48 = [v37 view];
  if (!v48)
  {
    __break(1u);
    goto LABEL_28;
  }

  v49 = v48;
  v50 = [v47 view];
  if (!v50)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v51 = v50;
  [v49 addSubview_];

  v52 = [v47 view];
  if (!v52)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v53 = [objc_opt_self() clearColor];
  [v52 setBackgroundColor_];

  v54 = [v47 view];
  if (!v54)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v54 setTranslatesAutoresizingMaskIntoConstraints_];

  v55 = [v47 view];
  if (!v55)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v56 = [v55 topAnchor];

  v57 = [v89 view];
  if (!v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  [v60 setActive_];

  v61 = [v47 view];
  if (!v61)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v62 = [v61 bottomAnchor];

  v63 = [v89 view];
  if (!v63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v64 = v63;
  v65 = [v63 bottomAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  [v66 setActive_];

  v67 = [v47 view];
  if (!v67)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v68 = [v67 rightAnchor];

  v69 = [v89 view];
  if (!v69)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v70 = v69;
  v71 = [v69 rightAnchor];

  v72 = [v68 constraintEqualToAnchor_];
  [v72 setActive_];

  v73 = [v47 view];
  if (!v73)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v74 = [v73 leftAnchor];

  v75 = [v89 view];
  if (v75)
  {
    v76 = v75;
    v77 = [v75 leftAnchor];

    v78 = [v74 constraintEqualToAnchor_];
    [v78 setActive_];

    [v47 didMoveToParentViewController_];
    sub_199ABF368(v85);
    v79(v81, v82);
    (*(v80 + 8))(v88, v86);
    return;
  }

LABEL_38:
  __break(1u);
}

id sub_199ABE704@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199ABEA8C();
  sub_199DF73AC();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_199ABE78C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_199DF8A1C();
}

void sub_199ABE7F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 visualIdentityEditorViewControllerDidFinishEditing_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id VisualIdentityEditorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_199DF9F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VisualIdentityEditorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisualIdentityEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199ABEA0C()
{
  swift_getKeyPath();
  sub_199ABEA8C();
  sub_199DF73AC();

  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_199ABEA8C()
{
  result = qword_1EAF718C8;
  if (!qword_1EAF718C8)
  {
    type metadata accessor for VisualIdentityEditorViewController.Model();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF718C8);
  }

  return result;
}

uint64_t type metadata accessor for VisualIdentityEditorViewController.Model()
{
  result = qword_1EAF718B8;
  if (!qword_1EAF718B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199ABEB30(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_199A7DDB0();
  v5 = v4;
  v6 = sub_199DFA4EC();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_199ABEA8C();
    sub_199DF739C();
  }
}

uint64_t sub_199ABEC80()
{
  v1 = OBJC_IVAR____TtCC10ContactsUI34VisualIdentityEditorViewControllerP33_8A227A4341952196F9E06C569271B7245Model___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_199ABED24(void *a1, char a2, char a3, void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration;
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_configuration] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for VisualIdentityEditorViewController.Model();
  v11 = swift_allocObject();
  v12 = a1;
  sub_199DF73DC();
  *(v11 + 16) = v12;
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_model] = v11;
  v13 = *&v5[v10];
  *&v5[v10] = a4;
  v14 = a4;

  v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_isMeContact] = a2;
  v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_saveChangesToContactStore] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CD0);
  v15 = sub_199DF77BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_199E37D40;
    (*(v16 + 104))(v19 + v18, *MEMORY[0x1E6996948], v15);
    v20 = sub_199B6A238(v19);
    swift_setDeallocating();
    (*(v16 + 8))(v19 + v18, v15);
  }

  else
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_199E39320;
    v22 = v21 + v18;
    v23 = *(v16 + 104);
    v23(v22, *MEMORY[0x1E6996948], v15);
    v23(v22 + v17, *MEMORY[0x1E6996950], v15);
    v20 = sub_199B6A238(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  *&v5[OBJC_IVAR___CNUIVisualIdentityEditorViewController_supportedIdentityTypes] = v20;
  if (qword_1EAF718B0 != -1)
  {
    swift_once();
  }

  v24 = sub_199DF804C();
  __swift_project_value_buffer(v24, qword_1EAF86E10);
  v25 = v12;
  v26 = sub_199DF802C();
  v27 = sub_199DFA33C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    v30 = [v25 identifier];
    v31 = sub_199DF9F8C();
    v33 = v32;

    v34 = sub_199A9BE90(v31, v33, &v37);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_199A75000, v26, v27, "Editor init for contact with identifier: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x19A8FA1A0](v29, -1, -1);
    MEMORY[0x19A8FA1A0](v28, -1, -1);
  }

  v35 = type metadata accessor for VisualIdentityEditorViewController();
  v38.receiver = v5;
  v38.super_class = v35;
  return objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_199ABF250()
{
  result = sub_199DF73EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_199ABF2F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ABF368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_199ABF3E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_199ABF418()
{
  qword_1EAF72CF8 = 0;
  qword_1EAF72CD8 = 0;
  byte_1EAF72CE0 = 1;
  qword_1EAF72CE8 = 0;
  byte_1EAF72CF0 = 1;
}

uint64_t ContactAccessButton.Style.init(imageTrailingEdgePadding:imageWidth:imageColor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return result;
}

uint64_t sub_199ABF45C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71E18 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = byte_1EAF72CE0;
  v3 = qword_1EAF72CE8;
  v4 = byte_1EAF72CF0;
  v5 = qword_1EAF72CF8;
  *a1 = qword_1EAF72CD8;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t sub_199ABF500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199AC4844();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_199ABF564()
{
  sub_199AC6214();

  return sub_199DF8C9C();
}

uint64_t sub_199ABF5AC()
{
  sub_199AC61C0();

  return sub_199DF8C9C();
}

uint64_t sub_199ABF5F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  __swift_allocate_value_buffer(v0, qword_1EAF86F58);
  __swift_project_value_buffer(v0, qword_1EAF86F58);
  return sub_199DF836C();
}

uint64_t sub_199ABF6A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  __swift_allocate_value_buffer(v0, qword_1EAF86F70);
  __swift_project_value_buffer(v0, qword_1EAF86F70);
  return sub_199DF836C();
}

uint64_t sub_199ABF754@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13[-v10];
  sub_199AA0B90(&qword_1EAF71500, &qword_1EAF72E50);
  sub_199DF715C();
  v13[15] = 0;
  sub_199DF714C();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E58);
  a1[4] = sub_199AC5B28();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_199AA0B90(&qword_1EAF72E70, &qword_1EAF72E48);
  sub_199DF70FC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_199ABFA44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_199AC5C64();
  result = MEMORY[0x19A8F5EF0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

ContactsUI::ContactAccessButton::Caption_optional __swiftcall ContactAccessButton.Caption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_199DFA8DC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactAccessButton.Caption.rawValue.getter()
{
  v1 = 0x656E6F6870;
  if (*v0 != 1)
  {
    v1 = 0x54746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C69616D65;
  }
}

uint64_t sub_199ABFB3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x54746C7561666564;
    v4 = 0xEB00000000747865;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C69616D65;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x656E6F6870;
  if (*a2 != 1)
  {
    v8 = 0x54746C7561666564;
    v3 = 0xEB00000000747865;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_199DFA99C();
  }

  return v11 & 1;
}

uint64_t sub_199ABFC40()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

uint64_t sub_199ABFCE4()
{
  sub_199DF9FEC();
}

uint64_t sub_199ABFD74()
{
  sub_199DFAA7C();
  sub_199DF9FEC();

  return sub_199DFAABC();
}

void sub_199ABFE20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656E6F6870;
  if (v2 != 1)
  {
    v5 = 0x54746C7561666564;
    v4 = 0xEB00000000747865;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_199ABFE80()
{
  qword_1EAF72D20 = 0;
  qword_1EAF72D00 = 0;
  byte_1EAF72D08 = 1;
  qword_1EAF72D10 = 0;
  byte_1EAF72D18 = 1;
}

uint64_t static ContactAccessButton.Style.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71E30 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = byte_1EAF72D08;
  v3 = qword_1EAF72D10;
  v4 = byte_1EAF72D18;
  v5 = qword_1EAF72D20;
  *a1 = qword_1EAF72D00;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
}

uint64_t ContactAccessButton.init(queryString:ignoredEmails:ignoredPhoneNumbers:approvalCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v49 = a6;
  v46 = a2;
  v47 = a4;
  v44 = a3;
  v45 = a1;
  v8 = sub_199DFA40C();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D28);
  v13 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v14);
  v16 = &v41 - v15;
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 40) = 0;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0;
  *(a7 + 64) = swift_getKeyPath();
  *(a7 + 72) = 0;
  *(a7 + 80) = swift_getKeyPath();
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0u;
  *(a7 + 120) = 0;
  *(a7 + 128) = swift_getKeyPath();
  *(a7 + 136) = 0;
  v17 = type metadata accessor for ContactAccessButton();
  v18 = v17[11];
  *(a7 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  swift_storeEnumTagMultiPayload();
  v19 = v17[12];
  *(a7 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38);
  swift_storeEnumTagMultiPayload();
  v20 = v17[13];
  *(a7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40);
  swift_storeEnumTagMultiPayload();
  v21 = v17[16];
  v22 = MEMORY[0x1E69E7CD0];
  *(a7 + v21) = MEMORY[0x1E69E7CD0];
  v23 = v17[17];
  *(a7 + v23) = v22;
  v24 = v17[18];
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 orientation];

  v50 = v26;
  type metadata accessor for UIDeviceOrientation(0);
  sub_199DF983C();
  *(a7 + v24) = v51;
  v27 = v17[19];
  v28 = [objc_opt_self() defaultCenter];
  sub_199DFA41C();

  sub_199AC616C(&qword_1EAF71080, MEMORY[0x1E6969F20]);
  v29 = v42;
  sub_199DF847C();
  (*(v43 + 8))(v12, v29);
  sub_199AA0B90(&qword_1EAF72D48, &qword_1EAF72D28);
  v30 = v41;
  v31 = sub_199DF83CC();
  (*(v13 + 8))(v16, v30);
  v32 = v44;
  v33 = v45;
  *(a7 + v27) = v31;
  v34 = (a7 + v17[14]);
  v35 = v46;
  *v34 = v33;
  v34[1] = v35;
  if (v32)
  {
    *(a7 + v21) = v32;
  }

  if (v47)
  {
    *(a7 + v23) = v47;
  }

  v36 = (a7 + v17[21]);
  v37 = v49;
  *v36 = v48;
  v36[1] = v37;
  v38 = a7 + v17[15];
  LOBYTE(v50) = 0;
  result = sub_199DF983C();
  v40 = *(&v51 + 1);
  *v38 = v51;
  *(v38 + 8) = v40;
  return result;
}

uint64_t ContactAccessButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v3 = type metadata accessor for ContactAccessButton();
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v99 = v5;
  v100 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF71BC();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v94 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D50);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v91 = &v90 - v11;
  v12 = sub_199DF857C();
  v13 = *(v12 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v113 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v112 = &v90 - v18;
  v110 = sub_199DF8C6C();
  v19 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v20);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_199AC1F14(*(v1 + 16), *(v1 + 24), 0xEF3E726F6C6F433CLL, j_j__swift_release))
  {
    sub_199DF96CC();
  }

  v109 = v19;
  v111 = sub_199A7A02C(0, &qword_1EAF71C10);
  v93 = sub_199DFA4CC();
  v23 = sub_199AC20F0(*(v1 + 48), *(v1 + 56));
  if (v23)
  {
    *&v130 = v23;
    sub_199AC2DAC(v22);
    v24 = sub_199DF855C();
    (*(v109 + 8))(v22, v110);
  }

  else
  {
    v24 = 0;
  }

  v114 = v3;
  v105 = *(v3 + 48);
  v25 = v112;
  sub_199AC2B24(v112);
  v26 = *(v13 + 104);
  v27 = v113;
  LODWORD(v103) = *MEMORY[0x1E697DBB8];
  v104 = (v13 + 104);
  v102 = v26;
  (v26)(v113);
  v28 = sub_199DF856C();
  v29 = *(v13 + 8);
  (v29)(v27, v12);
  v106 = v29;
  v107 = (v13 + 8);
  (v29)(v25, v12);
  if (v28)
  {
    v30 = sub_199DF971C();
  }

  else
  {
    v30 = sub_199DF96EC();
  }

  v31 = v110;
  v97 = v30;
  v108 = v12;
  if (!v24)
  {
  }

  v32 = v109;
  v110 = v24;

  v92 = sub_199DFA4CC();
  *&v130 = sub_199A7B8E8(*(v2 + 32), *(v2 + 40));
  sub_199AC2DAC(v22);
  v33 = sub_199DF855C();
  v34 = *(v32 + 8);
  v34(v22, v31);

  if (v33)
  {

    sub_199AC2DAC(v22);
    sub_199DF974C();

    v34(v22, v31);
  }

  v35 = v112;
  sub_199AC2B24(v112);
  v36 = v113;
  v37 = v108;
  (v102)(v113, v103, v108);
  v38 = sub_199DF856C();
  v39 = v106;
  (v106)(v36, v37);
  (v39)(v35, v37);
  if (v38)
  {
    v40 = sub_199DF96EC();
  }

  else
  {
    v40 = sub_199DF971C();
  }

  v41 = v40;
  v109 = v33;
  if (v33)
  {
    result = sub_199DF975C();
  }

  else
  {
    result = sub_199DF968C();
    if (!result)
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v43 = result;
  v44 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v45 = *(v2 + 96);
  v130 = *(v2 + 80);
  v131[0] = v45;
  *(v131 + 9) = *(v2 + 105);
  sub_199AC2488(&v128);
  v113 = v44;
  if (!*&v129[16])
  {
    v111 = 0;
    goto LABEL_23;
  }

  v46 = *(v2 + 96);
  v128 = *(v2 + 80);
  *v129 = v46;
  *&v129[9] = *(v2 + 105);
  sub_199AC2488(&v126);
  result = *&v127[1];
  if (!*&v127[1])
  {
    __break(1u);
    goto LABEL_32;
  }

  v111 = sub_199DFA4CC();
LABEL_23:
  v47 = v91;
  sub_199AC2898(v91);
  v48 = sub_199DF884C();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v108 = sub_199DFA42C();
  v49 = *(v2 + 96);
  v126 = *(v2 + 80);
  v127[0] = v49;
  *(v127 + 9) = *(v2 + 105);
  sub_199AC2488(&v121);
  v106 = v121;
  LODWORD(v107) = v122;

  v50 = *(v2 + 96);
  v124 = *(v2 + 80);
  v125[0] = v50;
  *(v125 + 9) = *(v2 + 105);
  sub_199AC2488(v117);
  v104 = v119;
  LODWORD(v105) = v120;

  v51 = sub_199AC1F14(*v2, *(v2 + 8), 0xEE003E746E6F463CLL, j_j__swift_release);
  v112 = v41;
  if (!v51)
  {
    sub_199DF920C();
  }

  v52 = sub_199AC4408();

  sub_199AC26C0(*(v2 + 128), *(v2 + 136), &v116);
  if (v116)
  {
    if (v116 == 1)
    {
      v53 = 0xE500000000000000;
      v54 = 0x656E6F6870;
    }

    else
    {
      v53 = 0xEB00000000747865;
      v54 = 0x54746C7561666564;
    }
  }

  else
  {
    v53 = 0xE500000000000000;
    v54 = 0x6C69616D65;
  }

  v55 = [objc_opt_self() mainBundle];
  v56 = [v55 bundleURL];

  v57 = v94;
  sub_199DF719C();

  v58 = sub_199DF71AC();
  v60 = v59;
  (*(v95 + 8))(v57, v96);
  v61 = sub_199AC22BC(*(v2 + 64), *(v2 + 72));
  v62 = type metadata accessor for ContactsButtonSlotTraits();
  v63 = objc_allocWithZone(v62);
  v64 = &v63[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v64 = v58;
  v64[1] = v60;
  v65 = v92;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v92;
  v66 = v113;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v113;
  v67 = v111;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v111;
  v68 = &v63[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v68 = v106;
  v68[8] = v107;
  v69 = &v63[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v69 = v104;
  v69[8] = v105;
  v70 = &v63[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v70 = v54;
  v70[1] = v53;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_font] = v52;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = v61;
  v71 = v108;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = v108;
  v72 = v93;
  *&v63[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = v93;
  v115.receiver = v63;
  v115.super_class = v62;
  v108 = v71;
  v107 = v72;
  v106 = v67;
  v105 = v66;
  v104 = v65;
  v73 = objc_msgSendSuper2(&v115, sel_init);
  v103 = v73;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D58);
  v111 = &v90;
  MEMORY[0x1EEE9AC00](v113, v74);
  v76 = &v90 - v75;
  *v76 = sub_199DF8D4C();
  *(v76 + 1) = 0;
  v76[16] = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D60);
  sub_199AC10FC(v73, v2, &v76[*(v77 + 44)]);
  v78 = v100;
  v102 = type metadata accessor for ContactAccessButton;
  sub_199AC5FEC(v2, v100, type metadata accessor for ContactAccessButton);
  v79 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v80 = swift_allocObject();
  sub_199AC4644(v78, v80 + v79);
  v81 = &v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D68) + 36)];
  *v81 = 0;
  *(v81 + 1) = 0;
  *(v81 + 2) = sub_199AC46A8;
  *(v81 + 3) = v80;
  v82 = v114;
  v83 = *(v2 + *(v114 + 76));
  sub_199AC5FEC(v2, v78, type metadata accessor for ContactAccessButton);
  v84 = swift_allocObject();
  sub_199AC4644(v78, v84 + v79);
  v85 = v113;
  *&v76[*(v113 + 13)] = v83;
  v86 = &v76[*(v85 + 14)];
  *v86 = sub_199AC4708;
  v86[1] = v84;
  v87 = v2 + *(v82 + 60);
  LOBYTE(v85) = *v87;
  v88 = *(v87 + 8);
  v117[0] = v85;
  v118 = v88;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  LODWORD(v114) = v123;
  sub_199AC5FEC(v2, v78, v102);
  v89 = swift_allocObject();
  sub_199AC4644(v78, v89 + v79);
  type metadata accessor for LimitedLibraryPickerHostView(0);
  sub_199AC47E8();
  sub_199AC616C(&qword_1EAF73D30, type metadata accessor for LimitedLibraryPickerHostView);
  sub_199DF95DC();

  return sub_199A79A04(v76, &qword_1EAF72D58);
}

uint64_t sub_199AC10FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v69 = a3;
  v4 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v67 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RepresentableSlotView(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB8);
  MEMORY[0x1EEE9AC00](v61, v15);
  v17 = &v55 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EC0);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v18);
  v60 = &v55 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EC8);
  MEMORY[0x1EEE9AC00](v65, v20);
  v66 = &v55 - v21;
  v22 = type metadata accessor for ContactAccessButton();
  v23 = (a2 + v22[14]);
  v24 = v23[1];
  v59 = *v23;
  v70 = *(a2 + v22[18]);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB0);
  sub_199DF984C();
  v58 = v72;
  v25 = (a2 + v22[15]);
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v72) = v26;
  v73 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v56 = *(&v70 + 1);
  v57 = v70;
  v28 = *(a2 + v22[16]);
  v29 = *(a2 + v22[17]);
  v30 = v71;
  v31 = (a2 + v22[21]);
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v11 + 52);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199A9A57C(v32);
  if (qword_1EAF71EF8 != -1)
  {
    swift_once();
  }

  v35 = sub_199DF804C();
  v36 = __swift_project_value_buffer(v35, qword_1EAF87058);
  (*(*(v35 - 8) + 16))(&v14[v34], v36, v35);
  *(v14 + 4) = v28;
  *(v14 + 5) = v29;
  *(v14 + 2) = v59;
  *(v14 + 3) = v24;
  v37 = v56;
  *(v14 + 6) = v57;
  *(v14 + 7) = v37;
  v14[64] = v30;
  *(v14 + 9) = v32;
  *(v14 + 10) = v33;
  v38 = v63;
  v39 = v58;
  *v14 = v63;
  *(v14 + 1) = v39;
  sub_199AC5FEC(v14, v17, type metadata accessor for RepresentableSlotView);
  v40 = v61;
  *&v17[*(v61 + 36)] = 256;
  v41 = v38;
  sub_199AC6054(v14);
  v42 = sub_199DF8FFC();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v55 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v47 = sub_199AC60B0();
  v48 = v60;
  sub_199DF956C();
  (*(v43 + 8))(v46, v42);
  sub_199A79A04(v17, &qword_1EAF72EB8);
  *&v70 = v40;
  *(&v70 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v64;
  sub_199DF959C();
  (*(v62 + 8))(v48, v50);
  sub_199DF9EEC();
  v51 = sub_199DF9F5C();
  v52 = [objc_opt_self() bundleWithIdentifier_];

  sub_199DF72AC();
  *&v70 = sub_199DF9FAC();
  *(&v70 + 1) = v53;
  sub_199A9C458();
  sub_199DF887C();

  return sub_199A79A04(v49, &qword_1EAF72EC8);
}

uint64_t sub_199AC1754()
{
  v0 = sub_199DF823C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6982AE8], v0);
  sub_199AC5C64();
  sub_199DF80FC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_199AC184C()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 orientation];

  type metadata accessor for ContactAccessButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EB0);
  return sub_199DF985C();
}

uint64_t sub_199AC18F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8);
  v5 = MEMORY[0x1EEE9AC00](v33, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ContactAccessButton();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = (a1 + *(MEMORY[0x1EEE9AC00](v11 - 8, v14) + 64));
  v16 = v15[1];
  v32 = *v15;
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  sub_199DF81AC();
  sub_199AC26C0(v17, v18, &v38);
  if (v38)
  {
    if (v38 == 1)
    {
      v31 = 0xE500000000000000;
      v19 = 0x656E6F6870;
    }

    else
    {
      v31 = 0xEB00000000747865;
      v19 = 0x54746C7561666564;
    }
  }

  else
  {
    v31 = 0xE500000000000000;
    v19 = 0x6C69616D65;
  }

  sub_199AC5FEC(a1, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactAccessButton);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  sub_199AC4644(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_199DF983C();
  v22 = v37;
  *a2 = v36;
  *(a2 + 16) = v22;
  v23 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v24 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_199AAD408(v10, v7, &qword_1EAF72EA8);
  sub_199DF983C();
  result = sub_199A79A04(v10, &qword_1EAF72EA8);
  v26 = (a2 + v23[6]);
  v27 = v31;
  *v26 = v32;
  v26[1] = v16;
  v28 = (a2 + v23[7]);
  *v28 = v19;
  v28[1] = v27;
  *(a2 + v23[8]) = 0;
  v29 = (a2 + v23[9]);
  *v29 = sub_199AC5F7C;
  v29[1] = v21;
  return result;
}

uint64_t sub_199AC1C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAccessButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  result = sub_199DF985C();
  v6 = *(a2 + *(v4 + 84));
  if (v6)
  {

    v6(a1);
    return sub_199A9A5FC(v6);
  }

  return result;
}

uint64_t View.contactAccessButtonStyle(_:)()
{
  swift_getKeyPath();
  sub_199DF947C();
}

uint64_t sub_199AC1D60@<X0>(uint64_t a1@<X8>)
{
  sub_199AC6214();
  result = sub_199DF8C9C();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_199AC1DD0()
{
  sub_199AC6214();

  return sub_199DF8CAC();
}

uint64_t View.contactAccessButtonCaption(_:)()
{
  swift_getKeyPath();
  sub_199DF947C();
}

uint64_t sub_199AC1F14(uint64_t a1, char a2, unint64_t a3, void (*a4)(uint64_t, void))
{
  v8 = sub_199DF8C6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x6C616E6F6974704FLL, a3, &v19);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    a4(a1, 0);
    (*(v9 + 8))(v12, v8);
    return v19;
  }

  return a1;
}

uint64_t sub_199AC20F0(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_199DFA32C();
    v10 = sub_199DF912C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_199A9BE90(0xD000000000000017, 0x8000000199E45BE0, &v15);
      _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

double sub_199AC22BC(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v10 = sub_199DFA32C();
  v11 = sub_199DF912C();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = *&v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_199A9BE90(0x74616F6C464743, 0xE700000000000000, &v15);
    _os_log_impl(&dword_199A75000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x19A8FA1A0](v13, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();
  sub_199A91E28(a1, 0);
  (*(v5 + 8))(v8, v4);
  return v15;
}

uint64_t sub_199AC2488@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_199DF8C6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40) == 1)
  {
    v8 = *(v1 + 32);
    v9 = *(v1 + 24);
    v10 = *(v1 + 16);
    v11 = *(v1 + 8);
    *a1 = *v1;
    *(a1 + 8) = v11 & 1;
    *(a1 + 16) = v10;
    *(a1 + 24) = v9 & 1;
    *(a1 + 32) = v8;
    return sub_199AAD408(v1, v17, &qword_1EAF72EE0);
  }

  else
  {
    sub_199AAD408(v1, v17, &qword_1EAF72EE0);
    v13 = sub_199DFA32C();
    v14 = sub_199DF912C();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_199A9BE90(0x656C797453, 0xE500000000000000, v17);
      _os_log_impl(&dword_199A75000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x19A8FA1A0](v16, -1, -1);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A79A04(v1, &qword_1EAF72EE0);
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_199AC26C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = sub_199DF8C6C();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    sub_199AC61B4(a1, 0);
    v12 = sub_199DFA32C();
    v13 = sub_199DF912C();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_199A9BE90(0x6E6F6974706143, 0xE700000000000000, &v17);
      _os_log_impl(&dword_199A75000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x19A8FA1A0](v15, -1, -1);
      MEMORY[0x19A8FA1A0](v14, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A91E28(a1, 0);
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_199AC2898@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_199AAD408(v2, &v19 - v11, &qword_1EAF72D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF884C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_199DFA32C();
    v16 = sub_199DF912C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_199A9BE90(0x5463696D616E7944, 0xEF657A6953657079, &v20);
      _os_log_impl(&dword_199A75000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_199AC2B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_199AAD408(v2, &v19 - v11, &qword_1EAF72D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF857C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_199DFA32C();
    v16 = sub_199DF912C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_199A9BE90(0x686353726F6C6F43, 0xEB00000000656D65, &v20);
      _os_log_impl(&dword_199A75000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_199AC2DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  sub_199AAD408(v2, &v18 - v11, &qword_1EAF72D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  v14 = sub_199DFA32C();
  v15 = sub_199DF912C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_199A9BE90(0xD000000000000011, 0x8000000199E45BC0, &v19);
    _os_log_impl(&dword_199A75000, v15, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x19A8FA1A0](v17, -1, -1);
    MEMORY[0x19A8FA1A0](v16, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_199AC3010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  sub_199AAD408(v2, &v18 - v11, &qword_1EAF72E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_199AB7794(v12, a1, &qword_1EAF72EA0);
  }

  v14 = sub_199DFA32C();
  v15 = sub_199DF912C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_199A9BE90(0xD000000000000020, 0x8000000199E45B70, &v19);
    _os_log_impl(&dword_199A75000, v15, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x19A8FA1A0](v17, -1, -1);
    MEMORY[0x19A8FA1A0](v16, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_199AC3274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_199AAD408(v2, &v19 - v11, &qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF867C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_199DFA32C();
    v16 = sub_199DF912C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_199A9BE90(0x417373696D736944, 0xED00006E6F697463, &v20);
      _os_log_impl(&dword_199A75000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_199AC3500@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72318);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - v11;
  sub_199AAD408(v2, &v18 - v11, &qword_1EAF72318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_199AB7794(v12, a1, &qword_1EAF740B0);
  }

  v14 = sub_199DFA32C();
  v15 = sub_199DF912C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_199A9BE90(0xD000000000000019, 0x8000000199E45B30, &v19);
    _os_log_impl(&dword_199A75000, v15, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x19A8FA1A0](v17, -1, -1);
    MEMORY[0x19A8FA1A0](v16, -1, -1);
  }

  sub_199DF8C5C();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_199AC3764(uint64_t a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v9 = sub_199DFA32C();
    v10 = sub_199DF912C();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_199A9BE90(0xD000000000000022, 0x8000000199E45C00, &v15);
      _os_log_impl(&dword_199A75000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
      MEMORY[0x19A8FA1A0](v11, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    return v15;
  }

  return a1;
}

id sub_199AC392C(void *a1, char a2)
{
  v17 = a1;
  v3 = sub_199DF8C6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = v17;

    return v8;
  }

  else
  {

    v10 = sub_199DFA32C();
    v11 = sub_199DF912C();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      sub_199A7A02C(0, &qword_1EAF72E88);
      v14 = sub_199DFAB3C();
      v16 = sub_199A9BE90(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_199A75000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A92200(v17, 0);
    (*(v4 + 8))(v7, v3);
    return v18;
  }
}

uint64_t sub_199AC3B48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_199AAD408(v2, &v19 - v11, &unk_1EAF75060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF886C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_199DFA32C();
    v16 = sub_199DF912C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_199A9BE90(0x694474756F79614CLL, 0xEF6E6F6974636572, &v20);
      _os_log_impl(&dword_199A75000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_199AC3DD4(void *a1, char a2)
{
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a1;
  }

  else
  {

    v10 = sub_199DFA32C();
    v11 = sub_199DF912C();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E80);
      v14 = sub_199DFAB3C();
      v16 = sub_199A9BE90(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_199A75000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x19A8FA1A0](v13, -1, -1);
      MEMORY[0x19A8FA1A0](v12, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();
    sub_199A92200(a1, 0);
    (*(v5 + 8))(v8, v4);
    return v19;
  }

  return a1;
}

uint64_t sub_199AC3FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_199DF8C6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  sub_199AAD408(v2, &v19 - v11, &qword_1EAF72E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_199DF774C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_199DFA32C();
    v16 = sub_199DF912C();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_199A9BE90(0xD000000000000011, 0x8000000199E45B50, &v20);
      _os_log_impl(&dword_199A75000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
      MEMORY[0x19A8FA1A0](v17, -1, -1);
    }

    sub_199DF8C5C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_199AC4248@<X0>(void *a1@<X8>)
{
  result = sub_199DF89CC();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for ContactAccessButton()
{
  result = qword_1EAF72D98;
  if (!qword_1EAF72D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AC4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

id sub_199AC4408()
{
  sub_199DF91DC();
  v0 = sub_199DF91FC();

  if (v0)
  {
    v1 = MEMORY[0x1E69DDD58];
  }

  else
  {
    sub_199DF921C();
    v2 = sub_199DF91FC();

    if (v2)
    {
      v1 = MEMORY[0x1E69DDDB8];
    }

    else
    {
      sub_199DF929C();
      v3 = sub_199DF91FC();

      if (v3)
      {
        v1 = MEMORY[0x1E69DDDC0];
      }

      else
      {
        sub_199DF92AC();
        v4 = sub_199DF91FC();

        if (v4)
        {
          v1 = MEMORY[0x1E69DDDC8];
        }

        else
        {
          sub_199DF930C();
          v5 = sub_199DF91FC();

          if (v5)
          {
            v1 = MEMORY[0x1E69DDD40];
          }

          else
          {
            sub_199DF91EC();
            v6 = sub_199DF91FC();

            if (v6)
            {
              v1 = MEMORY[0x1E69DDD80];
            }

            else
            {
              sub_199DF92CC();
              v7 = sub_199DF91FC();

              if (v7)
              {
                v1 = MEMORY[0x1E69DDD00];
              }

              else
              {
                sub_199DF92DC();
                v8 = sub_199DF91FC();

                if (v8)
                {
                  v1 = MEMORY[0x1E69DDD08];
                }

                else
                {
                  sub_199DF92EC();
                  v9 = sub_199DF91FC();

                  if (v9)
                  {
                    v1 = MEMORY[0x1E69DDD10];
                  }

                  else
                  {
                    sub_199DF92FC();
                    v10 = sub_199DF91FC();

                    if (v10)
                    {
                      v1 = MEMORY[0x1E69DDD28];
                    }

                    else
                    {
                      sub_199DF920C();
                      sub_199DF91FC();

                      v1 = MEMORY[0x1E69DDCF8];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v11 = [objc_opt_self() preferredFontForTextStyle_];

  return v11;
}

uint64_t sub_199AC4644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAccessButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC46A8()
{
  type metadata accessor for ContactAccessButton();

  return sub_199AC1754();
}

uint64_t sub_199AC4708()
{
  type metadata accessor for ContactAccessButton();

  return sub_199AC184C();
}

uint64_t sub_199AC4778@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContactAccessButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC18F0(v4, a1);
}

unint64_t sub_199AC47E8()
{
  result = qword_1EAF72D70;
  if (!qword_1EAF72D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72D70);
  }

  return result;
}

unint64_t sub_199AC4844()
{
  result = qword_1EAF72D78;
  if (!qword_1EAF72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72D78);
  }

  return result;
}

void sub_199AC48DC()
{
  sub_199AC4E80(319, &qword_1EAF72DA8, &qword_1EAF72DB0, &unk_199E39758, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_199AC4E80(319, &qword_1EAF72DB8, &qword_1EAF72DC0, &unk_199E39760, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_199AC4CD0(319, &qword_1EAF71D80, MEMORY[0x1E697E0B8], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_199AC4E80(319, &qword_1EAF72DC8, &qword_1EAF72DD0, &unk_199E39768, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_199AC4CD0(319, &qword_1EAF713F8, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_199AC4CD0(319, &qword_1EAF72DD8, &type metadata for ContactAccessButton.Style, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_199AC4CD0(319, &qword_1EAF72DE0, &type metadata for ContactAccessButton.Caption, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_199AC4D78(319, &qword_1EAF713F0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_199AC4D78(319, &qword_1EAF72DE8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_199AC4D78(319, &qword_1EAF72DF0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_199AC4CD0(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_199AC4D20();
                        if (v11 <= 0x3F)
                        {
                          sub_199AC4D78(319, &qword_1EAF72E00, type metadata accessor for UIDeviceOrientation, MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            sub_199AC4DDC();
                            if (v13 <= 0x3F)
                            {
                              sub_199AC4E80(319, &qword_1EAF73110, &unk_1EAF74CA0, &unk_199E39770, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_199AC4CD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_199AC4D20()
{
  if (!qword_1EAF72DF8)
  {
    v0 = sub_199DFA27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72DF8);
    }
  }
}

void sub_199AC4D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_199AC4DDC()
{
  if (!qword_1EAF72E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72D28);
    sub_199AA0B90(&qword_1EAF72D48, &qword_1EAF72D28);
    v0 = sub_199DF838C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72E08);
    }
  }
}

void sub_199AC4E80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContactAccessButton.Caption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactAccessButton.Caption(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199AC5048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_199AC50A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy08ContactsB019ContactAccessButtonV5StyleVGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_199DF889C();
  sub_199AA0B90(a4, a2);
  return swift_getWitnessTable();
}

unint64_t sub_199AC51DC()
{
  result = qword_1EAF72E30;
  if (!qword_1EAF72E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E30);
  }

  return result;
}

uint64_t sub_199AC5230()
{
  v0 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_199DF9EEC();
  v4 = sub_199DF9F5C();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  sub_199DF72AC();
  sub_199DF9FAC();
  sub_199A9C458();
  return sub_199DF93CC();
}

uint64_t sub_199AC53B0()
{
  v0 = sub_199DF72BC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_199DF9F4C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_199DF9F2C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_199DF9F1C();
  sub_199DF9F0C();
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = [v7 infoDictionary];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = sub_199DF9E9C();

  result = *MEMORY[0x1E695E4F8];
  if (*MEMORY[0x1E695E4F8])
  {
    v11 = sub_199DF9F8C();
    if (*(v9 + 16))
    {
      v13 = sub_199AEF9E8(v11, v12);
      v15 = v14;

      if (v15)
      {
        sub_199A9DA04(*(v9 + 56) + 32 * v13, v19);

        swift_dynamicCast();
LABEL_8:
        sub_199DF9EFC();

        sub_199DF9F0C();
        sub_199DF9F3C();
        v16 = sub_199DF9F5C();
        v17 = [v6 bundleWithIdentifier_];

        sub_199DF72AC();
        v19[0] = sub_199DF9FAC();
        v19[1] = v18;
        sub_199A9C458();
        return sub_199DF93CC();
      }
    }

    else
    {
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_199AC56DC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:25.0 scale:{25.0, v2}];
  v4 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
  v5 = sub_199DF9F5C();
  v6 = [v4 initWithBundleIdentifier_];

  result = [v6 prepareImageForDescriptor_];
  if (result)
  {
    v8 = result;
    result = [result CGImage];
    if (result)
    {
      v9 = result;
      [v8 scale];
      v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v9 scale:0 orientation:v10];

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_199AC5850()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E38);
  sub_199DF82EC();
  *(swift_allocObject() + 16) = xmmword_199E39320;
  if (qword_1EAF71E20 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E40);
  v1 = __swift_project_value_buffer(v0, qword_1EAF86F58);
  v2 = *(v0 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v1);
  v4 = *(v2 + 16);
  v4(&v8 - v3);
  sub_199DF830C();
  if (qword_1EAF71E28 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EAF86F70);
  MEMORY[0x1EEE9AC00](v5, v5);
  v4(&v8 - v3);
  sub_199DF830C();
  sub_199DF81AC();

  v6 = sub_199DF81AC();

  return v6;
}

unint64_t sub_199AC5B28()
{
  result = qword_1EAF72E60;
  if (!qword_1EAF72E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E58);
    sub_199AA0B90(&qword_1EAF71508, &qword_1EAF72E50);
    sub_199AC5BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E60);
  }

  return result;
}

unint64_t sub_199AC5BE0()
{
  result = qword_1EAF72E68;
  if (!qword_1EAF72E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E68);
  }

  return result;
}

unint64_t sub_199AC5C64()
{
  result = qword_1EAF72E78;
  if (!qword_1EAF72E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72E78);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ContactAccessButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  j__swift_release();
  j__swift_release();

  j__swift_release();
  sub_199A91E28(*(v5 + 64), *(v5 + 72));
  sub_199AC4638();
  sub_199A91E28(*(v5 + 128), *(v5 + 136));
  v6 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF884C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_199DF857C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_199DF8C6C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  if (*(v5 + v1[21]))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_199AC5F7C(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactAccessButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199AC1C04(a1, v4);
}

uint64_t sub_199AC5FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AC6054(uint64_t a1)
{
  v2 = type metadata accessor for RepresentableSlotView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_199AC60B0()
{
  result = qword_1EAF72ED0;
  if (!qword_1EAF72ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EB8);
    sub_199AC616C(&qword_1EAF72ED8, type metadata accessor for RepresentableSlotView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72ED0);
  }

  return result;
}

uint64_t sub_199AC616C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199AC61B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_199AC61C0()
{
  result = qword_1EAF72EE8;
  if (!qword_1EAF72EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72EE8);
  }

  return result;
}

unint64_t sub_199AC6214()
{
  result = qword_1EAF72EF0;
  if (!qword_1EAF72EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72EF0);
  }

  return result;
}

void sub_199AC6430(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v6 = [v7 *a4];
  [v6 setHidden_];
}

uint64_t sub_199AC64A0(void *a1)
{
  if ([a1 _splitViewControllerContext] || objc_msgSend(v1, sel_mode) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_199E37DF0;
  v3 = [v1 cancelButton];
  result = v2;
  *(v2 + 32) = v3;
  return result;
}

uint64_t sub_199AC655C(void *a1)
{
  v2 = [a1 _splitViewControllerContext];
  v3 = [v1 mode];
  if (v2)
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E38F10;
      *(v4 + 32) = [v1 addContactButton];
      *(v4 + 40) = [objc_opt_self() flexibleSpaceItem];
      *(v4 + 48) = [v1 doneButton];
      v5 = (v4 + 56);
      v6 = &selRef_cancelButton;
      goto LABEL_12;
    }

    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E39130;
      *(v4 + 32) = [v1 addContactButton];
      *(v4 + 40) = [objc_opt_self() flexibleSpaceItem];
      v5 = (v4 + 48);
LABEL_8:
      v6 = &selRef_editButton;
LABEL_12:
      *v5 = [v1 *v6];
      return v4;
    }
  }

  else
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E37DF0;
      v5 = (v4 + 32);
      v6 = &selRef_doneButton;
      goto LABEL_12;
    }

    if (!v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_199E37DF0;
      v5 = (v4 + 32);
      goto LABEL_8;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_199AC6788(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);

  sub_199A7A02C(0, &unk_1EAF710B0);
  v8 = sub_199DFA0BC();

  return v8;
}

void __swiftcall CNContactViewSharedNavigationBar.init()(CNContactViewSharedNavigationBar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CNContactViewSharedNavigationBar.init()()
{
  v1 = OBJC_IVAR___CNContactViewSharedNavigationBar_cancelButton;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:0 action:0];
  v2 = OBJC_IVAR___CNContactViewSharedNavigationBar_editButton;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:0 action:0];
  v3 = OBJC_IVAR___CNContactViewSharedNavigationBar_doneButton;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:0 action:0];
  v4 = OBJC_IVAR___CNContactViewSharedNavigationBar_addContactButton;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:4 target:0 action:0];
  *&v0[OBJC_IVAR___CNContactViewSharedNavigationBar_mode] = 0;
  v6.receiver = v0;
  v6.super_class = CNContactViewSharedNavigationBar;
  return objc_msgSendSuper2(&v6, sel_init);
}

void ContactPosterScrollGeometry.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void ContactPosterScrollGeometry.init(contentOffset:contentInsets:containerSize:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

void ContactPosterView.init(contact:content:)(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + *(type metadata accessor for ContactPosterView() + 36)) = a1;
  v5 = a1;
  a2();
}

uint64_t ContactPosterView.body.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_199DF776C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v16 = *(v2 + *(a1 + 36));
  v22 = v5;
  v23 = v6;
  v24 = v2;
  v17 = v16;
  sub_199DF775C();
  swift_getWitnessTable();
  v18 = *(v8 + 16);
  v18(v15, v12, v7);
  v19 = *(v8 + 8);
  v19(v12, v7);
  v18(a2, v15, v7);
  return (v19)(v15, v7);
}

uint64_t sub_199AC6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t ContactPosterBackgroundView.init(contact:scrollGeometry:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v16[2] = a2[2];
  v16[3] = v6;
  v16[4] = a2[4];
  v7 = a2[1];
  v16[0] = *a2;
  v16[1] = v7;
  v8 = *(type metadata accessor for ContactPosterBackgroundView() + 24);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  v9 = *a2;
  *(a3 + 24) = a2[1];
  v10 = a2[3];
  *(a3 + 40) = a2[2];
  *(a3 + 56) = v10;
  *(a3 + 72) = a2[4];
  *(a3 + 8) = v9;
  v11 = swift_allocObject();
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  sub_199AAD408(v16, &v15, &qword_1EAF72F28);
  sub_199DF7DFC();
  return sub_199DF850C();
}

uint64_t sub_199AC6F40@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v19 = a1[2];
  v20 = v4;
  v21 = a1[4];
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F28);
  MEMORY[0x19A8F7740](&v16);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = a1[4];
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  MEMORY[0x19A8F7740](&v10, v6);
  sub_199DF7DFC();
  swift_allocObject();
  result = sub_199DF7DDC();
  *a2 = result;
  return result;
}

uint64_t ContactPosterBackgroundView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for ContactPosterBackgroundView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  sub_199AC7F70(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  result = sub_199AC7FD4(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a1 = sub_199AC8038;
  a1[1] = v8;
  return result;
}

uint64_t sub_199AC7130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v83 = a3;
  v77 = sub_199DF8F9C();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v4);
  v65 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73008) - 8;
  MEMORY[0x1EEE9AC00](v78, v6);
  v73 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v84 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v75 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73010);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v81 = &v64 - v19;
  v20 = type metadata accessor for ContactPosterBackgroundView();
  v71 = *(v20 - 8);
  v70 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v69 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_199DF7CFC();
  v23 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73018);
  KeyPath = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v27);
  v67 = &v64 - v28;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73020);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v29);
  v85 = &v64 - v30;
  v31 = *a2;
  sub_199DF7CEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8);
  sub_199DF851C();
  v32 = sub_199DF7DFC();
  v33 = sub_199AC8AA8(&qword_1EAF73028, MEMORY[0x1E69969E0]);
  v34 = sub_199AC8AA8(&qword_1EAF73030, MEMORY[0x1E6996A00]);
  v35 = v68;
  sub_199DF946C();
  v36 = v73;

  (*(v23 + 8))(v26, v35);
  v37 = *(a2 + 24);
  v38 = *(a2 + 56);
  v92 = *(a2 + 40);
  v93 = v38;
  v94 = *(a2 + 72);
  v39 = *(a2 + 8);
  v91 = v37;
  v90 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F28);
  MEMORY[0x19A8F7740](v95, v40);
  v90 = v95[0];
  v91 = v95[1];
  v92 = v95[2];
  v93 = v95[3];
  v41 = v69;
  sub_199AC7F70(a2, v69);
  v42 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v43 = swift_allocObject();
  sub_199AC7FD4(v41, v43 + v42);
  v86 = v35;
  v87 = v32;
  v44 = v77;
  v88 = v33;
  v45 = v76;
  v89 = v34;
  swift_getOpaqueTypeConformance2();
  sub_199AC89E4();
  v46 = v72;
  v47 = v67;
  sub_199DF962C();

  (*(KeyPath + 8))(v47, v46);
  KeyPath = swift_getKeyPath();
  v48 = v75;
  v49 = v84;
  sub_199AC3010(v75);
  (*(v45 + 104))(v49, *MEMORY[0x1E697FF38], v44);
  (*(v45 + 56))(v49, 0, 1, v44);
  v50 = *(v78 + 56);
  sub_199AAD408(v48, v36, &qword_1EAF72EA0);
  sub_199AAD408(v49, v36 + v50, &qword_1EAF72EA0);
  v51 = *(v45 + 48);
  if (v51(v36, 1, v44) == 1)
  {
    sub_199A79A04(v49, &qword_1EAF72EA0);
    sub_199A79A04(v48, &qword_1EAF72EA0);
    if (v51(v36 + v50, 1, v44) == 1)
    {
      sub_199A79A04(v36, &qword_1EAF72EA0);
LABEL_8:
      sub_199DF868C();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v52 = v66;
  sub_199AAD408(v36, v66, &qword_1EAF72EA0);
  if (v51(v36 + v50, 1, v44) == 1)
  {
    sub_199A79A04(v84, &qword_1EAF72EA0);
    sub_199A79A04(v48, &qword_1EAF72EA0);
    (*(v45 + 8))(v52, v44);
LABEL_6:
    sub_199A79A04(v36, &qword_1EAF73008);
    goto LABEL_9;
  }

  v53 = v36 + v50;
  v54 = v65;
  (*(v45 + 32))(v65, v53, v44);
  sub_199AC8AA8(&unk_1EAF73050, MEMORY[0x1E697FF50]);
  v55 = sub_199DF9EDC();
  v56 = *(v45 + 8);
  v56(v54, v44);
  sub_199A79A04(v84, &qword_1EAF72EA0);
  sub_199A79A04(v48, &qword_1EAF72EA0);
  v56(v52, v44);
  sub_199A79A04(v36, &qword_1EAF72EA0);
  if (v55)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_199DF869C();
  sub_199DF869C();
  sub_199DF7B6C();
  v57 = v81;
  sub_199DF7A5C();
  v58 = sub_199DF7A7C();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73040);
  v60 = v83;
  v61 = (v83 + *(v59 + 36));
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73048);
  sub_199AC8A38(v57, v61 + *(v62 + 28));
  *v61 = KeyPath;
  return (*(v79 + 32))(v60, v85, v80);
}

uint64_t sub_199AC7C1C()
{
  type metadata accessor for ContactPosterBackgroundView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72FC8);
  sub_199DF851C();
  sub_199DF7DEC();

  sub_199DF851C();
  sub_199DF7DCC();
}

uint64_t sub_199AC7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_199AC7F70(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_199AC7FD4(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_199AC8AF4;
  a3[1] = v8;
  return result;
}

uint64_t sub_199AC7DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v15 - v12;
  sub_199AAD408(a1, &v15 - v12, a5);
  return a7(v13);
}

BOOL _s10ContactsUI27ContactPosterScrollGeometryV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[6];
  v4 = a1[7];
  v7 = a2[6];
  v6 = a2[7];
  if ((sub_199DF84EC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6)
  {
    return v5 == v7;
  }

  return 0;
}

uint64_t type metadata accessor for ContactPosterBackgroundView()
{
  result = qword_1EAF72FD0;
  if (!qword_1EAF72FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AC7F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPosterBackgroundView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC7FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactPosterBackgroundView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_199AC80B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199AC80D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_199AC8124()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_199A7DDB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_199AC81AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_199AC82E8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_199AC84C4()
{
  sub_199A7DDB0();
  if (v0 <= 0x3F)
  {
    sub_199AC8578();
    if (v1 <= 0x3F)
    {
      sub_199AC85C8();
      if (v2 <= 0x3F)
      {
        sub_199AC862C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199AC8578()
{
  if (!qword_1EAF72FE0)
  {
    v0 = sub_199DF99BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72FE0);
    }
  }
}

void sub_199AC85C8()
{
  if (!qword_1EAF72FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EA0);
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72FE8);
    }
  }
}

void sub_199AC862C()
{
  if (!qword_1EAF72FF0)
  {
    sub_199DF7DFC();
    v0 = sub_199DF852C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF72FF0);
    }
  }
}

unint64_t sub_199AC8684()
{
  result = qword_1EAF72FF8;
  if (!qword_1EAF72FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF72FF8);
  }

  return result;
}

uint64_t sub_199AC86E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactPosterBackgroundView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199AC7130(a1, v6, a2);
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for ContactPosterBackgroundView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF8F9C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v5 + *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72F30);
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF72F38);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199AC8964()
{
  type metadata accessor for ContactPosterBackgroundView();

  return sub_199AC7C1C();
}

unint64_t sub_199AC89E4()
{
  result = qword_1EAF73038;
  if (!qword_1EAF73038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73038);
  }

  return result;
}

uint64_t sub_199AC8A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AC8AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_199AC8AF8(uint64_t a1)
{
  sub_199AC90C0(a1, v25);
  if (!v26)
  {
    sub_199AC9058(v25);
    goto LABEL_27;
  }

  type metadata accessor for CNAvatarPosterPairFingerprint();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v13 = 0;
    return v13 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_sourceType);
  v3 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_sourceType];
  if (v2 != v3 && v2 != 2 && v3 != 2)
  {

    goto LABEL_27;
  }

  v6 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint);
  v7 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

LABEL_24:
    v20 = sub_199DFA30C();
    v21 = CNUILogPosters();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109120;
      _os_log_impl(&dword_199A75000, v21, v20, "Returning early, avatar similar: %{BOOL}d", v22, 8u);
      MEMORY[0x19A8FA1A0](v22, -1, -1);
    }

    goto LABEL_27;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  sub_199A7A02C(0, &qword_1EAF71000);
  v8 = v6;
  v9 = v7;
  v10 = sub_199DFA4EC();

  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint);
  v12 = *&v24[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint];
  v13 = (v11 | v12) == 0;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    sub_199A7A02C(0, &qword_1EAF73088);
    v15 = v12;
    v16 = v11;
    v13 = sub_199DFA4EC();
  }

  v17 = sub_199DFA30C();
  v18 = CNUILogPosters();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109376;
    *(v19 + 4) = 1;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v13 & 1;
    _os_log_impl(&dword_199A75000, v18, v17, "Avatar similar: %{BOOL}d && is poster similar: %{BOOL}d", v19, 0xEu);
    MEMORY[0x19A8FA1A0](v19, -1, -1);
  }

  return v13 & 1;
}

uint64_t sub_199AC8E40()
{
  v1 = v0;
  sub_199DFAACC();
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_avatarFingerprint);
  sub_199DFAA9C();
  if (v2)
  {
    v3 = v2;
    sub_199DFA4FC();
  }

  v4 = *(v1 + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairFingerprint_posterFingerprint);
  sub_199DFAA9C();
  if (v4)
  {
    v5 = v4;
    sub_199DFA4FC();
  }

  return sub_199DFAAAC();
}

id sub_199AC8F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairFingerprint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AC8FD4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_199AC9058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199AC90C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ProtoContact.handle.getter()
{
  v1 = *v0;
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ProtoContact.givenName.getter()
{
  v1 = *(v0 + 16);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ProtoContact.familyName.getter()
{
  v1 = *(v0 + 32);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.familyName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ProtoContact.contactIdentifier.getter()
{
  v1 = *(v0 + 48);
  sub_199DF81AC();
  return v1;
}

uint64_t ProtoContact.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ProtoContact.init(handle:givenName:familyName:contactIdentifier:)(ContactsUI::ProtoContact *__return_ptr retstr, Swift::String handle, Swift::String_optional givenName, Swift::String_optional familyName, Swift::String_optional contactIdentifier)
{
  retstr->handle = handle;
  retstr->givenName = givenName;
  retstr->familyName = familyName;
  retstr->contactIdentifier = contactIdentifier;
}

BOOL ProtoContact.isGivenNameEmpty.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

BOOL ProtoContact.isFamilyNameEmpty.getter()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t sub_199AC93C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_199ACDBD4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_199A9A57C(v4);
}

uint64_t sub_199AC9458(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_199ACDB9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 28));
  v8 = *v7;
  sub_199A9A57C(v3);
  result = sub_199A9A5FC(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 28));
  sub_199A9A57C(v1);
  return v1;
}

uint64_t type metadata accessor for CommunicationLimitsRequestContextView()
{
  result = qword_1EAF730E0;
  if (!qword_1EAF730E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CommunicationLimitsRequestContextView.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 28));
  result = sub_199A9A5FC(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.init(handles:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CommunicationLimitsRequestContextView();
  v9 = a4 + v8[6];
  sub_199DF983C();
  *v9 = v23;
  *(v9 + 1) = v25;
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = a2;
    v22 = a3;
    v24 = MEMORY[0x1E69E7CC0];
    sub_199A9C600(0, v10, 0);
    v11 = v24;
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *(v24 + 16);
      v16 = *(v24 + 24);
      sub_199DF81AC();
      if (v15 >= v16 >> 1)
      {
        sub_199A9C600((v16 > 1), v15 + 1, 1);
      }

      *(v24 + 16) = v15 + 1;
      v17 = v24 + (v15 << 6);
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      *(v17 + 48) = 0u;
      *(v17 + 64) = 0u;
      *(v17 + 80) = 0u;
      v12 += 2;
      --v10;
    }

    while (v10);

    a2 = v21;
    a3 = v22;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = (a4 + v8[7]);
  v20 = (a4 + v8[5]);
  *v20 = v11;
  v20[1] = 0;
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.init(contacts:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CommunicationLimitsRequestContextView();
  v9 = a4 + v8[6];
  result = sub_199DF983C();
  *v9 = v13;
  *(v9 + 1) = v14;
  v11 = (a4 + v8[7]);
  v12 = (a4 + v8[5]);
  *v12 = a1;
  v12[1] = 0;
  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t CommunicationLimitsRequestContextView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730B0);
  sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0);
  sub_199A9C458();
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8);
  swift_getOpaqueTypeConformance2();
  return sub_199DF88AC();
}

uint64_t sub_199AC99F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v3 = sub_199DF9F4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730A0);
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730B0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731A0);
  sub_199ACDC08();
  sub_199DF931C();
  sub_199DF9EEC();
  v17 = sub_199AA8A84(v7, MEMORY[0x1E69E7CC0]);
  v19 = v18;
  (*(v4 + 8))(v7, v3);
  v31 = v17;
  v32 = v19;
  v20 = sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0);
  v21 = sub_199A9C458();
  v22 = MEMORY[0x1E69E6158];
  sub_199DF950C();

  (*(v13 + 8))(v16, v12);
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF730A8);
  v31 = v12;
  v32 = v22;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8);
  v23 = v27;
  sub_199DF960C();
  return (*(v8 + 8))(v11, v23);
}

uint64_t sub_199AC9D84(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = (a1 + *(MEMORY[0x1EEE9AC00](v2 - 8, v5) + 28));
  v8 = *v6;
  v7 = v6[1];
  v14 = v8;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  sub_199DF984C();
  v9 = *(v13[1] + 16);

  v14 = 0;
  v15 = v9;
  swift_getKeyPath();
  sub_199ACDD54(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_199ACDDB8(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731B8);
  sub_199ACDECC();
  sub_199ACDC8C();
  return sub_199DF99EC();
}

uint64_t sub_199AC9F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731C8);
  sub_199AA0B90(&qword_1EAF731C0, &qword_1EAF731C8);
  return sub_199DF9A1C();
}

uint64_t sub_199AC9FE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a2;
  v98 = a3;
  v5 = type metadata accessor for CommunicationLimitsRequestContextView();
  v6 = *(v5 - 8);
  v96 = v5 - 8;
  v93 = v6;
  v92 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v105 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73218);
  v10 = v9 - 8;
  v107 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v106 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v84 - v106;
  v109 = &v84 - v106;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73220);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v103 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (&v84 - v103);
  *v21 = sub_199DF8CFC();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73228);
  sub_199ACAC2C(a1, a2, &v21[*(v22 + 44)]);
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  sub_199AB7794(v21, v17, &qword_1EAF73220);
  v23 = &v17[*(v10 + 44)];
  v24 = v131[13];
  *v23 = v131[12];
  *(v23 + 1) = v24;
  *(v23 + 2) = v131[14];
  v25 = sub_199AB7794(v17, v14, &qword_1EAF73218);
  v101 = &v84;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v84 - v106;
  v108 = &v84;
  v100 = &v84;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v84 - v31;
  v99 = &v84;
  MEMORY[0x1EEE9AC00](v30, v33);
  v34 = (&v84 - v103);
  *v34 = sub_199DF8CFC();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = a1;
  v36 = a1;
  v37 = v104;
  sub_199ACB654(v36, v104, &v34[*(v22 + 44)]);
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  sub_199AB7794(v34, v32, &qword_1EAF73220);
  v38 = &v32[*(v10 + 44)];
  v39 = v131[16];
  *v38 = v131[15];
  *(v38 + 1) = v39;
  *(v38 + 2) = v131[17];
  sub_199AB7794(v32, v28, &qword_1EAF73218);
  v97 = sub_199DF8CFC();
  v118 = 1;
  v40 = v35;
  v84 = v35;
  sub_199ACC104(v35, v37, &v111);
  v127 = *&v112[112];
  v128 = *&v112[128];
  v129 = *&v112[144];
  v130 = *&v112[160];
  v123 = *&v112[48];
  v124 = *&v112[64];
  v125 = *&v112[80];
  v126 = *&v112[96];
  v119 = v111;
  v120 = *v112;
  v121 = *&v112[16];
  v122 = *&v112[32];
  v131[8] = *&v112[112];
  v131[9] = *&v112[128];
  v131[10] = *&v112[144];
  v131[11] = *&v112[160];
  v131[4] = *&v112[48];
  v131[5] = *&v112[64];
  v131[6] = *&v112[80];
  v131[7] = *&v112[96];
  v131[0] = v111;
  v131[1] = *v112;
  v131[2] = *&v112[16];
  v131[3] = *&v112[32];
  sub_199AAD408(&v119, v110, &qword_1EAF73230);
  sub_199A79A04(v131, &qword_1EAF73230);
  *&v117[135] = v127;
  *&v117[151] = v128;
  *&v117[167] = v129;
  *&v117[183] = v130;
  *&v117[71] = v123;
  *&v117[87] = v124;
  *&v117[103] = v125;
  *&v117[119] = v126;
  *&v117[7] = v119;
  *&v117[23] = v120;
  *&v117[39] = v121;
  *&v117[55] = v122;
  v90 = v118;
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73238);
  v95 = &v84;
  v103 = *(v89 - 8);
  v87 = *(v103 + 8);
  MEMORY[0x1EEE9AC00](v89, v41);
  v88 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v102 = &v84 - v88;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73240);
  v94 = &v84;
  MEMORY[0x1EEE9AC00](v86, v43);
  v45 = &v84 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  v91 = &v84;
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v84 - v49;
  v51 = v105;
  sub_199ACDD54(v40, v105);
  v52 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v53 = v52 + v92;
  v54 = swift_allocObject();
  sub_199ACDDB8(v51, v54 + v52);
  sub_199DF989C();
  sub_199DF9B3C();
  sub_199DF9B5C();
  sub_199DF863C();
  v55 = *(v47 + 32);
  v85 = v45;
  v55(v45, v50, v46);
  v56 = &v45[*(v86 + 36)];
  v57 = v131[19];
  *v56 = v131[18];
  *(v56 + 1) = v57;
  *(v56 + 2) = v131[20];
  v58 = v84;
  v59 = v84 + *(v96 + 32);
  v60 = *v59;
  v61 = *(v59 + 8);
  LOBYTE(v110[0]) = v60;
  v110[1] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  sub_199DF986C();
  v62 = v105;
  sub_199ACDD54(v58, v105);
  v63 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  sub_199ACDDB8(v62, v64 + v52);
  *(v64 + v63) = v104;
  sub_199ACE238();
  sub_199ACE2E4();
  v65 = v102;
  v66 = v85;
  sub_199DF95DC();

  v67 = sub_199A79A04(v66, &unk_1EAF73240);
  v105 = &v84;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = v106;
  v70 = &v84 - v106;
  v96 = &v84 - v106;
  v71 = sub_199AAD408(v109, &v84 - v106, &qword_1EAF73218);
  v104 = &v84;
  MEMORY[0x1EEE9AC00](v71, v72);
  v73 = &v84 - v69;
  v106 = &v84 - v69;
  v74 = sub_199AAD408(v108, &v84 - v69, &qword_1EAF73218);
  v107 = &v84;
  MEMORY[0x1EEE9AC00](v74, v75);
  v76 = v89;
  v77 = &v84 - v88;
  v93 = *(v103 + 2);
  (v93)(&v84 - v88, v65, v89);
  v78 = v98;
  sub_199AAD408(v70, v98, &qword_1EAF73218);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73260);
  sub_199AAD408(v73, v78 + v79[12], &qword_1EAF73218);
  v80 = v79[16];
  *(&v110[20] + 1) = *&v117[144];
  *(&v110[22] + 1) = *&v117[160];
  *(&v110[24] + 1) = *&v117[176];
  *(&v110[12] + 1) = *&v117[80];
  *(&v110[14] + 1) = *&v117[96];
  *(&v110[16] + 1) = *&v117[112];
  *(&v110[18] + 1) = *&v117[128];
  *(&v110[6] + 1) = *&v117[32];
  *(&v110[8] + 1) = *&v117[48];
  *(&v110[10] + 1) = *&v117[64];
  *(&v110[4] + 1) = *&v117[16];
  *(&v110[2] + 1) = *v117;
  *&v110[27] = v114;
  v81 = v97;
  v110[0] = v97;
  v110[1] = 0;
  LOBYTE(v70) = v90;
  LOBYTE(v110[2]) = v90;
  v110[26] = *&v117[191];
  *&v110[29] = v115;
  *&v110[31] = v116;
  memcpy((v78 + v80), v110, 0x108uLL);
  (v93)(v78 + v79[20], v77, v76);
  sub_199AAD408(v110, &v111, &qword_1EAF73268);
  v82 = *(v103 + 1);
  v82(v102, v76);
  sub_199A79A04(v108, &qword_1EAF73218);
  sub_199A79A04(v109, &qword_1EAF73218);
  v82(v77, v76);
  *&v112[145] = *&v117[144];
  *&v112[161] = *&v117[160];
  *v113 = *&v117[176];
  *&v112[81] = *&v117[80];
  *&v112[97] = *&v117[96];
  *&v112[113] = *&v117[112];
  *&v112[129] = *&v117[128];
  *&v112[17] = *&v117[16];
  *&v112[33] = *&v117[32];
  *&v112[49] = *&v117[48];
  *&v112[65] = *&v117[64];
  *&v112[1] = *v117;
  *&v113[23] = v114;
  v111 = v81;
  v112[0] = v70;
  *&v113[15] = *&v117[191];
  *&v113[39] = v115;
  *&v113[55] = v116;
  sub_199A79A04(&v111, &qword_1EAF73268);
  sub_199A79A04(v106, &qword_1EAF73218);
  return sub_199A79A04(v96, &qword_1EAF73218);
}

uint64_t sub_199ACAC2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v76 = a3;
  v77 = a2;
  v4 = type metadata accessor for CommunicationLimitsRequestContextView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73278);
  v74 = *(v10 - 8);
  v75 = v10;
  v73 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  v14 = sub_199DF8D0C();
  v80 = v15;
  v81 = v14;
  LODWORD(v78) = v16;
  v79 = v17;
  sub_199ACDD54(a1, v9);
  sub_199DFA17C();
  v18 = sub_199DFA16C();
  v19 = *(v6 + 80);
  v20 = (v19 + 32) & ~v19;
  v71 = v7 + 7;
  v21 = (v7 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v18;
  *(v22 + 24) = v23;
  sub_199ACDDB8(v9, v22 + v20);
  v24 = v77;
  *(v22 + v21) = v77;
  sub_199ACDD54(a1, v9);
  v25 = sub_199DFA16C();
  v72 = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = MEMORY[0x1E69E85E0];
  sub_199ACDDB8(v9, v26 + v20);
  *(v26 + v21) = v24;
  sub_199DF99AC();
  v78 = v13;
  v27 = v24;
  sub_199DF9BDC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73280);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v71 - v31;
  v33 = (a1 + *(v5 + 28));
  v35 = *v33;
  v34 = v33[1];
  v83 = v35;
  v84 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  result = sub_199DF984C();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v82 + 16) > v24)
  {
    v81 = v32;
    v37 = v82 + (v24 << 6);
    v38 = *(v37 + 48);
    v39 = *(v37 + 56);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    if (v39)
    {

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = v72;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288);
        v80 = &v71;
        v43 = *(v42 - 8);
        MEMORY[0x1EEE9AC00](v42, v44);
        v46 = &v71 - v45;
        sub_199ACDD54(a1, v9);
        v47 = (v41 + 16) & ~v41;
        v48 = (v71 + v47) & 0xFFFFFFFFFFFFFFF8;
        v49 = swift_allocObject();
        sub_199ACDDB8(v9, v49 + v47);
        *(v49 + v48) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73298);
        sub_199ACE450();
        sub_199DF989C();
        LOBYTE(v49) = sub_199DF919C();
        sub_199DF84FC();
        v50 = &v46[*(v42 + 36)];
        *v50 = v49;
        *(v50 + 1) = v51;
        *(v50 + 2) = v52;
        *(v50 + 3) = v53;
        *(v50 + 4) = v54;
        v50[40] = 0;
        v55 = v81;
        sub_199AB7794(v46, v81, &qword_1EAF73288);
        v56 = (*(v43 + 56))(v55, 0, 1, v42);
LABEL_10:
        v81 = &v71;
        MEMORY[0x1EEE9AC00](v56, v57);
        v60 = &v71 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = v74;
        v62 = v75;
        v63 = *(v74 + 16);
        v64 = v78;
        v65 = v63(v60, v78, v75);
        v80 = &v71;
        MEMORY[0x1EEE9AC00](v65, v66);
        v67 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_199AAD408(v55, v67, &qword_1EAF73280);
        v68 = v76;
        v63(v76, v60, v62);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73290);
        sub_199AAD408(v67, &v68[*(v69 + 48)], &qword_1EAF73280);
        sub_199A79A04(v55, &qword_1EAF73280);
        v70 = *(v61 + 8);
        v70(v64, v62);
        sub_199A79A04(v67, &qword_1EAF73280);
        return (v70)(v60, v62);
      }
    }

    else
    {
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288);
    v55 = v81;
    v56 = (*(*(v58 - 8) + 56))(v81, 1, 1, v58);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_199ACB368@<X0>(unint64_t a1@<X3>, void *a2@<X8>)
{
  type metadata accessor for CommunicationLimitsRequestContextView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  result = sub_199DF984C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v10 + (a1 << 6);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_199ACB450(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for CommunicationLimitsRequestContextView();

  sub_199DF81AC();
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  sub_199DF984C();
  v8 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v11);
  v8 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v8 + 16) > a5)
  {
    v10 = v8 + (a5 << 6);
    *(v10 + 48) = v7;
    *(v10 + 56) = v6;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACB55C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CommunicationLimitsRequestContextView();

  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  sub_199DF984C();
  v3 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v6);
  v3 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v3 + 16) > a2)
  {
    v5 = v3 + (a2 << 6);
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACB654@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v76 = a3;
  v77 = a2;
  v4 = type metadata accessor for CommunicationLimitsRequestContextView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  v9 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73278);
  v74 = *(v10 - 8);
  v75 = v10;
  v73 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  v14 = sub_199DF8D0C();
  v80 = v15;
  v81 = v14;
  LODWORD(v78) = v16;
  v79 = v17;
  sub_199ACDD54(a1, v9);
  sub_199DFA17C();
  v18 = sub_199DFA16C();
  v19 = *(v6 + 80);
  v20 = (v19 + 32) & ~v19;
  v71 = v7 + 7;
  v21 = (v7 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v18;
  *(v22 + 24) = v23;
  sub_199ACDDB8(v9, v22 + v20);
  v24 = v77;
  *(v22 + v21) = v77;
  sub_199ACDD54(a1, v9);
  v25 = sub_199DFA16C();
  v72 = v19;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = MEMORY[0x1E69E85E0];
  sub_199ACDDB8(v9, v26 + v20);
  *(v26 + v21) = v24;
  sub_199DF99AC();
  v78 = v13;
  v27 = v24;
  sub_199DF9BDC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73280);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v71 - v31;
  v33 = (a1 + *(v5 + 28));
  v35 = *v33;
  v34 = v33[1];
  v83 = v35;
  v84 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  result = sub_199DF984C();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v82 + 16) > v24)
  {
    v81 = v32;
    v37 = v82 + (v24 << 6);
    v38 = *(v37 + 64);
    v39 = *(v37 + 72);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    if (v39)
    {

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = v72;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288);
        v80 = &v71;
        v43 = *(v42 - 8);
        MEMORY[0x1EEE9AC00](v42, v44);
        v46 = &v71 - v45;
        sub_199ACDD54(a1, v9);
        v47 = (v41 + 16) & ~v41;
        v48 = (v71 + v47) & 0xFFFFFFFFFFFFFFF8;
        v49 = swift_allocObject();
        sub_199ACDDB8(v9, v49 + v47);
        *(v49 + v48) = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73298);
        sub_199ACE450();
        sub_199DF989C();
        LOBYTE(v49) = sub_199DF919C();
        sub_199DF84FC();
        v50 = &v46[*(v42 + 36)];
        *v50 = v49;
        *(v50 + 1) = v51;
        *(v50 + 2) = v52;
        *(v50 + 3) = v53;
        *(v50 + 4) = v54;
        v50[40] = 0;
        v55 = v81;
        sub_199AB7794(v46, v81, &qword_1EAF73288);
        v56 = (*(v43 + 56))(v55, 0, 1, v42);
LABEL_10:
        v81 = &v71;
        MEMORY[0x1EEE9AC00](v56, v57);
        v60 = &v71 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        v61 = v74;
        v62 = v75;
        v63 = *(v74 + 16);
        v64 = v78;
        v65 = v63(v60, v78, v75);
        v80 = &v71;
        MEMORY[0x1EEE9AC00](v65, v66);
        v67 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_199AAD408(v55, v67, &qword_1EAF73280);
        v68 = v76;
        v63(v76, v60, v62);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73290);
        sub_199AAD408(v67, &v68[*(v69 + 48)], &qword_1EAF73280);
        sub_199A79A04(v55, &qword_1EAF73280);
        v70 = *(v61 + 8);
        v70(v64, v62);
        sub_199A79A04(v67, &qword_1EAF73280);
        return (v70)(v60, v62);
      }
    }

    else
    {
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73288);
    v55 = v81;
    v56 = (*(*(v58 - 8) + 56))(v81, 1, 1, v58);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_199ACBD98@<X0>(unint64_t a1@<X3>, void *a2@<X8>)
{
  type metadata accessor for CommunicationLimitsRequestContextView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  result = sub_199DF984C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v10 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v10 + (a1 << 6);
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();
  sub_199DF81AC();

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_199ACBE9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  type metadata accessor for CommunicationLimitsRequestContextView();

  sub_199DF81AC();
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  sub_199DF984C();
  v8 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v11);
  v8 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v8 + 16) > a5)
  {
    v10 = v8 + (a5 << 6);
    *(v10 + 64) = v7;
    *(v10 + 72) = v6;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACBFA8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CommunicationLimitsRequestContextView();

  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  sub_199DF984C();
  v3 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_199ACE3D4(v6);
  v3 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v3 + 16) > a2)
  {
    v5 = v3 + (a2 << 6);
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;

    sub_199DF985C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_199ACC0A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_199DF97CC();
  v3 = sub_199DF977C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_199ACC104@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v5 = sub_199DF9F4C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v10 = sub_199AA8A84(v9, MEMORY[0x1E69E7CC0]);
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v79 = v10;
  v80 = v12;
  v55 = sub_199A9C458();
  v13 = sub_199DF93CC();
  v15 = v14;
  LOBYTE(v5) = v16;
  sub_199DF973C();
  v17 = sub_199DF933C();
  v57 = v18;
  v56 = v19;
  v21 = v20;

  sub_199ACE3E8(v13, v15, v5 & 1);

  v22 = (a1 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 20));
  v24 = *v22;
  v23 = v22[1];
  v79 = v24;
  v80 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
  result = sub_199DF984C();
  if ((v58 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v70 + 16) > v58)
  {
    v53 = v17;
    v54 = v21;
    v26 = v70 + (v58 << 6);
    v28 = *(v26 + 32);
    v27 = *(v26 + 40);
    sub_199DF81AC();
    sub_199DF81AC();
    sub_199DF81AC();

    v79 = v28;
    v80 = v27;
    v29 = sub_199DF93CC();
    v31 = v30;
    v33 = v32;
    sub_199DF977C();
    v55 = sub_199DF933C();
    v52 = v34;
    v36 = v35;
    v58 = v37;

    sub_199ACE3E8(v29, v31, v33 & 1);

    sub_199DF9B7C();
    sub_199DF897C();
    v92 = v36 & 1;
    LOBYTE(v28) = v56 & 1;
    v62 = v56 & 1;
    v61 = 1;
    v38 = v55;
    v39 = v52;
    *&v70 = v55;
    *(&v70 + 1) = v52;
    LOBYTE(v71) = v36 & 1;
    *(&v71 + 1) = *v91;
    DWORD1(v71) = *&v91[3];
    v40 = v58;
    *(&v71 + 1) = v58;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v72 = v63;
    v73 = v64;
    v42 = v63;
    v41 = v64;
    v74 = v65;
    v75 = v66;
    v43 = v69;
    *&v60[7] = v70;
    *&v60[71] = v65;
    *&v60[55] = v64;
    *&v60[39] = v63;
    *&v60[23] = v71;
    *&v60[135] = v69;
    *&v60[119] = v68;
    *&v60[103] = v67;
    *&v60[87] = v66;
    v44 = v56 & 1;
    v46 = v53;
    v45 = v54;
    v47 = v57;
    *a3 = v53;
    *(a3 + 8) = v47;
    *(a3 + 16) = v44;
    *(a3 + 24) = v45;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    v48 = *&v60[112];
    *(a3 + 137) = *&v60[96];
    *(a3 + 153) = v48;
    *(a3 + 169) = *&v60[128];
    *(a3 + 184) = *&v60[143];
    v49 = *&v60[48];
    *(a3 + 73) = *&v60[32];
    *(a3 + 89) = v49;
    v50 = *&v60[80];
    *(a3 + 105) = *&v60[64];
    *(a3 + 121) = v50;
    v51 = *&v60[16];
    *(a3 + 41) = *v60;
    *(a3 + 57) = v51;
    v79 = v38;
    v80 = v39;
    v81 = v36 & 1;
    *v82 = *v91;
    *&v82[3] = *&v91[3];
    v83 = v40;
    v88 = v67;
    v89 = v68;
    v90 = v43;
    v84 = v42;
    v85 = v41;
    v86 = v65;
    v87 = v66;
    sub_199ACE3F8(v46, v47, v28);
    sub_199DF81AC();
    sub_199AAD408(&v70, &v59, &qword_1EAF73270);
    sub_199A79A04(&v79, &qword_1EAF73270);
    sub_199ACE3E8(v46, v47, v28);
  }

  __break(1u);
  return result;
}

uint64_t sub_199ACC5C0()
{
  type metadata accessor for CommunicationLimitsRequestContextView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750);
  return sub_199DF985C();
}

uint64_t sub_199ACC634@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v22[2] = v7;
  v22[3] = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_199DF96CC();
  v14 = sub_199DF933C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v10, v12, v7 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_199ACC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(void *a1)@<X8>)
{
  v6 = type metadata accessor for CommunicationLimitsRequestContextView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_199ACDD54(a1, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  result = sub_199ACDDB8(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  *a3 = sub_199ACE338;
  a3[1] = v11;
  return result;
}

void sub_199ACC8D8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 identifier];
    v7 = sub_199DF9F8C();
    v9 = v8;

    v10 = (a2 + *(type metadata accessor for CommunicationLimitsRequestContextView() + 20));
    v11 = *v10;
    v12 = v10[1];
    v21 = *v10;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
    sub_199DF984C();
    v13 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = sub_199ACE3D4(v22);
      if ((a3 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v13 + 2) > a3)
        {
          v14 = &v13[64 * a3];
          *(v14 + 10) = v7;
          *(v14 + 11) = v9;

          sub_199DF985C();
          v15 = [v5 givenName];
          v7 = sub_199DF9F8C();
          v9 = v16;

          sub_199DF984C();
          v13 = v22;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        v13 = sub_199ACE3D4(v13);
LABEL_6:
        if (*(v13 + 2) <= a3)
        {
          __break(1u);
        }

        else
        {
          v17 = &v13[64 * a3];
          *(v17 + 6) = v7;
          *(v17 + 7) = v9;

          sub_199DF985C();

          v18 = [v5 familyName];
          v7 = sub_199DF9F8C();
          v9 = v19;

          sub_199DF984C();
          v13 = v22;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_8;
          }
        }

        v13 = sub_199ACE3D4(v13);
LABEL_8:
        if (*(v13 + 2) <= a3)
        {
          __break(1u);
        }

        else
        {
          v20 = &v13[64 * a3];
          *(v20 + 8) = v7;
          *(v20 + 9) = v9;

          sub_199DF985C();
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_199ACCB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D0);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v24 - v7;
  v8 = sub_199DF8F0C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_199DF8EEC();
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
  v10 = v25;
  v11 = sub_199DF85CC();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_199DF8EFC();
  v28 = v26;
  sub_199DF85CC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731E8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v24 - v18;
  v20 = *(v17 + 48);
  v21 = v4[2];
  v21(&v24 - v18, v10, v3);
  v21(&v19[v20], &v24 - v7, v3);
  sub_199DF8DBC();
  v22 = v4[1];
  v22(&v24 - v7, v3);
  return (v22)(v10, v3);
}

uint64_t sub_199ACCE34(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_199DF8D0C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_199DF84CC();
  v10 = sub_199DF84DC();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_199ACDD54(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_199ACDDB8(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  return sub_199DF98AC();
}

uint64_t sub_199ACD014()
{
  v0 = sub_199DF867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AC3274(v4);
  sub_199DF866C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_199ACD0E0(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationLimitsRequestContextView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = sub_199DF9F4C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v11 = sub_199AA8A84(v10, MEMORY[0x1E69E7CC0]);
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v17[0] = v11;
  v17[1] = v13;
  sub_199ACDD54(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_199ACDDB8(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_199A9C458();
  return sub_199DF98BC();
}

uint64_t sub_199ACD2CC(uint64_t a1)
{
  result = type metadata accessor for CommunicationLimitsRequestContextView();
  v3 = *(a1 + *(result + 28));
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F0);
    sub_199DF984C();
    v3();
  }

  return result;
}

uint64_t sub_199ACD364()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF730B0);
  sub_199AA0B90(&unk_1EAF730B8, &qword_1EAF730B0);
  sub_199A9C458();
  swift_getOpaqueTypeConformance2();
  sub_199AA0B90(&qword_1EAF730C8, &qword_1EAF730A8);
  swift_getOpaqueTypeConformance2();
  return sub_199DF88AC();
}

uint64_t sub_199ACD4CC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_199ACD608()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199ACD650()
{
  v0 = [objc_allocWithZone(CNContactPickerViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF732C0);
  sub_199DF911C();
  [v0 setDelegate_];

  return v0;
}

id sub_199ACD6D0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

void sub_199ACD7F4()
{
  sub_199ACEB1C();
  sub_199DF90BC();
  __break(1u);
}

uint64_t sub_199ACD864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_199ACD8AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_199ACD934()
{
  sub_199ACDA40();
  if (v0 <= 0x3F)
  {
    sub_199ACDAE8(319, &qword_1EAF730F8, &unk_1EAF73100, &unk_199E39DD8, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_199ACDA98();
      if (v2 <= 0x3F)
      {
        sub_199ACDAE8(319, &qword_1EAF73110, &unk_1EAF74CA0, &unk_199E39770, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199ACDA40()
{
  if (!qword_1EAF730F0)
  {
    sub_199DF867C();
    v0 = sub_199DF859C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF730F0);
    }
  }
}

void sub_199ACDA98()
{
  if (!qword_1EAF711C0)
  {
    v0 = sub_199DF987C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF711C0);
    }
  }
}

void sub_199ACDAE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199ACDB9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_199ACDC08()
{
  result = qword_1EAF731A8;
  if (!qword_1EAF731A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731A0);
    sub_199ACDC8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF731A8);
  }

  return result;
}

unint64_t sub_199ACDC8C()
{
  result = qword_1EAF731B0;
  if (!qword_1EAF731B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF731B8);
    sub_199AA0B90(&qword_1EAF731C0, &qword_1EAF731C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF731B0);
  }

  return result;
}

uint64_t sub_199ACDD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationLimitsRequestContextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ACDDB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationLimitsRequestContextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_199ACDE4C()
{
  type metadata accessor for CommunicationLimitsRequestContextView();

  return sub_199AC9F3C();
}

unint64_t sub_199ACDECC()
{
  result = qword_1EAF73208;
  if (!qword_1EAF73208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73200);
    sub_199ACDF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73208);
  }

  return result;
}

unint64_t sub_199ACDF58()
{
  result = qword_1EAF73210;
  if (!qword_1EAF73210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73210);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199ACE128(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_199ACE19C@<X0>(void (**a1)(void *a1)@<X8>)
{
  v3 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_199ACC7CC(v1 + v4, v5, a1);
}

unint64_t sub_199ACE238()
{
  result = qword_1EAF73250;
  if (!qword_1EAF73250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF73240);
    sub_199AA0B90(&qword_1EAF731E0, &qword_1EAF731D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73250);
  }

  return result;
}

unint64_t sub_199ACE2E4()
{
  result = qword_1EAF73258;
  if (!qword_1EAF73258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73258);
  }

  return result;
}

void sub_199ACE338(void *a1)
{
  v3 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_199ACC8D8(a1, v1 + v4, v5);
}

uint64_t sub_199ACE3E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_199ACE3F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_199DF81AC();
  }
}

unint64_t sub_199ACE450()
{
  result = qword_1EAF732A0;
  if (!qword_1EAF732A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73298);
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732A0);
  }

  return result;
}

uint64_t sub_199ACE520(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  return a1(v5, v6, v1 + v3, v4);
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_199ACE75C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return a2(a1, v7, v8, v2 + v5, v6);
}

uint64_t objectdestroy_44Tm()
{
  v1 = type metadata accessor for CommunicationLimitsRequestContextView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_199DF867C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_199ACE990(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CommunicationLimitsRequestContextView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_199ACEA30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_199ACEA78(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_199ACEAC4()
{
  result = qword_1EAF732B8;
  if (!qword_1EAF732B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732B8);
  }

  return result;
}

unint64_t sub_199ACEB1C()
{
  result = qword_1EAF732C8;
  if (!qword_1EAF732C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF732C8);
  }

  return result;
}

uint64_t sub_199ACEB80()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1ED615D70);
  __swift_project_value_buffer(v0, qword_1ED615D70);
  return sub_199DF803C();
}

id sub_199ACEC00()
{
  v1 = v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle];
  v2 = objc_opt_self();
  if (v1 == 1)
  {
    v3 = [v2 systemGray6Color];
    [v0 setBackgroundColor_];

    v4 = [v0 layer];
    [v4 setCornerRadius_];

    [v0 setClipsToBounds_];
    result = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
    if (result)
    {

      return [result setHidden_];
    }
  }

  else
  {
    v6 = [v2 clearColor];
    [v0 setBackgroundColor_];

    v7 = [v0 layer];
    [v7 setCornerRadius_];

    [v0 setClipsToBounds_];
    v8 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
    if (v8)
    {
      v8 = [v8 setHidden_];
    }

    return sub_199ACF3B8(v8);
  }

  return result;
}

uint64_t sub_199ACEE38()
{

  v0 = sub_199DF780C();

  return v0;
}

void sub_199ACEEFC(unint64_t a1)
{
  v3 = sub_199DF9E4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EAF71D98 != -1)
  {
    swift_once();
  }

  v8 = sub_199DF804C();
  __swift_project_value_buffer(v8, qword_1ED615D70);
  v9 = v1;
  sub_199DF81AC();
  v10 = sub_199DF802C();
  v11 = sub_199DFA30C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    v27 = swift_slowAlloc();
    v28 = v27;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = sub_199A7A02C(0, &qword_1ED615BF0);
    v15 = v9;
    v16 = MEMORY[0x19A8F7EB0](a1, v14);
    v18 = v4;
    v19 = v3;
    v20 = sub_199A9BE90(v16, v17, &v28);

    *(v12 + 14) = v20;
    v3 = v19;
    v4 = v18;
    _os_log_impl(&dword_199A75000, v10, v11, "%@ setContacts: %s", v12, 0x16u);
    v21 = v26;
    sub_199AD08E4(v26);
    MEMORY[0x19A8FA1A0](v21, -1, -1);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x19A8FA1A0](v22, -1, -1);
    MEMORY[0x19A8FA1A0](v12, -1, -1);
  }

  sub_199A7A02C(0, &qword_1EAF71D20);
  *v7 = sub_199DFA39C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v23 = sub_199DF9E7C();
  (*(v4 + 8))(v7, v3);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_199DF77EC();

  if (a1 >> 62)
  {
LABEL_10:
    v24 = sub_199DFA87C();
    goto LABEL_8;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  *(v9 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle) = v24 == 0;
  sub_199ACEC00();
  sub_199ACF3B8();
}

uint64_t sub_199ACF248@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_199DF780C();

  *a1 = v2;
  return result;
}

void (*sub_199ACF29C(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;

  v3 = sub_199DF780C();

  *a1 = v3;
  return sub_199ACF30C;
}

void sub_199ACF30C(unint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_199DF81AC();
    sub_199ACEEFC(v2);
  }

  else
  {
    sub_199ACEEFC(*a1);
  }
}

char *CNAvatarView_SwiftWrapper.__allocating_init(contacts:listener:)(unint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_199AD094C(a1);
  swift_unknownObjectRelease();
  return v4;
}

void sub_199ACF3B8()
{
  v1 = v0;
  v2 = type metadata accessor for AvatarView();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF774C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_model;

  v9 = sub_199DF780C();

  if (v9 >> 62)
  {
    v10 = sub_199DFA87C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView;
      v12 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView);
      *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView) = 0;
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *(v1 + v11);
        if (v13)
        {
          v14 = v13;
          sub_199DF882C();
          [v1 bounds];
          [v14 setFrame_];
          [v14 setAutoresizingMask_];
          [v1 addSubview_];
        }
      }

      v15 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
      v16 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
      if (!v16)
      {

        v17 = sub_199DF780C();

        if (!(v17 >> 62))
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_49:

            __break(1u);
            goto LABEL_50;
          }

LABEL_32:
          if ((v17 & 0xC000000000000001) == 0)
          {
            if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v47 = *(v17 + 32);
LABEL_35:

            sub_199DF76BC();
            v48 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_listenerWrapper);
            sub_199AD1270();
            v49 = v48;
            v50 = sub_199DF769C();
            v51 = *(v1 + v15);
            *(v1 + v15) = v50;
            v62 = v51;
            if (v51)
            {
              v52 = v50;
              [v62 removeFromSuperview];
              v53 = *(v1 + v15);
              if (v53)
              {
LABEL_37:
                v54 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
                swift_beginAccess();
                v55 = *(v1 + v54);
                v56 = v53;
                v57 = [v55 CGColor];
                swift_beginAccess();
                sub_199DF771C();
                sub_199DF768C();
                v58 = v56;
                [v1 frame];
                [v58 setFrame_];
                [v58 setAutoresizingMask_];

                [v1 addSubview_];
                return;
              }
            }

            else
            {
              v60 = v50;
              v53 = v50;
              if (v50)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_15;
          }

LABEL_50:
          MEMORY[0x19A8F8520](0, v17);
          goto LABEL_35;
        }

LABEL_48:
        if (!sub_199DFA87C())
        {
          goto LABEL_49;
        }

        goto LABEL_32;
      }

      v17 = *(v1 + v8);
      v62 = v16;

      v1 = sub_199DF780C();

      if (v1 >> 62)
      {
        if (sub_199DFA87C())
        {
LABEL_11:
          if ((v1 & 0xC000000000000001) == 0)
          {
            if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v18 = *(v1 + 32);
LABEL_14:

              sub_199DF76AC();
LABEL_15:
              v19 = v62;

              return;
            }

            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          MEMORY[0x19A8F8520](0, v1);
          goto LABEL_14;
        }
      }

      else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_46;
    }

    v28 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
    v29 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
    if (v29)
    {
      [v29 removeFromSuperview];
      v30 = *(v1 + v28);
      if (v30)
      {
        v31 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
        swift_beginAccess();
        v32 = *(v1 + v31);
        v33 = v30;
        v34 = [v32 CGColor];
        swift_beginAccess();
        sub_199DF771C();
        sub_199DF768C();
        v35 = v33;
        [v1 frame];
        [v35 setFrame_];
        [v35 setAutoresizingMask_];

        [v1 addSubview_];
      }
    }

    v36 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView;
    if (!*(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView))
    {
      v37 = *(v1 + v8);
      *v5 = swift_getKeyPath();
      v5[8] = 0;
      v38 = *(v2 + 20);
      *&v5[v38] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72E90);
      swift_storeEnumTagMultiPayload();
      v39 = &v5[*(v2 + 24)];
      *v39 = sub_199AD12C8;
      *(v39 + 1) = v37;
      v39[16] = 0;
      v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73310));

      v41 = sub_199DF881C();
      v42 = v41;
      v43 = *(v1 + v36);
      *(v1 + v36) = v41;
      if (v43)
      {
        v44 = v41;
        [v43 removeFromSuperview];
        v45 = *(v1 + v36);
        if (!v45)
        {
LABEL_29:

          return;
        }
      }

      else
      {
        v59 = v41;
        v45 = v42;
        if (!v42)
        {
          goto LABEL_29;
        }
      }

      v46 = v45;
      sub_199DF882C();
      [v1 bounds];
      [v46 setFrame_];
      [v46 setAutoresizingMask_];
      [v1 addSubview_];

      goto LABEL_29;
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView;
    v21 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
    if (v21)
    {
      [v21 removeFromSuperview];
      v22 = *(v1 + v20);
      if (v22)
      {
        v23 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
        swift_beginAccess();
        v24 = *(v1 + v23);
        v25 = v22;
        v26 = [v24 CGColor];
        swift_beginAccess();
        sub_199DF771C();
        sub_199DF768C();
        v27 = v25;
        [v1 frame];
        [v27 setFrame_];
        [v27 setAutoresizingMask_];

        [v1 addSubview_];
      }
    }

    *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle) = 1;
    sub_199ACEC00();
  }
}

uint64_t sub_199ACFC08()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_199ACFC4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return sub_199A7C70C();
  }

  return result;
}

uint64_t sub_199ACFCAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return sub_199A7C70C();
  }

  return result;
}

void (*sub_199ACFD10(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_199ACFDA4;
}

void sub_199ACFDA4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_199A7C70C();
  }

  free(v1);
}

id sub_199ACFE48()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199ACFEF8(void *a1)
{
  v3 = sub_199DF774C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = a1;
  v12 = a1;

  v13 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
  if (v13)
  {
    v14 = *(v1 + v10);
    v15 = v13;
    v16 = [v14 CGColor];
    sub_199DF767C();
    sub_199DF773C();
    (*(v4 + 8))(v8, v3);
    sub_199DF771C();
    sub_199DF768C();
  }
}

void (*sub_199AD0094(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_199DF774C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_199AD01AC;
}

void sub_199AD01AC(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    if (v5)
    {
      v7 = *(v3 + 40);
      v6 = *(v3 + 48);
      v8 = *(v3 + 32);
      v9 = *(v4 + *(v3 + 64));
      v10 = v5;
      v11 = [v9 CGColor];
      sub_199DF767C();
      sub_199DF773C();
      (*(v7 + 8))(v6, v8);
      sub_199DF771C();
      sub_199DF768C();
    }
  }

  v12 = *(v3 + 48);
  free(*(v3 + 56));
  free(v12);

  free(v3);
}

double sub_199AD0300()
{
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_199AD039C(double a1)
{
  v3 = sub_199DF774C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  *(v1 + v10) = a1;
  v11 = *(v1 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
  if (v11)
  {
    v12 = v11;
    sub_199DF767C();
    sub_199DF772C();
    (*(v4 + 8))(v8, v3);
    sub_199DF771C();
    sub_199DF768C();
  }
}

void (*sub_199AD0508(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_199DF774C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  v5[7] = v9;
  v5[8] = v10;
  swift_beginAccess();
  return sub_199AD0620;
}

void sub_199AD0620(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(v3 + 24) + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView);
    if (v4)
    {
      v6 = *(v3 + 40);
      v5 = *(v3 + 48);
      v7 = *(v3 + 32);
      v8 = v4;
      sub_199DF767C();
      sub_199DF772C();
      (*(v6 + 8))(v5, v7);
      sub_199DF771C();
      sub_199DF768C();
    }
  }

  v9 = *(v3 + 48);
  free(*(v3 + 56));
  free(v9);

  free(v3);
}

void sub_199AD070C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = *&v0[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView];
  if (v3)
  {
    v4 = v3;
    [v0 frame];
    [v4 setFrame_];
  }
}

id CNAvatarView_SwiftWrapper.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CNAvatarView_SwiftWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AD08E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_199AD094C(unint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView] = 0;
  *&v1[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle] = 0;
  v4 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  v5 = objc_opt_self();
  *&v2[v4] = [v5 clearColor];
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth] = 0;
  v6 = type metadata accessor for AvatarView.Listener();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v51.receiver = v7;
  v51.super_class = v6;
  v8 = objc_msgSendSuper2(&v51, sel_init);
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_listenerWrapper] = v8;
  sub_199AD1270();
  sub_199DF781C();
  swift_allocObject();
  v9 = v8;
  sub_199DF81AC();
  *&v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_model] = sub_199DF77FC();
  if (a1 >> 62)
  {
    v10 = sub_199DFA87C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = &unk_1EAF73000;
  v2[OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_showGrayCircle] = v10 == 0;
  v50.receiver = v2;
  v50.super_class = type metadata accessor for CNAvatarView_SwiftWrapper();
  v12 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = qword_1EAF71D98;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_199DF804C();
  __swift_project_value_buffer(v15, qword_1ED615D70);
  sub_199DF81AC();
  v16 = v14;
  v17 = sub_199DF802C();
  v18 = sub_199DFA30C();

  if (os_log_type_enabled(v17, v18))
  {
    v45 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    v43 = v20;
    v44 = v21;
    *v20 = v16;
    buf = v19;
    *(v19 + 12) = 2080;
    if (a1 >> 62)
    {
      v22 = sub_199DFA87C();
      log = v17;
      if (v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      log = v17;
      if (v22)
      {
LABEL_8:
        v48 = MEMORY[0x1E69E7CC0];
        result = sub_199A9C55C(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          return result;
        }

        v42 = v5;
        v24 = 0;
        v25 = v48;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x19A8F8520](v24, a1);
          }

          else
          {
            v26 = *(a1 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = [v26 identifier];
          v29 = sub_199DF9F8C();
          v31 = v30;

          v33 = *(v48 + 16);
          v32 = *(v48 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_199A9C55C((v32 > 1), v33 + 1, 1);
          }

          ++v24;
          *(v48 + 16) = v33 + 1;
          v34 = v48 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
        }

        while (v22 != v24);

        v5 = v42;
        v11 = &unk_1EAF73000;
        goto LABEL_20;
      }
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v35 = MEMORY[0x19A8F7EB0](v25, MEMORY[0x1E69E6158]);
    v37 = v36;

    v38 = sub_199A9BE90(v35, v37, &v49);

    *(buf + 14) = v38;
    _os_log_impl(&dword_199A75000, log, v45, "Created %@ with contacts: %s", buf, 0x16u);
    sub_199AD08E4(v43);
    MEMORY[0x19A8FA1A0](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x19A8FA1A0](v44, -1, -1);
    MEMORY[0x19A8FA1A0](buf, -1, -1);

    goto LABEL_21;
  }

LABEL_21:
  v39 = [v5 clearColor];
  [v16 setBackgroundColor_];

  sub_199A7C70C();
  if (*(v16 + v11[91]) == 1)
  {
    v40 = [v5 systemGray6Color];
    [v16 setBackgroundColor_];

    v41 = [v16 layer];
    [v41 setCornerRadius_];

    [v16 setClipsToBounds_];
  }

  else
  {
    sub_199ACF3B8();
  }

  return v16;
}

void sub_199AD11B4()
{
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_singleAvatarView) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle) = 0;
  v1 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth) = 0;
  sub_199DFA85C();
  __break(1u);
}

unint64_t sub_199AD1270()
{
  result = qword_1ED615BF8;
  if (!qword_1ED615BF8)
  {
    type metadata accessor for AvatarView.Listener();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED615BF8);
  }

  return result;
}

id sub_199AD131C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199AD13D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199AD1428(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNPosterSetupAvatarPreviewViewWrapper.__allocating_init(imageData:cropRect:imageType:delegate:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration();
  swift_allocObject();
  *&v6[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_configuration] = sub_199AD4D78(a1, a2);
  swift_unknownObjectWeakInit();
  sub_199AD4F28();
  swift_retain_n();
  swift_unknownObjectRetain();
  v13[0] = sub_199DF87AC();
  v13[1] = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView;
  sub_199AD4F80(v13, &v6[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView]);
  sub_199AD4FB8(&v6[v8], v13);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73338));
  *&v6[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  swift_unknownObjectRelease();

  sub_199A9EF34(a1, a2);
  return v10;
}

id CNPosterSetupAvatarPreviewViewWrapper.init(imageData:cropRect:imageType:delegate:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_199AD4FF0(a1, a2);
  swift_unknownObjectRelease();
  sub_199A9EF34(a1, a2);
  return v4;
}

uint64_t type metadata accessor for CNPosterSetupAvatarPreviewConfiguration()
{
  result = qword_1EAF73360;
  if (!qword_1EAF73360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AD17F8(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_199AA7630(a1, a2);
  sub_199DF842C();
  sub_199AD1CA8();
}

uint64_t sub_199AD1974()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD1A8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

id CNPosterSetupAvatarPreviewViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNPosterSetupAvatarPreviewViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNPosterSetupAvatarPreviewViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AD1CA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  sub_199A9EF34(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD1DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

double sub_199AD1E30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD1EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD1F1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

uint64_t sub_199AD203C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__imageData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__cropRect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__imageType;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734C0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC10ContactsUI39CNPosterSetupAvatarPreviewConfiguration__hasImageData;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75020);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_199AD21C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration();
  result = sub_199DF83BC();
  *a1 = result;
  return result;
}

id sub_199AD2208()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v1 = sub_199DF71DC();
  sub_199A9EF34(v3, *&v4);
  [v0 setImageData_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  [v0 setCropRect_];
  return v0;
}

uint64_t sub_199AD2338@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73398);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v33 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v30 - v33;
  *v6 = sub_199DF8D4C();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733A0);
  sub_199AD26D4(a1, &v6[*(v7 + 44)]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733A8);
  v31 = *(v34 - 8);
  v8 = v31;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34, v10);
  v32 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v30 - v32;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733B0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  *v15 = sub_199DF8D4C();
  *(v15 + 1) = 0x4028000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733B8);
  sub_199AD3618(a1, &v15[*(v16 + 44)]);
  sub_199DF915C();
  sub_199AA0B90(&qword_1EAF733C0, &qword_1EAF733B0);
  sub_199DF94AC();
  v17 = sub_199A79A04(v15, &qword_1EAF733B0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = &v30 - v33;
  v20 = sub_199AAD408(v6, &v30 - v33, &qword_1EAF73398);
  MEMORY[0x1EEE9AC00](v20, v21);
  v22 = &v30 - v32;
  v23 = *(v8 + 16);
  v24 = v34;
  v23(&v30 - v32, v11, v34);
  v25 = v35;
  *v35 = 0;
  *(v25 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733C8);
  sub_199AAD408(v19, v25 + v26[12], &qword_1EAF73398);
  v27 = v25 + v26[16];
  *v27 = 0;
  v27[8] = 1;
  v23(v25 + v26[20], v22, v24);
  v28 = *(v31 + 8);
  v28(v11, v24);
  sub_199A79A04(v6, &qword_1EAF73398);
  v28(v22, v24);
  return sub_199A79A04(v19, &qword_1EAF73398);
}

uint64_t sub_199AD26D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73408);
  v35 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v34 = v5;
  v6 = (&v31 - v5);
  *v6 = sub_199DF9B5C();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73410);
  sub_199AD2B74(a1, (v6 + *(v8 + 44)));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73418);
  v9 = *(*(v32 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v32, v10);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v33 = v13;
  v14 = &v31 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73420);
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v16);
  v18 = &v31 - v17;
  sub_199AD4FB8(a1, v38);
  v19 = swift_allocObject();
  sub_199AD4F80(v38, v19 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73428);
  sub_199AA0B90(&qword_1EAF73430, &qword_1EAF73428);
  sub_199DF989C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v20 = 0.0;
  if (v38[0] != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v38[0] == 4)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }
  }

  (*(v15 + 32))(v14, v18, v31);
  *&v14[*(v32 + 9)] = v20;
  v21 = v36;
  v22 = sub_199A92A98(v14, v36);
  v32 = &v31;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v31 - v34;
  v25 = sub_199AAD408(v6, &v31 - v34, &qword_1EAF73408);
  MEMORY[0x1EEE9AC00](v25, v26);
  v27 = &v31 - v33;
  sub_199AAD408(v21, &v31 - v33, &qword_1EAF73418);
  v28 = v37;
  sub_199AAD408(v24, v37, &qword_1EAF73408);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73438);
  sub_199AAD408(v27, v28 + *(v29 + 48), &qword_1EAF73418);
  sub_199A79A04(v21, &qword_1EAF73418);
  sub_199A79A04(v6, &qword_1EAF73408);
  sub_199A79A04(v27, &qword_1EAF73418);
  return sub_199A79A04(v24, &qword_1EAF73408);
}

uint64_t sub_199AD2B74@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v89 = a2;
  v3 = sub_199DF9F4C();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v85 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_199DF8D3C();
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v82 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73478);
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = v70 - v11;
  v12 = sub_199AD2208();
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;

  v17 = [objc_opt_self() defaultSettings];
  v18 = [v13 mainScreen];
  [v18 bounds];

  v19 = [v13 mainScreen];
  [v19 bounds];

  sub_199DF9B5C();
  sub_199DF863C();
  *(v104 + 7) = v106;
  *(&v104[1] + 7) = v107;
  *(&v104[2] + 7) = v108;
  *&v109 = v12;
  *(&v109 + 1) = v16 * 0.4;
  *v110 = v17;
  v110[8] = 0;
  *&v110[9] = v104[0];
  *&v110[25] = v104[1];
  *&v110[41] = v104[2];
  *&v110[56] = *(&v108 + 1);
  v88 = a1;
  v20 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v20;
  sub_199DF841C();

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (LOBYTE(v104[0]) == 1)
  {
    v96 = *&v110[16];
    v97 = *&v110[32];
    v98 = *&v110[48];
    v94 = v109;
    v95 = *v110;
    MEMORY[0x1EEE9AC00](0, v21);
    v70[-2] = &v94;
    sub_199AAD408(&v109, v104, &qword_1EAF73490);
    sub_199DF9BAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734A8);
    sub_199DF872C();

    v104[2] = v96;
    v104[3] = v97;
    v105 = v98;
    v104[0] = v94;
    v104[1] = v95;
    sub_199A79A04(v104, &qword_1EAF73490);
    v23 = *(&v99 + 1);
    v22 = v99;
    v25 = *(&v100 + 1);
    v24 = v100;
    v27 = *(&v101 + 1);
    v26 = v101;
    v29 = *(&v102 + 1);
    v28 = v102;
    v31 = *(&v103 + 1);
    v30 = v103;
  }

  *&v74 = v26;
  *(&v74 + 1) = v27;
  *&v75 = v28;
  *(&v75 + 1) = v29;
  *&v76 = v30;
  *(&v76 + 1) = v31;
  v91 = v25;
  *&v92 = v22;
  *(&v92 + 1) = v23;
  v93 = v24;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73480);
  v77 = v70;
  v33 = *(v32 - 8);
  v71 = v32 - 8;
  v72 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v73 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v90 = v70 - v73;
  v70[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73488);
  v70[1] = v70;
  MEMORY[0x1EEE9AC00](v70[0], v36);
  v38 = v70 - v37;
  v104[2] = *&v110[16];
  v104[3] = *&v110[32];
  v105 = *&v110[48];
  v104[0] = v109;
  v104[1] = *v110;
  v39 = sub_199DF8FFC();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF8FEC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73490);
  v45 = sub_199AD59A8();
  v46 = v79;
  sub_199DF956C();
  (*(v40 + 8))(v43, v39);
  v47 = v82;
  sub_199DF8D2C();
  *&v104[0] = v44;
  *(&v104[0] + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v48 = v81;
  sub_199DF957C();
  (*(v83 + 8))(v47, v84);
  (*(v80 + 8))(v46, v48);
  v49 = v85;
  sub_199DF9EEC();
  v50 = sub_199AA8A84(v49, MEMORY[0x1E69E7CC0]);
  v52 = v51;
  (*(v86 + 8))(v49, v87);
  *&v104[0] = v50;
  *(&v104[0] + 1) = v52;
  sub_199A9C458();
  v53 = v90;
  sub_199DF887C();

  sub_199A79A04(v38, &qword_1EAF73488);
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration();
  sub_199AD4F28();
  sub_199DF87BC();
  swift_getKeyPath();
  sub_199DF87CC();

  v54 = v104[0];
  LOBYTE(v38) = v104[1];
  *&v94 = 0;
  sub_199DF983C();
  v55 = v99;
  *&v94 = 0x4049000000000000;
  v56 = sub_199DF983C();
  v88 = v70;
  v57 = v99;
  v58 = v53 + *(v71 + 44);
  *v58 = v54;
  *(v58 + 16) = v38;
  *(v58 + 24) = v55;
  *(v58 + 40) = v57;
  MEMORY[0x1EEE9AC00](v56, v59);
  v60 = v70 - v73;
  sub_199AAD408(v53, v70 - v73, &qword_1EAF73480);
  v99 = v92;
  *&v100 = v93;
  *(&v100 + 1) = v91;
  v61 = v74;
  v101 = v74;
  v62 = v75;
  v102 = v75;
  v63 = v76;
  v103 = v76;
  v64 = v100;
  v65 = v75;
  v66 = v76;
  v67 = v89;
  v89[2] = v74;
  v67[3] = v65;
  v67[4] = v66;
  *v67 = v99;
  v67[1] = v64;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73498);
  sub_199AAD408(v60, v67 + *(v68 + 48), &qword_1EAF73480);
  sub_199AAD408(&v99, v104, &qword_1EAF734A0);
  sub_199A79A04(&v109, &qword_1EAF73490);
  sub_199A79A04(v90, &qword_1EAF73480);
  sub_199A79A04(v60, &qword_1EAF73480);
  v104[0] = v92;
  *&v104[1] = v93;
  *(&v104[1] + 1) = v91;
  v104[2] = v61;
  v104[3] = v62;
  v105 = v63;
  return sub_199A79A04(v104, &qword_1EAF734A0);
}

uint64_t sub_199AD3524@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199AD35A4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD3618@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733D0);
  v44 = *(v42 - 8);
  v40 = v44[8];
  MEMORY[0x1EEE9AC00](v42, v3);
  v41 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v38 - v41;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v38 - v9;
  sub_199AD4FB8(a1, v45);
  v11 = swift_allocObject();
  sub_199AD4F80(v45, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF733E0);
  sub_199AD5604();
  sub_199DF989C();
  v12 = sub_199DF904C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF903C();
  sub_199AD5714();
  sub_199AD576C();
  v39 = v5;
  sub_199DF944C();
  (*(v13 + 8))(v16, v12);
  (*(v7 + 8))(v10, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731D8);
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17, v20);
  sub_199AD4FB8(a1, v45);
  v21 = swift_allocObject();
  sub_199AD4F80(v45, v21 + 16);
  v38 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_199DF989C();
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = &v38 - v41;
  v25 = v44[2];
  v26 = v5;
  v27 = v42;
  v28 = v25(&v38 - v41, v26, v42);
  MEMORY[0x1EEE9AC00](v28, v29);
  v30 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v18[2];
  v32 = v17;
  v31(v30, v30, v17);
  v33 = v43;
  v25(v43, v24, v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73400);
  v31(&v33[*(v34 + 48)], v30, v32);
  v35 = v18[1];
  v35(v38, v32);
  v36 = v44[1];
  v36(v39, v27);
  v35(v30, v32);
  return (v36)(v24, v27);
}

uint64_t sub_199AD3B0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_199DF8CFC();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73440);
  sub_199AD3C34(&v10);
  v2 = v10;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = sub_199DF91EC();
  KeyPath = swift_getKeyPath();
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = KeyPath;
  v16 = v7;
  sub_199DF927C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73448);
  sub_199AD5840();
  sub_199DF942C();

  sub_199ACE3E8(v3, v4, v5);
}

uint64_t sub_199AD3C34@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_199DF97CC();
  sub_199DF9EEC();
  v8 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v17[0] = v8;
  v17[1] = v10;
  sub_199A9C458();
  v11 = sub_199DF93CC();
  v13 = v12;
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  LOBYTE(v10) = v14 & 1;
  *(a1 + 24) = v14 & 1;
  *(a1 + 32) = v15;

  sub_199ACE3F8(v11, v13, v10);
  sub_199DF81AC();
  sub_199ACE3E8(v11, v13, v10);
}

uint64_t sub_199AD3DCC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v2 = sub_199DF71DC();
    sub_199A9EF34(v3, *&v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    [v1 avatarPreviewViewDidFinishWithImageData:v2 cropRect:{*&v3, v4, v5, v6}];

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_199AD3EE8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  *&v38 = v7;
  *(&v38 + 1) = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  v14 = v13;
  sub_199DF930C();
  v15 = sub_199DF939C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_199ACE3E8(v10, v12, v14 & 1);

  sub_199DF9B5C();
  sub_199DF897C();
  v45 = v19 & 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v22 = v43;
  *(a1 + 96) = v42;
  *(a1 + 112) = v22;
  result = v44;
  v24 = v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = v24;
  v25 = v41;
  *(a1 + 64) = v40;
  *(a1 + 80) = v25;
  v26 = v35;
  v27 = v36;
  v28 = v33;
  *(a1 + 192) = v34;
  *(a1 + 208) = v26;
  v29 = v37;
  *(a1 + 224) = v27;
  *(a1 + 240) = v29;
  v30 = *&v32[8];
  v31 = *&v32[24];
  *(a1 + 128) = result;
  *(a1 + 144) = v30;
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 160) = v31;
  *(a1 + 176) = v28;
  return result;
}

void *sub_199AD4180(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_199AD41D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_199DF9F4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v7 = sub_199AA8A84(v6, MEMORY[0x1E69E7CC0]);
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v26[2] = v7;
  v26[3] = v9;
  sub_199A9C458();
  v10 = sub_199DF93CC();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_199DF91EC();
  v14 = sub_199DF939C();
  v16 = v15;
  v18 = v17;

  sub_199ACE3E8(v10, v12, v7 & 1);

  sub_199DF925C();
  v19 = sub_199DF932C();
  v21 = v20;
  LOBYTE(v7) = v22;
  v24 = v23;
  sub_199ACE3E8(v14, v16, v18 & 1);

  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_199AD43B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_199DF8D4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73388);
  sub_199AD2338(v1, (a1 + *(v3 + 44)));
  v4 = sub_199DF918C();
  sub_199DF84FC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73390);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_199AD4468()
{
  result = MEMORY[0x19A8F7970](0.4, 0.8, 0.0);
  qword_1EAF86F88 = result;
  return result;
}

uint64_t sub_199AD449C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734E0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v21 - v6);
  *v7 = sub_199DF9B5C();
  v7[1] = v8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734E8) + 44);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F0);
  (*(*(v10 - 8) + 16))(v7 + v9, a1, v10);
  v21[0] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8);
  sub_199DF984C();
  v11 = v22;
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73500) + 36)) = v11;
  v21[0] = *(v2 + 40);
  sub_199DF984C();
  v12 = v22;
  v13 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73508) + 36);
  *v13 = v12;
  v13[8] = 0;
  v14 = swift_allocObject();
  v15 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = *(v2 + 48);
  v16 = (v7 + *(v4 + 36));
  *v16 = sub_199AD5CC8;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  v22 = *v2;
  v23 = *(v2 + 16);
  sub_199AD5CD0(v2, v21);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  MEMORY[0x19A8F7740](v21, v17);
  LOBYTE(v22) = v21[0];
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = *(v2 + 48);
  sub_199AD5CD0(v2, v21);
  sub_199AD5D60();
  sub_199DF962C();

  return sub_199A79A04(v7, &qword_1EAF734E0);
}

uint64_t sub_199AD4764(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  MEMORY[0x19A8F7740](&v6);
  v3 = 1.0;
  if (!LOBYTE(v6))
  {
    v3 = 0.0;
  }

  v7 = *(a1 + 24);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8);
  sub_199DF985C();
  v7 = *a1;
  v8 = *(a1 + 16);
  MEMORY[0x19A8F7740](&v6, v2);
  v4 = 50.0;
  if (LOBYTE(v6))
  {
    v4 = 0.0;
  }

  v7 = *(a1 + 40);
  v6 = v4;
  return sub_199DF985C();
}

uint64_t sub_199AD4868(uint64_t a1, uint64_t a2)
{
  if (qword_1EAF71E40 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAF86F88, a2);
  return sub_199DF872C();
}

uint64_t sub_199AD4924(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0);
  MEMORY[0x19A8F7740](&v6);
  v3 = 1.0;
  if (!LOBYTE(v6))
  {
    v3 = 0.0;
  }

  v7 = *(a1 + 24);
  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF734F8);
  sub_199DF985C();
  v7 = *a1;
  v8 = *(a1 + 16);
  MEMORY[0x19A8F7740](&v6, v2);
  v4 = 50.0;
  if (LOBYTE(v6))
  {
    v4 = 0.0;
  }

  v7 = *(a1 + 40);
  v6 = v4;
  return sub_199DF985C();
}

double sub_199AD4A7C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_199AD4AFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_199AA7630(v1, v2);
  sub_199DF842C();
  return sub_199AD1CA8();
}

double sub_199AD4B8C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_199AD4C0C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD4C84@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  *a1 = v3;
  return result;
}

uint64_t sub_199AD4D04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_199DF842C();
}

uint64_t sub_199AD4D78(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  sub_199AA7630(a1, a2);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CGRect(0);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  type metadata accessor for CNContactImageType(0);
  sub_199DF83FC();
  swift_endAccess();
  swift_beginAccess();
  sub_199DF83FC();
  swift_endAccess();
  return v2;
}

unint64_t sub_199AD4F28()
{
  result = qword_1EAF73328;
  if (!qword_1EAF73328)
  {
    type metadata accessor for CNPosterSetupAvatarPreviewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73328);
  }

  return result;
}

id sub_199AD4FF0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for CNPosterSetupAvatarPreviewConfiguration();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_configuration] = sub_199AD4D78(a1, a2);
  swift_unknownObjectWeakInit();
  sub_199AD4F28();
  swift_retain_n();
  swift_unknownObjectRetain();
  v12[0] = sub_199DF87AC();
  v12[1] = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView;
  sub_199AD4F80(v12, &v3[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_avatarPreviewView]);
  sub_199AD4FB8(&v3[v7], v12);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73338));
  *&v3[OBJC_IVAR____TtC10ContactsUI37CNPosterSetupAvatarPreviewViewWrapper_hostingController] = sub_199DF8DFC();
  v11.receiver = v3;
  v11.super_class = type metadata accessor for CNPosterSetupAvatarPreviewViewWrapper();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

void sub_199AD5304()
{
  sub_199AD54F0(319, &qword_1EAF73370);
  if (v0 <= 0x3F)
  {
    sub_199AD549C(319, &qword_1EAF73378, type metadata accessor for CGRect);
    if (v1 <= 0x3F)
    {
      sub_199AD549C(319, &qword_1EAF73380, type metadata accessor for CNContactImageType);
      if (v2 <= 0x3F)
      {
        sub_199AD54F0(319, &qword_1EAF71428);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_199AD549C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_199DF843C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_199AD54F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_199DF843C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_199AD553C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_199AD5584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AD5604()
{
  result = qword_1EAF733E8;
  if (!qword_1EAF733E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF733E0);
    sub_199AD5690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733E8);
  }

  return result;
}

unint64_t sub_199AD5690()
{
  result = qword_1EAF733F0;
  if (!qword_1EAF733F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733F0);
  }

  return result;
}

unint64_t sub_199AD5714()
{
  result = qword_1EAF733F8;
  if (!qword_1EAF733F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF733D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF733F8);
  }

  return result;
}

unint64_t sub_199AD576C()
{
  result = qword_1EAF71210;
  if (!qword_1EAF71210)
  {
    sub_199DF904C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71210);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  MEMORY[0x19A8FA290](v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_199AD5840()
{
  result = qword_1EAF73450;
  if (!qword_1EAF73450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73448);
    sub_199AD58F8();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73450);
  }

  return result;
}

unint64_t sub_199AD58F8()
{
  result = qword_1EAF73458;
  if (!qword_1EAF73458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73460);
    sub_199AA0B90(&qword_1EAF73468, &qword_1EAF73470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73458);
  }

  return result;
}

unint64_t sub_199AD59A8()
{
  result = qword_1EAF71358;
  if (!qword_1EAF71358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73490);
    sub_199AD5A34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71358);
  }

  return result;
}

unint64_t sub_199AD5A34()
{
  result = qword_1EAF71B20;
  if (!qword_1EAF71B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B20);
  }

  return result;
}

uint64_t sub_199AD5A88@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v10[0] = *v2;
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[4];
  v10[3] = v2[3];
  v10[4] = v5;
  v10[1] = v3;
  v10[2] = v4;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  a1[4] = v2[4];
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return sub_199AAD408(v10, &v9, &qword_1EAF73490);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_199AD5B50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_199AD5B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_199AD5BF4()
{
  result = qword_1EAF734C8;
  if (!qword_1EAF734C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73390);
    sub_199AA0B90(&qword_1EAF734D0, &qword_1EAF734D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF734C8);
  }

  return result;
}

uint64_t objectdestroy_71Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_199AD5D60()
{
  result = qword_1EAF73510;
  if (!qword_1EAF73510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF734E0);
    sub_199AD5DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73510);
  }

  return result;
}

unint64_t sub_199AD5DEC()
{
  result = qword_1EAF73518;
  if (!qword_1EAF73518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73508);
    sub_199AD5E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73518);
  }

  return result;
}

unint64_t sub_199AD5E78()
{
  result = qword_1EAF73520;
  if (!qword_1EAF73520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73500);
    sub_199AA0B90(&qword_1EAF73528, &qword_1EAF73530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73520);
  }

  return result;
}

uint64_t static Material.lightweightThin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAF71B78 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF9B2C();
  v3 = __swift_project_value_buffer(v2, qword_1EAF71B80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_199AD6080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_199E37DF0;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_1EAF86F90 = v0;
  return result;
}

void *sub_199AD60FC(void *result)
{
  v63[5] = *MEMORY[0x1E69E9840];
  if (!result[2])
  {
    return result;
  }

  v2 = v1;
  v3 = *(v1 + 32);
  [v3 lock];
  v4 = sub_199DF81AC();
  v5 = sub_199AFD79C(v4);

  v6 = OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers;
  if (*(*(v1 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers) + 16) <= v5[2] >> 3)
  {
    v63[0] = v5;
    v15 = sub_199DF81AC();
    sub_199AFC84C(v15);

    v8 = v5;
    if (v5[2])
    {
      goto LABEL_4;
    }

LABEL_8:

    return [v3 unlock];
  }

  v7 = sub_199DF81AC();
  v8 = sub_199AFC978(v7, v5);

  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

LABEL_4:
  v60 = v6;
  v61 = v3;
  v9 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  sub_199DF81AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790);
  v10 = sub_199DFA0BC();

  v11 = [v9 initWithKeysToFetch_];

  [v11 setUnifyResults_];
  v12 = *(v8 + 16);
  if (v12)
  {
    v13 = sub_199AB2EA8(v12, 0);
    v14 = sub_199AFD644(v63, v13 + 4, v12, v8);
    sub_199DF81AC();
    sub_199AD6AF4();
    if (v14 != v12)
    {
      goto LABEL_32;
    }
  }

  v16 = objc_opt_self();
  v17 = sub_199DFA0BC();

  v18 = [v16 predicateForContactsWithIdentifiers_];

  [v11 setPredicate_];
  sub_199DF81AC();
  v19 = sub_199DF802C();
  v20 = sub_199DFA30C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63[0] = v22;
    *v21 = 134218242;
    *(v21 + 4) = *(v8 + 16);

    *(v21 + 12) = 2080;
    v23 = sub_199DFA25C();
    v25 = sub_199A9BE90(v23, v24, v63);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_199A75000, v19, v20, "Contact Cache will attempt to fetch %ld contacts. (%s)", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x19A8FA1A0](v22, -1, -1);
    MEMORY[0x19A8FA1A0](v21, -1, -1);
  }

  else
  {
  }

  v26 = *(v2 + 24);
  v63[0] = 0;
  v27 = [v26 executeFetchRequest:v11 error:v63];
  if (v27)
  {
    v28 = v27;
    v29 = v63[0];
    v63[0] = [v28 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73560);
    swift_dynamicCast();
    v14 = v62;
    v57 = v62 >> 62;
    v58 = v28;
    v59 = v11;
    v12 = v2;
    if (v62 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
    {
      v31 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x19A8F8520](v31, v14);
        }

        else
        {
          if (v31 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v32 = *(v14 + 8 * v31 + 32);
        }

        v33 = v32;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v35 = [v32 identifier];
        if (!v35)
        {
          __break(1u);
        }

        v36 = v35;
        [*(v12 + 16) setObject:v33 forKeyedSubscript:v35];

        ++v31;
        if (v34 == i)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    v48 = [*(v12 + 16) allKeys];
    sub_199AD6AFC();
    v49 = sub_199DFA0CC();

    v50 = sub_199B72E8C(v49);

    v51 = sub_199AFD79C(v50);

    *(v12 + v60) = v51;

    sub_199DF81AC();
    v52 = sub_199DF802C();
    v53 = sub_199DFA30C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      v55 = v61;
      if (v57)
      {
        v56 = sub_199DFA87C();
      }

      else
      {
        v56 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v54 + 4) = v56;

      _os_log_impl(&dword_199A75000, v52, v53, "Contact Cache did fetch %ld contacts.", v54, 0xCu);
      MEMORY[0x19A8FA1A0](v54, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v55 = v61;
    }

    return [v55 unlock];
  }

  else
  {
    v37 = v11;
    v38 = v63[0];

    v39 = sub_199DF717C();

    swift_willThrow();
    v40 = v39;
    v41 = sub_199DF802C();
    v42 = sub_199DFA31C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63[0] = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = sub_199DFAA0C();
      v47 = sub_199A9BE90(v45, v46, v63);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_199A75000, v41, v42, "Contact Cache failed to load contacts. %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x19A8FA1A0](v44, -1, -1);
      MEMORY[0x19A8FA1A0](v43, -1, -1);
    }

    else
    {
    }

    return [v61 unlock];
  }
}

uint64_t sub_199AD6918()
{
  v1 = OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_logger;
  v2 = sub_199DF804C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CNUIDuplicatesContactStoreFacade()
{
  result = qword_1EAF73548;
  if (!qword_1EAF73548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199AD6A40()
{
  result = sub_199DF804C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_199AD6AFC()
{
  result = qword_1EAF73568;
  if (!qword_1EAF73568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF73568);
  }

  return result;
}

void *sub_199AD6B48(void *a1, uint64_t a2, void *a3)
{
  v3[2] = [objc_allocWithZone(MEMORY[0x1E6996660]) init];
  v3[4] = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  sub_199DF803C();
  *(v3 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_cachedIdentifiers) = MEMORY[0x1E69E7CD0];
  v3[3] = a1;
  *(v3 + OBJC_IVAR____TtC10ContactsUI32CNUIDuplicatesContactStoreFacade_keysToFetch) = a2;
  v7 = a1;
  sub_199AD60FC(a3);
  return v3;
}

char *sub_199AD6C84(double a1, double a2, double a3, double a4)
{
  v9 = sub_199DFA55C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_199DFA5EC();
  v14 = *(v38 - 8);
  v16 = MEMORY[0x1EEE9AC00](v38, v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v37 - v20;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButtonDimension] = 0x4051000000000000;
  v22 = type metadata accessor for CNAvatarPosterPairRemovalView();
  v39.receiver = v4;
  v39.super_class = v22;
  v23 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 systemRedColor];
  sub_199DFA5DC();
  v27 = sub_199DF9F5C();
  v28 = [objc_opt_self() systemImageNamed_];

  sub_199DFA5CC();
  v29 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:27.0];
  sub_199DFA52C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69DC508], v9);
  sub_199DFA56C();
  v30 = v26;
  sub_199DFA5AC();
  v31 = [v30 colorWithAlphaComponent_];
  sub_199DFA59C();
  sub_199A7A02C(0, &qword_1EAF73590);
  v32 = v38;
  (*(v14 + 16))(v18, v21, v38);
  sub_199A7A02C(0, &unk_1EAF75C50);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_199DFA51C();
  v33 = sub_199DFA5FC();
  [v33 setOverrideUserInterfaceStyle_];
  v34 = sub_199DF9F5C();
  [v33 setAccessibilityIdentifier_];

  [v33 setTintAdjustmentMode_];
  [v25 addSubview_];

  (*(v14 + 8))(v21, v32);
  v35 = *&v25[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton];
  *&v25[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton] = v33;

  return v25;
}

void sub_199AD7118()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_avatarPosterPair);
    if (v2 && swift_unknownObjectWeakLoadStrong())
    {
      v3 = v2;
      sub_199B63A58(v1, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_199AD7288()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CNAvatarPosterPairRemovalView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10ContactsUI29CNAvatarPosterPairRemovalView_deleteButton];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    CGRectGetMidX(v5);
    [v0 bounds];
    CGRectGetMidY(v6);
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRectCenteredAboutPointScale();
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_199AD73D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairRemovalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199AD7490()
{
  v1 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager;
  v2 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager);
  }

  else
  {
    v4 = [objc_allocWithZone(CNSensitiveContentAnalysisManager) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_199AD7524()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 bounds];
  v6 = v5;

  if (v6 >= v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v0 mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;

  if (v10 > v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  return v7 / v14;
}

char *sub_199AD7620(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for CNAvatarPosterPairViewModel()) init];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentManager] = 0;
  v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_showShadow] = 0;
  v10 = OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_displaySessionUUID;
  v11 = sub_199DF729C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_pairConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_avatarOnlyConstraints] = v12;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___posterImageView] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___avatarVC] = 0;
  *&v4[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView____lazy_storage___sensitiveContentBlurView] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for CNAvatarPosterPairView();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_199AD7D84();
  v14 = *&v13[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModel];
  sub_199ADA6A8(&qword_1EAF73610, type metadata accessor for CNAvatarPosterPairViewModel);
  v15 = v14;
  sub_199DF83BC();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_199DF83EC();
  v16 = sub_199DF848C();

  *&v13[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber] = v16;

  return v13;
}

void sub_199AD7878()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_199AD8BEC();
  }
}

id sub_199AD7918()
{
  if (*&v0[OBJC_IVAR____TtC10ContactsUI22CNAvatarPosterPairView_viewModelSubscriber])
  {

    sub_199DF83AC();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNAvatarPosterPairView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CNAvatarPosterPairView()
{
  result = qword_1EAF735E8;
  if (!qword_1EAF735E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199AD7B14()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for CNAvatarPosterPairView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = [objc_opt_self() currentTraitCollection];
  [v1 displayCornerRadius];
  v3 = v2;

  v4 = sub_199AD9E00();
  v5 = [*&v4[OBJC_IVAR____TtC10ContactsUI32CNHostingPosterSnapshotImageView_hostingController] view];
  if (v5)
  {
    v6 = v5;

    if (v3 <= 0.0)
    {
      v7 = 24.0;
    }

    else
    {
      v7 = v3;
    }

    [v6 bounds];
    v9 = v8;

    v10 = v7 * v9;
    v11 = [objc_opt_self() mainScreen];
    [v11 bounds];
    v13 = v12;

    v14 = sub_199ADA004();
    v15 = [v14 layer];

    [v15 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}
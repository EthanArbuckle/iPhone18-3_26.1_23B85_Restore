uint64_t sub_1D35A52E0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D35A5328()
{
  result = qword_1EC76A708;
  if (!qword_1EC76A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A708);
  }

  return result;
}

uint64_t sub_1D35A537C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D35A53DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id EKRemoteUIObjectSerializerWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKRemoteUIObjectSerializerWrapper.init()()
{
  *&v0[OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer] = [objc_allocWithZone(sub_1D35DF2E4()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKRemoteUIObjectSerializerWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D35A559C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer);
  v2 = sub_1D35DF2C4();

  return v2;
}

uint64_t sub_1D35A567C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer);
  v2 = sub_1D35DF2D4();

  return v2;
}

id EKRemoteUIObjectSerializerWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKRemoteUIObjectSerializerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D35A5800(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id EKCalendarChooserOOPImpl.init(eventStore:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostingController] = 0;
  v4 = &v1[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView];
  sub_1D35A5800(v12);
  v5 = v12[7];
  *(v4 + 6) = v12[6];
  *(v4 + 7) = v5;
  *(v4 + 8) = v12[8];
  *(v4 + 72) = v13;
  v6 = v12[3];
  *(v4 + 2) = v12[2];
  *(v4 + 3) = v6;
  v7 = v12[5];
  *(v4 + 4) = v12[4];
  *(v4 + 5) = v7;
  v8 = v12[1];
  *v4 = v12[0];
  *(v4 + 1) = v8;
  v9 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostViewModel;
  type metadata accessor for EKCalendarChooserOOPHostViewModel();
  *&v2[v9] = sub_1D35C3540();
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_selectionStyle] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_displayStyle] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_entityType] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showIdentityChooser] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDelegateSetupCell] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_delegate] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars] = MEMORY[0x1E69E7CD0];
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDetailAccessories] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_chooserMode] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_disableCalendarsUnselectedByFocus] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_allowsPullToRefresh] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showsDeclinedEventsSetting] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showAccountStatus] = 0;
  v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_onlyShowUnmanagedAccounts] = 0;
  *&v2[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_eventStore] = a1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for EKCalendarChooserOOPImpl();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1D35A5ACC()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = type metadata accessor for EKCalendarChooserOOPImpl();
  objc_msgSendSuper2(&v84, sel_viewDidLoad);
  v2 = *(v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostViewModel);
  v3 = sub_1D35D3E74(v85);
  CGSizeMake(v85, v3);
  v4 = v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView;
  swift_beginAccess();
  v5 = *(v4 + 7);
  v87[6] = *(v4 + 6);
  v87[7] = v5;
  v87[8] = *(v4 + 8);
  v88 = *(v4 + 72);
  v6 = *(v4 + 3);
  v87[2] = *(v4 + 2);
  v87[3] = v6;
  v7 = *(v4 + 5);
  v87[4] = *(v4 + 4);
  v87[5] = v7;
  v8 = *(v4 + 1);
  v87[0] = *v4;
  v87[1] = v8;
  v9 = v85[7];
  *(v4 + 6) = v85[6];
  *(v4 + 7) = v9;
  *(v4 + 8) = v85[8];
  *(v4 + 72) = v86;
  v10 = v85[3];
  *(v4 + 2) = v85[2];
  *(v4 + 3) = v10;
  v11 = v85[5];
  *(v4 + 4) = v85[4];
  *(v4 + 5) = v11;
  v12 = v85[1];
  *v4 = v85[0];
  *(v4 + 1) = v12;
  sub_1D35AC260(v87);
  v13 = sub_1D35A5820();
  memmove(__dst, v14, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_eventStore);
    v16 = v15;
    sub_1D35D5180(v15);
  }

  (v13)(&v83, 0);
  v17 = sub_1D35A5820();
  memmove(&v83, v18, 0x92uLL);
  v19 = sub_1D35AC2C8(&v83);
  v20 = MEMORY[0x1E69E7D40];
  if (v19 != 1)
  {
    v21 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
    sub_1D35D5440(v21);
  }

  (v17)(v82, 0);
  v22 = sub_1D35A5820();
  memmove(v82, v23, 0x92uLL);
  if (sub_1D35AC2C8(v82) != 1)
  {
    v24 = (*((*v20 & *v1) + 0x170))();
    sub_1D35D5644(v24);
  }

  (v22)(v81, 0);
  v25 = sub_1D35A5820();
  memmove(v81, v26, 0x92uLL);
  if (sub_1D35AC2C8(v81) != 1)
  {
    v27 = (*((*v20 & *v1) + 0x188))();
    sub_1D35D5840(v27);
  }

  (v25)(v80, 0);
  v28 = sub_1D35A5820();
  memmove(v80, v29, 0x92uLL);
  if (sub_1D35AC2C8(v80) != 1)
  {
    v30 = (*((*v20 & *v1) + 0x1A0))();
    sub_1D35D5A40(v30 & 1);
  }

  (v28)(v79, 0);
  v31 = sub_1D35A5820();
  memmove(v79, v32, 0x92uLL);
  if (sub_1D35AC2C8(v79) != 1)
  {
    v33 = (*((*v20 & *v1) + 0x1B8))();
    sub_1D35D5C40(v33 & 1);
  }

  v34 = (v31)(v78, 0);
  v35 = (*((*v20 & *v1) + 0x200))(v34);
  sub_1D35A8C18(v35);

  v36 = sub_1D35A5820();
  memmove(v78, v37, 0x92uLL);
  if (sub_1D35AC2C8(v78) != 1)
  {
    v38 = (*((*v20 & *v1) + 0x220))();
    sub_1D35D6058(v38 & 1);
  }

  (v36)(v77, 0);
  v39 = sub_1D35A5820();
  memmove(v77, v40, 0x92uLL);
  if (sub_1D35AC2C8(v77) != 1)
  {
    v41 = (*((*v20 & *v1) + 0x238))();
    sub_1D35D6258(v41);
  }

  (v39)(v76, 0);
  v42 = sub_1D35A5820();
  memmove(v76, v43, 0x92uLL);
  if (sub_1D35AC2C8(v76) != 1)
  {
    v44 = (*((*v20 & *v1) + 0x250))();
    sub_1D35D6458(v44 & 1);
  }

  (v42)(v75, 0);
  v45 = sub_1D35A5820();
  memmove(v75, v46, 0x92uLL);
  if (sub_1D35AC2C8(v75) != 1)
  {
    v47 = (*((*v20 & *v1) + 0x268))();
    sub_1D35D6658(v47 & 1);
  }

  (v45)(v74, 0);
  v48 = sub_1D35A5820();
  memmove(v74, v49, 0x92uLL);
  if (sub_1D35AC2C8(v74) != 1)
  {
    v50 = (*((*v20 & *v1) + 0x280))();
    sub_1D35D6CC0(v50);
  }

  (v48)(v73, 0);
  v51 = sub_1D35A5820();
  memmove(v73, v52, 0x92uLL);
  if (sub_1D35AC2C8(v73) != 1)
  {
    v53 = (*((*v20 & *v1) + 0x298))();
    sub_1D35D6EF4(v53 & 1);
  }

  (v51)(v72, 0);
  v54 = sub_1D35A5820();
  memmove(v72, v55, 0x92uLL);
  if (sub_1D35AC2C8(v72) != 1)
  {
    v56 = (*((*v20 & *v1) + 0x2C8))();
    sub_1D35D70F0(v56);
  }

  (v54)(v71, 0);
  v57 = sub_1D35A5820();
  memmove(v71, v58, 0x92uLL);
  if (sub_1D35AC2C8(v71) != 1)
  {
    v59 = (*((*v20 & *v1) + 0x2E0))();
    sub_1D35D72F0(v59 & 1);
  }

  (v57)(v70, 0);
  v60 = sub_1D35A5820();
  memmove(v70, v61, 0x92uLL);
  if (sub_1D35AC2C8(v70) != 1)
  {
    v62 = (*((*v20 & *v1) + 0x2B0))();
    sub_1D35D6950(v62);
  }

  (v60)(v69, 0);
  v63 = sub_1D35A5820();
  memmove(v69, v64, 0x92uLL);
  if (sub_1D35AC2C8(v69) != 1)
  {
    v65 = (*((*v20 & *v1) + 0x2F8))();
    sub_1D35D74F0(v65 & 1);
  }

  v66 = (v63)(v68, 0);
  return (*((*v20 & *v1) + 0x140))(v66);
}

uint64_t sub_1D35A64F4()
{
  v1 = (v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView);
  swift_beginAccess();
  v2 = v1[5];
  v140 = v1[6];
  v3 = v1[6];
  v141 = v1[7];
  v4 = v1[7];
  v142 = v1[8];
  v5 = v1[1];
  v136 = v1[2];
  v6 = v1[2];
  v137 = v1[3];
  v7 = v1[3];
  v138 = v1[4];
  v8 = v1[4];
  v139 = v1[5];
  v134 = *v1;
  v9 = *v1;
  v135 = v1[1];
  v150 = v3;
  v151 = v4;
  v152 = v1[8];
  v146 = v6;
  v147 = v7;
  v148 = v8;
  v149 = v2;
  v144 = v9;
  v143 = *(v1 + 72);
  v153 = *(v1 + 72);
  v145 = v5;
  if (sub_1D35AC2C8(&v144) == 1)
  {
    goto LABEL_29;
  }

  v92[6] = v140;
  v92[7] = v141;
  v92[8] = v142;
  v93 = v143;
  v92[2] = v136;
  v92[3] = v137;
  v92[4] = v138;
  v92[5] = v139;
  v92[0] = v134;
  v92[1] = v135;
  v111 = v144;
  v10 = v145;
  v11 = v146;
  v108 = v151;
  v109 = v152;
  v110 = v153;
  v104 = v147;
  v105 = v148;
  v106 = v149;
  v107 = v150;
  v12 = objc_opt_self();
  sub_1D35AC2E0(v92, v132);
  v13 = [v12 shared];
  v132[0] = v111;
  v132[6] = v107;
  v132[7] = v108;
  v132[8] = v109;
  v132[3] = v104;
  v132[4] = v105;
  v132[1] = v10;
  v132[2] = v11;
  v133 = v110;
  v132[5] = v106;
  v14 = sub_1D35B3460();
  v15 = [v13 layoutDirectionOrOverride];
  v16 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0xC8))(v15);

  v122 = v111;
  v123 = v10;
  v124 = v11;
  v129 = v108;
  v130 = v109;
  v131 = v110;
  v125 = v104;
  v126 = v105;
  v127 = v106;
  v128 = v107;
  v17 = sub_1D35B3460();
  (*((*v16 & *v17) + 0xE0))([v13 preferredContentSizeCategoryOrOverride]);

  v75 = v13;
  v18 = [v13 viewHierarchyOrOverride];
  v19 = EKUIContainedControllerIdealWidth();
  EKUIContainedControllerIdealHeight();
  v21 = CGSizeMake(v20, v19);
  v23 = v22;
  v76 = objc_opt_self();
  v24 = [v76 systemBlueColor];
  v112 = v111;
  v113 = v10;
  v114 = v11;
  v119 = v108;
  v120 = v109;
  v121 = v110;
  v115 = v104;
  v116 = v105;
  v117 = v106;
  v118 = v107;
  v25 = sub_1D35B3460();
  v26 = [v18 ekui_verticalSizeClass];
  v27 = [v18 ekui_horizontalSizeClass];
  v28 = [v18 ekui_interfaceOrientation];
  v29 = v24;
  [v18 ekui_affineTransform];
  v30 = v96;
  v77 = v95;
  v78 = v94;
  v31 = objc_allocWithZone(EKUIViewHierarchyFromComponents);
  v94 = v78;
  v95 = v77;
  v96 = v30;
  v32 = [v31 initWithSize:v26 verticalSizeClass:v27 horizontalSizeClass:v28 interfaceOrientation:v29 tintColor:&v94 affineTranform:{v21, v23}];
  v79 = v29;

  (*((*MEMORY[0x1E69E7D40] & *v25) + 0xF8))(v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v11);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v10);
  v94 = v111;
  *&v95 = sub_1D35AC3FC;
  *(&v95 + 1) = v34;
  *&v96 = sub_1D35AC33C;
  *(&v96 + 1) = v33;
  v101 = v108;
  v102 = v109;
  v103 = v110;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v88 = v107;
  v89 = v108;
  v90 = v109;
  v91 = v110;
  v84 = v96;
  v85 = v104;
  v86 = v105;
  v87 = v106;
  v82 = v111;
  v83 = v95;
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A848));
  sub_1D35AC2E0(&v94, v81);
  v36 = sub_1D35DF104();
  [v80 addChildViewController_];
  v37 = [v36 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_17;
  }

  v38 = v37;
  [v37 setInsetsLayoutMarginsFromSafeArea_];

  v39 = [v36 view];
  if (!v39)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v40 = [v76 systemGroupedBackgroundColor];
  [v39 setBackgroundColor_];

  v41 = [v80 view];
  if (!v41)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v42 = v41;
  v43 = [v36 view];

  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v42 addSubview_];

  [v36 didMoveToParentViewController_];
  v44 = *&v80[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostingController];
  *&v80[OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostingController] = v36;
  v45 = v36;

  v46 = [v45 view];
  if (!v46)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v46 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A850);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D3601470;
  v48 = [v45 view];

  if (!v48)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v49 = [v48 leadingAnchor];

  v50 = [v80 view];
  if (!v50)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v50;
  v52 = [v50 leadingAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  *(v47 + 32) = v53;
  v54 = [v45 view];

  if (!v54)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = [v54 topAnchor];

  v56 = [v80 view];
  if (!v56)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = v56;
  v58 = [v56 topAnchor];

  v59 = [v55 constraintEqualToAnchor_];
  *(v47 + 40) = v59;
  v60 = [v45 view];

  if (!v60)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v61 = [v60 trailingAnchor];

  v62 = [v80 view];
  if (!v62)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v61 constraintEqualToAnchor_];
  *(v47 + 48) = v65;
  v66 = [v45 view];

  if (v66)
  {
    v67 = [v66 bottomAnchor];

    v68 = [v80 view];
    if (v68)
    {
      v69 = v68;
      v70 = objc_opt_self();
      v71 = [v69 bottomAnchor];

      v72 = [v67 constraintEqualToAnchor_];
      *(v47 + 56) = v72;
      sub_1D35A52E0(0, &unk_1EC76AD20);
      v73 = sub_1D35DF3D4();

      [v70 activateConstraints_];

      swift_unknownObjectRelease();
      v82 = v111;
      *&v83 = sub_1D35AC3FC;
      *(&v83 + 1) = v34;
      *&v84 = sub_1D35AC33C;
      *(&v84 + 1) = v33;
      v89 = v108;
      v90 = v109;
      v91 = v110;
      v85 = v104;
      v86 = v105;
      v87 = v106;
      v88 = v107;
      return sub_1D35AC49C(&v82);
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1D35DF754();
  __break(1u);
  return result;
}

void sub_1D35A7070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D35DF4D4();
  v12 = sub_1D35AF6CC();
  v13 = *v12;
  if (os_log_type_enabled(*v12, v11))
  {
    v14 = v13;
    v15 = a4;
    v16 = a3;
    v17 = a5;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D35A3CF8(a1, a2, &v38);
    _os_log_impl(&dword_1D3400000, v14, v11, "EKCalendarChooserOOPImpl: Received remoteCalendarChooserRequestPresentView on the host app side. viewName: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1D38BA4C0](v19, -1, -1);
    v20 = v18;
    a5 = v17;
    a3 = v16;
    a4 = v15;
    MEMORY[0x1D38BA4C0](v20, -1, -1);
  }

  v21 = [v6 parentViewController];
  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v21;
  v37 = [v21 parentViewController];

  if (!v37)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

LABEL_11:
    sub_1D35DF4C4();
    v37 = *v12;
    sub_1D35DF024();
    goto LABEL_12;
  }

  if (a1 == 0xD000000000000010 && 0x80000001D360DE00 == a2 || (v24 = v23, v25 = sub_1D35DF7C4(), v23 = v24, (v25 & 1) != 0))
  {
    [v23 presentAddCalendarView];
LABEL_12:
    v26 = v37;
LABEL_13:

    return;
  }

  sub_1D35DF4C4();
  v27 = *v12;
  sub_1D35DF024();

  type metadata accessor for EKEventGenericDetailViewControllerOOPImpl();

  v36 = EKEventGenericDetailViewControllerOOPImpl.__allocating_init(hostViewID:)(a3, a4);
  v28 = [v24 navigationDelegate];
  if (!v28)
  {
    goto LABEL_27;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      [v28 presentViewController:v36 animated:1 completion:0];
    }

    else
    {
      v29 = v28;
      if (a5 == 2)
      {
        [v36 setModalPresentationStyle:2];
        [v29 presentViewController:v36 animated:1 completion:0];
      }

      else
      {
        v31 = sub_1D35DF4C4();
        v32 = *v12;
        if (os_log_type_enabled(v32, v31))
        {
          v33 = v32;
          v34 = swift_slowAlloc();
          *v34 = 134217984;
          *(v34 + 4) = a5;
          _os_log_impl(&dword_1D3400000, v33, v31, "EKCalendarChooserOOPImpl: presentationStyle not recognized: %ld", v34, 0xCu);
          MEMORY[0x1D38BA4C0](v34, -1, -1);
          swift_unknownObjectRelease();

LABEL_27:
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v30 = v28;
  if ([v28 respondsToSelector_])
  {
    [v30 pushViewController:v36 animated:1];

    swift_unknownObjectRelease();
LABEL_28:

    v26 = v36;
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
}

void sub_1D35A74FC(unint64_t a1, char a2)
{
  v3 = v2;
  sub_1D35DF4D4();
  v6 = sub_1D35AF6CC();
  v7 = *v6;
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D35DF024();

  v35 = v3;
  v9 = [v3 parentViewController];
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v9 parentViewController];

  if (!v11)
  {
    goto LABEL_20;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_20:
    sub_1D35DF4C4();
    v36 = *v6;
    sub_1D35DF024();
LABEL_21:
    v25 = v36;
    goto LABEL_22;
  }

  v33 = v12;
  v13 = [v3 parentViewController];
  if (!v13)
  {
LABEL_32:
    sub_1D35DF4C4();
    v36 = *v6;
    sub_1D35DF024();

    goto LABEL_21;
  }

  v34 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_32;
  }

  v30 = v14;
  v31 = a2;
  v37 = v8;
  v32 = v11;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_36:
    v16 = sub_1D35DF644();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_eventStore;
  v19 = a1;
  v20 = a1 & 0xC000000000000001;
  v21 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if (v20)
    {
      v22 = MEMORY[0x1D38B8B40](v17, v19);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_35;
      }

      v22 = *(v19 + 8 * v17 + 32);
    }

    v23 = v22;
    v24 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    a1 = [v22 calendarInEventStore_];

    ++v17;
    if (a1)
    {
      MEMORY[0x1D38B8810]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D35DF404();
      }

      sub_1D35DF414();
      v21 = v37;
      v17 = v24;
    }
  }

  v26 = sub_1D35AC4F0(v21);

  *(v35 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = v26;

  sub_1D35A52E0(0, &qword_1EC76A860);
  sub_1D35AC630();
  v27 = sub_1D35DF474();

  [v30 remoteCalendarChooserSelectionChanged:v27 allSelected:v31 & 1];

  v28 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x1D0))();
  if (v28)
  {
    v29 = v28;
    if ([v28 respondsToSelector_])
    {
      [v29 calendarChooserSelectionDidChange_];
    }

    swift_unknownObjectRelease();
    return;
  }

  v25 = v34;
LABEL_22:
}

uint64_t sub_1D35A79AC()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_selectionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A7A30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

void (*sub_1D35A7AF4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_selectionStyle;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A7B80;
}

uint64_t sub_1D35A7BE0()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_displayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A7C64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = result;
  return result;
}

void (*sub_1D35A7D28(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_displayStyle;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A7DB4;
}

uint64_t sub_1D35A7E14()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_entityType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A7E98@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  return result;
}

void (*sub_1D35A7F5C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_entityType;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A7FE8;
}

uint64_t sub_1D35A8068()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showIdentityChooser;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A80EC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A81B4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showIdentityChooser;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A8240;
}

uint64_t sub_1D35A82A0()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDelegateSetupCell;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A8324@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A83EC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDelegateSetupCell;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A8478;
}

uint64_t sub_1D35A859C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D35A85F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1D35A8658(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1D35A87A4()
{
  v1 = MEMORY[0x1E69E7CD0];
  v7 = MEMORY[0x1E69E7CD0];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  if (v3 == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars);
  }

  else if (!v3)
  {
    v4 = (*((*v2 & *v0) + 0x280))();
    if (v4)
    {
      sub_1D35AB2E4(&v6, v4);

      return v7;
    }
  }

  return v1;
}

uint64_t sub_1D35A8948(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = a1;

  sub_1D35A8C18(a1);
}

uint64_t sub_1D35A89A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x200))();
  *a2 = result;
  return result;
}

uint64_t sub_1D35A8A0C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x208);

  return v2(v3);
}

uint64_t (*sub_1D35A8A78(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v9 = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  if (v5 == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars);
  }

  else if (!v5)
  {
    v6 = (*((*v4 & *v1) + 0x280))();
    if (v6)
    {
      sub_1D35AB2E4(&v8, v6);

      v3 = v9;
    }
  }

  *a1 = v3;
  return sub_1D35A8B8C;
}

uint64_t sub_1D35A8B8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(a1[1] + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = *a1;
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    sub_1D35A8C18(v2);
  }

  else
  {

    sub_1D35A8C18(v3);
  }
}

void sub_1D35A8C18(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D35DF604();
    sub_1D35A52E0(0, &qword_1EC76A860);
    sub_1D35AC630();
    sub_1D35DF4B4();
    a1 = __dst[19];
    v3 = __dst[20];
    v4 = __dst[21];
    v5 = __dst[22];
    v6 = __dst[23];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  while (a1 < 0)
  {
    v16 = sub_1D35DF674();
    if (!v16 || (v20[0] = v16, sub_1D35A52E0(0, &qword_1EC76A860), swift_dynamicCast(), v15 = __dst[0], v13 = v5, v14 = v6, !__dst[0]))
    {
LABEL_20:
      sub_1D35AD610();
      v18 = sub_1D35A5820();
      memmove(__dst, v19, 0x92uLL);
      if (sub_1D35AC2C8(__dst) != 1)
      {
        sub_1D35D5E24(v2);
      }

      (v18)(v20, 0);

      return;
    }

LABEL_18:
    v17 = [v15 calendarIdentifier];
    if (!v17)
    {
      sub_1D35DF384();
      v17 = sub_1D35DF354();
    }

    [v2 addObject_];

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1D35A8F00()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDetailAccessories;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A8F84@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A904C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDetailAccessories;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A90D8;
}

uint64_t sub_1D35A9138()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_chooserMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D35A919C(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  *&a1[v8] = a3;
  v9 = a1;
  v10 = sub_1D35A5820();
  memmove(__dst, v11, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    a5(*&a1[v8]);
  }

  (v10)(v12, 0);
}

uint64_t sub_1D35A9294(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  *(v3 + v6) = a1;
  v7 = sub_1D35A5820();
  memmove(__dst, v8, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    a3(*(v3 + v6));
  }

  return (v7)(v10, 0);
}

uint64_t sub_1D35A935C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x238))();
  *a2 = result;
  return result;
}

void (*sub_1D35A9420(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_chooserMode;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A94AC;
}

void sub_1D35A94C4(void **a1, char a2, void (*a3)(void))
{
  v3 = *a1;
  v4 = (*a1 + 19);
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v6 = sub_1D35A5820();
    memmove(v3, v7, 0x92uLL);
    if (sub_1D35AC2C8(v3) != 1)
    {
      v9 = v3[26];
      v8 = v3[27];
      swift_beginAccess();
      a3(*(v9 + v8));
    }

    (v6)(v4, 0);
  }

  free(v3);
}

uint64_t sub_1D35A95E0()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_disableCalendarsUnselectedByFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A9664@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A972C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_disableCalendarsUnselectedByFocus;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A97B8;
}

uint64_t sub_1D35A9818()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_allowsPullToRefresh;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A989C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x268))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A9964(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_allowsPullToRefresh;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35A99F0;
}

uint64_t sub_1D35A9A70()
{

  v1 = sub_1D35A9C1C(v0);

  return v1;
}

void sub_1D35A9B10(void *a1)
{
  sub_1D35AC698(a1);
}

uint64_t sub_1D35A9B48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  *a2 = result;
  return result;
}

uint64_t sub_1D35A9BAC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x288);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1D35A9C1C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D35DF5F4();
    v5 = v4;
    v6 = sub_1D35DF684();
    v8 = v7;
    v9 = MEMORY[0x1D38B8A60](v3, v5, v6, v7);
    sub_1D35AD604(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1D35AD604(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1D35DF5C4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1D35ABE8C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1D35AD604(v3, v5, v2 != 0);
  return v12;
}

void (*sub_1D35A9D38(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;

  v4 = sub_1D35A9C1C(v3);

  *a1 = v4;
  return sub_1D35A9DA8;
}

void sub_1D35A9DA8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1D35AC698(v4);

    v3 = v2;
  }

  else
  {
    sub_1D35AC698(*a1);
    v3 = v4;
  }
}

uint64_t sub_1D35A9E5C()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showsDeclinedEventsSetting;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35A9EE0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x298))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35A9FA8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showsDeclinedEventsSetting;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35AA034;
}

void *sub_1D35AA098()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35AA140(void *a1)
{
  sub_1D35AC7B8(a1);
}

uint64_t sub_1D35AA178@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result;
  return result;
}

uint64_t sub_1D35AA1DC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2B8);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1D35AA24C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35AA2D8;
}

void sub_1D35AA2D8(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 19);
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = sub_1D35A5820();
    memmove(v2, v5, 0x92uLL);
    if (sub_1D35AC2C8(v2) != 1)
    {
      v7 = v2[26];
      v6 = v2[27];
      swift_beginAccess();
      v8 = *(v7 + v6);
      v9 = v8;
      sub_1D35D6950(v8);
    }

    (v4)(v3, 0);
  }

  free(v2);
}

uint64_t sub_1D35AA3EC()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35AA504(int a1)
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1D35A5820();
  memmove(__dst, v5, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    sub_1D35D70F0(*(v1 + v3));
  }

  return (v4)(v7, 0);
}

uint64_t sub_1D35AA5C0@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2C8))();
  *a2 = result;
  return result;
}

void (*sub_1D35AA684(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35AA710;
}

void sub_1D35AA710(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 19);
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = sub_1D35A5820();
    memmove(v2, v5, 0x92uLL);
    if (sub_1D35AC2C8(v2) != 1)
    {
      v7 = v2[26];
      v6 = v2[27];
      swift_beginAccess();
      sub_1D35D70F0(*(v7 + v6));
    }

    (v4)(v3, 0);
  }

  free(v2);
}

uint64_t sub_1D35AA81C()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showAccountStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35AA8A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35AA968(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showAccountStatus;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35AA9F4;
}

uint64_t sub_1D35AAA54()
{
  v1 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_onlyShowUnmanagedAccounts;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D35AAAB8(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a4;
  swift_beginAccess();
  a1[v8] = a3;
  v9 = a1;
  v10 = sub_1D35A5820();
  memmove(__dst, v11, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    a5(a1[v8]);
  }

  (v10)(v12, 0);
}

uint64_t sub_1D35AABB0(char a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  *(v3 + v6) = a1;
  v7 = sub_1D35A5820();
  memmove(__dst, v8, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    a3(*(v3 + v6));
  }

  return (v7)(v10, 0);
}

uint64_t sub_1D35AAC78@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2F8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1D35AAD40(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_onlyShowUnmanagedAccounts;
  *(v3 + 208) = v1;
  *(v3 + 216) = v4;
  swift_beginAccess();
  return sub_1D35AADCC;
}

void sub_1D35AADE4(void **a1, char a2, void (*a3)(void))
{
  v3 = *a1;
  v4 = (*a1 + 19);
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v6 = sub_1D35A5820();
    memmove(v3, v7, 0x92uLL);
    if (sub_1D35AC2C8(v3) != 1)
    {
      v9 = v3[26];
      v8 = v3[27];
      swift_beginAccess();
      a3(*(v9 + v8));
    }

    (v6)(v4, 0);
  }

  free(v3);
}

uint64_t sub_1D35AAEB8()
{
  v1 = (v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView);
  swift_beginAccess();
  v2 = v1[7];
  v3 = v1[5];
  v30 = v1[6];
  v31 = v2;
  v4 = v1[7];
  v32 = v1[8];
  v5 = v1[3];
  v6 = v1[1];
  v26 = v1[2];
  v27 = v5;
  v7 = v1[3];
  v8 = v1[5];
  v28 = v1[4];
  v29 = v8;
  v9 = v1[1];
  v24 = *v1;
  v25 = v9;
  v34[6] = v30;
  v34[7] = v4;
  v34[8] = v1[8];
  v34[2] = v26;
  v34[3] = v7;
  v34[4] = v28;
  v34[5] = v3;
  v33 = *(v1 + 72);
  v35 = *(v1 + 72);
  v34[0] = v24;
  v34[1] = v6;
  result = sub_1D35AC2C8(v34);
  if (result != 1)
  {
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    v19 = v29;
    v14 = v24;
    v15 = v25;
    v12[6] = v30;
    v12[7] = v31;
    v12[8] = v32;
    v12[2] = v26;
    v12[3] = v27;
    v12[4] = v28;
    v12[5] = v29;
    v23 = v33;
    v13 = v33;
    v12[0] = v24;
    v12[1] = v25;
    sub_1D35AC2E0(v12, v11);
    sub_1D35D74F8();
    return sub_1D35AC260(&v24);
  }

  return result;
}

id EKCalendarChooserOOPImpl.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D35DF354();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EKCalendarChooserOOPImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKCalendarChooserOOPImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D35AB2E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D35DF654();

    if (v9)
    {

      sub_1D35A52E0(0, &qword_1EC76A860);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1D35DF644();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D35AB51C(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1D35AB70C();
    }

    v18 = v8;
    sub_1D35AB934(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D35A52E0(0, &qword_1EC76A860);
  v11 = sub_1D35DF564();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1D35AB9B8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D35DF574();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1D35AB51C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A8A0);
    v2 = sub_1D35DF6D4();
    v14 = v2;
    sub_1D35DF604();
    if (sub_1D35DF674())
    {
      sub_1D35A52E0(0, &qword_1EC76A860);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D35AB70C();
        }

        v2 = v14;
        result = sub_1D35DF564();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D35DF674());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D35AB70C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A8A0);
  result = sub_1D35DF6C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D35DF564();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D35AB934(uint64_t a1, uint64_t a2)
{
  sub_1D35DF564();
  result = sub_1D35DF5E4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D35AB9B8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D35AB70C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D35ABB28();
      goto LABEL_12;
    }

    sub_1D35ABC78();
  }

  v8 = *v3;
  v9 = sub_1D35DF564();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D35A52E0(0, &qword_1EC76A860);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D35DF574();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D35DF7D4();
  __break(1u);
}

id sub_1D35ABB28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A8A0);
  v2 = *v0;
  v3 = sub_1D35DF6B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D35ABC78()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A8A0);
  result = sub_1D35DF6C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D35DF564();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

void sub_1D35ABE8C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38B8AB0](a1, a2, v7);
      sub_1D35A52E0(0, &qword_1EC76A860);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D35A52E0(0, &qword_1EC76A860);
    if (sub_1D35DF624() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D35DF634();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D35DF564();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D35DF574();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_1D35AC0B0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostingController) = 0;
  v2 = v0 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostView;
  sub_1D35A5800(v8);
  v3 = v8[7];
  *(v2 + 96) = v8[6];
  *(v2 + 112) = v3;
  *(v2 + 128) = v8[8];
  *(v2 + 144) = v9;
  v4 = v8[3];
  *(v2 + 32) = v8[2];
  *(v2 + 48) = v4;
  v5 = v8[5];
  *(v2 + 64) = v8[4];
  *(v2 + 80) = v5;
  v6 = v8[1];
  *v2 = v8[0];
  *(v2 + 16) = v6;
  v7 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_hostViewModel;
  type metadata accessor for EKCalendarChooserOOPHostViewModel();
  *(v1 + v7) = sub_1D35C3540();
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_selectionStyle) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_displayStyle) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_entityType) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showIdentityChooser) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDelegateSetupCell) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_delegate) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showDetailAccessories) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_chooserMode) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_disableCalendarsUnselectedByFocus) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_allowsPullToRefresh) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showsDeclinedEventsSetting) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_explanatoryTextMode) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_showAccountStatus) = 0;
  *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_onlyShowUnmanagedAccounts) = 0;
  sub_1D35DF754();
  __break(1u);
}

uint64_t sub_1D35AC260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D35AC2C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D35AC33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x148))(a1, a2, a3, a4, a5);
  }
}

void sub_1D35AC3FC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x150))(a1, a2 & 1);
  }
}

uint64_t sub_1D35AC4F0(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D35DF644())
  {
    v4 = sub_1D35A52E0(0, &qword_1EC76A860);
    v5 = sub_1D35AC630();
    result = MEMORY[0x1D38B88F0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D38B8B40](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D35AB2E4(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D35DF644();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D35AC630()
{
  result = qword_1EC76A868;
  if (!qword_1EC76A868)
  {
    sub_1D35A52E0(255, &qword_1EC76A860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76A868);
  }

  return result;
}

uint64_t sub_1D35AC698(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D3601480;
    *(inited + 32) = a1;
    v4 = a1;
    v5 = sub_1D35AC4F0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = v5;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl__selectedCalendars) = MEMORY[0x1E69E7CD0];
  }

  v6 = sub_1D35A5820();
  memmove(__dst, v7, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    v8 = a1;
    sub_1D35D6CC0(a1);
  }

  return (v6)(v10, 0);
}

uint64_t sub_1D35AC7B8(void *a1)
{
  v3 = OBJC_IVAR____TtC10EventKitUI24EKCalendarChooserOOPImpl_limitedToSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = sub_1D35A5820();
  memmove(__dst, v7, 0x92uLL);
  if (sub_1D35AC2C8(__dst) != 1)
  {
    swift_beginAccess();
    v8 = *(v1 + v3);
    v9 = v8;
    sub_1D35D6950(v8);
  }

  return (v6)(v11, 0);
}

void sub_1D35AD548(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D35AD594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D35AD604(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_1D35AD62C()
{
  if (qword_1EC76BAD0 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BAD8;
}

void sub_1D35AD6A0()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_1D35DF494();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A908);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D36015C0;
  v2 = sub_1D35A52E0(0, &qword_1EC76AD00);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A910);
  *(v1 + 32) = v2;
  v3 = sub_1D35DF324();
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9C8);
  *(v1 + 64) = v3;
  v4 = sub_1D35A52E0(0, &qword_1EC76A918);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A920);
  *(v1 + 96) = v4;
  v5 = sub_1D35A52E0(0, &qword_1EC76A928);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A930);
  *(v1 + 128) = v5;
  v6 = sub_1D35A52E0(0, &qword_1EC76A938);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A940);
  *(v1 + 160) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v8 = sub_1D35DF3D4();

  [v7 initWithArray_];

  sub_1D35DF484();
  __break(1u);
}

uint64_t sub_1D35ADA04(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1D35AECF0(*(v2 + 48) + 40 * (v11 | (v10 << 6)), v15);
      v12[0] = v15[0];
      v12[1] = v15[1];
      v13 = v16;
      sub_1D35AED4C(v14, v12);
      result = sub_1D35AEE98(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D35ADB10()
{
  if (qword_1EC76BAE0 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BAE8;
}

void *sub_1D35ADB98()
{
  if (qword_1EC76BAF0 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BAF8;
}

void sub_1D35ADC20(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

void *sub_1D35ADC8C()
{
  if (qword_1EC76BB00 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BB08;
}

void sub_1D35ADD00()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_1D35DF494();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A908);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D36015D0;
  v2 = sub_1D35A52E0(0, &qword_1EC76AD00);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A910);
  *(v1 + 32) = v2;
  v3 = sub_1D35DF324();
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9C8);
  *(v1 + 64) = v3;
  v4 = sub_1D35A52E0(0, &qword_1EC76A918);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A920);
  *(v1 + 96) = v4;
  v5 = sub_1D35A52E0(0, &qword_1EC76A928);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A930);
  *(v1 + 128) = v5;
  v6 = sub_1D35A52E0(0, &qword_1EC76A938);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A940);
  *(v1 + 160) = v6;
  v7 = sub_1D35A52E0(0, &qword_1EC76AA30);
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AA38);
  *(v1 + 192) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1D35DF3D4();

  [v8 initWithArray_];

  sub_1D35DF484();
  __break(1u);
}

uint64_t *sub_1D35AE098()
{
  if (qword_1EC76BB10 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BB18;
}

void sub_1D35AE10C()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_1D35DF494();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A908);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D36015D0;
  v2 = sub_1D35A52E0(0, &qword_1EC76AD00);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A910);
  *(v1 + 32) = v2;
  v3 = sub_1D35DF324();
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9C8);
  *(v1 + 64) = v3;
  v4 = sub_1D35A52E0(0, &qword_1EC76A918);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A920);
  *(v1 + 96) = v4;
  v5 = sub_1D35A52E0(0, &qword_1EC76A928);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A930);
  *(v1 + 128) = v5;
  v6 = sub_1D35A52E0(0, &qword_1EC76A938);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A940);
  *(v1 + 160) = v6;
  v7 = sub_1D35A52E0(0, &qword_1EC76A9B0);
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9B8);
  *(v1 + 192) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1D35DF3D4();

  [v8 initWithArray_];

  sub_1D35DF484();
  __break(1u);
}

uint64_t *sub_1D35AE4A8()
{
  if (qword_1EC76BB20 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BB28;
}

void sub_1D35AE51C()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_1D35DF494();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A908);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D36015D0;
  v2 = sub_1D35A52E0(0, &qword_1EC76AD00);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A910);
  *(v1 + 32) = v2;
  v3 = sub_1D35A52E0(0, &qword_1EC76A918);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A920);
  *(v1 + 64) = v3;
  v4 = sub_1D35A52E0(0, &qword_1EC76A928);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A930);
  *(v1 + 96) = v4;
  v5 = sub_1D35A52E0(0, &qword_1EC76A938);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A940);
  *(v1 + 128) = v5;
  v6 = sub_1D35A52E0(0, &qword_1EC76A9B0);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9B8);
  *(v1 + 160) = v6;
  v7 = sub_1D35A52E0(0, &qword_1EC76B210);
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A9C0);
  *(v1 + 192) = v7;
  v8 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v9 = sub_1D35DF3D4();

  [v8 initWithArray_];

  sub_1D35DF484();
  __break(1u);
}

uint64_t *sub_1D35AE828()
{
  if (qword_1EC76BB30 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BB38;
}

void sub_1D35AE89C()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_1D35DF494();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A908);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D36015E0;
  v2 = sub_1D35A52E0(0, &qword_1EC76AD00);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A910);
  *(v1 + 32) = v2;
  v3 = sub_1D35A52E0(0, &qword_1EC76A918);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A920);
  *(v1 + 64) = v3;
  v4 = sub_1D35A52E0(0, &qword_1EC76A928);
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A930);
  *(v1 + 96) = v4;
  v5 = sub_1D35A52E0(0, &qword_1EC76A938);
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A940);
  *(v1 + 128) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v7 = sub_1D35DF3D4();

  [v6 initWithArray_];

  sub_1D35DF484();
  __break(1u);
}

uint64_t *sub_1D35AEB38()
{
  if (qword_1EC76BB40 != -1)
  {
    swift_once();
  }

  return &qword_1EC76BB48;
}

id sub_1D35AEBAC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for EKUIRemoteUIXPCInterface(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EKUIRemoteUIXPCInterface(_WORD *result, int a2, int a3)
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

uint64_t sub_1D35AED4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D35DF694();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1D35AECF0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1D38B8AF0](v16, a2);
      sub_1D35AEE98(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D35AEE98(a2);
    sub_1D35AECF0(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D35AECF0(a2, v16);
    v15 = *v3;
    sub_1D35AF14C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1D35AEEEC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A948);
  result = sub_1D35DF6C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 40 * (v14 | (v5 << 6));
      v26 = *v17;
      v27 = *(v17 + 16);
      v28 = *(v17 + 32);
      result = sub_1D35DF694();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 40 * v12;
      *v13 = v26;
      *(v13 + 16) = v27;
      *(v13 + 32) = v28;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D35AF14C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D35AEEEC();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D35AF2C4();
      goto LABEL_12;
    }

    sub_1D35AF43C();
  }

  v9 = *v3;
  result = sub_1D35DF694();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1D35AECF0(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1D38B8AF0](v19, v6);
      result = sub_1D35AEE98(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D35DF7D4();
  __break(1u);
  return result;
}

void *sub_1D35AF2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A948);
  v2 = *v0;
  v3 = sub_1D35DF6B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_1D35AECF0(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D35AF43C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A948);
  result = sub_1D35DF6C4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_1D35AECF0(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = sub_1D35DF694();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D35AF668()
{
  sub_1D35AF73C();
  result = sub_1D35DF584();
  qword_1EC76C8F8 = result;
  return result;
}

uint64_t *sub_1D35AF6CC()
{
  if (qword_1EC76BB50 != -1)
  {
    swift_once();
  }

  return &qword_1EC76C8F8;
}

unint64_t sub_1D35AF73C()
{
  result = qword_1EC76AA40;
  if (!qword_1EC76AA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC76AA40);
  }

  return result;
}

id EKEventGenericDetailViewControllerOOPImpl.__allocating_init(hostViewID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController] = 0;
  v7 = &v6[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  *&v6[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor] = 0;
  type metadata accessor for EKEventGenericDetailOOPHostViewModel();
  *&v6[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostViewModel] = sub_1D35C2538(a1, a2);
  v9.receiver = v6;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

id EKEventGenericDetailViewControllerOOPImpl.init(hostViewID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController] = 0;
  v6 = &v3[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 10) = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor] = 0;
  type metadata accessor for EKEventGenericDetailOOPHostViewModel();
  *&v3[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostViewModel] = sub_1D35C2538(a1, a2);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for EKEventGenericDetailViewControllerOOPImpl();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1D35AFB0C()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for EKEventGenericDetailViewControllerOOPImpl();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  v1 = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostViewModel);
  v2 = sub_1D359EB70(&v14);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))(v2);
  sub_1D35A0020(v4);
  v5 = v17;
  v6 = v16;
  v21[2] = v16;
  v21[3] = v17;
  v7 = v18;
  v21[4] = v18;
  v8 = v15;
  v21[0] = v14;
  v21[1] = v15;
  v9 = v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  v10 = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 48);
  v23[2] = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 32);
  v23[3] = v10;
  v23[4] = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 64);
  v11 = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16);
  v23[0] = *(v0 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v23[1] = v11;
  *v9 = v14;
  *(v9 + 1) = v8;
  *(v9 + 3) = v5;
  *(v9 + 4) = v7;
  v22 = v19;
  v24 = *(v9 + 10);
  *(v9 + 10) = v19;
  *(v9 + 2) = v6;
  sub_1D35A0790(v21, v25);
  v12 = sub_1D35AFCA4(v23);
  (*((*v3 & *v0) + 0xC0))(v12);
  v25[2] = v16;
  v25[3] = v17;
  v25[4] = v18;
  v26 = v19;
  v25[0] = v14;
  v25[1] = v15;
  return sub_1D35AFD0C(v25);
}

uint64_t sub_1D35AFCA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D35AFDA8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView];
  v3 = *&v0[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 8];
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = *(v2 + 10);
  v58 = *(v2 + 8);
  v59 = *(v2 + 9);
  v56 = *(v2 + 7);
  v6 = *(v2 + 5);
  v7 = *(v2 + 6);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 2);
  v68[0] = *v2;
  v4 = v68[0];
  v68[1] = v3;
  v68[2] = v10;
  v68[3] = v8;
  v68[4] = v9;
  v68[5] = v6;
  v68[6] = v7;
  v68[7] = v56;
  v68[8] = v58;
  v68[9] = v59;
  v68[10] = v5;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D35A0790(v68, &v69);
  sub_1D3410744(v10);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v9);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v7);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v58);
  *&v57 = v4;
  *(&v57 + 1) = v3;
  *&v69 = v4;
  *(&v69 + 1) = v3;
  *&v70 = sub_1D35B04E4;
  *(&v70 + 1) = v11;
  v55 = v11;
  *&v71 = sub_1D35B059C;
  *(&v71 + 1) = v12;
  *&v72 = sub_1D35B0644;
  *(&v72 + 1) = v13;
  *&v73 = sub_1D35B06E4;
  *(&v73 + 1) = v14;
  v74 = v5;
  v65 = v72;
  v66 = v73;
  v60 = v5;
  v67 = v5;
  v62 = v69;
  v63 = v70;
  v64 = v71;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AA70));
  sub_1D35A0790(&v69, v61);
  v16 = sub_1D35DF104();
  [v1 addChildViewController_];
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = v1;
  [v17 setInsetsLayoutMarginsFromSafeArea_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = v13;
  v23 = [v16 view];

  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v21 addSubview_];

  [v16 didMoveToParentViewController_];
  v24 = *&v19[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController];
  *&v19[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostingController] = v16;
  v25 = v16;

  v26 = [v25 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A850);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D3601470;
  v28 = [v25 view];

  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = [v28 leadingAnchor];

  v30 = [v19 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v27 + 32) = v33;
  v34 = [v25 view];

  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = [v34 topAnchor];

  v36 = [v19 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v27 + 40) = v39;
  v40 = [v25 view];

  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = [v40 trailingAnchor];

  v42 = [v19 view];
  if (!v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v27 + 48) = v45;
  v46 = [v25 view];

  if (v46)
  {
    v47 = [v46 bottomAnchor];

    v48 = [v19 view];
    if (v48)
    {
      v49 = v48;
      v50 = objc_opt_self();
      v51 = [v49 bottomAnchor];

      v52 = [v47 constraintEqualToAnchor_];
      *(v27 + 56) = v52;
      sub_1D35A52E0(0, &unk_1EC76AD20);
      v53 = sub_1D35DF3D4();

      [v50 activateConstraints_];

      v62 = v57;
      *&v63 = sub_1D35B04E4;
      *(&v63 + 1) = v55;
      *&v64 = sub_1D35B059C;
      *(&v64 + 1) = v12;
      *&v65 = sub_1D35B0644;
      *(&v65 + 1) = v22;
      *&v66 = sub_1D35B06E4;
      *(&v66 + 1) = v14;
      v67 = v60;
      return sub_1D35AFD0C(&v62);
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D35DF754();
  __break(1u);
  return result;
}

void sub_1D35B04E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF8))(a1, a2, a3, a4, a5);
  }
}

void sub_1D35B059C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x100))(a1, a2, a3);
  }
}

void sub_1D35B0644(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x108))(a1, a2);
  }
}

void sub_1D35B06E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))(a1);
  }
}

void *sub_1D35B07C0()
{
  v1 = OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35B0868(void *a1)
{
  v3 = OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
  v7 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 48);
  v21[2] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 32);
  v21[3] = v7;
  v21[4] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 64);
  v22 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 80);
  v8 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16);
  v21[0] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v21[1] = v8;
  if (*(&v21[0] + 1))
  {
    v15 = v21[0];
    v9 = *(v6 + 64);
    v18 = *(v6 + 48);
    v19 = v9;
    v20 = *(v6 + 80);
    v10 = *(v6 + 32);
    v16 = *(v6 + 16);
    v17 = v10;
    v11 = *(v1 + v3);
    sub_1D35B0978(v21, v13);
    v12 = v11;
    sub_1D35A0020(v11);

    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v14 = v20;
    v13[0] = v15;
    v13[1] = v16;
    sub_1D35AFD0C(v13);
  }

  else
  {
  }
}

uint64_t sub_1D35B0978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D35B09E8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1D35B0A44(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1D35B0AAC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x118uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_oopContentBackgroundColor;
  *(v3 + 264) = v1;
  *(v3 + 272) = v4;
  swift_beginAccess();
  return sub_1D35B0B38;
}

void sub_1D35B0B38(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    v3 = *(v2 + 33);
    swift_endAccess();
    v4 = v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView;
    v5 = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16);
    *v2 = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
    *(v2 + 1) = v5;
    v7 = *(v4 + 48);
    v6 = *(v4 + 64);
    v8 = *(v4 + 32);
    *(v2 + 10) = *(v4 + 80);
    *(v2 + 3) = v7;
    *(v2 + 4) = v6;
    *(v2 + 2) = v8;
    if (*(v2 + 1))
    {
      v11 = *v2;
      v14 = *(v4 + 48);
      v15 = *(v4 + 64);
      v16 = *(v4 + 80);
      v13 = *(v4 + 32);
      v12 = *(v4 + 16);
      v9 = *(*(v2 + 33) + *(v2 + 34));
      sub_1D35B0978(v2, (v2 + 176));
      v10 = v9;
      sub_1D35A0020(v9);
      *(v2 + 120) = v13;
      *(v2 + 136) = v14;
      *(v2 + 152) = v15;
      *(v2 + 21) = v16;
      *(v2 + 88) = v11;
      *(v2 + 104) = v12;
      sub_1D35AFD0C((v2 + 88));
    }
  }

  free(v2);
}

uint64_t sub_1D35B0C98(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = (v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v5 = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 48);
  v23[2] = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 32);
  v23[3] = v5;
  v23[4] = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 64);
  v24 = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 80);
  v6 = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16);
  v23[0] = *(v3 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v23[1] = v6;
  if (*(&v23[0] + 1))
  {
    v9 = result;
    v17 = v23[0];
    v10 = v4[2];
    v11 = v4[4];
    v20 = v4[3];
    v21 = v11;
    v22 = *(v4 + 10);
    v13 = *v4;
    v12 = v4[1];
    v19 = v10;
    v18 = v12;
    v15[3] = v20;
    v15[4] = v11;
    v16 = v22;
    v15[0] = v13;
    v15[1] = v12;
    v15[2] = v10;
    sub_1D35A0790(v15, v14);
    a3(v9, a2);
    return sub_1D35AFCA4(v23);
  }

  return result;
}

uint64_t sub_1D35B0D8C(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1D35DF384();
  v8 = v7;
  v9 = &a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView];
  v10 = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 48];
  v23[2] = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 32];
  v23[3] = v10;
  v23[4] = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 64];
  v24 = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 80];
  v11 = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16];
  v23[0] = *&a1[OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView];
  v23[1] = v11;
  if (*(&v23[0] + 1))
  {
    v12 = v6;
    *&v17[88] = v23[0];
    v13 = *(v9 + 4);
    v20 = *(v9 + 3);
    v21 = v13;
    v22 = *(v9 + 10);
    v14 = *(v9 + 1);
    v19 = *(v9 + 2);
    v18 = v14;
    v15 = a1;
    sub_1D35B0978(v23, v17);
    a4(v12, v8);

    return sub_1D35AFCA4(v23);
  }

  else
  {
  }
}

uint64_t sub_1D35B0E9C(uint64_t result)
{
  v2 = (v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v3 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 48);
  v19[2] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 32);
  v19[3] = v3;
  v19[4] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 64);
  v20 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 80);
  v4 = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC10EventKitUI41EKEventGenericDetailViewControllerOOPImpl_hostView);
  v19[1] = v4;
  if (*(&v19[0] + 1))
  {
    v5 = result;
    v13 = v19[0];
    v6 = v2[2];
    v7 = v2[4];
    v16 = v2[3];
    v17 = v7;
    v18 = *(v2 + 10);
    v9 = *v2;
    v8 = v2[1];
    v15 = v6;
    v14 = v8;
    v11[3] = v16;
    v11[4] = v7;
    v12 = v18;
    v11[0] = v9;
    v11[1] = v8;
    v11[2] = v6;
    sub_1D35A0790(v11, v10);
    sub_1D35A037C(v5);
    return sub_1D35AFCA4(v19);
  }

  return result;
}

void sub_1D35B1018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1D35DF4D4();
  v63 = sub_1D35AF6CC();
  v11 = *v63;
  if (os_log_type_enabled(*v63, v10))
  {
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v66 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1D35A3CF8(a1, a2, &v66);
    _os_log_impl(&dword_1D3400000, v12, v10, "EKEventGenericDetailViewControllerOOPImpl: Received remoteViewControllerRequestPresentView on the host app side. viewName: %s.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1D38BA4C0](v14, -1, -1);
    MEMORY[0x1D38BA4C0](v13, -1, -1);
  }

  v15 = [v6 parentViewController];
  if (!v15)
  {
    goto LABEL_30;
  }

  v64 = v15;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

LABEL_30:
    sub_1D35DF4C4();
    v65 = *v63;
    sub_1D35DF024();
    v46 = v65;
LABEL_53:

    return;
  }

  v62 = v16;
  if ((a1 != 0xD000000000000018 || 0x80000001D360E700 != a2) && (sub_1D35DF7C4() & 1) == 0)
  {
    if (a1 == 0xD000000000000016 && 0x80000001D360E720 == a2 || (sub_1D35DF7C4() & 1) != 0)
    {
      v47 = EventKitUIBundle();
      if (!v47)
      {
        goto LABEL_58;
      }

      v48 = v47;
      sub_1D35DEEF4();

      v49 = objc_allocWithZone(EKEventGenericDetailViewControllerOOPWrapperImpl);
      v50 = sub_1D35DF354();

      v25 = sub_1D35DF354();
      v19 = [v49 initWithTitle:v50 viewID:v25 leftBarButtonActions:0 rightBarButtonActions:{0, 0x80000001D360E740}];
    }

    else
    {
      v54 = objc_allocWithZone(EKEventGenericDetailViewControllerOOPWrapperImpl);
      v25 = sub_1D35DF354();
      v19 = [v54 initWithTitle:0 viewID:v25 leftBarButtonActions:0 rightBarButtonActions:0];
    }

    goto LABEL_40;
  }

  v17 = objc_allocWithZone(EKEventGenericDetailViewControllerOOPWrapperImpl);
  v18 = sub_1D35DF354();
  v19 = [v17 initWithTitle:0 viewID:v18 leftBarButtonActions:0 rightBarButtonActions:0];

  v20 = [v6 traitCollection];
  v21 = [v20 userInterfaceIdiom];

  if (v21 != 1)
  {
    v22 = [v6 traitCollection];
    v23 = [v22 userInterfaceIdiom];

    if (v23 != 5)
    {
      v51 = [v19 sheetPresentationController];
      if (!v51)
      {
        goto LABEL_41;
      }

      v52 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A850);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D3601480;
      *(v53 + 32) = [objc_opt_self() largeDetent];
      sub_1D35A52E0(0, &unk_1EC76B0E0);
      v25 = sub_1D35DF3D4();

      [v52 setDetents_];

LABEL_40:
LABEL_41:
      if (a5 == 2)
      {
        [v19 setModalPresentationStyle:2];
      }

      else if (a5 != 1)
      {
        if (a5)
        {
          v57 = sub_1D35DF4C4();
          v58 = *v63;
          if (os_log_type_enabled(*v63, v57))
          {
            v59 = v58;
            v60 = swift_slowAlloc();
            *v60 = 134217984;
            *(v60 + 4) = a5;
            _os_log_impl(&dword_1D3400000, v59, v57, "EKEventGenericDetailViewControllerOOPImpl: presentationStyle not recognized: %ld", v60, 0xCu);
            MEMORY[0x1D38BA4C0](v60, -1, -1);
          }

          else
          {
          }

          v46 = v19;
          goto LABEL_53;
        }

        v55 = [v62 navigationController];
        if (v55)
        {
          v56 = v55;
          [v55 pushViewController:v19 animated:1];

          v46 = v64;
          goto LABEL_53;
        }

LABEL_48:

        v46 = v64;
        goto LABEL_53;
      }

      [v62 presentViewController:v19 animated:1 completion:0];
      goto LABEL_48;
    }
  }

  [v19 setModalPresentationStyle:7];
  v24 = [v6 parentViewController];
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = v24;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = v26;
  v28 = [v26 rightBarButtonActions];
  v29 = sub_1D35DF3E4();

  v30 = *(v29 + 16);

  if (!v30)
  {
    goto LABEL_40;
  }

  v61 = v25;
  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = [v27 rightBarButtonActions];
    v34 = sub_1D35DF3E4();

    if (v32 >= *(v34 + 16))
    {
      break;
    }

    v35 = *(v34 + v31 + 32);
    v36 = *(v34 + v31 + 40);

    v37 = [v27 rightBarButtonItems];
    sub_1D35A52E0(0, &qword_1EC76AA78);
    v38 = sub_1D35DF3E4();

    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1D38B8B40](v32, v38);
    }

    else
    {
      if (v32 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v39 = *(v38 + 8 * v32 + 32);
    }

    v40 = v39;

    v41 = sub_1D35DB740();
    if (v35 == *v41 && v36 == v41[1])
    {

LABEL_26:
      v44 = [v19 popoverPresentationController];
      if (v44)
      {
        v45 = v44;
        [v44 setSourceItem_];
      }

      goto LABEL_14;
    }

    v43 = sub_1D35DF7C4();

    if (v43)
    {
      goto LABEL_26;
    }

LABEL_14:
    ++v32;

    v31 += 16;
    if (v30 == v32)
    {
      v25 = v61;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1D35B1814(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D35DF4D4();
  v9 = sub_1D35AF6CC();
  v10 = *v9;
  if (os_log_type_enabled(*v9, v8))
  {
    v11 = v10;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      a1 = 7104878;
      v14 = 0xE300000000000000;
    }

    v15 = sub_1D35A3CF8(a1, v14, &v27);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1D3400000, v11, v8, "EKEventGenericDetailViewControllerOOPImpl: Received remoteViewControllerRequestDismissView on the host app side. viewName: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1D38BA4C0](v13, -1, -1);
    MEMORY[0x1D38BA4C0](v12, -1, -1);
  }

  v16 = [v4 parentViewController];
  if (!v16)
  {
    goto LABEL_11;
  }

  v26 = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {

LABEL_11:
    sub_1D35DF4C4();
    v26 = *v9;
    sub_1D35DF024();
    goto LABEL_12;
  }

  if ((a3 - 1) < 2)
  {
    [v17 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_12;
  }

  if (!a3)
  {
    v19 = [v17 navigationController];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 popViewControllerAnimated_];
    }

    goto LABEL_12;
  }

  v22 = sub_1D35DF4C4();
  v23 = *v9;
  if (!os_log_type_enabled(v23, v22))
  {
LABEL_12:
    v18 = v26;
    goto LABEL_13;
  }

  v24 = v23;
  v25 = swift_slowAlloc();
  *v25 = 134217984;
  *(v25 + 4) = a3;
  _os_log_impl(&dword_1D3400000, v24, v22, "EKEventGenericDetailViewControllerOOPImpl: presentationStyle not recognized: %ld", v25, 0xCu);
  MEMORY[0x1D38BA4C0](v25, -1, -1);

  v18 = v24;
LABEL_13:
}

void sub_1D35B1AE0(uint64_t a1, uint64_t a2)
{
  sub_1D35DF4D4();
  v5 = sub_1D35AF6CC();
  v6 = *v5;
  sub_1D35DF024();

  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_12;
  }

  v28 = v7;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_12:
    sub_1D35DF4C4();
    v28 = *v5;
    sub_1D35DF024();
    goto LABEL_13;
  }

  v9 = v8;
  if (a1)
  {
    v10 = sub_1D35DF4D4();
    v11 = *v5;
    if (os_log_type_enabled(*v5, v10))
    {
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v15 = MEMORY[0x1D38B8840](a1, MEMORY[0x1E69E6158]);
      v17 = sub_1D35A3CF8(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D3400000, v12, v10, "Setting leftBarButtonIDs: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38BA4C0](v14, -1, -1);
      MEMORY[0x1D38BA4C0](v13, -1, -1);
    }

    v18 = sub_1D35DF3D4();
    [v9 setLeftBarButtonActions_];
  }

  if (a2)
  {
    v19 = sub_1D35DF4D4();
    v20 = *v5;
    if (os_log_type_enabled(v20, v19))
    {
      v21 = v20;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x1D38B8840](a2, MEMORY[0x1E69E6158]);
      v26 = sub_1D35A3CF8(v24, v25, &v29);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D3400000, v21, v19, "Setting rightBarButtonIDs: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1D38BA4C0](v23, -1, -1);
      MEMORY[0x1D38BA4C0](v22, -1, -1);
    }

    v27 = sub_1D35DF3D4();
    [v9 setRightBarButtonActions_];
  }

LABEL_13:
}

void sub_1D35B1E18(uint64_t a1)
{
  sub_1D35DF4D4();
  v3 = sub_1D35AF6CC();
  v4 = *v3;
  sub_1D35DF024();

  v5 = [v1 parentViewController];
  if (!v5)
  {
    goto LABEL_8;
  }

  v18 = v5;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_8:
    sub_1D35DF4C4();
    v18 = *v3;
    sub_1D35DF024();
    goto LABEL_9;
  }

  if (a1)
  {
    v7 = v6;
    v8 = sub_1D35DF4D4();
    v9 = *v3;
    if (os_log_type_enabled(v9, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_1D35A52E0(0, &qword_1EC76A700);
      v14 = MEMORY[0x1D38B8840](a1, v13);
      v16 = sub_1D35A3CF8(v14, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D3400000, v10, v8, "Setting leftBarButtonIDs: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1D38BA4C0](v12, -1, -1);
      MEMORY[0x1D38BA4C0](v11, -1, -1);
    }

    sub_1D35A52E0(0, &qword_1EC76A700);
    v17 = sub_1D35DF3D4();
    [v7 setBottomStatusButtonActions_];
  }

LABEL_9:
}

id EKEventGenericDetailViewControllerOOPImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKEventGenericDetailViewControllerOOPImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D35B2134(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (a2)
  {

    sub_1D3410744(a3);
    sub_1D3410744(a5);
    sub_1D3410744(a7);
    sub_1D3410744(a9);
  }
}

uint64_t static EKRemoteUIUtilities.combineHostWithRemoteObjectIDChangeMaps(hostTempToRemoteTempObjectIDMap:remoteEventStoreTempToPermanentObjectIDMap:)(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1D35DF714() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v100 = a2 & 0xC000000000000001;
  v12 = MEMORY[0x1E69E7CC8];
  v97 = a2;
  v98 = v6;
  v99 = v3;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1D35DF744())
    {
      goto LABEL_62;
    }

    sub_1D35B33F0();
    swift_dynamicCast();
    v21 = v103;
    a2 = v97;
    swift_dynamicCast();
    v15 = v103;
    v18 = v10;
    v101 = v5;
    if (!v103)
    {
      goto LABEL_62;
    }

LABEL_20:
    if (v100)
    {
      v22 = v15;
      v23 = sub_1D35DF734();

      if (v23)
      {
        sub_1D35B33F0();
        swift_dynamicCast();
        v24 = v103;
        if (v103)
        {
          goto LABEL_27;
        }
      }
    }

    else if (*(a2 + 16))
    {
      v25 = sub_1D35B2D04(v15);
      if (v26)
      {
        v24 = *(*(a2 + 56) + 8 * v25);
        if (v24)
        {
LABEL_27:
          if ((v12 & 0xC000000000000001) != 0)
          {
            if (v12 >= 0)
            {
              v12 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v27 = v24;
            v28 = sub_1D35DF644();
            if (__OFADD__(v28, 1))
            {
              goto LABEL_104;
            }

            v12 = sub_1D35B2D48(v12, v28 + 1);
          }

          else
          {
            v51 = v24;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v12;
          v53 = sub_1D35B2D04(v21);
          v55 = *(v12 + 16);
          v56 = (v54 & 1) == 0;
          v45 = __OFADD__(v55, v56);
          v57 = v55 + v56;
          if (v45)
          {
            goto LABEL_103;
          }

          v58 = v54;
          if (*(v12 + 24) < v57)
          {
            sub_1D35B2F64(v57, isUniquelyReferenced_nonNull_native);
            v53 = sub_1D35B2D04(v21);
            if ((v58 & 1) != (v59 & 1))
            {
              goto LABEL_109;
            }

            goto LABEL_55;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_55:
            if (v58)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v62 = v53;
            sub_1D35B3290();
            v53 = v62;
            v12 = v103;
            if (v58)
            {
LABEL_56:
              v60 = *(v12 + 56);
              v14 = *(v60 + 8 * v53);
              *(v60 + 8 * v53) = v24;

              goto LABEL_9;
            }
          }

          *(v12 + 8 * (v53 >> 6) + 64) |= 1 << v53;
          *(*(v12 + 48) + 8 * v53) = v21;
          *(*(v12 + 56) + 8 * v53) = v24;

          v63 = *(v12 + 16);
          v45 = __OFADD__(v63, 1);
          v50 = v63 + 1;
          if (v45)
          {
            goto LABEL_105;
          }

          goto LABEL_61;
        }
      }
    }

    v29 = sub_1D35DF4C4();
    v30 = *sub_1D35AF6CC();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = v15;
      v32 = v30;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412546;
      *(v33 + 4) = v21;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v31;
      *v34 = v21;
      v34[1] = v15;
      v35 = v21;
      _os_log_impl(&dword_1D3400000, v32, v29, "EKRemoteUIUtilities Error while combining Host with Remote ObjectID change maps. Could not find permanent objectID for temporaryID [hostTempID: %@, remoteTempID: %@]", v33, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A530);
      swift_arrayDestroy();
      v36 = v34;
      a2 = v97;
      MEMORY[0x1D38BA4C0](v36, -1, -1);
      MEMORY[0x1D38BA4C0](v33, -1, -1);
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      if (v12 >= 0)
      {
        v12 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v37 = v15;
      v38 = sub_1D35DF644();
      if (__OFADD__(v38, 1))
      {
        goto LABEL_101;
      }

      v12 = sub_1D35B2D48(v12, v38 + 1);
    }

    else
    {
      v39 = v15;
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v12;
    v41 = sub_1D35B2D04(v21);
    v43 = *(v12 + 16);
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_100;
    }

    v47 = v42;
    if (*(v12 + 24) >= v46)
    {
      if ((v40 & 1) == 0)
      {
        v61 = v41;
        sub_1D35B3290();
        v41 = v61;
        v12 = v103;
        if (v47)
        {
LABEL_8:
          v13 = *(v12 + 56);
          v14 = *(v13 + 8 * v41);
          *(v13 + 8 * v41) = v15;

LABEL_9:
          v15 = v14;
          goto LABEL_10;
        }

        goto LABEL_46;
      }
    }

    else
    {
      sub_1D35B2F64(v46, v40);
      v41 = sub_1D35B2D04(v21);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_109;
      }
    }

    if (v47)
    {
      goto LABEL_8;
    }

LABEL_46:
    *(v12 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    *(*(v12 + 48) + 8 * v41) = v21;
    *(*(v12 + 56) + 8 * v41) = v15;
    v49 = *(v12 + 16);
    v45 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v45)
    {
      goto LABEL_102;
    }

LABEL_61:
    *(v12 + 16) = v50;
LABEL_10:

    v10 = v18;
    v5 = v101;
    v6 = v98;
    v3 = v99;
  }

  v16 = v10;
  v17 = v5;
  v18 = v10;
  if (v5)
  {
LABEL_16:
    v101 = (v17 - 1) & v17;
    v19 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
    v20 = *(*(v6 + 56) + v19);
    v21 = *(*(v6 + 48) + v19);
    v15 = v20;
    if (!v21)
    {
      goto LABEL_62;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_99;
    }

    if (v18 >= v11)
    {
      break;
    }

    v17 = *(v3 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

LABEL_62:
  sub_1D35AD610();
  if (v100)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = sub_1D35DF714() | 0x8000000000000000;
  }

  else
  {
    v68 = -1 << *(a2 + 32);
    v65 = ~v68;
    v64 = a2 + 64;
    v69 = -v68;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    else
    {
      v70 = -1;
    }

    v66 = v70 & *(a2 + 64);
    v67 = a2;
  }

  v71 = 0;
  v72 = (v65 + 64) >> 6;
  while (2)
  {
    v73 = v71;
    if ((v67 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!sub_1D35DF744())
        {
          goto LABEL_97;
        }

        sub_1D35B33F0();
        swift_dynamicCast();
        v78 = v103;
        swift_dynamicCast();
        v79 = v103;
        v71 = v73;
        v102 = v66;
        if (!v103)
        {
          goto LABEL_97;
        }

LABEL_78:
        if (![v78 isTemporary])
        {
          break;
        }

        v73 = v71;
        v66 = v102;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_70;
        }
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        if (v12 >= 0)
        {
          v12 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v80 = v79;
        v81 = sub_1D35DF644();
        if (__OFADD__(v81, 1))
        {
          goto LABEL_107;
        }

        v12 = sub_1D35B2D48(v12, v81 + 1);
      }

      else
      {
        v82 = v79;
      }

      v83 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v12;
      v84 = sub_1D35B2D04(v78);
      v86 = *(v12 + 16);
      v87 = (v85 & 1) == 0;
      v45 = __OFADD__(v86, v87);
      v88 = v86 + v87;
      if (v45)
      {
        goto LABEL_106;
      }

      v89 = v85;
      if (*(v12 + 24) >= v88)
      {
        if ((v83 & 1) == 0)
        {
          v93 = v84;
          sub_1D35B3290();
          v84 = v93;
          v12 = v103;
          if (v89)
          {
LABEL_93:
            v91 = *(v12 + 56);
            v92 = *(v91 + 8 * v84);
            *(v91 + 8 * v84) = v79;

            v66 = v102;
            continue;
          }

          goto LABEL_95;
        }
      }

      else
      {
        sub_1D35B2F64(v88, v83);
        v84 = sub_1D35B2D04(v78);
        if ((v89 & 1) != (v90 & 1))
        {
          goto LABEL_109;
        }
      }

      if (v89)
      {
        goto LABEL_93;
      }

LABEL_95:
      *(v12 + 8 * (v84 >> 6) + 64) |= 1 << v84;
      *(*(v12 + 48) + 8 * v84) = v78;
      *(*(v12 + 56) + 8 * v84) = v79;

      v94 = *(v12 + 16);
      v45 = __OFADD__(v94, 1);
      v95 = v94 + 1;
      if (v45)
      {
        goto LABEL_108;
      }

      *(v12 + 16) = v95;
      v66 = v102;
      continue;
    }

    break;
  }

LABEL_70:
  v74 = v73;
  v75 = v66;
  v71 = v73;
  if (v66)
  {
LABEL_74:
    v102 = (v75 - 1) & v75;
    v76 = (v71 << 9) | (8 * __clz(__rbit64(v75)));
    v77 = *(*(v67 + 56) + v76);
    v78 = *(*(v67 + 48) + v76);
    v79 = v77;
    if (v78)
    {
      goto LABEL_78;
    }

LABEL_97:
    sub_1D35AD610();
    return v12;
  }

  else
  {
    while (1)
    {
      v71 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v71 >= v72)
      {
        goto LABEL_97;
      }

      v75 = *(v64 + 8 * v71);
      ++v74;
      if (v75)
      {
        goto LABEL_74;
      }
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    sub_1D35B33F0();
    result = sub_1D35DF7E4();
    __break(1u);
  }

  return result;
}

id EKRemoteUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKRemoteUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EKRemoteUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D35B2D04(uint64_t a1)
{
  v2 = sub_1D35DF564();

  return sub_1D35B31CC(a1, v2);
}

uint64_t sub_1D35B2D48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AA80);
    v2 = sub_1D35DF794();
    v19 = v2;
    sub_1D35DF714();
    v3 = sub_1D35DF744();
    if (v3)
    {
      v4 = v3;
      sub_1D35B33F0();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D35B2F64(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D35DF564();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D35DF744();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D35B2F64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AA80);
  result = sub_1D35DF784();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1D35DF564();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
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
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1D35B31CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1D35B33F0();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D35DF574();

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

id sub_1D35B3290()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AA80);
  v2 = *v0;
  v3 = sub_1D35DF774();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D35B33F0()
{
  result = qword_1EC76AD00;
  if (!qword_1EC76AD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC76AD00);
  }

  return result;
}

double sub_1D35B3468@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for EKEventOOPHostViewModel();
  sub_1D35B4D90(&qword_1EC76AA90, type metadata accessor for EKEventOOPHostViewModel);
  *a1 = sub_1D35DF0D4();
  *(a1 + 8) = v2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 79) = 0;
  return result;
}

NSBundle *sub_1D35B34F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AA98);
  MEMORY[0x1EEE9AC00](v70);
  v72 = (&v66 - v3);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AAA0);
  v4 = MEMORY[0x1EEE9AC00](v71);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v66 - v8;
  v10 = *(v1 + 8);
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v10) + 0xD0))(v7);
  if (v12)
  {
    v69 = v9;

    (*((*v11 & *v10) + 0xA0))();
    type metadata accessor for _AppExtensionEventHostView.Configuration(0);
    sub_1D35B4D90(&qword_1EC76AAE8, type metadata accessor for _AppExtensionEventHostView.Configuration);
    v68 = sub_1D35DF0D4();
    v67 = v13;
    v14 = swift_allocObject();
    v15 = *(v2 + 48);
    *(v14 + 48) = *(v2 + 32);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(v2 + 64);
    *(v14 + 95) = *(v2 + 79);
    v16 = *(v2 + 16);
    *(v14 + 16) = *v2;
    *(v14 + 32) = v16;
    v66 = v14;
    v17 = swift_allocObject();
    v18 = *(v2 + 48);
    *(v17 + 48) = *(v2 + 32);
    *(v17 + 64) = v18;
    *(v17 + 80) = *(v2 + 64);
    *(v17 + 95) = *(v2 + 79);
    v19 = *(v2 + 16);
    *(v17 + 16) = *v2;
    *(v17 + 32) = v19;
    v20 = swift_allocObject();
    v21 = *(v2 + 48);
    *(v20 + 48) = *(v2 + 32);
    *(v20 + 64) = v21;
    *(v20 + 80) = *(v2 + 64);
    *(v20 + 95) = *(v2 + 79);
    v22 = *(v2 + 16);
    *(v20 + 16) = *v2;
    *(v20 + 32) = v22;
    sub_1D35B7810(v2, v74);
    sub_1D35B7810(v2, v74);
    v23 = sub_1D35B7810(v2, v74);
    v24 = MEMORY[0x1D38B98D0](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A500);
    if (v24)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D36015E0;
      v26 = sub_1D35DF1C4();
      *(inited + 32) = v26;
      v27 = sub_1D35DF1D4();
      *(inited + 33) = v27;
      v28 = sub_1D35DF1E4();
      *(inited + 34) = v28;
      v29 = sub_1D35DF204();
      *(inited + 35) = v29;
      v30 = sub_1D35DF1F4();
      sub_1D35DF1F4();
      if (sub_1D35DF1F4() != v26)
      {
        v30 = sub_1D35DF1F4();
      }

      sub_1D35DF1F4();
      if (sub_1D35DF1F4() != v27)
      {
        v30 = sub_1D35DF1F4();
      }

      sub_1D35DF1F4();
      if (sub_1D35DF1F4() != v28)
      {
        v30 = sub_1D35DF1F4();
      }

      sub_1D35DF1F4();
      if (sub_1D35DF1F4() == v29)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_1D3600F10;
      v54 = sub_1D35DF1D4();
      *(v53 + 32) = v54;
      v55 = sub_1D35DF1E4();
      *(v53 + 33) = v55;
      v56 = sub_1D35DF204();
      *(v53 + 34) = v56;
      v30 = sub_1D35DF1F4();
      sub_1D35DF1F4();
      if (sub_1D35DF1F4() != v54)
      {
        v30 = sub_1D35DF1F4();
      }

      sub_1D35DF1F4();
      if (sub_1D35DF1F4() != v55)
      {
        v30 = sub_1D35DF1F4();
      }

      sub_1D35DF1F4();
      if (sub_1D35DF1F4() == v56)
      {
        goto LABEL_19;
      }
    }

    v30 = sub_1D35DF1F4();
LABEL_19:
    v57 = sub_1D35DF0E4();
    v58 = swift_allocObject();
    v59 = *(v2 + 48);
    *(v58 + 48) = *(v2 + 32);
    *(v58 + 64) = v59;
    *(v58 + 80) = *(v2 + 64);
    *(v58 + 95) = *(v2 + 79);
    v60 = *(v2 + 16);
    *(v58 + 16) = *v2;
    *(v58 + 32) = v60;
    v61 = &v6[*(v71 + 36)];
    sub_1D35DF0C4();
    sub_1D35B7810(v2, v74);
    sub_1D35DF464();
    *v61 = &unk_1D3601750;
    *(v61 + 1) = v58;
    v62 = v67;
    *v6 = v68;
    *(v6 + 1) = v62;
    *(v6 + 2) = sub_1D35B77A0;
    *(v6 + 3) = v20;
    v63 = v66;
    *(v6 + 4) = sub_1D35B7648;
    *(v6 + 5) = v63;
    *(v6 + 6) = sub_1D35B7714;
    *(v6 + 7) = v17;
    *(v6 + 8) = v57;
    v6[72] = v30;
    v64 = v6;
    v65 = v69;
    sub_1D35B7944(v64, v69);
    sub_1D35A4B5C(v65, v72, &qword_1EC76AAA0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AAB0);
    sub_1D35B4BF4();
    sub_1D35A51F8(&qword_1EC76AAE0, &qword_1EC76AAB0);
    sub_1D35DF114();
    return sub_1D35A537C(v65, &qword_1EC76AAA0);
  }

  v31 = sub_1D35DF0F4();
  result = EventKitUIBundle();
  if (result)
  {
    v33 = result;
    v34 = sub_1D35DEEF4();
    v36 = v35;

    v74[0] = v34;
    v74[1] = v36;
    sub_1D35B4B90();
    v37 = sub_1D35DF234();
    v39 = v38;
    LOBYTE(v36) = v40;
    v74[0] = sub_1D35DF284();
    v41 = sub_1D35DF214();
    v43 = v42;
    v45 = v44;
    sub_1D35B4BE4(v37, v39, v36 & 1);

    v46 = sub_1D35DF224();
    v48 = v47;
    LOBYTE(v36) = v49;
    v51 = v50;
    sub_1D35B4BE4(v41, v43, v45 & 1);

    v52 = v72;
    *v72 = v31;
    v52[1] = 0;
    *(v52 + 16) = 1;
    v52[3] = v46;
    v52[4] = v48;
    *(v52 + 40) = v36 & 1;
    v52[6] = v51;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AAB0);
    sub_1D35B4BF4();
    sub_1D35A51F8(&qword_1EC76AAE0, &qword_1EC76AAB0);
    return sub_1D35DF114();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D35B3D68(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1D35DEFA4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1D35DEFC4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = sub_1D35DEFE4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = sub_1D35DF454();
  v1[15] = sub_1D35DF444();
  v6 = sub_1D35DF424();
  v1[16] = v6;
  v1[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D35B3F18, v6, v5);
}

uint64_t sub_1D35B3F18()
{
  sub_1D35DB638();

  sub_1D35DEF94();
  sub_1D35DEFD4();
  sub_1D35DEFB4();
  v0[18] = sub_1D35DF444();
  v1 = sub_1D35B4D90(&unk_1EC76A720, MEMORY[0x1E6966C20]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1D35B4050;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_1D35B4050()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D35DF424();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D35B44C0;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1D35DF424();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1D35B41E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1D35B41E8()
{

  v0[21] = v0[2];
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_1D35B4254, v1, v2);
}

uint64_t sub_1D35B4254()
{
  if (v0[21])
  {

    return MEMORY[0x1EEE6DFA0](sub_1D35B4380, 0, 0);
  }

  else
  {
    v2 = v0[6];
    v1 = v0[7];
    v3 = v0[5];

    (*(v2 + 8))(v1, v3);
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D35B4380()
{
  *(v0 + 176) = sub_1D35DF444();
  v2 = sub_1D35DF424();

  return MEMORY[0x1EEE6DFA0](sub_1D35B440C, v2, v1);
}

void sub_1D35B440C()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[4];

  sub_1D35B4718(v1, v3);
  if (v2)
  {
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    MEMORY[0x1EEE6DFA0](sub_1D359F9AC, v4, v5);
  }
}

uint64_t sub_1D35B44C0()
{
  v0[3] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76B230);
  swift_willThrowTypedImpl();

  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_1D35B455C, v1, v2);
}

uint64_t sub_1D35B455C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);
  v4 = sub_1D35DF4C4();
  v5 = *sub_1D35AF6CC();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[20];
  if (v6)
  {
    v8 = v5;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1D3400000, v8, v4, "EKEventOOPHostView: Could not read extension query results. Error: %@", v9, 0xCu);
    sub_1D35A537C(v10, &qword_1EC76A530);
    MEMORY[0x1D38BA4C0](v10, -1, -1);
    MEMORY[0x1D38BA4C0](v9, -1, -1);
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

void sub_1D35B4718(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D35DF014();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  if (*(a1 + 16))
  {
    v14 = *(v5 + 16);
    v14(&v39 - v12, a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    v15 = *(a2 + 8);
    (*((*MEMORY[0x1E69E7D40] & *v15) + 0x90))(1);
    v16 = sub_1D35DF4D4();
    v17 = *sub_1D35AF6CC();
    v14(v11, v13, v4);
    v14(v8, v13, v4);
    if (os_log_type_enabled(v17, v16))
    {
      v43 = v17;
      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v18 = 136315394;
      v19 = sub_1D35DEFF4();
      v21 = v20;
      v40 = *(v5 + 8);
      v41 = v16;
      v40(v11, v4);
      v22 = sub_1D35A3CF8(v19, v21, &v44);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_1D35DF004();
      v25 = v24;
      v26 = v40;
      v40(v8, v4);
      v27 = sub_1D35A3CF8(v23, v25, &v44);

      *(v18 + 14) = v27;
      v28 = v43;
      _os_log_impl(&dword_1D3400000, v43, v41, "EventKitUI AppExtensionQuery Found %s (%s) RemoteUI Extension", v18, 0x16u);
      v29 = v42;
      swift_arrayDestroy();
      MEMORY[0x1D38BA4C0](v29, -1, -1);
      v30 = v18;
      v31 = v26;
      MEMORY[0x1D38BA4C0](v30, -1, -1);
    }

    else
    {
      v31 = *(v5 + 8);
      v31(v8, v4);
      v32 = (v31)(v11, v4);
    }

    v34 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0xA0))(v32);
    v35 = sub_1D35DB644();
    v36 = *v35;
    v37 = v35[1];
    v38 = *(*v34 + 520);

    v38(v13, v36, v37, v15);

    v31(v13, v4);
  }

  else
  {
    sub_1D35DF4C4();
    v43 = *sub_1D35AF6CC();
    sub_1D35DF024();
    v33 = v43;
  }
}

unint64_t sub_1D35B4B90()
{
  result = qword_1EC76AAA8;
  if (!qword_1EC76AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AAA8);
  }

  return result;
}

uint64_t sub_1D35B4BE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D35B4BF4()
{
  result = qword_1EC76AAB8;
  if (!qword_1EC76AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76AAA0);
    sub_1D35B4CB0();
    sub_1D35B4D90(&qword_1EC76AFD0, MEMORY[0x1E697C020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AAB8);
  }

  return result;
}

unint64_t sub_1D35B4CB0()
{
  result = qword_1EC76AAC0;
  if (!qword_1EC76AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76AAC8);
    sub_1D35B4D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AAC0);
  }

  return result;
}

unint64_t sub_1D35B4D3C()
{
  result = qword_1EC76AAD0;
  if (!qword_1EC76AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AAD0);
  }

  return result;
}

uint64_t sub_1D35B4D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D35B4DD8()
{
  v1 = v0;
  sub_1D35DF4D4();
  v2 = *sub_1D35AF6CC();
  sub_1D35DF024();

  v3 = *(v0 + 8);
  v4 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))();
  if (result)
  {
    v6 = *(*((*v4 & *v3) + 0xA0))();
    (*(v6 + 440))();
  }

  else
  {
    v7 = *(v1 + 16);
    if (v7)
    {

      v7(0);

      return sub_1D3410744(v7);
    }
  }

  return result;
}

uint64_t sub_1D35B4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D35DF4D4();
  v9 = *sub_1D35AF6CC();
  sub_1D35DF024();

  v10 = *(*((*MEMORY[0x1E69E7D40] & **(v4 + 8)) + 0xA0))();
  (*(v10 + 472))(a1, a2, a3, a4);
}

uint64_t sub_1D35B507C(uint64_t a1)
{
  v3 = *(*((*MEMORY[0x1E69E7D40] & **(v1 + 8)) + 0xA0))();
  (*(v3 + 504))(a1);
}

void sub_1D35B5128(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8);
  v5 = v3;
  v4(a1);
}

uint64_t sub_1D35B51B8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x644573776F6C6C61, 0xED0000676E697469, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B53C0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000015, 0x80000001D360EF60, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B55C0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x6E69746964457369, 0xED000065646F4D67, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B57C8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD00000000000001ELL, 0x80000001D360EF40, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B59C8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD00000000000002CLL, 0x80000001D360EF10, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B5BC8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x6976657250736369, 0xEA00000000007765, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B5DC8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000015, 0x80000001D360EEF0, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B5FC8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD00000000000001FLL, 0x80000001D360EED0, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B61C8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000020, 0x80000001D360EEA0, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B63C8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000018, 0x80000001D360EE80, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B65C8()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x755373776F6C6C61, 0xEE00736D65746962, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B67D0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000015, 0x80000001D360EE60, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B69D0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000015, 0x80000001D360EE40, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B6BD0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000014, 0x80000001D360EE20, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B6DD0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD00000000000001BLL, 0x80000001D360EE00, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B6FD0()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x4D6C616D696E696DLL, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B71D4()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0xD000000000000019, 0x80000001D360EDE0, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B73D4()
{
  v1 = *(v0 + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v3 = v1;
  v4 = v2();

  sub_1D35A52E0(0, &qword_1EC76A700);
  v5 = sub_1D35DF544();
  v6 = (*(*v4 + 360))(v16);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v8;
  *v8 = 0x8000000000000000;
  sub_1D35BC904(v5, 0x44656772614C7369, 0xEE00776569567961, isUniquelyReferenced_nonNull_native);
  *v8 = v15;
  v6(v16, 0);

  v10 = v3;
  v11 = v2();

  v12 = (*(*v11 + 384))(v16);
  *v13 = !*v13;
  v12(v16, 0);
}

uint64_t sub_1D35B7648(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 48);
  if (v9)
  {
    v17 = result;

    v9(v17, a2, a3, a4, a5, a6, a7, a8);

    return sub_1D3410744(v9);
  }

  return result;
}

uint64_t sub_1D35B7714(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  if (v4)
  {
    v7 = result;

    v4(v7, a2, a3);

    return sub_1D3410744(v4);
  }

  return result;
}

uint64_t sub_1D35B77A0(uint64_t result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_1D3410744(v2);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 99, 7);
}

uint64_t sub_1D35B78B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D35A0924;

  return sub_1D35B3D68(v0 + 16);
}

uint64_t sub_1D35B7944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D35B7A2C()
{
  v1 = (v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sceneID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D35B7A84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sceneID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_1D35B7B44()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_event;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35B7B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_event;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D35B7C48()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_layoutDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35B7C8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_layoutDirection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1D35B7D3C()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sizeCategory;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D35B7D90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sizeCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1D35B7E48()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_viewHierarchy;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35B7E94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_viewHierarchy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D35B7F4C()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_hasInProcessNavBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D35B7F90(char a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_hasInProcessNavBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D35B8088(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_changedCustomViewConfigurationDictionary;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D35B8140()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D35DF084();

  return v1;
}

uint64_t sub_1D35B81B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D35B825C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D35DF094();
}

void (*sub_1D35B82CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v3 + 48) = sub_1D35DF074();
  return sub_1D35A10CC;
}

uint64_t sub_1D35B8370()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF054();
  return swift_endAccess();
}

uint64_t sub_1D35B83E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A520);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF064();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1D35B851C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A520);
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

  v10 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration__customViewConfigurationChangedPublisher;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  sub_1D35DF054();
  swift_endAccess();
  return sub_1D35A1450;
}

void (*sub_1D35B872C())(void)
{
  result = (*(*v0 + 416))();
  if (result)
  {
    v2 = result;
    result();

    return sub_1D3410744(v2);
  }

  return result;
}

void (*sub_1D35B884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, uint64_t, uint64_t)
{
  result = (*(*v4 + 448))();
  if (result)
  {
    v10 = result;
    result(a1, a2, a3, a4);

    return sub_1D3410744(v10);
  }

  return result;
}

uint64_t sub_1D35B8924(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1D35B89AC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void (*sub_1D35B8A70(char a1))(void)
{
  result = (*(*v1 + 480))();
  if (result)
  {
    v4 = result;
    result(a1 & 1);

    return sub_1D3410744(v4);
  }

  return result;
}

uint64_t sub_1D35B8B04()
{
  v0 = swift_allocObject();
  sub_1D35B8B3C();
  return v0;
}

uint64_t sub_1D35B8B3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-v3];
  v5 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_identity;
  v6 = sub_1D35DF014();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sceneID);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_event) = 0;
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_viewHierarchy) = 0;
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_hasInProcessNavBar) = 0;
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_changedCustomViewConfigurationDictionary) = MEMORY[0x1E69E7CC8];
  v8 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration__customViewConfigurationChangedPublisher;
  v15[15] = 0;
  sub_1D35DF044();
  (*(v2 + 32))(v0 + v8, v4, v1);
  v9 = (v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_navigationDoneButtonTappedCallback);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_eventEditViewCompletedCallback);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_eventEditViewPresentedCallback);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_layoutDirection) = 0;
  v12 = *MEMORY[0x1E69DDC90];
  *(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_sizeCategory) = *MEMORY[0x1E69DDC90];
  v13 = v12;
  return v0;
}

uint64_t sub_1D35B8D18(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A510);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30[-v11];
  v13 = sub_1D35DF014();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(*v5 + 184))(v12);
  v15 = *(*v5 + 208);

  v16 = v15(a2, a3);
  v17 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & *a4) + 0xD0))(v16);
  v19 = (*(*v5 + 232))(v18);
  v20 = (*((*v17 & *a4) + 0x100))(v19);
  v21 = (*(*v5 + 256))(v20);
  v22 = (*((*v17 & *a4) + 0x118))(v21);
  v23 = (*(*v5 + 280))(v22);
  v24 = (*((*v17 & *a4) + 0x130))(v23);
  v25 = (*(*v5 + 304))(v24);
  v26 = (*((*v17 & *a4) + 0x148))(v25);
  (*(*v5 + 328))(v26 & 1);
  v27 = (*(*v5 + 384))(v30);
  *v28 = !*v28;
  return v27(v30, 0);
}

uint64_t sub_1D35B915C()
{
  sub_1D35A537C(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_identity, &unk_1EC76A510);

  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration__customViewConfigurationChangedPublisher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AAF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_navigationDoneButtonTappedCallback));
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_eventEditViewCompletedCallback));
  sub_1D3410744(*(v0 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView13Configuration_eventEditViewPresentedCallback));
  return v0;
}

uint64_t sub_1D35B9278()
{
  sub_1D35B915C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D35B92D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _AppExtensionEventHostView.Configuration(0);
  result = sub_1D35DF034();
  *a1 = result;
  return result;
}

id sub_1D35B9310(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_identity;
  v5 = sub_1D35DF014();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_conn] = 0;
  *&v3[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_configurationChangedPublisherSink] = 0;
  v6 = &v3[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  v10.receiver = v3;
  v10.super_class = v1;
  return objc_msgSendSuper2(&v10, sel_init);
}

void *sub_1D35B9474()
{
  v1 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_conn;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D35B94C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_conn;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D35B95C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_configurationChangedPublisherSink;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1D35B9678(void *a1)
{
  v2 = v1;
  v100 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A520);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v80[-v6];
  v7 = sub_1D35DEF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v80[-v12];
  aBlock = 0;
  v14 = [a1 makeXPCConnectionWithError_];
  if (!v14)
  {
    v46 = aBlock;
    v47 = sub_1D35DEF04();

    swift_willThrow();
    v48 = sub_1D35DF4C4();
    v49 = *sub_1D35AF6CC();
    if (os_log_type_enabled(v49, v48))
    {
      v50 = v49;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      v53 = v47;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_1D3400000, v50, v48, "Error: _AppExtensionEventHostView Setup: Cannot make XPC Connection. %@", v51, 0xCu);
      sub_1D35A537C(v52, &qword_1EC76A530);
      MEMORY[0x1D38BA4C0](v52, -1, -1);
      MEMORY[0x1D38BA4C0](v51, -1, -1);

      return;
    }

    goto LABEL_21;
  }

  v15 = v14;
  v88 = v4;
  v89 = v13;
  v90 = v8;
  v91 = v7;
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v17 = aBlock;
  v18 = v15;
  v16(v15);
  [v18 setExportedInterface_];
  [v18 setRemoteObjectInterface_];
  [v18 setExportedObject_];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_1D35BC0E4;
  v99 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1D35A2720;
  v97 = &block_descriptor_0;
  v20 = _Block_copy(&aBlock);

  [v18 setInterruptionHandler_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_1D35BC1EC;
  v99 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1D35A2720;
  v97 = &block_descriptor_38_0;
  v22 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v22);
  [v18 resume];
  v23 = sub_1D35DF4D4();
  v24 = sub_1D35AF6CC();
  v25 = *v24;
  if (os_log_type_enabled(*v24, v23))
  {
    v26 = v5;
    v27 = v18;
    v28 = v25;
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    *(v29 + 4) = [v27 processIdentifier];
    *(v29 + 8) = 1024;
    *(v29 + 10) = [v27 effectiveUserIdentifier];

    v5 = v26;
    _os_log_impl(&dword_1D3400000, v28, v23, "_AppExtensionEventHostView: Setting up XPC connection. processIdentifier: %d. effectiveUserIdentifier: %u.", v29, 0xEu);
    MEMORY[0x1D38BA4C0](v29, -1, -1);
  }

  v30 = [v18 remoteObjectProxy];
  sub_1D35DF5A4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AB70);
  if (!swift_dynamicCast())
  {
    sub_1D35DF4C4();
    v47 = *v24;
    sub_1D35DF024();

LABEL_21:
    return;
  }

  v85 = v5;
  v31 = v93;
  v32 = *(v2 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 8);
  v33 = *(*v32 + 224);

  v35 = v33(v34);
  if (!v35)
  {
LABEL_20:
    sub_1D35DF4C4();
    v47 = *v24;
    sub_1D35DF024();

    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  v87 = v35;
  v86 = (*(*v32 + 296))();
  if (!v86)
  {

    goto LABEL_20;
  }

  v83 = (*(*v32 + 248))();
  v84 = (*(*v32 + 272))();

  v37 = v33(v36);

  if (v37)
  {
    v38 = [v37 eventStore];

    v39 = v89;
    if (v38)
    {
      v82 = v38;
      v40 = [v38 connection];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 initializationOptions];

        if (v42)
        {
          v81 = [v42 management];

          v43 = [v82 connection];
          if (v43)
          {
            v44 = v43;
            v45 = [v43 initializationOptions];

            if (v45)
            {
              v38 = [v45 managementBundleIdentifier];

              v39 = v89;
              if (v38)
              {
                sub_1D35DF384();

                v38 = sub_1D35DF354();
              }

              else
              {
              }

              v55 = v81;
              goto LABEL_26;
            }

LABEL_32:

            __break(1u);
            return;
          }

LABEL_31:

          __break(1u);
          goto LABEL_32;
        }
      }

      else
      {

        __break(1u);
      }

      __break(1u);
      goto LABEL_31;
    }

    v55 = 0;
  }

  else
  {
    v38 = 0;
    v55 = 0;
    v39 = v89;
  }

LABEL_26:
  v89 = v31;
  v56 = v84;
  [v31 setupViewContextWithViewHierarchy:v86 layoutDirection:v83 sizeCategory:v84 sourceAccountManagement:v55 sourceBundleID:v38];

  v57 = [objc_allocWithZone(sub_1D35DF2E4()) init];
  sub_1D35DEF54();
  v58 = [v87 occurrenceDate];
  if (v58)
  {
    v59 = v58;
    sub_1D35DEF44();

    v60 = v90;
    v61 = v91;
    (*(v90 + 8))(v39, v91);
    (*(v60 + 32))(v39, v11, v61);
  }

  v62 = sub_1D35DF2D4();
  sub_1D35DF2F4();
  v82 = sub_1D35DF334();

  v83 = v62;
  sub_1D35DF304();
  sub_1D35A52E0(0, &qword_1EC76AD00);
  v84 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76AB80);
  sub_1D35BC1F4();
  v63 = sub_1D35DF334();

  sub_1D35DF314();
  v64 = sub_1D35DF334();

  v65 = sub_1D35DEF34();
  v66 = v89;
  v67 = v82;
  [v89 setupEventViewWithSerializedEventDictionary:v82 objectIDToChangeSetDictionaryMap:v63 objectIDToPersistentDictionaryMap:v64 eventOccurrenceDate:v65];

  v68 = [v66 setupEventViewContextWithNavBarExistence_];
  v69 = v92;
  (*(*v32 + 392))(v68);
  v70 = swift_allocObject();
  *(v70 + 16) = v66;
  *(v70 + 24) = v32;
  sub_1D35A51F8(&unk_1EC76AB90, &qword_1EC76A520);

  swift_unknownObjectRetain();
  v71 = v88;
  v72 = sub_1D35DF0B4();

  (*(v85 + 8))(v69, v71);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xB0))(v72);
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v66;
  v75 = *(*v32 + 424);
  swift_unknownObjectRetain();

  v75(sub_1D35BC3DC, v74);

  v76 = swift_allocObject();
  *(v76 + 16) = v66;
  v77 = *(*v32 + 456);
  swift_unknownObjectRetain();
  v77(sub_1D35BC4E8, v76);
  v78 = swift_allocObject();
  *(v78 + 16) = v66;
  v79 = *(*v32 + 488);
  swift_unknownObjectRetain();
  v79(sub_1D35BC560, v78);

  swift_unknownObjectRelease();

  (*(v90 + 8))(v39, v91);
}

void sub_1D35BA4E0()
{
  v0 = sub_1D35DF294();
  v27 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D35DF2B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D35DF4D4();
  v7 = *sub_1D35AF6CC();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D35DF024();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = v8;
    v11 = Strong;
    v12 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    v8 = v10;
    if (v12)
    {
      [v12 setExportedObject_];
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 16);
    v15 = *(v13 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 24);
    v16 = v13;
    sub_1D3410734(v14);

    if (v14)
    {
      sub_1D35A52E0(0, &unk_1EC76A5A0);
      v26 = sub_1D35DF4E4();
      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v15;
      aBlock[4] = sub_1D35BD880;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D35A2720;
      aBlock[3] = &block_descriptor_90;
      v24 = _Block_copy(aBlock);
      v25 = v4;

      v18 = v6;
      sub_1D35DF2A4();
      aBlock[0] = v8;
      sub_1D35B4D90(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
      v19 = v27;
      v23 = v3;
      sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
      sub_1D35DF5B4();
      v20 = v24;
      v21 = v26;
      MEMORY[0x1D38B8940](0, v18, v2, v24);
      _Block_release(v20);

      sub_1D3410744(v14);
      (*(v19 + 8))(v2, v0);
      (*(v25 + 8))(v18, v23);
    }
  }
}

unint64_t sub_1D35BA90C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76B220);
    v2 = sub_1D35DF7A4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_1D35BD870(&v22, v24);
        sub_1D35BD870(v24, v25);
        sub_1D35BD870(v25, &v23);
        result = sub_1D35BC5E4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1D35BD870(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1D35BD870(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D35BABC8()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  [v2 invalidate];

  v3 = *((*v1 & *v0) + 0x98);

  return v3(0);
}

uint64_t sub_1D35BAD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v44 = a8;
  v45 = a7;
  v42 = a3;
  v43 = a5;
  v13 = sub_1D35DF294();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v8 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 32);
  if (v22)
  {
    v40 = v14;
    v41 = result;
    v23 = *(v8 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 40);
    v39 = v19;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v38 = sub_1D35DF4E4();
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    v24[4] = a1;
    v24[5] = a2;
    v37 = v16;
    v25 = v43;
    v24[6] = v42;
    v24[7] = a4;
    v24[8] = v25;
    v24[9] = a6;
    v43 = v13;
    v26 = a6;
    v27 = v44;
    v28 = v45;
    v24[10] = v45;
    v24[11] = v27;
    aBlock[4] = sub_1D35BC578;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_57;
    v29 = _Block_copy(aBlock);
    sub_1D3410734(v22);
    v30 = v27;

    v31 = v26;
    v32 = v28;

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35B4D90(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    v33 = v37;
    v34 = v43;
    sub_1D35DF5B4();
    v35 = v38;
    MEMORY[0x1D38B8940](0, v21, v33, v29);
    _Block_release(v29);

    sub_1D3410744(v22);
    (*(v40 + 8))(v33, v34);
    return (*(v39 + 8))(v21, v41);
  }

  return result;
}

uint64_t sub_1D35BB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D35DF294();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 48);
  if (v16)
  {
    v23 = v8;
    v24 = result;
    v17 = *(v3 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 56);
    v22 = v13;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v21 = sub_1D35DF4E4();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = a3;
    aBlock[4] = sub_1D35A4574;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_63;
    v19 = _Block_copy(aBlock);
    sub_1D3410734(v16);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35B4D90(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v20 = v21;
    MEMORY[0x1D38B8940](0, v15, v10, v19);
    _Block_release(v19);

    sub_1D3410744(v16);
    (*(v23 + 8))(v10, v7);
    return (*(v22 + 8))(v15, v24);
  }

  return result;
}

uint64_t sub_1D35BB588(uint64_t a1)
{
  v3 = sub_1D35DF294();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D35DF2B4();
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 16);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent + 24);
    v19 = v9;
    v20 = result;
    sub_1D35A52E0(0, &unk_1EC76A5A0);

    v18 = sub_1D35DF4E4();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v14[4] = a1;
    aBlock[4] = sub_1D35BC5B4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D35A2720;
    aBlock[3] = &block_descriptor_69;
    v15 = _Block_copy(aBlock);

    sub_1D35DF2A4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D35B4D90(&unk_1EC76ABA0, MEMORY[0x1E69E7F60]);
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A5B0);
    sub_1D35A51F8(&qword_1EC76ABB0, &unk_1EC76A5B0);
    sub_1D35DF5B4();
    v16 = v18;
    MEMORY[0x1D38B8940](0, v11, v6, v15);
    _Block_release(v15);

    sub_1D3410744(v17);
    (*(v4 + 8))(v6, v3);
    return (*(v19 + 8))(v11, v20);
  }

  return result;
}

id sub_1D35BB934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _AppExtensionEventHostView.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D35BBA34()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76ABB8);
  sub_1D35DF1A4();
  [v0 setDelegate_];

  return v0;
}

id sub_1D35BBABC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v15 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = type metadata accessor for _AppExtensionEventHostView.HostCoordinator(0);
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_identity;
  v12 = sub_1D35DF014();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_conn] = 0;
  *&v10[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_configurationChangedPublisherSink] = 0;
  v13 = &v10[OBJC_IVAR____TtCV10EventKitUI26_AppExtensionEventHostView15HostCoordinator_parent];
  *v13 = v15;
  *(v13 + 1) = v2;
  *(v13 + 2) = v3;
  *(v13 + 3) = v4;
  *(v13 + 4) = v5;
  *(v13 + 5) = v6;
  *(v13 + 6) = v8;
  *(v13 + 7) = v7;

  sub_1D3410734(v3);
  sub_1D3410734(v5);
  sub_1D3410734(v8);
  v17.receiver = v10;
  v17.super_class = v9;
  result = objc_msgSendSuper2(&v17, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1D35BBBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D35BD81C();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1D35BBC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D35BD81C();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1D35BBCBC()
{
  sub_1D35BD81C();
  sub_1D35DF184();
  __break(1u);
}

uint64_t sub_1D35BBCEC(uint64_t a1, id *a2)
{
  result = sub_1D35DF364();
  *a2 = 0;
  return result;
}

uint64_t sub_1D35BBD64(uint64_t a1, id *a2)
{
  v3 = sub_1D35DF374();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D35BBDE4@<X0>(uint64_t *a1@<X8>)
{
  sub_1D35DF384();
  v2 = sub_1D35DF354();

  *a1 = v2;
  return result;
}

uint64_t sub_1D35BBE28@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D35DF354();

  *a1 = v2;
  return result;
}

uint64_t sub_1D35BBE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D35DF384();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D35BBE9C(uint64_t a1)
{
  v2 = sub_1D35B4D90(&qword_1EC76AC70, type metadata accessor for UIContentSizeCategory);
  v3 = sub_1D35B4D90(&qword_1EC76AC78, type metadata accessor for UIContentSizeCategory);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D35BBF58()
{
  v0 = sub_1D35DF384();
  v1 = MEMORY[0x1D38B8800](v0);

  return v1;
}

uint64_t sub_1D35BBF94()
{
  sub_1D35DF384();
  sub_1D35DF394();
}

uint64_t sub_1D35BBFE8()
{
  sub_1D35DF384();
  sub_1D35DF7F4();
  sub_1D35DF394();
  v0 = sub_1D35DF804();

  return v0;
}

uint64_t sub_1D35BC05C()
{
  v0 = sub_1D35DF384();
  v2 = v1;
  if (v0 == sub_1D35DF384() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D35DF7C4();
  }

  return v5 & 1;
}

void sub_1D35BC0E4()
{
  sub_1D35DF4D4();
  v0 = *sub_1D35AF6CC();
  sub_1D35DF024();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();

    if (v3)
    {
      [v3 setExportedObject_];
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D35BC1F4()
{
  result = qword_1EC76AB88;
  if (!qword_1EC76AB88)
  {
    sub_1D35A52E0(255, &qword_1EC76AD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AB88);
  }

  return result;
}

uint64_t sub_1D35BC25C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*v2 + 344))();
  sub_1D35BA90C(v3);

  v4 = sub_1D35DF334();

  [v1 updateEventViewWithChangedViewConfigurationDictionary_];

  v5 = (*(*v2 + 360))(v9);
  v7 = v6;

  *v7 = MEMORY[0x1E69E7CC8];
  return v5(v9, 0);
}

uint64_t objectdestroy_40Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

void sub_1D35BC3DC()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = MEMORY[0x1E69E7D40], v5 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))(), v3, v5))
  {

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      (*((*v4 & *v6) + 0xE0))(0);
    }
  }

  else
  {
    [v1 eventViewNavigationDoneButtonTapped];
  }
}

void sub_1D35BC4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = sub_1D35DF354();
  [v7 eventViewEventEditViewCompletedWithAction:a1 eventID:v8 waitUntilTimestamp:a4];
}

unint64_t sub_1D35BC5E4(uint64_t a1, uint64_t a2)
{
  sub_1D35DF7F4();
  sub_1D35DF394();
  v4 = sub_1D35DF804();

  return sub_1D35BCA80(a1, a2, v4);
}

uint64_t sub_1D35BC65C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AFF0);
  v34 = a2;
  result = sub_1D35DF784();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1D35DF7F4();
      sub_1D35DF394();
      result = sub_1D35DF804();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D35BC904(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D35BC5E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D35BC65C(v16, a4 & 1);
      v11 = sub_1D35BC5E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1D35DF7E4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1D35BCB38();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_1D35BCA80(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D35DF7C4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1D35BCB38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AFF0);
  v2 = *v0;
  v3 = sub_1D35DF774();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1D35BCCA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D35DEF74();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A510);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_1D35DF014();
  v44 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A710);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v20 = a1;
    sub_1D35DF524();
    v21 = sub_1D35DF514();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) == 1)
    {
      v23 = sub_1D35A537C(v19, &unk_1EC76A710);
      (*(*a3 + 176))(v23);
      v24 = v44;
      if ((*(v44 + 48))(v9, 1, v10) == 1)
      {

        sub_1D35A537C(v9, &unk_1EC76A510);
      }

      else
      {
        v40 = v17;
        v25 = v43;
        v26 = (*(v24 + 32))(v43, v9, v10);
        v27 = (*(*a3 + 200))(v26);
        if (v28)
        {
          v29 = v28;
          v39 = v27;
          v30 = sub_1D35DF4D4();
          v31 = *sub_1D35AF6CC();
          if (os_log_type_enabled(v31, v30))
          {
            v32 = v31;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v45 = v34;
            *v33 = 136315138;
            *(v33 + 4) = sub_1D35A3CF8(v39, v29, &v45);
            _os_log_impl(&dword_1D3400000, v32, v30, "_AppExtensionEventHostView: *** Setting up Remote UI Extension Configuration ***  sceneID: %s.", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x1D38BA4C0](v34, -1, -1);
            MEMORY[0x1D38BA4C0](v33, -1, -1);
          }

          v35 = v43;
          v36 = v44;
          (*(v44 + 16))(v41, v43, v10);
          sub_1D35DEF84();
          v37 = v40;
          sub_1D35DF504();
          (*(v22 + 56))(v37, 0, 1, v21);
          sub_1D35DF534();

          (*(v36 + 8))(v35, v10);
        }

        else
        {
          (*(v24 + 8))(v25, v10);
        }
      }
    }

    else
    {

      sub_1D35A537C(v19, &unk_1EC76A710);
    }
  }

  else
  {
    sub_1D35DF754();
    __break(1u);
  }
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D35BD240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 83))
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

uint64_t sub_1D35BD288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1D35BD308(uint64_t a1, int a2)
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

uint64_t sub_1D35BD350(uint64_t result, int a2, int a3)
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

void sub_1D35BD3B8()
{
  sub_1D35A4EF4();
  if (v0 <= 0x3F)
  {
    sub_1D35BD6F4(319, &qword_1EC76B1F0, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D35BD4F4()
{
  sub_1D35A4EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D35BD59C()
{
  result = qword_1EC76AC20;
  if (!qword_1EC76AC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC76AC28);
    sub_1D35B4BF4();
    sub_1D35A51F8(&qword_1EC76AAE0, &qword_1EC76AAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AC20);
  }

  return result;
}

void sub_1D35BD6F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D35BD81C()
{
  result = qword_1EC76AC80;
  if (!qword_1EC76AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC76AC80);
  }

  return result;
}

_OWORD *sub_1D35BD870(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_1D35BD93C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostingController] = 0;
  v7 = &v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostView];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 14) = 0;
  v8 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostViewModel;
  type metadata accessor for EKEventEditOOPHostViewModel();
  *&v3[v8] = sub_1D35C3540();
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitInsertedObjectIDs] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitUpdatedObjectIDs] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitDeletedObjectIDs] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_eventStore] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_event] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editViewDelegate] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_defaultCalendar] = 0;
  *&v3[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_editorBackgroundColor] = 0;
  if (a2)
  {
    v9 = sub_1D35DF354();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for EKEventEditViewControllerOOPImpl();
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

uint64_t sub_1D35BDB2C()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = type metadata accessor for EKEventEditViewControllerOOPImpl();
  v2 = objc_msgSendSuper2(&v50, sel_viewDidLoad);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))(v2);
  if (v4)
  {
    v5 = v4;
    v6 = v4;
LABEL_3:
    v7 = v4;
    v8 = [v5 insertedObjectIDs];
    if (v8)
    {
      v9 = v8;
      sub_1D35A52E0(0, &qword_1EC76AD00);
      sub_1D35BC1F4();
      v10 = sub_1D35DF494();
    }

    else
    {
      v10 = 0;
    }

    *(v1 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitInsertedObjectIDs) = v10;

    v13 = [v5 updatedObjectIDs];
    if (v13)
    {
      v14 = v13;
      sub_1D35A52E0(0, &qword_1EC76AD00);
      sub_1D35BC1F4();
      v15 = sub_1D35DF494();
    }

    else
    {
      v15 = 0;
    }

    *(v1 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitUpdatedObjectIDs) = v15;

    v16 = [v5 deletedObjectIDs];
    if (v16)
    {
      v17 = v16;
      sub_1D35A52E0(0, &qword_1EC76AD00);
      sub_1D35BC1F4();
      v18 = sub_1D35DF494();
    }

    else
    {

      v18 = 0;
    }

    *(v1 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitDeletedObjectIDs) = v18;

    goto LABEL_16;
  }

  v11 = (*((*v3 & *v0) + 0x168))();
  if (!v11)
  {
    v6 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  v6 = [v11 eventStore];

  if (v6)
  {
    v5 = v6;
    v4 = 0;
    goto LABEL_3;
  }

LABEL_16:
  v19 = *(v1 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostViewModel);
  v20.n128_f64[0] = sub_1D35C39BC(&v36);
  v21 = (*((*v3 & *v1) + 0x168))(v20);
  sub_1D35C4DD0(v21);
  v22 = v6;
  sub_1D35C4D40(v6);
  v23 = (*((*v3 & *v1) + 0x1B8))();
  sub_1D35C5374(v23);
  v44[4] = v40;
  v44[5] = v41;
  v44[6] = v42;
  v45 = v43;
  v44[0] = v36;
  v44[1] = v37;
  v24 = v1 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostView;
  v44[2] = v38;
  v44[3] = v39;
  swift_beginAccess();
  v25 = *(v24 + 5);
  v46[4] = *(v24 + 4);
  v46[5] = v25;
  v46[6] = *(v24 + 6);
  v47 = *(v24 + 14);
  v26 = *(v24 + 1);
  v46[0] = *v24;
  v46[1] = v26;
  v27 = *(v24 + 3);
  v46[2] = *(v24 + 2);
  v46[3] = v27;
  v28 = v36;
  v29 = v37;
  v30 = v39;
  *(v24 + 2) = v38;
  *(v24 + 3) = v30;
  *v24 = v28;
  *(v24 + 1) = v29;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  *(v24 + 14) = v43;
  *(v24 + 5) = v32;
  *(v24 + 6) = v33;
  *(v24 + 4) = v31;
  sub_1D35C0F6C(v44, v48);
  v34 = sub_1D35C0FC8(v46);
  (*((*v3 & *v1) + 0x138))(v34);

  v48[4] = v40;
  v48[5] = v41;
  v48[6] = v42;
  v49 = v43;
  v48[0] = v36;
  v48[1] = v37;
  v48[2] = v38;
  v48[3] = v39;
  return sub_1D35C1030(v48);
}

uint64_t sub_1D35BE00C()
{
  v1 = v0 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostView;
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (!v2)
  {
    goto LABEL_31;
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v101[0] = *v1;
  v3 = v101[0];
  v101[1] = v2;
  v101[2] = v4;
  v101[3] = v5;
  v101[4] = v7;
  v101[5] = v6;
  v8 = *(v1 + 96);
  v104 = *(v1 + 80);
  v105 = v8;
  v106 = *(v1 + 112);
  v9 = *(v1 + 64);
  v102 = *(v1 + 48);
  v103 = v9;
  v111 = v106;
  v109 = v104;
  v110 = v8;
  v107 = v102;
  v108 = v9;
  v10 = objc_opt_self();
  sub_1D35C0F6C(v101, v134);
  v11 = [v10 shared];
  v134[0] = v3;
  v134[1] = v2;
  v134[2] = v4;
  v134[3] = v5;
  v134[4] = v7;
  v134[5] = v6;
  v137 = v109;
  v138 = v110;
  v139 = v111;
  v136 = v108;
  v135 = v107;
  v12 = sub_1D35B3460();
  v13 = [v11 layoutDirectionOrOverride];
  v14 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x108))(v13);

  v123 = v3;
  v124 = v2;
  v125 = v4;
  v126 = v5;
  v127 = v7;
  v82 = v6;
  v128 = v6;
  v131 = v109;
  v132 = v110;
  v133 = v111;
  v129 = v107;
  v130 = v108;
  v15 = sub_1D35B3460();
  (*((*v14 & *v15) + 0x120))([v11 preferredContentSizeCategoryOrOverride]);

  v76 = v11;
  v16 = [v11 viewHierarchyOrOverride];
  v17 = [v83 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;

  v77 = objc_opt_self();
  v23 = [v77 systemBlueColor];
  v112 = v3;
  v113 = v2;
  v114 = v4;
  v115 = v5;
  v116 = v7;
  v117 = v82;
  v120 = v109;
  v121 = v110;
  v122 = v111;
  v119 = v108;
  v118 = v107;
  v24 = sub_1D35B3460();
  *&v81 = v3;
  v25 = [v16 ekui_verticalSizeClass];
  *(&v81 + 1) = v2;
  v26 = [v16 ekui_horizontalSizeClass];
  v27 = [v16 ekui_interfaceOrientation];
  v28 = v7;
  v29 = v23;
  [v16 ekui_affineTransform];
  v30 = v95;
  v78 = v94;
  v79 = v93;
  v31 = objc_allocWithZone(EKUIViewHierarchyFromComponents);
  v94 = v78;
  v93 = v79;
  v95 = v30;
  v32 = [v31 initWithSize:v25 verticalSizeClass:v26 horizontalSizeClass:v27 interfaceOrientation:v29 tintColor:&v93 affineTranform:{v20, v22}];
  v80 = v29;

  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x138))(v32);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D3410744(v28);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v34;
  sub_1D3410744(v4);
  v93 = v81;
  *&v94 = sub_1D35C1144;
  *(&v94 + 1) = v34;
  *&v95 = sub_1D35C1084;
  *(&v95 + 1) = v33;
  v99 = v110;
  v98 = v109;
  v96 = v107;
  v97 = v108;
  v100 = v111;
  v90 = v109;
  v91 = v110;
  v92 = v111;
  v85 = v81;
  v86 = v94;
  v87 = v95;
  v88 = v107;
  v89 = v108;
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76AD10));
  sub_1D35C0F6C(&v93, &v84);
  v37 = sub_1D35DF104();
  [v83 addChildViewController_];
  v38 = [v37 view];
  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  [v38 setInsetsLayoutMarginsFromSafeArea_];

  v40 = [v37 view];
  if (!v40)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = [v77 systemGroupedBackgroundColor];
  [v40 setBackgroundColor_];

  v42 = [v83 view];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  v44 = [v37 view];

  if (!v44)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v43 addSubview_];

  [v37 didMoveToParentViewController_];
  v45 = *&v83[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostingController];
  *&v83[OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_hostingController] = v37;
  v46 = v37;

  v47 = [v46 view];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v47 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC76A850);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D3601470;
  v49 = [v46 view];

  if (!v49)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = [v49 leadingAnchor];

  v51 = [v83 view];
  if (!v51)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = v51;
  v53 = [v51 leadingAnchor];

  v54 = [v50 constraintEqualToAnchor_];
  *(v48 + 32) = v54;
  v55 = [v46 view];

  if (!v55)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v56 = [v55 topAnchor];

  v57 = [v83 view];
  if (!v57)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v58 = v57;
  v59 = [v57 topAnchor];

  v60 = [v56 constraintEqualToAnchor_];
  *(v48 + 40) = v60;
  v61 = [v46 view];

  if (!v61)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v62 = [v61 trailingAnchor];

  v63 = [v83 view];
  if (!v63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v64 = v63;
  v65 = [v63 trailingAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(v48 + 48) = v66;
  v67 = [v46 view];

  if (v67)
  {
    v68 = [v67 bottomAnchor];

    v69 = [v83 view];
    if (v69)
    {
      v70 = v69;
      v71 = objc_opt_self();
      v72 = [v70 bottomAnchor];

      v73 = [v68 constraintEqualToAnchor_];
      *(v48 + 56) = v73;
      sub_1D35A52E0(0, &unk_1EC76AD20);
      v74 = sub_1D35DF3D4();

      [v71 activateConstraints_];

      swift_unknownObjectRelease();
      v85 = v81;
      *&v86 = sub_1D35C1144;
      *(&v86 + 1) = v35;
      *&v87 = sub_1D35C1084;
      *(&v87 + 1) = v33;
      v90 = v109;
      v91 = v110;
      v92 = v111;
      v88 = v107;
      v89 = v108;
      return sub_1D35C1030(&v85);
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D35DF754();
  __break(1u);
  return result;
}

void sub_1D35BEB34(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D35DF4D4();
  v6 = sub_1D35AF6CC();
  v7 = *v6;
  if (os_log_type_enabled(*v6, v5))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D35A3CF8(a1, a2, &v16);
    _os_log_impl(&dword_1D3400000, v8, v5, "EKEventEditViewControllerOOPImpl: Received remoteEventEditViewControllerRequestPresentView on the host app side. viewName: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1D38BA4C0](v10, -1, -1);
    MEMORY[0x1D38BA4C0](v9, -1, -1);
  }

  v11 = [v2 parentViewController];
  if (!v11 || (v12 = v11, v13 = [v11 parentViewController], v12, !v13) || (objc_opt_self(), v14 = swift_dynamicCastObjCClass(), v13, !v14))
  {
    sub_1D35DF4C4();
    v15 = *v6;
    sub_1D35DF024();
  }
}

void sub_1D35BED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  sub_1D35DF4D4();
  v16 = sub_1D35AF6CC();
  v17 = *v16;
  sub_1D35DF024();

  v18 = [v8 parentViewController];
  if (v18)
  {
    v19 = v18;
    v89 = [v18 parentViewController];

    if (v89)
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v20 = MEMORY[0x1E69E7D40];
        v21 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x150))();
        if (!v21)
        {
          v32 = (*((*v20 & *v9) + 0x168))();
          if (!v32 || (v33 = v32, v34 = [v32 eventStore], v33, v21 = v34, v20 = MEMORY[0x1E69E7D40], !v21))
          {
            sub_1D35DF4D4();
            v35 = *v16;
            sub_1D35DF024();

            v36 = (*((*v20 & *v9) + 0x180))();
            if (v36)
            {
              [v36 eventEditViewController:v85 didCompleteWithAction:a1];
              swift_unknownObjectRelease();
            }

            goto LABEL_17;
          }
        }

        if (a1 != 1)
        {
          v84 = v21;
          if (a1 == 2)
          {
            (*((*v20 & *v9) + 0x170))(0);
            v30 = sub_1D35BD8DC();
            if (*(v31 + 8))
            {
              sub_1D35C4DD0(0);
            }

            v21 = (v30)(aBlock, 0);
            a1 = 2;
          }

          goto LABEL_62;
        }

        v84 = v21;
        if (!a2 || (v83 = (*((*v20 & *v9) + 0x168))()) == 0)
        {
          v37 = sub_1D35DF4D4();
          v38 = *v16;
          v21 = os_log_type_enabled(*v16, v37);
          if (!v21)
          {
LABEL_61:
            a1 = 1;
LABEL_62:
            v70 = (*((*v20 & *v9) + 0x180))(v21);
            if (!v70)
            {
LABEL_77:

LABEL_78:
              return;
            }

            v71 = v70;
            if ([v70 respondsToSelector_])
            {
              if (([v71 respondsToSelector_] & 1) == 0)
              {

                swift_unknownObjectRelease();
                return;
              }

              [v71 eventEditViewController:v85 didCompleteWithAction:a1 waitUntil:a3];

              swift_unknownObjectRelease();
              goto LABEL_78;
            }

            v72 = (*((*v20 & *v9) + 0x168))();
            if (!v72)
            {
LABEL_76:
              [v71 eventEditViewController:v85 didCompleteWithAction:a1];
              swift_unknownObjectRelease();
              goto LABEL_77;
            }

            v73 = v72;
            v74 = [v72 calendar];
            if (!v74)
            {
              v75 = v73;
              goto LABEL_75;
            }

            v75 = v74;
            if ([objc_opt_self() realAuthorizationStatusForEntityType_] != 3)
            {
LABEL_73:

LABEL_75:
              goto LABEL_76;
            }

            v76 = [v75 source];
            if (v76)
            {
              v77 = v76;
              v78 = [v76 isReadable];

              if (v78)
              {
                v79 = swift_allocObject();
                v79[2] = v71;
                v79[3] = v85;
                v79[4] = a1;
                aBlock[4] = sub_1D35C122C;
                aBlock[5] = v79;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1D35A2720;
                aBlock[3] = &block_descriptor_1;
                v80 = _Block_copy(aBlock);
                swift_unknownObjectRetain();
                v81 = v89;

                [v84 waitUntilDatabaseUpdatedToTimestamp:a3 completion:v80];

                _Block_release(v80);
                swift_unknownObjectRelease();

                return;
              }

              goto LABEL_73;
            }

            goto LABEL_81;
          }

          v25 = v38;
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *(v39 + 12) = 2112;
          v41 = *v20 & *v9;
          *v39 = 138412546;
          *(v39 + 4) = v9;
          *v40 = v9;
          v42 = *(v41 + 360);
          v43 = v9;
          v44 = v42();
          *(v39 + 14) = v44;
          v40[1] = v44;
          _os_log_impl(&dword_1D3400000, v25, v37, "EKEventEditViewControllerOOPImpl: vc might have disappeared after the waiting for the database update. self: %@, event: %@", v39, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC76A530);
          swift_arrayDestroy();
          MEMORY[0x1D38BA4C0](v40, -1, -1);
          MEMORY[0x1D38BA4C0](v39, -1, -1);
LABEL_60:

          goto LABEL_61;
        }

        if (!a4 || !a5 || !a6)
        {
          v45 = OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitInsertedObjectIDs;
          if (*(v9 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitInsertedObjectIDs) && *(v9 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitUpdatedObjectIDs) && *(v9 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitDeletedObjectIDs))
          {
            v46 = v20;
            sub_1D35A52E0(0, &qword_1EC76AD00);
            sub_1D35BC1F4();

            v47 = sub_1D35DF334();
            v48 = sub_1D35DF474();
            v49 = sub_1D35DF474();
            v50 = sub_1D35DF474();
            v25 = [v84 mimicSaveAndCommitEvent:v83 oldToNewObjectIDMap:v47 insertedObjectIDs:v48 updatedObjectIDs:v49 deletedObjectIDs:v50];

            if (!v25)
            {
LABEL_82:
              __break(1u);
              return;
            }

            v20 = v46;
          }

          else
          {
            v51 = sub_1D35DF4C4();
            v52 = *v16;
            v25 = v83;
            if (os_log_type_enabled(*v16, v51))
            {
              loga = v52;
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              aBlock[0] = v54;
              *v53 = 136315650;
              if (*(v9 + v45))
              {
                v55 = 20302;
              }

              else
              {
                v55 = 5457241;
              }

              if (*(v9 + v45))
              {
                v56 = 0xE200000000000000;
              }

              else
              {
                v56 = 0xE300000000000000;
              }

              v57 = sub_1D35A3CF8(v55, v56, aBlock);

              *(v53 + 4) = v57;
              *(v53 + 12) = 2080;
              v58 = *(v9 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitUpdatedObjectIDs);
              if (v58)
              {
                v59 = 20302;
              }

              else
              {
                v59 = 5457241;
              }

              if (v58)
              {
                v60 = 0xE200000000000000;
              }

              else
              {
                v60 = 0xE300000000000000;
              }

              v61 = sub_1D35A3CF8(v59, v60, aBlock);

              *(v53 + 14) = v61;
              *(v53 + 22) = 2080;
              v62 = *(v9 + OBJC_IVAR____TtC10EventKitUI32EKEventEditViewControllerOOPImpl_preCommitDeletedObjectIDs);
              if (v62)
              {
                v63 = 20302;
              }

              else
              {
                v63 = 5457241;
              }

              if (v62)
              {
                v64 = 0xE200000000000000;
              }

              else
              {
                v64 = 0xE300000000000000;
              }

              v20 = MEMORY[0x1E69E7D40];
              v65 = sub_1D35A3CF8(v63, v64, aBlock);

              *(v53 + 24) = v65;
              _os_log_impl(&dword_1D3400000, loga, v51, "EKEventEditViewControllerOOPImpl remoteEventEditViewControllerDidComplete: some or all preCommit ObjectIDs are nil. nil states: [%s, %s, %s]", v53, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1D38BA4C0](v54, -1, -1);
              MEMORY[0x1D38BA4C0](v53, -1, -1);

              v25 = v83;
            }
          }

          goto LABEL_57;
        }

        sub_1D35A52E0(0, &qword_1EC76AD00);
        sub_1D35BC1F4();
        v82 = sub_1D35DF334();
        v22 = sub_1D35DF334();
        v23 = sub_1D35DF334();
        v24 = sub_1D35DF334();
        v25 = [v84 redactedMimicSaveEvent:v83 oldToNewObjectIDMap:v82 serializedDictionary:v22 objectIDToChangeSetDictionaryMap:v23 objectIDToPersistentDictionaryMap:v24];

        if (!v25)
        {
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v20 = MEMORY[0x1E69E7D40];
        if (a8 >> 60 != 15)
        {
          v26 = objc_allocWithZone(MEMORY[0x1E6966AF8]);
          sub_1D35C1258(a7, a8);
          v27 = sub_1D35DEF14();
          v28 = [v26 initWithData_];

          if (v28)
          {
            v29 = [v25 CADObjectID];
            [v84 cacheConstraints:v28 forObjectWithCADObjectID:v29];

            sub_1D35C12AC(a7, a8);
LABEL_57:
            v67 = sub_1D35BD8DC();
            if (*(v68 + 8))
            {
              v69 = v25;
              sub_1D35C4DD0(v25);
              (v67)(aBlock, 0);

              goto LABEL_61;
            }

            (v67)(aBlock, 0);
            goto LABEL_60;
          }

          sub_1D35C12AC(a7, a8);
        }

        sub_1D35DF4C4();
        v66 = *v16;
        sub_1D35DF024();

        goto LABEL_57;
      }
    }
  }

  sub_1D35DF4C4();
  v89 = *v16;
  sub_1D35DF024();
LABEL_17:
}
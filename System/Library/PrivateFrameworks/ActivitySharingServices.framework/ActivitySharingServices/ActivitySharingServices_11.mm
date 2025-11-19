uint64_t sub_221F9B3A4@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v788 = a2;
  v5 = sub_221FB6618();
  v768 = *(v5 - 8);
  v769 = v5;
  v6 = v768[8];
  MEMORY[0x28223BE20](v5);
  v767 = (&v757 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v765 = sub_221FB6608();
  v8 = *(*(v765 - 1) + 64);
  MEMORY[0x28223BE20](v765);
  v766 = (&v757 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221FB6238();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v764 = (&v757 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *MEMORY[0x277CE91F8];
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v789 = v13;
  v15 = [v14 initWithSuiteName_];
  if (!v15)
  {
    v15 = [objc_opt_self() standardUserDefaults];
  }

  a3[392] = v15;
  v16 = a1[1];
  v17 = a1[2];
  v19 = a1[3];
  v18 = a1[4];
  v20 = a1[5];
  v22 = a1[9];
  v21 = a1[10];
  v24 = a1[11];
  v23 = a1[12];
  v779 = a1[6];
  v780 = v24;
  v781 = v21;
  v782 = v23;
  v787 = a1[13];
  v25 = a1[8];
  v778 = a1[7];
  v783 = a1;
  a3[119] = v25;
  v26 = v15;
  v790 = sub_221FB5F98();
  v27 = v26;
  v28 = v22;
  v29 = v25;
  v30 = v27;
  v774 = v29;
  v31 = v28;
  v786 = v16;
  v770 = v17;
  v784 = v18;
  v772 = v19;
  v785 = v20;
  v773 = v779;
  v761 = v778;
  v775 = v780;
  v780 = v781;
  v782 = v782;
  v776 = v787;
  v778 = sub_221FB5F88();
  v32 = type metadata accessor for IDSListener();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_messageCenter] = v31;
  v34 = v31;
  *&v33[OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_transportDispatchService] = sub_221FB5F88();
  v864.receiver = v33;
  v864.super_class = v32;
  v35 = objc_msgSendSuper2(&v864, sel_init);
  v36 = *&v35[OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_messageCenter];
  v781 = v35;
  [v36 setSecureCloudDelegate_];

  v37 = type metadata accessor for InvitationStore();
  v38 = swift_allocObject();
  swift_defaultActor_initialize();
  v39 = MEMORY[0x277D84F90];
  v38[14] = 0xD000000000000019;
  v38[15] = 0x8000000221FC48D0;
  v38[16] = v30;
  v38[17] = v39;
  a3[172] = v37;
  a3[173] = &off_28355CA20;
  a3[169] = v38;
  v40 = swift_allocObject();
  v41 = v30;
  swift_defaultActor_initialize();
  v40[14] = 0xD000000000000017;
  v40[15] = 0x8000000221FC48F0;
  v40[16] = v41;
  v40[17] = v39;
  v763 = v41;
  a3[177] = v37;
  a3[178] = &off_28355CA20;
  a3[174] = v40;
  sub_221EA4AB4((a3 + 169), v861);
  sub_221EA4AB4((a3 + 174), v858);
  v787 = type metadata accessor for AsyncLock();
  v42 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v42 + 112) = 0;
  a3[162] = v42;
  sub_221EA4AB4(v861, (a3 + 151));
  sub_221EA4AB4(v858, (a3 + 156));
  v43 = sub_221FB5F88();
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  a3[161] = v43;
  v862 = &type metadata for InvitationListener;
  v790 = sub_221FA6860();
  v863 = v790;
  v861[0] = swift_allocObject();
  sub_221F41394((a3 + 151), v861[0] + 16);
  v44 = type metadata accessor for InvitationService();
  v45 = objc_allocWithZone(v44);
  v46 = v862;
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v48 = *(v46[-1].Description + 8);
  MEMORY[0x28223BE20](v47);
  v50 = (&v757 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = sub_221FA48D4(v50, v45);
  __swift_destroy_boxed_opaque_existential_0(v861);
  a3[166] = v44;
  a3[167] = &off_28355B948;
  a3[163] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB80, &unk_221FBFEC0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_221FBB1B0;
  v54 = *MEMORY[0x277CE9340];
  *(v53 + 32) = sub_221FB6318();
  *(v53 + 40) = v55;
  *(v53 + 48) = v34;
  v777 = v34;
  v56 = *MEMORY[0x277CE9348];
  *(v53 + 56) = sub_221FB6318();
  *(v53 + 64) = v57;
  v58 = v780;
  *(v53 + 72) = v780;
  v780 = v58;
  v59 = sub_221ED82AC(v53);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB88, &unk_221FBFEC8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a3[144] = &type metadata for IDSFirewallService;
  a3[145] = &off_28355C480;
  v60 = v784;
  a3[141] = v784;
  a3[142] = v59;
  v61 = sub_221FB5CD8();
  v62 = MEMORY[0x277CE9370];
  a3[53] = v61;
  a3[54] = v62;
  __swift_allocate_boxed_opaque_existential_1(a3 + 50);
  v762 = v60;
  v63 = v788;
  sub_221FB5CC8();
  a3[48] = &type metadata for ActivityDataQuery;
  a3[49] = &off_283558B40;
  a3[45] = v63;
  a3[43] = &type metadata for ActivityDataCoordinator;
  a3[44] = &off_283557C78;
  v64 = v786;
  a3[40] = v786;
  v65 = type metadata accessor for DatabaseCoordinator();
  v66 = objc_allocWithZone(v65);
  v67 = v785;
  *&v66[OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_databaseClient] = v785;
  v771 = v64;
  v779 = v67;
  v68 = v63;
  v69 = sub_221ED8190(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB90, &unk_221FBFED0);
  v70 = swift_allocObject();
  *(v70 + 24) = 0;
  *(v70 + 16) = v69;
  *&v66[OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers] = v70;
  v857.receiver = v66;
  v857.super_class = v65;
  v71 = objc_msgSendSuper2(&v857, sel_init);
  a3[117] = v65;
  a3[118] = &off_28355BE38;
  a3[114] = v71;
  sub_221EA4AB4((a3 + 114), v861);
  v759 = 0x8000000221FC4910;
  v72 = v862;
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v760 = &v757;
  v74 = *(v72[-1].Description + 8);
  MEMORY[0x28223BE20](v73);
  v76 = (&v757 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v859 = v65;
  v860 = &off_28355BE38;
  v858[0] = v78;
  v79 = type metadata accessor for ActivitySnapshotSummaryStore();
  v80 = swift_allocObject();
  v81 = __swift_mutable_project_boxed_opaque_existential_1(v858, v65);
  v786 = *(*(v65 - 1) + 64);
  MEMORY[0x28223BE20](v81);
  v784 = ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = (&v757 - v784);
  v85 = *(v84 + 16);
  v788 = (v84 + 16);
  v85(&v757 - v784);
  v785 = v85;
  v86 = *v83;
  v855 = v65;
  v856 = &off_28355BE38;
  *&v854 = v86;
  v87 = v68;
  swift_defaultActor_initialize();
  sub_221E977F0(&v854, (v80 + 14));
  v80[19] = v87;
  v80[20] = 0xD000000000000017;
  v80[21] = v759;
  v80[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  a3[63] = v79;
  a3[64] = &off_28355CF00;
  a3[60] = v80;
  sub_221EA4AB4((a3 + 114), v861);
  v757 = 0x8000000221FC4930;
  v88 = v862;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v759 = &v757;
  v90 = *(v88[-1].Description + 8);
  MEMORY[0x28223BE20](v89);
  v92 = (&v757 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  v94 = *v92;
  v859 = v65;
  v860 = &off_28355BE38;
  v858[0] = v94;
  v95 = type metadata accessor for GoalCompletionAnchorStore();
  v96 = swift_allocObject();
  v97 = __swift_mutable_project_boxed_opaque_existential_1(v858, v65);
  MEMORY[0x28223BE20](v97);
  v98 = (&v757 - v784);
  v85(&v757 - v784);
  v99 = *v98;
  v855 = v65;
  v856 = &off_28355BE38;
  *&v854 = v99;
  v100 = v87;
  v760 = v100;
  swift_defaultActor_initialize();
  sub_221E977F0(&v854, (v96 + 14));
  v96[19] = v100;
  v96[20] = 0xD000000000000014;
  v96[21] = v757;
  v96[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  a3[128] = v95;
  a3[129] = &off_28355D0F0;
  a3[125] = v96;
  a3[390] = &type metadata for TodaySnapshotUpdateProvider;
  a3[391] = &off_283558CB8;
  v101 = swift_allocObject();
  a3[387] = v101;
  sub_221EA4AB4((a3 + 40), v101 + 16);
  sub_221EA4AB4((a3 + 125), v101 + 56);
  sub_221EA4AB4((a3 + 60), v101 + 96);
  a3[421] = &type metadata for YesterdaySnapshotUpdateProvider;
  a3[422] = &off_28355C2E8;
  v102 = swift_allocObject();
  a3[418] = v102;
  sub_221EA4AB4((a3 + 40), v102 + 16);
  sub_221EA4AB4((a3 + 60), v102 + 56);
  a3[13] = &type metadata for AchievementQuery;
  a3[14] = &off_28355CFF8;
  sub_221EA4AB4((a3 + 114), v861);
  v757 = 0x8000000221FC4950;
  v103 = v862;
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v759 = &v757;
  v105 = *(v103[-1].Description + 8);
  MEMORY[0x28223BE20](v104);
  v107 = (&v757 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = *v107;
  v859 = v65;
  v860 = &off_28355BE38;
  v858[0] = v109;
  v110 = type metadata accessor for AchievementAnchorStore();
  v111 = swift_allocObject();
  v112 = __swift_mutable_project_boxed_opaque_existential_1(v858, v65);
  MEMORY[0x28223BE20](v112);
  v113 = (&v757 - v784);
  v114 = v784;
  v785(&v757 - v784);
  v115 = *v113;
  v855 = v65;
  v856 = &off_28355BE38;
  *&v854 = v115;
  v116 = v760;
  v760 = v116;
  swift_defaultActor_initialize();
  sub_221E977F0(&v854, (v111 + 14));
  v111[19] = v116;
  v111[20] = 0xD000000000000012;
  v111[21] = v757;
  v111[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  v117 = a3;
  a3[15] = v111;
  v118 = a3 + 15;
  v118[3] = v110;
  v118[4] = &off_28355F028;
  v119 = v117;
  v758 = v117;
  sub_221EA4AB4((v117 + 40), (v118 + 5));
  sub_221EA4AB4(v118, (v118 + 10));
  v120 = [objc_allocWithZone(MEMORY[0x277D09CD8]) init];
  v118[18] = &type metadata for NotificationSuppressionProvider;
  v118[19] = &off_283559EE0;
  v118[15] = v120;
  sub_221EA4AB4((v119 + 114), v861);
  v757 = 0x8000000221FC4970;
  v121 = v862;
  v122 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v759 = &v757;
  v123 = *(v121[-1].Description + 8);
  MEMORY[0x28223BE20](v122);
  v125 = (&v757 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125);
  v127 = *v125;
  v859 = v65;
  v860 = &off_28355BE38;
  v858[0] = v127;
  v128 = type metadata accessor for WorkoutCompletionAnchorStore();
  v129 = swift_allocObject();
  v130 = __swift_mutable_project_boxed_opaque_existential_1(v858, v65);
  MEMORY[0x28223BE20](v130);
  v785(&v757 - v114);
  v131 = *(&v757 - v114);
  v855 = v65;
  v856 = &off_28355BE38;
  *&v854 = v131;
  v132 = v760;
  swift_defaultActor_initialize();
  sub_221E977F0(&v854, (v129 + 14));
  v129[19] = v132;
  v129[20] = 0xD000000000000018;
  v129[21] = v757;
  v129[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  v133 = v758;
  v118[381] = v128;
  v118[382] = &off_2835592A0;
  v118[378] = v129;
  sub_221EA4AB4((v133 + 114), v861);
  v757 = 0x8000000221FC4990;
  v134 = v862;
  v135 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v759 = &v757;
  v136 = *(v134[-1].Description + 8);
  MEMORY[0x28223BE20](v135);
  v138 = (&v757 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v139 + 16))(v138);
  v140 = *v138;
  v859 = v65;
  v860 = &off_28355BE38;
  v858[0] = v140;
  v141 = type metadata accessor for WorkoutDeletionAnchorStore();
  v142 = swift_allocObject();
  v143 = __swift_mutable_project_boxed_opaque_existential_1(v858, v65);
  MEMORY[0x28223BE20](v143);
  v144 = (&v757 - v114);
  v785(v144);
  v145 = *v144;
  v855 = v65;
  v856 = &off_28355BE38;
  *&v854 = v145;
  v146 = v132;
  swift_defaultActor_initialize();
  sub_221E977F0(&v854, (v142 + 14));
  v760 = v146;
  v142[19] = v146;
  v142[20] = 0xD000000000000016;
  v142[21] = v757;
  v142[22] = 0;
  __swift_destroy_boxed_opaque_existential_0(v858);
  v147 = v133;
  __swift_destroy_boxed_opaque_existential_0(v861);
  v118[386] = v141;
  v118[387] = &off_28355EF70;
  v118[383] = v142;
  sub_221EA4AB4((v133 + 40), (v118 + 388));
  sub_221EA4AB4((v118 + 378), (v118 + 393));
  sub_221EA4AB4((v118 + 383), (v118 + 398));
  v118[108] = &type metadata for FriendListCoordinator;
  v118[109] = &off_28355CAD8;
  v788 = v118;
  v148 = v761;
  v118[105] = v761;
  v149 = sub_221F3FA70();
  v761 = v148;
  sub_221FB6228();
  v861[0] = MEMORY[0x277D84F90];
  sub_221F3FABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
  sub_221F3FB14();
  sub_221FB67D8();
  (v768[13])(v767, *MEMORY[0x277D85260], v769);
  v769 = v149;
  v150 = sub_221FB6648();
  v151 = objc_opt_self();
  v786 = v150;
  v785 = [v151 changeTokenCacheFromUserDefaultsWithSerialQueue:v150 cloudType:1];
  v152 = type metadata accessor for SecureCloudContainer();
  v153 = swift_allocObject();
  *(v153 + 32) = 0;
  v154 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v155 = [v154 initWithSuiteName_];
  if (!v155)
  {
    v155 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v153 + 40) = 16;
  *(v153 + 48) = v155;
  *(v153 + 16) = 0xD000000000000033;
  *(v153 + 24) = 0x8000000221FC49F0;
  v768 = v152;
  v133[328] = v152;
  v133[329] = &off_28355F5C8;
  v133[325] = v153;
  v156 = *__swift_project_boxed_opaque_existential_0Tm(v133 + 325, v152);
  v157 = sub_221F9ACE4();
  v158 = [objc_allocWithZone(MEMORY[0x277CE9548]) initWithContainer_];

  v133[96] = v158;
  v133[94] = &type metadata for CloudKitCoordinator;
  v133[95] = &off_28355F370;
  v159 = v770;
  v133[91] = v770;
  sub_221EA4AB4((v133 + 50), v861);
  v133[84] = &type metadata for CloudDeviceStore;
  v133[85] = &off_28355CF30;
  v160 = swift_allocObject();
  v147[81] = v160;
  v161 = v158;
  v162 = v159;
  v163 = v161;
  sub_221F7BA38(v861, v763, v160 + 16);
  v147[89] = &type metadata for CloudDeviceSystem;
  v147[90] = &off_283560748;
  v164 = swift_allocObject();
  v147[86] = v164;
  sub_221EA4AB4((v147 + 81), v164 + 16);
  sub_221EA4AB4((v147 + 86), v861);
  sub_221EA4AB4((v147 + 91), v858);
  v165 = v862;
  v166 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v167 = *(v165[-1].Description + 8);
  MEMORY[0x28223BE20](v166);
  v169 = &v757 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v170 + 16))(v169);
  v171 = v859;
  v172 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v173 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v175 = v147;
  v176 = (&v757 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v177 + 16))(v176);
  v178 = sub_221FA4BA8(v169, *v176);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 640) = v178;
  *(v175 + 2744) = &type metadata for SecureCloudFetchService;
  *(v175 + 2752) = &off_283559208;
  *(v175 + 2720) = v163;
  v179 = type metadata accessor for ServerChangeTokenCacheStore();
  v180 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB98, &unk_221FBFEE0);
  v181 = swift_allocObject();
  *(v181 + 24) = 0;
  v182 = v785;
  *(v181 + 16) = v785;
  *(v180 + 16) = v181;
  *(v175 + 3040) = v179;
  *(v175 + 3048) = &off_28355B4C8;
  *(v175 + 3016) = v180;
  sub_221EA4AB4(v175 + 2720, v861);
  sub_221EA4AB4(v175 + 3016, v858);
  v183 = v862;
  v184 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v185 = *(v183[-1].Description + 8);
  MEMORY[0x28223BE20](v184);
  v187 = (&v757 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v188 + 16))(v187);
  v189 = v859;
  v190 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v191 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v193 = (&v757 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v194 + 16))(v193);
  v195 = *v187;
  v196 = *v193;
  v197 = v762;
  v767 = v197;
  v198 = v163;
  v785 = v182;
  v199 = sub_221FA4E28(v197, v195, v196);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 2760) = v199;
  v200 = v199;
  [(objc_class *)v162 setSecureCloudDelegate:v200];

  *(v175 + 2840) = &type metadata for SecureCloudPushService;
  *(v175 + 2848) = &off_283559A90;
  v201 = swift_allocObject();
  *(v175 + 2816) = v201;
  sub_221EA4AB4(v175 + 2600, v201 + 24);
  *(v201 + 16) = v198;
  *(v175 + 2920) = &type metadata for SecureCloudSubscriptionService;
  *(v175 + 2928) = &off_28355EE50;
  v202 = swift_allocObject();
  *(v175 + 2896) = v202;
  sub_221EA4AB4(v175 + 2600, v202 + 24);
  *(v202 + 16) = v198;
  sub_221EA4AB4(v175 + 2600, v861);
  v203 = objc_opt_self();
  v770 = v198;
  v784 = v203;
  v204 = [v203 defaultCenter];
  v205 = v862;
  v206 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v766 = &v757;
  v207 = *(v205[-1].Description + 8);
  MEMORY[0x28223BE20](v206);
  v209 = (&v757 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v210 + 16))(v209);
  v211 = *v209;
  v212 = v768;
  v859 = v768;
  v860 = &off_28355F5C8;
  v858[0] = v211;
  v213 = type metadata accessor for ServerPushListener();
  v214 = objc_allocWithZone(v213);
  v215 = v859;
  v216 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v217 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v219 = (&v757 - ((v218 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v220 + 16))(v219);
  v221 = *v219;
  v855 = v212;
  v856 = &off_28355F5C8;
  *&v854 = v221;
  sub_221EA4AB4(&v854, &v214[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_container]);
  *&v214[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_notificationCenter] = v204;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBA0, &unk_221FBFEE8);
  v222 = swift_allocObject();
  *(v222 + 24) = 0;
  *(v222 + 16) = 0;
  *&v214[OBJC_IVAR____TtC23ActivitySharingServices18ServerPushListener_protectedState] = v222;
  v853.receiver = v214;
  v853.super_class = v213;
  v223 = objc_msgSendSuper2(&v853, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 3080) = v213;
  *(v175 + 3088) = &off_28355F2A0;
  *(v175 + 3056) = v223;
  *(v175 + 800) = &type metadata for CompetitionCoordinator;
  *(v175 + 808) = &off_28355EF08;
  v224 = v772;
  *(v175 + 776) = v772;
  sub_221EA4AB4(v175 + 776, v175 + 864);
  v225 = v767;
  *(v175 + 904) = v767;
  *(v175 + 848) = &type metadata for CompetitionService;
  *(v175 + 856) = &off_283557F98;
  v226 = swift_allocObject();
  *(v175 + 824) = v226;
  sub_221EA4AB4(v175 + 2816, v226 + 24);
  *(v226 + 16) = v225;
  sub_221EA4AB4(v175 + 824, v861);
  sub_221EA4AB4(v175 + 2816, v858);
  v227 = v862;
  v228 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v229 = *(v227[-1].Description + 8);
  MEMORY[0x28223BE20](v228);
  v231 = (&v757 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v232 + 16))(v231);
  v233 = v859;
  v234 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v235 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v237 = (&v757 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v238 + 16))(v237);
  v239 = v225;
  v240 = v224;
  v241 = sub_221FA506C(v231, v237);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 816) = v241;
  v242 = v241;
  [v240 setSecureCloudDelegate_];

  v243 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v244 = v760;
  v245 = sub_221FB62E8();
  v246 = [v243 initWithCategory:3 domainName:v245 healthStore:v244];

  *(v175 + 2584) = &type metadata for SecureCloudAccountStore;
  *(v175 + 2592) = &off_283558620;
  *(v175 + 2560) = v246;
  *(v175 + 24) = &type metadata for SecureCloudAccountService;
  *(v175 + 32) = &off_2835598E8;
  v247 = swift_allocObject();
  *v175 = v247;
  sub_221EA4AB4(v175 + 2600, v247 + 16);
  *(v175 + 544) = &type metadata for AnalyticsService;
  *(v175 + 552) = &off_283558B50;
  v248 = swift_allocObject();
  *(v175 + 520) = v248;
  sub_221EA4AB4(v175, v248 + 16);
  sub_221EA4AB4(v175 + 648, v248 + 56);
  sub_221EA4AB4((v788 + 105), v248 + 96);
  v249 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v250 = v789;
  v251 = [v249 initWithSuiteName_];
  if (!v251)
  {
    v251 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v248 + 136) = 7;
  v252 = MEMORY[0x277D84F90];
  *(v248 + 144) = MEMORY[0x277D84F90];
  *(v248 + 152) = v251;
  *(v175 + 304) = &type metadata for ActivityDataPreviewCoordinator;
  *(v175 + 312) = &off_283557F58;
  *(v175 + 280) = v771;
  swift_beginAccess();
  v253 = byte_27CFEC8A0;
  *(v175 + 584) = &type metadata for AppInstallationCoordinator;
  *(v175 + 592) = &off_28355AE40;
  *(v175 + 560) = v773;
  *(v175 + 568) = v253;
  *(v175 + 624) = &type metadata for BadgeCoordinator;
  *(v175 + 632) = &off_28355CD00;
  *(v175 + 600) = v761;
  *(v175 + 1112) = &type metadata for NotificationCoordinator;
  *(v175 + 1120) = &off_28355CD38;
  *(v175 + 1088) = v774;
  v254 = type metadata accessor for MigrationAvailableItemStore();
  v255 = swift_allocObject();
  swift_defaultActor_initialize();
  v255[14] = v244;
  v255[15] = 0;
  v256 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v256 + 112) = 0;
  v255[16] = v256;
  *(v175 + 1064) = v254;
  *(v175 + 1072) = &off_28355A710;
  *(v175 + 1040) = v255;
  *(v175 + 2664) = &type metadata for SecureCloudGateway;
  *(v175 + 2672) = &off_283560950;
  *(v175 + 2640) = v775;
  *(v175 + 2792) = &type metadata for SecureCloudParticipantService;
  *(v175 + 2800) = &off_283557D20;
  v257 = v770;
  *(v175 + 2768) = v770;
  *(v175 + 2880) = &type metadata for SecureCloudShareService;
  *(v175 + 2888) = &off_2835578F8;
  v258 = swift_allocObject();
  *(v175 + 2856) = v258;
  sub_221EA4AB4(v175 + 2600, v258 + 24);
  *(v258 + 16) = v257;
  *(v175 + 1456) = &type metadata for RelationshipCoordinator;
  *(v175 + 1464) = &off_283560A48;
  v259 = v776;
  *(v175 + 1432) = v776;
  v260 = v239;
  v776 = v259;
  v261 = v257;
  v262 = sub_221FB6628();
  v263 = [objc_allocWithZone(MEMORY[0x277CE9560]) initWithCloudType:1 contactsManager:v260 clientQueue:v262];

  *(v175 + 1624) = &type metadata for RelationshipFinalizationCoordinator;
  *(v175 + 1632) = &off_28355BE88;
  *(v175 + 1600) = v263;
  *(v175 + 1984) = &type metadata for RelationshipPushService;
  *(v175 + 1992) = &off_2835584A8;
  v264 = swift_allocObject();
  *(v175 + 1960) = v264;
  sub_221EA4AB4(v175 + 1040, v264 + 24);
  sub_221EA4AB4(v175 + 1432, v264 + 64);
  sub_221EA4AB4(v175 + 2816, v264 + 104);
  *(v264 + 16) = v260;
  *(v175 + 1496) = &type metadata for RelationshipDowngradeService;
  *(v175 + 1504) = &off_2835582E8;
  v265 = swift_allocObject();
  *(v175 + 1472) = v265;
  sub_221EA4AB4(v175 + 400, v265 + 16);
  sub_221EA4AB4(v175 + 520, v265 + 56);
  sub_221EA4AB4(v175 + 560, v265 + 96);
  sub_221EA4AB4(v175 + 648, v265 + 136);
  sub_221EA4AB4(v175 + 776, v265 + 176);
  sub_221EA4AB4(v175 + 912, v265 + 232);
  sub_221EA4AB4(v175 + 1040, v265 + 272);
  sub_221EA4AB4(v175 + 1960, v265 + 312);
  v266 = v260;
  v267 = ASCloudKitGroupManateeDowngrade();
  v268 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v268)
  {
    v268 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v265 + 352) = 7;
  *(v265 + 360) = v252;
  *(v265 + 368) = v268;
  v269 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v269)
  {
    v269 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v265 + 376) = 267;
  *(v265 + 384) = v269;
  v270 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v270)
  {
    v270 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v265 + 392) = 2;
  *(v265 + 400) = v270;
  v271 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v271)
  {
    v271 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v265 + 408) = 3;
  *(v265 + 416) = 0x40F5180000000000;
  *(v265 + 424) = v271;
  *(v265 + 216) = v267;
  *(v265 + 224) = v266;
  sub_221EA4AB4(v175 + 728, v861);
  sub_221EA4AB4(v175 + 1040, v858);
  sub_221EA4AB4(v175 + 1472, &v854);
  v272 = v862;
  v273 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v274 = *(v272[-1].Description + 8);
  MEMORY[0x28223BE20](v273);
  v276 = (&v757 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v277 + 16))(v276);
  v278 = v859;
  v279 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v280 = *(*(v278 - 8) + 64);
  MEMORY[0x28223BE20](v279);
  v282 = (&v757 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v283 + 16))(v282);
  v284 = v855;
  v285 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
  v286 = *(*(v284 - 8) + 64);
  MEMORY[0x28223BE20](v285);
  v288 = &v757 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v289 + 16))(v288);
  v290 = *v276;
  v291 = *v282;
  v292 = v266;
  v293 = sub_221FA5330(v290, v292, v291, v288);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 1080) = v293;
  *(v175 + 2464) = &type metadata for RelationshipUpdateService;
  *(v175 + 2472) = &off_283558FF0;
  v294 = swift_allocObject();
  *(v175 + 2440) = v294;
  sub_221EA4AB4(v175 + 1600, v294 + 24);
  sub_221EA4AB4(v175 + 1960, v294 + 64);
  *(v294 + 16) = v292;
  *(v175 + 2024) = &type metadata for RelationshipRepairService;
  *(v175 + 2032) = &off_283559DD8;
  v295 = swift_allocObject();
  *(v175 + 2000) = v295;
  sub_221EA4AB4(v175, v295 + 16);
  sub_221EA4AB4(v175 + 560, v295 + 56);
  sub_221EA4AB4(v175 + 728, v295 + 96);
  sub_221EA4AB4(v175 + 1304, v295 + 152);
  sub_221EA4AB4(v175 + 2768, v295 + 192);
  sub_221EA4AB4(v175 + 2816, v295 + 232);
  sub_221EA4AB4(v175 + 1960, v295 + 272);
  sub_221EA4AB4(v175 + 2856, v295 + 312);
  v296 = v292;
  v297 = ASCloudKitGroupManateeRepair();
  v298 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v299 = v789;
  v300 = [v298 initWithSuiteName_];
  if (!v300)
  {
    v300 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v295 + 352) = 12;
  *(v295 + 360) = 0x40F5180000000000;
  *(v295 + 368) = v300;
  *(v295 + 136) = v297;
  *(v295 + 144) = v296;
  *(v175 + 2704) = &type metadata for SecureCloudErrorDispatcher;
  *(v175 + 2712) = &off_28355BD38;
  v301 = swift_allocObject();
  *(v175 + 2680) = v301;
  sub_221EA4AB4(v175 + 2000, v301 + 16);
  *(v175 + 1864) = &type metadata for RelationshipMigrationService;
  *(v175 + 1872) = &off_283559C00;
  v302 = swift_allocObject();
  *(v175 + 1840) = v302;
  sub_221EA4AB4(v175, v302 + 16);
  sub_221EA4AB4(v175 + 400, v302 + 56);
  sub_221EA4AB4(v175 + 520, v302 + 96);
  sub_221EA4AB4(v175 + 560, v302 + 136);
  sub_221EA4AB4(v175 + 648, v302 + 176);
  sub_221EA4AB4(v175 + 728, v302 + 216);
  sub_221EA4AB4(v175 + 776, v302 + 264);
  sub_221EA4AB4(v175 + 912, v302 + 312);
  sub_221EA4AB4(v175 + 1040, v302 + 352);
  sub_221EA4AB4(v175 + 2816, v302 + 392);
  sub_221EA4AB4(v175 + 1432, v302 + 432);
  sub_221EA4AB4(v175 + 1960, v302 + 472);
  sub_221EA4AB4(v175 + 2856, v302 + 512);
  v303 = v296;
  v304 = ASCloudKitGroupManateeMigrate();
  v305 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  v306 = MEMORY[0x277D84F90];
  if (!v305)
  {
    v305 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v302 + 552) = 257;
  *(v302 + 560) = v305;
  v307 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v307)
  {
    v307 = [objc_opt_self() standardUserDefaults];
  }

  v308 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v309 = 604800.0;
  if (v308)
  {
    v309 = 86400.0;
  }

  *(v302 + 568) = 9;
  *(v302 + 576) = v309;
  *(v302 + 584) = v307;
  v310 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v310)
  {
    v310 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v302 + 592) = 7;
  *(v302 + 600) = v306;
  *(v302 + 608) = v310;
  v311 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v311)
  {
    v311 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v302 + 616) = 267;
  *(v302 + 624) = v311;
  v312 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v312)
  {
    v312 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v302 + 632) = 10;
  *(v302 + 640) = v312;
  *(v302 + 256) = v304;
  *(v302 + 304) = v303;
  *(v175 + 1904) = &type metadata for RelationshipNotificationService;
  *(v175 + 1912) = &off_28355A590;
  v313 = swift_allocObject();
  *(v175 + 1880) = v313;
  sub_221EA4AB4(v175 + 728, v313 + 24);
  sub_221EA4AB4(v175 + 1432, v313 + 72);
  sub_221EA4AB4(v175 + 1600, v313 + 112);
  sub_221EA4AB4(v175 + 1960, v313 + 152);
  v314 = v303;
  v315 = ASCloudKitGroupUserActionExplicit();
  *(v313 + 16) = v314;
  *(v313 + 64) = v315;
  *(v175 + 2064) = &type metadata for RelationshipRemovalService;
  *(v175 + 2072) = &off_2835599D0;
  v316 = swift_allocObject();
  *(v175 + 2040) = v316;
  sub_221EA4AB4(v175 + 1432, v316 + 24);
  sub_221EA4AB4(v175 + 1600, v316 + 64);
  sub_221EA4AB4(v175 + 1960, v316 + 104);
  *(v316 + 16) = v314;
  *(v175 + 2504) = &type metadata for RelationshipUpgradeService;
  *(v175 + 2512) = &off_28355BA70;
  v317 = swift_allocObject();
  *(v175 + 2480) = v317;
  sub_221EA4AB4(v175, v317 + 16);
  sub_221EA4AB4(v175 + 520, v317 + 56);
  sub_221EA4AB4(v175 + 560, v317 + 96);
  sub_221EA4AB4(v175 + 728, v317 + 136);
  sub_221EA4AB4(v175 + 2640, v317 + 192);
  sub_221EA4AB4(v175 + 1304, v317 + 232);
  sub_221EA4AB4(v175 + 2768, v317 + 272);
  sub_221EA4AB4(v175 + 1960, v317 + 312);
  sub_221EA4AB4(v175 + 2856, v317 + 352);
  *(v317 + 416) = &type metadata for IDSClient;
  *(v317 + 424) = &off_28355A500;
  v318 = v777;
  *(v317 + 392) = v778;
  *(v317 + 400) = v318;
  v319 = v314;
  v320 = ASCloudKitGroupManateeAddContainer();
  v321 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v321)
  {
    v321 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v317 + 432) = 256;
  *(v317 + 440) = v321;
  v322 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v322)
  {
    v322 = [objc_opt_self() standardUserDefaults];
  }

  v323 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  v324 = 604800.0;
  if (v323)
  {
    v324 = 86400.0;
  }

  *(v317 + 448) = 13;
  *(v317 + 456) = v324;
  *(v317 + 464) = v322;
  v325 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v325)
  {
    v325 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v317 + 472) = 14;
  *(v317 + 480) = v325;
  v326 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v326)
  {
    v326 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v317 + 488) = 15;
  *(v317 + 496) = v326;
  *(v317 + 176) = v320;
  *(v317 + 184) = v319;
  *(v175 + 2544) = &type metadata for RelationshipVisibilityService;
  *(v175 + 2552) = &off_2835580B0;
  v327 = swift_allocObject();
  *(v175 + 2520) = v327;
  sub_221EA4AB4(v175 + 728, v327 + 16);
  sub_221EA4AB4(v175 + 1432, v327 + 72);
  sub_221EA4AB4(v175 + 1600, v327 + 112);
  sub_221EA4AB4(v175 + 1960, v327 + 152);
  v328 = v319;
  *(v327 + 56) = ASCloudKitGroupUserActionExplicit();
  *(v327 + 64) = v328;
  *(v175 + 1944) = &type metadata for RelationshipParticipantService;
  *(v175 + 1952) = &off_28355A450;
  v329 = swift_allocObject();
  *(v175 + 1920) = v329;
  sub_221EA4AB4(v175 + 728, v329 + 16);
  sub_221EA4AB4(v175 + 2768, v329 + 56);
  sub_221EA4AB4(v175 + 280, v861);
  *(v175 + 1544) = &type metadata for RelationshipInviteAcceptService;
  *(v175 + 1552) = &off_283560088;
  v330 = swift_allocObject();
  *(v175 + 1520) = v330;
  sub_221EA4AB4(v175 + 728, (v330 + 8));
  sub_221EA4AB4(v175 + 2640, (v330 + 15));
  sub_221EA4AB4(v175 + 1304, (v330 + 20));
  sub_221EA4AB4(v175 + 1432, (v330 + 25));
  sub_221EA4AB4(v175 + 1600, (v330 + 30));
  sub_221EA4AB4(v175 + 1920, (v330 + 35));
  sub_221EA4AB4(v175 + 1960, (v330 + 40));
  sub_221EA4AB4(v175 + 2856, (v330 + 45));
  v331 = v328;
  v332 = ASCloudKitGroupManateeInvitation();
  sub_221EA4AB4(v861, (v330 + 2));
  v333 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v333 + 112) = 0;
  v330[7] = v333;
  v330[13] = v332;
  v330[14] = v331;
  *(v175 + 1664) = &type metadata for RelationshipInviteReceiveService;
  *(v175 + 1672) = &off_28355C560;
  v334 = swift_allocObject();
  *(v175 + 1640) = v334;
  sub_221EA4AB4(v175, v334 + 16);
  sub_221EA4AB4(v175 + 560, v334 + 56);
  sub_221EA4AB4(v175 + 280, v334 + 96);
  sub_221EA4AB4(v175 + 600, v334 + 136);
  sub_221EA4AB4(v175 + 648, v334 + 176);
  sub_221EA4AB4(v175 + 728, v334 + 216);
  sub_221EA4AB4(v175 + 2640, v334 + 272);
  sub_221EA4AB4(v175 + 1304, v334 + 312);
  sub_221EA4AB4(v175 + 1040, v334 + 352);
  sub_221EA4AB4(v175 + 1088, v334 + 392);
  sub_221EA4AB4(v175 + 1432, v334 + 432);
  sub_221EA4AB4(v175 + 1920, v334 + 472);
  sub_221EA4AB4(v175 + 1960, v334 + 512);
  sub_221EA4AB4(v175 + 2856, v334 + 552);
  v335 = v331;
  v336 = ASCloudKitGroupManateeInvitation();
  v337 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v337)
  {
    v337 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v334 + 592) = 7;
  *(v334 + 600) = MEMORY[0x277D84F90];
  *(v334 + 608) = v337;
  v338 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v338)
  {
    v338 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v334 + 616) = 267;
  *(v334 + 624) = v338;
  *(v334 + 256) = v336;
  *(v334 + 264) = v335;
  *(v175 + 1704) = &type metadata for RelationshipInviteRequestService;
  *(v175 + 1712) = &off_28355A070;
  v339 = swift_allocObject();
  *(v175 + 1680) = v339;
  sub_221EA4AB4(v175, v339 + 16);
  sub_221EA4AB4(v175 + 280, v339 + 56);
  sub_221EA4AB4(v175 + 648, v339 + 96);
  sub_221EA4AB4(v175 + 728, v339 + 136);
  sub_221EA4AB4(v175 + 2640, v339 + 192);
  sub_221EA4AB4(v175 + 1304, v339 + 232);
  sub_221EA4AB4(v175 + 1040, v339 + 272);
  sub_221EA4AB4(v175 + 1432, v339 + 312);
  sub_221EA4AB4(v175 + 1920, v339 + 352);
  sub_221EA4AB4(v175 + 1960, v339 + 392);
  sub_221EA4AB4(v175 + 2856, v339 + 432);
  v340 = v335;
  v341 = ASCloudKitGroupManateeInvitation();
  v342 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v342)
  {
    v342 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v339 + 472) = 7;
  *(v339 + 480) = MEMORY[0x277D84F90];
  *(v339 + 488) = v342;
  v343 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v343)
  {
    v343 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v339 + 496) = 267;
  *(v339 + 504) = v343;
  *(v339 + 176) = v341;
  *(v339 + 184) = v340;
  *(v175 + 1744) = &type metadata for RelationshipInviteResponseService;
  *(v175 + 1752) = &off_283557E00;
  v344 = swift_allocObject();
  *(v175 + 1720) = v344;
  sub_221EA4AB4(v175 + 280, v344 + 16);
  sub_221EA4AB4(v175 + 560, v344 + 56);
  sub_221EA4AB4(v175 + 600, v344 + 96);
  sub_221EA4AB4(v175 + 728, v344 + 136);
  sub_221EA4AB4(v175 + 2640, v344 + 192);
  sub_221EA4AB4(v175 + 1088, v344 + 232);
  sub_221EA4AB4(v175 + 1432, v344 + 272);
  sub_221EA4AB4(v175 + 1960, v344 + 312);
  sub_221EA4AB4(v175 + 2856, v344 + 352);
  v345 = v340;
  *(v344 + 176) = ASCloudKitGroupManateeInvitation();
  *(v344 + 184) = v345;
  *(v175 + 1784) = &type metadata for RelationshipInviteIgnoreService;
  *(v175 + 1792) = &off_28355B4F0;
  v346 = swift_allocObject();
  *(v175 + 1760) = v346;
  sub_221EA4AB4(v175 + 728, v346 + 16);
  sub_221EA4AB4(v175 + 1960, v346 + 72);
  v347 = v345;
  *(v346 + 56) = ASCloudKitGroupManateeInvitation();
  *(v346 + 64) = v347;
  *(v175 + 1824) = &type metadata for RelationshipInviteWithdrawService;
  *(v175 + 1832) = &off_28355C3A8;
  v348 = swift_allocObject();
  *(v175 + 1800) = v348;
  sub_221EA4AB4(v175 + 600, v348 + 16);
  sub_221EA4AB4(v175 + 728, v348 + 56);
  sub_221EA4AB4(v175 + 1304, v348 + 112);
  sub_221EA4AB4(v175 + 1088, v348 + 152);
  sub_221EA4AB4(v175 + 2040, v348 + 192);
  v349 = v347;
  *(v348 + 96) = ASCloudKitGroupManateeInvitation();
  *(v348 + 104) = v349;
  *(v175 + 1584) = &type metadata for RelationshipInviteFallbackService;
  *(v175 + 1592) = &off_28355D030;
  v350 = swift_allocObject();
  *(v175 + 1560) = v350;
  sub_221EA4AB4(v175 + 1432, v350 + 24);
  sub_221EA4AB4(v175 + 1800, v350 + 64);
  *(v350 + 16) = v349;
  *(v175 + 1192) = &type metadata for InvitationDispatcher;
  *(v175 + 1200) = &off_28355C8C0;
  v351 = swift_allocObject();
  *(v175 + 1168) = v351;
  sub_221EA4AB4(v175 + 400, v351 + 16);
  sub_221EA4AB4(v175 + 1432, v351 + 64);
  sub_221EA4AB4(v175 + 1520, v351 + 104);
  sub_221EA4AB4(v175 + 1560, v351 + 144);
  sub_221EA4AB4(v175 + 1640, v351 + 184);
  sub_221EA4AB4(v175 + 1680, v351 + 224);
  sub_221EA4AB4(v175 + 1720, v351 + 264);
  sub_221EA4AB4(v175 + 1760, v351 + 304);
  sub_221EA4AB4(v175 + 1800, v351 + 344);
  v352 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v353 = v349;
  v354 = [v352 initWithSuiteName_];
  if (!v354)
  {
    v354 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v351 + 384) = 6;
  *(v351 + 392) = v354;
  v355 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v355)
  {
    v355 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v351 + 400) = 4;
  *(v351 + 408) = v355;
  *(v351 + 56) = v353;
  sub_221EA4AB4(v175 + 1168, v175 + 2080);
  *(v175 + 2144) = &type metadata for InvitationListener;
  v777 = sub_221EC436C();
  *(v175 + 2152) = v777;
  v356 = swift_allocObject();
  *(v175 + 2120) = v356;
  sub_221F41394(v175 + 1208, v356 + 16);
  sub_221EA4AB4(v175 + 1472, v175 + 2160);
  sub_221EA4AB4(v175 + 1840, v175 + 2200);
  sub_221EA4AB4(v175 + 1880, v175 + 2240);
  sub_221EA4AB4(v175 + 2040, v175 + 2280);
  sub_221EA4AB4(v175 + 2000, v175 + 2320);
  sub_221EA4AB4(v175 + 2480, v175 + 2360);
  sub_221EA4AB4(v175 + 2520, v175 + 2400);
  sub_221EA4AB4(v175 + 1600, v861);
  sub_221EA4AB4(v175 + 1520, v858);
  sub_221EA4AB4(v175 + 2040, &v854);
  sub_221EA4AB4(v175 + 2440, v851);
  v357 = v862;
  v358 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v775 = &v757;
  v359 = *(v357[-1].Description + 8);
  MEMORY[0x28223BE20](v358);
  v778 = v353;
  v361 = (&v757 - ((v360 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v362 + 16))(v361);
  v363 = v859;
  v364 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v365 = *(*(v363 - 8) + 64);
  MEMORY[0x28223BE20](v364);
  v367 = &v757 - ((v366 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v368 + 16))(v367);
  v369 = v855;
  v370 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
  v371 = *(*(v369 - 8) + 64);
  MEMORY[0x28223BE20](v370);
  v373 = (&v757 - ((v372 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v374 + 16))(v373);
  v375 = v852;
  v376 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
  v377 = *(*(v375 - 8) + 64);
  MEMORY[0x28223BE20](v376);
  v379 = &v757 - ((v378 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v380 + 16))(v379);
  v381 = sub_221FA56D4(*v361, v367, v373, v379);
  __swift_destroy_boxed_opaque_existential_0(v851);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 1512) = v381;
  v382 = v381;
  v383 = v776;
  [v776 setSecureCloudDelegate_];

  *(v175 + 464) = &type metadata for AdminSystem;
  *(v175 + 472) = &off_2835590F0;
  v384 = swift_allocObject();
  *(v175 + 440) = v384;
  v385 = v777;
  *(v384 + 80) = &type metadata for InvitationListener;
  *(v384 + 88) = v385;
  v386 = swift_allocObject();
  *(v384 + 56) = v386;
  sub_221F41394(v175 + 1208, v386 + 16);
  sub_221EA4AB4(v175 + 1304, v384 + 16);
  v387 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v388 = [v387 initWithSuiteName_];
  if (!v388)
  {
    v388 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(v384 + 96) = 8;
  *(v384 + 104) = 0;
  *(v384 + 112) = 0;
  *(v384 + 120) = v388;
  sub_221EA4AB4(v175 + 648, v861);
  sub_221EA4AB4(v175 + 728, v858);
  sub_221EA4AB4(v175 + 1472, &v854);
  sub_221EA4AB4(v175, v851);
  sub_221EA4AB4(v175 + 2560, v849);
  sub_221EA4AB4(v175 + 2720, v847);
  sub_221EA4AB4(v175 + 2896, v844);
  v389 = [v784 defaultCenter];
  type metadata accessor for NotificationObserver();
  v390 = swift_allocObject();
  strcpy((v390 + 16), "AccountSystem");
  *(v390 + 30) = -4864;
  *(v390 + 32) = v389;
  v391 = v390;
  v777 = v390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBA8, &unk_221FBFEF0);
  v392 = swift_allocObject();
  *(v392 + 24) = 0;
  *(v392 + 16) = MEMORY[0x277D84F90];
  *(v391 + 40) = v392;
  v393 = v862;
  v394 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v789 = &v757;
  v395 = *(v393[-1].Description + 8);
  MEMORY[0x28223BE20](v394);
  v397 = (&v757 - ((v396 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v398 + 16))(v397);
  v399 = v859;
  v400 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v784 = &v757;
  v401 = *(*(v399 - 8) + 64);
  MEMORY[0x28223BE20](v400);
  v403 = (&v757 - ((v402 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v404 + 16))(v403);
  v405 = v855;
  v406 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
  v776 = &v757;
  v407 = *(*(v405 - 8) + 64);
  MEMORY[0x28223BE20](v406);
  v409 = &v757 - ((v408 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v410 + 16))(v409);
  v411 = v852;
  v412 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
  v775 = &v757;
  v413 = *(*(v411 - 8) + 64);
  MEMORY[0x28223BE20](v412);
  v415 = &v757 - ((v414 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v416 + 16))(v415);
  v417 = v850;
  v418 = __swift_mutable_project_boxed_opaque_existential_1(v849, v850);
  v774 = &v757;
  v419 = *(*(v417 - 8) + 64);
  MEMORY[0x28223BE20](v418);
  v421 = (&v757 - ((v420 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v422 + 16))(v421);
  v423 = v848;
  v424 = __swift_mutable_project_boxed_opaque_existential_1(v847, v848);
  v773 = &v757;
  v425 = *(*(v423 - 8) + 64);
  MEMORY[0x28223BE20](v424);
  v427 = (&v757 - ((v426 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v428 + 16))(v427);
  v429 = v845;
  v430 = __swift_mutable_project_boxed_opaque_existential_1(v844, v845);
  v772 = &v757;
  v431 = *(v429[-1].Description + 8);
  MEMORY[0x28223BE20](v430);
  v433 = (&v757 - ((v432 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v434 + 16))(v433);
  v435 = *v403;
  v436 = *v421;
  v437 = *v427;
  v842 = &type metadata for CloudDeviceStore;
  v843 = &off_28355CF30;
  v438 = swift_allocObject();
  v840 = v438;
  v439 = v397[3];
  v438[3] = v397[2];
  v438[4] = v439;
  v438[5] = v397[4];
  v440 = v397[1];
  v438[1] = *v397;
  v438[2] = v440;
  v839 = &off_28355F370;
  v838 = &type metadata for CloudKitCoordinator;
  v837[0] = v435;
  v835 = &type metadata for RelationshipDowngradeService;
  v836 = &off_2835582E8;
  v834[0] = swift_allocObject();
  memcpy((v834[0] + 16), v409, 0x1A0uLL);
  v832 = &type metadata for SecureCloudAccountService;
  v833 = &off_2835598E8;
  v441 = swift_allocObject();
  *&v831 = v441;
  v442 = *(v415 + 1);
  *(v441 + 16) = *v415;
  *(v441 + 32) = v442;
  *(v441 + 48) = *(v415 + 4);
  v830 = &off_283558620;
  v829 = &type metadata for SecureCloudAccountStore;
  v828[0] = v436;
  v827 = &off_283559208;
  v826 = &type metadata for SecureCloudFetchService;
  v825[0] = v437;
  v823 = &type metadata for SecureCloudSubscriptionService;
  v824 = &off_28355EE50;
  v443 = swift_allocObject();
  v822[0] = v443;
  v444 = v433[1];
  v443[1] = *v433;
  v443[2] = v444;
  v443[3] = v433[2];
  v771 = type metadata accessor for AccountSystem();
  v445 = swift_allocObject();
  v446 = __swift_mutable_project_boxed_opaque_existential_1(&v840, &type metadata for CloudDeviceStore);
  v770 = &v757;
  v447 = *(off_28355CFD0 + 8);
  MEMORY[0x28223BE20](v446);
  v449 = (&v757 - ((v448 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v450 + 16))(v449);
  v451 = __swift_mutable_project_boxed_opaque_existential_1(v837, &type metadata for CloudKitCoordinator);
  v769 = &v757;
  v452 = *(qword_28355F470 + 64);
  MEMORY[0x28223BE20](v451);
  v454 = (&v757 - ((v453 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v455 + 16))(v454);
  v456 = __swift_mutable_project_boxed_opaque_existential_1(v834, &type metadata for RelationshipDowngradeService);
  v768 = &v757;
  v457 = *(off_283558458 + 8);
  MEMORY[0x28223BE20](v456);
  v764 = (&v757 - ((v458 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v459 + 16))();
  v460 = __swift_mutable_project_boxed_opaque_existential_1(&v831, &type metadata for SecureCloudAccountService);
  v767 = &v757;
  v461 = *(off_2835599B0 + 8);
  MEMORY[0x28223BE20](v460);
  v463 = &v757 - ((v462 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v464 + 16))(v463);
  v465 = __swift_mutable_project_boxed_opaque_existential_1(v828, &type metadata for SecureCloudAccountStore);
  v766 = &v757;
  v466 = *(qword_283558778 + 64);
  MEMORY[0x28223BE20](v465);
  v468 = (&v757 - ((v467 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v469 + 16))(v468);
  v470 = __swift_mutable_project_boxed_opaque_existential_1(v825, &type metadata for SecureCloudFetchService);
  v765 = &v757;
  v471 = *(qword_283559280 + 64);
  MEMORY[0x28223BE20](v470);
  v473 = (&v757 - ((v472 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v474 + 16))(v473);
  v475 = v823;
  v476 = __swift_mutable_project_boxed_opaque_existential_1(v822, v823);
  v763 = &v757;
  v477 = *(v475[-1].Description + 8);
  MEMORY[0x28223BE20](v476);
  v479 = (&v757 - ((v478 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v480 + 16))(v479);
  v481 = *v454;
  v482 = *v468;
  v483 = *v473;
  v820 = &type metadata for CloudDeviceStore;
  v821 = &off_28355CF30;
  v484 = swift_allocObject();
  *&v819 = v484;
  v485 = v449[3];
  v484[3] = v449[2];
  v484[4] = v485;
  v484[5] = v449[4];
  v486 = v449[1];
  v484[1] = *v449;
  v484[2] = v486;
  v818 = &off_28355F370;
  v817 = &type metadata for CloudKitCoordinator;
  *&v816 = v481;
  v814 = &type metadata for RelationshipDowngradeService;
  v815 = &off_2835582E8;
  *&v813 = swift_allocObject();
  memcpy((v813 + 16), v764, 0x1A0uLL);
  v811 = &type metadata for SecureCloudAccountService;
  v812 = &off_2835598E8;
  v487 = swift_allocObject();
  *&v810 = v487;
  v488 = *(v463 + 1);
  *(v487 + 16) = *v463;
  *(v487 + 32) = v488;
  *(v487 + 48) = *(v463 + 4);
  v809 = &off_283558620;
  v808 = &type metadata for SecureCloudAccountStore;
  *&v807 = v482;
  v806 = &off_283559208;
  v805 = &type metadata for SecureCloudFetchService;
  *&v804 = v483;
  v802 = &type metadata for SecureCloudSubscriptionService;
  v803 = &off_28355EE50;
  v489 = swift_allocObject();
  *&v801 = v489;
  v490 = v479[1];
  v489[1] = *v479;
  v489[2] = v490;
  v489[3] = v479[2];
  swift_defaultActor_initialize();
  v491 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v491 + 112) = 0;
  v445[14] = v491;
  sub_221E977F0(&v819, (v445 + 15));
  sub_221E977F0(&v816, (v445 + 20));
  sub_221E977F0(&v813, (v445 + 26));
  sub_221E977F0(&v810, (v445 + 31));
  sub_221E977F0(&v807, (v445 + 36));
  sub_221E977F0(&v804, (v445 + 41));
  sub_221E977F0(&v801, (v445 + 46));
  v445[25] = v777;
  v445[51] = 0;
  __swift_destroy_boxed_opaque_existential_0(v822);
  __swift_destroy_boxed_opaque_existential_0(v825);
  __swift_destroy_boxed_opaque_existential_0(v828);
  __swift_destroy_boxed_opaque_existential_0(&v831);
  __swift_destroy_boxed_opaque_existential_0(v834);
  __swift_destroy_boxed_opaque_existential_0(v837);
  __swift_destroy_boxed_opaque_existential_0(&v840);
  __swift_destroy_boxed_opaque_existential_0(v844);
  __swift_destroy_boxed_opaque_existential_0(v847);
  __swift_destroy_boxed_opaque_existential_0(v849);
  __swift_destroy_boxed_opaque_existential_0(v851);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 64) = v771;
  *(v175 + 72) = &off_283559360;
  *(v175 + 40) = v445;
  sub_221EA4AB4(v175 + 912, v861);
  sub_221EA4AB4(v175 + 2816, v858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECBB0, &unk_221FBFEF8);
  v492 = swift_allocObject();
  *(v492 + 16) = xmmword_221FBFAE0;
  *(v492 + 56) = &type metadata for AchievementUpdateProvider;
  *(v492 + 64) = &off_283559FC0;
  v493 = swift_allocObject();
  *(v492 + 32) = v493;
  v494 = v788;
  sub_221FA6AC8((v788 + 5), v493 + 16);
  *(v492 + 96) = &type metadata for CompetitionUpdateProvider;
  *(v492 + 104) = &off_283559F18;
  v495 = swift_allocObject();
  *(v492 + 72) = v495;
  sub_221FA6B24(v175 + 864, v495 + 16);
  v496 = *(v175 + 3120);
  v497 = *(v175 + 3128);
  v498 = __swift_project_boxed_opaque_existential_0Tm((v175 + 3096), v496);
  *(v492 + 136) = v496;
  *(v492 + 144) = *(v497 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v492 + 112));
  (*(*(v496 - 8) + 16))(boxed_opaque_existential_1, v498, v496);
  *(v492 + 176) = &type metadata for WorkoutUpdateProvider;
  *(v492 + 184) = &off_28355CE50;
  v500 = swift_allocObject();
  *(v492 + 152) = v500;
  sub_221FA6B80((v494 + 388), v500 + 16);
  v501 = *(v175 + 3368);
  v502 = *(v175 + 3376);
  v503 = __swift_project_boxed_opaque_existential_0Tm((v175 + 3344), v501);
  *(v492 + 216) = v501;
  *(v492 + 224) = *(v502 + 8);
  v504 = __swift_allocate_boxed_opaque_existential_1((v492 + 192));
  (*(*(v501 - 8) + 16))(v504, v503, v501);
  LOBYTE(v503) = byte_27CFEC8A0;
  *(v175 + 3000) = &type metadata for SecureCloudUpdateCoalescer;
  *(v175 + 3008) = &off_283559708;
  v505 = swift_allocObject();
  *(v175 + 2976) = v505;
  v506 = v778;
  *(v505 + 16) = v778;
  sub_221EA4AB4(v861, v505 + 24);
  *(v505 + 64) = v503;
  sub_221EA4AB4(v858, v505 + 72);
  *(v505 + 112) = v492;
  v507 = swift_allocObject();
  v787 = v506;
  swift_defaultActor_initialize();
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v507 + 112) = 0;
  *(v505 + 120) = v507;
  sub_221EA4AB4(v175, v861);
  sub_221EA4AB4(v175 + 560, v858);
  sub_221EA4AB4(v175 + 728, &v854);
  sub_221EA4AB4((v494 + 105), v851);
  sub_221EA4AB4(v175 + 1600, v849);
  sub_221EA4AB4(v175 + 2976, v847);
  v508 = v862;
  v509 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v789 = &v757;
  v510 = *(v508[-1].Description + 8);
  MEMORY[0x28223BE20](v509);
  v512 = &v757 - ((v511 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v513 + 16))(v512);
  v514 = v859;
  v515 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v788 = &v757;
  v516 = *(*(v514 - 8) + 64);
  MEMORY[0x28223BE20](v515);
  v518 = &v757 - ((v517 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v519 + 16))(v518);
  v520 = v855;
  v521 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
  v784 = &v757;
  v522 = *(*(v520 - 8) + 64);
  MEMORY[0x28223BE20](v521);
  v524 = (&v757 - ((v523 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v525 + 16))(v524);
  v526 = v852;
  v527 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
  v778 = &v757;
  v528 = *(*(v526 - 8) + 64);
  MEMORY[0x28223BE20](v527);
  v530 = (&v757 - ((v529 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v531 + 16))(v530);
  v532 = v850;
  v533 = __swift_mutable_project_boxed_opaque_existential_1(v849, v850);
  v777 = &v757;
  v534 = *(*(v532 - 8) + 64);
  MEMORY[0x28223BE20](v533);
  v536 = (&v757 - ((v535 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v537 + 16))(v536);
  v538 = v848;
  v539 = __swift_mutable_project_boxed_opaque_existential_1(v847, v848);
  v776 = &v757;
  v540 = *(*(v538 - 8) + 64);
  MEMORY[0x28223BE20](v539);
  v542 = (&v757 - ((v541 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v543 + 16))(v542);
  v544 = *v518;
  LOBYTE(v518) = v518[8];
  v545 = *v524;
  v546 = *v530;
  v547 = *v536;
  v845 = &type metadata for SecureCloudAccountService;
  v846 = &off_2835598E8;
  v548 = swift_allocObject();
  v844[0] = v548;
  v549 = *(v512 + 1);
  *(v548 + 16) = *v512;
  *(v548 + 32) = v549;
  *(v548 + 48) = *(v512 + 4);
  v842 = &type metadata for AppInstallationCoordinator;
  v843 = &off_28355AE40;
  v840 = v544;
  v841 = v518;
  v839 = &off_28355F370;
  v838 = &type metadata for CloudKitCoordinator;
  v837[0] = v545;
  v836 = &off_28355CAD8;
  v835 = &type metadata for FriendListCoordinator;
  v834[0] = v546;
  v832 = &type metadata for InvitationListener;
  v833 = v790;
  *&v831 = swift_allocObject();
  sub_221F41394(v175 + 1208, v831 + 16);
  v830 = &off_28355BE88;
  v829 = &type metadata for RelationshipFinalizationCoordinator;
  v828[0] = v547;
  v826 = &type metadata for SecureCloudUpdateCoalescer;
  v827 = &off_283559708;
  v550 = swift_allocObject();
  v825[0] = v550;
  v551 = v542[5];
  v550[5] = v542[4];
  v550[6] = v551;
  v550[7] = v542[6];
  v552 = v542[1];
  v550[1] = *v542;
  v550[2] = v552;
  v553 = v542[3];
  v550[3] = v542[2];
  v550[4] = v553;
  v773 = type metadata accessor for InvitationStateObserver();
  v554 = objc_allocWithZone(v773);
  v555 = v845;
  v556 = __swift_mutable_project_boxed_opaque_existential_1(v844, v845);
  v775 = &v757;
  v557 = *(v555[-1].Description + 8);
  MEMORY[0x28223BE20](v556);
  v768 = (&v757 - ((v558 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v559 + 16))();
  v560 = v842;
  v561 = __swift_mutable_project_boxed_opaque_existential_1(&v840, v842);
  v774 = &v757;
  v562 = *(v560[-1].Description + 8);
  MEMORY[0x28223BE20](v561);
  v564 = &v757 - ((v563 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v565 + 16))(v564);
  v566 = v838;
  v567 = __swift_mutable_project_boxed_opaque_existential_1(v837, v838);
  v772 = &v757;
  v568 = *(v566[-1].Description + 8);
  MEMORY[0x28223BE20](v567);
  v570 = (&v757 - ((v569 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v571 + 16))(v570);
  v572 = v835;
  v573 = __swift_mutable_project_boxed_opaque_existential_1(v834, v835);
  v771 = &v757;
  v574 = *(v572[-1].Description + 8);
  MEMORY[0x28223BE20](v573);
  v576 = (&v757 - ((v575 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v577 + 16))(v576);
  v578 = v832;
  v579 = __swift_mutable_project_boxed_opaque_existential_1(&v831, v832);
  v770 = &v757;
  v580 = *(v578[-1].Description + 8);
  MEMORY[0x28223BE20](v579);
  v582 = (&v757 - ((v581 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v583 + 16))(v582);
  v584 = v829;
  v585 = __swift_mutable_project_boxed_opaque_existential_1(v828, v829);
  v769 = &v757;
  v586 = *(v584[-1].Description + 8);
  MEMORY[0x28223BE20](v585);
  v588 = (&v757 - ((v587 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v589 + 16))(v588);
  v590 = v826;
  v591 = __swift_mutable_project_boxed_opaque_existential_1(v825, v826);
  v767 = &v757;
  v592 = *(v590[-1].Description + 8);
  MEMORY[0x28223BE20](v591);
  v594 = (&v757 - ((v593 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v595 + 16))(v594);
  v596 = *v564;
  LOBYTE(v564) = v564[8];
  v597 = *v570;
  v598 = *v576;
  v599 = *v588;
  v823 = &type metadata for SecureCloudAccountService;
  v824 = &off_2835598E8;
  v600 = swift_allocObject();
  v822[0] = v600;
  v601 = v768;
  v602 = *(v768 + 1);
  *(v600 + 16) = *v768;
  *(v600 + 32) = v602;
  *(v600 + 48) = v601[4];
  v820 = &type metadata for AppInstallationCoordinator;
  v821 = &off_28355AE40;
  *&v819 = v596;
  BYTE8(v819) = v564;
  v818 = &off_28355F370;
  v817 = &type metadata for CloudKitCoordinator;
  *&v816 = v597;
  v815 = &off_28355CAD8;
  v814 = &type metadata for FriendListCoordinator;
  *&v813 = v598;
  v811 = &type metadata for InvitationListener;
  v812 = v790;
  v603 = swift_allocObject();
  *&v810 = v603;
  v604 = v582[3];
  v603[3] = v582[2];
  v603[4] = v604;
  v605 = v582[5];
  v603[5] = v582[4];
  v603[6] = v605;
  v606 = v582[1];
  v603[1] = *v582;
  v603[2] = v606;
  v809 = &off_28355BE88;
  v808 = &type metadata for RelationshipFinalizationCoordinator;
  *&v807 = v599;
  v805 = &type metadata for SecureCloudUpdateCoalescer;
  v806 = &off_283559708;
  v607 = swift_allocObject();
  *&v804 = v607;
  v608 = v594[5];
  v607[5] = v594[4];
  v607[6] = v608;
  v607[7] = v594[6];
  v609 = v594[1];
  v607[1] = *v594;
  v607[2] = v609;
  v610 = v594[3];
  v607[3] = v594[2];
  v607[4] = v610;
  sub_221EA4AB4(v822, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_accountService]);
  sub_221EA4AB4(&v819, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_appInstallationCoordinator]);
  sub_221EA4AB4(&v816, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_cloudKitCoordinator]);
  *&v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_contactsManager] = v787;
  sub_221EA4AB4(&v813, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_friendListCoordinator]);
  sub_221EA4AB4(&v810, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_invitationListener]);
  sub_221EA4AB4(&v807, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_relationshipFinalizationCoordinator]);
  sub_221EA4AB4(&v804, &v554[OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_secureCloudCoalescer]);
  v800.receiver = v554;
  v800.super_class = v773;
  v611 = objc_msgSendSuper2(&v800, sel_init);
  __swift_destroy_boxed_opaque_existential_0(&v804);
  __swift_destroy_boxed_opaque_existential_0(&v807);
  __swift_destroy_boxed_opaque_existential_0(&v810);
  __swift_destroy_boxed_opaque_existential_0(&v813);
  __swift_destroy_boxed_opaque_existential_0(&v816);
  __swift_destroy_boxed_opaque_existential_0(&v819);
  __swift_destroy_boxed_opaque_existential_0(v822);
  __swift_destroy_boxed_opaque_existential_0(v825);
  __swift_destroy_boxed_opaque_existential_0(v828);
  __swift_destroy_boxed_opaque_existential_0(&v831);
  __swift_destroy_boxed_opaque_existential_0(v834);
  __swift_destroy_boxed_opaque_existential_0(v837);
  __swift_destroy_boxed_opaque_existential_0(&v840);
  __swift_destroy_boxed_opaque_existential_0(v844);
  __swift_destroy_boxed_opaque_existential_0(v847);
  __swift_destroy_boxed_opaque_existential_0(v849);
  __swift_destroy_boxed_opaque_existential_0(v851);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 1344) = v611;
  sub_221EA4AB4(v175 + 520, v861);
  sub_221EA4AB4(v175 + 1128, v858);
  sub_221EA4AB4(v175 + 2680, &v854);
  sub_221EA4AB4(v175 + 1472, v851);
  sub_221EA4AB4(v175 + 1840, v849);
  sub_221EA4AB4(v175 + 2000, v847);
  sub_221EA4AB4(v175 + 2440, v844);
  sub_221EA4AB4(v175 + 2480, &v840);
  sub_221EA4AB4(v175 + 2976, v837);
  v612 = v862;
  v613 = __swift_mutable_project_boxed_opaque_existential_1(v861, v862);
  v789 = &v757;
  v614 = *(v612[-1].Description + 8);
  MEMORY[0x28223BE20](v613);
  v616 = (&v757 - ((v615 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v617 + 16))(v616);
  v618 = v859;
  v619 = __swift_mutable_project_boxed_opaque_existential_1(v858, v859);
  v788 = &v757;
  v620 = *(*(v618 - 8) + 64);
  MEMORY[0x28223BE20](v619);
  v773 = (&v757 - ((v621 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v622 + 16))();
  v623 = v855;
  v624 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
  v787 = &v757;
  v625 = *(*(v623 - 8) + 64);
  MEMORY[0x28223BE20](v624);
  v627 = &v757 - ((v626 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v628 + 16))(v627);
  v629 = v852;
  v630 = __swift_mutable_project_boxed_opaque_existential_1(v851, v852);
  v784 = &v757;
  v631 = *(*(v629 - 8) + 64);
  MEMORY[0x28223BE20](v630);
  v772 = (&v757 - ((v632 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v633 + 16))();
  v634 = v850;
  v635 = __swift_mutable_project_boxed_opaque_existential_1(v849, v850);
  v778 = &v757;
  v636 = *(*(v634 - 8) + 64);
  MEMORY[0x28223BE20](v635);
  v638 = &v757 - ((v637 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v639 + 16))(v638);
  v640 = v848;
  v641 = __swift_mutable_project_boxed_opaque_existential_1(v847, v848);
  v777 = &v757;
  v642 = *(*(v640 - 8) + 64);
  MEMORY[0x28223BE20](v641);
  v644 = &v757 - ((v643 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v645 + 16))(v644);
  v646 = v845;
  v647 = __swift_mutable_project_boxed_opaque_existential_1(v844, v845);
  v776 = &v757;
  v648 = *(v646[-1].Description + 8);
  MEMORY[0x28223BE20](v647);
  v650 = &v757 - ((v649 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v651 + 16))(v650);
  v652 = v842;
  v653 = __swift_mutable_project_boxed_opaque_existential_1(&v840, v842);
  v775 = &v757;
  v654 = *(v652[-1].Description + 8);
  MEMORY[0x28223BE20](v653);
  v656 = &v757 - ((v655 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v657 + 16))(v656);
  v658 = v838;
  v659 = __swift_mutable_project_boxed_opaque_existential_1(v837, v838);
  v774 = &v757;
  v660 = *(v658[-1].Description + 8);
  MEMORY[0x28223BE20](v659);
  v662 = (&v757 - ((v661 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v663 + 16))(v662);
  v835 = &type metadata for AnalyticsService;
  v836 = &off_283558B50;
  v664 = swift_allocObject();
  v834[0] = v664;
  v665 = v616[7];
  v664[7] = v616[6];
  v664[8] = v665;
  v664[9] = v616[8];
  v666 = v616[3];
  v664[3] = v616[2];
  v664[4] = v666;
  v667 = v616[5];
  v664[5] = v616[4];
  v664[6] = v667;
  v668 = v616[1];
  v664[1] = *v616;
  v664[2] = v668;
  v832 = &type metadata for IDSFirewallService;
  v833 = &off_28355C480;
  v831 = *v773;
  v829 = &type metadata for InvitationListener;
  v830 = v790;
  v828[0] = swift_allocObject();
  sub_221F41394(v175 + 1208, v828[0] + 16);
  v826 = &type metadata for SecureCloudErrorDispatcher;
  v827 = &off_28355BD38;
  v669 = swift_allocObject();
  v825[0] = v669;
  v670 = *(v627 + 1);
  *(v669 + 16) = *v627;
  *(v669 + 32) = v670;
  *(v669 + 48) = *(v627 + 4);
  v823 = &type metadata for RelationshipDowngradeService;
  v824 = &off_2835582E8;
  v822[0] = swift_allocObject();
  memcpy((v822[0] + 16), v772, 0x1A0uLL);
  v820 = &type metadata for RelationshipMigrationService;
  v821 = &off_283559C00;
  *&v819 = swift_allocObject();
  memcpy((v819 + 16), v638, 0x278uLL);
  v817 = &type metadata for RelationshipRepairService;
  v818 = &off_283559DD8;
  *&v816 = swift_allocObject();
  memcpy((v816 + 16), v644, 0x168uLL);
  v814 = &type metadata for RelationshipUpdateService;
  v815 = &off_283558FF0;
  v671 = swift_allocObject();
  *&v813 = v671;
  v672 = *(v650 + 3);
  *(v671 + 48) = *(v650 + 2);
  *(v671 + 64) = v672;
  *(v671 + 80) = *(v650 + 4);
  *(v671 + 96) = *(v650 + 10);
  v673 = *(v650 + 1);
  *(v671 + 16) = *v650;
  *(v671 + 32) = v673;
  v811 = &type metadata for RelationshipUpgradeService;
  v812 = &off_28355BA70;
  *&v810 = swift_allocObject();
  memcpy((v810 + 16), v656, 0x1E8uLL);
  v808 = &type metadata for SecureCloudUpdateCoalescer;
  v809 = &off_283559708;
  v674 = swift_allocObject();
  *&v807 = v674;
  v675 = v662[5];
  v674[5] = v662[4];
  v674[6] = v675;
  v674[7] = v662[6];
  v676 = v662[1];
  v674[1] = *v662;
  v674[2] = v676;
  v677 = v662[3];
  v674[3] = v662[2];
  v674[4] = v677;
  v770 = type metadata accessor for SecureCloudPeriodicUpdaterDelegate();
  v678 = objc_allocWithZone(v770);
  v679 = v835;
  v680 = __swift_mutable_project_boxed_opaque_existential_1(v834, v835);
  v773 = &v757;
  v681 = *(v679[-1].Description + 8);
  MEMORY[0x28223BE20](v680);
  v683 = (&v757 - ((v682 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v684 + 16))(v683);
  v685 = v832;
  v686 = __swift_mutable_project_boxed_opaque_existential_1(&v831, v832);
  v772 = &v757;
  v687 = *(v685[-1].Description + 8);
  MEMORY[0x28223BE20](v686);
  v762 = (&v757 - ((v688 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v689 + 16))();
  v690 = v829;
  v691 = __swift_mutable_project_boxed_opaque_existential_1(v828, v829);
  v771 = &v757;
  v692 = *(v690[-1].Description + 8);
  MEMORY[0x28223BE20](v691);
  v694 = (&v757 - ((v693 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v695 + 16))(v694);
  v696 = v826;
  v697 = __swift_mutable_project_boxed_opaque_existential_1(v825, v826);
  v769 = &v757;
  v698 = *(v696[-1].Description + 8);
  MEMORY[0x28223BE20](v697);
  v700 = &v757 - ((v699 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v701 + 16))(v700);
  v702 = v823;
  v703 = __swift_mutable_project_boxed_opaque_existential_1(v822, v823);
  v768 = &v757;
  v704 = *(v702[-1].Description + 8);
  MEMORY[0x28223BE20](v703);
  v761 = (&v757 - ((v705 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v706 + 16))();
  v707 = v820;
  v708 = __swift_mutable_project_boxed_opaque_existential_1(&v819, v820);
  v767 = &v757;
  v709 = *(v707[-1].Description + 8);
  MEMORY[0x28223BE20](v708);
  v760 = (&v757 - ((v710 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v711 + 16))();
  v712 = v817;
  v713 = __swift_mutable_project_boxed_opaque_existential_1(&v816, v817);
  v766 = &v757;
  v714 = *(v712[-1].Description + 8);
  MEMORY[0x28223BE20](v713);
  v759 = (&v757 - ((v715 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v716 + 16))();
  v717 = v814;
  v718 = __swift_mutable_project_boxed_opaque_existential_1(&v813, v814);
  v765 = &v757;
  v719 = *(v717[-1].Description + 8);
  MEMORY[0x28223BE20](v718);
  v721 = &v757 - ((v720 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v722 + 16))(v721);
  v723 = v811;
  v724 = __swift_mutable_project_boxed_opaque_existential_1(&v810, v811);
  v764 = &v757;
  v725 = *(v723[-1].Description + 8);
  MEMORY[0x28223BE20](v724);
  v727 = &v757 - ((v726 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v728 + 16))(v727);
  v729 = v808;
  v730 = __swift_mutable_project_boxed_opaque_existential_1(&v807, v808);
  v763 = &v757;
  v731 = *(v729[-1].Description + 8);
  MEMORY[0x28223BE20](v730);
  v733 = (&v757 - ((v732 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v734 + 16))(v733);
  v805 = &type metadata for AnalyticsService;
  v806 = &off_283558B50;
  v735 = swift_allocObject();
  *&v804 = v735;
  v736 = v683[7];
  v735[7] = v683[6];
  v735[8] = v736;
  v735[9] = v683[8];
  v737 = v683[3];
  v735[3] = v683[2];
  v735[4] = v737;
  v738 = v683[5];
  v735[5] = v683[4];
  v735[6] = v738;
  v739 = v683[1];
  v735[1] = *v683;
  v735[2] = v739;
  v802 = &type metadata for IDSFirewallService;
  v803 = &off_28355C480;
  v801 = *v762;
  v799[3] = &type metadata for InvitationListener;
  v799[4] = v790;
  v740 = swift_allocObject();
  v799[0] = v740;
  v741 = v694[3];
  v740[3] = v694[2];
  v740[4] = v741;
  v742 = v694[5];
  v740[5] = v694[4];
  v740[6] = v742;
  v743 = v694[1];
  v740[1] = *v694;
  v740[2] = v743;
  v798[3] = &type metadata for SecureCloudErrorDispatcher;
  v798[4] = &off_28355BD38;
  v744 = swift_allocObject();
  v798[0] = v744;
  v745 = *(v700 + 1);
  *(v744 + 16) = *v700;
  *(v744 + 32) = v745;
  *(v744 + 48) = *(v700 + 4);
  v797[3] = &type metadata for RelationshipDowngradeService;
  v797[4] = &off_2835582E8;
  v797[0] = swift_allocObject();
  memcpy((v797[0] + 16), v761, 0x1A0uLL);
  v796[3] = &type metadata for RelationshipMigrationService;
  v796[4] = &off_283559C00;
  v796[0] = swift_allocObject();
  memcpy((v796[0] + 16), v760, 0x278uLL);
  v795[3] = &type metadata for RelationshipRepairService;
  v795[4] = &off_283559DD8;
  v795[0] = swift_allocObject();
  memcpy((v795[0] + 16), v759, 0x168uLL);
  v794[3] = &type metadata for RelationshipUpdateService;
  v794[4] = &off_283558FF0;
  v746 = swift_allocObject();
  v794[0] = v746;
  v747 = *(v721 + 3);
  *(v746 + 48) = *(v721 + 2);
  *(v746 + 64) = v747;
  *(v746 + 80) = *(v721 + 4);
  *(v746 + 96) = *(v721 + 10);
  v748 = *(v721 + 1);
  *(v746 + 16) = *v721;
  *(v746 + 32) = v748;
  v793[3] = &type metadata for RelationshipUpgradeService;
  v793[4] = &off_28355BA70;
  v793[0] = swift_allocObject();
  memcpy((v793[0] + 16), v727, 0x1E8uLL);
  v792[3] = &type metadata for SecureCloudUpdateCoalescer;
  v792[4] = &off_283559708;
  v749 = swift_allocObject();
  v792[0] = v749;
  v750 = v733[5];
  v749[5] = v733[4];
  v749[6] = v750;
  v749[7] = v733[6];
  v751 = v733[1];
  v749[1] = *v733;
  v749[2] = v751;
  v752 = v733[3];
  v749[3] = v733[2];
  v749[4] = v752;
  sub_221EA4AB4(&v804, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_analyticsService);
  sub_221EA4AB4(v799, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_invitationListener);
  sub_221EA4AB4(&v801, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_idsFirewallService);
  sub_221EA4AB4(v798, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudErrorDispatcher);
  sub_221EA4AB4(v797, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipDowngradeService);
  sub_221EA4AB4(v796, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipMigrationService);
  sub_221EA4AB4(v795, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipRepairService);
  sub_221EA4AB4(v794, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpdateService);
  sub_221EA4AB4(v793, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_relationshipUpgradeService);
  sub_221EA4AB4(v792, v678 + OBJC_IVAR____TtC23ActivitySharingServices34SecureCloudPeriodicUpdaterDelegate_secureCloudUpdateCoalescer);
  v791.receiver = v678;
  v791.super_class = v770;
  v753 = objc_msgSendSuper2(&v791, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v792);
  __swift_destroy_boxed_opaque_existential_0(v793);
  __swift_destroy_boxed_opaque_existential_0(v794);
  __swift_destroy_boxed_opaque_existential_0(v795);
  __swift_destroy_boxed_opaque_existential_0(v796);
  __swift_destroy_boxed_opaque_existential_0(v797);
  __swift_destroy_boxed_opaque_existential_0(v798);
  __swift_destroy_boxed_opaque_existential_0(v799);
  __swift_destroy_boxed_opaque_existential_0(&v801);
  __swift_destroy_boxed_opaque_existential_0(&v804);
  __swift_destroy_boxed_opaque_existential_0(&v807);
  __swift_destroy_boxed_opaque_existential_0(&v810);
  __swift_destroy_boxed_opaque_existential_0(&v813);
  __swift_destroy_boxed_opaque_existential_0(&v816);
  __swift_destroy_boxed_opaque_existential_0(&v819);
  __swift_destroy_boxed_opaque_existential_0(v822);
  __swift_destroy_boxed_opaque_existential_0(v825);
  __swift_destroy_boxed_opaque_existential_0(v828);
  __swift_destroy_boxed_opaque_existential_0(&v831);
  __swift_destroy_boxed_opaque_existential_0(v834);
  __swift_destroy_boxed_opaque_existential_0(v837);
  __swift_destroy_boxed_opaque_existential_0(&v840);
  __swift_destroy_boxed_opaque_existential_0(v844);
  __swift_destroy_boxed_opaque_existential_0(v847);
  __swift_destroy_boxed_opaque_existential_0(v849);
  __swift_destroy_boxed_opaque_existential_0(v851);
  __swift_destroy_boxed_opaque_existential_0(&v854);
  __swift_destroy_boxed_opaque_existential_0(v858);
  __swift_destroy_boxed_opaque_existential_0(v861);
  *(v175 + 2808) = v753;
  v754 = v782;
  [v782 setSecureCloudDelegate_];
  sub_221EA4AB4(v175 + 2720, v861);
  sub_221EA4AB4(v175 + 2976, v858);
  *(v175 + 2960) = &type metadata for SecureCloudSystem;
  *(v175 + 2968) = &off_28355ED88;
  v755 = swift_allocObject();
  *(v175 + 2936) = v755;
  sub_221F8E3F0(v861, v858, v755 + 16);

  return sub_221F3EFC8(v783);
}

uint64_t sub_221FA1EE4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[3] = __swift_project_value_buffer(v1, qword_281307DF0);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Secure Cloud - Enabled", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[2];

  [*(*__swift_project_boxed_opaque_existential_0Tm(v5 + 114 v5[117]) + OBJC:sel_addProtectedDataObserver_ IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)];
  v6 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 15, v5[18]);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_221FA2080;

  return sub_221FA36DC();
}

uint64_t sub_221FA2080()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA217C, 0, 0);
}

uint64_t sub_221FA217C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 480), *(*(v0 + 16) + 504));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_221FA2230;

  return sub_221FA3A2C();
}

uint64_t sub_221FA2230()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA232C, 0, 0);
}

uint64_t sub_221FA232C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1000), *(*(v0 + 16) + 1024));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_221FA23E0;

  return sub_221FA3D7C();
}

uint64_t sub_221FA23E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v6;
  v4[1] = sub_221FA2520;

  return sub_221F93710();
}

uint64_t sub_221FA2520()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA261C, 0, 0);
}

uint64_t sub_221FA261C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 3144), *(*(v0 + 16) + 3168));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_221FA26D0;

  return sub_221FA40CC();
}

uint64_t sub_221FA26D0()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA27CC, 0, 0);
}

uint64_t sub_221FA27CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 3184), *(*(v0 + 16) + 3208));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_221FA2880;

  return sub_221FA441C();
}

uint64_t sub_221FA2880()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA297C, 0, 0);
}

uint64_t sub_221FA297C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1040), *(*(v0 + 16) + 1064));
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_221FA2A1C;

  return sub_221F264BC();
}

uint64_t sub_221FA2A1C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA2B18, 0, 0);
}

uint64_t sub_221FA2B18()
{
  v1 = *(v0 + 16);
  [*__swift_project_boxed_opaque_existential_0Tm((v1[80] + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudKitCoordinator) *(v1[80] + OBJC:sel_addObserver_ IVAR:v1[80] :? :? :? TtC23ActivitySharingServices19CloudDeviceObserver:?cloudKitCoordinator + 24))];
  [*__swift_project_boxed_opaque_existential_0Tm((v1[135] + OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator) *(v1[135] + OBJC:sel_addObserver_ IVAR:v1[135] :? :? :? TtC23ActivitySharingServices17MigrationObserver:?cloudKitCoordinator + 24))];
  v2 = *__swift_project_boxed_opaque_existential_0Tm(v1 + 382, v1[385]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_221FA2C1C;

  return sub_221F963EC();
}

uint64_t sub_221FA2C1C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_221FA2DD0;
  }

  else
  {
    v3 = sub_221FA2D30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FA2D30()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_221FA2EF4;

  return sub_221EEC16C();
}

uint64_t sub_221FA2DD0()
{
  v1 = v0[3];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to activate server push listener", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v7 = *__swift_project_boxed_opaque_existential_0Tm((v0[2] + 40), *(v0[2] + 64));
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_221FA2EF4;

  return sub_221EEC16C();
}

uint64_t sub_221FA2EF4()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_221FA30A8;
  }

  else
  {
    v3 = sub_221FA3008;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FA3008()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 440), *(*(v0 + 16) + 464));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_221FA31CC;

  return sub_221EE0E50();
}

uint64_t sub_221FA30A8()
{
  v1 = v0[3];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65A8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Failed to activate account system", v6, 2u);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0Tm((v0[2] + 440), *(v0[2] + 464));
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_221FA31CC;

  return sub_221EE0E50();
}

uint64_t sub_221FA31CC()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA32C8, 0, 0);
}

uint64_t sub_221FA32C8()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1392), *(*(v0 + 16) + 1416));
  v2 = *v1;
  *(v0 + 128) = *v1;

  return MEMORY[0x2822009F8](sub_221FA333C, v2, 0);
}

uint64_t sub_221FA333C()
{
  v1 = *(v0 + 128);
  sub_221F6E988();

  return MEMORY[0x2822009F8](sub_221FA33A4, 0, 0);
}

uint64_t sub_221FA33A4()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 1352), *(*(v0 + 16) + 1376));
  v2 = *v1;
  *(v0 + 136) = *v1;

  return MEMORY[0x2822009F8](sub_221FA3418, v2, 0);
}

uint64_t sub_221FA3418()
{
  v1 = *(v0 + 136);
  sub_221F6E988();

  return MEMORY[0x2822009F8](sub_221FA3480, 0, 0);
}

uint64_t sub_221FA3480()
{
  v1 = *(v0 + 16);
  v2 = *__swift_project_boxed_opaque_existential_0Tm(v1 + 163, v1[166]);
  sub_221F40BE8();
  v3 = v1[168];
  [*__swift_project_boxed_opaque_existential_0Tm((v3 + OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_cloudKitCoordinator) *(v3 + OBJC:sel_addObserver_ IVAR:v3 :? :? :? TtC23ActivitySharingServices23InvitationStateObserver:?cloudKitCoordinator + 24))];
  [*__swift_project_boxed_opaque_existential_0Tm((v3 + OBJC_IVAR____TtC23ActivitySharingServices23InvitationStateObserver_friendListCoordinator) *(v3 + OBJC:sel_addObserver_ IVAR:v3 :? :? :? TtC23ActivitySharingServices23InvitationStateObserver:?friendListCoordinator + 24))];
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_221FA3574;

  return sub_221EA9850();
}

uint64_t sub_221FA3574()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA3670, 0, 0);
}

uint64_t sub_221FA3670()
{
  [*(*(v0 + 16) + 952) secureCloudReady];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221FA36FC()
{
  v20 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v19);
      _os_log_impl(&dword_221E93000, v7, v8, "Waiting for protected data for anchor store: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v11 = v0[7];
    v12 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v12);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v14 = *(v11 + 160);
    v15 = *(v11 + 168);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = *(*v13 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = sub_221FA6718;
    v18[5] = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_221FA6BE0((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221F085C8;
  v5 = v0[7];

  return sub_221ED3670();
}

uint64_t sub_221FA3A4C()
{
  v20 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v19);
      _os_log_impl(&dword_221E93000, v7, v8, "Waiting for protected data for anchor store: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v11 = v0[7];
    v12 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v12);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v14 = *(v11 + 160);
    v15 = *(v11 + 168);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = *(*v13 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = sub_221FA6610;
    v18[5] = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_221FA6BE0((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;
  v5 = v0[7];

  return sub_221ED3308();
}

uint64_t sub_221FA3D9C()
{
  v20 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v19);
      _os_log_impl(&dword_221E93000, v7, v8, "Waiting for protected data for anchor store: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v11 = v0[7];
    v12 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v12);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v14 = *(v11 + 160);
    v15 = *(v11 + 168);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = *(*v13 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = sub_221FA6508;
    v18[5] = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_221FA6BE0((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;
  v5 = v0[7];

  return sub_221ED2FB0();
}

uint64_t sub_221FA40EC()
{
  v20 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v19);
      _os_log_impl(&dword_221E93000, v7, v8, "Waiting for protected data for anchor store: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v11 = v0[7];
    v12 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v12);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v14 = *(v11 + 160);
    v15 = *(v11 + 168);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = *(*v13 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = sub_221FA6400;
    v18[5] = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_221FA6BE0((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;
  v5 = v0[7];

  return sub_221ED39D8();
}

uint64_t sub_221FA443C()
{
  v20 = v0;
  v1 = v0[7];
  if (v1[22])
  {
LABEL_2:
    v2 = v0[1];

    return v2();
  }

  if (![*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v19);
      _os_log_impl(&dword_221E93000, v7, v8, "Waiting for protected data for anchor store: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v11 = v0[7];
    v12 = v1[22];
    v1[22] = 1;
    sub_221E967CC(v12);
    sub_221EA4AB4((v1 + 14), (v0 + 2));
    v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v14 = *(v11 + 160);
    v15 = *(v11 + 168);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = *(*v13 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
    v18 = swift_task_alloc();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = sub_221FA487C;
    v18[5] = v16;

    os_unfair_lock_lock((v17 + 24));
    sub_221FA48B4((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_2;
  }

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_221FA6BDC;
  v5 = v0[7];

  return sub_221ED3D40();
}

uint64_t sub_221FA476C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_221FB64C8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a1;

  sub_221FA7D68(0, 0, v10, a4, v12);
}

id sub_221FA48D4(_OWORD *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v19 = sub_221FB6618();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_221FB6608();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_221FB6238();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v23[3] = &type metadata for InvitationListener;
  v23[4] = sub_221FA6860();
  v12 = swift_allocObject();
  v23[0] = v12;
  v13 = a1[3];
  v12[3] = a1[2];
  v12[4] = v13;
  v14 = a1[5];
  v12[5] = a1[4];
  v12[6] = v14;
  v15 = a1[1];
  v12[1] = *a1;
  v12[2] = v15;
  sub_221EA4AB4(v23, &a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_invitationListener]);
  sub_221F3FA70();
  sub_221FB6228();
  v22 = MEMORY[0x277D84F90];
  sub_221F3FABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
  sub_221F3FB14();
  sub_221FB67D8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v19);
  *&a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_queue] = sub_221FB6648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBB8, qword_221FBFF00);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *&a2[OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState] = v16;
  v21.receiver = a2;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return v17;
}

id sub_221FA4BA8(uint64_t a1, uint64_t a2)
{
  v27[3] = &type metadata for CloudDeviceSystem;
  v27[4] = &off_283560748;
  v4 = swift_allocObject();
  v27[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v26[3] = &type metadata for CloudKitCoordinator;
  v26[4] = &off_28355F370;
  v26[0] = a2;
  v6 = type metadata accessor for CloudDeviceObserver();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for CloudDeviceSystem);
  v9 = *(off_2835607C8 + 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for CloudKitCoordinator);
  v14 = *(qword_28355F470 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v25[3] = &type metadata for CloudDeviceSystem;
  v25[4] = &off_283560748;
  v19 = swift_allocObject();
  v24[4] = &off_28355F370;
  v25[0] = v19;
  v20 = *(v11 + 1);
  *(v19 + 16) = *v11;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v11 + 4);
  v24[3] = &type metadata for CloudKitCoordinator;
  v24[0] = v18;
  sub_221EA4AB4(v25, v7 + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudDeviceSystem);
  sub_221EA4AB4(v24, v7 + OBJC_IVAR____TtC23ActivitySharingServices19CloudDeviceObserver_cloudKitCoordinator);
  v23.receiver = v7;
  v23.super_class = v6;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v21;
}

id sub_221FA4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[3] = &type metadata for SecureCloudFetchService;
  v26[4] = &off_283559208;
  v26[0] = a2;
  v5 = type metadata accessor for ServerChangeTokenCacheStore();
  v25[3] = v5;
  v25[4] = &off_28355B4C8;
  v25[0] = a3;
  v6 = type metadata accessor for SecureCloudKitDelegate();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, &type metadata for SecureCloudFetchService);
  v9 = *(qword_283559280 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v25, v5);
  v14 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v11;
  v19 = *v16;
  v24[3] = &type metadata for SecureCloudFetchService;
  v24[4] = &off_283559208;
  v23[4] = &off_28355B4C8;
  v24[0] = v18;
  v23[3] = v5;
  v23[0] = v19;
  *&v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_contactsManager] = a1;
  sub_221EA4AB4(v24, &v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService]);
  sub_221EA4AB4(v23, &v7[OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore]);
  v22.receiver = v7;
  v22.super_class = v6;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v20;
}

id sub_221FA506C(_OWORD *a1, _OWORD *a2)
{
  v31[3] = &type metadata for CompetitionService;
  v31[4] = &off_283557F98;
  v4 = swift_allocObject();
  v31[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  v30[3] = &type metadata for SecureCloudPushService;
  v30[4] = &off_283559A90;
  v6 = swift_allocObject();
  v30[0] = v6;
  v7 = a2[1];
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = a2[2];
  v8 = type metadata accessor for SecureCloudCompetitionDelegate();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for CompetitionService);
  v11 = *(off_283558090 + 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for SecureCloudPushService);
  v16 = *(off_283559B08 + 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v29[3] = &type metadata for CompetitionService;
  v29[4] = &off_283557F98;
  v20 = swift_allocObject();
  v28[4] = &off_283559A90;
  v29[0] = v20;
  v21 = v13[1];
  v20[1] = *v13;
  v20[2] = v21;
  v20[3] = v13[2];
  v28[3] = &type metadata for SecureCloudPushService;
  v22 = swift_allocObject();
  v28[0] = v22;
  v23 = v18[1];
  v22[1] = *v18;
  v22[2] = v23;
  v22[3] = v18[2];
  sub_221EA4AB4(v29, v9 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService);
  sub_221EA4AB4(v28, v9 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_pushService);
  v27.receiver = v9;
  v27.super_class = v8;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v24;
}

id sub_221FA5330(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v39[3] = &type metadata for CloudKitCoordinator;
  v39[4] = &off_28355F370;
  v39[0] = a1;
  v7 = type metadata accessor for MigrationAvailableItemStore();
  v38[3] = v7;
  v38[4] = &off_28355A710;
  v38[0] = a3;
  v36 = &type metadata for RelationshipDowngradeService;
  v37 = &off_2835582E8;
  v35[0] = swift_allocObject();
  memcpy((v35[0] + 16), a4, 0x1A0uLL);
  v8 = type metadata accessor for MigrationObserver();
  v9 = objc_allocWithZone(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for CloudKitCoordinator);
  v11 = *(qword_28355F470 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v38, v7);
  v16 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = v36;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  v22 = *(v20[-1].Description + 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = *v13;
  v27 = *v18;
  v34[3] = &type metadata for CloudKitCoordinator;
  v34[4] = &off_28355F370;
  v34[0] = v26;
  v33[3] = v7;
  v33[4] = &off_28355A710;
  v33[0] = v27;
  v32[3] = &type metadata for RelationshipDowngradeService;
  v32[4] = &off_2835582E8;
  v32[0] = swift_allocObject();
  memcpy((v32[0] + 16), v24, 0x1A0uLL);
  sub_221EA4AB4(v34, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_cloudKitCoordinator]);
  *&v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_contactsManager] = a2;
  sub_221EA4AB4(v33, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_migrationAvailableItemStore]);
  sub_221EA4AB4(v32, &v9[OBJC_IVAR____TtC23ActivitySharingServices17MigrationObserver_relationshipDowngradeService]);
  v31.receiver = v9;
  v31.super_class = v8;
  v28 = objc_msgSendSuper2(&v31, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v28;
}

id sub_221FA56D4(uint64_t a1, const void *a2, _OWORD *a3, uint64_t a4)
{
  v56[3] = &type metadata for RelationshipFinalizationCoordinator;
  v56[4] = &off_28355BE88;
  v56[0] = a1;
  v55[3] = &type metadata for RelationshipInviteAcceptService;
  v55[4] = &off_283560088;
  v55[0] = swift_allocObject();
  memcpy((v55[0] + 16), a2, 0x180uLL);
  v54[3] = &type metadata for RelationshipRemovalService;
  v54[4] = &off_2835599D0;
  v7 = swift_allocObject();
  v54[0] = v7;
  v8 = a3[5];
  v7[5] = a3[4];
  v7[6] = v8;
  v9 = a3[7];
  v7[7] = a3[6];
  v7[8] = v9;
  v10 = a3[1];
  v7[1] = *a3;
  v7[2] = v10;
  v11 = a3[3];
  v7[3] = a3[2];
  v7[4] = v11;
  v53[3] = &type metadata for RelationshipUpdateService;
  v53[4] = &off_283558FF0;
  v12 = swift_allocObject();
  v53[0] = v12;
  v13 = *(a4 + 48);
  *(v12 + 48) = *(a4 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a4 + 64);
  *(v12 + 96) = *(a4 + 80);
  v14 = *(a4 + 16);
  *(v12 + 16) = *a4;
  *(v12 + 32) = v14;
  v47 = type metadata accessor for SecureCloudRelationshipDelegate();
  v15 = objc_allocWithZone(v47);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v56, &type metadata for RelationshipFinalizationCoordinator);
  v17 = *(qword_28355BF18 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v55, &type metadata for RelationshipInviteAcceptService);
  v22 = *(off_283560670 + 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for RelationshipRemovalService);
  v27 = *(off_283559A68 + 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v53, &type metadata for RelationshipUpdateService);
  v32 = *(off_283559098 + 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  v36 = *v19;
  v52[3] = &type metadata for RelationshipFinalizationCoordinator;
  v52[4] = &off_28355BE88;
  v52[0] = v36;
  v51[3] = &type metadata for RelationshipInviteAcceptService;
  v51[4] = &off_283560088;
  v51[0] = swift_allocObject();
  memcpy((v51[0] + 16), v24, 0x180uLL);
  v50[3] = &type metadata for RelationshipRemovalService;
  v50[4] = &off_2835599D0;
  v37 = swift_allocObject();
  v50[0] = v37;
  v38 = v29[5];
  v37[5] = v29[4];
  v37[6] = v38;
  v39 = v29[7];
  v37[7] = v29[6];
  v37[8] = v39;
  v40 = v29[1];
  v37[1] = *v29;
  v37[2] = v40;
  v41 = v29[3];
  v37[3] = v29[2];
  v37[4] = v41;
  v49[3] = &type metadata for RelationshipUpdateService;
  v49[4] = &off_283558FF0;
  v42 = swift_allocObject();
  v49[0] = v42;
  v43 = *(v34 + 3);
  *(v42 + 48) = *(v34 + 2);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v34 + 4);
  *(v42 + 96) = *(v34 + 10);
  v44 = *(v34 + 1);
  *(v42 + 16) = *v34;
  *(v42 + 32) = v44;
  sub_221EA4AB4(v52, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipFinalizationCoordinator);
  sub_221EA4AB4(v51, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipInviteAcceptService);
  sub_221EA4AB4(v50, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipRemovalService);
  sub_221EA4AB4(v49, v15 + OBJC_IVAR____TtC23ActivitySharingServices31SecureCloudRelationshipDelegate_relationshipUpdateService);
  v48.receiver = v15;
  v48.super_class = v47;
  v45 = objc_msgSendSuper2(&v48, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v56);
  return v45;
}

uint64_t sub_221FA5C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5C38, 0, 0);
}

uint64_t sub_221FA5C38()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221F588A0;
    v4 = *(v0 + 72);

    return sub_221ED25E4(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221FA5D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5D6C, 0, 0);
}

uint64_t sub_221FA5D6C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221FA5E7C;
    v4 = *(v0 + 72);

    return sub_221ED2094(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221FA5E7C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221FA6BFC, 0, 0);
}

uint64_t sub_221FA5F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA5FB8, 0, 0);
}

uint64_t sub_221FA5FB8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221FA5E7C;
    v4 = *(v0 + 72);

    return sub_221ED1B44(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221FA60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA60EC, 0, 0);
}

uint64_t sub_221FA60EC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221FA5E7C;
    v4 = *(v0 + 72);

    return sub_221ED2928(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221FA61FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_221FA6220, 0, 0);
}

uint64_t sub_221FA6220()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_221FA5E7C;
    v4 = *(v0 + 72);

    return sub_221ED2C6C(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_221FA6330(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA61FC(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA60C8(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6540(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA5F94(a1, v4, v5, v6, v7);
}

uint64_t sub_221FA6648(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FA5D48(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_221FA6790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E9544C;

  return sub_221FA5C14(a1, v4, v5, v6, v7);
}

unint64_t sub_221FA6860()
{
  result = qword_281307A08;
  if (!qword_281307A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A08);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_74Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_92Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroy_65Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroy_98Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_62Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_221FA6C14()
{
  result = qword_27CFECBC0;
  if (!qword_27CFECBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBC0);
  }

  return result;
}

id sub_221FA6C68(void *a1, void *a2)
{
  v47 = a2;
  v4 = sub_221FB5AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 participants];
  sub_221E9D138(0, &unk_27CFEB948, 0x277CBC6A0);
  v9 = sub_221FB6438();

  v45 = v4;
  v46 = a1;
  v44 = v5;
  v42 = v2;
  if (v9 >> 62)
  {
LABEL_30:
    v10 = sub_221FB6868();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_31:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v36 = sub_221FB61D8();
    __swift_project_value_buffer(v36, qword_281307DF0);
    v37 = sub_221FB61B8();
    v38 = sub_221FB65A8();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v46;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_221E93000, v37, v38, "Failed to find participant on share", v41, 2u);
      MEMORY[0x223DADA80](v41, -1, -1);
    }

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_3:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223DACD50](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_221E9D138(0, &qword_27CFEB940, 0x277D82BB8);
    if (sub_221FB6758())
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_31;
    }
  }

  v15 = v46;
  v16 = [v46 URL];
  if (!v16)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v28 = sub_221FB61D8();
    __swift_project_value_buffer(v28, qword_281307DF0);
    v29 = sub_221FB61B8();
    v30 = sub_221FB65A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_221E93000, v29, v30, "Share missing share URL", v31, 2u);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    return 0;
  }

  v17 = v43;
  v18 = v16;
  sub_221FB5AD8();

  v19 = [v13 invitationToken];
  if (!v19)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v32 = sub_221FB61D8();
    __swift_project_value_buffer(v32, qword_281307DF0);
    v33 = sub_221FB61B8();
    v34 = sub_221FB65A8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_221E93000, v33, v34, "Share missing invitation token", v35, 2u);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    else
    {
    }

    (*(v44 + 8))(v17, v45);
    return 0;
  }

  v20 = v19;
  v21 = [v15 recordID];
  v22 = [v21 zoneID];

  v23 = [v22 zoneName];
  if (!v23)
  {
    sub_221FB6318();
    v23 = sub_221FB62E8();
  }

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = sub_221FB5AC8();
  v26 = [v24 initWithZoneName:v23 shareURL:v25 invitationToken:v20];

  (*(v44 + 8))(v17, v45);
  return v26;
}

uint64_t getEnumTagSinglePayload for ActivitySnapshotError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivitySnapshotError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221FA7370()
{
  result = qword_27CFECBC8;
  if (!qword_27CFECBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBC8);
  }

  return result;
}

unint64_t UserDefaultsKeys.rawValue.getter()
{
  result = 0xD00000000000001DLL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
    case 5:
    case 9:
    case 0xE:
    case 0xF:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 0xA:
      result = 0xD000000000000023;
      break;
    case 0xB:
      result = 0xD00000000000002ALL;
      break;
    case 0xD:
      result = 0xD00000000000001ELL;
      break;
    case 0x10:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

ActivitySharingServices::UserDefaultsKeys_optional __swiftcall UserDefaultsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_221FB6B68();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_221FA75A8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = UserDefaultsKeys.rawValue.getter();
  v4 = v3;
  if (v2 == UserDefaultsKeys.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_221FB6B58();
  }

  return v7 & 1;
}

unint64_t sub_221FA7648()
{
  result = qword_27CFECBD0;
  if (!qword_27CFECBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBD0);
  }

  return result;
}

uint64_t sub_221FA769C()
{
  v1 = *v0;
  sub_221FB6C38();
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();

  return sub_221FB6C58();
}

uint64_t sub_221FA7704()
{
  v2 = *v0;
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();
}

uint64_t sub_221FA7768()
{
  v1 = *v0;
  sub_221FB6C38();
  UserDefaultsKeys.rawValue.getter();
  sub_221FB6358();

  return sub_221FB6C58();
}

unint64_t sub_221FA77D8@<X0>(unint64_t *a1@<X8>)
{
  result = UserDefaultsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221FA7950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221FA7A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_221EEDBF0(a3, v27 - v11);
  v13 = sub_221FB64C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_221E9CFE8(v12, &qword_27CFEC3A0, &qword_221FB8B70);
  }

  else
  {
    sub_221FB64B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_221FB6488();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_221FB6338() + 32;
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

      sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);

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

  sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);
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

uint64_t sub_221FA7D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_221EEDBF0(a3, v27 - v11);
  v13 = sub_221FB64C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_221E9CFE8(v12, &qword_27CFEC3A0, &qword_221FB8B70);
  }

  else
  {
    sub_221FB64B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_221FB6488();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_221FB6338() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBE0, &qword_221FC0398);
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

      sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);

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

  sub_221E9CFE8(a3, &qword_27CFEC3A0, &qword_221FB8B70);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBE0, &qword_221FC0398);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_221FA806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8130, 0, 0);
}

uint64_t sub_221FA8130()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB5EC8();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2220;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221FA8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA853C, 0, 0);
}

uint64_t sub_221FA853C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB5F78();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2838;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221FA8884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8948, 0, 0);
}

uint64_t sub_221FA8948()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB5FF8();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2838;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0888, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221FA8C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA8D54, 0, 0);
}

uint64_t sub_221FA8D54()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002ALL, 0x8000000221FC4B40);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB60A8();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2838;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002ALL, 0x8000000221FC4B40, sub_221FB0D28, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221FA909C(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FA9168(uint64_t a1)
{
  v2[82] = v1;
  v2[81] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB58, &unk_221FB8C00) - 8) + 64) + 15;
  v2[83] = swift_task_alloc();
  v4 = sub_221FB6168();
  v2[84] = v4;
  v5 = *(v4 - 8);
  v2[85] = v5;
  v6 = *(v5 + 64) + 15;
  v2[86] = swift_task_alloc();
  v7 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v8 = sub_221FB5FF8();
  v2[88] = v8;
  v9 = *(v8 - 8);
  v2[89] = v9;
  v10 = *(v9 + 64) + 15;
  v2[90] = swift_task_alloc();
  v11 = sub_221FB6058();
  v2[91] = v11;
  v12 = *(v11 - 8);
  v2[92] = v12;
  v13 = *(v12 + 64) + 15;
  v2[93] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB918, &unk_221FB82A0) - 8) + 64) + 15;
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  v2[98] = swift_task_alloc();
  v16 = sub_221FB5C38();
  v2[99] = v16;
  v17 = *(v16 - 8);
  v2[100] = v17;
  v18 = *(v17 + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221FA9444, 0, 0);
}

uint64_t sub_221FA9444()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[82];
  v2 = v0[81];
  v3 = sub_221FB61D8();
  v0[103] = __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000099, 0x8000000221FC4A60, 0xD00000000000001ALL, 0x8000000221FC2D30);
  v4 = __swift_project_boxed_opaque_existential_0Tm(v1 + 28, v1[31]);
  sub_221F55DCC(&unk_283557880, v2, *v4);
  v0[104] = v1[5];
  v5 = swift_task_alloc();
  v0[105] = v5;
  *v5 = v0;
  v5[1] = sub_221FA958C;

  return sub_221F7E048();
}

uint64_t sub_221FA958C()
{
  v1 = *(*v0 + 840);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221FA9688, 0, 0);
}

uint64_t sub_221FA9688()
{
  v22 = v0;
  v1 = v0[103];
  (*(v0[100] + 16))(v0[102], v0[81], v0[99]);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[102];
  v6 = v0[100];
  v7 = v0[99];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315138;
    sub_221EA8278();
    v9 = sub_221FB6B08();
    v11 = v10;
    v12 = *(v6 + 8);
    v12(v5, v7);
    v13 = sub_221EF4114(v9, v11, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_221E93000, v2, v3, "Fetching change while accepting invitation from friend with identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223DADA80](v20, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {

    v12 = *(v6 + 8);
    v12(v5, v7);
  }

  v0[106] = v12;
  v14 = v0[82];
  v15 = __swift_project_boxed_opaque_existential_0Tm(v14 + 6, v14[9]);
  v16 = v14[11];
  v0[107] = v16;
  v17 = *v15;
  v0[2] = v0;
  v0[7] = v0 + 159;
  v0[3] = sub_221FA9920;
  v18 = swift_continuation_init();
  v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_221FA909C;
  v0[37] = &block_descriptor_36;
  v0[38] = v18;
  [v17 fetchAllChangesWithPriority:2 activity:0 group:v16 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FA9920()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 864) = v2;
  if (v2)
  {
    v3 = sub_221FA9F00;
  }

  else
  {
    v3 = sub_221FA9A30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FA9A30()
{
  v1 = v0[103];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking number of friends", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[82];

  if ([*__swift_project_boxed_opaque_existential_0Tm((v5 + 104) *(v5 + 128))])
  {
    v6 = v0[103];
    v7 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (!os_log_type_enabled(v7, v8))
    {
      v40 = &unk_221FC0358;
      v10 = 29;
LABEL_15:

      sub_221EA4994();
      swift_allocError();
      *v20 = v10;
      swift_willThrow();
      v21 = v0[104];
      v22 = v0[102];
      v23 = v0[101];
      v24 = v0[98];
      v25 = v0[97];
      v26 = v0[96];
      v33 = v0[95];
      v34 = v0[94];
      v35 = v0[93];
      v36 = v0[90];
      v37 = v0[87];
      v38 = v0[86];
      v39 = v0[83];
      v27 = v0[81];
      v28 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
      v29 = sub_221FB5BF8();
      [v28 removePlaceholderWithContactUUID:v29 shouldNotify:0];

      v30 = sub_221FB64C8();
      (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v21;

      sub_221FA7A78(0, 0, v24, v40, v31);

      v32 = v0[1];

      return v32();
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_221E93000, v7, v8, "Reached maximum number of friends", v9, 2u);
    v40 = &unk_221FC0358;
    v10 = 29;
LABEL_13:
    MEMORY[0x223DADA80](v9, -1, -1);
    goto LABEL_15;
  }

  v11 = v0[81];
  v12 = *(v0[82] + 96);
  v0[109] = v12;
  v13 = sub_221FB5BF8();
  v14 = [v12 contactWithUUID_];
  v0[110] = v14;

  if (!v14)
  {
    v18 = v0[103];
    v7 = sub_221FB61B8();
    v19 = sub_221FB65A8();
    if (!os_log_type_enabled(v7, v19))
    {
      v40 = &unk_221FBAC90;
      v10 = 21;
      goto LABEL_15;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_221E93000, v7, v19, "Missing contact for invite request accept", v9, 2u);
    v40 = &unk_221FBAC90;
    v10 = 21;
    goto LABEL_13;
  }

  v15 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 48), *(v0[82] + 72));
  v16 = swift_task_alloc();
  v0[111] = v16;
  *v16 = v0;
  v16[1] = sub_221FAA0FC;

  return sub_221F991FC(v15);
}

uint64_t sub_221FA9F00()
{
  v1 = v0[108];
  swift_willThrow();
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v16 = v0[94];
  v17 = v0[93];
  v18 = v0[90];
  v19 = v0[87];
  v20 = v0[86];
  v21 = v0[83];
  v22 = v0[108];
  v9 = v0[81];
  v10 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
  v11 = sub_221FB5BF8();
  [v10 removePlaceholderWithContactUUID:v11 shouldNotify:0];

  v12 = sub_221FB64C8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;

  sub_221FA7A78(0, 0, v5, &unk_221FB9A50, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_221FAA0FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 888);
  v8 = *v3;
  v4[112] = a1;
  v4[113] = a2;
  v4[114] = v2;

  if (v2)
  {
    v6 = sub_221FB0270;
  }

  else
  {
    v6 = sub_221FAA218;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221FAA218()
{
  v88 = v0;
  if (*(v0 + 904))
  {
    v1 = *(v0 + 880);
    v2 = [v1 relationshipStorage];
    v3 = [v2 secureCloudRelationship];
    *(v0 + 920) = v3;

    *(v0 + 624) = v3;
    v4 = [v1 relationshipStorage];
    v5 = [v4 legacyRelationship];
    *(v0 + 928) = v5;

    v6 = [v3 incomingHandshakeToken];
    if (v6)
    {
      v7 = v6;
      v8 = sub_221FB6318();
      v10 = v9;

      *(v0 + 936) = v8;
      *(v0 + 944) = v10;
      v11 = [v3 cloudKitAddress];
      if (v11)
      {
        v12 = *(v0 + 880);
        v13 = v11;
        v14 = sub_221FB6318();
        v16 = v15;

        *(v0 + 952) = v14;
        *(v0 + 960) = v16;
        v17 = [v12 pendingRelationshipShareItem];
        *(v0 + 968) = v17;
        if (v17)
        {
          v18 = v17;
          v19 = [*(v0 + 880) pendingLegacyShareLocations];
          *(v0 + 976) = v19;
          if (v19)
          {
            v20 = v19;
            v21 = [v3 receivedInvitation];
            *(v0 + 984) = v21;
            v22 = *(v0 + 824);
            if (v21)
            {

              v23 = sub_221FB61B8();
              v24 = sub_221FB65C8();

              if (os_log_type_enabled(v23, v24))
              {
                v25 = swift_slowAlloc();
                v26 = swift_slowAlloc();
                v87 = v26;
                *v25 = 136315138;
                *(v25 + 4) = sub_221EF4114(v14, v16, &v87);
                _os_log_impl(&dword_221E93000, v23, v24, "Fetching participant for %s", v25, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v26);
                MEMORY[0x223DADA80](v26, -1, -1);
                MEMORY[0x223DADA80](v25, -1, -1);
              }

              v27 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 264), *(*(v0 + 656) + 288));
              v28 = *__swift_project_boxed_opaque_existential_0Tm(v27 + 5, v27[8]);
              v29 = swift_task_alloc();
              *(v0 + 992) = v29;
              *v29 = v0;
              v29[1] = sub_221FAAC00;
              v30 = *(v0 + 856);

              return sub_221E9F708(v14, v16, v30, v28);
            }

            v62 = sub_221FB61B8();
            v63 = sub_221FB65A8();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&dword_221E93000, v62, v63, "Missing received invitation for invite request accept", v64, 2u);
              MEMORY[0x223DADA80](v64, -1, -1);
            }

            v65 = *(v0 + 880);

            sub_221EA4994();
            swift_allocError();
            *v66 = 42;
            swift_willThrow();

            v86 = &unk_221FC0298;
          }

          else
          {
            v56 = *(v0 + 824);

            v57 = sub_221FB61B8();
            v58 = sub_221FB65A8();
            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              *v59 = 0;
              _os_log_impl(&dword_221E93000, v57, v58, "Missing CloudKit legacy share location for invite request accept", v59, 2u);
              MEMORY[0x223DADA80](v59, -1, -1);
            }

            v60 = *(v0 + 880);

            sub_221EA4994();
            swift_allocError();
            *v61 = 24;
            swift_willThrow();

            v86 = &unk_221FC0290;
          }
        }

        else
        {
          v50 = *(v0 + 824);

          v51 = sub_221FB61B8();
          v52 = sub_221FB65A8();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_221E93000, v51, v52, "Missing CloudKit share items for invite request accept", v53, 2u);
            MEMORY[0x223DADA80](v53, -1, -1);
          }

          v54 = *(v0 + 880);

          sub_221EA4994();
          swift_allocError();
          *v55 = 23;
          swift_willThrow();

          v86 = &unk_221FBC1D8;
        }
      }

      else
      {
        v44 = *(v0 + 824);

        v45 = sub_221FB61B8();
        v46 = sub_221FB65A8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_221E93000, v45, v46, "Missing CloudKit address for invite request accept", v47, 2u);
          MEMORY[0x223DADA80](v47, -1, -1);
        }

        v48 = *(v0 + 880);

        sub_221EA4994();
        swift_allocError();
        *v49 = 20;
        swift_willThrow();

        v86 = &unk_221FC0280;
      }
    }

    else
    {
      v38 = *(v0 + 824);

      v39 = sub_221FB61B8();
      v40 = sub_221FB65A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_221E93000, v39, v40, "Missing handshake token for invite request accept", v41, 2u);
        MEMORY[0x223DADA80](v41, -1, -1);
      }

      v42 = *(v0 + 880);

      sub_221EA4994();
      swift_allocError();
      *v43 = 22;
      swift_willThrow();

      v86 = &unk_221FC0278;
    }
  }

  else
  {
    v32 = *(v0 + 824);
    v33 = sub_221FB61B8();
    v34 = sub_221FB65C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_221E93000, v33, v34, "Unable to fetch CloudKit address", v35, 2u);
      MEMORY[0x223DADA80](v35, -1, -1);
    }

    v36 = *(v0 + 880);

    sub_221EA4994();
    swift_allocError();
    *v37 = 20;
    swift_willThrow();

    v86 = &unk_221FC0270;
  }

  v67 = *(v0 + 832);
  v68 = *(v0 + 816);
  v69 = *(v0 + 808);
  v70 = *(v0 + 784);
  v71 = *(v0 + 776);
  v72 = *(v0 + 768);
  v73 = *(v0 + 760);
  v80 = *(v0 + 752);
  v81 = *(v0 + 744);
  v82 = *(v0 + 720);
  v83 = *(v0 + 696);
  v84 = *(v0 + 688);
  v85 = *(v0 + 664);
  v74 = *(v0 + 648);
  v75 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v76 = sub_221FB5BF8();
  [v75 removePlaceholderWithContactUUID:v76 shouldNotify:0];

  v77 = sub_221FB64C8();
  (*(*(v77 - 8) + 56))(v70, 1, 1, v77);
  v78 = swift_allocObject();
  v78[2] = 0;
  v78[3] = 0;
  v78[4] = v67;

  sub_221FA7A78(0, 0, v70, v86, v78);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_221FAAC00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 992);
  v10 = *v2;
  v3[125] = a1;
  v3[126] = v1;

  if (v1)
  {
    v5 = v3[120];
    v6 = v3[118];
    v7 = v3[113];

    v8 = sub_221FAB26C;
  }

  else
  {
    v8 = sub_221FAAD38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221FAAD38()
{
  v47 = v0;
  if (v0[125])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[82] + 264), *(v0[82] + 288));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[127] = v3;
    *v3 = v0;
    v3[1] = sub_221FAB134;
    v4 = v0[120];
    v5 = v0[119];
    v6 = v0[107];

    return sub_221F99674(v5, v4, v6, v2);
  }

  else
  {
    v8 = v0[120];
    v9 = v0[118];
    v10 = v0[113];
    v11 = v0[103];

    v12 = sub_221FB61B8();
    v13 = sub_221FB65A8();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[120];
    if (v14)
    {
      v16 = v0[119];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v46 = v18;
      *v17 = 136315138;
      v19 = sub_221EF4114(v16, v15, &v46);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_221E93000, v12, v13, "Destination %s does not have a matching CloudKit participant", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    else
    {
    }

    v20 = v0[123];
    v21 = v0[122];
    v22 = v0[121];
    v23 = v0[116];
    v24 = v0[115];
    v25 = v0[110];
    sub_221EA4994();
    swift_allocError();
    *v26 = 12;
    swift_willThrow();

    v27 = v0[104];
    v28 = v0[102];
    v29 = v0[101];
    v30 = v0[98];
    v31 = v0[97];
    v32 = v0[96];
    v33 = v0[95];
    v40 = v0[94];
    v41 = v0[93];
    v42 = v0[90];
    v43 = v0[87];
    v44 = v0[86];
    v45 = v0[83];
    v34 = v0[81];
    v35 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
    v36 = sub_221FB5BF8();
    [v35 removePlaceholderWithContactUUID:v36 shouldNotify:0];

    v37 = sub_221FB64C8();
    (*(*(v37 - 8) + 56))(v30, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = v27;

    sub_221FA7A78(0, 0, v30, &unk_221FBAB00, v38);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_221FAB134(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1016);
  v10 = *v2;
  v3[128] = a1;
  v3[129] = v1;

  if (v1)
  {
    v5 = v3[120];
    v6 = v3[118];
    v7 = v3[113];

    v8 = sub_221FAB490;
  }

  else
  {
    v8 = sub_221FAB6BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221FAB26C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 880);

  v6 = *(v0 + 832);
  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  v22 = *(v0 + 720);
  v23 = *(v0 + 696);
  v24 = *(v0 + 688);
  v25 = *(v0 + 664);
  v26 = *(v0 + 1008);
  v13 = *(v0 + 648);
  v14 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v15 = sub_221FB5BF8();
  [v14 removePlaceholderWithContactUUID:v15 shouldNotify:0];

  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;

  sub_221FA7A78(0, 0, v9, &unk_221FC02A0, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_221FAB490()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 976);
  v3 = *(v0 + 968);
  v4 = *(v0 + 928);
  v5 = *(v0 + 920);
  v6 = *(v0 + 880);

  v7 = *(v0 + 832);
  v8 = *(v0 + 816);
  v9 = *(v0 + 808);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 768);
  v13 = *(v0 + 760);
  v21 = *(v0 + 752);
  v22 = *(v0 + 744);
  v23 = *(v0 + 720);
  v24 = *(v0 + 696);
  v25 = *(v0 + 688);
  v26 = *(v0 + 664);
  v27 = *(v0 + 1032);
  v14 = *(v0 + 648);
  v15 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v16 = sub_221FB5BF8();
  [v15 removePlaceholderWithContactUUID:v16 shouldNotify:0];

  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v7;

  sub_221FA7A78(0, 0, v10, &unk_221FC02B0, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_221FAB6BC()
{
  v58 = v0;
  v1 = [*(v0 + 1000) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1024) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {
    v5 = *(v0 + 960);
    v6 = *(v0 + 824);

    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "Making secure cloud relationship share", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v10 = *(v0 + 920);
    v11 = *(v0 + 656);

    __swift_project_boxed_opaque_existential_0Tm((v11 + 344), *(v11 + 368));
    v12 = v10;
    v13 = swift_task_alloc();
    *(v0 + 1040) = v13;
    *v13 = v0;
    v13[1] = sub_221FABB98;
    v14 = *(v0 + 920);
    v15 = *(v0 + 856);

    return sub_221E9AC64(v14, v15, 0);
  }

  else
  {
    v17 = *(v0 + 960);
    v18 = *(v0 + 944);
    v19 = *(v0 + 904);
    v20 = *(v0 + 824);

    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 960);
    if (v23)
    {
      v25 = *(v0 + 952);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v57 = v27;
      *v26 = 136315138;
      v28 = sub_221EF4114(v25, v24, &v57);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_221E93000, v21, v22, "Destination %s has a participant, but no iCloud account", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DADA80](v27, -1, -1);
      MEMORY[0x223DADA80](v26, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 1024);
    v30 = *(v0 + 1000);
    v31 = *(v0 + 984);
    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v34 = *(v0 + 928);
    v35 = *(v0 + 920);
    v36 = *(v0 + 880);
    sub_221EA4994();
    swift_allocError();
    *v37 = 6;
    swift_willThrow();

    v38 = *(v0 + 832);
    v39 = *(v0 + 816);
    v40 = *(v0 + 808);
    v41 = *(v0 + 784);
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v51 = *(v0 + 752);
    v52 = *(v0 + 744);
    v53 = *(v0 + 720);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 664);
    v45 = *(v0 + 648);
    v46 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v47 = sub_221FB5BF8();
    [v46 removePlaceholderWithContactUUID:v47 shouldNotify:0];

    v48 = sub_221FB64C8();
    (*(*(v48 - 8) + 56))(v41, 1, 1, v48);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v49[4] = v38;

    sub_221FA7A78(0, 0, v41, &unk_221FC02B8, v49);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_221FABB98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1040);
  v10 = *v2;
  *(v3 + 1048) = a1;
  *(v3 + 1056) = v1;

  if (v1)
  {
    v5 = *(v3 + 944);
    v6 = *(v3 + 920);
    v7 = *(v3 + 904);

    v8 = sub_221FABEF4;
  }

  else
  {

    v8 = sub_221FABCDC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221FABCDC()
{
  v1 = v0[131];
  v2 = v0[125];
  __swift_project_boxed_opaque_existential_0Tm((v0[82] + 344), *(v0[82] + 368));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[133] = v4;
  *v4 = v0;
  v4[1] = sub_221FABDA8;
  v5 = v0[131];
  v6 = v0[107];

  return sub_221E9A43C(v2, v5, v6, 0);
}

uint64_t sub_221FABDA8()
{
  v2 = *v1;
  v3 = *(*v1 + 1064);
  v4 = *v1;
  v2[134] = v0;

  v5 = v2[131];
  if (v0)
  {
    v6 = v2[118];
    v7 = v2[113];

    v8 = sub_221FAC30C;
  }

  else
  {

    v8 = sub_221FAC128;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221FABEF4()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 880);

  v8 = *(v0 + 832);
  v9 = *(v0 + 816);
  v10 = *(v0 + 808);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v14 = *(v0 + 760);
  v22 = *(v0 + 752);
  v23 = *(v0 + 744);
  v24 = *(v0 + 720);
  v25 = *(v0 + 696);
  v26 = *(v0 + 688);
  v27 = *(v0 + 664);
  v28 = *(v0 + 1056);
  v15 = *(v0 + 648);
  v16 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v17 = sub_221FB5BF8();
  [v16 removePlaceholderWithContactUUID:v17 shouldNotify:0];

  v18 = sub_221FB64C8();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v8;

  sub_221FA7A78(0, 0, v11, &unk_221FC02C0, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_221FAC128()
{
  v1 = v0[125];
  __swift_project_boxed_opaque_existential_0Tm((v0[82] + 344), *(v0[82] + 368));
  v2 = swift_task_alloc();
  v0[135] = v2;
  *v2 = v0;
  v2[1] = sub_221FAC1E0;
  v3 = v0[131];
  v4 = v0[107];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221FAC1E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1080);
  v9 = *v2;
  v3[136] = a1;
  v3[137] = v1;

  if (v1)
  {
    v5 = v3[118];
    v6 = v3[113];

    v7 = sub_221FACA9C;
  }

  else
  {
    v7 = sub_221FAC548;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221FAC30C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 880);

  v9 = *(v0 + 832);
  v10 = *(v0 + 816);
  v11 = *(v0 + 808);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v15 = *(v0 + 760);
  v23 = *(v0 + 752);
  v24 = *(v0 + 744);
  v25 = *(v0 + 720);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 664);
  v29 = *(v0 + 1072);
  v16 = *(v0 + 648);
  v17 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v18 = sub_221FB5BF8();
  [v17 removePlaceholderWithContactUUID:v18 shouldNotify:0];

  v19 = sub_221FB64C8();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v9;

  sub_221FA7A78(0, 0, v12, &unk_221FC02C8, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221FAC548()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1000);

  sub_221FB083C();
  v3 = sub_221FA6C68(v1, v2);
  *(v0 + 1104) = v3;
  if (v3)
  {
    v4 = *(v0 + 824);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_221E93000, v5, v6, "Making legacy relationship shares", v7, 2u);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    v8 = *(v0 + 928);
    v9 = *(v0 + 880);
    v10 = *(v0 + 656);

    v11 = *__swift_project_boxed_opaque_existential_0Tm((v10 + 184), *(v10 + 208));
    v12 = v8;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 528;
    *(v0 + 88) = sub_221FACCD8;
    v13 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBD8, &qword_221FC02E8);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221FB0554;
    *(v0 + 360) = &block_descriptor_92;
    *(v0 + 368) = v13;
    [v11 saveRelationshipAndFetchOrCreateShares:v12 contact:v9 cloudKitGroup:0 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 944);
    v17 = *(v0 + 904);
    v18 = *(v0 + 824);

    v19 = v14;
    v20 = v15;
    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 1088);
      v24 = *(v0 + 1000);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      *(v25 + 4) = v24;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v23;
      *v26 = v24;
      v26[1] = v23;
      v27 = v23;
      v28 = v24;
      _os_log_impl(&dword_221E93000, v21, v22, "Failed to create share item for participant: %@, share: %@", v25, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v26, -1, -1);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    v29 = *(v0 + 1024);
    v30 = *(v0 + 1000);
    v31 = *(v0 + 984);
    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v34 = *(v0 + 928);
    v55 = *(v0 + 1088);
    v57 = *(v0 + 920);
    v35 = *(v0 + 880);

    sub_221EA4994();
    swift_allocError();
    *v36 = 31;
    swift_willThrow();

    v37 = *(v0 + 832);
    v38 = *(v0 + 816);
    v39 = *(v0 + 808);
    v40 = *(v0 + 784);
    v41 = *(v0 + 776);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v51 = *(v0 + 752);
    v52 = *(v0 + 744);
    v53 = *(v0 + 720);
    v54 = *(v0 + 696);
    v56 = *(v0 + 688);
    v58 = *(v0 + 664);
    v44 = *(v0 + 648);
    v45 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v46 = sub_221FB5BF8();
    [v45 removePlaceholderWithContactUUID:v46 shouldNotify:0];

    v47 = sub_221FB64C8();
    (*(*(v47 - 8) + 56))(v40, 1, 1, v47);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v37;

    sub_221FA7A78(0, 0, v40, &unk_221FC02D8, v48);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_221FACA9C()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 984);
  v5 = *(v0 + 976);
  v6 = *(v0 + 928);
  v7 = *(v0 + 920);
  v8 = *(v0 + 880);

  v9 = *(v0 + 832);
  v10 = *(v0 + 816);
  v11 = *(v0 + 808);
  v12 = *(v0 + 784);
  v13 = *(v0 + 776);
  v14 = *(v0 + 768);
  v15 = *(v0 + 760);
  v23 = *(v0 + 752);
  v24 = *(v0 + 744);
  v25 = *(v0 + 720);
  v26 = *(v0 + 696);
  v27 = *(v0 + 688);
  v28 = *(v0 + 664);
  v29 = *(v0 + 1096);
  v16 = *(v0 + 648);
  v17 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v18 = sub_221FB5BF8();
  [v17 removePlaceholderWithContactUUID:v18 shouldNotify:0];

  v19 = sub_221FB64C8();
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v9;

  sub_221FA7A78(0, 0, v12, &unk_221FC02D0, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221FACCD8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1112) = v2;
  if (v2)
  {
    v3 = sub_221FAD080;
  }

  else
  {
    v3 = sub_221FACDE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FACDE8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 656);
  v3 = *(v0 + 536);
  *(v0 + 1120) = v3;
  v14 = *(v0 + 544);
  *(v0 + 1128) = v14;

  v4 = __swift_project_boxed_opaque_existential_0Tm((v2 + 264), *(v2 + 288));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  v5 = swift_allocObject();
  *(v0 + 1144) = v5;
  *(v5 + 16) = xmmword_221FB8D60;
  *(v5 + 32) = v3;
  *(v5 + 40) = v14;
  v6 = v4[3];
  v7 = v3;
  v8 = v14;
  v9 = *__swift_project_boxed_opaque_existential_0Tm(v4, v6);
  v10 = swift_task_alloc();
  *(v0 + 1152) = v10;
  *v10 = v0;
  v10[1] = sub_221FACF2C;
  v11 = *(v0 + 1024);
  v12 = *(v0 + 856);

  return sub_221F997D4(v11, v5, v12, v9);
}

uint64_t sub_221FACF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v4 = *v1;
  v2[145] = v0;

  v5 = v2[143];
  if (v0)
  {
    v6 = v2[118];
    v7 = v2[113];

    v8 = sub_221FAD9F8;
  }

  else
  {

    v8 = sub_221FAD300;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221FAD080()
{
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[128];
  v4 = v0[125];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[118];
  v8 = v0[116];
  v31 = v0[115];
  v33 = v0[136];
  v9 = v0[113];
  v27 = v0[110];
  v29 = v0[123];
  swift_willThrow();

  v10 = v0[104];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[98];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[95];
  v24 = v0[94];
  v25 = v0[93];
  v26 = v0[90];
  v28 = v0[87];
  v30 = v0[86];
  v32 = v0[83];
  v34 = v0[139];
  v17 = v0[81];
  v18 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC02F0, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_221FAD300()
{
  v1 = [*(v0 + 1120) URL];
  if (v1)
  {
    v2 = *(v0 + 768);
    v3 = v1;
    sub_221FB5AD8();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = sub_221FB5AE8();
  v8 = *(v7 - 8);
  v9 = v8[7];
  v9(v6, v4, 1, v7);
  sub_221E9CF08(v6, v5);
  v10 = v8[6];
  if (v10(v5, 1, v7) == 1)
  {
    v11 = *(v0 + 944);
    v12 = *(v0 + 904);
    v13 = *(v0 + 776);

    v14 = v13;
LABEL_11:
    sub_221E9CFE8(v14, &qword_27CFEB918, &unk_221FB82A0);
LABEL_12:
    v26 = *(v0 + 1136);
    v27 = *(v0 + 1128);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 1104);
    v30 = *(v0 + 1024);
    v31 = *(v0 + 1000);
    v32 = *(v0 + 976);
    v33 = *(v0 + 968);
    v77 = *(v0 + 928);
    v79 = *(v0 + 1088);
    v82 = *(v0 + 920);
    v73 = *(v0 + 880);
    v75 = *(v0 + 984);
    sub_221EA4994();
    swift_allocError();
    *v34 = 40;
    swift_willThrow();

    v35 = *(v0 + 832);
    v36 = *(v0 + 816);
    v37 = *(v0 + 808);
    v38 = *(v0 + 784);
    v39 = *(v0 + 776);
    v40 = *(v0 + 768);
    v41 = *(v0 + 760);
    v72 = *(v0 + 752);
    v74 = *(v0 + 744);
    v76 = *(v0 + 720);
    v78 = *(v0 + 696);
    v80 = *(v0 + 688);
    v83 = *(v0 + 664);
    v42 = *(v0 + 648);
    v43 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v44 = sub_221FB5BF8();
    [v43 removePlaceholderWithContactUUID:v44 shouldNotify:0];

    v45 = sub_221FB64C8();
    (*(*(v45 - 8) + 56))(v38, 1, 1, v45);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v35;

    sub_221FA7A78(0, 0, v38, &unk_221FC0308, v46);

    v47 = *(v0 + 8);

    return v47();
  }

  v15 = *(v0 + 1128);
  v16 = *(v0 + 776);
  sub_221FB5AB8();
  v81 = v8[1];
  v81(v16, v7);
  v17 = [v15 &selRef_preferredReachableService];
  if (v17)
  {
    v18 = *(v0 + 752);
    v19 = v17;
    sub_221FB5AD8();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v0 + 760);
  v22 = *(v0 + 752);
  v9(v22, v20, 1, v7);
  sub_221E9CF08(v22, v21);
  if (v10(v21, 1, v7) == 1)
  {
    v23 = *(v0 + 944);
    v24 = *(v0 + 904);
    v25 = *(v0 + 760);

    v14 = v25;
    goto LABEL_11;
  }

  v49 = *(v0 + 760);
  sub_221FB5AB8();
  v81(v49, v7);
  v50 = [objc_allocWithZone(MEMORY[0x277CE90C8]) init];
  *(v0 + 1168) = v50;
  if (!v50)
  {
    v70 = *(v0 + 944);
    v71 = *(v0 + 904);

    goto LABEL_12;
  }

  v51 = v50;
  v52 = *(v0 + 1136);
  v53 = *(v0 + 968);
  v54 = *(v0 + 928);
  v55 = *(v0 + 824);
  v56 = sub_221FB62E8();

  [v51 setActivityShareURL_];

  v57 = sub_221FB62E8();

  [v51 setRelationshipShareURL_];

  *(v0 + 632) = v52;
  v58 = v52;

  v59 = v53;
  v60 = sub_221FB61B8();
  v61 = sub_221FB65C8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v0 + 968);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    *(v63 + 4) = v62;
    *v64 = v62;
    v65 = v62;
    _os_log_impl(&dword_221E93000, v60, v61, "Accepting secure cloud share %@", v63, 0xCu);
    sub_221E9CFE8(v64, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v64, -1, -1);
    MEMORY[0x223DADA80](v63, -1, -1);
  }

  v66 = *(v0 + 656);

  __swift_project_boxed_opaque_existential_0Tm((v66 + 344), *(v66 + 368));
  v67 = swift_task_alloc();
  *(v0 + 1176) = v67;
  *v67 = v0;
  v67[1] = sub_221FADC68;
  v68 = *(v0 + 968);
  v69 = *(v0 + 856);

  return sub_221E98A68(v68, v69);
}

uint64_t sub_221FAD9F8()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v30 = *(v0 + 1104);
  v32 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 928);
  v28 = *(v0 + 920);
  v9 = *(v0 + 880);

  v10 = *(v0 + 832);
  v11 = *(v0 + 816);
  v12 = *(v0 + 808);
  v13 = *(v0 + 784);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(v0 + 720);
  v27 = *(v0 + 696);
  v29 = *(v0 + 688);
  v31 = *(v0 + 664);
  v33 = *(v0 + 1160);
  v17 = *(v0 + 648);
  v18 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC0300, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221FADC68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1176);
  v9 = *v2;
  v3[148] = a1;
  v3[149] = v1;

  if (v1)
  {
    v5 = v3[118];
    v6 = v3[113];

    v7 = sub_221FADFE0;
  }

  else
  {
    v7 = sub_221FADD94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221FADD94()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 976);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1136);
    v6 = *(v0 + 976);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    *(v7 + 14) = v5;
    *v8 = v6;
    v8[1] = v5;
    v9 = v5;
    v10 = v6;
    _os_log_impl(&dword_221E93000, v3, v4, "Accepting legacy share locations %@ relationship %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v11 = *(v0 + 1136);
  v12 = *(v0 + 976);
  v13 = *(v0 + 856);
  v14 = *(v0 + 656);

  v15 = *__swift_project_boxed_opaque_existential_0Tm((v14 + 184), *(v14 + 208));
  v16 = v11;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 608;
  *(v0 + 152) = sub_221FAE254;
  v17 = swift_continuation_init();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  *(v0 + 400) = MEMORY[0x277D85DD0];
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_221FB046C;
  *(v0 + 424) = &block_descriptor_117;
  *(v0 + 432) = v17;
  [v15 acceptShares:v12 forRelationship:v16 contact:0 cloudKitGroup:v13 completion:v0 + 400];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_221FADFE0()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v28 = *(v0 + 1088);
  v30 = *(v0 + 1104);
  v4 = *(v0 + 1024);
  v32 = *(v0 + 1000);
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 920);
  v9 = *(v0 + 880);

  v10 = *(v0 + 832);
  v11 = *(v0 + 816);
  v12 = *(v0 + 808);
  v13 = *(v0 + 784);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v24 = *(v0 + 752);
  v25 = *(v0 + 744);
  v26 = *(v0 + 720);
  v27 = *(v0 + 696);
  v29 = *(v0 + 688);
  v31 = *(v0 + 664);
  v33 = *(v0 + 1192);
  v17 = *(v0 + 648);
  v18 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC0310, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221FAE254()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 1200) = v3;
  if (v3)
  {
    v4 = *(v1 + 944);
    v5 = *(v1 + 904);

    v6 = sub_221FAE378;
  }

  else
  {
    v6 = sub_221FAE610;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221FAE378()
{
  v1 = v0[150];
  v2 = v0[148];
  v3 = v0[146];
  v4 = v0[142];
  v5 = v0[141];
  v6 = v0[140];
  v7 = v0[138];
  v25 = v0[128];
  v27 = v0[125];
  v8 = v0[122];
  v9 = v0[121];
  v33 = v0[115];
  v35 = v0[136];
  v29 = v0[110];
  v31 = v0[123];
  swift_willThrow();

  v10 = v0[104];
  v11 = v0[102];
  v12 = v0[101];
  v13 = v0[98];
  v14 = v0[97];
  v15 = v0[96];
  v16 = v0[95];
  v24 = v0[94];
  v26 = v0[93];
  v28 = v0[90];
  v30 = v0[87];
  v32 = v0[86];
  v34 = v0[83];
  v36 = v0[150];
  v17 = v0[81];
  v18 = *__swift_project_boxed_opaque_existential_0Tm((v0[82] + 224), *(v0[82] + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC0320, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_221FAE610()
{
  v1 = v0[148];
  v28 = v0[146];
  v2 = v0[142];
  v30 = v0[138];
  v3 = v0[136];
  v40 = v0[117];
  v41 = v0[118];
  v4 = v0[115];
  v31 = v0[113];
  v29 = v0[112];
  v39 = v0[106];
  v42 = v0[103];
  v35 = v0[101];
  v36 = v0[100];
  v5 = v0[92];
  v37 = v0[90];
  v38 = v0[99];
  v26 = v0[93];
  v27 = v0[87];
  v32 = v0[86];
  v6 = v0[85];
  v33 = v0[84];
  v34 = v0[91];
  v7 = v0[83];
  v8 = v0[82];

  v9 = v0[77];
  v0[151] = v9;
  swift_beginAccess();
  v0[79] = v9;

  v10 = v4;
  v11 = [v3 recordID];
  [v10 setRelationshipZoneShareID_];

  [v10 setRemoteRelationshipZoneShareID_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 insertEventWithType_];
  [v10 setReceivedInvitation_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  [v9 insertEventWithType_];
  v12 = *__swift_project_boxed_opaque_existential_0Tm(v8, v8[3]);
  v13 = ASMakeActivityDataPreviewWithManager();
  v0[152] = v13;
  v14 = v13;
  v15 = v28;
  v16 = v30;
  sub_221FB6028();
  sub_221FB5BB8();
  (*(v6 + 104))(v32, *MEMORY[0x277CE9470], v33);
  (*(v5 + 16))(v7, v26, v34);
  (*(v5 + 56))(v7, 0, 1, v34);
  sub_221FB5C28();
  sub_221FB5BE8();
  v39(v35, v38);
  sub_221FB5FB8();
  v17 = sub_221FB61B8();
  v18 = sub_221FB65C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_221E93000, v17, v18, "Sending accept response", v19, 2u);
    MEMORY[0x223DADA80](v19, -1, -1);
  }

  v20 = v0[82];

  v21 = *__swift_project_boxed_opaque_existential_0Tm((v20 + 144), *(v20 + 168));
  v22 = swift_task_alloc();
  v0[153] = v22;
  *v22 = v0;
  v22[1] = sub_221FAEA38;
  v23 = v0[123];
  v24 = v0[90];

  return (sub_221FA8884)(v23, v24, 1104);
}

uint64_t sub_221FAEA38()
{
  v2 = *(*v1 + 1224);
  v5 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = sub_221FAECDC;
  }

  else
  {
    v3 = sub_221FAEB4C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FAEB4C()
{
  v1 = v0[103];
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[115];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Pushing secure cloud relationship %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v8 = v0[115];
  v9 = v0[82];

  __swift_project_boxed_opaque_existential_0Tm((v9 + 304), *(v9 + 328));
  v10 = v8;
  v11 = swift_task_alloc();
  v0[155] = v11;
  *v11 = v0;
  v11[1] = sub_221FAEFCC;
  v12 = v0[115];
  v13 = v0[107];

  return sub_221EBAEA8(v12, 0, v13, 0);
}

uint64_t sub_221FAECDC()
{
  v1 = *(v0 + 1216);
  v41 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1168);
  v24 = *(v0 + 1136);
  v25 = *(v0 + 1128);
  v26 = *(v0 + 1120);
  v27 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v31 = *(v0 + 1104);
  v33 = *(v0 + 1000);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 880);
  v37 = *(v0 + 744);
  v39 = *(v0 + 920);
  v8 = *(v0 + 736);
  v35 = *(v0 + 728);
  v9 = *(v0 + 712);
  v28 = *(v0 + 704);
  v29 = *(v0 + 720);

  (*(v9 + 8))(v29, v28);
  (*(v8 + 8))(v37, v35);

  v42 = *(v0 + 1232);
  v10 = *(v0 + 832);
  v11 = *(v0 + 816);
  v12 = *(v0 + 808);
  v13 = *(v0 + 784);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v30 = *(v0 + 752);
  v32 = *(v0 + 744);
  v34 = *(v0 + 720);
  v36 = *(v0 + 696);
  v38 = *(v0 + 688);
  v40 = *(v0 + 664);
  v17 = *(v0 + 648);
  v18 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC0330, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221FAEFCC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1240);
  v6 = *v2;
  *(v4 + 1248) = a1;
  *(v4 + 1256) = v1;

  if (v1)
  {
    v7 = sub_221FAF724;
  }

  else
  {
    v7 = sub_221FAF10C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221FAF10C()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 920);
  v3 = *(v0 + 824);
  swift_beginAccess();
  *(v0 + 624) = v1;

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Pushing legacy relationship %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 1208);
  v11 = *(v0 + 656);

  v12 = __swift_project_boxed_opaque_existential_0Tm((v11 + 304), *(v11 + 328));
  if ([v10 cloudType])
  {
    v13 = *(v0 + 824);
    v14 = *(v0 + 1208);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 1208);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_221E93000, v15, v16, "Attempting to save secure cloud relationship to legacy container %@", v18, 0xCu);
      sub_221E9CFE8(v19, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v21 = 11;
    swift_willThrow();
    v65 = *(v0 + 1248);
    v22 = *(v0 + 1216);
    v23 = *(v0 + 1184);
    v24 = *(v0 + 1168);
    v49 = *(v0 + 1136);
    v50 = *(v0 + 1128);
    v51 = *(v0 + 1120);
    v52 = *(v0 + 1088);
    v25 = *(v0 + 1024);
    v57 = *(v0 + 1000);
    v59 = *(v0 + 1208);
    v26 = *(v0 + 976);
    v27 = *(v0 + 968);
    v28 = *(v0 + 880);
    v29 = *(v0 + 736);
    v61 = *(v0 + 728);
    v63 = *(v0 + 744);
    v54 = *(v0 + 720);
    v55 = *(v0 + 1104);
    v30 = *(v0 + 712);
    v53 = *(v0 + 704);

    (*(v30 + 8))(v54, v53);
    (*(v29 + 8))(v63, v61);

    v31 = *(v0 + 832);
    v32 = *(v0 + 816);
    v33 = *(v0 + 808);
    v34 = *(v0 + 784);
    v35 = *(v0 + 776);
    v36 = *(v0 + 768);
    v37 = *(v0 + 760);
    v56 = *(v0 + 752);
    v58 = *(v0 + 744);
    v60 = *(v0 + 720);
    v62 = *(v0 + 696);
    v64 = *(v0 + 688);
    v66 = *(v0 + 664);
    v38 = *(v0 + 648);
    v39 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
    v40 = sub_221FB5BF8();
    [v39 removePlaceholderWithContactUUID:v40 shouldNotify:0];

    v41 = sub_221FB64C8();
    (*(*(v41 - 8) + 56))(v34, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v31;

    sub_221FA7A78(0, 0, v34, &unk_221FC0340, v42);

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    v45 = *(v0 + 1208);
    v46 = *(v0 + 856);
    v47 = *__swift_project_boxed_opaque_existential_0Tm(v12 + 6, v12[9]);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 640;
    *(v0 + 216) = sub_221FAFA14;
    v48 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_221EF4C50;
    *(v0 + 488) = &block_descriptor_142;
    *(v0 + 496) = v48;
    [v47 saveRelationship:v45 contact:0 cloudKitGroup:v46 activity:0 completion:v0 + 464];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221FAF724()
{
  v1 = *(v0 + 1216);
  v41 = *(v0 + 1208);
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1168);
  v24 = *(v0 + 1136);
  v25 = *(v0 + 1128);
  v26 = *(v0 + 1120);
  v27 = *(v0 + 1088);
  v4 = *(v0 + 1024);
  v31 = *(v0 + 1104);
  v33 = *(v0 + 1000);
  v5 = *(v0 + 976);
  v6 = *(v0 + 968);
  v7 = *(v0 + 880);
  v37 = *(v0 + 744);
  v39 = *(v0 + 920);
  v8 = *(v0 + 736);
  v35 = *(v0 + 728);
  v9 = *(v0 + 712);
  v28 = *(v0 + 704);
  v29 = *(v0 + 720);

  (*(v9 + 8))(v29, v28);
  (*(v8 + 8))(v37, v35);

  v42 = *(v0 + 1256);
  v10 = *(v0 + 832);
  v11 = *(v0 + 816);
  v12 = *(v0 + 808);
  v13 = *(v0 + 784);
  v14 = *(v0 + 776);
  v15 = *(v0 + 768);
  v16 = *(v0 + 760);
  v30 = *(v0 + 752);
  v32 = *(v0 + 744);
  v34 = *(v0 + 720);
  v36 = *(v0 + 696);
  v38 = *(v0 + 688);
  v40 = *(v0 + 664);
  v17 = *(v0 + 648);
  v18 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v19 = sub_221FB5BF8();
  [v18 removePlaceholderWithContactUUID:v19 shouldNotify:0];

  v20 = sub_221FB64C8();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v10;

  sub_221FA7A78(0, 0, v13, &unk_221FC0338, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221FAFA14()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1264) = v2;
  if (v2)
  {
    v3 = sub_221FAFF74;
  }

  else
  {
    v3 = sub_221FAFB24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FAFB24()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 824);
  v50 = *(v0 + 640);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Clearing sharing items and locations", v5, 2u);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v6 = *(v0 + 880);
  v7 = *(v0 + 872);
  v8 = *(v0 + 824);

  [v6 setPendingRelationshipShareItem_];
  [v6 setPendingLegacyShareLocations_];
  [v7 saveContact_];
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1248);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v11;
    *v13 = v11;
    v14 = v11;
    _os_log_impl(&dword_221E93000, v9, v10, "Accepted request for %@", v12, 0xCu);
    sub_221E9CFE8(v13, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  v39 = *(v0 + 1248);
  v15 = *(v0 + 1216);
  v16 = *(v0 + 1184);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1136);
  v27 = *(v0 + 1128);
  v28 = *(v0 + 1120);
  v36 = *(v0 + 1104);
  v37 = *(v0 + 1000);
  v29 = *(v0 + 1088);
  v30 = *(v0 + 984);
  v19 = *(v0 + 976);
  v20 = *(v0 + 968);
  v32 = *(v0 + 880);
  v40 = *(v0 + 832);
  v41 = *(v0 + 816);
  v38 = *(v0 + 784);
  v42 = *(v0 + 808);
  v43 = *(v0 + 776);
  v44 = *(v0 + 768);
  v45 = *(v0 + 760);
  v46 = *(v0 + 752);
  v21 = *(v0 + 736);
  v34 = *(v0 + 728);
  v35 = *(v0 + 744);
  v33 = *(v0 + 720);
  v22 = *(v0 + 712);
  v31 = *(v0 + 704);
  v47 = *(v0 + 696);
  v48 = *(v0 + 688);
  v49 = *(v0 + 664);

  (*(v22 + 8))(v33, v31);
  (*(v21 + 8))(v35, v34);

  v23 = sub_221FB64C8();
  (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v40;

  sub_221FA7A78(0, 0, v38, &unk_221FC0350, v24);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221FAFF74()
{
  v1 = *(v0 + 1264);
  swift_willThrow();
  v43 = *(v0 + 1264);
  v41 = *(v0 + 1248);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1168);
  v25 = *(v0 + 1136);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1120);
  v28 = *(v0 + 1088);
  v5 = *(v0 + 1024);
  v33 = *(v0 + 1000);
  v35 = *(v0 + 1208);
  v6 = *(v0 + 976);
  v7 = *(v0 + 968);
  v8 = *(v0 + 880);
  v9 = *(v0 + 736);
  v37 = *(v0 + 728);
  v39 = *(v0 + 744);
  v30 = *(v0 + 720);
  v31 = *(v0 + 1104);
  v10 = *(v0 + 712);
  v29 = *(v0 + 704);

  (*(v10 + 8))(v30, v29);
  (*(v9 + 8))(v39, v37);

  v11 = *(v0 + 832);
  v12 = *(v0 + 816);
  v13 = *(v0 + 808);
  v14 = *(v0 + 784);
  v15 = *(v0 + 776);
  v16 = *(v0 + 768);
  v17 = *(v0 + 760);
  v32 = *(v0 + 752);
  v34 = *(v0 + 744);
  v36 = *(v0 + 720);
  v38 = *(v0 + 696);
  v40 = *(v0 + 688);
  v42 = *(v0 + 664);
  v18 = *(v0 + 648);
  v19 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v20 = sub_221FB5BF8();
  [v19 removePlaceholderWithContactUUID:v20 shouldNotify:0];

  v21 = sub_221FB64C8();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v11;

  sub_221FA7A78(0, 0, v14, &unk_221FC0340, v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_221FB0270()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 760);
  v15 = *(v0 + 752);
  v16 = *(v0 + 744);
  v17 = *(v0 + 720);
  v18 = *(v0 + 696);
  v19 = *(v0 + 688);
  v20 = *(v0 + 664);
  v21 = *(v0 + 912);
  v8 = *(v0 + 648);
  v9 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 656) + 224), *(*(v0 + 656) + 248));
  v10 = sub_221FB5BF8();
  [v9 removePlaceholderWithContactUUID:v10 shouldNotify:0];

  v11 = sub_221FB64C8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_221FA7A78(0, 0, v4, &unk_221FBACA8, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_221FB046C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a4;
    v12 = a4;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FB0554(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v12 = swift_allocError();
    *v13 = a3;
    v14 = a3;

    return MEMORY[0x282200958](v11, v12);
  }

  else
  {
    v15 = *(*(v11 + 64) + 40);
    *v15 = a2;
    *(v15 + 8) = a4;
    *(v15 + 16) = a5;
    *(v15 + 24) = a6;
    v16 = a4;
    v17 = a5;
    v18 = a6;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221FB064C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221FB0744;

  return v7(a1);
}

uint64_t sub_221FB0744()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_221FB083C()
{
  result = qword_27CFEC268;
  if (!qword_27CFEC268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFEC268);
  }

  return result;
}

uint64_t sub_221FB0894(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221FB064C(a1, v5);
}

uint64_t sub_221FB094C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_221FB0A40;

  return v6(v2 + 32);
}

uint64_t sub_221FB0A40()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_221FB0B54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221FB094C(a1, v5);
}

uint64_t sub_221FB0C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221FB0C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
      *(result + 384) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221FB0D2C()
{
  v1 = v0;
  v2 = *(v0 + 128);
  if (v2)
  {
    v3 = qword_281307080;
    swift_unknownObjectRetain();
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    swift_unknownObjectRetain();
    v5 = sub_221FB61B8();
    v6 = sub_221FB65B8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = [v2 description];
      v10 = sub_221FB6318();
      v12 = v11;

      v13 = sub_221EF4114(v10, v12, &v18);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_221E93000, v5, v6, "Runtime transaction deinit before invalidation: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v14 = *(v1 + 128);
  *(v1 + 128) = 0;
  swift_unknownObjectRelease();
  v15 = *(v1 + 120);

  v16 = *(v1 + 128);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_221FB0F08()
{
  sub_221FB0D2C();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221FB0F6C()
{
  result = qword_27CFECBE8;
  if (!qword_27CFECBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECBE8);
  }

  return result;
}

void sub_221FB100C(uint64_t a1)
{
  v1 = a1;
  v29 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    sub_221FB6538();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = v3;
  v9 = &off_278497000;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v12 = v23) == 0))
    {
LABEL_25:
      sub_221E96470();
      return;
    }

LABEL_18:
    v13 = [v12 v9[294]];
    v14 = [v13 secureCloudRemoteRelationship];

    LODWORD(v13) = [v14 secureCloudMigrationCompleted];
    if (!v13)
    {
      goto LABEL_8;
    }

    v15 = [v12 v9[294]];
    v16 = [v15 secureCloudRelationship];

    LOBYTE(v15) = [v16 secureCloudDowngradeCompleted];
    if (v15)
    {
      goto LABEL_8;
    }

    v17 = [v12 v9[294]];
    v18 = [v17 legacyRelationship];

    v19 = [v18 remoteActivityDataShareID];
    v9 = &off_278497000;
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = [v19 zoneID];

    if (v20)
    {

      MEMORY[0x223DAC7E0]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
        v9 = &off_278497000;
      }

      sub_221FB6478();
    }

    else
    {
LABEL_8:
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_221FB13B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureCloudKitDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221FB155C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000084, 0x8000000221FC4D70, 0xD000000000000025, 0x8000000221FC4E30);
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *(v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 24));
  v3 = *(*v2 + 16);
  MEMORY[0x28223BE20](v2);

  os_unfair_lock_lock((v3 + 24));
  sub_221F416F0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

id sub_221FB16FC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000084, 0x8000000221FC4D70, 0xD000000000000021, 0x8000000221FC4E00);
  v2 = *(*__swift_project_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore), *(v0 + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_serverChangeTokenCacheStore + 24)) + 16);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));

  return v3;
}

uint64_t sub_221FB1AE8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *aBlock, void *a8)
{
  v8[5] = a5;
  v8[6] = a8;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  v8[7] = _Block_copy(aBlock);
  sub_221E9D138(0, &unk_27CFECC70, 0x277CE9530);
  v15 = sub_221FB6288();
  v8[8] = v15;
  v16 = a1;
  v17 = a2;
  swift_unknownObjectRetain();
  v18 = a5;
  a8;
  v19 = swift_task_alloc();
  v8[9] = v19;
  *v19 = v8;
  v19[1] = sub_221FB1C54;

  return sub_221FB2B1C(v17, a3, a4, v18, v15);
}

uint64_t sub_221FB1C54(char a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  swift_unknownObjectRelease();

  v13 = *(v4 + 56);
  if (v3)
  {
    v14 = sub_221FB5A98();

    (v13)[2](v13, 0, v14, 0);
    _Block_release(v13);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v15 = sub_221FB6428();
    (v13)[2](v13, a1 & 1, 0, v15);

    _Block_release(v13);
  }

  v16 = *(v12 + 8);

  return v16();
}

uint64_t sub_221FB2088(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock, void *a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a4;
  v7[2] = a1;
  v7[7] = _Block_copy(aBlock);
  v14 = a1;
  v15 = a2;
  swift_unknownObjectRetain();
  v16 = a5;
  a7;
  v17 = swift_task_alloc();
  v7[8] = v17;
  *v17 = v7;
  v17[1] = sub_221FB21AC;

  return sub_221FB31FC(v15, a3, a4, v16);
}

uint64_t sub_221FB21AC(char a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v11 = *v2;

  swift_unknownObjectRelease();
  v12 = *(v4 + 56);
  if (v1)
  {
    v13 = sub_221FB5A98();

    (v12)[2](v12, 0, v13, 0);
    _Block_release(v12);
  }

  else
  {
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v14 = sub_221FB6428();
    (v12)[2](v12, a1 & 1, 0, v14);

    _Block_release(v12);
  }

  v15 = *(v11 + 8);

  return v15();
}

uint64_t sub_221FB2400()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_221E9544C;

  return sub_221FB2088(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_221FB24DC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_221E963B4;

  return v7();
}

uint64_t sub_221FB25C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_221E9544C;

  return v8();
}

uint64_t sub_221FB26AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_221EEDBF0(a3, v25 - v11);
  v13 = sub_221FB64C8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_221EEDC60(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_221FB64B8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_221FB6488();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_221FB6338() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_221EEDC60(a3);

    return v23;
  }

LABEL_8:
  sub_221EEDC60(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_221FB2968(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221FB064C(a1, v5);
}

uint64_t sub_221FB2A20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E9544C;

  return sub_221FB064C(a1, v5);
}

id sub_221FB2AD8(id *a1, void **a2)
{
  v3 = *a2;

  *a1 = v3;
  return v3;
}

uint64_t sub_221FB2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  return MEMORY[0x2822009F8](sub_221FB2B44, 0, 0);
}

uint64_t sub_221FB2B44()
{
  v1 = v0[23];
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0[26] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService), *(v0[26] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService + 24));
  type metadata accessor for XPCActivityContainer();
  v3 = swift_allocObject();
  v4 = v3;
  if (v1)
  {
    v5 = v0[23];
    *(v3 + 16) = v5;
    v15 = *v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    swift_deallocPartialClassInstance();
    v4 = 0;
    v5 = 0;
    v15 = *v2;
  }

  v0[27] = v4;
  v0[28] = v5;
  v6 = v0[25];
  v14 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  v9 = sub_221FB6428();
  v0[29] = v9;
  v10 = sub_221FB6428();
  v0[30] = v10;
  sub_221E9D138(0, &unk_27CFECC70, 0x277CE9530);
  v11 = sub_221FB6278();
  v0[31] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221FB2DA8;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECC80, &unk_221FBA7B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE370C;
  v0[13] = &block_descriptor_37;
  v0[14] = v12;
  [v15 fetchChangesInPrivateDatabaseWithServerChangeTokenCache:v8 priority:v7 activity:v5 group:v14 additionalZoneIDs:v9 zoneIDsToSkip:v10 fetchConfigurations:v11 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB2DA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_221FB3158;
  }

  else
  {
    v3 = sub_221FB2EB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FB2EB8()
{
  v29 = v0;
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[19];
  v5 = v0[20];

  swift_unknownObjectRelease();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);

  v9 = v7;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 134349314;
    if (v6 >> 62)
    {
      v14 = sub_221FB6868();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v0[24];
    *(v12 + 4) = v14;

    *(v12 + 12) = 2080;
    v16 = [v15 name];
    if (v16)
    {
      v17 = v16;
      v18 = sub_221FB6318();
      v20 = v19;

      v0[10] = 0;
      v0[11] = 0xE000000000000000;
      v0[18] = v18;
      v0[19] = v20;
      sub_221FB6A08();

      v21 = v0[10];
      v22 = v0[11];
    }

    else
    {
      v22 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = v0[27];
    v25 = sub_221EF4114(v21, v22, &v28);

    *(v12 + 14) = v25;
    _os_log_impl(&dword_221E93000, v10, v11, "Fetched %{public}ld records from secure cloud private database, group: %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {
    v23 = v0[27];
  }

  v26 = v0[1];

  return v26(1, v6);
}

uint64_t sub_221FB3158()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  swift_willThrow();

  swift_unknownObjectRelease();

  v7 = v0[1];
  v8 = v0[32];

  return v7(0);
}

uint64_t sub_221FB31FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221FB3224, 0, 0);
}

uint64_t sub_221FB3224()
{
  v1 = v0[4];
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0[6] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService), *(v0[6] + OBJC_IVAR____TtC23ActivitySharingServices22SecureCloudKitDelegate_secureCloudFetchService + 24));
  type metadata accessor for XPCActivityContainer();
  v3 = swift_allocObject();
  if (v1)
  {
    *(v3 + 16) = v0[4];
  }

  else
  {
    swift_deallocPartialClassInstance();
    v3 = 0;
  }

  v0[7] = v3;
  v4 = *v2;
  v5 = v3;
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_221FB3340;
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_221EE383C(v9, v8, v7, v5, v4);
}

uint64_t sub_221FB3340(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  v7 = *(v4 + 56);

  v9 = *(v6 + 8);
  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
    v8 = a1;
  }

  return v9(v10, v8);
}

uint64_t sub_221FB3474()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_221E963B4;

  return sub_221FB1AE8(v2, v3, v4, v5, v6, v7, v9, v8);
}

id sub_221FB35B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 activityDataManager];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 cloudKitManager];
    if (v6)
    {
      v7 = v6;
      v8 = [a1 contactsManager];
      if (v8)
      {
        v9 = v8;
        v10 = [a1 competitionManager];
        if (v10)
        {
          v11 = v10;
          v12 = [a1 friendListManager];
          if (v12)
          {
            v13 = v12;
            v14 = [a1 friendInviteBulletinManager];
            if (v14)
            {
              v15 = v14;
              v51 = [a1 gatewayManager];
              if (v51)
              {
                v16 = [a1 periodicUpdateManager];
                if (v16)
                {
                  v49 = v16;
                  v50 = v15;
                  v17 = [a1 relationshipManager];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = *MEMORY[0x277CE9340];
                    v39 = sub_221FB6318();
                    v45 = v18;
                    v46 = v20;
                    v42 = [v18 messageCenters];
                    sub_221FB3A70();
                    v21 = sub_221FB6288();

                    if (*(v21 + 16))
                    {
                      v43 = v21;
                      v40 = sub_221ED4B5C(v39, v46);
                      v23 = v22;

                      if (v23)
                      {
                        v41 = *(*(v43 + 56) + 8 * v40);

                        v24 = *MEMORY[0x277CE9348];
                        v37 = sub_221FB6318();
                        v47 = v25;
                        v26 = [v45 messageCenters];
                        v44 = sub_221FB6288();

                        if (*(v44 + 16))
                        {
                          v38 = sub_221ED4B5C(v37, v47);
                          v28 = v27;

                          if (v28)
                          {
                            v48 = *(*(v44 + 56) + 8 * v38);

                            v29 = a1;
                            v30 = [v29 databaseClient];
                            result = [v29 fitnessAppsStateObserver];
                            *a2 = v29;
                            a2[1] = v5;
                            a2[2] = v7;
                            a2[3] = v11;
                            a2[4] = v9;
                            a2[5] = v30;
                            a2[6] = result;
                            a2[7] = v13;
                            a2[8] = v50;
                            a2[9] = v41;
                            a2[10] = v48;
                            a2[11] = v51;
                            a2[12] = v49;
                            a2[13] = v45;
                            return result;
                          }
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }
                    }

                    else
                    {
                    }

                    v33 = v49;
                    v35 = v50;
                    v34 = v51;
                    v36 = v13;
                  }

                  else
                  {
                    v33 = v5;
                    v34 = v7;
                    v35 = v9;
                    v36 = v11;
                    v11 = v13;
                    v5 = v49;
                    v9 = v50;
                    v7 = v51;
                  }

                  v32 = v5;
                  v13 = v9;

                  v5 = v34;
                  v15 = v7;
                  v7 = v35;
                  v9 = v36;
                }

                else
                {
                  v32 = v51;
                }

                v5 = v7;
                v7 = v9;
                v9 = v11;
                v11 = v13;
                v13 = v15;
                v15 = v32;
              }

              v5 = v7;
              v7 = v9;
              v9 = v11;
              v11 = v13;
              v13 = v15;
            }

            v5 = v7;
            v7 = v9;
            v9 = v11;
            v11 = v13;
          }

          v5 = v7;
          v7 = v9;
          v9 = v11;
        }

        v5 = v7;
        v7 = v9;
      }

      v5 = v7;
    }
  }

  sub_221FB3A1C();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_221FB3A1C()
{
  result = qword_27CFECC88;
  if (!qword_27CFECC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECC88);
  }

  return result;
}

unint64_t sub_221FB3A70()
{
  result = qword_281306EB0;
  if (!qword_281306EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281306EB0);
  }

  return result;
}

uint64_t sub_221FB3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_221E96070;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221FB3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB3EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221FB4004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221FB412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221FB4254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221FB4384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221FB44B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221FB44B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_221FB45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E963B4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221FB4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 80);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_221E963B4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221FB4868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221FB49A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221FB4AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9606C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221FB4C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221FB4D30(__int16 a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  *(v3 + 176) = a1;
  return MEMORY[0x2822009F8](sub_221FB4D54, 0, 0);
}

uint64_t sub_221FB4D54()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 176);
  v4 = sub_221FB5BF8();
  *(v0 + 160) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 178;
  *(v0 + 24) = sub_221FB4E94;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221FA909C;
  *(v0 + 104) = &block_descriptor_35;
  *(v0 + 112) = v5;
  [v2 insertRemoteEventType:v3 onContactWithUUID:v4 cloudType:1 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221FB4E94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_221EF4BE0;
  }

  else
  {
    v3 = sub_221F6D05C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FB4FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  return MEMORY[0x2822009F8](sub_221FB4FC8, 0, 0);
}

uint64_t sub_221FB4FC8()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221FB50FC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECBD8, &qword_221FC02E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FB0554;
  v0[13] = &block_descriptor_38;
  v0[14] = v4;
  [v1 saveRelationshipAndFetchOrCreateShares:v3 contact:v2 cloudKitGroup:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB50FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_221FB522C;
  }

  else
  {
    v3 = sub_221FB520C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FB522C()
{
  v1 = *(v0 + 200);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 200);

  return v2();
}

uint64_t sub_221FB52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  return MEMORY[0x2822009F8](sub_221FB52D4, 0, 0);
}

uint64_t sub_221FB52D4()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_221FB62E8();
  v0[25] = v4;
  if (v1)
  {
    v5 = v0[20];
    v6 = v0[21];
    v1 = sub_221FB62E8();
  }

  v0[26] = v1;
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[22];
  v10 = sub_221FB62E8();
  v0[27] = v10;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_221FB5440;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_31;
  v0[14] = v11;
  [v8 sendInviteToPersonWithDestination:v4 callerID:v1 serviceIdentifier:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221FB5440()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_221FB55C0;
  }

  else
  {
    v3 = sub_221FB5550;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FB5550()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221FB55C0()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_221FB5644(char a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v4 + 192) = a3;
  *(v4 + 152) = a2;
  *(v4 + 160) = a4;
  *(v4 + 194) = a1;
  return MEMORY[0x2822009F8](sub_221FB566C, 0, 0);
}

uint64_t sub_221FB566C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 194);
  v5 = sub_221FB5BF8();
  *(v0 + 168) = v5;
  v6 = ASCloudKitGroupUserActionExplicit();
  *(v0 + 176) = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_221FB57D0;
  v7 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF4C50;
  *(v0 + 104) = &block_descriptor_39;
  *(v0 + 112) = v7;
  [v3 setActivityDataVisible:v4 toFriendWithUUID:v5 eventType:v1 cloudKitGroup:v6 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221FB57D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_221EBEA9C;
  }

  else
  {
    v3 = sub_221FB58E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221FB58E0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}
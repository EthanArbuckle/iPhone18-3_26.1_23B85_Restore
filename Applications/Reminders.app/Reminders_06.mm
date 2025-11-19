id sub_1000AE6AC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_timeZoneOverrideChangedObserver] = 0;
  v5 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v2[v5], 1, 1, v6);
  v8 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel;
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  *&v2[v8] = TTRAccountsListsViewModel.init()();
  v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition] = 2;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController] = 0;
  v9 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
  *v9 = 0;
  v9[1] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___searchButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton] = 0;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuWithBadgeButton] = 0;
  v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172] = 1;
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_accountSpinnerVisibleByAccountID] = &_swiftEmptyDictionarySingleton;
  v10 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration];
  v10[2] = -2;
  *v10 = -258;
  v11 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker;
  type metadata accessor for TTRIAccountsListsDropExceedsMaximumNumberOfPinnedListsTracker();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v2[v11] = v12;
  v7(&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_lastAppliedSelection], 1, 1, v6);
  sub_1001013F4(&qword_10076BE40, type metadata accessor for TTRIAccountsListsViewController);
  static TTRTypedController.currentArgument.getter();
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] = v17[1];
  v17[0].receiver = v2;
  v17[0].super_class = ObjectType;
  v13 = [(objc_super *)v17 initWithCoder:a1];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    sub_1000AE568();
  }

  return v14;
}

id sub_1000AE95C()
{
  ObjectType = swift_getObjectType();
  v2 = v0;
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + qword_10078A548);
      if (v6)
      {
        v7 = v6;
        sub_1003BBE48();
      }
    }
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsViewController()
{
  result = qword_10076B3B8;
  if (!qword_10076B3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AEC7C()
{
  v189.receiver = v0;
  v189.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v189, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_134;
  }

  v2 = v1;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_131;
  }

  v4 = *(v3 + qword_10078A540);
  if (!v4)
  {
    __break(1u);
    goto LABEL_103;
  }

  type metadata accessor for TTRIAccountsListsViewListCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = v4;
  v7 = String._bridgeToObjectiveC()();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

  v8 = [v0 view];
  if (!v8)
  {
    goto LABEL_134;
  }

  v2 = v8;
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
LABEL_131:

    goto LABEL_134;
  }

  v10 = *(v9 + qword_10078A540);
  if (!v10)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
  v11 = swift_getObjCClassFromMetadata();
  v12 = v10;
  v13 = String._bridgeToObjectiveC()();
  [v12 registerClass:v11 forCellReuseIdentifier:v13];

  v14 = [v0 view];
  if (!v14)
  {
    goto LABEL_134;
  }

  v2 = v14;
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    goto LABEL_131;
  }

  v16 = *(v15 + qword_10078A540);
  if (!v16)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  type metadata accessor for TTRIAccountListsViewGroupCell();
  v17 = swift_getObjCClassFromMetadata();
  v18 = v16;
  v19 = String._bridgeToObjectiveC()();
  [v18 registerClass:v17 forCellReuseIdentifier:v19];

  v20 = [v0 view];
  if (!v20)
  {
    goto LABEL_134;
  }

  v2 = v20;
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_131;
  }

  v22 = *(v21 + qword_10078A540);
  if (!v22)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  type metadata accessor for TTRIRemindersListTipCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = v22;
  v25 = String._bridgeToObjectiveC()();
  [v24 registerClass:v23 forCellReuseIdentifier:v25];

  v26 = [v0 view];
  if (!v26)
  {
    goto LABEL_134;
  }

  v2 = v26;
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    goto LABEL_131;
  }

  v28 = *(v27 + qword_10078A540);
  if (!v28)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  type metadata accessor for TTRIHashtagCollectionCell();
  v29 = swift_getObjCClassFromMetadata();
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();
  [v30 registerClass:v29 forCellReuseIdentifier:v31];

  v32 = [v0 view];
  if (!v32)
  {
    goto LABEL_134;
  }

  v2 = v32;
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    goto LABEL_131;
  }

  v34 = *(v33 + qword_10078A540);
  if (!v34)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  type metadata accessor for TTRIInlinePermissionHeaderViewCell();
  v35 = swift_getObjCClassFromMetadata();
  v36 = v34;
  v37 = String._bridgeToObjectiveC()();
  [v36 registerClass:v35 forCellReuseIdentifier:v37];

  v38 = [v0 view];
  if (!v38)
  {
    goto LABEL_134;
  }

  v2 = v38;
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    goto LABEL_131;
  }

  v40 = *(v39 + qword_10078A540);
  if (!v40)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
  v41 = swift_getObjCClassFromMetadata();
  v42 = v40;
  v43 = String._bridgeToObjectiveC()();
  [v42 registerClass:v41 forCellReuseIdentifier:v43];

  v44 = [v0 view];
  if (!v44)
  {
    goto LABEL_134;
  }

  v2 = v44;
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    goto LABEL_131;
  }

  v46 = *(v45 + qword_10078A540);
  if (!v46)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  sub_100058000(&qword_10076BD18);
  v47 = swift_getObjCClassFromMetadata();
  v48 = v46;
  v49 = String._bridgeToObjectiveC()();
  [v48 registerClass:v47 forCellReuseIdentifier:v49];

  v50 = [v0 view];
  if (!v50)
  {
    goto LABEL_134;
  }

  v2 = v50;
  v51 = swift_dynamicCastClass();
  if (!v51)
  {
    goto LABEL_131;
  }

  v52 = *(v51 + qword_10078A540);
  if (!v52)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  type metadata accessor for TTRIAccountsListsRecentlyDeletedCell();
  v53 = swift_getObjCClassFromMetadata();
  v54 = v52;
  v55 = String._bridgeToObjectiveC()();
  [v54 registerClass:v53 forCellReuseIdentifier:v55];

  v56 = [v0 view];
  if (!v56)
  {
    goto LABEL_134;
  }

  v2 = v56;
  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    goto LABEL_131;
  }

  v58 = *(v57 + qword_10078A540);
  if (!v58)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  type metadata accessor for TTRIAccountsListsSuggestGroceriesCell();
  v59 = swift_getObjCClassFromMetadata();
  v60 = v58;
  v61 = String._bridgeToObjectiveC()();
  [v60 registerClass:v59 forCellReuseIdentifier:v61];

  v62 = [v0 view];
  if (!v62)
  {
    goto LABEL_134;
  }

  v2 = v62;
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    goto LABEL_131;
  }

  v64 = v63;
  static TTRAccesibility.AccountsList.ID.AccountsListTable.getter();
  v65 = String._bridgeToObjectiveC()();

  [v64 setAccessibilityIdentifier:v65];

  v66 = [v0 view];
  if (!v66)
  {
    goto LABEL_134;
  }

  v67 = v66;
  v68 = swift_dynamicCastClass();
  if (!v68)
  {
LABEL_133:

    goto LABEL_134;
  }

  v69 = v68;
  sub_100058000(&qword_10076BD20);
  swift_allocObject();
  v2 = v0;
  v70 = sub_1003D8280();

  v71 = *(v69 + qword_10078A548);
  if (!v71)
  {
    goto LABEL_112;
  }

  v72 = v71;
  sub_1003BB374(v70);

  v73 = [v2 view];
  if (!v73)
  {
    goto LABEL_134;
  }

  v74 = v73;
  v75 = swift_dynamicCastClass();
  if (!v75)
  {
    goto LABEL_132;
  }

  v76 = v75;
  sub_100058000(&qword_10076BD28);
  v77 = swift_allocObject();
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77[2] = sub_100100E1C;
  v77[3] = v78;
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77[4] = sub_100100E24;
  v77[5] = v79;
  v80 = *(v76 + qword_10078A548);
  if (!v80)
  {
    goto LABEL_113;
  }

  v81 = v80;

  *&v81[qword_100771748] = v77;

  v82 = [v2 view];
  if (!v82)
  {
    goto LABEL_134;
  }

  v67 = v82;
  v83 = swift_dynamicCastClass();
  if (!v83)
  {
    goto LABEL_133;
  }

  v84 = v83;
  sub_100058000(&qword_10076BD30);
  swift_allocObject();
  v85 = v2;
  v2 = sub_1003D84F0();

  sub_100058000(&qword_10076BD38);
  swift_allocObject();
  v86 = v85;

  v87 = sub_1003D8C94();

  v2[74] = v87;

  sub_100058000(&qword_10076BD40);
  swift_allocObject();
  v88 = v86;
  v89 = sub_1000F4B24();

  v2[75] = v89;

  v90 = *(v84 + qword_10078A548);
  if (!v90)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  *&v90[qword_100771758] = v2;

  v91 = v90;

  v92 = *&v91[qword_100771730];
  v93 = v2[2];

  v94 = v92;
  v95 = v93();

  if (v95)
  {
    v96 = v91;
  }

  else
  {
    v96 = 0;
  }

  [v94 setDelegate:v96];

  v97 = [v88 view];
  if (!v97)
  {
    goto LABEL_134;
  }

  v67 = v97;
  v98 = swift_dynamicCastClass();
  if (!v98)
  {
    goto LABEL_133;
  }

  v99 = v98;
  v100 = objc_allocWithZone(sub_100058000(&qword_10076BD48));
  v2 = v88;
  v101 = sub_1003D8D98();

  v102 = *(v99 + qword_10078A548);
  if (!v102)
  {
    goto LABEL_115;
  }

  v103 = qword_100771708;
  v104 = *&v102[qword_100771708];
  *&v102[qword_100771708] = v101;
  v105 = v101;
  v106 = v102;

  if (*&v102[v103])
  {
    swift_unknownObjectWeakAssign();
    v107 = *&v102[v103];
  }

  else
  {
    v107 = 0;
  }

  [*&v106[qword_100771730] setDragDelegate:v107];

  v108 = [v2 view];
  if (!v108)
  {
    goto LABEL_134;
  }

  v67 = v108;
  v109 = swift_dynamicCastClass();
  if (!v109)
  {
    goto LABEL_133;
  }

  v110 = v109;
  v111 = objc_allocWithZone(sub_100058000(&qword_10076BD50));
  v2 = v2;
  v112 = sub_1003D8FDC();

  v113 = *(v110 + qword_10078A548);
  if (!v113)
  {
    goto LABEL_116;
  }

  v114 = qword_100771710;
  v115 = *&v113[qword_100771710];
  *&v113[qword_100771710] = v112;
  v116 = v112;
  v117 = v113;

  if (*&v113[v114])
  {
    swift_unknownObjectWeakAssign();
    v118 = *&v113[v114];
  }

  else
  {
    v118 = 0;
  }

  [*&v117[qword_100771730] setDropDelegate:v118];

  v119 = [v2 view];
  if (!v119)
  {
    goto LABEL_134;
  }

  v74 = v119;
  v120 = swift_dynamicCastClass();
  if (!v120)
  {
    goto LABEL_132;
  }

  v121 = v120 + qword_10077A998;
  swift_beginAccess();
  *(v121 + 8) = &off_100714F58;
  swift_unknownObjectWeakAssign();

  v122 = [v2 view];
  if (!v122)
  {
LABEL_134:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v74 = v122;
  v123 = swift_dynamicCastClass();
  if (!v123)
  {
LABEL_132:

    goto LABEL_134;
  }

  v124 = *(v123 + qword_10078A540);
  if (!v124)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  [v124 setDragInteractionEnabled:1];

  v125 = [v2 view];
  if (!v125)
  {
    goto LABEL_134;
  }

  v74 = v125;
  v126 = swift_dynamicCastClass();
  if (!v126)
  {
    goto LABEL_132;
  }

  v127 = *(v126 + qword_10078A540);
  if (!v127)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  [v127 setRowHeight:UITableViewAutomaticDimension];

  v128 = [v2 view];
  if (!v128)
  {
    goto LABEL_134;
  }

  v74 = v128;
  v129 = swift_dynamicCastClass();
  if (!v129)
  {
    goto LABEL_132;
  }

  v130 = *(v129 + qword_10078A540);
  if (!v130)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  [v130 setEstimatedRowHeight:56.0];

  v131 = [v2 view];
  if (!v131)
  {
    goto LABEL_134;
  }

  v74 = v131;
  v132 = swift_dynamicCastClass();
  if (!v132)
  {
    goto LABEL_132;
  }

  v133 = *(v132 + qword_10078A540);
  if (!v133)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  [v133 _setHeaderAndFooterViewsFloat:0];

  v134 = [v2 view];
  if (!v134)
  {
    goto LABEL_134;
  }

  v74 = v134;
  v135 = swift_dynamicCastClass();
  if (!v135)
  {
    goto LABEL_132;
  }

  v136 = *(v135 + qword_10078A540);
  if (!v136)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  [v136 setInsetsContentViewsToSafeArea:0];

  v137 = [v2 view];
  if (!v137)
  {
    goto LABEL_134;
  }

  v67 = v137;
  v138 = swift_dynamicCastClass();
  if (!v138)
  {
    goto LABEL_133;
  }

  v139 = v138;
  type metadata accessor for TTRIAccountsListsSectionHeaderView();
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v140 = *(v139 + qword_10078A540);
  if (!v140)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v141 = swift_getObjCClassFromMetadata();
  v142 = v140;
  v143 = String._bridgeToObjectiveC()();

  [v142 registerClass:v141 forHeaderFooterViewReuseIdentifier:v143];

  v144 = [v2 view];
  if (!v144)
  {
    goto LABEL_134;
  }

  v67 = v144;
  v145 = swift_dynamicCastClass();
  if (!v145)
  {
    goto LABEL_133;
  }

  v146 = v145;
  type metadata accessor for TTRIAccountsListsTagsSectionHeaderView();
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v147 = *(v146 + qword_10078A540);
  if (!v147)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v148 = swift_getObjCClassFromMetadata();
  v149 = v147;
  v150 = String._bridgeToObjectiveC()();

  [v149 registerClass:v148 forHeaderFooterViewReuseIdentifier:v150];

  v151 = [v2 view];
  if (!v151)
  {
    goto LABEL_134;
  }

  v74 = v151;
  v152 = swift_dynamicCastClass();
  if (!v152)
  {
    goto LABEL_132;
  }

  v153 = *(v152 + qword_10078A540);
  if (!v153)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v154 = v153;

  [v154 setKeyboardDismissMode:2];
  if ((static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0 || (UIViewController.isIPadIdiom.getter() & 1) == 0)
  {
    goto LABEL_89;
  }

  v155 = [v2 view];
  if (!v155)
  {
    goto LABEL_134;
  }

  v74 = v155;
  v156 = swift_dynamicCastClass();
  if (!v156)
  {
    goto LABEL_132;
  }

  v157 = *(v156 + qword_10078A540);
  if (!v157)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v158 = v157;

  v159 = [objc_opt_self() clearColor];
  [v158 setBackgroundColor:v159];

LABEL_89:
  sub_1000B0100();
  v160 = [v2 view];
  if (!v160)
  {
    goto LABEL_134;
  }

  v67 = v160;
  if (!swift_dynamicCastClass())
  {
    goto LABEL_133;
  }

  sub_100058000(&qword_10076BD58);
  v161 = type metadata accessor for TTRUserDefaults();
  static TTRUserDefaults.appUserDefaults.getter();
  *(&v187 + 1) = v161;
  v188 = &protocol witness table for TTRUserDefaults;
  *&v186 = TTRTreeViewCollapsedStatesUserDefaultsPersistence.__allocating_init(autosaveName:userDefaults:)();
  sub_100058000(&qword_10076BD60);
  swift_allocObject();
  sub_10000E188(&qword_10076BD68, &qword_10076BD58);
  v162 = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  sub_1003BE7B8(v162);

  sub_1000B021C();
  v163 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v164 = swift_unknownObjectRetain();
  v165 = sub_1000153CC(v164);
  v166 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController) = v165;
  v167 = v165;

  v168 = [objc_allocWithZone(type metadata accessor for TTRISearchController()) initWithSearchResultsController:v167];
  v169 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v170 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController) = v168;
  v171 = v168;

  if (!v171)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v172 = *(v163 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v172 == 2)
  {
    LOBYTE(v172) = sub_100444328(v163);
  }

  [v171 setAutomaticallyShowsSearchResultsController:v172 & 1];

  v173 = *(v2 + v169);
  if (!v173)
  {
    goto LABEL_126;
  }

  [v173 setSearchResultsUpdater:v2];
  v174 = *(v2 + v169);
  if (!v174)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  [v174 setDelegate:v2];
  v175 = *(v2 + v169);
  if (!v175)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v176 = [v175 searchBar];
  [v176 setDelegate:v2];

  v177 = *(v2 + v169);
  if (!v177)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v178 = [v177 searchBar];
  [v178 setLookToDictateEnabled:1];

  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    v179 = [objc_opt_self() currentDevice];
    [v179 userInterfaceIdiom];
  }

  else
  {
    v179 = [v2 navigationItem];
    [v179 setSearchController:*(v2 + v169)];
  }

  sub_1000B17BC();
  sub_100058000(&unk_10076BD70);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_10062D400;
  *(v180 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v180 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v181 = [objc_opt_self() defaultCenter];
  v182 = static NSNotificationName.timeZoneOverrideDidChange.getter();
  v186 = 0u;
  v187 = 0u;
  v183 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v184 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(&v186, &qword_10076AE40);

  *(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_timeZoneOverrideChangedObserver) = v184;
}

void sub_1000B0100()
{
  v4 = [v0 view];
  if (!v4)
  {
    goto LABEL_11;
  }

  type metadata accessor for TTRIAccountsListsTreeView(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
LABEL_10:

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = *(*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v3 == 2)
  {
    LOBYTE(v3) = sub_100444328(*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
  }

  if (!*(v2 + qword_10078A540))
  {
    __break(1u);
    goto LABEL_10;
  }

  [*(v2 + qword_10078A540) setSelectionFollowsFocus:(v3 & 1) == 0];
}

void sub_1000B021C()
{
  v1 = v0;
  v126 = sub_100058000(&unk_10078D400);
  v125 = *(v126 - 8);
  v2 = __chkstk_darwin(v126);
  v124 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v134 = &v117 - v4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v128 = *(v5 - 8);
  __chkstk_darwin(v5);
  v136 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v7 - 8);
  v135 = &v117 - v8;
  v138 = sub_100058000(&unk_10078D410);
  v9 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v117 - v10;
  v123 = sub_100058000(&unk_10076B880);
  v122 = *(v123 - 8);
  v11 = __chkstk_darwin(v123);
  v13 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v121 = &v117 - v14;
  v15 = type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v117 - v20;
  v22 = [v0 isEditing];
  v127 = v5;
  v120 = v9;
  v130 = v13;
  if (v22)
  {
    v23 = 0x800000;
    goto LABEL_20;
  }

  v24 = [v0 view];
  if (!v24)
  {
LABEL_98:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v25 = v24;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
LABEL_97:

    goto LABEL_98;
  }

  v27 = *(v26 + qword_10078A540);
  if (!v27)
  {
    __break(1u);
    goto LABEL_97;
  }

  v28 = [v27 isEditing];

  v29 = *(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v28)
  {
    if (v29 == 2)
    {
      LOBYTE(v29) = sub_100444328(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
    }

    v23 = (v29 & 1) == 0;
  }

  else
  {
    if (v29 == 2)
    {
      LOBYTE(v29) = sub_100444328(*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
    }

    TTRAccountsListsViewModel.accountsCapabilities.getter();

    static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
    sub_1001013F4(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities);
    v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v31 = *(v16 + 8);
    v31(v19, v15);
    v31(v21, v15);
    v32 = 256;
    if ((v30 & 1) == 0)
    {
      v33 = [objc_opt_self() daemonUserDefaults];
      v34 = [v33 timeZoneOverrideEnabled];

      if (v34)
      {
        v32 = 256;
      }

      else
      {
        v32 = 0;
      }
    }

    v35 = [objc_opt_self() daemonUserDefaults];
    v36 = [v35 timeZoneOverrideEnabled];

    if (v36)
    {
      v37 = 0x10000;
    }

    else
    {
      v37 = 0;
    }

    v23 = v32 | v37 | ((v29 & 1) == 0) | 0x400000;
  }

LABEL_20:
  v38 = static REMFeatureFlags.isSolariumEnabled.getter();
  v39 = v38;
  v40 = &v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration];
  v41 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration] | (v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration + 2] << 16);
  if ((~v41 & 0xFEFEFE) == 0)
  {
    goto LABEL_21;
  }

  v44 = (v41 >> 22) & 3;
  if (v44)
  {
    if (v44 != 1)
    {
      if (v23 != 0x800000)
      {
        goto LABEL_21;
      }

      goto LABEL_63;
    }

    if ((v23 & 0xC00000) != 0x400000 || ((v23 & 0x10000) == 0) == (v41 & 0x10000) >> 16 || ((v23 & 0x100) == 0) == (*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentBarButtonItemConfiguration] & 0x100) >> 8)
    {
LABEL_21:
      v40[2] = BYTE2(v23);
      *v40 = v23;
      if (v23 >> 22 == 1)
      {
        if ((v38 & 1) == 0)
        {
          if ((v23 & 0x10000) != 0)
          {
            v47 = &OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuWithBadgeButton;
            v48 = &static TTRCommonAsset.Image.ellipsisBadgeIcon.getter;
          }

          else
          {
            v47 = &OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton;
            v48 = &static TTRCommonAsset.Image.actionMenuIcon.getter;
          }

          v51 = sub_1000B5330(v47, v48);
          sub_100058000(&qword_10076B780);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_10062D420;
          if ((v23 & 0x100) != 0)
          {
            v53 = v51;
          }

          else
          {
            v53 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton, &selRef_didTapEdit_, 2);
          }

          *(v52 + 32) = v53;

          v140 = v52;
          goto LABEL_51;
        }

        sub_100058000(&qword_10076B780);
        v42 = swift_allocObject();
        v133 = xmmword_10062D420;
        *(v42 + 16) = xmmword_10062D420;
        if ((v23 & 0x100) != 0)
        {
          v43 = sub_1000B5330(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___actionMenuButton, &static TTRCommonAsset.Image.actionMenuIcon.getter);
        }

        else
        {
          v43 = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___editButton, &selRef_didTapEdit_, 2);
        }

        *(v42 + 32) = v43;
        v140 = v42;
        if ((v23 & 0x10000) != 0)
        {
          v49 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
          v50 = *(v49 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
          if (v50 == 2)
          {
            if (sub_100444328(v49))
            {
              goto LABEL_95;
            }
          }

          else if (v50)
          {
LABEL_95:
            v112 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton, sub_1000B4D08);
            [v112 setEnabled:1];

            inited = swift_initStackObject();
            *(inited + 16) = v133;
            v114 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___timeZoneOverrideButton];
            *(inited + 32) = v114;
            v115 = v114;
            sub_100018520(inited);
          }
        }
      }

      else
      {
        sub_100058000(&qword_10076B780);
        v45 = swift_allocObject();
        v133 = xmmword_10062D420;
        *(v45 + 16) = xmmword_10062D420;
        *(v45 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"didTapDone:"];
        v140 = v45;
        if (v23 >> 22)
        {
          sub_100058000(&qword_10076B780);
          v46 = swift_allocObject();
          *(v46 + 16) = v133;
          *(v46 + 32) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);
          v139 = v46;
          if ((v39 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }
      }

LABEL_51:
      if (v23)
      {
        v139 = &_swiftEmptyArrayStorage;
        if (v39)
        {
          goto LABEL_56;
        }

LABEL_58:
        sub_100058000(&qword_10076B780);
        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_10062D410;
        *(v56 + 32) = [objc_opt_self() flexibleSpaceItem];
        *(v56 + 40) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
LABEL_59:
        sub_100018520(v56);
        if (static REMFeatureFlags.isSolariumEnabled.getter())
        {
          v59 = [objc_opt_self() currentDevice];
          v60 = [v59 userInterfaceIdiom];

          if (v60 != 1)
          {
            sub_100058000(&qword_10076B780);
            v61 = swift_initStackObject();
            *(v61 + 16) = xmmword_10062D420;
            *(v61 + 32) = sub_100017E3C(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___searchButton, &selRef_didTapSearch_, 12);
            sub_100018520(v61);
          }
        }

        v62 = [v1 navigationItem];
        sub_100003540(0, &qword_10076B800);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v62 setRightBarButtonItems:isa];

        v64 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setToolbarItems:v64];

        goto LABEL_63;
      }

      sub_100058000(&qword_10076B780);
      if ((v39 & 1) == 0)
      {
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10062D420;
        v58 = *(sub_1000B4C4C() + 16);

        *(v57 + 32) = v58;
        v139 = v57;
        goto LABEL_58;
      }

      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10062D410;
      *(v54 + 32) = [objc_opt_self() flexibleSpaceItem];
      v55 = *(sub_1000B4C4C() + 16);

      *(v54 + 40) = v55;
      v139 = v54;
LABEL_56:
      sub_100058000(&qword_10076B780);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_10062D420;
      *(v56 + 32) = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
      goto LABEL_59;
    }
  }

  else if ((v23 & 0xC00000) != 0)
  {
    goto LABEL_21;
  }

  if ((v41 ^ v23))
  {
    goto LABEL_21;
  }

LABEL_63:
  LODWORD(v131) = v39;
  v65 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
  AssociatedConformanceWitness = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddList.getter();
  sub_1001013F4(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities);
  v66 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v67 = *(v16 + 8);
  v67(v19, v15);
  v67(v21, v15);
  [v65 setEnabled:v66 & 1];

  v68 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsGroups.getter();
  v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v67(v19, v15);
  v67(v21, v15);
  [v68 setEnabled:v69 & 1];

  v70 = sub_1000B4C4C();
  *&v133 = v1;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsAddReminder.getter();
  v71 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v67(v19, v15);
  v67(v21, v15);
  v72 = *(v70 + 48);
  if (v72)
  {
    v73 = v72;
    [v73 setEnabled:v71 & 1];
  }

  else
  {
    [*(v70 + 16) setEnabled:v71 & 1];
  }

  v74 = v127;
  v75 = v136;
  v76 = v135;

  v77 = v133;
  v78 = *(v133 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton);
  if ([v78 isEnabled] && (sub_1000B90D4(v131 & 1, v77) & 1) != 0)
  {
    v79 = sub_100038760();
    [v78 setMenu:v79];
    if (v79)
    {
      v80 = 0;
    }

    else
    {
      v80 = "didTapNewList:";
    }

    [v78 setAction:v80];
  }

  v81 = *&v77[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton];
  v119 = "didTapNewGroup:";
  v82 = v81;
  if ([v82 isEnabled])
  {
    v83 = [v77 toolbarItems];
    if (v83)
    {
      v84 = v83;
      sub_100003540(0, &qword_10076B800);
      v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v86 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addGroupButton, sub_1000B5030);
      v140 = v86;
      __chkstk_darwin(v86);
      v116 = &v140;
      v87 = sub_10000C108(sub_1000386C0, (&v117 - 4), v85);

      if (v87)
      {
        v117 = v82;
        v88 = *&v77[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
        *&v133 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

        v89 = v121;
        TTRAccountsListsViewModel.accountCollection.getter();

        (*(v122 + 16))(v130, v89, v123);
        swift_getOpaqueTypeConformance2();
        dispatch thunk of Sequence.makeIterator()();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        v90 = v128;
        v91 = *(v128 + 48);
        v131 = v128 + 48;
        v130 = v91;
        if (v91(v76, 1, v74) == 1)
        {
          v92 = &_swiftEmptyArrayStorage;
        }

        else
        {
          v97 = *(v90 + 32);
          v96 = v90 + 32;
          v129 = v97;
          v118 = (v96 - 16);
          v92 = &_swiftEmptyArrayStorage;
          v98 = (v96 - 24);
          v128 = v96;
          v97(v75, v76, v74);
          while (1)
          {

            v99 = TTRAccountsListsViewModel.remAccount(for:)();

            if (v99)
            {
              v100 = [v99 groupContext];
              if (v100)
              {
                v101 = v100;
                v102 = v88;
                v103 = v124;
                (*v118)(v124, v75, v74);
                v104 = TTRAccountsListsViewModel.Account.name.getter();
                v105 = v75;
                v107 = v106;

                (*v98)(v105, v74);
                v108 = v126;
                *(v103 + *(v126 + 32)) = v101;
                v109 = (v103 + *(v108 + 28));
                *v109 = v104;
                v109[1] = v107;
                sub_100016588(v103, v134, &unk_10078D400);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v92 = sub_1005477C0(0, v92[2] + 1, 1, v92);
                }

                v111 = v92[2];
                v110 = v92[3];
                v75 = v136;
                v88 = v102;
                if (v111 >= v110 >> 1)
                {
                  v92 = sub_1005477C0(v110 > 1, v111 + 1, 1, v92);
                }

                v92[2] = v111 + 1;
                sub_100016588(v134, v92 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v111, &unk_10078D400);
                v76 = v135;
              }

              else
              {
                (*v98)(v75, v74);
              }
            }

            else
            {
              (*v98)(v75, v74);
            }

            dispatch thunk of IteratorProtocol.next()();
            if (v130(v76, 1, v74) == 1)
            {
              break;
            }

            v129(v75, v76, v74);
          }
        }

        (*(v120 + 8))(v137, v138);
        (*(v122 + 8))(v121, v123);
        v93 = swift_allocObject();
        swift_weakInit();
        v94.super.super.isa = sub_100038FC4(v92, sub_1000FD670, v93, &unk_10078D400, &unk_10062FC00, &unk_1007153E8, sub_100100420).super.super.isa;

        v82 = v117;
        [v117 setMenu:v94.super.super.isa];
        if (v94.super.super.isa)
        {
          v95 = 0;
        }

        else
        {
          v95 = v119;
        }

        [v82 setAction:v95];
      }
    }
  }
}

id sub_1000B17BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_100058000(&unk_10076B880);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    v28 = v2;

    TTRAccountsListsViewModel.accountCollection.getter();

    sub_100015E68(v7);
    (*(v9 + 8))(v11, v8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {
      return sub_1000079B4(v7, &unk_10076B870);
    }

    (*(v13 + 32))(v15, v7, v12);
    if ((TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter() & 1) == 0)
    {
      return (*(v13 + 8))(v15, v12);
    }

    (*(v13 + 16))(v4, v15, v12);
    (*(v29 + 104))(v4, enum case for TTRAccountsListsViewModel.Item.account(_:), v28);
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_18:

        goto LABEL_20;
      }

      v20 = *(v19 + qword_10078A548);
      if (!v20)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v21 = v20;
      v22 = sub_1000CA7E0(v4);

      if (v22)
      {
LABEL_13:
        (*(v29 + 8))(v4, v28);
        return (*(v13 + 8))(v15, v12);
      }

      v23 = [v1 view];
      if (v23)
      {
        v24 = v23;
        v25 = swift_dynamicCastClass();
        if (!v25)
        {

          goto LABEL_20;
        }

        v26 = *(v25 + qword_10078A548);
        if (v26)
        {
          v27 = v26;
          sub_1000F4FD4(v4, 5);

          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

LABEL_20:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000B1C2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B021C();
  }
}

uint64_t sub_1000B1CC8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRINavigationBarConfig();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v2;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v9 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
  if (*(v9 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState + 1) == 1)
  {
    *(v9 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_externalSelectionSyncState) = 1;
  }

  swift_getObjectType();
  dispatch thunk of TTRAccountsListsInteractorType.resumeUpdates()();
  sub_100019008(0, 0);
  v10 = UIViewController.effectiveNavigationControllerForBars.getter();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];
    v13 = [v2 view];
    if (!v13)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [v13 tintColor];

    TTRINavigationBarConfig.init(tintColor:)();
    UINavigationBar.apply(_:)();

    (*(v6 + 8))(v8, v5);
  }

  v12 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = *(v9 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  v17 = v12;
  if (v16 == 2)
  {
    LOBYTE(v16) = sub_100444328(v9);
  }

  [v12 setObscuresBackgroundDuringPresentation:v16 & 1];

  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_15;
  }

  v12 = v18;
  v19 = type metadata accessor for TTRIAccountsListsTreeView(0);
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v24[3] = v19;
    v24[4] = sub_1001013F4(&qword_10076BD10, type metadata accessor for TTRIAccountsListsTreeView);
    v24[0] = v21;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    return sub_100004758(v24);
  }

LABEL_14:

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1000B2030(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16.receiver = v1;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172] = 0;
  v7 = &v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
  if (!*&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm + 8])
  {
    goto LABEL_9;
  }

  v8 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  result = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (result)
  {
    v10 = [result searchBar];
    if (*(v7 + 1))
    {

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    [v10 setText:v11];

    *v7 = 0;
    *(v7 + 1) = 0;

    result = *&v1[v8];
    if (result)
    {
      v12 = [result searchBar];
      v13 = [v12 text];

      if (v13)
      {

        sub_100058000(&qword_10076B7B8);
        v14 = swift_allocBox();
        sub_1000B3FE8(v15);
        *v6 = v14;
        swift_storeEnumTagMultiPayload();
        sub_1000B551C(v6, 4, 0);
        sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
      }

LABEL_9:

      TTRModuleState.viewDidAppear()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B22B0(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + qword_10078A540);
      if (v6)
      {
        v7 = [v6 contextMenuInteraction];

        [v7 dismissMenu];

        TTRModuleState.viewWillDisappear()();

        swift_getObjectType();
        return dispatch thunk of TTRAccountsListsInteractorType.pauseUpdates()();
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000B24D8()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_needsWorkaround51600172) == 1)
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + qword_10078A540);
        if (v4)
        {
          v5 = v4;

          [v5 _scrollToTopIfPossible:0];
          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000B2634(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078D510);
  __chkstk_darwin(v10 - 8);
  v12 = (&v34 - v11);
  v13 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v2 splitViewController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 displayMode];

    if (v18 == 1)
    {
      goto LABEL_5;
    }
  }

  v19 = [v2 presentedViewController];
  if (v19)
  {

LABEL_5:
    v20 = 0;
    return v20 & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v20 = [v2 isEditing] ^ 1;
    return v20 & 1;
  }

  if ((static Selector.== infix(_:_:)() & 1) == 0)
  {
    sub_10000794C(v38, &v43, &qword_10076AE40);
    v23 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v24 = sub_10000C36C(&v43, *(&v44 + 1));
      v25 = *(v23 - 8);
      __chkstk_darwin(v24);
      v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v27);
      v28 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v25 + 8))(v27, v23);
      sub_100004758(&v43);
    }

    else
    {
      v28 = 0;
    }

    v42.receiver = v2;
    v42.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v42, "canPerformAction:withSender:", a1, v28);
    swift_unknownObjectRelease();
    return v20 & 1;
  }

  if ([v2 isEditing])
  {
    goto LABEL_5;
  }

  sub_10000794C(v38, &v43, &qword_10076AE40);
  if (!*(&v44 + 1))
  {
LABEL_25:
    v29 = &qword_10076AE40;
    v30 = &v43;
    goto LABEL_26;
  }

  sub_100003540(0, &unk_10076BAB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = v40;
  if ([v40 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v43 = v40;
  v44 = v41;
  if (!*(&v41 + 1))
  {

    goto LABEL_25;
  }

  sub_100058000(&qword_100768358);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_1005F6EE8(v39, v12);
  if ((*(v36 + 48))(v12, 1, v13) == 1)
  {

    v29 = &unk_10078D510;
    v30 = v12;
LABEL_26:
    sub_1000079B4(v30, v29);
    goto LABEL_5;
  }

  sub_1001006AC(v12, v15, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  sub_100100B10(&v15[*(v13 + 20)], v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100100B78(v15, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

    sub_100100B78(v9, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    v20 = 1;
  }

  else
  {
    v32 = v34;
    v31 = v35;
    (*(v34 + 32))(v6, v9, v35);
    sub_10043F208(v6);
    v20 = v33;

    (*(v32 + 8))(v6, v31);
    sub_100100B78(v15, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
  }

  return v20 & 1;
}

void sub_1000B2CF8(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_100452454(a1);
  v42.receiver = v2;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "setEditing:animated:", a1 & 1, a2 & 1);
  v7 = [v2 view];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = *(v9 + qword_10078A540);
  if (!v10)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v10 setEditing:a1 & 1 animated:a2 & 1];

  v11 = [v2 isEditing];
  v12 = [v2 view];
  v8 = v12;
  if (v11)
  {
    if (v12)
    {
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v37 = v2;
        v14 = *(__chkstk_darwin(v13) + qword_10078A548);
        if (!v14)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v15 = v14;
        sub_1000CB2F0(sub_1000FD690, &v36);

        goto LABEL_13;
      }

      goto LABEL_35;
    }
  }

  else if (v12)
  {
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(v16 + qword_10078A548);
      if (!v17)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v18 = v17;
      sub_1000CC2FC();

LABEL_13:
      sub_1000B021C();
      v19 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
      v20 = *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
      if (v20)
      {
        v21 = [v20 searchBar];
        v8 = [v21 searchTextField];

        v41 = v8;
        v22 = &_swiftEmptyArrayStorage;
        v40 = &_swiftEmptyArrayStorage;
        if (v8)
        {
          v8 = v8;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = v40;
        }

        sub_1000079B4(&v41, &qword_100777950);
        sub_1000F5CF0(v22, a1 & 1, a2 & 1);
        v23 = [v3 isEditing];
        v24 = *&v3[v19];
        if (!v23)
        {
          if (v24)
          {
            v31 = v24;

            v32 = [v31 searchBar];

            v27 = [v32 searchTextField];
            v33 = UIAccessibilityTraitNotEnabled;
            v34 = [v27 accessibilityTraits];
            v35 = -1;
            if ((v34 & v33) != 0)
            {
              v35 = ~v33;
            }

            [v27 setAccessibilityTraits:v35 & v34];
            goto LABEL_28;
          }

          goto LABEL_34;
        }

        if (v24)
        {
          v25 = v24;

          v26 = [v25 searchBar];

          v27 = [v26 searchTextField];
          v28 = UIAccessibilityTraitNotEnabled;
          v29 = [v27 accessibilityTraits];
          if ((v28 & ~v29) != 0)
          {
            v30 = v28;
          }

          else
          {
            v30 = 0;
          }

          [v27 setAccessibilityTraits:v30 | v29];
LABEL_28:

          return;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      goto LABEL_30;
    }

LABEL_35:
  }

LABEL_36:
  v38 = 0;
  v37 = 367;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B3140()
{
  v0 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;

  TTRAccountsListsViewModel.item(with:)();

  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1000079B4(v2, &unk_100771B40);
    v8 = type metadata accessor for TTRAccountsListsViewModel.Group();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  TTRAccountsListsViewModel.Item.group.getter();
  (*(v7 + 8))(v2, v6);
  v9 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v10 = 1;
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_1000079B4(v5, &unk_10076B7F0);
  return v10;
}

id sub_1000B33D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v3 - 8);
  v78 = &v74 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v79 = *(v5 - 8);
  v80 = v5;
  __chkstk_darwin(v5);
  v74 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076B7C0);
  v8 = __chkstk_darwin(v7 - 8);
  v76 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v81 = (&v74 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = (&v74 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v74 - v16);
  __chkstk_darwin(v15);
  v19 = (&v74 - v18);
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v75 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v74 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v74 - v28;
  v30 = __chkstk_darwin(v27);
  v82 = &v74 - v31;
  __chkstk_darwin(v30);
  v33 = &v74 - v32;
  v83 = a1;
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v19);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      return sub_1000079B4(v19, &unk_10076B7C0);
    }

    sub_1001006AC(v19, v33, type metadata accessor for TTRIAccountsListsSelection);
    sub_10042DDB8(v33);
    if (v35)
    {
      v36 = v83;
      if (v35 == 1)
      {
        *&v86[0] = [v83 attributes];
        v46 = 0;
      }

      else
      {
        *&v86[0] = [v83 attributes];
        v46 = 1;
      }

      UIMenuElementAttributes.setDisabled(_:)(v46);
      [v36 setAttributes:*&v86[0]];
      v45 = 0;
    }

    else
    {
      v36 = v83;
      *&v86[0] = [v83 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v36 setAttributes:*&v86[0]];
      v45 = 1;
    }

    [v36 setState:v45];
    static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
    v47 = String._bridgeToObjectiveC()();

    [v36 setTitle:v47];

    v48 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
    [v36 setImage:v48];

    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v17);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      return sub_1000079B4(v17, &unk_10076B7C0);
    }

    v33 = v82;
    sub_1001006AC(v17, v82, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452B28(v33);
    if (v37)
    {
      v38 = v83;
      if (v37 != 1)
      {
        *&v86[0] = [v83 attributes];
        UIMenuElementAttributes.setDisabled(_:)(1);
        [v38 setAttributes:*&v86[0]];
LABEL_32:
        v52 = v33;
        return sub_100100B78(v52, type metadata accessor for TTRIAccountsListsSelection);
      }

      *&v86[0] = [v83 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v38 setAttributes:*&v86[0]];
      v39._countAndFlagsBits = 0x694C206E69706E55;
      v40._countAndFlagsBits = 0xD00000000000002ALL;
      v40._object = 0x8000000100671560;
      v39._object = 0xEA00000000007473;
      TTRLocalizedString(_:comment:)(v39, v40);
      v41 = String._bridgeToObjectiveC()();

      [v38 setTitle:v41];

      v42 = String._bridgeToObjectiveC()();
      v43 = [objc_opt_self() _systemImageNamed:v42];
    }

    else
    {
      v38 = v83;
      *&v86[0] = [v83 attributes];
      UIMenuElementAttributes.setDisabled(_:)(0);
      [v38 setAttributes:*&v86[0]];
      v55._countAndFlagsBits = 0x7473694C206E6950;
      v56._object = 0x8000000100671590;
      v55._object = 0xE800000000000000;
      v56._countAndFlagsBits = 0xD000000000000028;
      TTRLocalizedString(_:comment:)(v55, v56);
      v57 = String._bridgeToObjectiveC()();

      [v38 setTitle:v57];

      v42 = String._bridgeToObjectiveC()();
      v43 = [objc_opt_self() _systemImageNamed:v42];
    }

    v58 = v43;

    [v38 setImage:v58];
LABEL_31:

    goto LABEL_32;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_1000B3FE8(v14);
    if ((*(v21 + 48))(v14, 1, v20) == 1)
    {
      return sub_1000079B4(v14, &unk_10076B7C0);
    }

    sub_1001006AC(v14, v29, type metadata accessor for TTRIAccountsListsSelection);
    sub_100452E1C(v29);
    v50 = v49;
    v51 = v83;
    *&v86[0] = [v83 attributes];
    UIMenuElementAttributes.setDisabled(_:)((v50 & 1) == 0);
    [v51 setAttributes:*&v86[0]];
    v52 = v29;
    return sub_100100B78(v52, type metadata accessor for TTRIAccountsListsSelection);
  }

  if (static Selector.== infix(_:_:)())
  {
    v44 = v81;
    sub_1000B3FE8(v81);
    if ((*(v21 + 48))(v44, 1, v20) != 1)
    {
      sub_1001006AC(v44, v26, type metadata accessor for TTRIAccountsListsSelection);
      sub_100452E2C(v26);
      v60 = v59;
      v61 = v83;
      *&v86[0] = [v83 attributes];
      UIMenuElementAttributes.setDisabled(_:)((v60 & 1) == 0);
      [v61 setAttributes:*&v86[0]];
      v52 = v26;
      return sub_100100B78(v52, type metadata accessor for TTRIAccountsListsSelection);
    }

    return sub_1000079B4(v44, &unk_10076B7C0);
  }

  if (static Selector.== infix(_:_:)())
  {
    v53 = [v1 isEditing];
    v54 = v83;
    if (v53)
    {
      goto LABEL_46;
    }

    if ([v83 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0u;
      v85 = 0u;
    }

    v68 = v79;
    v67 = v80;
    v69 = v78;
    v86[0] = v84;
    v86[1] = v85;
    if (!*(&v85 + 1))
    {
      v70 = &qword_10076AE40;
      v71 = v86;
      goto LABEL_45;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_46:
      *&v86[0] = [v54 attributes];
      UIMenuElementAttributes.setDisabled(_:)(1);
      return [v54 setAttributes:*&v86[0]];
    }

    TTRListType.PredefinedSmartListType.init(rawValue:)();
    if ((*(v68 + 48))(v69, 1, v67) == 1)
    {
      v70 = &unk_10078D520;
      v71 = v69;
LABEL_45:
      sub_1000079B4(v71, v70);
      goto LABEL_46;
    }

    v72 = v74;
    (*(v68 + 32))(v74, v69, v67);
    sub_10043F208(v72);
    [v54 setState:v73 & 1];
    return (*(v68 + 8))(v72, v67);
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      v44 = v76;
      sub_1000B3FE8(v76);
      if ((*(v21 + 48))(v44, 1, v20) != 1)
      {
        v33 = v75;
        sub_1001006AC(v44, v75, type metadata accessor for TTRIAccountsListsSelection);
        sub_10045356C(v33);
        v63 = v62;
        v64 = v83;
        *&v86[0] = [v83 attributes];
        UIMenuElementAttributes.setDisabled(_:)((v63 & 1) == 0);
        [v64 setAttributes:*&v86[0]];
        v65._countAndFlagsBits = 0x73694C20776F6853;
        v65._object = 0xEE006F666E492074;
        v66._countAndFlagsBits = 0xD00000000000002ELL;
        v66._object = 0x8000000100671530;
        TTRLocalizedString(_:comment:)(v65, v66);
        v58 = String._bridgeToObjectiveC()();

        [v64 setTitle:v58];
        goto LABEL_31;
      }

      return sub_1000079B4(v44, &unk_10076B7C0);
    }

    v87.receiver = v1;
    v87.super_class = ObjectType;
    return objc_msgSendSuper2(&v87, "validateCommand:", v83);
  }
}

void sub_1000B3FE8(void *a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v44 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_100058000(&qword_10076B850);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {
LABEL_24:

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_26;
  }

  sub_1002EA7D4(v14);

  v17 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
  if ((*(*(v17 - 8) + 48))(v14, 1, v17) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v30 = v45;
      *v45 = *v14;
      v31 = type metadata accessor for TTRIAccountsListsSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v23 = sub_100058000(&unk_10076B860);
      (*(v6 + 32))(v11, &v14[*(v23 + 48)], v5);
      (*(v6 + 16))(v9, v11, v5);
      v24 = (*(v6 + 88))(v9, v5);
      if (v24 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
      {
        (*(v6 + 96))(v9, v5);
        v25 = v44;
        (*(v44 + 32))(v4, v9, v2);
        v26 = v45;
        TTRAccountsListsViewModel.SmartList.type.getter();
        (*(v25 + 8))(v4, v2);
        (*(v6 + 8))(v11, v5);
        v27 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
        v28 = type metadata accessor for TTRAccountsListsPinnedListSelection();
        (*(*(v28 - 8) + 104))(v26, v27, v28);
        v29 = type metadata accessor for TTRIAccountsListsSelection(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
LABEL_20:
        v41 = type metadata accessor for TTRAccountsListsViewModel.Item();
        (*(*(v41 - 8) + 8))(v14, v41);
        return;
      }

      if (v24 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
      {
LABEL_26:
        if (qword_100766F00 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100003E30(v42, qword_10076B2A0);
        sub_100008E04(&_swiftEmptyArrayStorage);
        sub_100008E04(&_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown pinned list type", 24, 2);
        __break(1u);
        return;
      }

      (*(v6 + 8))(v11, v5);
      (*(v6 + 96))(v9, v5);
      v38 = type metadata accessor for TTRAccountsListsViewModel.List();
      v35 = v45;
      (*(*(v38 - 8) + 32))(v45, v9, v38);
      v39 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v40 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v40 - 8) + 104))(v35, v39, v40);
      v36 = type metadata accessor for TTRIAccountsListsSelection(0);
    }

    else
    {
      v32 = *(sub_100058000(&qword_10076B858) + 48);
      v33 = type metadata accessor for REMHashtagLabelSpecifier();
      v34 = &v14[v32];
      v35 = v45;
      (*(*(v33 - 8) + 32))(v45, v34, v33);
      v36 = type metadata accessor for TTRIAccountsListsSelection(0);
    }

    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    goto LABEL_20;
  }

  v18 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v19 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([v19 isActive])
  {
LABEL_8:
    v21 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    swift_beginAccess();
    sub_10000794C(&v1[v21], v45, &unk_10076B7C0);
    return;
  }

  v20 = *&v1[v18];
  if (!v20)
  {
    goto LABEL_23;
  }

  if ([v20 isBeingPresented])
  {
    goto LABEL_8;
  }

  v37 = type metadata accessor for TTRIAccountsListsSelection(0);
  (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
}

uint64_t sub_1000B47F0()
{
  v1 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRAccountsListsViewModel.hashtagsItem.getter();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B40);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = [v0 view];
  if (!v8)
  {
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = v8;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = *(v10 + qword_10078A548);
  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_1000DE964(v7);

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    type metadata accessor for TTRIHashtagCollectionCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1000B4A70(void *a1)
{
  ObjectType = swift_getObjectType();
  static TTRLocalizableStrings.AccountsList.addListText.getter();
  if (static REMFeatureFlags.isSolariumEnabled.getter())
  {
    sub_100003540(0, &qword_10076B800);
    static TTRCommonAsset.Image.addListIcon.getter();
    swift_unknownObjectRetain();
    return UIBarButtonItem.init(title:image:target:action:menu:)();
  }

  else
  {
    v13[3] = ObjectType;
    v13[0] = a1;
    v4 = a1;
    v5 = String._bridgeToObjectiveC()();

    if (ObjectType)
    {
      v6 = sub_10000C36C(v13, ObjectType);
      v7 = *(ObjectType - 8);
      __chkstk_darwin(v6);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v7 + 8))(v9, ObjectType);
      sub_100004758(v13);
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_allocWithZone(UIBarButtonItem);
    v12 = [v11 initWithTitle:v5 style:0 target:v10 action:{0, v13[0]}];

    swift_unknownObjectRelease();
    return v12;
  }
}

uint64_t sub_1000B4C4C()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton;
  if (*&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton])
  {
    v2 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addReminderButton];
  }

  else
  {
    v5[3] = swift_getObjectType();
    v5[0] = v0;
    type metadata accessor for TTRIAddReminderBarButtonModule();
    swift_allocObject();
    v3 = v0;
    v2 = sub_1001C60D8(1, v5, "didTapNewReminder:");
    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1000B4D08()
{
  sub_100003540(0, &qword_10076B800);
  v0._object = 0x80000001006711A0;
  v1._countAndFlagsBits = 0xD000000000000035;
  v1._object = 0x80000001006711C0;
  v0._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:comment:)(v0, v1);
  static TTRCommonAsset.Image.timeZoneOverrideIcon.getter();
  swift_unknownObjectRetain();
  v2 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FD678;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_100715040;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  v7 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  sub_100003540(0, &unk_10076B890);
  v8._countAndFlagsBits = 0x6E6F5A20656D6954;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100671220;
  v8._object = 0xE900000000000065;
  v10 = TTRLocalizedString(_:comment:)(v8, v9);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v7;
  v18.value.super.isa = v12;
  v18.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v18, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16).super.super.isa;
  [v6 setMenu:isa];

  return v6;
}

id sub_1000B4FCC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000B5030(void *a1)
{
  ObjectType = swift_getObjectType();
  v3._countAndFlagsBits = 0x756F724720646441;
  v4._object = 0x80000001006712D0;
  v3._object = 0xE900000000000070;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  TTRLocalizedString(_:comment:)(v3, v4);
  v15[3] = ObjectType;
  v15[0] = a1;
  v5 = a1;
  v6 = String._bridgeToObjectiveC()();

  if (ObjectType)
  {
    v7 = sub_10000C36C(v15, ObjectType);
    v8 = *(ObjectType - 8);
    __chkstk_darwin(v7);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v10, ObjectType);
    sub_100004758(v15);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(UIBarButtonItem);
  v13 = [v12 initWithTitle:v6 style:0 target:v11 action:{0, v15[0]}];

  swift_unknownObjectRelease();
  return v13;
}

id sub_1000B51E8(uint64_t a1)
{
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithImage:a1 style:0 target:0 action:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1000FD680;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10010CA7C;
  v7[3] = &unk_100715068;
  v3 = _Block_copy(v7);

  [v1 _setSecondaryActionsProvider:v3];
  _Block_release(v3);
  v4 = v1;
  static TTRAccesibility.AccountsList.Label.AccountsListButton.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setAccessibilityLabel:v5];

  return v4;
}

id sub_1000B5330(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = sub_1000B51E8(v6);

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

Class sub_1000B53A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_unknownObjectRetain();

  v2 = swift_allocObject();
  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = sub_100428028(sub_1000FD688, v2);
  swift_unknownObjectRelease();

  return v4;
}

void sub_1000B54A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B2CF8(1, 1);
  }
}

void sub_1000B551C(uint64_t a1, uint64_t a2, int a3)
{
  v222 = a3;
  v234 = a2;
  v241 = a1;
  v206 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v206);
  v212 = &v200 - v3;
  v227 = type metadata accessor for REMHashtagLabelSpecifier();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v224 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v216 = *(v228 - 8);
  __chkstk_darwin(v228);
  v225 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v229 = *(v6 - 8);
  v230 = v6;
  v7 = __chkstk_darwin(v6);
  v223 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v233 = &v200 - v9;
  v10 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v10 - 8);
  v203 = &v200 - v11;
  v205 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v201 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v13 - 8);
  v209 = &v200 - v14;
  v210 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v202 = &v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_10078D450);
  v17 = __chkstk_darwin(v16 - 8);
  v214 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v218 = &v200 - v19;
  v20 = type metadata accessor for TTRAccountsListsViewModel.List();
  v231 = *(v20 - 8);
  v232 = v20;
  v21 = __chkstk_darwin(v20);
  v221 = &v200 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v207 = &v200 - v24;
  __chkstk_darwin(v23);
  v213 = &v200 - v25;
  v26 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v27 = *(v26 - 8);
  v237 = v26;
  v238 = v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v200 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v220 = &v200 - v32;
  v33 = __chkstk_darwin(v31);
  v215 = &v200 - v34;
  v35 = __chkstk_darwin(v33);
  v200 = &v200 - v36;
  v37 = __chkstk_darwin(v35);
  v217 = &v200 - v38;
  __chkstk_darwin(v37);
  v219 = &v200 - v39;
  v40 = sub_100058000(&unk_10076B7C0);
  v41 = __chkstk_darwin(v40 - 8);
  v211 = &v200 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v200 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v200 - v47;
  v49 = __chkstk_darwin(v46);
  v235 = &v200 - v50;
  __chkstk_darwin(v49);
  v236 = (&v200 - v51);
  v52 = sub_100058000(&unk_100771B40);
  v53 = __chkstk_darwin(v52 - 8);
  v55 = &v200 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v53);
  v58 = &v200 - v57;
  v59 = __chkstk_darwin(v56);
  v61 = &v200 - v60;
  v62 = __chkstk_darwin(v59);
  v64 = &v200 - v63;
  __chkstk_darwin(v62);
  v66 = &v200 - v65;
  v67 = type metadata accessor for TTRIAccountsListsSelection(0);
  v239 = *(v67 - 8);
  __chkstk_darwin(v67);
  v69 = (&v200 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100100B10(v241, v69, type metadata accessor for TTRIAccountsListsSelection);
  v240 = v67;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v80 = v226;
      v81 = v224;
      v82 = v69;
      v83 = v227;
      (*(v226 + 32))(v224, v82, v227);
      v84 = v242;

      TTRAccountsListsViewModel.hashtagsItem.getter();

      v86 = v237;
      v85 = v238;
      if ((*(v238 + 48))(v58, 1, v237) == 1)
      {
        sub_1000079B4(v58, &unk_100771B40);
      }

      else
      {
        (*(v85 + 32))(v30, v58, v86);
        v115 = sub_1000B47F0();
        if (v115)
        {
          v116 = v115;
          TTRIHashtagCollectionCell.allowsExcludedSelection.setter();
        }

        v117 = [v84 view];
        if (!v117)
        {
          goto LABEL_116;
        }

        v71 = v117;
        type metadata accessor for TTRIAccountsListsTreeView(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_112;
        }

        sub_1002EBB5C(v30, v81, 0, 0);

        (*(v85 + 8))(v30, v86);
      }

      v118 = v236;
      (*(v239 + 56))(v236, 1, 1, v240);
      v119 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v118, v84 + v119, &unk_10076B7C0);
      swift_endAccess();
      sub_100426264(v81);
      (*(v80 + 8))(v81, v83);
      return;
    }

    v233 = *v69;
    v101 = swift_projectBox();
    sub_10000794C(v101, v235, &unk_10076B7C0);
    v102 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    v103 = v242;
    swift_beginAccess();
    sub_10000794C(v103 + v102, v48, &unk_10076B7C0);
    v104 = *(v239 + 48);
    LODWORD(v103) = v104(v48, 1, v240);
    sub_1000079B4(v48, &unk_10076B7C0);
    if (v103 == 1)
    {
      v105 = [v242 view];
      if (!v105)
      {
        goto LABEL_116;
      }

      v71 = v105;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v106 = swift_dynamicCastClass();
      if (!v106)
      {
        goto LABEL_112;
      }

      v107 = v106;
      (*(v238 + 56))(v55, 1, 1, v237);
      v108 = qword_10078A548;
      v109 = *(v107 + qword_10078A548);
      if (!v109)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v110 = v109;
      v111 = sub_1000DF504(0);

      v112 = *(v107 + v108);
      if (!v112)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v113 = v112;
      sub_1000DFB6C(v55, 1, 0);

      sub_1002EE0CC(v111, 1);

      sub_1000079B4(v55, &unk_100771B40);
    }

    sub_10000794C(v235, v45, &unk_10076B7C0);
    v114 = v240;
    if (v104(v45, 1, v240) == 1)
    {
      sub_1000079B4(v45, &unk_10076B7C0);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v123 = swift_projectBox();
        v124 = v212;
        sub_10000794C(v123, v212, &qword_10076B7B8);
        sub_1000079B4(v124, &unk_10076B7C0);

        v125 = v242;
        v126 = v211;
        sub_10000794C(&v242[v102], v211, &unk_10076B7C0);
        v71 = v104(v126, 1, v114);
        sub_1000079B4(v126, &unk_10076B7C0);
        if (v71 != 1)
        {
          goto LABEL_45;
        }

        v71 = swift_allocBox();
        v127 = *(v239 + 56);
        v127(v128, 1, 1, v114);
        v129 = v236;
        *v236 = v71;
        swift_storeEnumTagMultiPayload();
        v127(v129, 0, 1, v114);
        swift_beginAccess();
        v130 = &v125[v102];
        v131 = v129;
LABEL_44:
        sub_10000D184(v131, v130, &unk_10076B7C0);
        swift_endAccess();
LABEL_45:
        v143 = v234 & 4;
        v144 = *(*&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
        if (v144 == 2)
        {
          if (!sub_100444328(*&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]))
          {
LABEL_47:
            v145 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
            if (!v145)
            {
LABEL_104:
              __break(1u);
              goto LABEL_105;
            }

            v146 = [v145 searchBar];
            v147 = [v146 text];

            if (v147)
            {
              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v150 = v149;
            }

            else
            {
              v148 = 0;
              v150 = 0xE000000000000000;
            }

            sub_100425958(v148, v150, v143 != 0);

            goto LABEL_80;
          }
        }

        else if ((v144 & 1) == 0)
        {
          goto LABEL_47;
        }

        v151 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController];
        if (!v151)
        {
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v71 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (!v71)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v152 = v151;
        v153 = [v71 searchBar];
        v154 = [v153 text];

        if (v154)
        {
          v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v157 = v156;
        }

        else
        {
          v155 = 0;
          v157 = 0xE000000000000000;
        }

        sub_100505C14(v155, v157, v143 >> 2);

LABEL_80:
        v71 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
        v187 = *&v125[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (v187)
        {
          if (([v187 isActive] & 1) == 0)
          {
            v188 = *(v71 + v125);
            if (!v188)
            {
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

            if (([v188 isBeingPresented] & 1) == 0)
            {
              v189 = *(v71 + v125);
              if (!v189)
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              [v189 setActive:1];
            }
          }

          sub_1000079B4(v235, &unk_10076B7C0);

          return;
        }

        __break(1u);
        goto LABEL_102;
      }

      sub_100100B78(v45, type metadata accessor for TTRIAccountsListsSelection);
    }

    v71 = v236;
    sub_100100B10(v241, v236, type metadata accessor for TTRIAccountsListsSelection);
    (*(v239 + 56))(v71, 0, 1, v114);
    v125 = v242;
    swift_beginAccess();
    v130 = &v125[v102];
    v131 = v71;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    v87 = v229;
    v88 = v233;
    v89 = v69;
    v90 = v230;
    (*(v229 + 32))(v233, v89, v230);
    v91 = v223;
    (*(v87 + 16))(v223, v88, v90);
    v92 = (*(v87 + 88))(v91, v90);
    v93 = v238;
    v95 = v231;
    v94 = v232;
    if (v92 != enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v120 = v237;
      if (v92 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_115;
      }

      (*(v87 + 96))(v91, v90);
      v121 = v221;
      (*(v95 + 32))(v221, v91, v94);
      v122 = v242;

      TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

      if ((*(v93 + 48))(v61, 1, v120) == 1)
      {
        (*(v95 + 8))(v121, v94);
        (*(v87 + 8))(v233, v90);
        sub_1000079B4(v61, &unk_100771B40);
        return;
      }

      (*(v93 + 32))(v220, v61, v120);
      v137 = [v122 view];
      if (!v137)
      {
        goto LABEL_116;
      }

      v71 = v137;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v138 = swift_dynamicCastClass();
      v139 = v221;
      if (!v138)
      {
        goto LABEL_112;
      }

      v140 = v220;
      sub_1002EB35C(v220, v221, 0, 0);

      v141 = v236;
      (*(v239 + 56))(v236, 1, 1, v240);
      v142 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v141, v122 + v142, &unk_10076B7C0);
      swift_endAccess();
      if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
      {
        sub_100424E14(v139);
        (*(v93 + 8))(v140, v237);
      }

      else
      {
        v191 = TTRAccountsListsViewModel.List.sharingStatus.getter();
        if (v191 < 3 || v191 == 4)
        {
          sub_1004249C8(v139, v222 & 1);
          v192 = v220;
          v193 = v237;
        }

        else
        {
          v197 = v220;
          v198 = v237;
          if (v191 != 3)
          {
            goto LABEL_117;
          }

          sub_100424288(v139);
          v192 = v197;
          v193 = v198;
        }

        (*(v93 + 8))(v192, v193);
      }

      (*(v95 + 8))(v139, v94);
LABEL_94:
      (*(v87 + 8))(v233, v90);
      return;
    }

    (*(v87 + 96))(v91, v90);
    v96 = v216;
    (*(v216 + 32))(v225, v91, v228);
    v97 = v242;

    TTRAccountsListsViewModel.pinnedListsItem(containingListFor:)();

    v98 = v237;
    if ((*(v93 + 48))(v64, 1, v237) == 1)
    {
      sub_1000079B4(v64, &unk_100771B40);
      v99 = v240;
      v100 = v225;
LABEL_37:
      v135 = v236;
      (*(v239 + 56))(v236, 1, 1, v99);
      v136 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
      swift_beginAccess();
      sub_10000D184(v135, v97 + v136, &unk_10076B7C0);
      swift_endAccess();
      sub_100425274(v100, v222 & 1);
      (*(v96 + 8))(v100, v228);
      goto LABEL_94;
    }

    (*(v93 + 32))(v215, v64, v98);
    v132 = [v97 view];
    if (!v132)
    {
      goto LABEL_116;
    }

    v71 = v132;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v133 = swift_dynamicCastClass();
    v99 = v240;
    if (v133)
    {
      v134 = v215;
      v100 = v225;
      sub_1002EB344(v215, v225, 0, 0);

      (*(v238 + 8))(v134, v98);
      goto LABEL_37;
    }

LABEL_112:

    goto LABEL_116;
  }

  v71 = *v69;
  v72 = v242;
  v74 = v237;
  v73 = v238;
  if (v234)
  {
    goto LABEL_63;
  }

  v75 = [v242 view];
  if (!v75)
  {
    goto LABEL_116;
  }

  v76 = v75;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v77 = swift_dynamicCastClass();
  if (!v77)
  {

    goto LABEL_116;
  }

  v78 = v77;
  if (v71[2])
  {
    (*(v73 + 16))(v66, v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v74);
    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  (*(v73 + 56))(v66, v79, 1, v74);
  v158 = qword_10078A548;
  v159 = *(v78 + qword_10078A548);
  if (!v159)
  {
    goto LABEL_103;
  }

  v160 = v159;
  v161 = sub_1000DF504(0);

  v162 = *(v78 + v158);
  if (!v162)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v163 = v162;
  sub_1000DFB6C(v66, 1, 0);

  sub_1002EE0CC(v161, 1);

  sub_1000079B4(v66, &unk_100771B40);
  v74 = v237;
  v73 = v238;
  if ((v234 & 8) == 0)
  {
    v164 = [v72 view];
    if (v164)
    {
      v91 = v164;
      v165 = swift_dynamicCastClass();
      if (v165)
      {
        v166 = *(v165 + qword_10078A540);
        if (v166)
        {
          [v166 scrollToNearestSelectedRowAtScrollPosition:0 animated:1];

          goto LABEL_63;
        }

        goto LABEL_110;
      }

LABEL_115:
    }

LABEL_116:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_117;
  }

LABEL_63:
  v167 = v236;
  (*(v239 + 56))(v236, 1, 1, v240);
  v168 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
  swift_beginAccess();
  sub_10000D184(v167, v72 + v168, &unk_10076B7C0);
  swift_endAccess();
  if (!v71[2])
  {

    return;
  }

  v169 = v217;
  (*(v73 + 16))(v217, v71 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v74);

  v170 = v219;
  (*(v73 + 32))(v219, v169, v74);
  v171 = v218;
  TTRAccountsListsViewModel.Item.list.getter();
  v173 = v231;
  v172 = v232;
  v174 = *(v231 + 48);
  if (v174(v171, 1, v232) == 1)
  {
    sub_1000079B4(v171, &unk_10078D450);
    v175 = v214;
    TTRAccountsListsViewModel.Item.customSmartList.getter();
    if (v174(v175, 1, v172) == 1)
    {
      sub_1000079B4(v175, &unk_10078D450);
      v176 = v209;
      TTRAccountsListsViewModel.Item.group.getter();
      v177 = v208;
      v178 = v210;
      if ((*(v208 + 48))(v176, 1, v210) == 1)
      {
        sub_1000079B4(v176, &unk_10076B7F0);
        v179 = v203;
        TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
        v180 = v204;
        v181 = v205;
        if ((*(v204 + 48))(v179, 1, v205) == 1)
        {
          sub_1000079B4(v179, &unk_10078D440);
          v182 = v200;
          (*(v73 + 104))(v200, enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:), v74);
          v183 = static TTRAccountsListsViewModel.Item.== infix(_:_:)();
          v184 = *(v73 + 8);
          v184(v182, v74);
          if (v183)
          {
            sub_100430AB4();
          }

          v184(v170, v74);
          return;
        }

        v195 = v201;
        (*(v180 + 32))(v201, v179, v181);
        v196 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
        sub_100425C0C();

        (*(v180 + 8))(v195, v181);
      }

      else
      {
        v194 = v202;
        (*(v177 + 32))(v202, v176, v178);
        sub_100425510(v194);
        (*(v177 + 8))(v194, v178);
      }
    }

    else
    {
      v190 = v207;
      (*(v173 + 32))(v207, v175, v172);
      sub_100424E14(v190);
      (*(v173 + 8))(v190, v172);
    }

LABEL_88:
    (*(v73 + 8))(v170, v74);
    return;
  }

  v185 = v213;
  (*(v173 + 32))(v213, v171, v172);
  v186 = TTRAccountsListsViewModel.List.sharingStatus.getter();
  if (v186 < 3 || v186 == 4)
  {
    sub_1004249C8(v185, v222 & 1);
LABEL_75:
    (*(v173 + 8))(v185, v172);
    goto LABEL_88;
  }

  if (v186 == 3)
  {
    sub_100424288(v185);
    goto LABEL_75;
  }

LABEL_117:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v199 = type metadata accessor for Logger();
  sub_100003E30(v199, qword_100782E90);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("unknown sharing status", 22, 2);
  __break(1u);
}

void sub_1000B7230(int a1)
{
  v50 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v48 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = sub_100058000(&qword_10076B850);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_100058000(&unk_10076B7C0);
  v14 = __chkstk_darwin(v13 - 8);
  v52 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - v17;
  __chkstk_darwin(v16);
  v51 = (&v47 - v19);
  v20 = [v1 view];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v20;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_33;
  }

  v23 = *(v22 + qword_10078A540);
  if (!v23)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v24 = [v23 isEditing];

  if (v24)
  {
    return;
  }

  v21 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v25 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v25)
  {
    goto LABEL_31;
  }

  if ([v25 isActive])
  {
    return;
  }

  v26 = *&v21[v1];
  if (!v26)
  {
    goto LABEL_32;
  }

  if ([v26 isBeingPresented])
  {
    return;
  }

  v27 = [v1 view];
  if (!v27)
  {
LABEL_34:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21 = v27;
  if (!swift_dynamicCastClass())
  {
LABEL_33:

    goto LABEL_34;
  }

  sub_1002EA7D4(v12);

  v28 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
  if ((*(*(v28 - 8) + 48))(v12, 1, v28) == 1)
  {
    v29 = v51;
    sub_100016120(v51);
    v31 = v53;
    v30 = v54;
    goto LABEL_22;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v33 = *(sub_100058000(&unk_10076B860) + 48);
    v34 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
    (*(*(v34 - 8) + 8))(&v12[v33], v34);
    v35 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v35 - 8) + 8))(v12, v35);
LABEL_17:
    v31 = v53;
    v30 = v54;
    v29 = v51;
    (*(v53 + 56))(v51, 1, 1, v54);
    goto LABEL_22;
  }

  v36 = sub_100058000(&qword_10076B858);
  v37 = v48;
  v38 = &v12[*(v36 + 48)];
  v47 = *(v48 + 32);
  v47(v9, v38, v4);

  TTRAccountsListsViewModel.validateHashtagSelection(_:allowsLenientFallback:)();

  sub_1001013F4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v37 + 8);
  v40(v9, v4);
  if (v39)
  {
    v40(v7, v4);
    v41 = 1;
    v30 = v54;
  }

  else
  {
    v47(v18, v7, v4);
    v30 = v54;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
  }

  v31 = v53;
  (*(v53 + 56))(v18, v41, 1, v30);
  v29 = v51;
  sub_100016588(v18, v51, &unk_10076B7C0);
  v42 = type metadata accessor for TTRAccountsListsViewModel.Item();
  (*(*(v42 - 8) + 8))(v12, v42);
LABEL_22:
  v43 = v52;
  sub_10000794C(v29, v52, &unk_10076B7C0);
  if ((*(v31 + 48))(v43, 1, v30) == 1)
  {
    sub_1000079B4(v29, &unk_10076B7C0);
  }

  else
  {
    v44 = v43;
    v45 = v49;
    sub_1001006AC(v44, v49, type metadata accessor for TTRIAccountsListsSelection);
    if (v50)
    {
      v46 = 8;
    }

    else
    {
      v46 = 0;
    }

    sub_1000B551C(v45, v46, 0);
    sub_100100B78(v45, type metadata accessor for TTRIAccountsListsSelection);
    v43 = v29;
  }

  sub_1000079B4(v43, &unk_10076B7C0);
}

void sub_1000B7984()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C((v1 + 112), *(v1 + 136));
  swift_getObjectType();
  v4 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
  v3 = sub_1001013F4(&unk_10078D530, type metadata accessor for TTRIAccountsListsPresenter);
  sub_1002A4ADC(v4, v1, v3);
}

void sub_1000B7BE4()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v4 = *&v0[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v1;
  v6 = [v4 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_100505C14(v8, v10, 0);

  if (!*&v2[v3])
  {
    goto LABEL_12;
  }

  [v2 presentViewController:? animated:? completion:?];
}

void sub_1000B7DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t), void (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v11 = a1;
  }

  v12 = sub_1000B4FCC(a4, a5);
  a6(v12, v13, v14, v15);

  sub_1000079B4(v16, &qword_10076AE40);
}

uint64_t sub_1000B7EB0()
{
  v0 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v9 - v1);
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1000079B4(v2, &unk_10076B7C0);
  }

  sub_1001006AC(v2, v6, type metadata accessor for TTRIAccountsListsSelection);
  sub_10042DDB8(v6);
  if (v8 != 2)
  {
    sub_10042E2B0(v6);
  }

  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000B80FC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v7 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - v8);
  v10 = type metadata accessor for TTRIAccountsListsSelection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v15 = a1;
  }

  sub_1000B3FE8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1000079B4(v16, &qword_10076AE40);
    sub_1000079B4(v9, &unk_10076B7C0);
  }

  else
  {
    sub_1001006AC(v9, v13, type metadata accessor for TTRIAccountsListsSelection);
    a4(v13);
    sub_100100B78(v13, type metadata accessor for TTRIAccountsListsSelection);
    sub_1000079B4(v16, &qword_10076AE40);
  }
}

uint64_t sub_1000B8328(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - v4);
  v6 = type metadata accessor for TTRIAccountsListsSelection(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1000079B4(v5, &unk_10076B7C0);
  }

  sub_1001006AC(v5, v9, type metadata accessor for TTRIAccountsListsSelection);
  sub_100452E1C(v9);
  if (v11)
  {
    a2(v9);
  }

  return sub_100100B78(v9, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000B84E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_1000B8328(v7, a4);

  return sub_1000079B4(v9, &qword_10076AE40);
}

void sub_1000B856C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D520);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v16, &qword_10076AE40);
  if (*(&v17 + 1))
  {
    sub_100003540(0, &unk_10076BD00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v9 = v14;
    if ([v14 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      TTRListType.PredefinedSmartListType.init(rawValue:)();
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        sub_10043F208(v8);
        sub_10042B2D8((v12 & 1) == 0);

        (*(v6 + 8))(v8, v5);
        return;
      }

      v10 = &unk_10078D520;
      v11 = v4;
      goto LABEL_12;
    }
  }

  v10 = &qword_10076AE40;
  v11 = &v16;
LABEL_12:
  sub_1000079B4(v11, v10);
}

uint64_t sub_1000B8830(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1000079B4(v9, &qword_10076AE40);
}

void sub_1000B8974(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - v3;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v47);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10078D510);
  __chkstk_darwin(v14 - 8);
  v16 = (&v38 - v15);
  v17 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, &v51, &qword_10076AE40);
  if (!*(&v52 + 1))
  {
    goto LABEL_11;
  }

  v40 = v7;
  sub_100003540(0, &unk_10076BAB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v21 = v49;
  if ([v49 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {

LABEL_11:
    v22 = &qword_10076AE40;
    v23 = &v51;
    goto LABEL_12;
  }

  sub_100058000(&qword_100768358);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  sub_1005F6EE8(v48, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v39 = v21;
    sub_1001006AC(v16, v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
    sub_100100B10(&v20[*(v17 + 20)], v13, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v13;

      v25 = v44;
      TTRAccountsListsViewModel.pinnedListInnerList(with:)();

      v27 = v45;
      v26 = v46;
      v28 = (*(v45 + 48))(v25, 1, v46);
      v29 = v40;
      if (v28 == 1)
      {
        sub_100100B78(v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);

        v22 = &unk_10078D450;
        v23 = v25;
        goto LABEL_12;
      }

      v35 = v41;
      (*(v27 + 32))(v41, v25, v26);
      (*(v27 + 16))(v29, v35, v26);
      v36 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v37 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v37 - 8) + 104))(v29, v36, v37);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v29, 0, 0);

      sub_100100B78(v29, type metadata accessor for TTRIAccountsListsSelection);
      (*(v27 + 8))(v35, v26);
    }

    else
    {
      v31 = v42;
      v30 = v43;
      (*(v42 + 32))(v10, v13, v43);
      v32 = v40;
      (*(v31 + 16))(v40, v10, v30);
      v33 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
      v34 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v34 - 8) + 104))(v32, v33, v34);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v32, 0, 0);

      sub_100100B78(v32, type metadata accessor for TTRIAccountsListsSelection);
      (*(v31 + 8))(v10, v30);
    }

    sub_100100B78(v20, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
    return;
  }

  v22 = &unk_10078D510;
  v23 = v16;
LABEL_12:
  sub_1000079B4(v23, v22);
}

uint64_t sub_1000B90D4(char a1, id a2)
{
  if (a1)
  {
    v2 = [a2 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = [a2 toolbarItems];
    if (v3)
    {
LABEL_5:
      sub_100003540(0, &qword_10076B800);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_1000B4FCC(&OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController____lazy_storage___addListButton, sub_1000B4A70);
      v8 = v5;
      __chkstk_darwin(v5);
      v7[2] = &v8;
      LOBYTE(v3) = sub_10000C108(sub_100101514, v7, v4);
    }
  }

  return v3 & 1;
}

void sub_1000B92B8(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 setAlpha:a2];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1000B939C(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v6, v3);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6, v8);
    return;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v7 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v7 != enum case for TTRAccountsListsViewModel.Item.list(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    if (v7 != enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.tipSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.tip(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) && v7 != enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      if (v7 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
LABEL_8:
        [v1 isEditing];
        (*(v4 + 8))(v6, v3);
        return;
      }

      if (v7 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
      {
        return;
      }

      if (v7 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        [v1 isEditing];
        return;
      }

      goto LABEL_37;
    }

LABEL_5:
    (*(v4 + 8))(v6, v3);
    return;
  }

  (*(v4 + 8))(v6, v3);
  if (([v1 isEditing] & 1) == 0)
  {
    return;
  }

  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + qword_10078A540);
      if (v14)
      {
        [v14 hasActiveDrop];

        return;
      }

      __break(1u);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_37:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10076B2A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

void sub_1000B9840()
{
  sub_10000B2BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1000B993C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v56 - v12;
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = v7 + 16;
  v17 = *(v7 + 16);
  (v17)(&v56 - v14, a2, v6);
  v18 = (*(v7 + 88))(v15, v6);
  if (v18 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    goto LABEL_54;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_55;
  }

  if (v18 != enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    if (v18 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
    {
      goto LABEL_18;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_55;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
LABEL_18:
      v29 = *(v7 + 8);
      v7 += 8;
      v29(v15, v6);
      type metadata accessor for TTRIAccountsListsViewListCell(0);
      v30 = *(a1 + qword_10078A540);
      if (v30)
      {
        v31 = v30;
        v32 = UITableView.dequeueReusableCell<A>(_:)();

        v33 = v32;
        TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
        v34 = String._bridgeToObjectiveC()();

        [v33 setAccessibilityIdentifier:v34];

        *&v33[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listsViewListCellDelegate + 8] = &off_100714E10;
        swift_unknownObjectWeakAssign();
        v27 = v33;
        sub_1000F5F5C(v27, a2);

        return v27;
      }

      goto LABEL_50;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      type metadata accessor for TTRIAccountListsViewGroupCell();
      v36 = *(a1 + qword_10078A540);
      if (!v36)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        (v17)(v10, v15, v6);
        (*(v7 + 96))(v10, v6);
        v47 = type metadata accessor for UUID();
        (*(*(v47 - 8) + 8))(v10, v47);
        while (1)
        {
LABEL_55:
          v48 = *(v7 + 8);
          v7 += 8;
          v48(v15, v6);
          if (qword_100766F00 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_100003E30(v49, qword_10076B2A0);
          v6 = _swiftEmptyArrayStorage;
          v15 = sub_100008E04(_swiftEmptyArrayStorage);
          sub_100008E04(_swiftEmptyArrayStorage);
          v50 = "Item should be displayed by a section header, not a cell";
          for (i = 56; ; i = 17)
          {
            sub_1003F9818(v50, i, 2);
            __break(1u);
LABEL_59:
            v52 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
            v53 = v17[1];
            ++v17;
            v54 = v41;
            (v53)(v13, v16);
            if (v54 == v52)
            {
              break;
            }

LABEL_60:
            if (qword_100766F00 != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            sub_100003E30(v55, qword_10076B2A0);
            v6 = _swiftEmptyArrayStorage;
            v15 = sub_100008E04(_swiftEmptyArrayStorage);
            sub_100008E04(_swiftEmptyArrayStorage);
            v50 = "Unknown item type";
          }
        }
      }

      v37 = v36;
      v38 = UITableView.dequeueReusableCell<A>(_:)();

      v39 = v38;
      TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v40 = String._bridgeToObjectiveC()();

      [v39 setAccessibilityIdentifier:v40];

LABEL_47:
      v26 = v39;
      goto LABEL_9;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
    {
      goto LABEL_55;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (v17)(v13, v15, v6);
      (*(v7 + 96))(v13, v6);
      v16 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v17 = *(v16 - 8);
      v41 = (v17[11])(v13, v16);
      if (v41 != enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
      {
        goto LABEL_33;
      }

      v18 = type metadata accessor for TTRIInlinePermissionHeaderViewCell();
      v42 = *(a1 + qword_10078A540);
      if (v42)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
      goto LABEL_55;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
    {
      v41 = type metadata accessor for TTRIRemindersListTipCell();
      v43 = *(a1 + qword_10078A540);
      if (!v43)
      {
        __break(1u);
LABEL_33:
        if (v41 != enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
        {
          goto LABEL_59;
        }

        type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
        v42 = *(a1 + qword_10078A540);
        if (!v42)
        {
          goto LABEL_52;
        }

LABEL_35:
        v44 = v42;
        v45 = UITableView.dequeueReusableCell<A>(_:)();

        v27 = v45;
        sub_1000F5F5C(v27, a2);

        (v17[1])(v13, v16);
        goto LABEL_10;
      }

LABEL_46:
      v46 = v43;
      v39 = UITableView.dequeueReusableCell<A>(_:)();

      goto LABEL_47;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_55;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      v18 = type metadata accessor for TTRIHashtagCollectionCell();
      v43 = *(a1 + qword_10078A540);
      if (v43)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      v18 = type metadata accessor for TTRIAccountsListsRecentlyDeletedCell();
      v43 = *(a1 + qword_10078A540);
      if (v43)
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      goto LABEL_55;
    }

    if (v18 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_60;
    }

    type metadata accessor for TTRIAccountsListsSuggestGroceriesCell();
    v43 = *(a1 + qword_10078A540);
    if (!v43)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
  v19 = *(a1 + qword_10078A540);
  if (!v19)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = v19;
  v21 = UITableView.dequeueReusableCell<A>(_:)();

  v22 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v23 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache;
  *&v21[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_dynamicDateGlyphCache] = *(v22 + 56);

  v13 = *(v22 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v13 == 2)
  {
    v13 = sub_100444328(v22);
  }

  v17 = &selRef_layoutIfNeeded;
  v10 = [v21 containerView];
  v24 = *&v21[v23];
  v16 = *&v10[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache];
  *&v10[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache] = v24;

  v25 = [v21 containerView];
  if (!v25)
  {
    goto LABEL_49;
  }

  v25[OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus] = (v13 & 1) == 0;

  v26 = v21;
LABEL_9:
  v27 = v26;
  sub_1000F5F5C(v26, a2);

LABEL_10:
  (*(v7 + 8))(v15, v6);
  return v27;
}

void sub_1000BA1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v8 + 96))(v10, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_8;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_5:
    (*(v8 + 8))(v10, v7);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_8:
    (*(v8 + 8))(v10, v7);
    goto LABEL_9;
  }

  if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003E30(v18, qword_10076B2A0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_9:
    v13 = *(a1 + qword_10078A548);
    if (v13)
    {
      v14 = v13;
      v15 = sub_1000DF504(0);

      *v6 = v15;
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v6, 1, 0);
      sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

    goto LABEL_31;
  }
}

uint64_t sub_1000BA5E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  a3(0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_unknownObjectRetain();

    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v8);
    type metadata accessor for MainActor();

    v19 = static MainActor.shared.getter();
    v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = v19;
    *(v21 + 3) = &protocol witness table for MainActor;
    *(v21 + 4) = v18;
    (*(v9 + 32))(&v21[v20], v11, v8);

    sub_10009E31C(0, 0, v14, &unk_10062FF98, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000BA86C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  a3(0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_unknownObjectRetain();

    a7(a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000BA904(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    static TTRAccesibility.AccountsList.Action.ListInfo.getter();
LABEL_15:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    static TTRAccesibility.AccountsList.Action.SmartListInfo.getter();
    goto LABEL_15;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    static TTRAccesibility.AccountsList.Action.GroupInfo.getter();
    goto LABEL_15;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_1000BAC88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.List();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v18 = (*(v11 + 88))(v13, v10);
  if (v18 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 8))(v13, v19);
LABEL_7:
    v20 = v37;
    *(v37 + 32) = 0;
    *v20 = 0u;
    v20[1] = 0u;
    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
LABEL_6:
    (*(v11 + 8))(v13, v10);
    goto LABEL_7;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    (*(v11 + 96))(v13, v10);
    v21 = v36;
    (*(v36 + 32))(v9, v13, v7);
    v22 = TTRAccountsListsViewModel.Account.objectID.getter();
    v23 = sub_100003540(0, &qword_10076BA50);
    v24 = v37;
    *(v37 + 24) = v23;
    v24[4] = &protocol witness table for REMObjectID;
    *v24 = v22;
    (*(v21 + 8))(v9, v7);
  }

  else
  {
    if (v18 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v11 + 96))(v13, v10);
      (*(v15 + 32))(v17, v13, v14);
      v30 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v15 + 8))(v17, v14);
      v31 = sub_100003540(0, &qword_10076BA50);
      v32 = v37;
      *(v37 + 24) = v31;
      v32[4] = &protocol witness table for REMObjectID;
      *v32 = v30;
      return;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      (*(v11 + 96))(v13, v10);
      v26 = v34;
      v25 = v35;
      (*(v35 + 32))(v6, v13, v34);
      v27 = TTRAccountsListsViewModel.Group.objectID.getter();
      v28 = sub_100003540(0, &qword_10076BA50);
      v29 = v37;
      *(v37 + 24) = v28;
      v29[4] = &protocol witness table for REMObjectID;
      *v29 = v27;
      (*(v25 + 8))(v6, v26);
      return;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_6;
    }

    if (v18 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v18 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_7;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_1000BB2DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B021C();
  }
}

void sub_1000BB330(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v58 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v56 = &v50[-v8];
  __chkstk_darwin(v7);
  v60 = &v50[-v9];
  v10 = sub_100058000(&qword_10076BDE0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v50[-v12];
  v14 = sub_100058000(&qword_10076BC58);
  v15 = __chkstk_darwin(v14 - 8);
  v52 = &v50[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v19 = &v50[-v18];
  __chkstk_darwin(v17);
  v21 = &v50[-v20];
  v64 = sub_100058000(&qword_10076BDE8);
  v63 = *(v64 - 8);
  v22 = __chkstk_darwin(v64);
  v55 = &v50[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v62 = &v50[-v24];
  v25 = *(v4 + 16);
  v57 = a1;
  v53 = v25;
  v54 = v4 + 16;
  v25(v21, a1, v3);
  (*(v4 + 56))(v21, 0, 1, v3);
  TTRAccountsListsViewModel.HashtagFilterOperation.selectedItem.getter();
  v26 = *(v11 + 56);
  sub_10000794C(v21, v13, &qword_10076BC58);
  sub_10000794C(v19, &v13[v26], &qword_10076BC58);
  v61 = v4;
  v27 = *(v4 + 48);
  if (v27(v13, 1, v3) != 1)
  {
    sub_10000794C(v13, v52, &qword_10076BC58);
    if (v27(&v13[v26], 1, v3) != 1)
    {
      v44 = v61;
      v45 = &v13[v26];
      v46 = v60;
      (*(v61 + 32))(v60, v45, v3);
      sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
      v47 = v52;
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v44 + 8);
      v48(v46, v3);
      sub_1000079B4(v19, &qword_10076BC58);
      sub_1000079B4(v21, &qword_10076BC58);
      v48(v47, v3);
      sub_1000079B4(v13, &qword_10076BC58);
      v29 = v64;
      if (v51)
      {
        v28 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_1000079B4(v19, &qword_10076BC58);
    sub_1000079B4(v21, &qword_10076BC58);
    (*(v61 + 8))(v52, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_10076BDE0);
    v29 = v64;
LABEL_7:
    v28 = &enum case for TTRValueBasedMenuItem.SelectionState.off<A>(_:);
    goto LABEL_8;
  }

  sub_1000079B4(v19, &qword_10076BC58);
  sub_1000079B4(v21, &qword_10076BC58);
  if (v27(&v13[v26], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v13, &qword_10076BC58);
  v28 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
  v29 = v64;
LABEL_8:
  v30 = v29;
  (*(v63 + 104))(v62, *v28);
  v31 = v56;
  v53(v56, v57, v3);
  v32 = v61;
  v33 = (*(v61 + 88))(v31, v3);
  v34 = v33;
  if (v33 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:) || v33 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    v35 = *(v32 + 104);
    v36 = v60;
    v35(v60, v33, v3);
    v37 = TTRAccountsListsViewModel.HashtagFilterOperation.Option.localizedOptionString.getter();
    v56 = v38;
    v57 = v37;
    (*(v32 + 8))(v36, v3);
    v39 = v62;
    v40 = v63;
    (*(v63 + 16))(v55, v62, v30);
    v35(v58, v34, v3);
    sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v41 = v59;
    TTRValueBasedMenuItem.init(title:image:state:value:)();
    (*(v40 + 8))(v39, v64);
    v42 = enum case for TTRValueBasedMenuElement.item<A>(_:);
    v43 = sub_100058000(&qword_10076BDF0);
    (*(*(v43 - 8) + 104))(v41, v42, v43);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown option type", 19, 2);
    __break(1u);
  }
}

uint64_t sub_1000BBAF8(unint64_t a1, uint64_t a2)
{
  v197 = a1;
  v4 = sub_100058000(&qword_1007819C0);
  v214 = *(v4 - 8);
  __chkstk_darwin(v4);
  v213 = &v182 - v5;
  v203 = type metadata accessor for Logger();
  v201 = *(v203 - 1);
  __chkstk_darwin(v203);
  v216 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BDA0);
  v198 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = (&v182 - v8);
  v194 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v191 = *(v194 - 8);
  v10 = __chkstk_darwin(v194);
  v12 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v204 = &v182 - v13;
  v14 = sub_100058000(&unk_100771B10);
  v15 = __chkstk_darwin(v14 - 8);
  v207 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v208 = &v182 - v17;
  v209 = type metadata accessor for IndexPath();
  v190 = *(v209 - 8);
  v18 = __chkstk_darwin(v209);
  v193 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v195 = &v182 - v20;
  v21 = sub_100058000(&unk_100771B40);
  v22 = __chkstk_darwin(v21 - 8);
  isa = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v215 = &v182 - v26;
  __chkstk_darwin(v25);
  v205 = (&v182 - v27);
  v218 = sub_100058000(&unk_1007819A0);
  v200 = *(v218 - 8);
  v28 = __chkstk_darwin(v218);
  v211 = (&v182 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v31 = &v182 - v30;
  v212 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v219 = *(v212 - 8);
  v32 = __chkstk_darwin(v212);
  v217 = (&v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v210 = &v182 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v182 - v37;
  __chkstk_darwin(v36);
  v199 = &v182 - v39;
  v40 = sub_100058000(&unk_10076BD90);
  __chkstk_darwin(v40);
  v42 = &v182 - v41;
  v206 = v2;
  *(*(v2 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker) + 16) = 0;
  v202 = a2;
  sub_1003B3EEC(&v182 - v41);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    v60 = *(v219 + 8);
    v61 = v42;
    return v60(v61, v212);
  }

  if (!result)
  {
    v218 = v4;
    v44 = *&v42[*(sub_100058000(&unk_1007819B0) + 48)];
    v45 = v219;
    v46 = v217;
    (*(v219 + 32))(v217, v42, v212);
    v47 = sub_1003B772C(1);
    v48 = *(v47 + 16);
    if (v48)
    {
      v211 = v44;
      v49 = v203;
      v50 = v201;
      v51 = v215;
      if (v48 == 1)
      {
        if (qword_100766F00 != -1)
        {
          swift_once();
        }

        sub_100003E30(v49, qword_10076B2A0);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected: handling single item move in treeView(_:performDropWith:)", v54, 2u);
        }
      }

      v210 = *(v206 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
      Strong = v212;
      (*(v45 + 16))(v51, v46, v212);
      (*(v45 + 56))(v51, 0, 1, Strong);
      if (qword_1007672D8 == -1)
      {
LABEL_11:
        v56 = sub_100003E30(v49, qword_100782E90);
        v50[2](v216, v56, v49);
        sub_100058000(&unk_100775610);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062F800;
        *(inited + 32) = 1835365481;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = Array.description.getter();
        *(inited + 56) = v58;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 49;
        *(inited + 88) = 0xE100000000000000;
        sub_10000794C(v51, isa, &unk_100771B40);
        if ((*(v45 + 48))(isa, 1, Strong) == 1)
        {
          sub_1000079B4(isa, &unk_100771B40);
          v59 = (inited + 96);
          *(inited + 120) = &type metadata for String;
        }

        else
        {
          sub_1001013F4(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
          v82 = Strong;
          v83 = TTRTreeStorageItem.treeItemDescription.getter();
          v84 = v45;
          v85 = v83;
          v87 = v86;
          (*(v84 + 8))(isa, v82);
          v59 = (inited + 96);
          *(inited + 120) = &type metadata for String;
          if (v87)
          {
            *v59 = v85;
            v45 = v219;
            v51 = v215;
LABEL_181:
            *(inited + 104) = v87;
            *(inited + 128) = 50;
            *(inited + 136) = 0xE100000000000000;
            *(inited + 168) = &type metadata for Int;
            *(inited + 144) = v211;
            sub_100008E04(inited);
            swift_setDeallocating();
            sub_100058000(&unk_10076BA70);
            swift_arrayDestroy();
            v174 = v216;
            sub_10000FD44();

            (v50[1])(v174, v49);
            v175 = v51;
            v176 = v51;
            v177 = v205;
            sub_10000794C(v175, v205, &unk_100771B40);
            sub_1001013F4(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
            v178 = v213;
            v179 = v212;
            TTRTreeLocation.init(parent:index:)();
            v180 = v218;
            TTRTreeLocation.parent.getter();
            v181 = TTRTreeLocation.index.getter();
            sub_100439410(v47, v177, v181, 0, 0);

            sub_1000079B4(v177, &unk_100771B40);
            (*(v214 + 8))(v178, v180);
            sub_1000079B4(v176, &unk_100771B40);
            return (*(v45 + 8))(v217, v179);
          }

          v45 = v219;
          v51 = v215;
        }

        *v59 = 7104878;
        v87 = 0xE300000000000000;
        goto LABEL_181;
      }

LABEL_200:
      swift_once();
      goto LABEL_11;
    }

    (*(v45 + 8))(v46, v212);
  }

  v62 = v219;
  v63 = *(v219 + 32);
  v64 = v199;
  v214 = v219 + 32;
  v213 = v63;
  (v63)(v199, v42, v212);
  v65 = sub_1003B5198(1);
  v66 = v65[2];
  if (!v66)
  {

    v76 = sub_1003B7468();
    v77 = v76[2];
    if (v77)
    {
      v221 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v78 = v76 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
      v79 = v198[9];
      do
      {
        sub_10000794C(v78, v9, &unk_10076BDA0);
        v80 = *v9;
        sub_1000079B4(v9, &unk_10076BDA0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v78 += v79;
        --v77;
      }

      while (v77);

      v81 = v221;
      v64 = v199;
    }

    else
    {

      v81 = _swiftEmptyArrayStorage;
    }

    v158 = sub_1004B1A10(v81);
    v159 = v219;
    if (v158)
    {
      v160 = sub_10043ABFC(v81, v64);
    }

    else
    {
      v160 = sub_10043A364(v81, v64);
    }

    v161 = v160;

    v162 = *(v197 + qword_10078A548);
    if (!v162)
    {
      goto LABEL_212;
    }

    v163 = v162;
    v164 = sub_1000DE964(v64);

    if (!v164)
    {
      (*(v159 + 8))(v64, v212);
    }

    [v164 bounds];
    result = CGRect.center.getter();
    v166 = v165;
    v168 = v167;
    v169 = v212;
    if (v161 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v170 = result;
      if (result)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v170 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v170)
      {
LABEL_172:
        if (v170 >= 1)
        {
          v171 = 0;
          do
          {
            if ((v161 & 0xC000000000000001) != 0)
            {
              v172 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v172 = *(v161 + 8 * v171 + 32);
            }

            v173 = v172;
            ++v171;
            sub_1003B6A6C(v172, v64, v166, v168, 0.0, 0.0);

            v169 = v212;
          }

          while (v170 != v171);
          goto LABEL_202;
        }

        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        return result;
      }
    }

LABEL_202:

    return (*(v219 + 8))(v64, v169);
  }

  v192 = v12;
  v221 = _swiftEmptyArrayStorage;
  v67 = v65;
  sub_1004A2154(0, v66, 0);
  isa = v221;
  v68 = (*(v200 + 80) + 32) & ~*(v200 + 80);
  v196 = v67;
  v69 = v67 + v68;
  v216 = v200[9];
  v217 = (v62 + 16);
  v189 = v67 + v68;
  v188 = v66;
  v70 = v66;
  v71 = v212;
  do
  {
    sub_10000794C(v69, v31, &unk_1007819A0);
    v72 = &v31[*(v218 + 40)];
    v215 = *v217;
    (v215)(v38, v72, v71);
    sub_1000079B4(v31, &unk_1007819A0);
    v221 = isa;
    v74 = *(isa + 16);
    v73 = *(isa + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1004A2154(v73 > 1, v74 + 1, 1);
      v71 = v212;
      isa = v221;
    }

    *(isa + 16) = v74 + 1;
    (v213)(isa + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v74, v38, v71);
    v69 += v216;
    --v70;
  }

  while (v70);
  v51 = v199;
  sub_1004382F0(isa, v199);
  if (v75)
  {

    v60 = *(v219 + 8);
    v61 = v51;
    return v60(v61, v212);
  }

  v88 = v205;
  v89 = v212;
  (v215)(v205, v51, v212);
  v47 = v219;
  (*(v219 + 56))(v88, 0, 1, v89);
  sub_100439410(isa, v88, 0, 1, 0);
  v91 = v90;

  sub_1000079B4(v88, &unk_100771B40);
  if (v91)
  {
    v92 = 0;
    v206 = qword_10078A548;
    v205 = v191 + 1;
    v203 = (v190 + 56);
    v187 = (v190 + 48);
    v185 = (v190 + 32);
    v184 = (v190 + 8);
    v191 = (v47 + 8);
    Strong = v89;
    v45 = v197;
    v50 = v194;
    v49 = v204;
    while (1)
    {
      if (v92 >= v196[2])
      {
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v213 = v92;
      v95 = v211;
      sub_10000794C(&v189[v92 * v216], v211, &unk_1007819A0);
      result = (v215)(v210, v95 + *(v218 + 40), Strong);
      v96 = *(v45 + v206);
      if (!v96)
      {
        goto LABEL_210;
      }

      v97 = v96;
      v98 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v100 = v99;
      v219 = v101;
      isa = v102;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v103 = v192;
      if (!*(v100 + 16) || (v214 = v100, v104 = sub_1003AB730(v49), (v105 & 1) == 0))
      {

        v107 = *v205;
        (*v205)(v49, v50);
LABEL_49:
        v114 = v208;
        v116 = *v203;
        (*v203)(v208, 1, 1, v209);
LABEL_50:
        result = sub_1000079B4(v114, &unk_100771B10);
        goto LABEL_51;
      }

      v198 = v97;
      v200 = v98;
      v106 = *(*(v214 + 56) + 8 * v104);
      v107 = *v205;

      v107(v49, v50);
      v108 = sub_10000FA7C(v106, sub_10057E9A0);

      if (!v108)
      {

        goto LABEL_49;
      }

      v109 = v219;
      v110 = *(v219 + 16);
      v186 = v107;
      v190 = v108;
      if (!v110)
      {
        break;
      }

      v111 = v108;
      v47 = v219;
      result = sub_1003B3EDC(v111);
      if ((v112 & 1) == 0)
      {
        break;
      }

      v183 = *(*(v109 + 56) + 8 * result);
      if ((isa & 1) == 0)
      {
        if ((v183 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v183 >= v200[2])
        {
          goto LABEL_205;
        }

        Strong = v200[2 * v183 + 5];
        if (Strong >> 62)
        {
          isa = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          isa = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        v147 = v190;
        while (isa != v47)
        {
          if ((Strong & 0xC000000000000001) != 0)
          {
            v148 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v147 = v190;
            v149 = v148 == v190;
            v49 = v204;
            if (v149)
            {
              goto LABEL_131;
            }
          }

          else
          {
            if (v47 >= *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_194;
            }

            if (*(Strong + 8 * v47 + 32) == v147)
            {
LABEL_131:

              v114 = v208;
              IndexPath.init(row:section:)();
              v115 = 0;
              v103 = v192;
              goto LABEL_86;
            }
          }

          v131 = __OFADD__(v47++, 1);
          if (v131)
          {
            goto LABEL_195;
          }
        }

        v115 = 1;
        v103 = v192;
        goto LABEL_85;
      }

      v50 = v190;
      Strong = swift_weakLoadStrong();

      v113 = 0;
      if (Strong)
      {
        while (1)
        {
          v131 = __OFADD__(v113++, 1);
          if (v131)
          {
            break;
          }

          v51 = Strong;
          swift_beginAccess();
          Strong = *(Strong + 64);
          if (Strong >> 62)
          {
            v49 = _CocoaArrayWrapper.endIndex.getter();
            if (!v49)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v49 = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v49)
            {
              goto LABEL_89;
            }
          }

          v201 = Strong & 0xFFFFFFFFFFFFFF8;

          isa = 0;
          do
          {
            if ((Strong & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v135 = isa + 1;
              if (__OFADD__(isa, 1))
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (isa >= *(v201 + 16))
              {
                goto LABEL_191;
              }

              v47 = *(Strong + 8 * isa + 32);

              v135 = isa + 1;
              if (__OFADD__(isa, 1))
              {
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                __break(1u);
LABEL_192:
                __break(1u);
                goto LABEL_193;
              }
            }

            if (v47 == v50)
            {

LABEL_89:

              goto LABEL_90;
            }

            v131 = __OFADD__(v113, 1);
            v136 = v113 + 1;
            if (v131)
            {
              goto LABEL_186;
            }

            if (*(v47 + 48))
            {
              v220 = 0;
              sub_10023C598(v47, &v220);
              v45 = v220;
              *(v47 + 40) = v220;
              *(v47 + 48) = 0;
            }

            else
            {
              v45 = *(v47 + 40);
            }

            v131 = __OFADD__(v136, v45);
            v113 = v136 + v45;
            if (v131)
            {
              goto LABEL_187;
            }

            ++isa;
          }

          while (v135 != v49);

LABEL_90:
          Strong = swift_weakLoadStrong();

          v50 = v51;
          v49 = v204;
          if (!Strong)
          {
            goto LABEL_45;
          }
        }

LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

LABEL_45:

      result = v113 - 1;
      v50 = v194;
      if (__OFSUB__(v113, 1))
      {
        goto LABEL_208;
      }

      v51 = v199;
      v103 = v192;
      v114 = v208;
      if (result < 0)
      {
        v115 = 1;
      }

      else
      {
        IndexPath.init(row:section:)();
        v115 = 0;
      }

LABEL_86:
      v134 = v209;
      v116 = *v203;
      (*v203)(v114, v115, 1, v209);

      if ((*v187)(v114, 1, v134) == 1)
      {

        v45 = v197;
        v107 = v186;
        goto LABEL_50;
      }

      v137 = v116;
      v138 = v195;
      (*v185)(v195, v114, v134);
      v139 = v50;
      v140 = v198;
      v141 = *(v198 + qword_100771730);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v142 = [v141 cellForRowAtIndexPath:isa];

      v50 = v139;

      v143 = v138;
      v116 = v137;
      v51 = v199;
      result = (*v184)(v143, v134);
      v45 = v197;
      v107 = v186;
      if (v142)
      {

        v144 = v210;
        sub_1003B60D0(*v211, v210);
        v93 = *v191;
        v145 = v144;
LABEL_155:
        Strong = v212;
        v93(v145, v212);
        goto LABEL_35;
      }

LABEL_51:
      v117 = *(v45 + v206);
      if (!v117)
      {
        goto LABEL_211;
      }

      v200 = v117;
      v201 = sub_1000C8540(&unk_10076B770, &unk_10062FB68, sub_1000E8430, sub_1000E1A68);
      v119 = v118;
      v219 = v120;
      isa = v121;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      if (!*(v119 + 16) || (v214 = v119, v122 = sub_1003AB730(v103), (v123 & 1) == 0))
      {

        v107(v103, v50);
LABEL_33:
        v93 = *v191;
        Strong = v212;
        (*v191)(v210, v212);
        v94 = v207;
        v116(v207, 1, 1, v209);
        goto LABEL_34;
      }

      v124 = *(*(v214 + 56) + 8 * v122);

      v107(v103, v50);
      v125 = sub_10000FA7C(v124, sub_10057E9A0);

      if (!v125)
      {

        goto LABEL_33;
      }

      v126 = v219;
      v127 = *(v219 + 16);
      v190 = v125;
      if (v127)
      {
        v47 = v219;
        result = sub_1003B3EDC(v125);
        v128 = v207;
        if ((v129 & 1) == 0)
        {
          v146 = 1;
LABEL_116:
          Strong = v212;
          goto LABEL_150;
        }

        v183 = *(*(v126 + 56) + 8 * result);
        if (isa)
        {
          v50 = v190;
          Strong = swift_weakLoadStrong();

          v130 = 0;
          if (Strong)
          {
            v186 = v116;
            do
            {
              v131 = __OFADD__(v130++, 1);
              if (v131)
              {
                goto LABEL_199;
              }

              v51 = Strong;
              swift_beginAccess();
              Strong = *(Strong + 64);
              if (Strong >> 62)
              {
                v49 = _CocoaArrayWrapper.endIndex.getter();
                if (v49)
                {
LABEL_65:
                  v198 = (Strong & 0xFFFFFFFFFFFFFF8);

                  isa = 0;
                  while (1)
                  {
                    if ((Strong & 0xC000000000000001) != 0)
                    {
                      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v132 = isa + 1;
                      if (__OFADD__(isa, 1))
                      {
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      if (isa >= v198[2])
                      {
                        goto LABEL_192;
                      }

                      v47 = *(Strong + 8 * isa + 32);

                      v132 = isa + 1;
                      if (__OFADD__(isa, 1))
                      {
                        goto LABEL_188;
                      }
                    }

                    if (v47 == v50)
                    {
                      break;
                    }

                    v131 = __OFADD__(v130, 1);
                    v133 = v130 + 1;
                    if (v131)
                    {
                      goto LABEL_189;
                    }

                    if (*(v47 + 48))
                    {
                      v220 = 0;
                      sub_10023C598(v47, &v220);
                      v45 = v220;
                      *(v47 + 40) = v220;
                      *(v47 + 48) = 0;
                    }

                    else
                    {
                      v45 = *(v47 + 40);
                    }

                    v131 = __OFADD__(v133, v45);
                    v130 = v133 + v45;
                    if (v131)
                    {
                      goto LABEL_190;
                    }

                    ++isa;
                    if (v132 == v49)
                    {

                      goto LABEL_81;
                    }
                  }

LABEL_81:
                  v116 = v186;
                  goto LABEL_61;
                }
              }

              else
              {
                v49 = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v49)
                {
                  goto LABEL_65;
                }
              }

LABEL_61:
              Strong = swift_weakLoadStrong();

              v50 = v51;
              v49 = v204;
            }

            while (Strong);
          }

          result = v130 - 1;
          v50 = v194;
          if (__OFSUB__(v130, 1))
          {
            goto LABEL_209;
          }

          Strong = v212;
          v45 = v197;
          v51 = v199;
          v128 = v207;
          if (result < 0)
          {
            v146 = 1;
          }

          else
          {
            IndexPath.init(row:section:)();
            v146 = 0;
          }

          goto LABEL_150;
        }

        if ((v183 & 0x8000000000000000) != 0)
        {
          goto LABEL_206;
        }

        if (v183 >= *(v201 + 16))
        {
          goto LABEL_207;
        }

        Strong = *(v201 + 16 * v183 + 40);
        if (Strong >> 62)
        {
          isa = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          isa = *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = 0;
        while (isa != v47)
        {
          if ((Strong & 0xC000000000000001) != 0)
          {
            v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v149 = v150 == v190;
            v49 = v204;
            if (v149)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v47 >= *((Strong & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_196;
            }

            if (*(Strong + 8 * v47 + 32) == v190)
            {
LABEL_146:

              v128 = v207;
              IndexPath.init(row:section:)();
              v146 = 0;
              goto LABEL_116;
            }
          }

          v131 = __OFADD__(v47++, 1);
          if (v131)
          {
            goto LABEL_197;
          }
        }
      }

      v146 = 1;
      Strong = v212;
      v128 = v207;
LABEL_150:
      v151 = v209;
      v116(v128, v146, 1, v209);

      if ((*v187)(v128, 1, v151) != 1)
      {
        v152 = v193;
        (*v185)(v193, v128, v151);
        v153 = v200;
        v154 = *(v200 + qword_100771730);
        v155 = IndexPath._bridgeToObjectiveC()().super.isa;
        isa = [v154 cellForRowAtIndexPath:v155];

        (*v184)(v152, v151);
        if (isa)
        {
          [isa bounds];
          CGRect.center.getter();
          sub_1003B6A6C(*v211, v51, v156, v157, 0.0, 0.0);
        }

        v93 = *v191;
        v145 = v210;
        goto LABEL_155;
      }

      v94 = v128;
      v93 = *v191;
      (*v191)(v210, Strong);
LABEL_34:
      sub_1000079B4(v94, &unk_100771B10);
LABEL_35:
      v47 = (v213 + 1);
      sub_1000079B4(v211, &unk_1007819A0);
      v92 = v47;
      if (v47 == v188)
      {
        v93(v51, Strong);
      }
    }

    v115 = 1;
LABEL_85:
    v114 = v208;
    goto LABEL_86;
  }

  (*(v47 + 8))(v51, v89);
}

uint64_t sub_1000BDD44(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v5 = sub_100058000(&qword_10076BB30);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v6;
  v7 = sub_100058000(&qword_10076BD88);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_100058000(&unk_100771B40);
  v11 = __chkstk_darwin(v10 - 8);
  v40 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v45 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v40 - v19;
  v21 = sub_100058000(&unk_10076BD90);
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  sub_10000794C(a1, &v40 - v22, &unk_10076BD90);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v45 + 8))(v23, v15);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload)
  {
    v29 = v45;
    v30 = v15;
    (*(v45 + 32))(v18, v23, v15);
    v31 = sub_1001AACA0();
    if (v32)
    {
      v33 = v41;
      sub_100439D90(v31, v41);

      (*(v29 + 8))(v18, v30);
      v34 = sub_100058000(&qword_10076BB38);
      v27 = (*(*(v34 - 8) + 48))(v33, 1, v34) != 1;
      sub_1000079B4(v33, &qword_10076BB30);
    }

    else
    {
      TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
      v37 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
      if ((*(*(v37 - 8) + 48))(v9, 1, v37) == 1)
      {
        sub_1000079B4(v9, &qword_10076BD88);
        v38 = v45;
        v39 = v40;
        (*(v45 + 16))(v40, v18, v30);
        (*(v38 + 56))(v39, 0, 1, v30);
        v27 = TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)();

        sub_1000079B4(v39, &unk_100771B40);
        (*(v38 + 8))(v18, v30);
      }

      else
      {

        (*(v45 + 8))(v18, v15);
        sub_1000079B4(v9, &qword_10076BD88);
        v27 = 1;
      }
    }
  }

  else
  {
    sub_100058000(&unk_1007819B0);
    v25 = v45;
    (*(v45 + 32))(v20, v23, v15);
    sub_1001AACA0();
    if (v26)
    {

      (*(v25 + 8))(v20, v15);
LABEL_7:
      v27 = 0;
      return v27 & 1;
    }

    (*(v25 + 16))(v14, v20, v15);
    (*(v25 + 56))(v14, 0, 1, v15);
    v35 = TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)();

    if (v35)
    {
      v27 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter() ^ 1;
      v36 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.hasSubjectExceedingMaximumNumberOfPinnedLists.getter();
    }

    else
    {
      v27 = 0;
      v36 = 0;
    }

    sub_1000079B4(v14, &unk_100771B40);
    (*(v25 + 8))(v20, v15);
    *v42 = v36 & 1;
  }

  return v27 & 1;
}

void sub_1000BE3A0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([v2 isViewLoaded])
  {
    if (a2)
    {
      v8 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v8 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v9 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
        v10 = *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
        if (v10)
        {
          v11 = [v10 searchBar];
          v12 = String._bridgeToObjectiveC()();
          [v11 setText:v12];

          v13 = *&v2[v9];
          if (v13)
          {
            v14 = [v13 searchBar];
            v15 = [v14 text];

            if (v15)
            {

              sub_100058000(&qword_10076B7B8);
              v16 = swift_allocBox();
              sub_1000B3FE8(v17);
              *v7 = v16;
              swift_storeEnumTagMultiPayload();
              sub_1000B551C(v7, 4, 0);
              sub_100100B78(v7, type metadata accessor for TTRIAccountsListsSelection);
            }

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }
    }
  }

  else
  {
    v18 = &v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_pendingSearchTerm];
    *v18 = a1;
    *(v18 + 1) = a2;
  }
}

uint64_t sub_1000BE5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v68 = type metadata accessor for TTRTreeViewAnimationByType();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100058000(&qword_10076B998);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = &v58 - v6;
  v8 = sub_100058000(&qword_10076B9A0);
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for TTRIAccountsListsViewUpdates();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v16 = &v58 - v15;
  __chkstk_darwin(v14);
  v18 = &v58 - v17;
  if ([v3 isViewLoaded])
  {
    v72 = v16;
    v59 = v11;
    v19 = *(v11 + 20);
    v20 = v70;
    v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition] = *(v70 + v19 + 1);
    v21 = [v3 view];
    if (v21)
    {
      v22 = v21;
      v61 = v7;
      v73 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v62 = v22;
      v23 = swift_dynamicCastClass();
      v60 = v23;
      if (v23)
      {
        v63 = &v58;
        __chkstk_darwin(v23);
        v58 = &v58 - 4;
        v56 = v3;
        v57 = a1;
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100100B10(v20, v18, type metadata accessor for TTRIAccountsListsViewUpdates);
        sub_100100B10(v18, v72, type metadata accessor for TTRIAccountsListsViewUpdates);
        sub_100100B10(v18, v73, type metadata accessor for TTRIAccountsListsViewUpdates);
        v25 = v20;
        v26 = (*(v69 + 80) + 24) & ~*(v69 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v24;
        sub_1001006AC(v18, v27 + v26, type metadata accessor for TTRIAccountsListsViewUpdates);
        v28 = v71;
        (*(v71 + 16))(v10, v25, v8);
        v29 = (*(v28 + 88))(v10, v8);
        if (v29 == enum case for TTRTreeViewUpdates.incremental<A>(_:))
        {
          (*(v28 + 96))(v10, v8);
          v30 = *(sub_100058000(&qword_10076B9A8) + 48);
          v31 = v61;
          v32 = v65;
          (*(v67 + 32))(v61, v10, v65);
          v33 = v66;
          v34 = &v10[v30];
          v35 = v64;
          (*(v66 + 32))(v64, v34, v68);
          swift_retain_n();
          v36 = TTRTreeDiffResult.isEmpty.getter();
          if (v36)
          {
            *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;

            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            v38 = v73;
            if (Strong)
            {
              v39 = Strong;
              *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
              sub_1000B17BC();
              v40 = v72;
              sub_1000B7230(v72[*(v59 + 20)]);
              sub_1000B021C();

              v41 = v39;
            }

            else
            {

              v41 = v62;
              v40 = v72;
            }

            sub_100100B78(v38, type metadata accessor for TTRIAccountsListsViewUpdates);

            sub_100100B78(v40, type metadata accessor for TTRIAccountsListsViewUpdates);
            (*(v33 + 8))(v35, v68);
            (*(v67 + 8))(v61, v32);
          }

          __chkstk_darwin(v36);
          v52 = v58;
          *(&v58 - 6) = sub_1000FF81C;
          *(&v58 - 5) = v52;
          v53 = v60;
          *(&v58 - 4) = v31;
          *(&v58 - 3) = v53;
          v56 = v35;
          v54 = *(v53 + qword_10078A548);
          v24 = v73;
          if (v54)
          {
            v55 = v54;
            sub_1001A0EA8(0, 0, sub_1000FF864, v27, v55, sub_1000FF8D8);

            sub_100100B78(v24, type metadata accessor for TTRIAccountsListsViewUpdates);

            sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);

            (*(v33 + 8))(v35, v68);
            (*(v67 + 8))(v31, v32);
          }
        }

        else
        {
          v43 = v29;
          v44 = enum case for TTRTreeViewUpdates.reload<A>(_:);

          if (v43 != v44)
          {
LABEL_26:
            sub_100100B78(v73, type metadata accessor for TTRIAccountsListsViewUpdates);
            sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
          *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;

          v45 = *(v60 + qword_10078A548);
          v46 = v73;
          if (v45)
          {
            v47 = v45;
            sub_1000C8050();

            swift_beginAccess();
            v48 = swift_unknownObjectWeakLoadStrong();
            v49 = v59;
            if (v48)
            {
              v50 = v48;
              *(v48 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
              sub_1000B17BC();
              sub_1000B7230(*(v46 + *(v49 + 20)));
              sub_1000B021C();

              v51 = v50;
            }

            else
            {

              v51 = v62;
            }

            sub_100100B78(v46, type metadata accessor for TTRIAccountsListsViewUpdates);
          }

          sub_100100B78(v46, type metadata accessor for TTRIAccountsListsViewUpdates);
          __break(1u);
        }

        sub_100100B78(v24, type metadata accessor for TTRIAccountsListsViewUpdates);

        sub_100100B78(v72, type metadata accessor for TTRIAccountsListsViewUpdates);
        __break(1u);
      }
    }

    LODWORD(v57) = 0;
    v56 = 367;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_26;
  }

  *&v3[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;
}

void sub_1000BEF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition) = 2;
    sub_1000B17BC();
    v6 = type metadata accessor for TTRIAccountsListsViewUpdates();
    sub_1000B7230(*(a3 + *(v6 + 20)));
    sub_1000B021C();
  }
}

void sub_1000BEFE0(uint64_t a1)
{
  v2 = v1;
  if ([v2 isViewLoaded])
  {
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = *(__chkstk_darwin(v6) + qword_10078A548);
        if (v7)
        {
          v8 = v7;
          sub_1001A0EA8(0, 0, 0, 0, v8, sub_100100B04);

          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a1;
  }
}

uint64_t sub_1000BF188(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100058000(&unk_100771B40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v62 = sub_100058000(&qword_1007819C0);
  v12 = *(v62 - 8);
  v13 = __chkstk_darwin(v62);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v61 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v17 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_10076BC30);
  v20 = __chkstk_darwin(v19 - 8);
  v58 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = a1;
  v57 = &v49 - v22;
  *&a1[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel] = a2;

  v23 = 0;
  v49 = a3;
  v24 = *(a3 + 16);
  v25 = v16;
  v54 = (v12 + 32);
  v55 = (v17 + 32);
  v50 = (v17 + 8);
  v51 = (v12 + 8);
  v52 = v24;
  v26 = v24 == 0;
  if (v24)
  {
    goto LABEL_3;
  }

LABEL_2:
  v27 = sub_100058000(&qword_10076BC38);
  v28 = v58;
  (*(*(v27 - 8) + 56))(v58, 1, 1, v27);
  v59 = v24;
  v29 = v62;
  while (1)
  {
    v32 = v28;
    v33 = v57;
    sub_100016588(v32, v57, &qword_10076BC30);
    v34 = sub_100058000(&qword_10076BC38);
    result = (*(*(v34 - 8) + 48))(v33, 1, v34);
    if (result == 1)
    {
      return result;
    }

    v36 = *(v34 + 48);
    (*v55)(v60, v33, v61);
    v37 = *v54;
    (*v54)(v25, v33 + v36, v29);
    v38 = v53;
    v37();
    v39 = [v56 view];
    if (!v39)
    {
      goto LABEL_17;
    }

    v17 = v39;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      goto LABEL_16;
    }

    v41 = v40;
    v42 = v62;
    v43 = v25;
    v44 = TTRTreeLocation.index.getter();
    TTRTreeLocation.parent.getter();
    v45 = TTRTreeLocation.index.getter();
    TTRTreeLocation.parent.getter();
    v46 = *(v41 + qword_10078A548);
    if (!v46)
    {
      goto LABEL_15;
    }

    v47 = v46;
    v48 = v60;
    sub_1000D59B8(v60, v44, v11, v45, v9);

    sub_1000079B4(v9, &unk_100771B40);
    sub_1000079B4(v11, &unk_100771B40);
    v17 = *v51;
    (*v51)(v38, v42);
    (v17)(v43, v42);
    (*v50)(v48, v61);
    v25 = v43;
    v24 = v52;
    v23 = v59;
    v26 = v59 >= v52;
    if (v59 == v52)
    {
      goto LABEL_2;
    }

LABEL_3:
    v28 = v58;
    if (v26)
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:

LABEL_17:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v17 = sub_100058000(&qword_10076BC38);
    v30 = *(v17 - 1);
    sub_10000794C(v49 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, v28, &qword_10076BC38);
    v31 = __OFADD__(v23, 1);
    v59 = v23 + 1;
    v29 = v62;
    if (v31)
    {
      goto LABEL_14;
    }

    (*(v30 + 56))(v28, 0, 1, v17);
  }
}

uint64_t sub_1000BF7E0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v12 - 8) + 16))(v6, a1, v12);
    v13 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v14 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
  }

  else
  {
    sub_100058000(&unk_10076BAA0);
    v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10062D400;
    v19 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v19 - 8) + 16))(v18 + v17, a1, v19);
    (*(v16 + 104))(v18 + v17, enum case for TTRAccountsListsViewModel.Item.list(_:), v15);
    *v6 = v18;
  }

  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2 & 1);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000BFAE8(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.List.pinState.getter();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v6 + 96))(v8, v5);
    if (*v8)
    {
      v10 = type metadata accessor for TTRAccountsListsViewModel.List();
      (*(*(v10 - 8) + 16))(v4, a1, v10);
      v11 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      v12 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v12 - 8) + 104))(v4, v11, v12);
LABEL_6:
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v4, 0, 0);
      sub_100100B78(v4, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

LABEL_5:
    sub_100058000(&unk_10076BAA0);
    v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10062D400;
    v17 = type metadata accessor for TTRAccountsListsViewModel.List();
    (*(*(v17 - 8) + 16))(v16 + v15, a1, v17);
    (*(v14 + 104))(v16 + v15, enum case for TTRAccountsListsViewModel.Item.customSmartList(_:), v13);
    *v4 = v16;
    goto LABEL_6;
  }

  if (v9 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    goto LABEL_5;
  }

  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10076B2A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown pin state", 17, 2);
  __break(1u);
}

uint64_t sub_1000BFE9C(uint64_t a1)
{
  v3 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v21 - v10);
  v12 = type metadata accessor for REMHashtagLabelSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B3FE8(v11);
  v16 = type metadata accessor for TTRIAccountsListsSelection(0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    return sub_1000079B4(v11, &unk_10076B7C0);
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_100100B78(v11, type metadata accessor for TTRIAccountsListsSelection);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1001013F4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return (*(v13 + 8))(v15, v12);
  }

  TTRAccountsListsViewModel.hashtagsItem.getter();

  v18 = v22;
  if ((*(v22 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return sub_1000079B4(v5, &unk_100771B40);
  }

  (*(v18 + 32))(v8, v5, v6);
  v19 = [v1 view];
  if (!v19)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20 = v19;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_14;
  }

  sub_1002EBB5C(v8, a1, 0, 0);

  (*(v18 + 8))(v8, v6);
  return (*(v13 + 8))(v15, v12);
}

void sub_1000C0300()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v15 = sub_1000C0584;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_100715400;
  v5 = _Block_copy(&v11);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];
  _Block_release(v5);

  v8 = String._bridgeToObjectiveC()();
  v15 = sub_1000C0624;
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1001762CC;
  v14 = &unk_100715428;
  v9 = _Block_copy(&v11);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v3 addAction:v10];
  [v3 addAction:v7];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1000C0584()
{
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10076B2A0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();
}

uint64_t sub_1000C0624()
{
  v0 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultWorkspace];
    if (v8)
    {
      v9 = v8;
      LSApplicationWorkspace.open(universalLink:)();
    }

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1000C07C8(int a1)
{
  v97 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - v10;
  v12 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v88 - v13);
  v15 = type metadata accessor for TTRIAccountsListsSelection(0);
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = __chkstk_darwin(v15);
  v95 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v88 - v18;
  v20 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v20 - 8);
  v22 = &v88 - v21;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v92 = v8;
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v89 = v11;
  v90 = v5;
  v94 = a1;
  v93 = v3;
  v23 = type metadata accessor for Logger();
  v24 = sub_100003E30(v23, qword_10076B2A0);
  v25 = v1;
  v91 = v24;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v88 = v6;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 136315138;
    aBlock = 0;
    v102 = 0xE000000000000000;
    v30 = v25;
    v31 = *&v25[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v100 = v29;
    v32 = *(v31 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v32 == 2)
    {
      LOBYTE(v32) = sub_100444328(v31);
    }

    v33 = (v32 & 1) == 0;
    if (v32)
    {
      v34 = 0x65736C6166;
    }

    else
    {
      v34 = 1702195828;
    }

    if (v33)
    {
      v35 = 0xE400000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = v35;
    String.append(_:)(*&v34);

    v37 = sub_100004060(aBlock, v102, &v100);

    *(v28 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Reloading tree view because isInExpandedSplitView has changed { newValue: %s }", v28, 0xCu);
    sub_100004758(v29);

    v6 = v88;
  }

  else
  {
    v30 = v25;
  }

  v38 = [v30 view];
  if (!v38)
  {
    goto LABEL_76;
  }

  v39 = v38;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
LABEL_75:

    goto LABEL_76;
  }

  v41 = *(v40 + qword_10078A548);
  if (!v41)
  {
    __break(1u);
    goto LABEL_64;
  }

  v42 = v41;
  sub_1000C8050();

  v43 = [v30 view];
  if (!v43)
  {
LABEL_76:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v39 = v43;
  v44 = swift_dynamicCastClass();
  v45 = v94;
  if (!v44)
  {
    goto LABEL_75;
  }

  v46 = v44;

  TTRAccountsListsViewModel.hashtagsHeaderItem.getter();

  v47 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v48 = (*(*(v47 - 8) + 48))(v22, 1, v47);
  v49 = *(v46 + qword_10078A548);
  if (!v49)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v50 = v48 == 1;
  v51 = v49;
  sub_1000DAA98(v22, v50, 5);

  sub_1000079B4(v22, &unk_100771B40);
  sub_1000B0100();
  sub_1000B021C();
  v52 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v53 = *&v30[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController];
  if (v45)
  {
    if (v53)
    {
      [v53 setObscuresBackgroundDuringPresentation:1];
      v54 = *&v30[v52];
      if (v54)
      {
        [v54 setAutomaticallyShowsSearchResultsController:1];
        v55 = *&v30[v52];
        if (v55)
        {
          if ([v55 isActive])
          {
            goto LABEL_28;
          }

          v56 = *&v30[v52];
          if (!v56)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          if ([v56 isBeingPresented])
          {
LABEL_28:
            v57 = *&v30[v52];
            if (v57)
            {
LABEL_38:
              v61 = [v57 searchBar];
              v62 = [v61 text];

              if (v62)
              {
                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                v66 = HIBYTE(v65) & 0xF;
                if ((v65 & 0x2000000000000000) == 0)
                {
                  v66 = v63 & 0xFFFFFFFFFFFFLL;
                }

                v67 = v66 != 0;
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            goto LABEL_70;
          }

LABEL_45:
          v67 = 0;
          goto LABEL_46;
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v53)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  [v53 setObscuresBackgroundDuringPresentation:0];
  v58 = *&v30[v52];
  if (!v58)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v58 setShowsSearchResultsController:0];
  sub_1000B3FE8(v14);
  if ((*(v98 + 48))(v14, 1, v99) == 1)
  {
    sub_1000079B4(v14, &unk_10076B7C0);
    v59 = *&v30[v52];
    if (!v59)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ([v59 isActive])
    {
      goto LABEL_37;
    }

    v60 = *&v30[v52];
    if (!v60)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if ([v60 isBeingPresented])
    {
LABEL_37:
      v57 = *&v30[v52];
      if (v57)
      {
        goto LABEL_38;
      }

      goto LABEL_73;
    }

    goto LABEL_45;
  }

  sub_1001006AC(v14, v19, type metadata accessor for TTRIAccountsListsSelection);
  v68 = v95;
  sub_1001006AC(v19, v95, type metadata accessor for TTRIAccountsListsSelection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100100B78(v68, type metadata accessor for TTRIAccountsListsSelection);
    goto LABEL_45;
  }

  v69 = swift_projectBox();
  v70 = v89;
  sub_10000794C(v69, v89, &qword_10076B7B8);
  sub_1000079B4(v70, &unk_10076B7C0);

  v67 = 1;
LABEL_46:
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v99 = v30;
    aBlock = v74;
    *v73 = 136315394;
    if (v45)
    {
      v75 = 1702195828;
    }

    else
    {
      v75 = 0x65736C6166;
    }

    if (v45)
    {
      v76 = 0xE400000000000000;
    }

    else
    {
      v76 = 0xE500000000000000;
    }

    v77 = sub_100004060(v75, v76, &aBlock);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2080;
    if (v67)
    {
      v78 = 1702195828;
    }

    else
    {
      v78 = 0x65736C6166;
    }

    if (v67)
    {
      v79 = 0xE400000000000000;
    }

    else
    {
      v79 = 0xE500000000000000;
    }

    v80 = sub_100004060(v78, v79, &aBlock);

    *(v73 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v71, v72, "Accounts list view rootViewCollapseStateDidChange {isCollapsed: %s, shouldPerformSearch: %s}", v73, 0x16u);
    swift_arrayDestroy();
  }

  v82 = v92;
  v81 = v93;
  if (v67)
  {
    sub_100003540(0, &qword_100777780);
    v83 = static OS_dispatch_queue.main.getter();
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = sub_1000FD668;
    v106 = v84;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_10001047C;
    v104 = &unk_100714FF0;
    v85 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001013F4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
    v86 = v96;
    sub_100058000(&qword_100780A50);
    sub_10000E188(&qword_10076B7E0, &qword_100780A50);
    v87 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v85);

    (*(v81 + 8))(v86, v87);
    (*(v6 + 8))(v82, v90);
  }
}

void sub_1000C13AC()
{
  v0 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v0);
  v2 = (&v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController;
  v6 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [v6 searchBar];
  v8 = [v7 isFirstResponder];

  v9 = *&v4[v5];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = [v9 searchBar];
  v11 = [v10 text];

  if (v11)
  {

    sub_100058000(&qword_10076B7B8);
    v12 = swift_allocBox();
    sub_1000B3FE8(v13);
    *v2 = v12;
    swift_storeEnumTagMultiPayload();
    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4;
    }

    sub_1000B551C(v2, v14, 0);

    sub_100100B78(v2, type metadata accessor for TTRIAccountsListsSelection);
  }

  else
  {
  }
}

uint64_t sub_1000C1564(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&unk_10076BAA0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Group();
  (*(*(v11 - 8) + 16))(v10 + v9, a1, v11);
  (*(v8 + 104))(v10 + v9, enum case for TTRAccountsListsViewModel.Item.group(_:), v7);
  *v6 = v10;
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1730(uint64_t a1, int a2)
{
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
  v9 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v6, 0, a2);
  return sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1874(uint64_t a1)
{
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v4, 0, 0);
  return sub_100100B78(v4, type metadata accessor for TTRIAccountsListsSelection);
}

void sub_1000C1970(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v4 view];
  if (!v8)
  {
    goto LABEL_7;
  }

  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {

LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  sub_1000E596C(a1, a2, a3 & 1);
}

uint64_t sub_1000C1A68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_1000B551C(v5, 16, 0);
  return sub_100100B78(v5, type metadata accessor for TTRIAccountsListsSelection);
}

uint64_t sub_1000C1B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagCollectionCellDelegate.hashtagCollectionCell(_:layoutResultDidChange:)(a1, a2, ObjectType, a4);
}

uint64_t sub_1000C1BB8(int a1, id a2)
{
  v2 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TTRIAccountsListsPresenter(0);
  v4 = sub_1004493C0(v3);

  return v4 & 1;
}

uint64_t sub_1000C1C90(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  sub_100003540(0, &qword_10076BAC0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B48C(v7, a3, a4);
}

uint64_t sub_1000C1D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return TTRIHashtagCollectionCellDelegate.hashtagCollectionCellRequestAddTag(_:)(a1, ObjectType, a3);
}

void sub_1000C1DFC(void *a1)
{
  if ([a1 isBeingDismissed])
  {
    v2 = 1;
  }

  else
  {
    type metadata accessor for TTRISearchController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = *(v3 + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed);
    }

    else
    {
      v2 = 0;
    }
  }

  if ([a1 isActive] && (v2 & 1) == 0)
  {

    sub_1000C1EA4(0);
  }
}

void sub_1000C1EA4(char a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v3);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v7 = *(v6 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v7 == 2)
  {
    if (!sub_100444328(v6))
    {
LABEL_3:
      v8 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
      if (v8)
      {
        v9 = [v8 searchBar];
        v10 = [v9 text];

        if (v10)
        {

          sub_100058000(&qword_10076B7B8);
          v11 = swift_allocBox();
          sub_1000B3FE8(v12);
          *v5 = v11;
          swift_storeEnumTagMultiPayload();
          if (a1)
          {
            v13 = 4;
          }

          else
          {
            v13 = 0;
          }

          sub_1000B551C(v5, v13, 0);
          sub_100100B78(v5, type metadata accessor for TTRIAccountsListsSelection);
        }

        return;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchController);
  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v16 = v14;
  v17 = [v15 searchBar];
  v18 = [v17 text];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_1005065C4(v19, v21, a1 & 1);
}

uint64_t sub_1000C2140(void *a1)
{
  result = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
  v4 = *(result + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v4 == 2)
  {
    result = sub_100444328(result);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchResultContainerViewController);
  if (v5)
  {
    v6 = v5;
    v7 = [a1 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    sub_100505C14(v9, v11, 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C2328()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076B7B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_100058000(&unk_10076B7C0);
  v6 = __chkstk_darwin(v5 - 8);
  v45 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v6);
  v43 = &v41 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = __chkstk_darwin(v10);
  v42 = &v41 - v14;
  __chkstk_darwin(v13);
  v16 = (&v41 - v15);
  v17 = type metadata accessor for TTRIAccountsListsSelection(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v44 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v41 - v22;
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  type metadata accessor for TTRISearchController();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    *(v26 + OBJC_IVAR____TtC9RemindersP33_6BFE23A799CB20D2DB7CA4EA96508B8A20TTRISearchController_ttri_isBeingDismissed) = 1;
  }

  sub_100019008(0, 1);
  v27 = *(*(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter) + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
  if (v27 != 2)
  {
    if (v27)
    {
      return;
    }

LABEL_7:
    sub_1000B3FE8(v16);
    v28 = *(v18 + 48);
    if (v28(v16, 1, v17) == 1)
    {
      sub_1000079B4(v16, &unk_10076B7C0);
      return;
    }

    sub_1001006AC(v16, v25, type metadata accessor for TTRIAccountsListsSelection);
    sub_100100B10(v25, v23, type metadata accessor for TTRIAccountsListsSelection);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_100100B78(v25, type metadata accessor for TTRIAccountsListsSelection);
      v32 = v23;
LABEL_23:
      sub_100100B78(v32, type metadata accessor for TTRIAccountsListsSelection);
      return;
    }

    v41 = v28;
    v29 = swift_projectBox();
    sub_10000794C(v29, v4, &qword_10076B7B8);
    sub_1000079B4(v4, &unk_10076B7C0);

    v30 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_searchSelection;
    swift_beginAccess();
    sub_10000794C(v1 + v30, v12, &unk_10076B7C0);
    if (v41(v12, 1, v17) == 1)
    {
      v31 = v12;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_100100B78(v12, type metadata accessor for TTRIAccountsListsSelection);
        goto LABEL_18;
      }

      v33 = swift_projectBox();
      sub_10000794C(v33, v4, &qword_10076B7B8);
      v34 = v4;
      v35 = v42;
      sub_100016588(v34, v42, &unk_10076B7C0);

      v36 = v35;
      v37 = v43;
      sub_100016588(v36, v43, &unk_10076B7C0);
      if (v41(v37, 1, v17) != 1)
      {
        v39 = v37;
LABEL_22:
        v40 = v44;
        sub_1001006AC(v39, v44, type metadata accessor for TTRIAccountsListsSelection);
        sub_1000B551C(v40, 0, 0);
        sub_100100B78(v40, type metadata accessor for TTRIAccountsListsSelection);
        v32 = v25;
        goto LABEL_23;
      }

      v31 = v37;
    }

    sub_1000079B4(v31, &unk_10076B7C0);
LABEL_18:
    v38 = v45;
    sub_100016120(v45);
    if (v41(v38, 1, v17) == 1)
    {
      sub_100100B78(v25, type metadata accessor for TTRIAccountsListsSelection);
      sub_1000079B4(v38, &unk_10076B7C0);
      return;
    }

    v39 = v38;
    goto LABEL_22;
  }

  if (!sub_100444328(*(v0 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter)))
  {
    goto LABEL_7;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsViewController.BarButtonItemConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD)
  {
    if ((a2 + 31457282) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 14680066;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 14680066;
      }
    }
  }

  if ((((*(a1 + 2) >> 6) | (4 * ((*a1 >> 2) & 0x3F80 | (*a1 >> 1) | (((*(a1 + 2) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFFu) >= 0x1FFFFD)
  {
    v4 = -1;
  }

  else
  {
    v4 = ((*(a1 + 2) >> 6) | (4 * ((*a1 >> 2) & 0x3F80 | (*a1 >> 1) | (((*(a1 + 2) >> 1) & 0x1F) << 14)))) ^ 0x1FFFFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsViewController.BarButtonItemConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 31457282) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0x1FFFFD)
  {
    v3 = 0;
  }

  if (a2 > 0x1FFFFD)
  {
    *result = a2 + 2;
    *(result + 2) = (a2 - 2097150) >> 16;
    if (v3)
    {
      v4 = ((a2 - 2097150) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      v5 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *(result + 2) = ((8 * v5) & 0xFE0000) >> 16;
      *result = (4 * v5) & 0xFE00 | (2 * (v5 & 0x7F));
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000C2BBC(unsigned __int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = (v2 >> 8) & 1;
  v4 = v2 & 0xFF00FFFF | (*(a1 + 2) << 16);
  v5 = v1 >> 6;
  v6 = (v4 & 1 | (2 * v3) & 0xFFFFFFFB | (4 * (v1 & 1))) + 2;
  if ((v4 << 8) >> 8 >= 0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

unsigned __int16 *sub_1000C2C08(unsigned __int16 *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = (*result | (*(result + 2) << 16)) & 0x1010101 | (a2 << 22);
  }

  else
  {
    v2 = ((a2 - 2) << 7) & 0x100 | (a2 - 2) & 1 | ((((a2 - 2) >> 2) & 1) << 16) | 0xFF800000;
  }

  *result = v2;
  *(result + 2) = BYTE2(v2);
  return result;
}

uint64_t sub_1000C2C60(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 view];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_9:

LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = *(v13 + qword_10078A548);
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  sub_1001D45F8(a1, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &unk_100771B40);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10042BF78(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000C2EB8(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 view];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
LABEL_9:

LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v15 = *(v14 + qword_10078A548);
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  sub_1001D45F8(a1, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000079B4(v6, &unk_100771B40);
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_10042F45C(v11, 0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000C3114(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v2 view];
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
LABEL_12:

LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v28 = v2;
  v21 = *(v20 + qword_10078A548);
  if (!v21)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  sub_1001D45F8(a1, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v23 = &unk_100771B40;
    v24 = v12;
LABEL_8:
    sub_1000079B4(v24, v23);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
  v25 = v29;
  if ((*(v29 + 48))(v6, 1, v7) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v23 = &unk_10078D440;
    v24 = v6;
    goto LABEL_8;
  }

  (*(v25 + 32))(v9, v6, v7);
  v27 = TTRAccountsListsViewModel.RecentlyDeletedList.accountID.getter();
  TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
  sub_100431434(v27);

  (*(v25 + 8))(v9, v7);
  (*(v14 + 8))(v17, v13);
  return 1;
}

uint64_t sub_1000C3508(uint64_t a1)
{
  v25 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v30 = *(v25 - 8);
  __chkstk_darwin(v25);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_100058000(&qword_10076BC60);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
  swift_beginAccess();
  sub_10000794C(a1 + v16, v15, &qword_10076BC60);
  if ((*(v7 + 48))(v15, 1, v6))
  {
    sub_1000079B4(v15, &qword_10076BC60);
    return 0;
  }

  v19 = v27;
  v18 = v28;
  v21 = v29;
  v20 = v30;
  sub_100100B10(v15, v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  sub_1000079B4(v15, &qword_10076BC60);
  sub_100100B10(v12, v9, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
    sub_100100B78(v9, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
  }

  else
  {
    (*(v19 + 32))(v5, v9, v18);
    TTRAccountsListsViewModel.List.pinState.getter();
    v22 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v20 + 8))(v21, v25);
    (*(v19 + 8))(v5, v18);
    sub_100100B78(v12, type metadata accessor for TTRIAccountsListsViewListCell.ListItem);
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(v26 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_currentEditModeTransition);
  if (v23 == 2)
  {
    return 0;
  }

  if (v23)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1000C38F4(uint64_t a1)
{
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v55 - v9);
  v67 = type metadata accessor for REMHashtagLabelSpecifier();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v68 = &v55 - v15;
  v16 = sub_100058000(&qword_10076BC58);
  __chkstk_darwin(v16 - 8);
  v18 = &v55 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v55 - v24;
  sub_1000046FC(a1, v69);
  v26 = swift_dynamicCast();
  v27 = *(v20 + 56);
  if ((v26 & 1) == 0)
  {
    v27(v18, 1, 1, v19);
    v28 = &qword_10076BC58;
    v29 = v18;
    goto LABEL_5;
  }

  v27(v18, 0, 1, v19);
  (*(v20 + 32))(v25, v18, v19);
  v59 = v1;
  sub_1000B3FE8(v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    (*(v20 + 8))(v25, v19);
    v28 = &unk_10076B7C0;
    v29 = v10;
LABEL_5:
    sub_1000079B4(v29, v28);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v20 + 8))(v25, v19);
    sub_100100B78(v10, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v31 = v67;
  v30 = v68;
  v32 = v10;
  v33 = v64;
  (*(v64 + 32))(v68, v32, v67);
  v34 = v66;
  v58 = *(v33 + 16);
  v58(v66, v30, v31);
  v35 = (*(v33 + 88))(v34, v31);
  v36 = v35;
  if (v35 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v33 + 96))(v34, v31);
    v55 = *v34;
    (*(v20 + 16))(v22, v25, v19);
    v37 = (*(v20 + 88))(v22, v19);
    v57 = v3;
    if (v37 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
    {
      v38 = v36;
      v39 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
LABEL_16:
      v40 = v62;
      v41 = v63;
      v42 = v65;
      (*(v62 + 104))(v65, *v39, v63);
      v43 = *(sub_100058000(&qword_10076B830) + 64);
      v56 = v43;
      v44 = v60;
      *v60 = v55;
      (*(v40 + 16))(&v44[v43], v42, v41);
      v45 = *(v33 + 104);
      v46 = v33;
      v47 = v67;
      v45(v44, v38, v67);
      v48 = v61;
      v58(v61, v44, v47);
      swift_storeEnumTagMultiPayload();
      sub_1000B551C(v48, 16, 0);
      sub_100100B78(v48, type metadata accessor for TTRIAccountsListsSelection);
      v49 = *(v46 + 8);
      v49(v44, v47);
      v50 = *(v40 + 8);
      v50(v65, v41);
      v49(v68, v47);
      (*(v20 + 8))(v25, v19);
      v50(&v66[v56], v41);
      return;
    }

    if (v37 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
    {
      v38 = v36;
      v39 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
      goto LABEL_16;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100003E30(v54, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v52 = "Unknown operation";
    v53 = 17;
  }

  else
  {
    if (v35 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v35 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v33 + 8))(v68, v31);
      (*(v20 + 8))(v25, v19);
      return;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_10076B2A0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v52 = "Unknown selection type";
    v53 = 22;
  }

  sub_1003F9818(v52, v53, 2);
  __break(1u);
}

uint64_t sub_1000C4170(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void *sub_1000C420C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000C4260()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void *sub_1000C42B4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C4308(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(v5 + 56) + 8 * v12);
        if (v13 >= a1)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v31 = a2;
      v32 = v13 + a2;
      if (__OFADD__(v13, a2))
      {
        goto LABEL_27;
      }

      v15 = *(*(v5 + 48) + 8 * v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v2;
      v17 = *(v2 + 16);
      v33 = v17;
      v18 = sub_1003B3EDC(v15);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_28;
      }

      v24 = v19;
      if (v17[3] < v23)
      {
        break;
      }

      v2 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v18;
        sub_1003AE0D8();
        v18 = v28;
LABEL_14:
        v2 = v30;
      }

      if (v24)
      {
        *(v33[7] + 8 * v18) = v32;
      }

      else
      {
        v33[(v18 >> 6) + 8] |= 1 << v18;
        *(v33[6] + 8 * v18) = v15;
        *(v33[7] + 8 * v18) = v32;
        v26 = v33[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_29;
        }

        v33[2] = v27;
      }

      *(v2 + 16) = v33;
      a2 = v31;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    sub_100548DB0(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_1003B3EDC(v15);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_6:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100058000(&qword_10076BB78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C4548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        if (v15 >= a1 && v15 <= a2)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v34 = a3;
      v35 = v15 + a3;
      if (__OFADD__(v15, a3))
      {
        goto LABEL_30;
      }

      v18 = *(*(v7 + 48) + 8 * v14);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v3;
      v20 = *(v3 + 16);
      v36 = v18;
      v37 = v20;
      v21 = sub_1003B3EDC(v18);
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_31;
      }

      v27 = v22;
      if (v20[3] < v26)
      {
        break;
      }

      v3 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_1003AE0D8();
        v21 = v31;
LABEL_17:
        v3 = v33;
      }

      if (v27)
      {
        *(v37[7] + 8 * v21) = v35;
      }

      else
      {
        v37[(v21 >> 6) + 8] |= 1 << v21;
        *(v37[6] + 8 * v21) = v36;
        *(v37[7] + 8 * v21) = v35;
        v29 = v37[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v37[2] = v30;
      }

      *(v3 + 16) = v37;
      a3 = v34;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    sub_100548DB0(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_1003B3EDC(v36);
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_9:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_100058000(&qword_10076BB78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C478C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = v11 | (v10 << 6);
        v13 = *(*(v5 + 56) + 8 * v12);
        if (v13 >= a1)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_6;
        }
      }

      v31 = a2;
      v32 = v13 + a2;
      if (__OFADD__(v13, a2))
      {
        goto LABEL_27;
      }

      v15 = *(*(v5 + 48) + 8 * v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v2;
      v17 = *(v2 + 16);
      v33 = v17;
      v18 = sub_1003B3EDC(v15);
      v20 = v17[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_28;
      }

      v24 = v19;
      if (v17[3] < v23)
      {
        break;
      }

      v2 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v18;
        sub_1003AF2F0();
        v18 = v28;
LABEL_14:
        v2 = v30;
      }

      if (v24)
      {
        *(v33[7] + 8 * v18) = v32;
      }

      else
      {
        v33[(v18 >> 6) + 8] |= 1 << v18;
        *(v33[6] + 8 * v18) = v15;
        *(v33[7] + 8 * v18) = v32;
        v26 = v33[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_29;
        }

        v33[2] = v27;
      }

      *(v2 + 16) = v33;
      a2 = v31;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    sub_10054B2C4(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_1003B3EDC(v15);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_6:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_100058000(&qword_10076B788);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C49CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
LABEL_4:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v7 + 56) + 8 * v14);
        if (v15 >= a1 && v15 <= a2)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v34 = a3;
      v35 = v15 + a3;
      if (__OFADD__(v15, a3))
      {
        goto LABEL_30;
      }

      v18 = *(*(v7 + 48) + 8 * v14);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v3;
      v20 = *(v3 + 16);
      v36 = v18;
      v37 = v20;
      v21 = sub_1003B3EDC(v18);
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_31;
      }

      v27 = v22;
      if (v20[3] < v26)
      {
        break;
      }

      v3 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v21;
        sub_1003AF2F0();
        v21 = v31;
LABEL_17:
        v3 = v33;
      }

      if (v27)
      {
        *(v37[7] + 8 * v21) = v35;
      }

      else
      {
        v37[(v21 >> 6) + 8] |= 1 << v21;
        *(v37[6] + 8 * v21) = v36;
        *(v37[7] + 8 * v21) = v35;
        v29 = v37[2];
        v25 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v25)
        {
          goto LABEL_32;
        }

        v37[2] = v30;
      }

      *(v3 + 16) = v37;
      a3 = v34;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    sub_10054B2C4(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_1003B3EDC(v36);
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

LABEL_9:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
    }

    v10 = *(v7 + 64 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_100058000(&qword_10076B788);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000C4C10(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v38 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v32 = (v5 + 2);
      v33 = a1 & 0xC000000000000001;
      v31 = (v5 + 1);
      v29 = a1 & 0xFFFFFFFFFFFFFF8;
      v30 = (v7 + 8);
      do
      {
        if (v33)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v10 >= *(v29 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(a1 + 8 * v10 + 32);

          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v12 = *(*v7 + 144);
        swift_beginAccess();
        v13 = v7 + v12;
        v14 = v37;
        v15 = v38;
        (*v32)(v37, v13, v38);
        v16 = v35;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        (*v31)(v14, v15);
        sub_1000C6E2C(v16, v7);
        (*v30)(v16, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v3 + 16);
        v5 = v39;
        v19 = sub_1003B3EDC(v7);
        v20 = v5[2];
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_24;
        }

        v23 = v18;
        if (v5[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v39;
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1003AE0D8();
            v5 = v39;
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_100548DB0(v22, isUniquelyReferenced_nonNull_native);
          v24 = sub_1003B3EDC(v7);
          if ((v23 & 1) != (v25 & 1))
          {
            sub_100058000(&qword_10076BB78);
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v19 = v24;
          v5 = v39;
          if (v23)
          {
LABEL_4:
            *(v5[7] + 8 * v19) = v34;

            goto LABEL_5;
          }
        }

        v5[(v19 >> 6) + 8] |= 1 << v19;
        *(v5[6] + 8 * v19) = v7;
        *(v5[7] + 8 * v19) = v34;
        v26 = v5[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v5[2] = v28;
LABEL_5:
        *(v3 + 16) = v5;
        ++v10;
      }

      while (v11 != v9);
    }
  }
}

uint64_t sub_1000C4FC8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v37 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v35 - 8);
  result = __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_27:
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v31 = (v5 + 2);
      v32 = a1 & 0xC000000000000001;
      v30 = (v5 + 1);
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v29 = (v7 + 8);
      do
      {
        if (v32)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v11 >= *(v28 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(a1 + 8 * v11 + 32);

          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v13 = *(*v7 + 144);
        swift_beginAccess();
        v14 = v7 + v13;
        v15 = v36;
        v16 = v37;
        (*v31)(v36, v14, v37);
        v17 = v34;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        (*v30)(v15, v16);
        sub_1000C70F8(v17, v7);
        (*v29)(v17, v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v3 + 16);
        v5 = v38;
        v20 = sub_1003B3EDC(v7);
        v21 = v5[2];
        v22 = (v19 & 1) == 0;
        result = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_24;
        }

        v23 = v19;
        if (v5[3] >= result)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v38;
            if (v19)
            {
              goto LABEL_4;
            }
          }

          else
          {
            result = sub_1003AF2F0();
            v5 = v38;
            if (v23)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_10054B2C4(result, isUniquelyReferenced_nonNull_native);
          result = sub_1003B3EDC(v7);
          if ((v23 & 1) != (v24 & 1))
          {
            sub_100058000(&qword_10076B788);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v20 = result;
          v5 = v38;
          if (v23)
          {
LABEL_4:
            *(v5[7] + 8 * v20) = v33;

            goto LABEL_5;
          }
        }

        v5[(v20 >> 6) + 8] |= 1 << v20;
        *(v5[6] + 8 * v20) = v7;
        *(v5[7] + 8 * v20) = v33;
        v25 = v5[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_25;
        }

        v5[2] = v27;
LABEL_5:
        *(v3 + 16) = v5;
        ++v11;
      }

      while (v12 != v10);
    }
  }

  return result;
}

uint64_t sub_1000C5380(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v8 = *(v48 - 8);
  __chkstk_darwin(v48);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v11 = sub_1000C5D90(a1, sub_1003B2E94);
  v47 = v12;
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  v14 = inited & 0xC000000000000001;
  *(inited + 32) = v11;

  v46 = v11;
  if (v14)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
  }

  v15 = *(*v11 + 144);
  swift_beginAccess();
  v42 = *(v5 + 16);
  v43 = v5 + 16;
  v42(v7, v11 + v15, v4);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v45 = v16;
  v41 = v17;
  v17(v7, v4);
  sub_1000C687C(v10, v11);
  v18 = *(v8 + 8);
  v44 = v8 + 8;
  v40 = v18;
  v18(v10, v48);
  v19 = sub_1003B3EDC(v11);
  if ((v20 & 1) == 0)
  {

    goto LABEL_8;
  }

  v16 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v2 + 16);
  v50 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {

    sub_1003B3EE8(v16, v22);

    *(v2 + 16) = v22;
LABEL_8:
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = v46;
    v23 = v47;
    if (v47 >> 62)
    {
      v35 = v47;
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v35;
      v25 = v36;
      if (!v36)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v25 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_22;
      }
    }

    if (v25 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_24:
    sub_1003AE0D8();
    v22 = v50;
  }

  v26 = 0;
  v27 = v23 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v23 + 8 * v26 + 32);
    }

    v29 = *(*v28 + 144);
    swift_beginAccess();
    v42(v7, v28 + v29, v4);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v41(v7, v4);
    sub_1000C687C(v10, v28);
    v40(v10, v48);
    v30 = sub_1003B3EDC(v28);
    if (v31)
    {
      v32 = v30;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v2 + 16);
      v49 = v34;
      if ((v33 & 1) == 0)
      {
        sub_1003AE0D8();
        v34 = v49;
      }

      sub_1003B3EE8(v32, v34);

      *(v2 + 16) = v34;
    }

    else
    {
    }

    ++v26;
    v24 = v46;
    v23 = v47;
  }

  while (v25 != v26);
LABEL_22:
  sub_1000C4308(v39, -1);
  return v24;
}
uint64_t sub_1001E4A78(uint64_t a1)
{
  v2 = type metadata accessor for ManagedDevice();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedDevice.Properties();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v28 = 0;
  sub_10021E650(&qword_1006B68C0, &type metadata accessor for ManagedDevice.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  v15 = type metadata accessor for FMDeviceDetailViewModel();
  v16 = *(a1 + *(v15 + 92));
  if ((v16 & 0x200000) == 0)
  {
    v18 = *(a1 + *(v15 + 96));
    v17 = (v18 >> 20) & 1;
    if ((v16 & 2) == 0 || (v18 & 0x100) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v24 = v17;
    v25 = v15;
    static ManagedDevice.Properties.canEraseDevice.getter();
    sub_10037A6A0(v12, v9);
    v19 = *(v6 + 8);
    v19(v9, v5);
    v19(v12, v5);
    LODWORD(v17) = v24;
    v15 = v25;
    goto LABEL_7;
  }

  if ((v16 & 2) == 0)
  {
    LODWORD(v17) = 1;
    goto LABEL_7;
  }

  v17 = 1;
  if ((*(a1 + *(v15 + 96)) & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*(a1 + *(v15 + 96) + 1))
  {
    v20 = v17;
    static ManagedDevice.Properties.canCancelEraseDevice.getter();
    sub_10037A6A0(v12, v9);
    v21 = *(v6 + 8);
    v21(v9, v5);
    v21(v12, v5);
    LODWORD(v17) = v20;
  }

  if (v17)
  {
    static ManagedDevice.Properties.canRemoveOrRepair.getter();
    sub_10037A6A0(v12, v9);
    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v12, v5);
    DeviceManagementSectionViewModel.isRemoveButtonEnabled.setter();
  }

  (*(v6 + 16))(v12, v14, v5);
  ManagedDevice.init(properties:)();
  DeviceManagementSectionViewModel.updateProperties(with:)();
  (*(v26 + 8))(v4, v27);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  DeviceManagementSectionViewModel.onRemoveOrRepairDevice.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  DeviceManagementSectionViewModel.onEraseDevice.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  DeviceManagementSectionViewModel.onCancelEraseDevice.setter();
  (*(v6 + 8))(v14, v5);
}

void sub_1001E4EFC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1001E4F58(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v164) = a2;
  v5 = type metadata accessor for FMIPDevice();
  v162 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v163);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMDeviceDetailViewModel();
  v11 = (a1 + v10[10]);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = a1 + v10[11];
  v165 = *v14;
  v166 = v12;
  v15 = *(v14 + 8);
  My = type metadata accessor for Feature.FindMy();
  v174 = My;
  v175 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v17 = sub_100008FC0(&aBlock);
  (*(*(My - 8) + 104))(v17, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
  v18 = isFeatureEnabled(_:)();
  v19 = sub_100006060(&aBlock);
  if (*(a1 + v10[32]) != 1)
  {
    if ((v18 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v21 = *(a1 + v10[36]);
    goto LABEL_8;
  }

  v20 = *(a1 + v10[23]);
  v21 = (v20 >> 7) & 1;
  if ((v20 & 0x80) == 0 && ((v18 ^ 1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (!(v13 & 1 | ((*(a1 + 40) & 1) == 0) | v15 & 1))
  {
    v160 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperiencePresenter);
    v164 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable;
    v25 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) == 1;
    v161 = v9;
    v156 = v10;
    if (v25)
    {
      __chkstk_darwin(v19);
      *(&v156 - 2) = v26;
      v27 = v26;
      OS_dispatch_queue.sync<A>(execute:)();

      v36 = aBlock ^ 1;
    }

    else
    {
      v36 = 0;
    }

    v37 = sub_100168F44(v166, v165, v36 & 1);
    v167 = BYTE1(v37) & 1;
    v162 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton;
    v168 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton);
    v169 = BYTE2(v37) & 1;
    v159 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton;
    v170 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton);
    v38 = v170;
    v39 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
    v40 = v168;
    v41 = v38;
    v42 = *(v3 + v39);
    v43 = v40;
    v44 = [v42 arrangedSubviews];
    sub_10000905C(0, &qword_1006BA410);
    v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v43;
    __chkstk_darwin(v46);
    *(&v156 - 2) = &aBlock;
    v47 = sub_10008FC44(sub_10021FE34, (&v156 - 4), v45);

    v158 = v37;
    if ((v37 & 0x100) != 0)
    {
      [*(v3 + v39) addArrangedSubview:v43];
    }

    else if (v47)
    {
      [v43 removeFromSuperview];
    }

    v48 = v169;
    v49 = *(v3 + v39);
    v50 = v170;
    v51 = [v49 arrangedSubviews];
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v50;
    __chkstk_darwin(v53);
    *(&v156 - 2) = &aBlock;
    v54 = sub_10008FC44(sub_10021FE34, (&v156 - 4), v52);

    if (v48)
    {
      [*(v3 + v39) addArrangedSubview:v50];
    }

    else if (v54)
    {
      [v50 removeFromSuperview];
    }

    sub_10007EBC0(&qword_1006B6960);
    v55 = swift_arrayDestroy();
    v56 = v165;
    if (*(v3 + v164))
    {
      __chkstk_darwin(v55);
      *(&v156 - 2) = v57;
      v58 = v57;
      OS_dispatch_queue.sync<A>(execute:)();

      v59 = aBlock ^ 1;
    }

    else
    {
      v59 = 0;
    }

    v60 = sub_100169288(v166, v56, v59 & 1);
    v25 = *(v3 + v164) == 1;
    v157 = v60;
    if (v25)
    {
      __chkstk_darwin(v60);
      *(&v156 - 2) = v61;
      v62 = v61;
      OS_dispatch_queue.sync<A>(execute:)();

      v63 = aBlock ^ 1;
    }

    else
    {
      v63 = 0;
    }

    v64 = sub_100169288(v166, v56, v63 & 1);
    v65 = v64;
    __chkstk_darwin(v64);
    *(&v156 - 2) = v66;
    OS_dispatch_queue.sync<A>(execute:)();
    v67 = aBlock;
    if (sub_10041E648())
    {
      v68 = 0;
      if (v65)
      {
        v67 = 1;
LABEL_34:
        v69 = v67 ^ 1;
        goto LABEL_35;
      }

      v69 = (v65 & 0x100) == 0;
    }

    else
    {
      v68 = (v56 & 0x100) == 0;
      if (v65)
      {
        goto LABEL_34;
      }

      v69 = (v65 & 0x100) == 0 || (v165 & 0x100) == 0;
    }

LABEL_35:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100005B14(v70, qword_1006D4630);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 67109376;
      *(v73 + 4) = v69;
      *(v73 + 8) = 1024;
      *(v73 + 10) = v68;
      _os_log_impl(&_mh_execute_header, v71, v72, "FMFindingExperiencePresenter: calculate required connectivity:\n    hasRequiredFindingConnectivity: %{BOOL}d\n    hasRequiredPlaySoundConnectivity: %{BOOL}d", v73, 0xEu);
    }

    if (*(v3 + v164))
    {
      __chkstk_darwin(v74);
      *(&v156 - 2) = v75;
      v76 = v75;
      OS_dispatch_queue.sync<A>(execute:)();

      v77 = aBlock ^ 1;
    }

    else
    {
      v77 = 0;
    }

    v78 = v161;
    v79 = v158 & 0x100;
    v80 = v165;
    v81 = sub_10016651C(v166, v165, v77 & 1);
    v82 = *(v3 + v162);
    v83 = v82[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v82[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v69 ^ 1;
    v84 = v82;
    sub_1000D1ACC(v83);

    v85 = *(v3 + v159);
    if ((v80 & 0x100) != 0)
    {
      v86 = 1;
    }

    else
    {
      v86 = *(a1 + v156[34]);
    }

    v87 = v85[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v85[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v86;
    v88 = v85;
    sub_1000D1ACC(v87);

    if ((v81 & (v79 != 0)) == 1)
    {
      [*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule) setHidden:0];
      sub_1004F37A4();
    }

    if (v157)
    {
      *(*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule) + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 1;
      sub_1004F37A4();
      v89 = *(v3 + v162);
      v90 = *(sub_10007EBC0(&qword_1006C0020) + 48);
      *v78 = 1;
      v91 = enum case for FMFindingType.owner(_:);
      v92 = type metadata accessor for FMFindingType();
      (*(*(v92 - 8) + 104))(&v78[v90], v91, v92);
      v93 = enum case for FMFindingTechnology.precision(_:);
      v94 = type metadata accessor for FMFindingTechnology();
      (*(*(v94 - 8) + 104))(v78, v93, v94);
      swift_storeEnumTagMultiPayload();
      v95 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      swift_beginAccess();
      v96 = v89;
      sub_10021FE54(v78, v89 + v95);
      swift_endAccess();
      sub_1000D3C9C();
      v97 = objc_opt_self();
      v98 = swift_allocObject();
      *(v98 + 16) = v96;
      *(v98 + 24) = 0;
      v175 = sub_100141408;
      v176 = v98;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v99 = &unk_10062F758;
    }

    else
    {
      if ((v157 & 0x100) == 0)
      {
        return;
      }

      v100 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule);
      type metadata accessor for FMConnectionManager();
      *(v100 + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = static FMConnectionManager.hostSupportsRanging.getter() & 1;
      sub_1004F37A4();
      v101 = *(v3 + v162);
      v102 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
      v103 = enum case for FMFindingType.owner(_:);
      v104 = type metadata accessor for FMFindingType();
      (*(*(v104 - 8) + 104))(v78, v103, v104);
      v78[v102] = 0;
      v105 = enum case for FMFindingTechnology.proximity(_:);
      v106 = type metadata accessor for FMFindingTechnology();
      (*(*(v106 - 8) + 104))(v78, v105, v106);
      swift_storeEnumTagMultiPayload();
      v107 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon;
      swift_beginAccess();
      v96 = v101;
      sub_10021FE54(v78, v101 + v107);
      swift_endAccess();
      sub_1000D3C9C();
      v97 = objc_opt_self();
      v108 = swift_allocObject();
      *(v108 + 16) = v96;
      *(v108 + 24) = 0;
      v175 = sub_100141408;
      v176 = v108;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v99 = &unk_10062F708;
    }

    v173 = sub_100004AE4;
    v174 = v99;
    v109 = _Block_copy(&aBlock);
    v110 = v96;

    [v97 animateWithDuration:v109 animations:0.35];
    _Block_release(v109);

    sub_1002201E4(v78, type metadata accessor for FMPlatterIcon);
    return;
  }

  v22 = *(*(v3 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
  v23 = sub_10041E648();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v28 = [objc_opt_self() currentDevice];
    v29 = [v28 userInterfaceIdiom];

    if (v29 == 1)
    {
      v30 = *(*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
      v31 = *v30;
      v166 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
      v32 = (*(v31 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v30 + v32));
      v33 = v5;
      v34 = v162;
      (*(v162 + 16))(v7, &v166[v30], v33);
      os_unfair_lock_unlock((v30 + v32));

      v24 = FMIPDevice.isLocalFindable.getter();
      v35 = v34;
      v5 = v33;
      (*(v35 + 8))(v7, v33);
    }

    else
    {
      v24 = 1;
    }
  }

  v111 = v21;
  if (*(a1 + v10[39]) != 1 || (v24 & 1) == 0)
  {
    v113 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton);
    goto LABEL_60;
  }

  v112 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton;
  v113 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton);
  if (*(a1 + v10[40]) == 1)
  {
    [v113 setHidden:0];
    v114 = *(v3 + v112);
    v111 = 1;
    v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
    v115 = v114;
    sub_1000D3C9C();
    v116 = objc_opt_self();
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = 0;
    v175 = sub_100141408;
    v176 = v117;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v165 = &v173;
    v173 = sub_100004AE4;
    v174 = &unk_10062F668;
    v118 = _Block_copy(&aBlock);
    v119 = v115;

    v166 = v116;
    [v116 animateWithDuration:v118 animations:0.35];
    _Block_release(v118);

    v120 = *(*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
    v121 = *(*v120 + class metadata base offset for ManagedBuffer + 16);
    v122 = v112;
    v123 = (*(*v120 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v120 + v123));
    v124 = v5;
    v125 = v162;
    (*(v162 + 16))(v7, v120 + v121, v124);
    os_unfair_lock_unlock((v120 + v123));

    LOBYTE(v119) = FMIPDevice.isLocalFindable.getter();
    (*(v125 + 8))(v7, v124);
    if (v119)
    {
      v126 = sub_1001D745C();
      v127 = *(v3 + v122);
      v128 = &v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
      v129 = *&v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
      v130 = *&v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
      v131 = *&v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
      v132 = *&v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
      v133 = *&v127[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
      *v128 = 0xD000000000000028;
      *(v128 + 1) = 0x8000000100587180;
      *(v128 + 2) = v126;
      *(v128 + 3) = v134;
      *(v128 + 4) = v135;
      v136 = v128[40];
      v128[40] = 4;
      v137 = v127;
      sub_1000D5A54(v129, v130, v131, v132, v133, v136);
      sub_1000D3C9C();
      v138 = swift_allocObject();
      *(v138 + 16) = v137;
      *(v138 + 24) = 1;
      v175 = sub_100141408;
      v176 = v138;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v173 = sub_100004AE4;
      v174 = &unk_10062F6B8;
      v139 = _Block_copy(&aBlock);
      v140 = v137;

      [v166 animateWithDuration:v139 animations:0.35];
      _Block_release(v139);
    }

    v141 = *(v3 + v122);
    v142 = v141[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v141[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 1;
    goto LABEL_68;
  }

  if ((*(a1 + v10[23]) & 0x80000) == 0)
  {
LABEL_60:
    v143 = 1;
    [v113 setHidden:1];
    v144 = (v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton);
    [*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton) setHidden:(*(a1 + v10[24]) >> 18) & 1];
    v145 = *v144;
    if (v21)
    {
      v143 = *(a1 + v10[34]);
    }

    v146 = v145[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v145[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v143;
    v147 = v145;
    sub_1000D1ACC(v146);

    v148 = &selRef_setUserInteractionEnabled_;
    goto LABEL_69;
  }

  [v113 setHidden:0];
  v149 = *(v3 + v112);
  v111 = 1;
  v149[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 1;
  v150 = v149;
  sub_1000D3C9C();
  v151 = objc_opt_self();
  v152 = swift_allocObject();
  *(v152 + 16) = v150;
  *(v152 + 24) = 0;
  v175 = sub_100141408;
  v176 = v152;
  aBlock = _NSConcreteStackBlock;
  v172 = 1107296256;
  v173 = sub_100004AE4;
  v174 = &unk_10062F618;
  v153 = _Block_copy(&aBlock);
  v154 = v150;

  [v151 animateWithDuration:v153 animations:0.35];
  _Block_release(v153);

  v141 = *(v3 + v112);
  v142 = v141[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
  v141[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
LABEL_68:
  v155 = v141;
  sub_1000D1ACC(v142);

  v144 = (v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton);
  v148 = &selRef_setHidden_;
LABEL_69:
  [*v144 *v148];
  if (v164)
  {
    [*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton) removeFromSuperview];
  }

  else
  {
    [*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView) addArrangedSubview:*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton)];
  }

  *(*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_errorConditionsAttentionModule) + OBJC_IVAR____TtC6FindMy32FMErrorConditionsAttentionModule_shouldShowAirplaneModeAttention) = 0;
  sub_1004F37A4();
  sub_1004F37A4();
}

id sub_1001E644C(void *a1)
{
  sub_10027C124(a1);
  [a1 contentOffset];
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  v4 = 1.0 / v3;
  if (v4 >= 0.01)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView) setAlpha:v5];
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel);

  return [v6 setAlpha:v5];
}

uint64_t sub_1001E655C()
{
  v1 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v1 - 8);
  v84 = v82 - v2;
  v3 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v3 - 8);
  v87 = v82 - v4;
  v5 = type metadata accessor for FMIPSeparationLocation();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v83 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v7 - 8);
  v93 = v82 - v8;
  v98 = type metadata accessor for UUID();
  v96 = *(v98 - 8);
  v9 = __chkstk_darwin(v98);
  v86 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v10;
  __chkstk_darwin(v9);
  v95 = v82 - v11;
  v12 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v12 - 8);
  v14 = v82 - v13;
  v15 = type metadata accessor for FMSelectionPendingAction(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v97 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v91 = v82 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v82 - v22;
  __chkstk_darwin(v21);
  v25 = v82 - v24;
  v94 = v0;
  v92 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v26 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v26 + v27, v14, &unk_1006B8DD0);
  v90 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_100012DF0(v14, &unk_1006B8DD0);
  }

  sub_10021FB38(v14, v25, type metadata accessor for FMSelectionPendingAction);
  v29 = v25;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100005B14(v30, qword_1006D4630);
  sub_10022017C(v25, v23, type metadata accessor for FMSelectionPendingAction);
  v82[1] = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v92;
  if (v34)
  {
    v36 = v29;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v99[0] = v38;
    *v37 = 136315138;
    v100 = 0;
    v101 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v40 = v100;
    v39 = v101;
    sub_1002201E4(v23, type metadata accessor for FMSelectionPendingAction);
    v41 = sub_100005B4C(v40, v39, v99);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "FMDeviceDetailContentViewController: performPendingActions %s", v37, 0xCu);
    sub_100006060(v38);

    v29 = v36;
  }

  else
  {

    sub_1002201E4(v23, type metadata accessor for FMSelectionPendingAction);
  }

  v42 = v97;
  v43 = swift_allocObject();
  v44 = v94;
  *(v43 + 16) = v94;
  v45 = v91;
  sub_10022017C(v29, v91, type metadata accessor for FMSelectionPendingAction);
  sub_10022017C(v45, v42, type metadata accessor for FMSelectionPendingAction);
  v46 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v47 = (v17 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  sub_10021FB38(v45, v48 + v46, type metadata accessor for FMSelectionPendingAction);
  v49 = (v48 + v47);
  v50 = *&v44[v35];
  *v49 = sub_10021FBA0;
  v49[1] = v43;
  v51 = *(v50 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v52 = v35;
  v53 = type metadata accessor for FMPendingActionInfo(0);
  v54 = v93;
  sub_100007204(v51 + *(v53 + 24), v93, &unk_1006B20C0);
  v55 = v96;
  LODWORD(v47) = (*(v96 + 48))(v54, 1, v98);
  v56 = v44;
  v91 = v43;

  if (v47 == 1)
  {
    v57 = v97;
    v58 = v29;
    sub_100012DF0(v54, &unk_1006B20C0);
    v59 = *(*&v44[v52] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v60 = v59 + *(v53 + 20);
    v61 = v87;
    sub_100007204(v60, v87, &qword_1006BC990);
    v63 = v88;
    v62 = v89;
    if ((*(v88 + 48))(v61, 1, v89) == 1)
    {
      sub_100012DF0(v61, &qword_1006BC990);
      v64 = type metadata accessor for FMIPAddress();
      v65 = v84;
      (*(*(v64 - 8) + 56))(v84, 1, 1, v64);
      sub_1001E7284(v65, 0, 0, v56, v57, sub_10021FBA0, v91);

      sub_100012DF0(v65, &qword_1006BB1E0);
      sub_1002201E4(v57, type metadata accessor for FMSelectionPendingAction);
    }

    else
    {
      sub_1002201E4(v57, type metadata accessor for FMSelectionPendingAction);
      v80 = v83;
      (*(v63 + 32))(v83, v61, v62);
      v81 = swift_allocObject();
      *(v81 + 16) = sub_10021FBA8;
      *(v81 + 24) = v48;

      dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();

      (*(v63 + 8))(v80, v62);
    }

    v66 = v58;
  }

  else
  {
    v90 = v29;
    sub_1002201E4(v97, type metadata accessor for FMSelectionPendingAction);
    v67 = *(v55 + 32);
    v68 = v95;
    v69 = v56;
    v70 = v98;
    v67(v95, v54, v98);
    v71 = v86;
    (*(v55 + 16))(v86, v68, v70);
    v72 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v73 = (v85 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = v69;
    v67((v74 + v72), v71, v70);
    v75 = (v74 + v73);
    *v75 = sub_10021FBA8;
    v75[1] = v48;
    v76 = v69;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 67109120;
      _os_log_impl(&_mh_execute_header, v77, v78, "FMDeviceProvider: refreshSafeLocations, isCompletionNil? %{BOOL}d", v79, 8u);
    }

    FMIPManager.refreshSafeLocations(completion:)();

    (*(v96 + 8))(v95, v98);
    v66 = v90;
  }

  return sub_1002201E4(v66, type metadata accessor for FMSelectionPendingAction);
}

void sub_1001E7124(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v6 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v4, v5 + v7, &unk_1006B8DD0);
  swift_endAccess();

  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001E7284(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v69 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v66 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMSelectionPendingAction(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(a3);
  v20 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v52 - v22;
  v24 = __chkstk_darwin(v21);
  v27 = &v52 - v25;
  v28 = v24;
  v70 = a4;
  if (!v24)
  {
    v54 = v17;
    v55 = v15;
    v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v14;
    v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v29 = v69;
    sub_100007204(v69, &v52 - v25, &qword_1006BB1E0);
    v30 = type metadata accessor for FMIPAddress();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v27, 1, v30) == 1)
    {
      sub_100012DF0(v27, &qword_1006BB1E0);
      goto LABEL_6;
    }

    v53 = FMIPAddress.label.getter();
    v28 = v33;
    (*(v31 + 8))(v27, v30);
    if (!v28)
    {
LABEL_6:
      sub_100007204(v29, v23, &qword_1006BB1E0);
      if (v32(v23, 1, v30) == 1)
      {
        sub_100012DF0(v23, &qword_1006BB1E0);
      }

      else
      {
        v34 = FMIPAddress.formattedAddressLines.getter();
        (*(v31 + 8))(v23, v30);
        if (v34)
        {
          a4 = v70;
          if (v34[2])
          {
            v35 = v34[4];
            v28 = v34[5];

            v26 = v35;
          }

          else
          {

            v26 = 0;
            v28 = 0;
          }

          goto LABEL_12;
        }
      }

      v26 = 0;
      v28 = 0;
      a4 = v70;
LABEL_12:
      v16 = v58;
      v20 = v56;
      v14 = v57;
      v15 = v55;
      v17 = v54;
      goto LABEL_13;
    }

    a4 = v70;
    v16 = v58;
    v20 = v56;
    v14 = v57;
    v15 = v55;
    v17 = v54;
    v26 = v53;
  }

LABEL_13:
  v36 = &a4[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
  *v36 = v26;
  v36[1] = v28;

  sub_10000905C(0, &qword_1006AEDC0);
  v59 = static OS_dispatch_queue.main.getter();
  sub_10022017C(v60, v16, type metadata accessor for FMSelectionPendingAction);
  sub_100007204(v69, v20, &qword_1006BB1E0);
  v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v38 = (v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v17 + 80) + v38 + 8) & ~*(v17 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  v42 = v40;
  sub_10021FB38(v16, v40 + v37, type metadata accessor for FMSelectionPendingAction);
  v43 = v70;
  *(v42 + v38) = v70;
  sub_100035318(v20, v42 + v39, &qword_1006BB1E0);
  v44 = (v42 + ((v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v45 = v62;
  *v44 = v61;
  v44[1] = v45;
  aBlock[4] = sub_10021FD0C;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062F550;
  v46 = _Block_copy(aBlock);
  v47 = v43;

  v48 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v49 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v59;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  (*(v67 + 8))(v49, v41);
  return (*(v64 + 8))(v48, v65);
}

void sub_1001E79B0(uint64_t a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v87 = a5;
  v88 = a4;
  v78 = a3;
  v85 = a1;
  v86 = a2;
  v83 = type metadata accessor for FMIPSeparationLocation();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006BC990);
  v7 = __chkstk_darwin(v6 - 8);
  v76 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v81 = &v75 - v10;
  __chkstk_darwin(v9);
  v84 = &v75 - v11;
  v12 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v75 - v13;
  v15 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - v16;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v79 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v24 - 8);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FMSelectionPendingAction(0);
  __chkstk_darwin(v27);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v90 = My;
  v91 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v31 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v31, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (My)
  {
    sub_10022017C(v85, v29, type metadata accessor for FMSelectionPendingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v60 = v86;
      v61 = v86[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention];
      v86[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention] = 0;
      if (v61 != 1)
      {
LABEL_26:
        v88(EnumCaseMultiPayload);
        return;
      }

      v62 = *&v60[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource];
      v63 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      sub_10022017C(v62 + v63, v26, type metadata accessor for FMDeviceDetailViewModel);
      sub_1001DFC5C(v26);
      v64 = type metadata accessor for FMDeviceDetailViewModel;
      v65 = v26;
    }

    else
    {
      v33 = v86;
      if (EnumCaseMultiPayload == 4)
      {
        FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();
        v45 = type metadata accessor for FMIPSeparationEvent();
        (*(*(v45 - 8) + 56))(v17, 0, 1, v45);
        v46 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent;
        swift_beginAccess();
        sub_1000BBF40(v17, &v33[v46], &qword_1006B68E0);
        swift_endAccess();
        v47 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
        swift_beginAccess();
        sub_100007204(&v33[v47], v14, &unk_1006BB1B0);
        v48 = type metadata accessor for FMIPSafeLocation();
        LODWORD(v47) = (*(*(v48 - 8) + 48))(v14, 1, v48);
        sub_100012DF0(v14, &unk_1006BB1B0);
        if (v47 != 1)
        {
          v49 = v33[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention];
          v33[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention] = 1;
          if ((v49 & 1) == 0)
          {
            v50 = *&v33[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource];
            v51 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
            swift_beginAccess();
            sub_10022017C(v50 + v51, v26, type metadata accessor for FMDeviceDetailViewModel);
            sub_1001DFC5C(v26);
            sub_1002201E4(v26, type metadata accessor for FMDeviceDetailViewModel);
          }
        }

        v52 = v82;
        v53 = *(v82 + 56);
        v55 = v83;
        v54 = v84;
        v53(v84, 1, 1, v83);
        v56 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
        v57 = *(*&v33[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
        swift_beginAccess();
        v58 = v57 + *(type metadata accessor for FMPendingActionInfo(0) + 20);
        v59 = v81;
        sub_100007204(v58, v81, &qword_1006BC990);
        if ((*(v52 + 48))(v59, 1, v55) == 1)
        {
          sub_100012DF0(v59, &qword_1006BC990);
        }

        else
        {
          v66 = v77;
          (*(v52 + 32))(v77, v59, v55);
          v67 = v76;
          FMIPSeparationLocation.with(address:)();
          (*(v52 + 8))(v66, v55);
          sub_100012DF0(v54, &qword_1006BC990);
          v53(v67, 0, 1, v55);
          sub_100035318(v67, v54, &qword_1006BC990);
        }

        v68 = *(*&v33[v56] + 16);
        v69 = *&v33[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
        swift_beginAccess();
        v71 = *(v69 + 16);
        v70 = *(v69 + 24);

        v72 = v68;
        LOBYTE(v71) = sub_100424954(v71, v70);

        if ((v71 & 1) == 0)
        {
          sub_1002094C8(v54);
        }

        v73 = *(*&v33[v56] + 16);
        v73[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
        v74 = v73;
        sub_10041E45C();

        EnumCaseMultiPayload = sub_100012DF0(v54, &qword_1006BC990);
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v34 = v86[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention];
        v86[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = *&v33[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource];
          v36 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
          swift_beginAccess();
          sub_10022017C(v35 + v36, v26, type metadata accessor for FMDeviceDetailViewModel);
          sub_1001DFC5C(v26);
          sub_1002201E4(v26, type metadata accessor for FMDeviceDetailViewModel);
        }

        sub_10000905C(0, &qword_1006AEDC0);
        v37 = static OS_dispatch_queue.main.getter();
        v38 = swift_allocObject();
        *(v38 + 16) = v33;
        v91 = sub_10021FE24;
        v92 = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        v90 = &unk_10062F5A0;
        v39 = _Block_copy(aBlock);
        v40 = v33;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (*(v80 + 8))(v20, v18);
        EnumCaseMultiPayload = (*(v79 + 8))(v23, v21);
        goto LABEL_26;
      }

      v64 = type metadata accessor for FMSelectionPendingAction;
      v65 = v29;
    }

    EnumCaseMultiPayload = sub_1002201E4(v65, v64);
    goto LABEL_26;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100005B14(v41, qword_1006D4630);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "FMDeviceDetailContentViewController: Separation Feature Not Enabled.", v44, 2u);
  }
}

uint64_t sub_1001E85E0(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v9, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &unk_1006BB1B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = a1;
  sub_10020A0F0(v8, 0, sub_10021FE2C, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001E87E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for FMIPSafeLocation();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_1000BBF40(v5, a2 + v7, &unk_1006BB1B0);
  swift_endAccess();
  v8 = (a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t sub_1001E8904(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v5 = type metadata accessor for FMIPSafeLocationType();
  v53 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v49 - v8;
  v9 = sub_10007EBC0(&qword_1006BB1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v49 - v12;
  v13 = sub_10007EBC0(&unk_1006BB1B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = UUID.uuidString.getter();
  sub_1000E65EC(v23, v24, v18);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &unk_1006BB1B0;
    v26 = v18;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    (*(v20 + 16))(v16, v22, v19);
    (*(v20 + 56))(v16, 0, 1, v19);
    v27 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
    v28 = a1;
    swift_beginAccess();
    sub_1000BBF40(v16, a1 + v27, &unk_1006BB1B0);
    swift_endAccess();
    v29 = v56;
    v49 = v19;
    FMIPSafeLocation.address.getter();
    v30 = v51;
    FMIPSafeLocation.type.getter();
    v32 = v52;
    v31 = v53;
    (*(v53 + 104))(v52, enum case for FMIPSafeLocationType.home(_:), v5);
    sub_10021E650(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v33 = *(v31 + 8);
    v33(v32, v5);
    v33(v30, v5);
    v35 = v57;
    v34 = v58;
    v36 = type metadata accessor for FMIPAddress();
    v37 = *(v36 - 8);
    if (v34 == v35)
    {
      v38 = v50;
      (*(v37 + 56))(v50, 1, 1, v36);
      v39 = [objc_opt_self() mainBundle];
      v59._object = 0x8000000100587150;
      v40._object = 0x8000000100587130;
      v59._countAndFlagsBits = 0xD000000000000025;
      v40._countAndFlagsBits = 0xD000000000000013;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v59);

      v54(v38, v42._countAndFlagsBits, v42._object);

      sub_100012DF0(v38, &qword_1006BB1E0);
      (*(v20 + 8))(v22, v49);
      v26 = v29;
      v25 = &qword_1006BB1E0;
    }

    else
    {
      v43 = v49;
      if ((*(v37 + 48))(v29, 1, v36) == 1)
      {
        v44 = swift_allocObject();
        v45 = v54;
        v46 = v55;
        v44[2] = v28;
        v44[3] = v45;
        v44[4] = v46;
        v47 = v28;

        dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
      }

      else
      {
        v54(v29, 0, 0);
      }

      (*(v20 + 8))(v22, v43);
      v25 = &qword_1006BB1E0;
      v26 = v29;
    }
  }

  return sub_100012DF0(v26, v25);
}

uint64_t sub_1001E8F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v5 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_1001D739C();
  v10 = v9;
  v11 = type metadata accessor for FMIPSafeLocation();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100007204(a1, v7, &qword_1006BB1E0);
    FMIPSafeLocation.address.setter();
  }

  (v8)(v13, 0);
  return a3(a1, 0, 0);
}

uint64_t sub_1001E90BC(uint64_t a1, uint64_t (*a2)(uint64_t, void, void))
{
  v4 = type metadata accessor for FMIPAddress();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  if (result != 1)
  {
    return a2(a1, 0, 0);
  }

  return result;
}

void sub_1001E9144(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v470 = a3;
  v471 = a2;
  v6 = sub_10007EBC0(&unk_1006B0000);
  v7 = __chkstk_darwin(v6 - 8);
  v469 = &v466 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v466 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v466 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v466 - v16;
  v18 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  swift_beginAccess();
  v472 = v4;
  sub_100007204(v4 + v18, v10, &unk_1006B0000);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v19 = a1;
    sub_100012DF0(v10, &unk_1006B0000);
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4110);
    v21 = v470;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v471;
    if (v24)
    {
      v26 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v26 = 136446723;
      v27 = FMSoundPlatterViewLayout.description.getter(v19);
      v29 = sub_100005B4C(v27, v28, &aBlock);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2081;
      *(v26 + 24) = sub_100005B4C(v25, v21, &aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "No sound in-flight. Not overriding FMSoundPlatterViewLayout: %{public}s, id: %{private,mask.hash}s.", v26, 0x20u);
      swift_arrayDestroy();
    }

    goto LABEL_18;
  }

  (*(v12 + 32))(v17, v10, v11);
  LODWORD(v468) = a1;
  v30 = a1;
  v21 = v470;
  if (v30 == 3)
  {
    goto LABEL_12;
  }

  if (v30 || (Date.init()(), Date.timeIntervalSince(_:)(), v32 = v31, v33 = *(v12 + 8), v33(v15, v11), v32 > 180.0))
  {
    if (!sub_1004A7F9C(v468, &off_100621BD0) && !sub_1004A7F9C(v468, &off_100621BF8))
    {
      v457 = v469;
      (*(v12 + 56))(v469, 1, 1, v11);
      v458 = v472;
      swift_beginAccess();
      sub_1000BBF40(v457, v458 + v18, &unk_1006B0000);
      swift_endAccess();
      [*(v458 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton) setUserInteractionEnabled:1];
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v459 = type metadata accessor for Logger();
      sub_100005B14(v459, qword_1006D4110);

      v37 = Logger.logObject.getter();
      v460 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v460))
      {
        v461 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v461 = 136446723;
        v462 = FMSoundPlatterViewLayout.description.getter(v468);
        v464 = sub_100005B4C(v462, v463, &aBlock);
        v467 = v11;
        v465 = v464;

        *(v461 + 4) = v465;
        *(v461 + 12) = 2160;
        *(v461 + 14) = 1752392040;
        *(v461 + 22) = 2081;
        v25 = v471;
        *(v461 + 24) = sub_100005B4C(v471, v21, &aBlock);
        _os_log_impl(&_mh_execute_header, v37, v460, "Completing in-flight play sound (playSoundInFlight set to nil). Not overriding FMSoundPlatterViewLayout: %{public}s, id: %{private,mask.hash}s.", v461, 0x20u);
        swift_arrayDestroy();

        (*(v12 + 8))(v17, v467);
        goto LABEL_17;
      }

LABEL_16:

      (*(v12 + 8))(v17, v11);
      v25 = v471;
LABEL_17:
      v19 = v468;
      goto LABEL_18;
    }

LABEL_12:
    v34 = v469;
    (*(v12 + 56))(v469, 1, 1, v11);
    v35 = v472;
    swift_beginAccess();
    sub_1000BBF40(v34, v35 + v18, &unk_1006B0000);
    swift_endAccess();
    [*(v35 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton) setUserInteractionEnabled:1];
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4110);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v469 = v17;
      aBlock = v40;
      *v39 = 136446723;
      v41 = v468;
      v42 = FMSoundPlatterViewLayout.description.getter(v468);
      v467 = v11;
      v44 = sub_100005B4C(v42, v43, &aBlock);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2160;
      *(v39 + 14) = 1752392040;
      *(v39 + 22) = 2081;
      v25 = v471;
      *(v39 + 24) = sub_100005B4C(v471, v21, &aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "Succeeding play sound. Not overriding FMSoundPlatterViewLayout: %{public}s for id: %{private,mask.hash}s.", v39, 0x20u);
      swift_arrayDestroy();

      (*(v12 + 8))(v469, v467);
      v19 = v41;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v468 = v33;
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v448 = type metadata accessor for Logger();
  sub_100005B14(v448, qword_1006D4110);

  v449 = Logger.logObject.getter();
  v450 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v449, v450))
  {
    v451 = swift_slowAlloc();
    v469 = v17;
    v452 = v451;
    aBlock = swift_slowAlloc();
    *v452 = 136446723;
    v453 = FMSoundPlatterViewLayout.description.getter(0);
    v455 = v11;
    v456 = sub_100005B4C(v453, v454, &aBlock);

    *(v452 + 4) = v456;
    *(v452 + 12) = 2160;
    *(v452 + 14) = 1752392040;
    *(v452 + 22) = 2081;
    v25 = v471;
    *(v452 + 24) = sub_100005B4C(v471, v21, &aBlock);
    _os_log_impl(&_mh_execute_header, v449, v450, "Overriding FMSoundPlatterViewLayout: %{public}s to .pendingSound for id: %{private,mask.hash}s.", v452, 0x20u);
    swift_arrayDestroy();

    v468(v469, v455);
    v19 = 1;
  }

  else
  {

    v468(v17, v11);
    v19 = 1;
    v25 = v471;
  }

LABEL_18:
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100005B14(v45, qword_1006D4110);

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v48 = 136446723;
    v49 = FMSoundPlatterViewLayout.description.getter(v19);
    v51 = sub_100005B4C(v49, v50, &aBlock);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2160;
    *(v48 + 14) = 1752392040;
    *(v48 + 22) = 2081;
    *(v48 + 24) = sub_100005B4C(v25, v21, &aBlock);
    _os_log_impl(&_mh_execute_header, v46, v47, "updateSoundStatus: %{public}s, id: %{private,mask.hash}s.", v48, 0x20u);
    swift_arrayDestroy();
  }

  v52 = v472;
  v53 = *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending);
  if (v19 <= 4u)
  {
    if (v19 <= 1u)
    {
      if (!v19)
      {
        *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 0;
        if (v53 && swift_unknownObjectWeakLoadStrong())
        {
          sub_10011D810();
          swift_unknownObjectRelease();
        }

        v159 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
        v160 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
        v160[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
        v161 = v160;
        sub_1000D3C9C();
        v162 = objc_opt_self();
        v163 = swift_allocObject();
        *(v163 + 16) = v161;
        *(v163 + 24) = 0;
        v477 = sub_100141408;
        v478 = v163;
        aBlock = _NSConcreteStackBlock;
        v474 = 1107296256;
        v475 = sub_100004AE4;
        v476 = &unk_10062F2F8;
        v164 = _Block_copy(&aBlock);
        v165 = v52;
        v166 = v161;

        [v162 animateWithDuration:v164 animations:0.35];
        _Block_release(v164);

        v167 = *(v52 + v159);
        v167[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
        v168 = v167;
        sub_1000D15EC();

        v169 = *(v52 + v159);
        v169[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
        v170 = v169;
        sub_1000D17E8();

        v171 = *(v52 + v159);
        LOBYTE(v164) = v171[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
        v171[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
        v172 = v171;
        sub_1000D1ACC(v164);

        v173 = *(v52 + v159);
        v173[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
        v174 = swift_allocObject();
        *(v174 + 16) = v173;
        v477 = sub_100141428;
        v478 = v174;
        aBlock = _NSConcreteStackBlock;
        v474 = 1107296256;
        v475 = sub_100004AE4;
        v476 = &unk_10062F348;
        v175 = _Block_copy(&aBlock);
        v176 = v173;

        [v162 animateWithDuration:4 delay:v175 options:0 animations:0.3 completion:0.0];
        _Block_release(v175);

        sub_1001F9550();
        v177 = *(v165 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
        v177[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
        v178 = v177;
        sub_1000D3C9C();
        v179 = swift_allocObject();
        *(v179 + 16) = v178;
        *(v179 + 24) = 0;
        v477 = sub_100141408;
        v478 = v179;
        aBlock = _NSConcreteStackBlock;
        v474 = 1107296256;
        v475 = sub_100004AE4;
        v476 = &unk_10062F398;
        v180 = _Block_copy(&aBlock);
        v181 = v178;

        [v162 animateWithDuration:v180 animations:0.35];
        _Block_release(v180);

        v182 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
        v183 = *(v165 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
        v183[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
        v184 = v183;
        sub_1000D3C9C();
        v185 = swift_allocObject();
        *(v185 + 16) = v184;
        *(v185 + 24) = 0;
        v477 = sub_100141408;
        v478 = v185;
        aBlock = _NSConcreteStackBlock;
        v474 = 1107296256;
        v475 = sub_100004AE4;
        v476 = &unk_10062F3E8;
        v186 = _Block_copy(&aBlock);
        v187 = v184;

        [v162 animateWithDuration:v186 animations:0.35];
        _Block_release(v186);

        v188 = *(v165 + v182);
        v188[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
        v189 = v188;
        sub_1000D15EC();

        v190 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
        v191 = *(v165 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
        v191[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
        v192 = v191;
        sub_1000D3C9C();
        v193 = swift_allocObject();
        *(v193 + 16) = v192;
        *(v193 + 24) = 0;
        v477 = sub_100141408;
        v478 = v193;
        aBlock = _NSConcreteStackBlock;
        v474 = 1107296256;
        v475 = sub_100004AE4;
        v476 = &unk_10062F438;
        v194 = _Block_copy(&aBlock);
        v195 = v192;

        [v162 animateWithDuration:v194 animations:0.35];
        _Block_release(v194);

        v158 = *(v165 + v190);
        v196 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued;
        goto LABEL_80;
      }

      *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
      if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D800();
        swift_unknownObjectRelease();
      }

      v343 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
      v344 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
      v344[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v345 = v344;
      sub_1000D3C9C();
      v200 = objc_opt_self();
      v346 = swift_allocObject();
      *(v346 + 16) = v345;
      *(v346 + 24) = 0;
      v477 = sub_100141408;
      v478 = v346;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F168;
      v347 = _Block_copy(&aBlock);
      v203 = v52;
      v348 = v345;

      [v200 animateWithDuration:v347 animations:0.35];
      _Block_release(v347);

      v349 = *(v52 + v343);
      v349[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v350 = v349;
      sub_1000D15EC();

      v351 = *(v52 + v343);
      v351[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      v352 = v351;
      sub_1000D17E8();

      v353 = *(v52 + v343);
      LOBYTE(v347) = v353[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
      v353[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
      v354 = v353;
      sub_1000D1ACC(v347);

      v355 = *(v52 + v343);
      v355[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v356 = swift_allocObject();
      *(v356 + 16) = v355;
      v477 = sub_100141428;
      v478 = v356;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F1B8;
      v357 = _Block_copy(&aBlock);
      v358 = v355;

      [v200 animateWithDuration:4 delay:v357 options:0 animations:0.3 completion:0.0];
      _Block_release(v357);

      sub_1001F9254();
      v359 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
      v359[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v360 = v359;
      sub_1000D3C9C();
      v361 = swift_allocObject();
      *(v361 + 16) = v360;
      *(v361 + 24) = 0;
      v477 = sub_100141408;
      v478 = v361;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F208;
      v362 = _Block_copy(&aBlock);
      v363 = v360;

      [v200 animateWithDuration:v362 animations:0.35];
      _Block_release(v362);

      v364 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
      v365 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
      v365[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v366 = v365;
      sub_1000D3C9C();
      v367 = swift_allocObject();
      *(v367 + 16) = v366;
      *(v367 + 24) = 0;
      v477 = sub_100141408;
      v478 = v367;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F258;
      v368 = _Block_copy(&aBlock);
      v369 = v366;

      [v200 animateWithDuration:v368 animations:0.35];
      _Block_release(v368);

      v370 = *(v203 + v364);
      v370[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v371 = v370;
      sub_1000D15EC();

      v228 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
      v372 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
      v372[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v230 = v372;
      sub_1000D3C9C();
      v373 = swift_allocObject();
      *(v373 + 16) = v230;
      *(v373 + 24) = 0;
      v477 = sub_100141408;
      v478 = v373;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v232 = &unk_10062F2A8;
    }

    else
    {
      if (v19 != 2)
      {
        if (v19 == 3)
        {
          *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
          if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
          {
            sub_10011D800();
            swift_unknownObjectRelease();
          }

          v90 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
          v91 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
          v91[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
          v91[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v92 = v91;
          sub_1000D17E8();

          v93 = *(v52 + v90);
          v93[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v94 = v93;
          sub_1000D15EC();

          v95 = *(v52 + v90);
          v95[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v96 = v95;
          sub_1000D17E8();

          v97 = *(v52 + v90);
          v98 = v97[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
          v97[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
          v99 = v97;
          sub_1000D1ACC(v98);

          v100 = v52;
          v101 = *(v52 + v90);
          v101[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
          v102 = objc_opt_self();
          v103 = swift_allocObject();
          *(v103 + 16) = v101;
          v477 = sub_100141428;
          v478 = v103;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EEE8;
          v104 = _Block_copy(&aBlock);
          v105 = v101;

          [v102 animateWithDuration:4 delay:v104 options:0 animations:0.3 completion:0.0];
          _Block_release(v104);

          sub_1001F9550();
          v106 = *(v100 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
          v106[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
          v106[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v107 = v106;
          sub_1000D17E8();

          v108 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
          v109 = *(v100 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
          v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
          v110 = v109;
          sub_1000D3C9C();
          v111 = swift_allocObject();
          *(v111 + 16) = v110;
          *(v111 + 24) = 0;
          v477 = sub_100141408;
          v478 = v111;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EF38;
          v112 = _Block_copy(&aBlock);
          v113 = v110;

          [v102 animateWithDuration:v112 animations:0.35];
          _Block_release(v112);

          v114 = *(v100 + v108);
          v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v115 = v114;
          sub_1000D15EC();

          v116 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
          v117 = *(v100 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
          v117[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
          v118 = v117;
          sub_1000D3C9C();
          v119 = swift_allocObject();
          *(v119 + 16) = v118;
          *(v119 + 24) = 0;
          v477 = sub_100141408;
          v478 = v119;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EF88;
          v120 = _Block_copy(&aBlock);
          v121 = v118;

          [v102 animateWithDuration:v120 animations:0.35];
          _Block_release(v120);

          v122 = *(v100 + v116);
          v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v123 = v122;
          sub_1000D15EC();
        }

        else
        {
          *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
          if (!v53 && swift_unknownObjectWeakLoadStrong())
          {
            sub_10011D800();
            swift_unknownObjectRelease();
          }

          v306 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
          v307 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
          v307[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
          v308 = v307;
          sub_1000D3C9C();
          v309 = objc_opt_self();
          v310 = swift_allocObject();
          *(v310 + 16) = v308;
          *(v310 + 24) = 0;
          v477 = sub_100141408;
          v478 = v310;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EDF8;
          v311 = _Block_copy(&aBlock);
          v312 = v52;
          v313 = v308;

          [v309 animateWithDuration:v311 animations:0.35];
          _Block_release(v311);

          v314 = *(v52 + v306);
          v314[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v315 = v314;
          sub_1000D15EC();

          v316 = *(v52 + v306);
          v316[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v317 = v316;
          sub_1000D17E8();

          v318 = *(v52 + v306);
          LOBYTE(v311) = v318[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
          v318[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
          v319 = v318;
          sub_1000D1ACC(v311);

          v320 = *(v52 + v306);
          v320[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
          v321 = swift_allocObject();
          *(v321 + 16) = v320;
          v477 = sub_100141428;
          v478 = v321;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EE48;
          v322 = _Block_copy(&aBlock);
          v323 = v320;

          [v309 animateWithDuration:4 delay:v322 options:0 animations:0.3 completion:0.0];
          _Block_release(v322);

          sub_1001F9550();
          v324 = *(v312 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
          v324[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
          v325 = v324;
          sub_1000D3C9C();
          v326 = swift_allocObject();
          *(v326 + 16) = v325;
          *(v326 + 24) = 0;
          v477 = sub_100141408;
          v478 = v326;
          aBlock = _NSConcreteStackBlock;
          v474 = 1107296256;
          v475 = sub_100004AE4;
          v476 = &unk_10062EE98;
          v327 = _Block_copy(&aBlock);
          v328 = v325;

          [v309 animateWithDuration:v327 animations:0.35];
          _Block_release(v327);

          v329 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
          v330 = *(v312 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
          v330[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
          v330[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v331 = v330;
          sub_1000D17E8();

          v332 = *(v312 + v329);
          v332[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v333 = v332;
          sub_1000D15EC();

          v334 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
          v335 = *(v312 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
          v335[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
          v335[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v336 = v335;
          sub_1000D17E8();

          v337 = *(v312 + v334);
          v337[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
          v338 = v337;
          sub_1000D15EC();
        }

        goto LABEL_64;
      }

      *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
      if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D800();
        swift_unknownObjectRelease();
      }

      v197 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
      v198 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
      v198[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v199 = v198;
      sub_1000D3C9C();
      v200 = objc_opt_self();
      v201 = swift_allocObject();
      *(v201 + 16) = v199;
      *(v201 + 24) = 0;
      v477 = sub_100141408;
      v478 = v201;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062EFD8;
      v202 = _Block_copy(&aBlock);
      v203 = v52;
      v204 = v199;

      [v200 animateWithDuration:v202 animations:0.35];
      _Block_release(v202);

      v205 = *(v52 + v197);
      v205[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v206 = v205;
      sub_1000D15EC();

      v207 = *(v52 + v197);
      v207[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      v208 = v207;
      sub_1000D17E8();

      v209 = *(v52 + v197);
      LOBYTE(v202) = v209[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
      v209[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
      v210 = v209;
      sub_1000D1ACC(v202);

      v211 = *(v52 + v197);
      v211[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v212 = swift_allocObject();
      *(v212 + 16) = v211;
      v477 = sub_100141428;
      v478 = v212;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F028;
      v213 = _Block_copy(&aBlock);
      v214 = v211;

      [v200 animateWithDuration:4 delay:v213 options:0 animations:0.3 completion:0.0];
      _Block_release(v213);

      sub_1001F9254();
      v215 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
      v215[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v216 = v215;
      sub_1000D3C9C();
      v217 = swift_allocObject();
      *(v217 + 16) = v216;
      *(v217 + 24) = 0;
      v477 = sub_100141408;
      v478 = v217;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F078;
      v218 = _Block_copy(&aBlock);
      v219 = v216;

      [v200 animateWithDuration:v218 animations:0.35];
      _Block_release(v218);

      v220 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
      v221 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
      v221[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v222 = v221;
      sub_1000D3C9C();
      v223 = swift_allocObject();
      *(v223 + 16) = v222;
      *(v223 + 24) = 0;
      v477 = sub_100141408;
      v478 = v223;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062F0C8;
      v224 = _Block_copy(&aBlock);
      v225 = v222;

      [v200 animateWithDuration:v224 animations:0.35];
      _Block_release(v224);

      v226 = *(v203 + v220);
      v226[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v227 = v226;
      sub_1000D15EC();

      v228 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
      v229 = *(v203 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
      v229[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v230 = v229;
      sub_1000D3C9C();
      v231 = swift_allocObject();
      *(v231 + 16) = v230;
      *(v231 + 24) = 0;
      v477 = sub_100141408;
      v478 = v231;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v232 = &unk_10062F118;
    }

    v475 = sub_100004AE4;
    v476 = v232;
    v374 = _Block_copy(&aBlock);
    v375 = v230;

    [v200 animateWithDuration:v374 animations:0.35];
    _Block_release(v374);

    v158 = *(v203 + v228);
    v196 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued;
LABEL_80:
    v158[v196] = 0;
LABEL_81:
    v447 = v158;
    sub_1000D15EC();

    return;
  }

  if (v19 > 7u)
  {
    if (v19 == 8)
    {
      *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
      if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D800();
        swift_unknownObjectRelease();
      }

      v269 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
      v270 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
      v270[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v271 = v270;
      sub_1000D3C9C();
      v272 = objc_opt_self();
      v273 = swift_allocObject();
      *(v273 + 16) = v271;
      *(v273 + 24) = 0;
      v477 = sub_100141408;
      v478 = v273;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E858;
      v274 = _Block_copy(&aBlock);
      v275 = v52;
      v276 = v271;

      [v272 animateWithDuration:v274 animations:0.35];
      _Block_release(v274);

      v277 = *(v52 + v269);
      v277[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v278 = v277;
      sub_1000D15EC();

      v279 = *(v52 + v269);
      v279[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      v280 = v279;
      sub_1000D17E8();

      v281 = *(v52 + v269);
      LOBYTE(v274) = v281[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
      v281[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
      v282 = v281;
      sub_1000D1ACC(v274);

      v283 = *(v52 + v269);
      v283[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v284 = swift_allocObject();
      *(v284 + 16) = v283;
      v477 = sub_100141428;
      v478 = v284;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E8A8;
      v285 = _Block_copy(&aBlock);
      v286 = v283;

      [v272 animateWithDuration:4 delay:v285 options:0 animations:0.3 completion:0.0];
      _Block_release(v285);

      sub_1001F9550();
      v287 = *(v275 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
      v287[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v288 = v287;
      sub_1000D3C9C();
      v289 = swift_allocObject();
      *(v289 + 16) = v288;
      *(v289 + 24) = 0;
      v477 = sub_100141408;
      v478 = v289;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E8F8;
      v290 = _Block_copy(&aBlock);
      v291 = v288;

      [v272 animateWithDuration:v290 animations:0.35];
      _Block_release(v290);

      v292 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
      v293 = *(v275 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
      v293[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v294 = v293;
      sub_1000D3C9C();
      v295 = swift_allocObject();
      *(v295 + 16) = v294;
      *(v295 + 24) = 0;
      v477 = sub_100141408;
      v478 = v295;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E948;
      v296 = _Block_copy(&aBlock);
      v297 = v294;

      [v272 animateWithDuration:v296 animations:0.35];
      _Block_release(v296);

      v298 = *(v275 + v292);
      v298[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v299 = v298;
      sub_1000D15EC();

      v300 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
      v301 = *(v275 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
      v301[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v302 = v301;
      sub_1000D3C9C();
      v303 = swift_allocObject();
      *(v303 + 16) = v302;
      *(v303 + 24) = 0;
      v477 = sub_100141408;
      v478 = v303;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E998;
      v304 = _Block_copy(&aBlock);
      v305 = v302;

      [v272 animateWithDuration:v304 animations:0.35];
      _Block_release(v304);

      v158 = *(v275 + v300);
      v158[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 1;
      goto LABEL_81;
    }

    if (v19 == 9)
    {
      *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
      if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D800();
        swift_unknownObjectRelease();
      }

      v124 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
      v125 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
      v125[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v126 = v125;
      sub_1000D3C9C();
      v127 = objc_opt_self();
      v128 = swift_allocObject();
      *(v128 + 16) = v126;
      *(v128 + 24) = 0;
      v477 = sub_100141408;
      v478 = v128;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E718;
      v129 = _Block_copy(&aBlock);
      v130 = v52;
      v131 = v126;

      [v127 animateWithDuration:v129 animations:0.35];
      _Block_release(v129);

      v132 = *(v52 + v124);
      v132[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v133 = v132;
      sub_1000D15EC();

      v134 = *(v52 + v124);
      v134[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      v135 = v134;
      sub_1000D17E8();

      v136 = *(v52 + v124);
      LOBYTE(v129) = v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
      v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
      v137 = v136;
      sub_1000D1ACC(v129);

      v138 = *(v52 + v124);
      v138[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v139 = swift_allocObject();
      *(v139 + 16) = v138;
      v477 = sub_100141428;
      v478 = v139;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E768;
      v140 = _Block_copy(&aBlock);
      v141 = v138;

      [v127 animateWithDuration:4 delay:v140 options:0 animations:0.3 completion:0.0];
      _Block_release(v140);

      sub_1001F9550();
      v142 = *(v130 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
      v142[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v143 = v142;
      sub_1000D3C9C();
      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      *(v144 + 24) = 0;
      v477 = sub_100141408;
      v478 = v144;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E7B8;
      v145 = _Block_copy(&aBlock);
      v146 = v143;

      [v127 animateWithDuration:v145 animations:0.35];
      _Block_release(v145);

      v147 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
      v148 = *(v130 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
      v148[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
      v148[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      v149 = v148;
      sub_1000D17E8();

      v150 = *(v130 + v147);
      v150[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
      v151 = v150;
      sub_1000D15EC();

      v152 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
      v153 = *(v130 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
      v153[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      v154 = v153;
      sub_1000D3C9C();
      v155 = swift_allocObject();
      *(v155 + 16) = v154;
      *(v155 + 24) = 0;
      v477 = sub_100141408;
      v478 = v155;
      aBlock = _NSConcreteStackBlock;
      v474 = 1107296256;
      v475 = sub_100004AE4;
      v476 = &unk_10062E808;
      v156 = _Block_copy(&aBlock);
      v157 = v154;

      [v127 animateWithDuration:v156 animations:0.35];
      _Block_release(v156);

      v158 = *(v130 + v152);
      v158[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 1;
      goto LABEL_81;
    }

    *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
    if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_10011D800();
      swift_unknownObjectRelease();
    }

    v413 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
    v414 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
    v414[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v415 = v414;
    sub_1000D3C9C();
    v416 = objc_opt_self();
    v417 = swift_allocObject();
    *(v417 + 16) = v415;
    *(v417 + 24) = 0;
    v477 = sub_100141408;
    v478 = v417;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062E5D8;
    v418 = _Block_copy(&aBlock);
    v419 = v52;
    v420 = v415;

    [v416 animateWithDuration:v418 animations:0.35];
    _Block_release(v418);

    v421 = *(v52 + v413);
    v421[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    v422 = v421;
    sub_1000D15EC();

    v423 = *(v52 + v413);
    v423[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    v424 = v423;
    sub_1000D17E8();

    v425 = *(v52 + v413);
    LOBYTE(v418) = v425[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v425[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
    v426 = v425;
    sub_1000D1ACC(v418);

    v427 = *(v52 + v413);
    v427[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
    v428 = swift_allocObject();
    *(v428 + 16) = v427;
    v477 = sub_100141428;
    v478 = v428;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062E628;
    v429 = _Block_copy(&aBlock);
    v430 = v427;

    [v416 animateWithDuration:4 delay:v429 options:0 animations:0.3 completion:0.0];
    _Block_release(v429);

    sub_1001F9550();
    v431 = *(v419 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
    v431[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v432 = v431;
    sub_1000D3C9C();
    v433 = swift_allocObject();
    *(v433 + 16) = v432;
    *(v433 + 24) = 0;
    v477 = sub_100141408;
    v478 = v433;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062E678;
    v434 = _Block_copy(&aBlock);
    v435 = v432;

    [v416 animateWithDuration:v434 animations:0.35];
    _Block_release(v434);

    v436 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
    v437 = *(v419 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
    v437[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v438 = v437;
    sub_1000D3C9C();
    v439 = swift_allocObject();
    *(v439 + 16) = v438;
    *(v439 + 24) = 0;
    v477 = sub_100141408;
    v478 = v439;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062E6C8;
    v440 = _Block_copy(&aBlock);
    v441 = v438;

    [v416 animateWithDuration:v440 animations:0.35];
    _Block_release(v440);

    v442 = *(v419 + v436);
    v442[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 1;
    v443 = v442;
    sub_1000D15EC();

    v444 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
    v445 = *(v419 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
    v445[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
    v445[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    v446 = v445;
    sub_1000D17E8();

    v158 = *(v419 + v444);
    v196 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued;
    goto LABEL_80;
  }

  if (v19 == 5)
  {
    *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
    if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_10011D800();
      swift_unknownObjectRelease();
    }

    v233 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
    v234 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
    v234[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v235 = v234;
    sub_1000D3C9C();
    v236 = objc_opt_self();
    v237 = swift_allocObject();
    *(v237 + 16) = v235;
    *(v237 + 24) = 0;
    v477 = sub_100141408;
    v478 = v237;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062ECB8;
    v238 = _Block_copy(&aBlock);
    v239 = v52;
    v240 = v235;

    [v236 animateWithDuration:v238 animations:0.35];
    _Block_release(v238);

    v241 = *(v52 + v233);
    v241[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    v242 = v241;
    sub_1000D15EC();

    v243 = *(v52 + v233);
    v243[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    v244 = v243;
    sub_1000D17E8();

    v245 = *(v52 + v233);
    LOBYTE(v238) = v245[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v245[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
    v246 = v245;
    sub_1000D1ACC(v238);

    v247 = *(v52 + v233);
    v247[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
    v248 = swift_allocObject();
    *(v248 + 16) = v247;
    v477 = sub_100141428;
    v478 = v248;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062ED08;
    v249 = _Block_copy(&aBlock);
    v250 = v247;

    [v236 animateWithDuration:4 delay:v249 options:0 animations:0.3 completion:0.0];
    _Block_release(v249);

    sub_1001F9550();
    v251 = *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
    v251[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v252 = v251;
    sub_1000D3C9C();
    v253 = swift_allocObject();
    *(v253 + 16) = v252;
    *(v253 + 24) = 0;
    v477 = sub_100141408;
    v478 = v253;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062ED58;
    v254 = _Block_copy(&aBlock);
    v255 = v252;

    [v236 animateWithDuration:v254 animations:0.35];
    _Block_release(v254);

    v256 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
    v257 = *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
    v257[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v258 = v257;
    sub_1000D3C9C();
    v259 = swift_allocObject();
    *(v259 + 16) = v258;
    *(v259 + 24) = 0;
    v477 = sub_100141408;
    v478 = v259;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062EDA8;
    v260 = _Block_copy(&aBlock);
    v261 = v258;

    [v236 animateWithDuration:v260 animations:0.35];
    _Block_release(v260);

    v262 = *(v239 + v256);
    v262[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    v263 = v262;
    sub_1000D15EC();

    v264 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
    v265 = *(v239 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
    v265[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
    v265[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    v266 = v265;
    sub_1000D17E8();

    v267 = *(v239 + v264);
    v267[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    v268 = v267;
    sub_1000D15EC();

    goto LABEL_64;
  }

  if (v19 != 6)
  {
    *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
    if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_10011D800();
      swift_unknownObjectRelease();
    }

    v376 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
    v377 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
    v377[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v378 = v377;
    sub_1000D3C9C();
    v379 = objc_opt_self();
    v380 = swift_allocObject();
    *(v380 + 16) = v378;
    *(v380 + 24) = 0;
    v477 = sub_100141408;
    v478 = v380;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062E9E8;
    v381 = _Block_copy(&aBlock);
    v382 = v52;
    v383 = v378;

    [v379 animateWithDuration:v381 animations:0.35];
    _Block_release(v381);

    v384 = *(v52 + v376);
    v384[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
    v385 = v384;
    sub_1000D15EC();

    v386 = *(v52 + v376);
    v386[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    v387 = v386;
    sub_1000D17E8();

    v388 = *(v52 + v376);
    LOBYTE(v381) = v388[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v388[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
    v389 = v388;
    sub_1000D1ACC(v381);

    v390 = *(v52 + v376);
    v390[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
    v391 = swift_allocObject();
    *(v391 + 16) = v390;
    v477 = sub_100141428;
    v478 = v391;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062EA38;
    v392 = _Block_copy(&aBlock);
    v393 = v390;

    [v379 animateWithDuration:4 delay:v392 options:0 animations:0.3 completion:0.0];
    _Block_release(v392);

    sub_1001F9550();
    v394 = *(v382 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
    v394[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v395 = v394;
    sub_1000D3C9C();
    v396 = swift_allocObject();
    *(v396 + 16) = v395;
    *(v396 + 24) = 0;
    v477 = sub_100141408;
    v478 = v396;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062EA88;
    v397 = _Block_copy(&aBlock);
    v398 = v395;

    [v379 animateWithDuration:v397 animations:0.35];
    _Block_release(v397);

    v399 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
    v400 = *(v382 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
    v400[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v401 = v400;
    sub_1000D3C9C();
    v402 = swift_allocObject();
    *(v402 + 16) = v401;
    *(v402 + 24) = 0;
    v477 = sub_100141408;
    v478 = v402;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062EAD8;
    v403 = _Block_copy(&aBlock);
    v404 = v401;

    [v379 animateWithDuration:v403 animations:0.35];
    _Block_release(v403);

    v405 = *(v382 + v399);
    v405[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 1;
    v406 = v405;
    sub_1000D15EC();

    v407 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
    v408 = *(v382 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
    v408[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
    v409 = v408;
    sub_1000D3C9C();
    v410 = swift_allocObject();
    *(v410 + 16) = v409;
    *(v410 + 24) = 0;
    v477 = sub_100141408;
    v478 = v410;
    aBlock = _NSConcreteStackBlock;
    v474 = 1107296256;
    v475 = sub_100004AE4;
    v476 = &unk_10062EB28;
    v411 = _Block_copy(&aBlock);
    v412 = v409;

    [v379 animateWithDuration:v411 animations:0.35];
    _Block_release(v411);

    v158 = *(v382 + v407);
    v196 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued;
    goto LABEL_80;
  }

  *(v472 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 1;
  if ((v53 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D800();
    swift_unknownObjectRelease();
  }

  v54 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
  v55 = *(v52 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
  v55[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v56 = v55;
  sub_1000D3C9C();
  v57 = objc_opt_self();
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = 0;
  v477 = sub_100141408;
  v478 = v58;
  aBlock = _NSConcreteStackBlock;
  v474 = 1107296256;
  v475 = sub_100004AE4;
  v476 = &unk_10062EB78;
  v59 = _Block_copy(&aBlock);
  v60 = v52;
  v61 = v56;

  [v57 animateWithDuration:v59 animations:0.35];
  _Block_release(v59);

  v62 = *(v52 + v54);
  v62[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v63 = v62;
  sub_1000D15EC();

  v64 = *(v52 + v54);
  v64[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v65 = v64;
  sub_1000D17E8();

  v66 = *(v52 + v54);
  LOBYTE(v59) = v66[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
  v66[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v67 = v66;
  sub_1000D1ACC(v59);

  v68 = *(v52 + v54);
  v68[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  v477 = sub_100141428;
  v478 = v69;
  aBlock = _NSConcreteStackBlock;
  v474 = 1107296256;
  v475 = sub_100004AE4;
  v476 = &unk_10062EBC8;
  v70 = _Block_copy(&aBlock);
  v71 = v68;

  [v57 animateWithDuration:4 delay:v70 options:0 animations:0.3 completion:0.0];
  _Block_release(v70);

  sub_1001F9550();
  v72 = *(v60 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
  v72[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v73 = v72;
  sub_1000D3C9C();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = 0;
  v477 = sub_100141408;
  v478 = v74;
  aBlock = _NSConcreteStackBlock;
  v474 = 1107296256;
  v475 = sub_100004AE4;
  v476 = &unk_10062EC18;
  v75 = _Block_copy(&aBlock);
  v76 = v73;

  [v57 animateWithDuration:v75 animations:0.35];
  _Block_release(v75);

  v77 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v78 = *(v60 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
  v78[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
  v78[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v79 = v78;
  sub_1000D17E8();

  v80 = *(v60 + v77);
  v80[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v81 = v80;
  sub_1000D15EC();

  v82 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v83 = *(v60 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
  v83[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v84 = v83;
  sub_1000D3C9C();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = 0;
  v477 = sub_100141408;
  v478 = v85;
  aBlock = _NSConcreteStackBlock;
  v474 = 1107296256;
  v475 = sub_100004AE4;
  v476 = &unk_10062EC68;
  v86 = _Block_copy(&aBlock);
  v87 = v84;

  [v57 animateWithDuration:v86 animations:0.35];
  _Block_release(v86);

  v88 = *(v60 + v82);
  v88[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v89 = v88;
  sub_1000D15EC();

LABEL_64:
  v339 = sub_1001D733C();
  v341 = v340;
  v342 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
  if (!(*(*(v342 - 8) + 48))(v341, 1, v342))
  {
    FMIPAirPodsPlaySoundEvent.userShownPlayingState.setter();
  }

  (v339)(&aBlock, 0);
}

uint64_t sub_1001ED070()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPPlaySoundMethod();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FMDeviceDetailViewModel();
  v48 = *(v53 - 8);
  v4 = __chkstk_darwin(v53);
  v49 = v5;
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v44 - v6;
  v52 = type metadata accessor for FMIPAnalyticsActionType();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FMIPDevice();
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v54 = v7;
  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: Play Sound button pressed", v17, 2u);
  }

  sub_1001FB114();
  v18 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v19 = *(*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
  v20 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v21));
  v22 = v19 + v20;
  v23 = v51;
  (*(v11 + 16))(v13, v22, v51);
  os_unfair_lock_unlock((v19 + v21));

  v24 = v52;
  (*(v8 + 104))(v10, enum case for FMIPAnalyticsActionType.playSound(_:), v52);
  sub_10020D6E8(v13, v10);
  (*(v8 + 8))(v10, v24);
  (*(v11 + 8))(v13, v23);
  v25 = *&v1[v18];
  v26 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v27 = v54;
  sub_10022017C(v25 + v26, v54, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001F9550();
  v28 = v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending];
  v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending] = 1;
  if (v28 != 1 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D800();
    swift_unknownObjectRelease();
  }

  if ((*(v27 + *(v53 + 92) + 1) & 8) != 0)
  {
    v32 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 mainBundle];
    v55._object = 0x80000001005870B0;
    v36._object = 0x8000000100587080;
    v55._countAndFlagsBits = 0xD000000000000035;
    v36._countAndFlagsBits = 0xD000000000000023;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v55);

    v39 = v50;
    sub_10022017C(v27, v50, type metadata accessor for FMDeviceDetailViewModel);
    v40 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v41 = (v49 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    sub_10021FB38(v39, v42 + v40, type metadata accessor for FMDeviceDetailViewModel);
    *(v42 + v41) = v1;
    sub_1003DCB60(v34, v38._countAndFlagsBits, v38._object, v1, sub_10021F964, v42);
  }

  else
  {
    v30 = v45;
    v29 = v46;
    v31 = v47;
    (*(v46 + 104))(v45, enum case for FMIPPlaySoundMethod.classic(_:), v47);
    sub_1001F22BC(v30, 0, 0);
    (*(v29 + 8))(v30, v31);
  }

  return sub_1002201E4(v27, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_1001ED71C(char a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPPlaySoundMethod();
  v11 = __chkstk_darwin(v10);
  v12 = __chkstk_darwin(v11);
  v14 = &v68 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v68 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v68 - v19;
  v21 = __chkstk_darwin(v18);
  if ((a1 & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100005B14(v30, qword_1006D4630);
    v78 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v78, v27))
    {
      goto LABEL_12;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "FMDeviceDetailContentViewController: Couldn't play sound, BT is off";
    goto LABEL_11;
  }

  v74 = v7;
  v75 = v24;
  v76 = v23;
  v77 = &v68 - v22;
  v78 = v21;
  v25 = type metadata accessor for FMDeviceDetailViewModel();
  if (*(a2 + *(v25 + 100)))
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4110);
    v78 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v78, v27))
    {
      goto LABEL_12;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Play sound action triggered while sound is already playing. This button should not be shown.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v78, v27, v29, v28, 2u);

LABEL_12:
    v31 = v78;

    return;
  }

  v32 = v25;
  v73 = a3;
  sub_1001F9550();
  My = type metadata accessor for Feature.FindMy();
  v80 = My;
  v81 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v34 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v34, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  v35 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v36 = *(a2 + *(v32 + 48));
  if (v35)
  {
    if (v36)
    {
      v37 = v74;
      (*(v74 + 104))(v9, enum case for FMIPPlaySoundChannels.case(_:), v6);
      LODWORD(v36) = sub_1004A7FCC(v9, v36);
      (*(v37 + 8))(v9, v6);
    }

    v38 = (a2 + *(v32 + 44));
    if (v38[8])
    {
      v39 = 0;
    }

    else
    {
      v39 = (*v38 >> 5) & 1;
    }

    v44 = v78;
    v49 = v76;
    v50 = *(v76 + 104);
    v51 = &enum case for FMIPPlaySoundMethod.ble(_:);
    v69 = v36;
    v70 = v39;
    if (((v36 | v39) & 1) == 0)
    {
      v51 = &enum case for FMIPPlaySoundMethod.classic(_:);
    }

    v50(v20, *v51, v78);
    v52 = v77;
    v74 = *(v49 + 32);
    (v74)(v77, v20, v44);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v72 = (v49 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53 = type metadata accessor for Logger();
    sub_100005B14(v53, qword_1006D4630);
    v71 = *(v49 + 16);
    v71(v17, v52, v44);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315650;
      sub_10021E650(&qword_1006B6920, &type metadata accessor for FMIPPlaySoundMethod);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v49 + 8))(v17, v78);
      v61 = sub_100005B4C(v58, v60, aBlock);

      *(v56 + 4) = v61;
      *(v56 + 12) = 1024;
      *(v56 + 14) = v69 & 1;
      *(v56 + 18) = 1024;
      *(v56 + 20) = v70;
      _os_log_impl(&_mh_execute_header, v54, v55, "FMDeviceDetailContentViewController: Determined sound method: %s, contains case: %{BOOL}d, primary part connected: %{BOOL}d", v56, 0x18u);
      sub_100006060(v57);

      v44 = v78;
    }

    else
    {

      (*(v49 + 8))(v17, v44);
    }

    v45 = v49;
    v43 = v73;
    v46 = v74;
    v47 = v77;
    v48 = v71;
  }

  else
  {
    if (v36 && (v40 = v74, (*(v74 + 104))(v9, enum case for FMIPPlaySoundChannels.case(_:), v6), v41 = sub_1004A7FCC(v9, v36), (*(v40 + 8))(v9, v6), v41))
    {
      v42 = &enum case for FMIPPlaySoundMethod.ble(_:);
    }

    else
    {
      v42 = &enum case for FMIPPlaySoundMethod.classic(_:);
    }

    v43 = v73;
    v44 = v78;
    v45 = v76;
    (*(v76 + 104))(v14, *v42, v78);
    v46 = *(v45 + 32);
    v47 = v77;
    v46(v77, v14, v44);
    v48 = *(v45 + 16);
  }

  v62 = v75;
  v48(v75, v47, v44);
  v63 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = v43;
  v46((v64 + v63), v62, v44);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10021FACC;
  *(v65 + 24) = v64;
  v81 = sub_10000964C;
  v82 = v65;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000095FC;
  v80 = &unk_10062E588;
  v66 = _Block_copy(aBlock);
  v67 = v43;
  static FMOSActivity.start(_:execute:)();
  _Block_release(v66);
  (*(v45 + 8))(v47, v44);
}

uint64_t sub_1001EE058(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMUserDefaults();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWallTime();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = __chkstk_darwin(v8);
  v40 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v36 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  v13 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem;
  if (*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    *(v2 + v13) = 0;
  }

  v39 = v13;
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100005B14(v14, qword_1006D4110);

  v38 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_100005B4C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "prepareOfflineSoundAttempt %{private,mask.hash}s.", v18, 0x16u);
    sub_100006060(v19);
  }

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  aBlock[4] = sub_10021F900;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062E498;
  _Block_copy(aBlock);
  v47 = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);

  v37 = a1;
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v22 = DispatchWorkItem.init(flags:block:)();

  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = v40;
  static DispatchWallTime.now()();
  v25 = v41;
  static FMUserDefaults.shared.getter();
  v26._object = 0x8000000100587060;
  v26._countAndFlagsBits = 0xD000000000000017;
  v27.n128_u64[0] = FMUserDefaults.double(for:)(v26);
  (*(v43 + 8))(v25, v44, v27);
  v28 = v42;
  + infix(_:_:)();
  v29 = v46;
  v30 = *(v45 + 8);
  v30(v24, v46);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  v30(v28, v29);
  *(v3 + v39) = v22;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 141558275;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    *(v33 + 14) = sub_100005B4C(v37, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "Cancellation block for online sound attempt set for %{private,mask.hash}s.", v33, 0x16u);
    sub_100006060(v34);
  }
}

uint64_t sub_1001EE6CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = a2;
  v5 = type metadata accessor for FMIPPlaySoundMethod();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem] = 0;
  }

  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4110);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    *(v13 + 14) = sub_100005B4C(v23, a3, v24);
    _os_log_impl(&_mh_execute_header, v11, v12, "Executing cancellation block for initial play sound. %{private,mask.hash}s.", v13, 0x16u);
    sub_100006060(v14);
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_100005B4C(v23, a3, v24);
    _os_log_impl(&_mh_execute_header, v15, v16, "Cancelling initial play sound classic attempt for %{private,mask.hash}s.", v17, 0x16u);
    sub_100006060(v18);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    (*(v6 + 104))(v8, enum case for FMIPPlaySoundMethod.classic(_:), v5);
    v21 = swift_allocObject();
    v21[2] = v23;
    v21[3] = a3;
    v21[4] = a1;

    sub_1001F3DC8(v8, 1, 1, _swiftEmptyArrayStorage, sub_10021F90C, v21);

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1001EEA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v36 = a4;
  v35 = type metadata accessor for FMIPPlaySoundMethod();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4110);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37[0] = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_100005B4C(v36, a5, v37);
    _os_log_impl(&_mh_execute_header, v15, v16, "Completed stopping classic sound. Issuing offline sound attempt for %{private,mask.hash}s.", v17, 0x16u);
    sub_100006060(v18);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v20 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource), v21 = Strong, , v21, v22 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel, swift_beginAccess(), sub_10022017C(v20 + v22, v13, type metadata accessor for FMDeviceDetailViewModel), , v23 = *&v13[*(v11 + 48)], , sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel), !v23))
  {
    sub_10007EBC0(&qword_1006AF788);
    v24 = type metadata accessor for FMIPPlaySoundChannels();
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100552210;
    v28 = *(v25 + 104);
    v28(v23 + v27, enum case for FMIPPlaySoundChannels.left(_:), v24);
    v28(v23 + v27 + v26, enum case for FMIPPlaySoundChannels.right(_:), v24);
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
  }

  v30 = v29;
  v31 = v35;
  (*(v8 + 104))(v10, enum case for FMIPPlaySoundMethod.ble(_:), v35);
  v32 = swift_allocObject();
  v32[2] = v36;
  v32[3] = a5;
  v32[4] = a6;

  sub_1001F3DC8(v10, 1, 0, v23, sub_10021F958, v32);

  return (*(v8 + 8))(v10, v31);
}

uint64_t sub_1001EEF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v44 = a6;
  v10 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v10 - 8);
  v12 = &v40[-v11];
  v13 = type metadata accessor for FMIPActionStatus();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v45 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v40[-v17];
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4110);
  v20 = *(v14 + 16);
  v46 = a1;
  v20(v18, a1, v13);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = a3;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v43 = v12;
    v25 = v24;
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v25 = 141558787;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    *(v25 + 14) = sub_100005B4C(a4, a5, v47);
    *(v25 + 22) = 2082;
    sub_10021E650(&unk_1006B0580, &type metadata accessor for FMIPActionStatus);
    v41 = v22;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v18, v13);
    v30 = sub_100005B4C(v26, v28, v47);

    *(v25 + 24) = v30;
    *(v25 + 32) = 2082;
    v48 = v23;
    v31 = v23;

    sub_10007EBC0(&qword_1006B6930);
    v32 = String.init<A>(describing:)();
    v34 = sub_100005B4C(v32, v33, v47);

    *(v25 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v21, v41, "Completed offline sound attempt for %{private,mask.hash}s, status: %{public}s, action: %{public}s.", v25, 0x2Au);
    swift_arrayDestroy();

    v12 = v43;
  }

  else
  {
    v31 = a3;

    v29 = *(v14 + 8);
    v29(v18, v13);
  }

  v35 = v45;
  (*(v14 + 104))(v45, enum case for FMIPActionStatus.queueingSound(_:), v13);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (v29)(v35, v13);
  if (v47[0] == v48)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v37 = result;
      if (v31)
      {
        FMIPPlaySoundDeviceAction.issueDate.getter();
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = type metadata accessor for Date();
      (*(*(v39 - 8) + 56))(v12, v38, 1, v39);
      sub_1001F8240(v12);

      return sub_100012DF0(v12, &unk_1006B0000);
    }
  }

  return result;
}

void sub_1001EF478(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPPlaySoundMethod();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMDeviceDetailViewModel();
  v9 = __chkstk_darwin(v8);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v64 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v64 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = (&v64 - v19);
  v21 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem;
  if (!*(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem))
  {
    return;
  }

  v65 = v5;
  v66 = v4;
  v22 = *(v18 + 100);
  v23 = *(a1 + v22);
  v24 = sub_1004A7F9C(*(a1 + v22), &off_100621C20);
  v25 = sub_1004A7F9C(v23, &off_100621C48);
  if (v24 && v25 || v23 == 3)
  {
    if (*(v2 + v21))
    {

      dispatch thunk of DispatchWorkItem.cancel()();

      *(v2 + v21) = 0;
    }

    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4110);
    sub_10022017C(a1, v20, type metadata accessor for FMDeviceDetailViewModel);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      v39 = *v20;
      v40 = v20[1];

      sub_1002201E4(v20, type metadata accessor for FMDeviceDetailViewModel);
      v41 = sub_100005B4C(v39, v40, &v67);

      *(v37 + 14) = v41;
      v42 = "Pending Online Cancellation - All channels playing, canceled offline attempt for %{private,mask.hash}s.";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v35, v36, v42, v37, 0x16u);
      sub_100006060(v38);

      return;
    }

    v43 = v20;
LABEL_29:
    sub_1002201E4(v43, type metadata accessor for FMDeviceDetailViewModel);
    return;
  }

  if (!v24 && !v25)
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100005B14(v44, qword_1006D4110);
    sub_10022017C(a1, v11, type metadata accessor for FMDeviceDetailViewModel);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v67 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      v45 = *v11;
      v46 = v11[1];

      sub_1002201E4(v11, type metadata accessor for FMDeviceDetailViewModel);
      v47 = sub_100005B4C(v45, v46, &v67);

      *(v37 + 14) = v47;
      v42 = "Pending Online Cancellation - No playing channels for %{private,mask.hash}s.";
      goto LABEL_23;
    }

    v43 = v11;
    goto LABEL_29;
  }

  if (*(v2 + v21))
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    *(v2 + v21) = 0;
  }

  if (v24)
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4110);
    sub_10022017C(a1, v17, type metadata accessor for FMDeviceDetailViewModel);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v31 = *v17;
      v32 = v17[1];

      sub_1002201E4(v17, type metadata accessor for FMDeviceDetailViewModel);
      v33 = sub_100005B4C(v31, v32, &v67);

      *(v29 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Issuing offline play sound for right channel for %{private,mask.hash}s.", v29, 0x16u);
      sub_100006060(v30);
    }

    else
    {

      sub_1002201E4(v17, type metadata accessor for FMDeviceDetailViewModel);
    }

    v57 = v65;
    v56 = v66;
    (*(v65 + 104))(v7, enum case for FMIPPlaySoundMethod.ble(_:), v66);
    sub_10007EBC0(&qword_1006AF788);
    v58 = type metadata accessor for FMIPPlaySoundChannels();
    v59 = *(v58 - 8);
    v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v61 = swift_allocObject();
    v62 = v61;
    *(v61 + 16) = xmmword_100552220;
    v63 = &enum case for FMIPPlaySoundChannels.right(_:);
  }

  else
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100005B14(v48, qword_1006D4110);
    sub_10022017C(a1, v14, type metadata accessor for FMDeviceDetailViewModel);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67 = v52;
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2081;
      v53 = *v14;
      v54 = v14[1];

      sub_1002201E4(v14, type metadata accessor for FMDeviceDetailViewModel);
      v55 = sub_100005B4C(v53, v54, &v67);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Issuing offline play sound for left channel for %{private,mask.hash}s.", v51, 0x16u);
      sub_100006060(v52);
    }

    else
    {

      sub_1002201E4(v14, type metadata accessor for FMDeviceDetailViewModel);
    }

    v57 = v65;
    v56 = v66;
    (*(v65 + 104))(v7, enum case for FMIPPlaySoundMethod.ble(_:), v66);
    sub_10007EBC0(&qword_1006AF788);
    v58 = type metadata accessor for FMIPPlaySoundChannels();
    v59 = *(v58 - 8);
    v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v61 = swift_allocObject();
    v62 = v61;
    *(v61 + 16) = xmmword_100552220;
    v63 = &enum case for FMIPPlaySoundChannels.left(_:);
  }

  (*(v59 + 104))(v61 + v60, *v63, v58);
  sub_1001F3DC8(v7, 1, 1, v62, 0, 0);

  (*(v57 + 8))(v7, v56);
}

uint64_t sub_1001EFE58()
{
  v1 = type metadata accessor for FMIPPlaySoundMethod();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPDevice();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v0;
  v10 = *(*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
  v11 = *(*v10 + class metadata base offset for ManagedBuffer + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v10 + v12));
  v61 = v7;
  v62 = v6;
  (*(v7 + 16))(v9, v10 + v11, v6);
  os_unfair_lock_unlock((v10 + v12));

  v68 = v9;
  v13 = FMIPDevice.identifier.getter();
  v15 = v14;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100005B14(v64, qword_1006D4630);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    *(v18 + 14) = sub_100005B4C(v13, v15, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "FMDeviceDetailContentViewController: Stop Sound button pressed for %{private,mask.hash}s.", v18, 0x16u);
    sub_100006060(v19);
  }

  v20 = v63;
  v63 = v13;
  v21 = *&v20[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton];
  v21[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  aBlock[4] = sub_100141428;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062E358;
  v24 = _Block_copy(aBlock);
  v25 = v21;

  [v22 animateWithDuration:4 delay:v24 options:0 animations:0.3 completion:0.0];
  _Block_release(v24);

  v26 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem;
  if (*&v20[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();

    *&v20[v26] = 0;
  }

  v27 = sub_1002161DC();
  v28 = *(v3 + 104);
  v29 = v60;
  v28(v5, enum case for FMIPPlaySoundChannels.left(_:), v60);
  v30 = sub_1001605D4(v5, v27);
  v31 = *(v3 + 8);
  v31(v5, v29);
  if (v30 & 1) != 0 || (v28(v5, enum case for FMIPPlaySoundChannels.right(_:), v29), v32 = sub_1001605D4(v5, v27), v31(v5, v29), (v32) || (v28(v5, enum case for FMIPPlaySoundChannels.standalone(_:), v29), v33 = sub_1001605D4(v5, v27), v31(v5, v29), (v33) || (v28(v5, enum case for FMIPPlaySoundChannels.case(_:), v29), v34 = sub_1001605D4(v5, v27), v31(v5, v29), (v34))
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    sub_100005B14(v64, qword_1006D4110);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v63;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_100005B4C(v38, v15, aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "FMDeviceDetailContentViewController: Stopping LE sound for %{private,mask.hash}s.", v39, 0x16u);
      sub_100006060(v40);
    }

    v42 = v65;
    v41 = v66;
    v43 = v67;
    (*(v66 + 104))(v65, enum case for FMIPPlaySoundMethod.ble(_:), v67);
    v44 = swift_allocObject();
    v44[2] = v38;
    v44[3] = v15;
    v44[4] = v20;

    v45 = v20;
    sub_1001F3DC8(v42, 1, 0, _swiftEmptyArrayStorage, sub_10021F8AC, v44);

    (*(v41 + 8))(v42, v43);
  }

  v46 = v27[2];

  if (v46 > 2)
  {
    (*(v61 + 8))(v68, v62);
  }

  else
  {
    if (qword_1006AEB18 != -1)
    {
      swift_once();
    }

    sub_100005B14(v64, qword_1006D4110);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v63;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 141558275;
      *(v51 + 4) = 1752392040;
      *(v51 + 12) = 2081;
      *(v51 + 14) = sub_100005B4C(v50, v15, aBlock);
      _os_log_impl(&_mh_execute_header, v47, v48, "FMDeviceDetailContentViewController: Stopping classic sound for %{private,mask.hash}s.", v51, 0x16u);
      sub_100006060(v52);
    }

    v54 = v65;
    v53 = v66;
    v55 = v67;
    (*(v66 + 104))(v65, enum case for FMIPPlaySoundMethod.classic(_:), v67);
    v56 = swift_allocObject();
    v56[2] = v50;
    v56[3] = v15;
    v56[4] = v20;
    v57 = v20;
    sub_1001F3DC8(v54, 1, 0, _swiftEmptyArrayStorage, sub_10021F818, v56);

    (*(v53 + 8))(v54, v55);
    return (*(v61 + 8))(v68, v62);
  }
}

void sub_1001F0844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v15 = a9;
  v14 = a10;
  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4110);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    *(v19 + 14) = sub_100005B4C(a4, a5, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, a7, v19, 0x16u);
    sub_100006060(v20);
    v15 = a9;

    v14 = a10;
  }

  v21 = *(a6 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton);
  v21[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  aBlock[4] = v15;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v14;
  v24 = _Block_copy(aBlock);
  v25 = v21;

  [v22 animateWithDuration:4 delay:v24 options:0 animations:0.3 completion:0.0];
  _Block_release(v24);
}

void *sub_1001F0AF8(unsigned __int8 a1)
{
  v2 = sub_1004A7F9C(a1, &off_1006223A0);
  v3 = sub_1004A7F9C(a1, &off_1006223C8);
  v4 = v3;
  if (v2)
  {
    sub_10007EBC0(&qword_1006AF788);
    v5 = type metadata accessor for FMIPPlaySoundChannels();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100552210;
      v10 = v9 + v8;
      v11 = *(v6 + 104);
      v11(v10, enum case for FMIPPlaySoundChannels.left(_:), v5);
      v11(v10 + v7, enum case for FMIPPlaySoundChannels.right(_:), v5);
      v12 = sub_1005386DC(v9);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100552220;
      (*(v6 + 104))(v17 + v8, enum case for FMIPPlaySoundChannels.left(_:), v5);
      v12 = sub_1005386DC(v17);
      swift_setDeallocating();
      (*(v6 + 8))(v17 + v8, v5);
    }
  }

  else
  {
    if (!v3)
    {
      return _swiftEmptySetSingleton;
    }

    sub_10007EBC0(&qword_1006AF788);
    v13 = type metadata accessor for FMIPPlaySoundChannels();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    (*(v14 + 104))(v16 + v15, enum case for FMIPPlaySoundChannels.right(_:), v13);
    v12 = sub_1005386DC(v16);
    swift_setDeallocating();
    (*(v14 + 8))(v16 + v15, v13);
  }

  swift_deallocClassInstance();
  return v12;
}

uint64_t sub_1001F0DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, const char *a9)
{
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4110);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v15 = 136446723;
    type metadata accessor for FMIPPlaySoundChannels();
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v16 = Set.description.getter();
    v18 = sub_100005B4C(v16, v17, &v20);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    *(v15 + 24) = sub_100005B4C(a5, a6, &v20);
    _os_log_impl(&_mh_execute_header, v13, v14, a9, v15, 0x20u);
    swift_arrayDestroy();
  }

  return a7();
}

uint64_t sub_1001F0FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v10 = type metadata accessor for FMIPPlaySoundMethod();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  FMIPPlaySoundDeviceAction.soundMethod.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for FMIPPlaySoundMethod.classic(_:))
  {
    FMIPDeviceAction.device.getter();
    sub_10007EBC0(&qword_1006AF788);
    v16 = type metadata accessor for FMIPPlaySoundChannels();
    v17 = *(v16 - 8);
    v10 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100552220;
    (*(v17 + 16))(v18 + v10, a3, v16);

    v19 = sub_10021AB40(v18, a4);
    swift_setDeallocating();
    v20 = *(v17 + 8);
    v14 = (v17 + 8);
    v20(v18 + v10, v16);
    swift_deallocClassInstance();
    a2 = *(v19 + 16);
    if (!a2)
    {

      goto LABEL_13;
    }

    v21 = sub_10008C8DC(*(v19 + 16), 0);
    a3 = sub_1004A2EA8(&v33, &v21[v10], a2, v19);
    v15 = sub_10000BEC8();
    if (a3 == a2)
    {
LABEL_13:
      FMIPPlaySoundDeviceAction.safetyWarningConfirmed.getter();
      FMIPPlaySoundDeviceAction.soundQueueingConfirmed.getter();
      FMIPPlaySoundDeviceAction.soundMethod.getter();
      type metadata accessor for FMIPPlaySoundDeviceAction();
      swift_allocObject();
      return FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)();
    }

    __break(1u);
  }

  if (v15 == enum case for FMIPPlaySoundMethod.ble(_:))
  {
    FMIPDeviceAction.device.getter();
    sub_10007EBC0(&qword_1006AF788);
    v22 = type metadata accessor for FMIPPlaySoundChannels();
    v23 = *(v22 - 8);
    v10 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100552220;
    (*(v23 + 16))(v24 + v10, a3, v22);

    v25 = sub_10021AB40(v24, a2);
    swift_setDeallocating();
    v26 = *(v23 + 8);
    v14 = (v23 + 8);
    v26(v24 + v10, v22);
    swift_deallocClassInstance();
    v27 = *(v25 + 16);
    if (v27)
    {
      v28 = sub_10008C8DC(*(v25 + 16), 0);
      v29 = sub_1004A2EA8(&v33, &v28[v10], v27, v25);
      sub_10000BEC8();
      if (v29 != v27)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

LABEL_9:
  v30 = *(v11 + 8);

  v30(v14, v10);
  return a1;
}

uint64_t sub_1001F150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t), uint64_t a12)
{
  v42 = a6;
  v44 = a11;
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4110);
  (*(v15 + 16))(v17, a5, v14);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v43 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a10;
    v22 = v21;
    v40 = swift_slowAlloc();
    v46 = v40;
    *v22 = 136447491;
    sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels);
    v38[1] = a9;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = a12;
    v25 = v24;
    (*(v15 + 8))(v17, v14);
    v26 = sub_100005B4C(v23, v25, &v46);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2160;
    *(v22 + 14) = 1752392040;
    *(v22 + 22) = 2081;
    *(v22 + 24) = sub_100005B4C(v42, a7, &v46);
    *(v22 + 32) = 2082;
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels);
    v27 = Set.description.getter();
    v29 = sub_100005B4C(v27, v28, &v46);

    *(v22 + 34) = v29;
    *(v22 + 42) = 2082;
    v30 = Set.description.getter();
    v32 = sub_100005B4C(v30, v31, &v46);

    *(v22 + 44) = v32;
    *(v22 + 52) = 2082;
    v45 = v39;
    type metadata accessor for FMIPPlaySoundDeviceAction();
    sub_10021E650(&qword_1006B6940, &type metadata accessor for FMIPPlaySoundDeviceAction);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = sub_100005B4C(v33, v34, &v46);

    *(v22 + 54) = v35;
    _os_log_impl(&_mh_execute_header, v19, v43, "FMDeviceDetailContentViewController: Finished Mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Reissuing action %{public}s.", v22, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    v36 = (*(v15 + 8))(v17, v14);
  }

  return v44(v36);
}

uint64_t sub_1001F194C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4110);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: Mute left button pressed", v9, 2u);
  }

  v10 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v11 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton];
  v11[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
  v12 = v11;
  sub_1000D17E8();

  v13 = *&v1[v10];
  v13[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = sub_100141428;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062E1C8;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [v14 animateWithDuration:4 delay:v16 options:0 animations:0.3 completion:0.0];
  _Block_release(v16);

  [*&v1[v10] setUserInteractionEnabled:0];
  (*(v3 + 104))(v5, enum case for FMIPPlaySoundChannels.left(_:), v2);
  v18 = v1;
  sub_10021ACA0(v5, v18, v18);

  return (*(v3 + 8))(v5, v2);
}

id sub_1001F1C50(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
  v3[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v4 = v3;
  sub_1000D17E8();

  v5 = *(a1 + v2);
  v5[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v11[4] = sub_100141428;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100004AE4;
  v11[3] = &unk_10062E308;
  v8 = _Block_copy(v11);
  v9 = v5;

  [v6 animateWithDuration:4 delay:v8 options:0 animations:0.3 completion:0.0];
  _Block_release(v8);

  return [*(a1 + v2) setUserInteractionEnabled:1];
}

uint64_t sub_1001F1E00()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPPlaySoundChannels();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4110);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: Mute right button pressed", v9, 2u);
  }

  v10 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v11 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton];
  v11[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
  v12 = v11;
  sub_1000D17E8();

  v13 = *&v1[v10];
  v13[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = sub_100141428;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062E038;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  [v14 animateWithDuration:4 delay:v16 options:0 animations:0.3 completion:0.0];
  _Block_release(v16);

  [*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] setUserInteractionEnabled:0];
  (*(v3 + 104))(v5, enum case for FMIPPlaySoundChannels.right(_:), v2);
  v18 = v1;
  sub_10021C3F4(v5, v18, v18);

  return (*(v3 + 8))(v5, v2);
}

id sub_1001F2104(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton);
  v3[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v4 = v3;
  sub_1000D17E8();

  v5 = *(a1 + v2);
  v5[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v11[4] = sub_100141428;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100004AE4;
  v11[3] = &unk_10062E178;
  v8 = _Block_copy(v11);
  v9 = v5;

  [v6 animateWithDuration:4 delay:v8 options:0 animations:0.3 completion:0.0];
  _Block_release(v8);

  return [*(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton) setUserInteractionEnabled:1];
}

uint64_t sub_1001F22BC(uint64_t a1, int a2, int a3)
{
  v157 = a3;
  v163 = a2;
  v160 = a1;
  v4 = sub_10007EBC0(&qword_1006C1D80);
  __chkstk_darwin(v4 - 8);
  v143 = &v139 - v5;
  v151 = type metadata accessor for FMIPPlaySoundMethod();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = v6;
  v149 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v7 - 8);
  v147 = &v139 - v8;
  v9 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v9 - 8);
  v169 = &v139 - v10;
  v174 = type metadata accessor for FMIPProductType();
  v155 = *(v174 - 8);
  v11 = __chkstk_darwin(v174);
  v173 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v168 = &v139 - v13;
  v14 = sub_10007EBC0(&qword_1006C39A0);
  v15 = __chkstk_darwin(v14 - 8);
  v165 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v164 = &v139 - v18;
  v19 = __chkstk_darwin(v17);
  v167 = &v139 - v20;
  __chkstk_darwin(v19);
  v166 = &v139 - v21;
  v22 = sub_10007EBC0(&qword_1006B07D0);
  v23 = __chkstk_darwin(v22 - 8);
  v144 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v139 - v25;
  v27 = type metadata accessor for FMIPItem();
  v171 = *(v27 - 8);
  v172 = v27;
  v28 = __chkstk_darwin(v27);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v170 = &v139 - v31;
  v32 = type metadata accessor for FMIPDevice();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = v3;
  v162 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v36 = *(*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
  v37 = *(*v36 + class metadata base offset for ManagedBuffer + 16);
  v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v36 + v38));
  v153 = v33;
  v39 = *(v33 + 16);
  v161 = v32;
  v39(v35, v36 + v37, v32);
  os_unfair_lock_unlock((v36 + v38));

  v154 = FMIPDevice.identifier.getter();
  v41 = v40;
  if (qword_1006AEB18 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v42 = type metadata accessor for Logger();
    v43 = sub_100005B14(v42, qword_1006D4110);

    v152 = v43;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v158 = v35;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = v41;
      v49 = v163;
      v50 = v47;
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 67109891;
      *(v50 + 4) = v49 & 1;
      *(v50 + 8) = 1024;
      *(v50 + 10) = v157 & 1;
      *(v50 + 14) = 2160;
      *(v50 + 16) = 1752392040;
      *(v50 + 24) = 2081;
      *(v50 + 26) = sub_100005B4C(v154, v48, aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "FMDeviceDetailContentViewController: playSound swc: %{BOOL}d -  sqc %{BOOL}d for %{private,mask.hash}s.", v50, 0x22u);
      sub_100006060(v51);

      v52 = v49;
      v41 = v48;

      v53 = v160;
      v54 = v159;
    }

    else
    {

      v53 = v160;
      v54 = v159;
      v52 = v163;
    }

    v145 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
    [*&v54[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton] setUserInteractionEnabled:0];
    v55 = *&v54[v162] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v146 = type metadata accessor for FMDeviceDetailViewModel();
    sub_100007204(v55 + *(v146 + 36), v26, &qword_1006B07D0);
    v57 = v171;
    v56 = v172;
    v58 = v171 + 48;
    v142 = *(v171 + 6);
    if (v142(v26, 1, v172) != 1)
    {
      break;
    }

    v141 = v58;
    sub_100012DF0(v26, &qword_1006B07D0);
    v59 = v169;
    v60 = v158;
    FMIPDevice.itemGroup.getter();
    v61 = type metadata accessor for FMIPItemGroup();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v59, 1, v61) == 1)
    {
      sub_100012DF0(v59, &unk_1006BB1C0);
      v63 = v144;
      (*(v171 + 7))(v144, 1, 1, v172);
      v64 = 0;
      v65 = v161;
      v66 = v53;
      v67 = v60;
      goto LABEL_24;
    }

    v140 = v41;
    v77 = FMIPItemGroup.items.getter();
    (*(v62 + 8))(v59, v61);
    v26 = v171;
    v78 = v172;
    v169 = *(v77 + 16);
    v170 = v77;
    if (!v169)
    {
LABEL_22:

      v92 = 1;
LABEL_23:
      v93 = v144;
      (*(v26 + 7))(v144, v92, 1, v78);
      v63 = v93;
      v64 = v142(v93, 1, v78) != 1;
      v66 = v160;
      v54 = v159;
      v52 = v163;
      v65 = v161;
      v67 = v158;
      v41 = v140;
LABEL_24:
      sub_100012DF0(v63, &qword_1006B07D0);
      if (!v64)
      {
LABEL_30:

        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = v41;
          v106 = swift_slowAlloc();
          aBlock[0] = v106;
          *v104 = 67109635;
          *(v104 + 4) = v52 & 1;
          *(v104 + 8) = 2160;
          *(v104 + 10) = 1752392040;
          *(v104 + 18) = 2081;
          v107 = sub_100005B4C(v154, v105, aBlock);

          *(v104 + 20) = v107;
          _os_log_impl(&_mh_execute_header, v102, v103, "Safety warning accepted:%{BOOL}d, for %{private,mask.hash}s.", v104, 0x1Cu);
          sub_100006060(v106);
        }

        else
        {
        }

        v108 = v147;
        v109 = v146;
        Date.init()();
        v110 = type metadata accessor for Date();
        (*(*(v110 - 8) + 56))(v108, 0, 1, v110);
        v111 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
        swift_beginAccess();
        sub_1000BBF40(v108, &v54[v111], &unk_1006B0000);
        swift_endAccess();
        v112 = v145;
        v113 = *&v54[v145];
        v113[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
        v114 = v113;
        sub_1000D17E8();

        v115 = *&v54[v112];
        v115[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
        v116 = objc_opt_self();
        v117 = swift_allocObject();
        *(v117 + 16) = v115;
        aBlock[4] = sub_1001412AC;
        aBlock[5] = v117;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_10062DFC0;
        v118 = _Block_copy(aBlock);
        v119 = v115;

        [v116 animateWithDuration:4 delay:v118 options:0 animations:0.3 completion:0.0];
        _Block_release(v118);

        v120 = *&v54[v162] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
        swift_beginAccess();
        v121 = *(v109 + 48);
        v122 = v54;
        if (*(v120 + v121))
        {
          v123 = *(v120 + v121);
        }

        else
        {
          sub_10007EBC0(&qword_1006AF788);
          v124 = type metadata accessor for FMIPPlaySoundChannels();
          v125 = *(v124 - 8);
          v126 = *(v125 + 72);
          v127 = (*(v125 + 80) + 32) & ~*(v125 + 80);
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_100552210;
          v128 = v123 + v127;
          v129 = *(v125 + 104);
          v129(v128, enum case for FMIPPlaySoundChannels.left(_:), v124);
          v129(v128 + v126, enum case for FMIPPlaySoundChannels.right(_:), v124);
        }

        v130 = v150;
        v131 = v149;
        v132 = v151;
        (*(v150 + 16))(v149, v66, v151);
        v133 = (*(v130 + 80) + 24) & ~*(v130 + 80);
        v134 = swift_allocObject();
        *(v134 + 16) = v122;
        (*(v130 + 32))(v134 + v133, v131, v132);

        v135 = v122;
        sub_1001F3DC8(v66, v163 & 1, v157 & 1, v123, sub_10021F4F0, v134);

        v136 = v153;
        v65 = v161;
        return (*(v136 + 8))(v67, v65);
      }

      goto LABEL_27;
    }

    v79 = 0;
    v168 = &v170[(v171[80] + 32) & ~v171[80]];
    v167 = v171 + 16;
    v80 = (v155 + 88);
    LODWORD(v166) = enum case for FMIPProductType.hawkeye(_:);
    v156 = (v155 + 8);
    v155 += 96;
    v41 = (v171 + 8);
    v35 = &qword_1006C39A0;
    while (v79 < *(v170 + 2))
    {
      (*(v26 + 2))(v30, &v168[*(v26 + 9) * v79], v78);
      v81 = v173;
      FMIPItem.productType.getter();
      v82 = v174;
      v83 = (*v80)(v81, v174);
      if (v83 == v166)
      {
        (*v155)(v81, v82);
        v84 = v81;
        v85 = v164;
        sub_100035318(v84, v164, &qword_1006C39A0);
        v86 = v165;
        sub_100007204(v85, v165, &qword_1006C39A0);
        v87 = type metadata accessor for FMIPHawkeyeProductInformation();
        v88 = *(v87 - 8);
        if ((*(v88 + 48))(v86, 1, v87) == 1)
        {
          sub_100012DF0(v85, &qword_1006C39A0);
          sub_100012DF0(v86, &qword_1006C39A0);
          v26 = v171;
          v78 = v172;
        }

        else
        {
          v89 = FMIPHawkeyeProductInformation.requiresAudioSafetyAlert.getter();
          v90 = v85;
          v91 = v89;
          sub_100012DF0(v90, &qword_1006C39A0);
          (*(v88 + 8))(v86, v87);
          v26 = v171;
          v78 = v172;
          if (v91)
          {

            (*(v26 + 4))(v144, v30, v78);
            v92 = 0;
            goto LABEL_23;
          }
        }
      }

      else
      {
        (*v156)(v81, v82);
      }

      ++v79;
      (*v41)(v30, v78);
      if (v169 == v79)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
  }

  v68 = v170;
  v57[4](v170, v26, v56);
  v69 = v168;
  FMIPItem.productType.getter();
  v70 = v155;
  v71 = v174;
  if ((*(v155 + 88))(v69, v174) != enum case for FMIPProductType.hawkeye(_:))
  {
    (v57[1])(v68, v56);
    (*(v70 + 8))(v69, v71);
    v66 = v53;
    v67 = v158;
    goto LABEL_30;
  }

  (*(v70 + 96))(v69, v71);
  v72 = v166;
  sub_100035318(v69, v166, &qword_1006C39A0);
  v73 = v167;
  sub_100007204(v72, v167, &qword_1006C39A0);
  v74 = type metadata accessor for FMIPHawkeyeProductInformation();
  v75 = *(v74 - 8);
  v76 = (*(v75 + 48))(v73, 1, v74);
  v65 = v161;
  if (v76 == 1)
  {
    sub_100012DF0(v72, &qword_1006C39A0);
    (*(v171 + 1))(v170, v172);
    sub_100012DF0(v73, &qword_1006C39A0);
    v66 = v53;
    v67 = v158;
    goto LABEL_30;
  }

  v94 = v73;
  v95 = FMIPHawkeyeProductInformation.requiresAudioSafetyAlert.getter();
  sub_100012DF0(v72, &qword_1006C39A0);
  (*(v171 + 1))(v170, v172);
  (*(v75 + 8))(v94, v74);
  v66 = v53;
  v67 = v158;
  if ((v95 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v52)
  {
    goto LABEL_30;
  }

  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = v41;
    v100 = swift_slowAlloc();
    aBlock[0] = v100;
    *v98 = 141558275;
    *(v98 + 4) = 1752392040;
    *(v98 + 12) = 2081;
    v101 = sub_100005B4C(v154, v99, aBlock);

    *(v98 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v96, v97, "Safety warning mandatory for %{private,mask.hash}s.", v98, 0x16u);
    sub_100006060(v100);
  }

  else
  {
  }

  v137 = v143;
  FMIPDevice.soundMetadata.getter();
  sub_1001F646C(v67, 0, v137, v66);
  sub_100012DF0(v137, &qword_1006C1D80);
  v136 = v153;
  return (*(v136 + 8))(v67, v65);
}

uint64_t sub_1001F3778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51 = a4;
  v8 = sub_10007EBC0(&qword_1006C1D80);
  __chkstk_darwin(v8 - 8);
  v52 = &v46 - v9;
  v57 = type metadata accessor for FMIPDevice();
  v10 = *(v57 - 8);
  __chkstk_darwin(v57);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPActionStatus();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4110);
  v20 = *(v14 + 16);
  v55 = a1;
  v53 = v20;
  v20(v18, a1, v13);
  v21 = *(v10 + 16);
  v56 = a2;
  v21(v12, a2, v57);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = v13;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = v49;
    *v25 = 136315650;
    sub_10021E650(&unk_1006B0580, &type metadata accessor for FMIPActionStatus);
    v47 = v23;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v24;
    v48 = v24;
    v29 = v28;
    v46 = v22;
    v30 = *(v14 + 8);
    v30(v18, v27);
    v31 = sub_100005B4C(v26, v29, &v59);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = FMIPDevice.debugDescription.getter();
    v34 = v33;
    (*(v10 + 8))(v12, v57);
    v35 = sub_100005B4C(v32, v34, &v59);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    v58 = a3;

    sub_10007EBC0(&qword_1006B6930);
    v36 = String.init<A>(describing:)();
    v38 = sub_100005B4C(v36, v37, &v59);

    *(v25 + 24) = v38;
    v39 = v46;
    _os_log_impl(&_mh_execute_header, v46, v47, "FMDeviceDetailContentViewController: playSound completed status: %s -  device %s - action %s", v25, 0x20u);
    swift_arrayDestroy();

    v24 = v48;
  }

  else
  {

    (*(v10 + 8))(v12, v57);
    v30 = *(v14 + 8);
    v30(v18, v13);
  }

  v40 = v54;
  v53(v54, v55, v24);
  result = (*(v14 + 88))(v40, v24);
  v42 = v56;
  if (result != enum case for FMIPActionStatus.success(_:))
  {
    if (result == enum case for FMIPActionStatus.inEarSafetyWarning(_:))
    {
      v43 = v52;
      FMIPDevice.soundMetadata.getter();
      v44 = v42;
      v45 = 1;
LABEL_9:
      sub_1001F646C(v44, v45, v43, v50);
      return sub_100012DF0(v43, &qword_1006C1D80);
    }

    if (result != enum case for FMIPActionStatus.pending(_:))
    {
      if (result == enum case for FMIPActionStatus.onNeckSafetyWarning(_:))
      {
        v43 = v52;
        FMIPDevice.soundMetadata.getter();
        v44 = v42;
        v45 = 3;
        goto LABEL_9;
      }

      if (result == enum case for FMIPActionStatus.onHeadSafetyWarning(_:))
      {
        v43 = v52;
        FMIPDevice.soundMetadata.getter();
        v44 = v42;
        v45 = 2;
        goto LABEL_9;
      }

      if (result == enum case for FMIPActionStatus.onTableTopSafetyWarning(_:))
      {
        v43 = v52;
        FMIPDevice.soundMetadata.getter();
        v44 = v42;
        v45 = 4;
        goto LABEL_9;
      }

      if (result == enum case for FMIPActionStatus.carryingCaseClosedWarning(_:))
      {
        v43 = v52;
        FMIPDevice.soundMetadata.getter();
        v44 = v42;
        v45 = 5;
        goto LABEL_9;
      }

      if (result != enum case for FMIPActionStatus.queueingSound(_:))
      {
        if (result == enum case for FMIPActionStatus.serverSafetyWarning(_:))
        {
          v43 = v52;
          FMIPDevice.soundMetadata.getter();
          v44 = v42;
          v45 = 6;
          goto LABEL_9;
        }

        return (v30)(v40, v24);
      }
    }
  }

  return result;
}

void sub_1001F3DC8(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v96 = a5;
  v97 = a6;
  LODWORD(v106) = a3;
  LODWORD(v104) = a2;
  v100 = a1;
  v105 = type metadata accessor for FMIPPlaySoundChannels();
  v107 = *(v105 - 8);
  v9 = __chkstk_darwin(v105);
  v108 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v81 - v11;
  v101 = type metadata accessor for FMIPPlaySoundMethod();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v95 = v13;
  v98 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v102 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v20;
  __chkstk_darwin(v19);
  v22 = &v81 - v21;
  v93 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v23 = (*&v6[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];

  sub_1000E512C(v25, v24, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100012DF0(v16, &unk_1006BBCE0);
    if (qword_1006AEBE0 == -1)
    {
LABEL_3:
      v26 = type metadata accessor for Logger();
      sub_100005B14(v26, qword_1006D4630);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "FMDeviceDetailContentViewController: cannot play sound for unknown device", v29, 2u);
      }

      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_3;
  }

  v92 = v18;
  v31 = *(v18 + 32);
  v30 = v18 + 32;
  v88 = v31;
  v31(v22, v16, v17);
  v32 = [v6 view];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 window];

    v87 = v30;
    if (v34 && (v35 = [v34 windowScene], v34, v35))
    {
      v36 = String._bridgeToObjectiveC()();
      [v35 _setSystemVolumeHUDEnabled:0 forAudioCategory:v36];
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100005B14(v37, qword_1006D4630);
      v36 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v36, v38, "FMDeviceDetailContentViewController: cannot hide volume HUD without window / windowScene", v39, 2u);
      }
    }

    v40 = *(v92 + 16);
    v90 = v22;
    v91 = v17;
    v86 = v92 + 16;
    v85 = v40;
    v40(v102, v22, v17);
    v41 = *(v99 + 16);
    v84 = v99 + 16;
    v83 = v41;
    v41(v98, v100, v101);
    type metadata accessor for FMIPPlaySoundDeviceAction();
    swift_allocObject();

    v42 = FMIPPlaySoundDeviceAction.init(device:channels:safetyWarningConfirmed:soundQueueingConfirmed:soundMethod:)();
    v43 = v107;
    v44 = v105;
    (*(v107 + 104))(v12, enum case for FMIPPlaySoundChannels.mute(_:), v105);
    v89 = a4;
    v45 = sub_1004A7FCC(v12, a4);
    v103 = *(v43 + 8);
    v104 = v43 + 8;
    v103(v12, v44);
    if (v45 || (v46 = *(v89 + 16)) == 0)
    {
LABEL_28:
      v82 = v42;
      v108 = *(*(*&v7[v93] + 24) + 32);
      v67 = v98;
      v68 = v101;
      v83(v98, v100, v101);
      v85(v102, v90, v91);
      v69 = v99;
      v70 = (*(v99 + 80) + 24) & ~*(v99 + 80);
      v71 = (v95 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = v92;
      v74 = (*(v92 + 80) + v72 + 16) & ~*(v92 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v7;
      (*(v69 + 32))(v75 + v70, v67, v68);
      *(v75 + v71) = v89;
      v76 = (v75 + v72);
      v78 = v96;
      v77 = v97;
      *v76 = v96;
      v76[1] = v77;
      v79 = v91;
      v88(v75 + v74, v102, v91);

      v80 = v7;
      sub_100062900(v78);
      sub_1000DA734(v82, sub_10021F2A0, v75);

      (*(v73 + 8))(v90, v79);
      return;
    }

    v47 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction;
    v48 = v107 + 16;
    v107 = *(v107 + 16);
    v49 = v89 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v106 = *(v48 + 56);
    while (1)
    {
      v50 = v108;
      (v107)(v108, v49, v44);
      swift_beginAccess();
      v51 = v42;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *&v7[v47];
      v53 = v109;
      *&v7[v47] = 0x8000000000000000;
      v55 = sub_1001B3AC8(v50);
      v56 = v53[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        break;
      }

      v59 = v54;
      if (v53[3] >= v58)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BD5D0();
        }
      }

      else
      {
        sub_1001B528C(v58, isUniquelyReferenced_nonNull_native);
        v60 = sub_1001B3AC8(v108);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_33;
        }

        v55 = v60;
      }

      v44 = v105;
      v62 = v109;
      if (v59)
      {
        *(v109[7] + 8 * v55) = v51;
        v42 = v51;

        v103(v108, v44);
      }

      else
      {
        v109[(v55 >> 6) + 8] |= 1 << v55;
        v63 = v108;
        (v107)(v62[6] + v55 * v106, v108, v44);
        *(v62[7] + 8 * v55) = v51;
        v42 = v51;
        v103(v63, v44);
        v64 = v62[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_30;
        }

        v62[2] = v66;
      }

      *&v7[v47] = v62;

      swift_endAccess();
      v49 += v106;
      if (!--v46)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __break(1u);
LABEL_33:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1001F4818(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a8;
  v62 = a7;
  v82 = a5;
  v71 = a4;
  v72 = a2;
  v84 = a3;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v12 - 8);
  v78 = v12;
  __chkstk_darwin(v12);
  v75 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for FMIPDevice();
  v69 = *(v83 - 8);
  __chkstk_darwin(v83);
  v68 = v15;
  v81 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPActionStatus();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v79 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v19;
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v66 = a10;
  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v23 = v17[2];
  v65 = v17 + 2;
  v64 = v23;
  v23(v21, a1, v16);
  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v80 = v17;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v27 = 136315394;
    sub_10021E650(&unk_1006B0580, &type metadata accessor for FMIPActionStatus);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = a6;
    v29 = a1;
    v31 = v30;
    v32 = v80[1];
    v32(v21, v16);
    v33 = sub_100005B4C(v28, v31, aBlock);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v86 = v84;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v34 = String.init<A>(describing:)();
    v36 = sub_100005B4C(v34, v35, aBlock);

    *(v27 + 14) = v36;
    a1 = v29;
    a6 = v63;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMDeviceDetailContentViewController: Play sound command finished with status: %s, error: %s", v27, 0x16u);
    swift_arrayDestroy();

    v17 = v80;
  }

  else
  {

    v32 = v17[1];
    v32(v21, v16);
  }

  v63 = a9;
  v37 = v17[13];
  v38 = v79;
  v37(v79, enum case for FMIPActionStatus.success(_:), v16);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v32(v38, v16);
  if (aBlock[0] == v86)
  {
    v39 = 1;
  }

  else
  {
    v37(v38, enum case for FMIPActionStatus.pending(_:), v16);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v32(v38, v16);
    v39 = aBlock[0] == v86;
  }

  sub_1001FA534(a6, v62, v39, v84);
  sub_10000905C(0, &qword_1006AEDC0);
  v62 = static OS_dispatch_queue.main.getter();
  v64(v38, a1, v16);
  v65 = v16;
  v40 = v69;
  (*(v69 + 16))(v81, v66, v83);
  v41 = v80;
  v42 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v43 = (v67 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (*(v40 + 80) + v44 + 8) & ~*(v40 + 80);
  v46 = (v68 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (v41[4])(v49 + v42, v79, v65);
  v50 = (v49 + v43);
  v51 = v70;
  v52 = v63;
  *v50 = v70;
  v50[1] = v52;
  *(v49 + v44) = v72;
  (*(v40 + 32))(v49 + v45, v81, v83);
  *(v49 + v46) = v71;
  *(v49 + v47) = v84;
  v53 = v82;
  *(v49 + v48) = v82;
  aBlock[4] = sub_10021F3C0;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062DF20;
  v54 = _Block_copy(aBlock);
  swift_errorRetain();
  sub_100062900(v51);

  v55 = v53;

  v56 = v73;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v57 = v75;
  v58 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v62;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);

  (*(v77 + 8))(v57, v58);
  return (*(v74 + 8))(v56, v76);
}

uint64_t sub_1001F5178(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v134 = a8;
  v153 = a7;
  v151 = a6;
  v152 = a5;
  v149 = a4;
  v147 = a3;
  v150 = a2;
  v142 = type metadata accessor for FMIPPlaySoundChannels();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPDevice();
  v154 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v135 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v136 = &v133 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v133 - v16;
  v17 = __chkstk_darwin(v15);
  v139 = &v133 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v133 - v20;
  __chkstk_darwin(v19);
  v23 = &v133 - v22;
  v24 = type metadata accessor for FMIPActionStatus();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v137 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v148 = &v133 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v133 - v31;
  __chkstk_darwin(v30);
  v34 = &v133 - v33;
  v35 = *(v25 + 16);
  v35(&v133 - v33, a1, v24);
  v36 = *(v154 + 16);
  v37 = v152;
  v152 = v10;
  v146 = v154 + 16;
  v145 = v36;
  v36(v23, v37, v10);
  if (v153)
  {
    v38 = v35;
    v144 = v34;
    v143 = v25;
    if (v151)
    {
      swift_errorRetain();
      v39 = FMIPPlaySoundDeviceAction.channels.getter();
      v40 = v141;
      v41 = v140;
      v42 = v142;
      (*(v141 + 104))(v140, enum case for FMIPPlaySoundChannels.case(_:), v142);
      v43 = sub_1004A7FCC(v41, v39);

      (*(v40 + 8))(v41, v42);
      v44 = v24;
      v45 = v38;
      if (!v43)
      {
        goto LABEL_14;
      }

      swift_getErrorValue();
      if (sub_100271D20(v164) != 1)
      {
        goto LABEL_62;
      }

      swift_getErrorValue();
      v46 = sub_100271E80(v155);
      v48 = v47;
      if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
      {

        v44 = v24;
        goto LABEL_14;
      }

      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v44 = v24;
      if ((v100 & 1) == 0)
      {
LABEL_62:
        v101 = v137;
        v34 = v144;
        v38(v137, v144, v44);
        v25 = v143;
        v102 = (*(v143 + 88))(v101, v44);
        v52 = v44;
        if (v102 == enum case for FMIPActionStatus.success(_:))
        {
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v103 = type metadata accessor for Logger();
          sub_100005B14(v103, qword_1006D4630);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v104, v105))
          {
            goto LABEL_73;
          }

          v106 = swift_slowAlloc();
          *v106 = 0;
          v107 = "FMDeviceDetailContentViewController: status is success";
        }

        else
        {
          if (v102 != enum case for FMIPActionStatus.pending(_:))
          {
            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v109 = type metadata accessor for Logger();
            sub_100005B14(v109, qword_1006D4630);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v165 = v113;
              *v112 = 136315138;
              aBlock = 0;
              v157 = 0xE000000000000000;
              v114._countAndFlagsBits = 1702195828;
              v114._object = 0xE400000000000000;
              String.append(_:)(v114);
              v115 = v23;
              v116 = sub_100005B4C(aBlock, v157, &v165);

              *(v112 + 4) = v116;
              v23 = v115;
              _os_log_impl(&_mh_execute_header, v110, v111, "FMDeviceDetailContentViewController: Show failure attention, should show it? %s", v112, 0xCu);
              sub_100006060(v113);
              v25 = v143;
              v52 = v24;
            }

            swift_getErrorValue();
            v117 = sub_100271D20(v162);
            v118 = sub_1003F19BC(v117);
            v119 = v134;
            if (v118 == 4)
            {
              v120 = 3;
            }

            else
            {
              v120 = v118;
            }

            *(*(v134 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention) + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = v120;
            sub_1003F0AB4();
            sub_1001F973C();
            v121 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
            v122 = *(v119 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton);
            v122[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
            v123 = v122;
            sub_1000D17E8();

            v124 = *(v119 + v121);
            v124[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
            v125 = v124;
            sub_1000D3C9C();
            v126 = objc_opt_self();
            v127 = swift_allocObject();
            *(v127 + 16) = v125;
            *(v127 + 24) = 0;
            v160 = sub_100141408;
            v161 = v127;
            aBlock = _NSConcreteStackBlock;
            v157 = 1107296256;
            v158 = sub_100004AE4;
            v159 = &unk_10062DF70;
            v128 = _Block_copy(&aBlock);
            v129 = v125;

            [v126 animateWithDuration:v128 animations:0.35];
            _Block_release(v128);

            (*(v25 + 8))(v137, v52);
            v34 = v144;
LABEL_82:
            v66 = v150;
            if (v150)
            {
              v67 = v23;
              if (v149)
              {
                v67 = v23;
                if (*(v149 + 16))
                {
                  v67 = (v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
                }
              }

              v68 = &v163;
              goto LABEL_87;
            }

LABEL_88:

            goto LABEL_89;
          }

          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v108 = type metadata accessor for Logger();
          sub_100005B14(v108, qword_1006D4630);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v104, v105))
          {
LABEL_73:

            goto LABEL_82;
          }

          v106 = swift_slowAlloc();
          *v106 = 0;
          v107 = "FMDeviceDetailContentViewController: status is pending";
        }

        _os_log_impl(&_mh_execute_header, v104, v105, v107, v106, 2u);

        goto LABEL_73;
      }
    }

    else
    {
      swift_errorRetain();
      v44 = v24;
      v45 = v35;
    }

LABEL_14:
    v58 = v148;
    v34 = v144;
    v45(v148, v144, v44);
    v25 = v143;
    v59 = (*(v143 + 88))(v58, v44);
    v52 = v44;
    if (v59 == enum case for FMIPActionStatus.success(_:))
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_100005B14(v60, qword_1006D4630);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        v64 = "FMDeviceDetailContentViewController: status is success";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v61, v62, v64, v63, 2u);
      }
    }

    else
    {
      if (v59 != enum case for FMIPActionStatus.pending(_:))
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_100005B14(v74, qword_1006D4630);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v165 = v78;
          *v77 = 136315138;
          aBlock = 0;
          v157 = 0xE000000000000000;
          v79._countAndFlagsBits = 0x65736C6166;
          v79._object = 0xE500000000000000;
          String.append(_:)(v79);
          v80 = v23;
          v81 = sub_100005B4C(aBlock, v157, &v165);

          *(v77 + 4) = v81;
          v23 = v80;
          _os_log_impl(&_mh_execute_header, v75, v76, "FMDeviceDetailContentViewController: Show failure attention, should show it? %s", v77, 0xCu);
          sub_100006060(v78);
          v25 = v143;
          v52 = v24;
        }

        v34 = v144;
        v82 = v150;
        if (v150)
        {
          v83 = v23;
          if (v149)
          {
            v83 = v23;
            if (*(v149 + 16))
            {
              v83 = (v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
            }
          }

          v84 = v136;
          v85 = v152;
          v145(v136, v83, v152);
          v82(v34, v84, v151);
          (*(v154 + 8))(v84, v85);
        }

        (*(v25 + 8))(v148, v52);
        goto LABEL_88;
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100005B14(v65, qword_1006D4630);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        v64 = "FMDeviceDetailContentViewController: status is pending";
        goto LABEL_24;
      }
    }

    v66 = v150;
    if (v150)
    {
      v67 = v23;
      if (v149)
      {
        v67 = v23;
        if (*(v149 + 16))
        {
          v67 = (v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
        }
      }

      v68 = &v164;
LABEL_87:
      v130 = *(v68 - 32);
      v131 = v152;
      v145(v130, v67, v152);
      v66(v34, v130, v151);
      (*(v154 + 8))(v130, v131);
      goto LABEL_88;
    }

    goto LABEL_88;
  }

  v50 = v139;
  v153 = v21;
  v35(v32, v34, v24);
  v51 = (*(v25 + 88))(v32, v24);
  v52 = v24;
  if (v51 == enum case for FMIPActionStatus.success(_:))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100005B14(v53, qword_1006D4630);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_36;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "FMDeviceDetailContentViewController: status is success";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v54, v55, v57, v56, 2u);

LABEL_36:
    v70 = v153;

    v71 = v150;
    if (v150)
    {
      v72 = v23;
      if (v149)
      {
        v72 = v23;
        if (*(v149 + 16))
        {
          v72 = (v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
        }
      }

      v73 = v152;
      v145(v70, v72, v152);
      v71(v34, v70, v151);
      (*(v154 + 8))(v70, v73);
    }

    goto LABEL_89;
  }

  if (v51 == enum case for FMIPActionStatus.pending(_:))
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100005B14(v69, qword_1006D4630);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_36;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "FMDeviceDetailContentViewController: status is pending";
    goto LABEL_35;
  }

  v144 = v34;
  v143 = v25;
  v86 = v23;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_100005B14(v87, qword_1006D4630);
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = v24;
    v92 = swift_slowAlloc();
    v165 = v92;
    *v90 = 136315138;
    aBlock = 0;
    v157 = 0xE000000000000000;
    v93._countAndFlagsBits = 0x65736C6166;
    v93._object = 0xE500000000000000;
    String.append(_:)(v93);
    v94 = sub_100005B4C(aBlock, v157, &v165);

    *(v90 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v88, v89, "FMDeviceDetailContentViewController: Show failure attention, should show it? %s", v90, 0xCu);
    sub_100006060(v92);
    v52 = v91;
  }

  v23 = v86;
  v95 = v150;
  v96 = v50;
  v25 = v143;
  v34 = v144;
  if (v150)
  {
    v97 = v23;
    if (v149)
    {
      v97 = v23;
      if (*(v149 + 16))
      {
        v97 = (v149 + ((*(v154 + 80) + 32) & ~*(v154 + 80)));
      }
    }

    v98 = v50;
    v99 = v152;
    v145(v98, v97, v152);
    v95(v34, v96, v151);
    (*(v154 + 8))(v96, v99);
  }

  (*(v25 + 8))(v32, v52);
LABEL_89:
  (*(v154 + 8))(v23, v152);
  return (*(v25 + 8))(v34, v52);
}

void sub_1001F646C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v114 = a4;
  v115 = a3;
  LODWORD(v113._countAndFlagsBits) = a2;
  v103 = sub_10007EBC0(&qword_1006C1D80);
  v7 = __chkstk_darwin(v103);
  v107 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v106 = v99 - v10;
  v11 = __chkstk_darwin(v9);
  v102 = v99 - v12;
  v13 = __chkstk_darwin(v11);
  v105 = v99 - v14;
  v15 = __chkstk_darwin(v13);
  v110 = v99 - v16;
  __chkstk_darwin(v15);
  v113._object = v99 - v17;
  v18 = type metadata accessor for FMIPPlaySoundMethod();
  v117 = *(v18 - 8);
  __chkstk_darwin(v18);
  v108 = v19;
  v116 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v20 - 8);
  v22 = v99 - v21;
  v23 = type metadata accessor for FMIPDevice();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100005B14(v27, qword_1006D4630);
  v29 = *(v24 + 16);
  countAndFlagsBits = a1;
  v29(v26, a1, v23);
  v104 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  v32 = os_log_type_enabled(v30, v31);
  v111 = v18;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v109 = v5;
    v35 = v34;
    aBlock = v34;
    *v33 = 136315138;
    v36 = FMIPDevice.debugDescription.getter();
    v38 = v37;
    (*(v24 + 8))(v26, v23);
    v39 = sub_100005B4C(v36, v38, &aBlock);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "FMDeviceDetailContentViewController: showSafetyWarning for device %s", v33, 0xCu);
    sub_100006060(v35);
    v5 = v109;

    v18 = v111;
  }

  else
  {

    (*(v24 + 8))(v26, v23);
  }

  v40 = type metadata accessor for Date();
  (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
  v41 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  swift_beginAccess();
  sub_1000BBF40(v22, &v5[v41], &unk_1006B0000);
  swift_endAccess();
  [*&v5[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton] setUserInteractionEnabled:1];
  v43 = v116;
  v42 = v117;
  (*(v117 + 104))(v116, enum case for FMIPPlaySoundMethod.classic(_:), v18);
  sub_1001F3DC8(v43, 1, 1, _swiftEmptyArrayStorage, 0, 0);
  (*(v42 + 8))(v43, v18);
  v44 = v115;
  object = v113._object;
  sub_100007204(v115, v113._object, &qword_1006C1D80);
  v46 = type metadata accessor for FMIPPlaySoundMetadata();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(object, 1, v46) == 1)
  {
    goto LABEL_10;
  }

  v49 = FMIPPlaySoundMetadata.alertTitle.getter();
  v51 = v50;
  v52 = *(v47 + 8);
  v52(object, v46);
  if (!v51)
  {
LABEL_11:
    sub_1001F7270(countAndFlagsBits, v113._countAndFlagsBits, v114);
    return;
  }

  object = v110;
  sub_100007204(v44, v110, &qword_1006C1D80);
  if (v48(object, 1, v46) == 1)
  {

LABEL_10:
    sub_100012DF0(object, &qword_1006C1D80);
    goto LABEL_11;
  }

  v101 = FMIPPlaySoundMetadata.alertText.getter();
  v53 = v52;
  v55 = v54;
  v100 = v53;
  v53(object, v46);
  v110 = v55;
  if (!v55)
  {

    goto LABEL_11;
  }

  v56 = v44;
  v57 = v105;
  sub_100007204(v56, v105, &qword_1006C1D80);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  v60 = os_log_type_enabled(v58, v59);
  v109 = v5;
  v99[1] = v51;
  v99[0] = v49;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v113._object = swift_slowAlloc();
    aBlock = v113._object;
    *v61 = 136315138;
    sub_100007204(v57, v102, &qword_1006C1D80);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    sub_100012DF0(v57, &qword_1006C1D80);
    v65 = sub_100005B4C(v62, v64, &aBlock);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v58, v59, "FMDeviceDetailContentViewController: showSafetyWarning - using server driven content %s", v61, 0xCu);
    sub_100006060(v113._object);
  }

  else
  {

    sub_100012DF0(v57, &qword_1006C1D80);
  }

  v66 = objc_opt_self();
  v67 = [v66 mainBundle];
  v124._object = 0x8000000100582220;
  v68._object = 0x8000000100582200;
  v124._countAndFlagsBits = 0xD000000000000031;
  v68._countAndFlagsBits = 0xD00000000000001FLL;
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v124)._countAndFlagsBits;

  v70 = [v66 mainBundle];
  v125._object = 0x8000000100582290;
  v71._countAndFlagsBits = 0xD000000000000021;
  v71._object = 0x8000000100582260;
  v125._countAndFlagsBits = 0xD000000000000033;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v113 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v125);

  v73 = v115;
  v74 = v106;
  sub_100007204(v115, v106, &qword_1006C1D80);
  if (v48(v74, 1, v46) == 1)
  {
    sub_100012DF0(v74, &qword_1006C1D80);
    v75 = v107;
  }

  else
  {
    v76 = FMIPPlaySoundMetadata.cancelButtonTitle.getter();
    v78 = v77;
    v100(v74, v46);
    v75 = v107;
    if (v78)
    {

      countAndFlagsBits = v76;
    }
  }

  sub_100007204(v73, v75, &qword_1006C1D80);
  if (v48(v75, 1, v46) == 1)
  {
    sub_100012DF0(v75, &qword_1006C1D80);
  }

  else
  {
    v79 = FMIPPlaySoundMetadata.continueButtonTitle.getter();
    v81 = v80;
    v100(v75, v46);
    if (v81)
    {

      v113._countAndFlagsBits = v79;
      v113._object = v81;
    }
  }

  v82 = String._bridgeToObjectiveC()();

  v83 = String._bridgeToObjectiveC()();

  v84 = [objc_opt_self() alertControllerWithTitle:v82 message:v83 preferredStyle:1];

  v85 = String._bridgeToObjectiveC()();

  v122 = sub_1001F7188;
  v123 = 0;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100017328;
  v121 = &unk_10062DE58;
  v86 = _Block_copy(&aBlock);

  v87 = objc_opt_self();
  v88 = [v87 actionWithTitle:v85 style:0 handler:v86];
  _Block_release(v86);

  [v84 addAction:v88];
  v90 = v116;
  v89 = v117;
  v91 = v111;
  (*(v117 + 16))(v116, v114, v111);
  v92 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v93 = swift_allocObject();
  v94 = v109;
  *(v93 + 16) = v109;
  (*(v89 + 32))(v93 + v92, v90, v91);
  v95 = v94;
  v96 = String._bridgeToObjectiveC()();

  v122 = sub_10021F294;
  v123 = v93;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100017328;
  v121 = &unk_10062DEA8;
  v97 = _Block_copy(&aBlock);

  v98 = [v87 actionWithTitle:v96 style:0 handler:v97];
  _Block_release(v97);

  [v84 addAction:v98];
  [v95 presentViewController:v84 animated:1 completion:0];
}

void sub_1001F7188()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMDeviceDetailContentViewController: User canceled server safety warning", v2, 2u);
  }
}

void sub_1001F7270(uint64_t a1, int a2, uint64_t a3)
{
  v105 = a3;
  LODWORD(v101) = a2;
  v4 = type metadata accessor for FMIPPlaySoundMethod();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v103 = v5;
  v104 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = *(v10 + 16);
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v108 = v10 + 16;
  countAndFlagsBits = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v100 = v14;
    v20 = v10;
    v21 = v19;
    aBlock = v19;
    *v18 = 136315138;
    v22 = FMIPDevice.debugDescription.getter();
    v24 = v23;
    (*(v20 + 8))(v12, v9);
    v25 = sub_100005B4C(v22, v24, &aBlock);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: showLegacySafetyWarning for device %s", v18, 0xCu);
    sub_100006060(v21);
    v10 = v20;
    v14 = v100;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  aBlock = 0;
  v111 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  aBlock = 0x524F535345434341;
  v111 = 0xEA00000000005F59;
  v26 = v101;
  v27 = 0xE700000000000000;
  v28 = 0x535F524556524553;
  v29 = 0xED00005954454641;
  if (v101 == 5)
  {
    v28 = 0xD000000000000014;
  }

  v98 = 0x8000000100587020;
  if (v101 == 5)
  {
    v29 = 0x8000000100587020;
  }

  v30 = 0xE700000000000000;
  v31 = 0x4B43454E5F4E4FLL;
  if (v101 != 3)
  {
    v31 = 0x454C4241545F4E4FLL;
    v30 = 0xEC000000504F545FLL;
  }

  if (v101 <= 4u)
  {
    v28 = v31;
    v29 = v30;
  }

  v32 = 0xE600000000000000;
  v33 = 0x5241455F4E49;
  if (v101 != 1)
  {
    v33 = 0x444145485F4E4FLL;
    v32 = 0xE700000000000000;
  }

  if (v101)
  {
    v27 = v32;
  }

  else
  {
    v33 = 0x434952454E4547;
  }

  if (v101 <= 2u)
  {
    v34 = v33;
  }

  else
  {
    v34 = v28;
  }

  if (v101 <= 2u)
  {
    v35 = v27;
  }

  else
  {
    v35 = v29;
  }

  v36 = v35;
  String.append(_:)(*&v34);

  v37._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0x8000000100586FE0;
  String.append(_:)(v37);
  v38 = aBlock;
  v39 = v111;
  v14(v8, countAndFlagsBits, v9);
  v40 = *(v10 + 56);
  v97 = v10 + 56;
  v99 = v40;
  v40(v8, 0, 1, v9);
  sub_100230194(v38, v39, v8, &aBlock);
  v41 = aBlock;
  v42 = v111;
  v96 = v9;
  v43 = v112;
  v44 = v113;
  v45 = v14;
  v46 = v114;
  v47 = v115;

  v100 = sub_1002304E0(v41, v42, v43, v44, v46, v47);
  v101 = v48;

  sub_100012DF0(v8, &unk_1006BBCE0);
  aBlock = 0;
  v111 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v49 = 0xE700000000000000;
  v50 = 0x535F524556524553;
  v51 = 0xED00005954454641;
  aBlock = 0x524F535345434341;
  v111 = 0xEA00000000005F59;
  if (v26 == 5)
  {
    v50 = 0xD000000000000014;
    v51 = v98;
  }

  v52 = 0xE700000000000000;
  v53 = 0x4B43454E5F4E4FLL;
  if (v26 != 3)
  {
    v53 = 0x454C4241545F4E4FLL;
    v52 = 0xEC000000504F545FLL;
  }

  if (v26 <= 4)
  {
    v50 = v53;
    v51 = v52;
  }

  v54 = 0xE600000000000000;
  v55 = 0x5241455F4E49;
  if (v26 != 1)
  {
    v55 = 0x444145485F4E4FLL;
    v54 = 0xE700000000000000;
  }

  if (v26)
  {
    v49 = v54;
  }

  else
  {
    v55 = 0x434952454E4547;
  }

  if (v26 <= 2)
  {
    v56 = v55;
  }

  else
  {
    v56 = v50;
  }

  if (v26 <= 2)
  {
    v57 = v49;
  }

  else
  {
    v57 = v51;
  }

  v58 = v57;
  String.append(_:)(*&v56);

  v59._countAndFlagsBits = 0xD000000000000017;
  v59._object = 0x8000000100587000;
  String.append(_:)(v59);
  v60 = aBlock;
  v61 = v111;
  v62 = v96;
  v45(v8, countAndFlagsBits, v96);
  v99(v8, 0, 1, v62);
  sub_100230194(v60, v61, v8, &aBlock);
  v63 = aBlock;
  v64 = v111;
  v65 = v112;
  v66 = v113;
  v68 = v114;
  v67 = v115;

  sub_1002304E0(v63, v64, v65, v66, v68, v67);

  sub_100012DF0(v8, &unk_1006BBCE0);
  v69 = objc_opt_self();
  v70 = [v69 mainBundle];
  v116._object = 0x8000000100582220;
  v71._countAndFlagsBits = 0xD00000000000001FLL;
  v71._object = 0x8000000100582200;
  v116._countAndFlagsBits = 0xD000000000000031;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v116);

  v73 = [v69 mainBundle];
  v117._object = 0x8000000100582290;
  v74._countAndFlagsBits = 0xD000000000000021;
  v74._object = 0x8000000100582260;
  v117._countAndFlagsBits = 0xD000000000000033;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v117)._countAndFlagsBits;

  v76 = String._bridgeToObjectiveC()();

  v77 = String._bridgeToObjectiveC()();

  v78 = [objc_opt_self() alertControllerWithTitle:v76 message:v77 preferredStyle:1];

  v79 = swift_allocObject();
  v80 = v102;
  *(v79 + 16) = v102;
  v81 = v80;
  v82 = String._bridgeToObjectiveC()();

  v114 = sub_10021F208;
  v115 = v79;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100017328;
  v113 = &unk_10062DDE0;
  v83 = _Block_copy(&aBlock);

  v84 = objc_opt_self();
  v85 = [v84 actionWithTitle:v82 style:0 handler:v83];
  _Block_release(v83);

  [v78 addAction:v85];
  v86 = v106;
  v87 = v104;
  v88 = v107;
  (*(v106 + 16))(v104, v105, v107);
  v89 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  (*(v86 + 32))(v90 + v89, v87, v88);
  v91 = v81;
  v92 = String._bridgeToObjectiveC()();

  v114 = sub_10021F210;
  v115 = v90;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_100017328;
  v113 = &unk_10062DE30;
  v93 = _Block_copy(&aBlock);

  v94 = [v84 actionWithTitle:v92 style:0 handler:v93];
  _Block_release(v93);

  [v78 addAction:v94];
  [v91 presentViewController:v78 animated:1 completion:0];
}

id sub_1001F7D7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: User canceled safety warning", v9, 2u);
  }

  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  swift_beginAccess();
  sub_1000BBF40(v5, a2 + v11, &unk_1006B0000);
  swift_endAccess();
  return [*(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton) setUserInteractionEnabled:1];
}

uint64_t sub_1001F7F50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = type metadata accessor for FMIPPlaySoundMethod();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, a4, v17, 2u);
  }

  sub_1001F22BC(a3, 1, 0);
  v18 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v19 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v18 + v19, v13, type metadata accessor for FMDeviceDetailViewModel);
  if (v13[*(v11 + 148)] == 1)
  {
    (*(v8 + 104))(v10, enum case for FMIPPlaySoundMethod.ble(_:), v7);
    sub_10021E650(&qword_1006B6928, &type metadata accessor for FMIPPlaySoundMethod);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    if ((v20 & 1) == 0)
    {
      sub_1001EE058(*v13, *(v13 + 1));
    }
  }

  return sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_1001F8240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  v48[6] = a1;
  v49 = v1;
  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock == 1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMDeviceDetailContentViewController: Showing Queued Alert", v10, 2u);
    }

    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v56._object = 0x8000000100586EF0;
    v13._countAndFlagsBits = 0xD00000000000001BLL;
    v13._object = 0x8000000100586ED0;
    v56._countAndFlagsBits = 0xD00000000000002DLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v56);
    v48[2] = v15._object;
    v48[3] = v15._countAndFlagsBits;

    v16 = *(*&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
    v17 = *(*v16 + class metadata base offset for ManagedBuffer + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v16 + v18));
    v19 = type metadata accessor for FMIPDevice();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v6, v16 + v17, v19);
    os_unfair_lock_unlock((v16 + v18));

    (*(v20 + 56))(v6, 0, 1, v19);
    v21 = sub_10022F104(0xD00000000000001DLL, 0x8000000100586F20, v6);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_10022E0A8(v21, v23, v25, v27, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v6, &unk_1006BBCE0);
    v28 = [v11 mainBundle];
    v57._object = 0x8000000100586F60;
    v29._countAndFlagsBits = 0xD00000000000001CLL;
    v29._object = 0x8000000100586F40;
    v57._countAndFlagsBits = 0xD00000000000002ELL;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v48[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v57)._countAndFlagsBits;

    v31 = [v11 mainBundle];
    v58._object = 0x8000000100586FB0;
    v32._object = 0x8000000100586F90;
    v58._countAndFlagsBits = 0xD00000000000002ALL;
    v32._countAndFlagsBits = 0xD000000000000018;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v58);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

    v37 = swift_allocObject();
    *(v37 + 16) = v2;
    v38 = v2;
    v39 = String._bridgeToObjectiveC()();

    v54 = sub_10021F1F8;
    v55 = v37;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100017328;
    v53 = &unk_10062DD40;
    v40 = _Block_copy(&aBlock);

    v41 = objc_opt_self();
    v42 = [v41 actionWithTitle:v39 style:1 handler:v40];
    _Block_release(v40);

    [v36 addAction:v42];
    v43 = swift_allocObject();
    *(v43 + 16) = v38;
    v44 = v38;
    v45 = String._bridgeToObjectiveC()();

    v54 = sub_10021F200;
    v55 = v43;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100017328;
    v53 = &unk_10062DD90;
    v46 = _Block_copy(&aBlock);

    v47 = [v41 actionWithTitle:v45 style:0 handler:v46];
    _Block_release(v46);

    [v36 addAction:v47];
    [v44 presentViewController:v36 animated:1 completion:0];
  }
}

uint64_t sub_1001F893C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a3;
  v6 = sub_10007EBC0(&unk_1006B0000);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - v10;
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = type metadata accessor for Date();
  v15 = __chkstk_darwin(v14);
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;
  v20 = v19;
  sub_100007204(a1, v13, &unk_1006B0000);
  v21 = *(v20 + 48);
  if (v21(v13, 1, v14) != 1)
  {
    v53 = v20;
    v54 = v3;
    v24 = *(v20 + 32);
    v24(v18, v13, v14);
    v25 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_canShowQueueAlert;
    swift_beginAccess();
    v52 = a2;
    sub_100007204(a2 + v25, v11, &unk_1006B0000);
    if (v21(v11, 1, v14) == 1)
    {
      sub_100012DF0(v11, &unk_1006B0000);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100005B14(v26, qword_1006D4630);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v52;
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "FMDeviceDetailContentViewController: Alert has never been shown - Show alert.", v31, 2u);
      }

      v32 = v55;
      Date.init()();
      v33 = v53;
      (*(v53 + 8))(v18, v14);
      v23 = 1;
      (*(v33 + 56))(v32, 0, 1, v14);
      swift_beginAccess();
      v34 = v30 + v25;
      v35 = v32;
    }

    else
    {
      v24(v56, v11, v14);
      if ((static Date.< infix(_:_:)() & 1) == 0)
      {
        v45 = v53;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_100005B14(v46, qword_1006D4630);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "FMDeviceDetailContentViewController: Same command has been processed. Do not show alert.", v49, 2u);
        }

        v50 = *(v45 + 8);
        v50(v56, v14);
        result = (v50)(v18, v14);
        goto LABEL_3;
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v52;
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "FMDeviceDetailContentViewController: New command has been issued. Show alert.", v41, 2u);
      }

      v42 = v55;
      Date.init()();
      v43 = v53;
      v44 = *(v53 + 8);
      v44(v56, v14);
      v44(v18, v14);
      v23 = 1;
      (*(v43 + 56))(v42, 0, 1, v14);
      swift_beginAccess();
      v34 = v40 + v25;
      v35 = v42;
    }

    sub_1000BBF40(v35, v34, &unk_1006B0000);
    result = swift_endAccess();
    goto LABEL_17;
  }

  result = sub_100012DF0(v13, &unk_1006B0000);
LABEL_3:
  v23 = 0;
LABEL_17:
  *v57 = v23;
  return result;
}

void sub_1001F8F68(uint64_t a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMDeviceDetailContentViewController: User canceled queuing sound", v6, 2u);
  }

  v7 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending);
  *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 0;
  if ((v7 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D810();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001F9098()
{
  v0 = type metadata accessor for FMIPPlaySoundMethod();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DeviceDetailContentViewController: User confirmed safety warning", v7, 2u);
  }

  (*(v1 + 104))(v3, enum case for FMIPPlaySoundMethod.ble(_:), v0);
  sub_1001F22BC(v3, 1, 1);
  return (*(v1 + 8))(v3, v0);
}

void sub_1001F9254()
{
  v1 = type metadata accessor for FMIPPlaySoundChannels();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer;
  if (!*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer))
  {
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
    v10 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    sub_10022017C(v9 + v10, v7, type metadata accessor for FMDeviceDetailViewModel);
    v11 = *&v7[*(v5 + 48)];
    if (v11 && ((*(v2 + 104))(v4, enum case for FMIPPlaySoundChannels.case(_:), v1), v12 = sub_1004A7FCC(v4, v11), (*(v2 + 8))(v4, v1), v12))
    {
      sub_1002201E4(v7, type metadata accessor for FMDeviceDetailViewModel);
    }

    else
    {
      v13 = v0;
      sub_1002201E4(v7, type metadata accessor for FMDeviceDetailViewModel);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100005B14(v14, qword_1006D4630);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: Queue sound pending", v17, 2u);
      }

      v18 = [objc_opt_self() scheduledTimerWithTimeInterval:v13 target:"showSoundPending" selector:0 userInfo:0 repeats:5.0];
      v19 = *(v13 + v8);
      *(v13 + v8) = v18;
    }
  }
}

void sub_1001F9550()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer;
  [*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer] invalidate];
  v3 = *&v1[v2];
  *&v1[v2] = 0;

  if ((*(*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention] + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMDeviceDetailContentViewController: Hide sound pending", v7, 2u);
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v12[4] = sub_10021F198;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100004AE4;
    v12[3] = &unk_10062DCF0;
    v10 = _Block_copy(v12);
    v11 = v1;

    [v8 animateWithDuration:v10 animations:0.3];
    _Block_release(v10);
  }
}

void sub_1001F973C()
{
  if (*(*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention] + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) == 1)
  {
    v1 = v0;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMDeviceDetailContentViewController: Show sound pending", v5, 2u);
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v10[4] = sub_10021F158;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_100004AE4;
    v10[3] = &unk_10062DCA0;
    v8 = _Block_copy(v10);
    v9 = v1;

    [v6 animateWithDuration:4 delay:v8 options:0 animations:0.3 completion:0.0];
    _Block_release(v8);
  }
}

uint64_t sub_1001F995C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v91 = *(v5 - 8);
  v92 = v5;
  __chkstk_darwin(v5);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v8 - 8);
  v10 = &v82 - v9;
  if (v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention] == 1)
  {
    v90 = v2;
    v11 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
    v12 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention];
    if (v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded] == 1)
    {
      v82 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
      v13 = *&v12[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];
      v88 = "AIRPODS_DIRECTIONS_TITLE";
      v14 = objc_opt_self();
      v86 = v14;
      v87 = v13;
      v15 = [v14 mainBundle];
      v89 = 0x800000010057D660;
      v95._object = 0x800000010057D660;
      v16._countAndFlagsBits = 0xD000000000000023;
      v16._object = 0x8000000100586E40;
      v17.value._object = 0x800000010057D640;
      v95._countAndFlagsBits = 0xD00000000000001BLL;
      v17.value._countAndFlagsBits = 0xD000000000000016;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v95);

      v85 = sub_10007EBC0(&unk_1006B20B0);
      v19 = swift_allocObject();
      v84 = xmmword_100552220;
      *(v19 + 16) = xmmword_100552220;
      v20 = &v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
      v21 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
      v22 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress + 8];
      *(v19 + 56) = &type metadata for String;
      v83 = sub_10008EE84();
      *(v19 + 64) = v83;
      if (v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = v22;
      }

      *(v19 + 32) = v23;
      *(v19 + 40) = v24;

      String.init(format:_:)();

      v25 = String._bridgeToObjectiveC()();

      v26 = v87;
      [v87 setText:v25];

      v87 = v4;
      v27 = v82;
      v28 = *&v1[v82];
      v29 = type metadata accessor for FMPlatterIcon();
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      v30 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
      swift_beginAccess();
      v31 = v28;
      sub_1000BBE44(v10, v28 + v30, &qword_1006B3298);
      swift_endAccess();
      sub_10032B0BC();

      sub_100012DF0(v10, &qword_1006B3298);
      v32 = v27;
      v4 = v87;
      v33 = *&v1[v32];
      v34 = v86;
      v35 = [v86 mainBundle];
      v96._object = v89;
      v36._countAndFlagsBits = 0xD000000000000026;
      v36._object = 0x8000000100586E70;
      v37.value._object = (v88 | 0x8000000000000000);
      v96._countAndFlagsBits = 0xD00000000000001BLL;
      v37.value._countAndFlagsBits = 0xD000000000000016;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v96);

      v39 = swift_allocObject();
      *(v39 + 16) = v84;
      v41 = *v20;
      v40 = v20[1];
      v42 = v83;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = v42;
      if (!v40)
      {
        v41 = 0;
      }

      v43 = 0xE000000000000000;
      if (v40)
      {
        v43 = v40;
      }

      *(v39 + 32) = v41;
      *(v39 + 40) = v43;

      v44 = String.init(format:_:)();
      v46 = v45;

      v47 = &v33[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
      *v47 = v44;
      v47[1] = v46;

      v48 = *&v33[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

      v49 = String._bridgeToObjectiveC()();

      [v48 setText:v49];

      v50 = *&v1[v32];
      v51 = [v34 mainBundle];
      v97._object = v89;
      v52._countAndFlagsBits = 0xD00000000000002ALL;
      v52._object = 0x8000000100586EA0;
      v53.value._object = (v88 | 0x8000000000000000);
      v97._countAndFlagsBits = 0xD00000000000001BLL;
      v53.value._countAndFlagsBits = 0xD000000000000016;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v97);

      *&v50[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v55;

      v56 = *&v50[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

      v57 = String._bridgeToObjectiveC()();

      [v56 setText:v57];
    }

    else
    {
      [v12 setUserInteractionEnabled:1];
      v60 = *(*&v0[v11] + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);
      v61 = objc_opt_self();
      v62 = v60;
      v63 = [v61 mainBundle];
      v98._object = 0x800000010057D660;
      v64._countAndFlagsBits = 0xD00000000000001DLL;
      v64._object = 0x8000000100586E20;
      v65.value._object = 0x800000010057D640;
      v98._countAndFlagsBits = 0xD00000000000001BLL;
      v65.value._countAndFlagsBits = 0xD000000000000016;
      v66._countAndFlagsBits = 0;
      v66._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v98);

      sub_10007EBC0(&unk_1006B20B0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100552220;
      v69 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
      v68 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress + 8];
      *(v67 + 56) = &type metadata for String;
      *(v67 + 64) = sub_10008EE84();
      if (v68)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      if (v68)
      {
        v71 = v68;
      }

      else
      {
        v71 = 0xE000000000000000;
      }

      *(v67 + 32) = v70;
      *(v67 + 40) = v71;

      String.init(format:_:)();

      v72 = String._bridgeToObjectiveC()();

      [v62 setText:v72];
    }

    v73 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention];
    v73[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 0;
    v74 = v73;
    sub_10032ADBC();

    v2 = v90;
  }

  else
  {
    v58 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention];
    v58[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
    v59 = v58;
    sub_10032ADBC();
  }

  v75 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v76 = sub_100057590();

  LOBYTE(v75) = sub_100422D8C();
  sub_10000905C(0, &qword_1006AEDC0);
  v77 = static OS_dispatch_queue.main.getter();
  v78 = swift_allocObject();
  *(v78 + 16) = v1;
  *(v78 + 24) = (v76 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(v78 + 25) = v75 & 1;
  aBlock[4] = sub_10021F148;
  aBlock[5] = v78;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062DC50;
  v79 = _Block_copy(aBlock);
  v80 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v79);

  (*(v93 + 8))(v4, v2);
  return (*(v91 + 8))(v7, v92);
}

void sub_1001FA39C(uint64_t a1, char a2, char a3)
{
  v6 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
  v7[OBJC_IVAR____TtC6FindMy25FMDeviceNotificationsView_disabled] = a2;
  v8 = *&v7[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 labelColor];
  [v8 setTextColor:v11];

  if (a2)
  {
    [v8 setAlpha:0.35];

    v12 = *(a1 + v6);
    sub_10022E294(0xD000000000000027, 0x8000000100580590);
    v13 = String.init(format:_:)();
    v15 = v14;
  }

  else
  {
    [v8 setAlpha:1.0];

    v12 = *(a1 + v6);
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &v12[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v16 = v13;
  v16[1] = v15;

  sub_100457338();

  *(*(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = a3 & 1 | ((a2 & 1) == 0);
  sub_10032ADBC();
}

void sub_1001FA534(uint64_t a1, uint64_t a2, int a3, NSObject *a4)
{
  v5 = v4;
  v105 = a4;
  v9 = type metadata accessor for FMIPPlaySoundMethod();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v103 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v102 = &v88 - v13;
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPAirPodsPlaySoundType();
  v94 = *(v18 - 8);
  v95 = v18;
  __chkstk_darwin(v18);
  v101 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&qword_1006B68D8);
  v21 = __chkstk_darwin(v20 - 8);
  __chkstk_darwin(v21);
  v24 = &v88 - v23;
  if (*(a2 + 16))
  {
    v88 = v22;
    v92 = v14;
    v100 = v9;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v98 = v10;
    v99 = a1;
    v25 = type metadata accessor for Logger();
    v26 = sub_100005B14(v25, qword_1006D4630);

    v97 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v104 = v5;
    v93 = a3;
    v89 = v15;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v106[0] = v31;
      *v30 = 136315138;
      v32 = Array.description.getter();
      v34 = sub_100005B4C(v32, v33, v106);

      *(v30 + 4) = v34;
      v5 = v104;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMDeviceDetailContentViewController: updatePlaySoundAnalytics. Channels: %s", v30, 0xCu);
      sub_100006060(v31);
    }

    v35 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics;
    swift_beginAccess();
    sub_100007204(v5 + v35, v24, &qword_1006B68D8);
    v36 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    v96 = v36;
    v91 = v37 + 48;
    v90 = v38;
    v39 = (v38)(v24, 1);
    sub_100012DF0(v24, &qword_1006B68D8);
    if (v39 == 1)
    {
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "FMDeviceDetailContentViewController: updatePlaySoundAnalytics: creating new event", v42, 2u);
      }

      (*(v94 + 104))(v101, enum case for FMIPAirPodsPlaySoundType.owner(_:), v95);
      v43 = v89;
      v44 = *(v89 + 104);
      v45 = v92;
      v44(v17, enum case for FMIPPlaySoundChannels.case(_:), v92);
      LODWORD(v95) = sub_1004A7FCC(v17, a2);
      v46 = *(v43 + 8);
      v46(v17, v45);
      v44(v17, enum case for FMIPPlaySoundChannels.left(_:), v45);
      sub_1004A7FCC(v17, a2);
      v46(v17, v45);
      v44(v17, enum case for FMIPPlaySoundChannels.right(_:), v45);
      sub_1004A7FCC(v17, a2);
      v46(v17, v45);
      v47 = v88;
      FMIPAirPodsPlaySoundEvent.init(soundEventType:includedCase:includedLeftBud:includedRightBud:onlinePlaySoundAttempted:onlinePlaySoundSuccess:onlinePlaySoundError:offlinePlaySoundAttempted:offlinePlaySoundSuccess:offlinePlaySoundError:userShownPlayingState:userShownFinishedPlayingState:)();
      (*(v37 + 56))(v47, 0, 1, v96);
      v48 = v104;
      swift_beginAccess();
      sub_1000BBF40(v47, v48 + v35, &qword_1006B68D8);
      swift_endAccess();
    }

    v49 = v98;
    v50 = v102;
    v51 = v100;
    (*(v98 + 16))(v102, v99, v100);
    v52 = v105;
    swift_errorRetain();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      LODWORD(v101) = v54;
      v55 = v51;
      v56 = swift_slowAlloc();
      v57 = v49;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106[0] = v59;
      *v56 = 136315650;
      sub_10021E650(&qword_1006B6920, &type metadata accessor for FMIPPlaySoundMethod);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v50;
      v63 = v62;
      v64 = *(v57 + 8);
      v64(v61, v55);
      v65 = sub_100005B4C(v60, v63, v106);

      *(v56 + 4) = v65;
      *(v56 + 12) = 1024;
      *(v56 + 14) = v93 & 1;
      *(v56 + 18) = 2112;
      if (v52)
      {
        swift_errorRetain();
        v66 = _swift_stdlib_bridgeErrorToNSError();
        v67 = v66;
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v72 = v103;
      v73 = v101;
      *(v56 + 20) = v66;
      *v58 = v67;
      _os_log_impl(&_mh_execute_header, v53, v73, "FMDeviceDetailContentViewController: updatePlaySoundAnalytics: Updating event. Method: %s, success:%{BOOL}d, error:%@", v56, 0x1Cu);
      sub_100012DF0(v58, &unk_1006AF760);

      sub_100006060(v59);

      v51 = v100;
      v49 = v98;
    }

    else
    {

      v64 = *(v49 + 8);
      v64(v50, v51);
      v72 = v103;
    }

    v74 = *(v49 + 104);
    v74(v72, enum case for FMIPPlaySoundMethod.classic(_:), v51);
    v75 = static FMIPPlaySoundMethod.== infix(_:_:)();
    v64(v72, v51);
    if (v75)
    {
      v76 = sub_1001D733C();
      v77 = v96;
      v78 = v90;
      if (!v90(v79, 1, v96))
      {
        FMIPAirPodsPlaySoundEvent.onlinePlaySoundAttempted.setter();
      }

      (v76)(v106, 0);
      v80 = sub_1001D733C();
      if (!v78(v81, 1, v77))
      {
        FMIPAirPodsPlaySoundEvent.onlinePlaySoundSuccess.setter();
      }
    }

    else
    {
      v74(v72, enum case for FMIPPlaySoundMethod.ble(_:), v51);
      v82 = static FMIPPlaySoundMethod.== infix(_:_:)();
      v64(v72, v51);
      if ((v82 & 1) == 0)
      {
        return;
      }

      v83 = sub_1001D733C();
      v77 = v96;
      v78 = v90;
      if (!v90(v84, 1, v96))
      {
        FMIPAirPodsPlaySoundEvent.offlinePlaySoundAttempted.setter();
      }

      (v83)(v106, 0);
      v80 = sub_1001D733C();
      if (!v78(v85, 1, v77))
      {
        FMIPAirPodsPlaySoundEvent.offlinePlaySoundSuccess.setter();
      }
    }

    (v80)(v106, 0);
    v86 = sub_1001D733C();
    if (!v78(v87, 1, v77))
    {
      swift_errorRetain();
      FMIPAirPodsPlaySoundEvent.onlinePlaySoundError.setter();
    }

    (v86)(v106, 0);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100005B14(v68, qword_1006D4630);
    v105 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v105, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v105, v69, "FMDeviceDetailContentViewController: updatePlaySoundAnalytics. empty channels, skipping", v70, 2u);
    }

    v71 = v105;
  }
}

uint64_t sub_1001FB114()
{
  v1 = sub_10007EBC0(&qword_1006B68D8);
  v2 = __chkstk_darwin(v1 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v30 - v4;
  v6 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics;
  swift_beginAccess();
  v35 = v0;
  sub_100007204(v0 + v16, v5, &qword_1006B68D8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100012DF0(v5, &qword_1006B68D8);
  }

  (*(v7 + 32))(v15, v5, v6);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = *(v7 + 16);
  v19(v13, v15, v6);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v21;
    v23 = v22;
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v23 = 136315138;
    v19(v10, v13, v6);
    v31 = String.init<A>(describing:)();
    v25 = v24;
    v26 = *(v7 + 8);
    v26(v13, v6);
    v27 = sub_100005B4C(v31, v25, v36);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v33, "FMDeviceDetailContentViewController: sendPlaySoundAnalytics: %s", v23, 0xCu);
    sub_100006060(v32);
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v13, v6);
  }

  v28 = v35;

  FMIPManager.enqueue(airpodsPlaySoundEvent:)();
  v26(v15, v6);

  v29 = v34;
  (*(v7 + 56))(v34, 1, 1, v6);
  swift_beginAccess();
  sub_1000BBF40(v29, v28 + v16, &qword_1006B68D8);
  return swift_endAccess();
}

void sub_1001FB570()
{
  v1 = type metadata accessor for FMIPAnalyticsActionType();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v37 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v3 - 8);
  v36 = &v34 - v4;
  v5 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v15 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  sub_1000E512C(v16, v17, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceDetailContentViewController: cannot get direction for unknown device", v21, 2u);
    }
  }

  else
  {
    v22 = v13;
    (*(v9 + 32))(v13, v7, v8);
    v23 = *&v0[v14] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v24 = type metadata accessor for FMDeviceDetailViewModel();
    v25 = v36;
    sub_100007204(v23 + *(v24 + 36), v36, &qword_1006B07D0);

    sub_1000DBA1C(v13, v25, v0);

    v26 = *(*&v0[v14] + 40);
    v27 = *(*v26 + class metadata base offset for ManagedBuffer + 16);
    v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v26 + v28));
    v29 = v35;
    (*(v9 + 16))(v35, v26 + v27, v8);
    os_unfair_lock_unlock((v26 + v28));

    v31 = v37;
    v30 = v38;
    v32 = v39;
    (*(v38 + 104))(v37, enum case for FMIPAnalyticsActionType.directions(_:), v39);
    sub_10020D6E8(v29, v31);
    (*(v30 + 8))(v31, v32);
    v33 = *(v9 + 8);
    v33(v29, v8);
    sub_100012DF0(v25, &qword_1006B07D0);
    v33(v22, v8);
  }
}

void sub_1001FBB04()
{
  v1 = sub_10007EBC0(&qword_1006B6900);
  v2 = __chkstk_darwin(v1 - 8);
  v460 = &v416 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v464 = &v416 - v4;
  v457 = type metadata accessor for FMFindingTechnology();
  v456 = *(v457 - 8);
  v5 = __chkstk_darwin(v457);
  v438 = &v416 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v437 = &v416 - v8;
  v9 = __chkstk_darwin(v7);
  v448 = &v416 - v10;
  __chkstk_darwin(v9);
  v423 = &v416 - v11;
  v455 = type metadata accessor for FMIPAnalyticsActionType();
  v454 = *(v455 - 8);
  __chkstk_darwin(v455);
  v453 = &v416 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006BB1C0);
  v14 = __chkstk_darwin(v13 - 8);
  v480 = &v416 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v467 = &v416 - v17;
  v18 = __chkstk_darwin(v16);
  v428 = &v416 - v19;
  __chkstk_darwin(v18);
  v429 = &v416 - v20;
  v483 = type metadata accessor for FMIPItemGroup();
  v484 = *(v483 - 8);
  v21 = __chkstk_darwin(v483);
  v447 = &v416 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v475 = &v416 - v24;
  v25 = __chkstk_darwin(v23);
  v424 = &v416 - v26;
  __chkstk_darwin(v25);
  v430 = &v416 - v27;
  v28 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v28 - 8);
  v444 = &v416 - v29;
  v435 = type metadata accessor for FMFindingProductType();
  v434 = *(v435 - 8);
  __chkstk_darwin(v435);
  v443 = &v416 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v465 = type metadata accessor for FMFindableObject();
  v463 = *(v465 - 8);
  v31 = __chkstk_darwin(v465);
  v436 = &v416 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v440 = &v416 - v33;
  v479 = type metadata accessor for FindingExperienceType();
  v474 = *(v479 - 1);
  v34 = __chkstk_darwin(v479);
  v459 = &v416 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v468 = &v416 - v37;
  v38 = __chkstk_darwin(v36);
  v477 = &v416 - v39;
  v40 = __chkstk_darwin(v38);
  v422 = &v416 - v41;
  v42 = __chkstk_darwin(v40);
  v427 = &v416 - v43;
  __chkstk_darwin(v42);
  v439 = &v416 - v44;
  v45 = sub_10007EBC0(&unk_1006B20C0);
  v46 = __chkstk_darwin(v45 - 8);
  v445 = &v416 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v426 = &v416 - v49;
  __chkstk_darwin(v48);
  v442 = &v416 - v50;
  v461 = type metadata accessor for UUID();
  v462 = *(v461 - 8);
  v51 = __chkstk_darwin(v461);
  v433 = &v416 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v431 = &v416 - v54;
  v55 = __chkstk_darwin(v53);
  v449 = &v416 - v56;
  v57 = __chkstk_darwin(v55);
  v425 = &v416 - v58;
  v432 = v59;
  __chkstk_darwin(v57);
  v441 = &v416 - v60;
  v473 = type metadata accessor for FMItemCapabilities();
  v472 = *(v473 - 8);
  v61 = __chkstk_darwin(v473);
  v471 = &v416 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v470 = &v416 - v63;
  v64 = sub_10007EBC0(&qword_1006B07D0);
  v65 = __chkstk_darwin(v64 - 8);
  v446 = &v416 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v458 = &v416 - v68;
  __chkstk_darwin(v67);
  v482 = &v416 - v69;
  v487 = type metadata accessor for FMIPItem();
  v486 = *(v487 - 8);
  __chkstk_darwin(v487);
  v485 = &v416 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v491 = type metadata accessor for FMDeviceDetailViewModel();
  __chkstk_darwin(v491);
  v481 = &v416 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v488 = type metadata accessor for FMExperienceType();
  v490 = *(v488 - 8);
  v72 = __chkstk_darwin(v488);
  v469 = &v416 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v489 = &v416 - v74;
  v450 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v450);
  v452 = (&v416 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v76 - 8);
  v78 = &v416 - v77;
  v79 = type metadata accessor for FMIPDevice();
  v80 = *(v79 - 8);
  v81 = __chkstk_darwin(v79);
  v451 = &v416 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v81);
  v84 = &v416 - v83;
  v478 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v85 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v492 = v0;
  v86 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];

  sub_1000E512C(v87, v88, v78);

  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_100012DF0(v78, &unk_1006BBCE0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100005B14(v89, qword_1006D4630);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "FMDeviceDetailContentViewController: cannot get direction for unknown device", v92, 2u);
    }

    return;
  }

  v421 = v80;
  v93 = *(v80 + 32);
  v466 = v79;
  v93(v84, v78, v79);
  v476 = v85;
  v94 = v492;
  v95 = *&v492[v85];
  v96 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v97 = v481;
  v98 = sub_10022017C(v95 + v96, v481, type metadata accessor for FMDeviceDetailViewModel);
  v99 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable;
  v100 = v84;
  if (v94[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable] == 1)
  {
    __chkstk_darwin(v98);
    *(&v416 - 2) = v101;
    v102 = v101;
    OS_dispatch_queue.sync<A>(execute:)();
    v420 = 0;

    v103 = v493;
  }

  else
  {
    v420 = 0;
    v103 = 1;
  }

  v104 = v489;
  v105 = v487;
  v419 = type metadata accessor for FMConnectionManager();
  v106 = static FMConnectionManager.hostSupportsRanging.getter();
  v107 = &v97[v491[10]];
  v108 = *v107;
  v109 = v107[8];
  sub_1002201E4(v97, type metadata accessor for FMDeviceDetailViewModel);
  v110 = &enum case for FMExperienceType.bt(_:);
  if ((v109 & 1) == 0 && !(((v108 & 0x400) == 0 || (v106 & 1) == 0) | v103 & 1))
  {
    v110 = &enum case for FMExperienceType.r1(_:);
  }

  v111 = v490;
  v112 = v490[13];
  v113 = v488;
  v112(v104, *v110, v488);
  v114 = *&v492[v476] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v115 = v482;
  sub_100007204(v114 + v491[9], v482, &qword_1006B07D0);
  v116 = v486;
  v117 = v486[6];
  v418 = (v486 + 6);
  v417 = v117;
  if (v117(v115, 1, v105) != 1)
  {
    v481 = v99;
    (v116[4])();
    v121 = v469;
    v112(v469, enum case for FMExperienceType.r1(_:), v113);
    v122 = static FMExperienceType.== infix(_:_:)();
    v123 = (v111 + 1);
    v469 = v111[1];
    (v469)(v121, v113);
    v124 = v470;
    FMIPItem.capabilities.getter();
    v125 = v471;
    static FMItemCapabilities.precisionVFX.getter();
    sub_10021E650(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
    v126 = v473;
    v127 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v128 = *(v472 + 8);
    v128(v125, v126);
    v128(v124, v126);
    if (v127 & 1) != 0 && (FMIPItem.capabilities.getter(), static FMItemCapabilities.canR2.getter(), v129 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v128(v125, v126), v128(v124, v126), (v129))
    {
      LODWORD(v473) = static FMConnectionManager.hostSupportsRanging.getter();
      if ((v122 & 1) == 0)
      {
LABEL_18:
        v119 = v100;
        v120 = v466;
        LODWORD(v472) = 0;
        v130 = v473;
        v118 = v492;
        goto LABEL_21;
      }
    }

    else
    {
      LODWORD(v473) = 0;
      if ((v122 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v130 = 1;
    LODWORD(v472) = 1;
    v118 = v492;
    v119 = v100;
    v120 = v466;
LABEL_21:
    v131 = v481;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    v133 = sub_100005B14(v132, qword_1006D4630);
    v134 = v118;
    v471 = v133;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v135, v136))
    {

      v135 = v134;
      v142 = v486;
LABEL_32:

      v145 = v487;
      if ((v130 & 1) == 0 || v131[v118] != 1)
      {
        goto LABEL_36;
      }

      v419 = v134;
      v470 = v123;
      __chkstk_darwin(v144);
      *(&v416 - 2) = v146;
      v147 = v146;
      v148 = v420;
      OS_dispatch_queue.sync<A>(execute:)();
      v420 = v148;

      if (v493)
      {
        v142 = v486;
        v145 = v487;
LABEL_36:
        (v142[1])(v485, v145);
        goto LABEL_37;
      }

      v482 = v119;
      v491 = [objc_allocWithZone(ARSession) init];
      My = type metadata accessor for Feature.FindMy();
      *(&v494 + 1) = My;
      v495 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
      v247 = sub_100008FC0(&v493);
      (*(*(My - 8) + 104))(v247, enum case for Feature.FindMy.modernRose(_:), My);
      v248 = isFeatureEnabled(_:)();
      sub_100006060(&v493);
      FMIPItem.identifier.getter();
      v249 = v442;
      UUID.init(uuidString:)();

      v250 = v462;
      v251 = *(v462 + 48);
      v252 = v461;
      if (v251(v249, 1, v461) == 1)
      {
        __break(1u);
      }

      else
      {
        v253 = objc_opt_self();
        v254 = *(v250 + 32);
        v255 = v441;
        v254(v441, v249, v252);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v250 + 8))(v255, v252);
        v257 = [v253 generateDiscoveryTokenFromBeaconIdentifier:isa];

        if ((v473 & v248 & 1) == 0 || !v257)
        {
          v307 = v428;
          v308 = v482;
          FMIPDevice.itemGroup.getter();
          v309 = v484;
          v310 = v483;
          if ((*(v484 + 48))(v307, 1, v483) == 1)
          {
            sub_100012DF0(v307, &unk_1006BB1C0);
            v311 = Logger.logObject.getter();
            v312 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v311, v312))
            {
              v313 = swift_slowAlloc();
              *v313 = 0;
              _os_log_impl(&_mh_execute_header, v311, v312, "FMDeviceDetailContentViewController: cannot start finding without item group", v313, 2u);
            }

            (v486[1])(v485, v487);
            (v469)(v489, v488);
            (*(v421 + 8))(v308, v466);
            return;
          }

          v490 = v257;
          v354 = v424;
          (*(v309 + 32))(v424, v307, v310);
          v355 = FMIPItemGroup.groupedItems.getter();
          v356 = v420;
          v357 = sub_1001D704C(v355, sub_1002206AC);

          type metadata accessor for FMFindingSession();
          sub_10052A950(v357);

          v358 = v487;
          *(&v494 + 1) = v487;
          v495 = sub_10021E650(&qword_1006B6908, &type metadata accessor for FMIPItem);
          v359 = sub_100008FC0(&v493);
          (v486[2])(v359, v485, v358);
          FMIPItemGroup.name.getter();
          v360 = *(sub_10007EBC0(&qword_1006C0020) + 48);
          v361 = v423;
          *v423 = 1;
          v362 = enum case for FMFindingType.owner(_:);
          v363 = type metadata accessor for FMFindingType();
          (*(*(v363 - 8) + 104))(&v361[v360], v362, v363);
          (*(v456 + 104))(v361, enum case for FMFindingTechnology.precision(_:), v457);
          v364 = v491;
          v365 = FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingTechnology:arSession:)();
          if (v356)
          {

            v366 = Logger.logObject.getter();
            v367 = static os_log_type_t.error.getter();
            v368 = os_log_type_enabled(v366, v367);
            v369 = v488;
            if (v368)
            {
              v370 = swift_slowAlloc();
              *v370 = 67240192;
              *(v370 + 4) = 1;
              _os_log_impl(&_mh_execute_header, v366, v367, "No valid finding session created. isPrecisionFinding = %{BOOL,public}d.", v370, 8u);
            }

            (*(v484 + 8))(v354, v483);
            goto LABEL_109;
          }

          v385 = v419;
          v386 = *(v419 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager);
          v387 = v488;
          if (v386)
          {
            v388 = v452;
            *v452 = v365;
            *(v388 + 8) = v386;
            v491 = v365;
            swift_storeEnumTagMultiPayload();
            v389 = *(*&v492[v476] + 40);
            v390 = *(*v389 + class metadata base offset for ManagedBuffer + 16);
            v391 = (*(*v389 + 48) + 3) & 0x1FFFFFFFCLL;
            v492 = v386;

            os_unfair_lock_lock((v389 + v391));
            v392 = v421;
            v393 = v451;
            (*(v421 + 16))(v451, v389 + v390, v466);
            os_unfair_lock_unlock((v389 + v391));

            v394 = v454;
            v395 = v453;
            v396 = v455;
            (*(v454 + 104))(v453, enum case for FMIPAnalyticsActionType.precisionFind(_:), v455);
            sub_10020D6E8(v393, v395);
            (*(v394 + 8))(v395, v396);
            v397 = *(v392 + 8);
            v398 = v393;
            v399 = v466;
            v397(v398, v466);
            sub_100161B04(v388, v385);
            sub_100458B70(v388);

            (*(v484 + 8))(v354, v483);
            (v486[1])(v485, v487);
            (v469)(v489, v488);
            sub_1002201E4(v388, type metadata accessor for FindingMode);
            v397(v482, v399);
            return;
          }

          (*(v484 + 8))(v354, v483);
LABEL_117:
          (v486[1])(v485, v487);
          v383 = v489;
          v384 = v387;
          goto LABEL_110;
        }

        v258 = *(sub_10007EBC0(&unk_1006B4210) + 48);
        v259 = enum case for FindingModel.nearbyInteraction(_:);
        v260 = type metadata accessor for FindingModel();
        v261 = v257;
        v262 = v439;
        (*(*(v260 - 8) + 104))(v439, v259, v260);
        v263 = enum case for FMFindingType.owner(_:);
        v264 = type metadata accessor for FMFindingType();
        (*(*(v264 - 8) + 104))(&v262[v258], v263, v264);
        v265 = v479;
        (*(v474 + 104))(v262, enum case for FindingExperienceType.precision(_:), v479);
        v480 = v261;
        v490 = FMIPItem.name.getter();
        v481 = v266;
        FMIPItem.identifier.getter();
        v267 = v426;
        UUID.init(uuidString:)();

        if (v251(v267, 1, v252) != 1)
        {
          v254(v425, v267, v252);
          v268 = v474;
          v478 = *(v474 + 16);
          v478(v427, v262, v265);
          FMIPItem.findingProductType.getter(v443);
          v269 = v444;
          FMR2AirPodsVideoInfo.getter();
          v270 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
          (*(*(v270 - 8) + 56))(v269, 0, 1, v270);
          v271 = v480;
          v272 = v440;
          v490 = v271;
          FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
          v273 = v429;
          FMIPDevice.itemGroup.getter();
          v274 = v484;
          v275 = v483;
          v276 = v265;
          if ((*(v484 + 48))(v273, 1, v483) == 1)
          {
            sub_100012DF0(v273, &unk_1006BB1C0);
            v277 = Logger.logObject.getter();
            v278 = static os_log_type_t.error.getter();
            v279 = os_log_type_enabled(v277, v278);
            v280 = v466;
            if (v279)
            {
              v281 = swift_slowAlloc();
              *v281 = 0;
              _os_log_impl(&_mh_execute_header, v277, v278, "FMDeviceDetailContentViewController: cannot start finding without item group", v281, 2u);
            }

            v282 = v490;
            (*(v463 + 8))(v272, v465);
            (*(v268 + 8))(v262, v276);
            (v486[1])(v485, v487);
            (v469)(v489, v488);
            (*(v421 + 8))(v482, v280);
            return;
          }

          (*(v274 + 32))(v430, v273, v275);
          v371 = FMIPItemGroup.groupedItems.getter();
          v372 = v420;
          v373 = sub_1001D704C(v371, sub_1002206AC);

          type metadata accessor for FMFindingSession();
          sub_10052A950(v373);

          v374 = v465;
          *(&v494 + 1) = v465;
          v495 = &protocol witness table for FMFindableObject;
          v375 = sub_100008FC0(&v493);
          (*(v463 + 16))(v375, v272, v374);
          FMIPItemGroup.name.getter();
          v478(v422, v262, v265);
          v376 = v491;
          v377 = FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)();
          if (v372)
          {

            v378 = Logger.logObject.getter();
            v379 = static os_log_type_t.error.getter();
            v380 = os_log_type_enabled(v378, v379);
            v369 = v488;
            if (v380)
            {
              v381 = swift_slowAlloc();
              *v381 = 67240448;
              *(v381 + 4) = 1;
              *(v381 + 8) = 1026;
              *(v381 + 10) = v472;
              _os_log_impl(&_mh_execute_header, v378, v379, "No valid finding session created. isPrecisionR2Finding = %{BOOL,public}d, isPrecisionR1Finding = %{BOOL,public}d.", v381, 0xEu);
            }

            v382 = v490;
            (*(v484 + 8))(v430, v483);
            (*(v463 + 8))(v440, v465);
            (*(v474 + 8))(v439, v479);
LABEL_109:
            (v486[1])(v485, v487);
            v383 = v489;
            v384 = v369;
LABEL_110:
            (v469)(v383, v384);
            goto LABEL_98;
          }

          v400 = v419;
          v401 = *(v419 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager);
          v387 = v488;
          if (v401)
          {
            v402 = v452;
            *v452 = v377;
            *(v402 + 8) = v401;
            v491 = v377;
            swift_storeEnumTagMultiPayload();
            v403 = *(*&v492[v476] + 40);
            v404 = *(*v403 + class metadata base offset for ManagedBuffer + 16);
            v405 = (*(*v403 + 48) + 3) & 0x1FFFFFFFCLL;
            v492 = v401;

            os_unfair_lock_lock((v403 + v405));
            v406 = v421;
            v407 = v403 + v404;
            v408 = v451;
            v409 = v466;
            (*(v421 + 16))(v451, v407, v466);
            os_unfair_lock_unlock((v403 + v405));

            v410 = v454;
            v411 = v453;
            v412 = v455;
            (*(v454 + 104))(v453, enum case for FMIPAnalyticsActionType.precisionFind(_:), v455);
            sub_10020D6E8(v408, v411);
            (*(v410 + 8))(v411, v412);
            v413 = *(v406 + 8);
            v413(v408, v409);
            sub_100161B04(v402, v400);
            sub_100458B70(v402);

            v414 = v490;

            (*(v484 + 8))(v430, v483);
            (*(v463 + 8))(v440, v465);
            (*(v474 + 8))(v439, v479);
            (v486[1])(v485, v487);
            (v469)(v489, v488);
            sub_1002201E4(v402, type metadata accessor for FindingMode);
            v413(v482, v409);
            return;
          }

          v415 = v490;

          (*(v484 + 8))(v430, v483);
          (*(v463 + 8))(v440, v465);
          (*(v474 + 8))(v439, v479);
          goto LABEL_117;
        }
      }

      __break(1u);
      return;
    }

    v482 = v119;
    v137 = swift_slowAlloc();
    v138 = v137;
    *v137 = 67240704;
    *(v137 + 4) = v473 & 1;
    *(v137 + 8) = 1026;
    *(v137 + 10) = v472;
    *(v137 + 14) = 1026;
    if (v131[v118] == 1)
    {
      v419 = v134;
      v470 = v123;
      __chkstk_darwin(v137);
      *(&v416 - 2) = v139;
      v140 = v139;
      v141 = v420;
      OS_dispatch_queue.sync<A>(execute:)();
      v420 = v141;

      if (v493 != 1)
      {
        v143 = 1;
        v118 = v492;
        v142 = v486;
        v123 = v470;
        v134 = v419;
        v131 = v481;
        goto LABEL_31;
      }

      v118 = v492;
      v142 = v486;
      v123 = v470;
      v134 = v419;
      v131 = v481;
    }

    else
    {
      v142 = v486;
    }

    v143 = 0;
LABEL_31:
    *(v138 + 16) = v143;

    _os_log_impl(&_mh_execute_header, v135, v136, "FMDeviceDetailContentViewController: Finding session creation. isPrecisionR2Finding = %{BOOL,public}d, isPrecisionR1Finding = %{BOOL,public}d.\nisRangingServiceAvailable = %{BOOL,public}d.", v138, 0x14u);

    v119 = v482;
    goto LABEL_32;
  }

  sub_100012DF0(v115, &qword_1006B07D0);
  v118 = v492;
  v119 = v100;
  v120 = v466;
LABEL_37:
  v149 = type metadata accessor for Feature.FindMy();
  *(&v494 + 1) = v149;
  v150 = sub_10021E650(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v495 = v150;
  v151 = sub_100008FC0(&v493);
  v152 = *(*(v149 - 8) + 104);
  v152(v151, enum case for Feature.FindMy.modernRose(_:), v149);
  v153 = isFeatureEnabled(_:)();
  sub_100006060(&v493);
  *(&v494 + 1) = v149;
  v495 = v150;
  v154 = sub_100008FC0(&v493);
  v152(v154, enum case for Feature.FindMy.robustBird(_:), v149);
  LODWORD(v150) = isFeatureEnabled(_:)();
  sub_100006060(&v493);
  v155 = sub_1001D7AEC();
  v156 = v480;
  if (((v155 | v150) & 1) == 0 || (v153 & 1) == 0)
  {
    v164 = v476;
    v165 = *(v118 + v476) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v166 = v490;
    if (*(v165 + v491[37]) == 1)
    {
      FMIPDevice.itemGroup.getter();
      v167 = v484;
      v168 = v483;
      if ((*(v484 + 48))(v156, 1, v483) == 1)
      {
        sub_100012DF0(v156, &unk_1006BB1C0);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v169 = type metadata accessor for Logger();
        sub_100005B14(v169, qword_1006D4630);
        v170 = Logger.logObject.getter();
        v171 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          *v172 = 0;
          _os_log_impl(&_mh_execute_header, v170, v171, "FMDeviceDetailContentViewController: cannot start finding without item group", v172, 2u);
        }

        (v166[1])(v489, v488);
        goto LABEL_84;
      }

      v482 = v119;
      v213 = v447;
      (*(v167 + 32))(v447, v156, v168);
      v214 = FMIPItemGroup.groupedItems.getter();
      v215 = v420;
      v216 = sub_1001D704C(v214, sub_1002206AC);

      v217 = *(v118 + v164) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      v218 = v217 + v491[9];
      v219 = v458;
      sub_100007204(v218, v458, &qword_1006B07D0);
      sub_10052A950(v216);

      v220 = v219;
      v221 = v446;
      sub_100007204(v220, v446, &qword_1006B07D0);
      v222 = v487;
      if (v417(v221, 1, v487) == 1)
      {
        sub_100012DF0(v221, &qword_1006B07D0);
        v493 = 0u;
        v494 = 0u;
        v495 = 0;
      }

      else
      {
        *(&v494 + 1) = v222;
        v495 = sub_10021E650(&qword_1006B6908, &type metadata accessor for FMIPItem);
        v283 = sub_100008FC0(&v493);
        (v486[4])(v283, v221, v222);
      }

      type metadata accessor for FMFindingSession();
      FMIPItemGroup.name.getter();
      v284 = v213;
      v285 = *(sub_10007EBC0(&qword_1006B68B0) + 48);
      v286 = enum case for FMFindingType.owner(_:);
      v287 = type metadata accessor for FMFindingType();
      v288 = v448;
      (*(*(v287 - 8) + 104))(v448, v286, v287);
      v288[v285] = 0;
      (*(v456 + 104))(v288, enum case for FMFindingTechnology.proximity(_:), v457);
      v289 = FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingTechnology:arSession:)();
      if (v215)
      {

        sub_100012DF0(v458, &qword_1006B07D0);
        (*(v484 + 8))(v213, v483);
LABEL_97:
        (v490[1])(v489, v488);
LABEL_98:
        (*(v421 + 8))(v482, v466);
        return;
      }

      v306 = v289;
      sub_100012DF0(v458, &qword_1006B07D0);
      (*(v484 + 8))(v284, v483);
      goto LABEL_100;
    }

    v173 = *(v118 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken);
    v174 = v489;
    if (v173)
    {
      v175 = v173;
      FMIPDevice.baIdentifier.getter();
      if (v176)
      {
        v177 = v445;
        UUID.init(uuidString:)();

        v178 = v462;
        v179 = v461;
        if ((*(v462 + 48))(v177, 1, v461) == 1)
        {

          (v166[1])(v174, v488);
          (*(v421 + 8))(v119, v120);
          sub_100012DF0(v177, &unk_1006B20C0);
          return;
        }

        v491 = v175;
        v290 = v119;
        v291 = *(v178 + 32);
        v292 = v449;
        v487 = v178 + 32;
        v486 = v291;
        (v291)(v449, v177, v179);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v293 = type metadata accessor for Logger();
        sub_100005B14(v293, qword_1006D4630);
        v294 = v431;
        v295 = *(v178 + 16);
        v485 = (v178 + 16);
        v295(v431, v292, v179);
        v296 = Logger.logObject.getter();
        v297 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v296, v297))
        {
          v298 = v179;
          v299 = swift_slowAlloc();
          v300 = swift_slowAlloc();
          *&v493 = v300;
          *v299 = 136315138;
          sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID);
          v301 = dispatch thunk of CustomStringConvertible.description.getter();
          v302 = v294;
          v304 = v303;
          v479 = *(v462 + 8);
          (v479)(v302, v298);
          v305 = sub_100005B4C(v301, v304, &v493);

          *(v299 + 4) = v305;
          _os_log_impl(&_mh_execute_header, v296, v297, "FMDeviceDetailContentViewController: Find Button pressed, starting fast advertisement for device: %s.", v299, 0xCu);
          sub_100006060(v300);
          v118 = v492;
        }

        else
        {

          v479 = *(v462 + 8);
          (v479)(v294, v179);
        }

        v484 = *(v118 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperienceCoordinator);
        v314 = v290;
        v315 = FMIPDevice.baIdentifier.getter();
        v317 = v316;
        v318 = v433;
        v319 = v449;
        v320 = v461;
        v295(v433, v449, v461);
        v321 = (*(v462 + 80) + 16) & ~*(v462 + 80);
        v322 = swift_allocObject();
        (v486)(v322 + v321, v318, v320);
        sub_1001A3D30(v315, v317, 1, sub_10021F054, v322);

        v482 = v314;
        v484 = FMIPDevice.name.getter();
        v483 = v323;
        v295(v318, v319, v320);
        v324 = sub_10007EBC0(&qword_1006B68B0);
        v325 = *(v324 + 48);
        v326 = enum case for FMFindingType.device(_:);
        LODWORD(v486) = enum case for FMFindingType.device(_:);
        v327 = type metadata accessor for FMFindingType();
        v328 = *(v327 - 8);
        v485 = *(v328 + 104);
        v487 = v328 + 104;
        v329 = v437;
        (v485)(v437, v326, v327);
        v329[v325] = 1;
        LODWORD(v481) = enum case for FMFindingTechnology.proximity(_:);
        v480 = *(v456 + 104);
        v330 = v457;
        (v480)(v329);
        (*(v434 + 104))(v443, enum case for FMFindingProductType.device(_:), v435);
        v331 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
        (*(*(v331 - 8) + 56))(v444, 1, 1, v331);
        v332 = v491;
        v333 = v436;
        FMFindableObject.init(name:findingIdentifier:findingTechnology:findingProductType:videoInfo:discoveryToken:)();
        type metadata accessor for FMFindingSession();
        v334 = v465;
        *(&v494 + 1) = v465;
        v495 = &protocol witness table for FMFindableObject;
        v335 = sub_100008FC0(&v493);
        v336 = v463;
        (*(v463 + 16))(v335, v333, v334);
        v337 = *(v324 + 48);
        v338 = v438;
        (v485)(v438, v486, v327);
        v338[v337] = 1;
        (v480)(v338, v481, v330);
        v339 = v420;
        v340 = FMFindingSession.__allocating_init(findable:findingTechnology:arSession:)();
        if (v339)
        {

          (*(v336 + 8))(v333, v334);
          (v479)(v449, v461);
          goto LABEL_97;
        }

        v306 = v340;

        (*(v336 + 8))(v333, v334);
        (*(v462 + 8))(v449, v461);
LABEL_100:
        v341 = v466;
        v342 = v482;
        v343 = v452;
        *v452 = v306;
        swift_storeEnumTagMultiPayload();
        v344 = v492;
        v345 = *(*&v492[v476] + 40);
        v346 = *(*v345 + class metadata base offset for ManagedBuffer + 16);
        v347 = (*(*v345 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v345 + v347));
        v348 = v421;
        v349 = v451;
        (*(v421 + 16))(v451, v345 + v346, v341);
        os_unfair_lock_unlock((v345 + v347));

        v350 = v454;
        v351 = v453;
        v352 = v455;
        (*(v454 + 104))(v453, enum case for FMIPAnalyticsActionType.proximityFind(_:), v455);
        sub_10020D6E8(v349, v351);
        (*(v350 + 8))(v351, v352);
        v353 = *(v348 + 8);
        v353(v349, v341);
        sub_100161B04(v343, v344);
        sub_100458B70(v343);
        (v490[1])(v489, v488);
        sub_1002201E4(v343, type metadata accessor for FindingMode);
        v353(v342, v341);
        return;
      }
    }

    (v166[1])(v174, v488);
LABEL_84:
    (*(v421 + 8))(v119, v120);
    return;
  }

  v157 = v467;
  FMIPDevice.itemGroup.getter();
  v158 = v484;
  v159 = v483;
  if ((*(v484 + 48))(v157, 1, v483) == 1)
  {
    sub_100012DF0(v157, &unk_1006BB1C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_100005B14(v160, qword_1006D4630);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&_mh_execute_header, v161, v162, "FMDeviceDetailContentViewController: cannot start finding without item group", v163, 2u);
    }

    (v490[1])(v489, v488);
    goto LABEL_84;
  }

  v482 = v119;
  (*(v158 + 32))(v475, v157, v159);
  v180 = FMIPItemGroup.groupedItems.getter();
  v181 = v420;
  v487 = sub_1001D704C(v180, sub_1002206AC);
  v491 = v181;

  v182 = sub_10007EBC0(&unk_1006B4210);
  v183 = *(v182 + 48);
  v184 = enum case for FindingModel.nearbyInteraction(_:);
  LODWORD(v485) = enum case for FindingModel.nearbyInteraction(_:);
  v185 = type metadata accessor for FindingModel();
  v186 = *(v185 - 8);
  v481 = *(v186 + 104);
  v486 = (v186 + 104);
  v187 = v477;
  (v481)(v477, v184, v185);
  v188 = enum case for FMFindingType.owner(_:);
  LODWORD(v480) = enum case for FMFindingType.owner(_:);
  v189 = type metadata accessor for FMFindingType();
  v190 = *(*(v189 - 8) + 104);
  v190(&v187[v183], v188, v189);
  v191 = *(v474 + 104);
  v192 = v479;
  v191(v187, enum case for FindingExperienceType.proximity(_:), v479);
  v193 = *(v182 + 48);
  v194 = v468;
  (v481)(v468, v485, v185);
  v190(&v194[v193], v480, v189);
  v195 = v187;
  v191(v194, enum case for FindingExperienceType.precision(_:), v192);
  v196 = v463;
  v197 = v464;
  v198 = v465;
  v199 = (*(v463 + 56))(v464, 1, 1, v465);
  __chkstk_darwin(v199);
  *(&v416 - 4) = v194;
  *(&v416 - 3) = v195;
  *(&v416 - 2) = v492;
  *(&v416 - 1) = v197;
  v200 = v491;
  v201 = sub_100190878(sub_10021F0D4, (&v416 - 6), v487);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v202 = type metadata accessor for Logger();
  v203 = sub_100005B14(v202, qword_1006D4630);

  v491 = v203;
  v204 = Logger.logObject.getter();
  v205 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *&v493 = v207;
    *v206 = 136315138;
    sub_10007EBC0(&qword_1006B41C0);
    v208 = Array.description.getter();
    v210 = sub_100005B4C(v208, v209, &v493);

    *(v206 + 4) = v210;
    v197 = v464;
    _os_log_impl(&_mh_execute_header, v204, v205, "FMDeviceDetailContentViewController findables: %s", v206, 0xCu);
    sub_100006060(v207);

    v198 = v465;
  }

  v211 = v474;
  sub_10052A964(v201);

  v212 = v460;
  sub_100007204(v197, v460, &qword_1006B6900);
  if ((*(v196 + 48))(v212, 1, v198) == 1)
  {
    sub_100012DF0(v212, &qword_1006B6900);
    v493 = 0u;
    v494 = 0u;
    v495 = 0;
  }

  else
  {
    *(&v494 + 1) = v198;
    v495 = &protocol witness table for FMFindableObject;
    v223 = sub_100008FC0(&v493);
    (*(v196 + 32))(v223, v212, v198);
  }

  type metadata accessor for FMFindingSession();
  v224 = v475;
  FMIPItemGroup.name.getter();
  (*(v211 + 16))(v459, v477, v479);
  [objc_allocWithZone(ARSession) init];
  v225 = FMFindingSession.__allocating_init(itemGroupFindables:primaryPart:groupName:findingType:arSession:)();
  if (v200)
  {

    v226 = Logger.logObject.getter();
    v227 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&_mh_execute_header, v226, v227, "No valid FMFindingSession created for BT NI", v228, 2u);
    }

    (*(v484 + 8))(v224, v483);
    (v490[1])(v489, v488);
    (*(v421 + 8))(v482, v466);
    sub_100012DF0(v197, &qword_1006B6900);
    v229 = *(v211 + 8);
    v230 = v479;
    v229(v468, v479);
    v229(v477, v230);
  }

  else
  {
    v231 = v452;
    *v452 = v225;
    v487 = v225;
    swift_storeEnumTagMultiPayload();
    v232 = v492;
    v233 = *(*&v492[v476] + 40);
    v234 = *(*v233 + class metadata base offset for ManagedBuffer + 16);
    v235 = (*(*v233 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v233 + v235));
    v236 = v421;
    v237 = v211;
    v238 = v451;
    v239 = v466;
    (*(v421 + 16))(v451, v233 + v234, v466);
    os_unfair_lock_unlock((v233 + v235));

    v240 = v454;
    v241 = v453;
    v242 = v455;
    (*(v454 + 104))(v453, enum case for FMIPAnalyticsActionType.proximityFind(_:), v455);
    sub_10020D6E8(v238, v241);
    (*(v240 + 8))(v241, v242);
    v243 = *(v236 + 8);
    v243(v238, v239);
    sub_100161B04(v231, v232);
    sub_100458B70(v231);

    (*(v484 + 8))(v475, v483);
    (v490[1])(v489, v488);
    sub_1002201E4(v231, type metadata accessor for FindingMode);
    v243(v482, v239);
    sub_100012DF0(v464, &qword_1006B6900);
    v244 = *(v237 + 8);
    v245 = v479;
    v244(v468, v479);
    v244(v477, v245);
  }
}

uint64_t sub_1001FFE94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = v3;
  v53 = type metadata accessor for FMItemCapabilities();
  v8 = *(v53 - 8);
  v9 = __chkstk_darwin(v53);
  v52 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v39 - v11;
  v57 = type metadata accessor for FMIPItem();
  v12 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  LOBYTE(v13) = *(*a1 + 32);
  v15 = v13 & 0x3F;
  v16 = ((1 << v13) + 63) >> 6;
  v17 = (8 * v16);

  if (v15 <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_2:
      v40 = v16;
      v41 = a3;
      v42 = v5;
      v39 = &v39;
      __chkstk_darwin(v18);
      v43 = &v39 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v43, v17);
      a2 = 0;
      v54 = v14;
      v20 = *(v14 + 56);
      v14 += 56;
      v19 = v20;
      v44 = 0;
      v45 = v14;
      v21 = 1 << *(v14 - 24);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v19;
      v24 = v21 + 63;
      v25 = v8;
      v8 = v24 >> 6;
      v48 = (v25 + 8);
      v49 = v12 + 16;
      v47 = v12 + 8;
      while (1)
      {
        if (!v23)
        {
          v27 = a2;
          while (1)
          {
            a2 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_19;
            }

            if (a2 >= v8)
            {
              goto LABEL_16;
            }

            v28 = *(v45 + 8 * a2);
            ++v27;
            if (v28)
            {
              v26 = __clz(__rbit64(v28));
              v56 = (v28 - 1) & v28;
              goto LABEL_12;
            }
          }
        }

        v26 = __clz(__rbit64(v23));
        v56 = (v23 - 1) & v23;
LABEL_12:
        v29 = v26 | (a2 << 6);
        v30 = *(v54 + 48);
        v31 = *(v12 + 72);
        v46 = v29;
        v32 = v50;
        (*(v12 + 16))(v50, v30 + v31 * v29, v57);
        v5 = v51;
        FMIPItem.capabilities.getter();
        v16 = v52;
        static FMItemCapabilities.canBTFinding.getter();
        sub_10021E650(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
        a3 = v53;
        v55 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v14 = v12;
        v17 = v48;
        v33 = *v48;
        (*v48)(v16, a3);
        v33(v5, a3);
        v12 = v14;
        (*(v14 + 8))(v32, v57);
        v23 = v56;
        if (v55)
        {
          *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
          if (__OFADD__(v44++, 1))
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_16:
      v35 = sub_100215224(v43, v40, v44, v54);
      v5 = v42;
      a3 = v41;
      v14 = *(v35 + 16);
      if (!v14)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    v37 = swift_slowAlloc();
    v38 = sub_100213264(v37, v16, v14, a2);
    if (v5)
    {
      break;
    }

    v35 = v38;
    v5 = 0;

    v14 = *(v35 + 16);
    if (!v14)
    {
LABEL_24:

      v17 = _swiftEmptyArrayStorage;
LABEL_25:
      *a3 = v17;
      return result;
    }

LABEL_17:
    v17 = sub_10008C8B4(v14, 0);
    a2 = sub_1004A2330(&v58, &v17[(*(v12 + 80) + 32) & ~*(v12 + 80)], v14, v35);
    result = sub_10000BEC8();
    if (a2 == v14)
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002003D0@<X0>(uint64_t (*a1)(uint64_t, void, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a5;
  v105 = a4;
  v96 = a3;
  v117 = a2;
  v114 = a6;
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v106 = &v91 - v8;
  v9 = type metadata accessor for FMIPItem();
  v112 = *(v9 - 8);
  v113 = v9;
  __chkstk_darwin(v9);
  v107 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B32A8);
  __chkstk_darwin(v11 - 8);
  v104 = &v91 - v12;
  v13 = type metadata accessor for FMFindingProductType();
  __chkstk_darwin(v13 - 8);
  v103 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FindingExperienceType();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FMFindableObject();
  v116 = *(v118 - 8);
  v16 = __chkstk_darwin(v118);
  v91 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v92 = &v91 - v19;
  __chkstk_darwin(v18);
  v119 = &v91 - v20;
  v21 = type metadata accessor for FMItemCapabilities();
  v109 = *(v21 - 8);
  v110 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v91 - v25;
  v27 = sub_10007EBC0(&unk_1006B20C0);
  v28 = __chkstk_darwin(v27 - 8);
  v111 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v91 - v30;
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v99 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v91 - v36;
  v115 = a1;
  FMIPItem.identifier.getter();
  UUID.init(uuidString:)();

  v108 = *(v33 + 48);
  result = v108(v31, 1, v32);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v39 = objc_opt_self();
  v40 = *(v33 + 32);
  v98 = v33 + 32;
  v97 = v40;
  v40(v37, v31, v32);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v33 + 8))(v37, v32);
  v42 = [v39 generateDiscoveryTokenFromBeaconIdentifier:isa];

  if (!v42)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100005B14(v61, qword_1006D4630);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v118;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "No valid discoveryToken created for BT NI", v66, 2u);
    }

    return (*(v116 + 56))(v114, 1, 1, v65);
  }

  v95 = v33 + 48;
  v94 = v42;
  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canR1.getter();
  sub_10021E650(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v43 = v110;
  v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v109 + 8);
  v45(v24, v43);
  v45(v26, v43);
  if ((v44 & 1) == 0)
  {
    FMIPItem.capabilities.getter();
    static FMItemCapabilities.canR2.getter();
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v45(v24, v43);
    v45(v26, v43);
    v47 = v117;
    if ((v46 & 1) == 0)
    {
      v47 = v96;
    }

    v117 = v47;
  }

  FMIPItem.name.getter();
  FMIPItem.identifier.getter();
  v48 = v111;
  UUID.init(uuidString:)();

  result = v108(v48, 1, v32);
  if (result == 1)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v97(v99, v48, v32);
  (*(v100 + 16))(v102, v117, v101);
  FMIPItem.findingProductType.getter(v103);
  v49 = type metadata accessor for FMFindingUIAVPlayerVideoInfo();
  (*(*(v49 - 8) + 56))(v104, 1, 1, v49);
  v50 = v94;
  FMFindableObject.init(name:findingIdentifier:findingType:findingProductType:videoInfo:discoveryToken:)();
  v51 = *(v105 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v52 = v51 + *(type metadata accessor for FMDeviceDetailViewModel() + 36);
  v53 = v106;
  sub_100007204(v52, v106, &qword_1006B07D0);
  v55 = v112;
  v54 = v113;
  if ((*(v112 + 48))(v53, 1, v113) == 1)
  {
    sub_100012DF0(v53, &qword_1006B07D0);
    v56 = v118;
    goto LABEL_10;
  }

  (*(v55 + 32))(v107, v53, v54);
  v67 = FMIPItem.identifier.getter();
  v69 = v68;
  v70 = FMIPItem.identifier.getter();
  v56 = v118;
  if (v67 == v70 && v69 == v71)
  {
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v73 & 1) == 0)
    {
      (*(v55 + 8))(v107, v54);
LABEL_10:
      v57 = v119;
      v58 = FMIPItem.primaryItemPart.getter();

      if (v58)
      {
        v59 = v116 + 32;
        v60 = v114;
        (*(v116 + 32))(v114, v57, v56);
        return (*(v59 + 24))(v60, 0, 1, v56);
      }

      else
      {
        v72 = v116 + 8;
        (*(v116 + 8))(v57, v56);
        return (*(v72 + 48))(v114, 1, 1, v56);
      }
    }
  }

  v74 = v93;
  sub_100012DF0(v93, &qword_1006B6900);
  v75 = v116;
  v76 = *(v116 + 16);
  v77 = v119;
  v76(v74, v119, v56);
  v78 = *(v75 + 56);
  v117 = v75 + 56;
  v115 = v78;
  v78(v74, 0, 1, v56);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_100005B14(v79, qword_1006D4630);
  v80 = v92;
  v76(v92, v77, v56);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v120 = v84;
    *v83 = 136315138;
    v76(v91, v80, v118);
    v85 = String.init<A>(describing:)();
    v87 = v86;
    v88 = v116;
    (*(v116 + 8))(v80, v118);
    v89 = sub_100005B4C(v85, v87, &v120);

    *(v83 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v81, v82, "FMDeviceDetailContentViewController primarySelectedPart: %s", v83, 0xCu);
    sub_100006060(v84);
    v56 = v118;
  }

  else
  {

    v88 = v116;
    (*(v116 + 8))(v80, v56);
  }

  (*(v112 + 8))(v107, v113);
  v90 = v114;
  (*(v88 + 32))(v114, v119, v56);
  return v115(v90, 0, 1, v56);
}

uint64_t sub_100201118()
{
  v0 = type metadata accessor for FMItemCapabilities();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  FMIPItem.capabilities.getter();
  static FMItemCapabilities.canBTFinding.getter();
  sub_10021E650(&qword_1006B4180, &type metadata accessor for FMItemCapabilities);
  v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_100201280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  (*(v6 + 16))(v8, a3, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v12 = 136315394;
    sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = sub_100005B4C(v13, v15, &v21);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v20 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v17 = String.init<A>(describing:)();
    v19 = sub_100005B4C(v17, v18, &v21);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMDeviceDetailContentViewController: Fast advertisement stated for device: %s. With error?: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1002015AC(uint64_t a1)
{
  v91 = sub_10007EBC0(&unk_1006B6800);
  v3 = *(v91 - 8);
  __chkstk_darwin(v91);
  v86 = &v82 - v4;
  v5 = sub_10007EBC0(&qword_1006B68D0);
  __chkstk_darwin(v5 - 8);
  v104 = &v82 - v6;
  v7 = sub_10007EBC0(&qword_1006B68F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - v8;
  v10 = sub_10007EBC0(&unk_1006B0000);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v82 - v15;
  __chkstk_darwin(v14);
  v89 = &v82 - v17;
  v18 = type metadata accessor for Date();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = __chkstk_darwin(v18);
  v83 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v84 = &v82 - v22;
  __chkstk_darwin(v21);
  v87 = &v82 - v23;
  v24 = type metadata accessor for DeviceLostModeReportingState();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v85 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v100 = &v82 - v28;
  v29 = type metadata accessor for FMIPDevice();
  v109 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v108 = &v82 - v33;
  v34 = type metadata accessor for FMDeviceDetailViewModel();
  v105 = v9;
  v106 = v34;
  v35 = *(v34 + 96);
  v99 = a1;
  v36 = *(a1 + v35);
  v90 = v3;
  v101 = v25;
  v102 = v24;
  v88 = v13;
  v96 = v16;
  if ((v36 & 0x10) != 0)
  {
    v94 = 1;
    v107 = 1;
    if ((v36 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v94 = (v36 >> 6) & 1;
  if ((v36 & 0x20) == 0)
  {
LABEL_5:
    v37 = (v36 >> 7) & 1;
    goto LABEL_6;
  }

  v37 = 1;
LABEL_6:
  v107 = v37;
LABEL_7:
  v103 = v1;
  v38 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
  v39 = *(*v38 + class metadata base offset for ManagedBuffer + 16);
  v40 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v38 + v40));
  v41 = v108;
  v42 = *(v109 + 16);
  v42(v108, v38 + v39, v29);
  os_unfair_lock_unlock((v38 + v40));

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100005B14(v43, qword_1006D4630);
  v42(v32, v41, v29);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v92 = v36 & 0x200;
  v93 = v29;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v110[0] = swift_slowAlloc();
    *v47 = 136316419;
    *(v47 + 4) = sub_100005B4C(0xD000000000000016, 0x8000000100586E00, v110);
    *(v47 + 12) = 2160;
    *(v47 + 14) = 1752392040;
    *(v47 + 22) = 2081;
    v48 = FMIPDevice.identifier.getter();
    v50 = v49;
    v95 = *(v109 + 8);
    v95(v32, v29);
    v51 = sub_100005B4C(v48, v50, v110);

    *(v47 + 24) = v51;
    *(v47 + 32) = 1024;
    v52 = v94;
    *(v47 + 34) = v94;
    *(v47 + 38) = 1024;
    *(v47 + 40) = v107;
    *(v47 + 44) = 1024;
    *(v47 + 46) = (v36 & 0x200) >> 9;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s selectedDevice %{private,mask.hash}s\nisActive:%{BOOL}d isPending:%{BOOL}d isStopPending:%{BOOL}d", v47, 0x32u);
    swift_arrayDestroy();

    v53 = v104;
    v54 = v101;
    v55 = v102;
    v57 = v97;
    v56 = v98;
    v58 = v96;
    v59 = v99;
    v60 = v100;
    if (!v52)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v95 = *(v109 + 8);
    v95(v32, v29);
    v53 = v104;
    v54 = v101;
    v55 = v102;
    v57 = v97;
    v56 = v98;
    v58 = v96;
    v59 = v99;
    v60 = v100;
    if (!v94)
    {
      goto LABEL_15;
    }
  }

  v61 = v89;
  sub_100007204(v59 + *(v106 + 132), v89, &unk_1006B0000);
  if ((*(v57 + 48))(v61, 1, v56) != 1)
  {
    v67 = *(v57 + 32);
    v68 = v87;
    v67(v87, v61, v56);
    v67(v60, v68, v56);
    v66 = &enum case for DeviceLostModeReportingState.hasAlreadyReported(_:);
    v65 = v108;
    v63 = v93;
    goto LABEL_29;
  }

  sub_100012DF0(v61, &unk_1006B0000);
LABEL_15:
  v62 = v92;
  v63 = v93;
  if (v107)
  {
    sub_100007204(v59 + *(v106 + 132), v58, &unk_1006B0000);
    if ((*(v57 + 48))(v58, 1, v56) != 1)
    {
      v69 = *(v57 + 32);
      v70 = v84;
      v69(v84, v58, v56);
      v69(v60, v70, v56);
      v66 = &enum case for DeviceLostModeReportingState.startPending(_:);
      goto LABEL_28;
    }

    sub_100012DF0(v58, &unk_1006B0000);
  }

  if (v62)
  {
    v64 = v88;
    sub_100007204(v59 + *(v106 + 132), v88, &unk_1006B0000);
    if ((*(v57 + 48))(v64, 1, v56) == 1)
    {
      sub_100012DF0(v64, &unk_1006B0000);
      goto LABEL_21;
    }

    v71 = *(v57 + 32);
    v72 = v83;
    v71(v83, v64, v56);
    v71(v60, v72, v56);
    v66 = &enum case for DeviceLostModeReportingState.stopPending(_:);
LABEL_28:
    v65 = v108;
    goto LABEL_29;
  }

LABEL_21:
  v65 = v108;
  if (FMIPDevice.isLocalFindable.getter() & 1) != 0 && (*(v59 + *(v106 + 160)))
  {
    v66 = &enum case for DeviceLostModeReportingState.unavailable(_:);
  }

  else
  {
    v66 = &enum case for DeviceLostModeReportingState.notStarted(_:);
  }

LABEL_29:
  (*(v54 + 104))(v60, *v66, v55);
  v73 = *(v103 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lostModeStatusCoordinator);
  if (v73)
  {
    v74 = OBJC_IVAR____TtC6FindMyP33_FDB0C6A0A8911E0A6244ECE6337EF12425LostModeStatusCoordinator_continuation;
    swift_beginAccess();
    sub_100007204(v73 + v74, v53, &qword_1006B68D0);
    v75 = v90;
    v76 = v91;
    if ((*(v90 + 48))(v53, 1, v91))
    {
      (*(v54 + 8))(v60, v55);
      v95(v65, v63);
      sub_100012DF0(v53, &qword_1006B68D0);
      v77 = 1;
    }

    else
    {
      v78 = v86;
      (*(v75 + 16))(v86, v53, v76);
      sub_100012DF0(v53, &qword_1006B68D0);
      (*(v54 + 16))(v85, v60, v55);
      AsyncStream.Continuation.yield(_:)();
      (*(v75 + 8))(v78, v76);
      (*(v54 + 8))(v60, v55);
      v95(v65, v63);
      v77 = 0;
    }
  }

  else
  {
    (*(v54 + 8))(v60, v55);
    v95(v65, v63);
    v77 = 1;
  }

  v79 = sub_10007EBC0(&qword_1006B68F8);
  v80 = v105;
  (*(*(v79 - 8) + 56))(v105, v77, 1, v79);
  return sub_100012DF0(v80, &qword_1006B68F0);
}
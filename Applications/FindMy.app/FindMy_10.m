void sub_100111068(char a1)
{
  v2 = v1;
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
    *v7 = 67109120;
    *(v7 + 4) = *(v2 + 88);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMMediator: Start refreshing. already refreshing?: %{BOOL}d", v7, 8u);

    if (*(v2 + 88))
    {
      return;
    }
  }

  else
  {

    if (*(v2 + 88))
    {
      return;
    }
  }

  sub_1000BE7E0();
  sub_10041E9CC();
  *(*(v2 + 24) + 48) = 0;
  if (a1)
  {
    FMIPManager.forceStartRefreshing()();
  }

  else
  {
    FMIPManager.startRefreshing()();
  }

  sub_100529478(1);
  *(v2 + 88) = 1;
}

void sub_1001111D0()
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
    *v5 = 67109120;
    *(v5 + 4) = *(v1 + 88);

    _os_log_impl(&_mh_execute_header, v3, v4, "FMMediator: Stop refreshing. already refreshing?: %{BOOL}d", v5, 8u);
  }

  else
  {
  }

  if (*(v1 + 88) == 1)
  {
    v6 = *(v1 + 16);
    [*(v6 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_radioPreferences) setDelegate:0];
    sub_1004210CC();
    [*(v6 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_networkMonitor) stopMonitoring];
    sub_10041ECA8();
    *(*(v1 + 24) + 48) = 1;
    FMIPManager.stopRefreshing()();
    sub_100529624();
    sub_1000BE8F0();
    *(v1 + 88) = 0;
  }
}

uint64_t sub_100111350(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10007EBC0(&qword_1006B2B78);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = a1;
  static UTAlertCommand.commandFor(url:)(&v18 - v8);
  v11 = sub_10007EBC0(&qword_1006B2B80);
  LODWORD(a1) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_100012DF0(v9, &qword_1006B2B78);
  if (a1 == 1)
  {
    v12 = v10;
    (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v4);
    sub_100007204(v19, v20, &unk_1006B8740);
    v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    (*(v5 + 32))(v14 + v13, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v15 = (v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
    v16 = v20[1];
    *v15 = v20[0];
    v15[1] = v16;

    sub_1000E70E8(v12, sub_10011EE90, v14);
  }

  else
  {
    sub_10000EFDC();
    sub_1002B904C(v10, v19);
  }
}

uint64_t sub_1001115CC(uint64_t a1, void (**a2)(void, void), uint64_t (*a3)(), uint64_t (*a4)(void), uint64_t (*a5)())
{
  v645 = a4;
  v646 = a5;
  v647 = a2;
  v648 = a3;
  v644 = a1;
  v5 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v5 - 8);
  v577 = &v544 - v6;
  v574 = type metadata accessor for FMIPBeaconShare();
  v573 = *(v574 - 8);
  __chkstk_darwin(v574);
  v563 = &v544 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v8 - 8);
  v591 = &v544 - v9;
  v587 = type metadata accessor for UUID();
  v586 = *(v587 - 8);
  __chkstk_darwin(v587);
  v580 = &v544 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v594 = type metadata accessor for URL();
  v593 = *(v594 - 8);
  v11 = __chkstk_darwin(v594);
  v583 = &v544 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v592 = &v544 - v13;
  v623 = type metadata accessor for DispatchWorkItemFlags();
  v622 = *(v623 - 8);
  __chkstk_darwin(v623);
  v619 = &v544 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v621 = type metadata accessor for DispatchQoS();
  v620 = *(v621 - 8);
  __chkstk_darwin(v621);
  v618 = &v544 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v630 = type metadata accessor for DispatchTime();
  v624 = *(v630 - 8);
  v16 = __chkstk_darwin(v630);
  v628 = &v544 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v629 = &v544 - v18;
  v19 = sub_10007EBC0(&qword_1006B2B70);
  v616 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v617 = &v544 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v615 = v21;
  __chkstk_darwin(v20);
  v638 = &v544 - v22;
  v635 = type metadata accessor for FMSelectedSection();
  v636 = *(v635 - 8);
  v23 = __chkstk_darwin(v635);
  v569 = &v544 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v579 = &v544 - v26;
  v27 = __chkstk_darwin(v25);
  v627 = &v544 - v28;
  v612 = v29;
  __chkstk_darwin(v27);
  v637 = (&v544 - v30);
  v585 = type metadata accessor for FMIPItem();
  v584 = *(v585 - 8);
  v31 = __chkstk_darwin(v585);
  v562 = &v544 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v578 = &v544 - v34;
  __chkstk_darwin(v33);
  v568 = &v544 - v35;
  v561 = sub_10007EBC0(&qword_1006B07D0);
  v36 = __chkstk_darwin(v561);
  v576 = &v544 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v575 = &v544 - v39;
  v40 = __chkstk_darwin(v38);
  v565 = &v544 - v41;
  v42 = __chkstk_darwin(v40);
  v560 = &v544 - v43;
  v44 = __chkstk_darwin(v42);
  v564 = &v544 - v45;
  __chkstk_darwin(v44);
  v567 = &v544 - v46;
  v47 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v47 - 8);
  v566 = &v544 - v48;
  v608 = type metadata accessor for FMIPDevice();
  v601 = *(v608 - 8);
  v49 = __chkstk_darwin(v608);
  v595 = &v544 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v600 = &v544 - v51;
  v52 = sub_10007EBC0(&unk_1006BBCE0);
  v53 = __chkstk_darwin(v52 - 8);
  v596 = &v544 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v571 = &v544 - v56;
  v57 = __chkstk_darwin(v55);
  v570 = &v544 - v58;
  v59 = __chkstk_darwin(v57);
  v602 = &v544 - v60;
  v61 = __chkstk_darwin(v59);
  v581 = &v544 - v62;
  __chkstk_darwin(v61);
  v588 = &v544 - v63;
  v641 = type metadata accessor for FMPendingInfo();
  v639 = *(v641 - 8);
  v64 = __chkstk_darwin(v641);
  v607 = &v544 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __chkstk_darwin(v64);
  v609 = &v544 - v67;
  v68 = __chkstk_darwin(v66);
  v599 = &v544 - v69;
  __chkstk_darwin(v68);
  v604 = (&v544 - v70);
  v71 = type metadata accessor for FMIPURLAction();
  v72 = *(v71 - 8);
  v642 = v71;
  v643 = v72;
  __chkstk_darwin(v71);
  v582 = &v544 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v597 = sub_10007EBC0(&qword_1006B2B88);
  __chkstk_darwin(v597);
  v598 = &v544 - v74;
  v611 = type metadata accessor for FMSelectionPendingAction(0);
  v610 = *(v611 - 8);
  __chkstk_darwin(v611);
  v603 = &v544 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10007EBC0(&qword_1006B2B68);
  v613 = *(v76 - 8);
  v77 = *(v613 + 64);
  v78 = __chkstk_darwin(v76 - 8);
  v614 = &v544 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v640 = &v544 - v79;
  v80 = sub_10007EBC0(&qword_1006B1310);
  v634 = *(v80 - 8);
  v81 = *(v634 + 64);
  v82 = __chkstk_darwin(v80 - 8);
  v572 = &v544 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v82);
  v590 = &v544 - v84;
  v85 = __chkstk_darwin(v83);
  v589 = &v544 - v86;
  v87 = __chkstk_darwin(v85);
  v626 = &v544 - v88;
  v89 = __chkstk_darwin(v87);
  v625 = &v544 - v90;
  v91 = __chkstk_darwin(v89);
  v606 = &v544 - v92;
  v93 = __chkstk_darwin(v91);
  v605 = &v544 - v94;
  v95 = __chkstk_darwin(v93);
  v632 = &v544 - v96;
  v97 = __chkstk_darwin(v95);
  v631 = &v544 - v98;
  v99 = __chkstk_darwin(v97);
  v633 = &v544 - v100;
  v101 = __chkstk_darwin(v99);
  v103 = &v544 - v102;
  v104 = __chkstk_darwin(v101);
  v106 = &v544 - v105;
  v107 = __chkstk_darwin(v104);
  v109 = &v544 - v108;
  v110 = __chkstk_darwin(v107);
  v112 = &v544 - v111;
  v113 = __chkstk_darwin(v110);
  v115 = &v544 - v114;
  v116 = __chkstk_darwin(v113);
  v118 = &v544 - v117;
  v119 = __chkstk_darwin(v116);
  v121 = &v544 - v120;
  __chkstk_darwin(v119);
  v123 = &v544 - v122;
  v124 = sub_10007EBC0(&qword_1006B1318);
  v125 = __chkstk_darwin(v124 - 8);
  v126 = __chkstk_darwin(v125);
  v127 = __chkstk_darwin(v126);
  __chkstk_darwin(v127);
  v129 = __chkstk_darwin(&v544 - v128);
  if (!v647)
  {
    v557 = v121;
    v559 = v129;
    v556 = v118;
    v552 = v115;
    v553 = v133;
    v554 = v132;
    v548 = v131;
    v549 = v112;
    v550 = v109;
    v547 = v106;
    v555 = v77;
    v551 = v103;
    v647 = (&v544 - v130);
    v135 = v644;
    sub_100007204(v644, v123, &qword_1006B1310);
    v136 = type metadata accessor for FMIPURLInfo();
    v137 = *(v136 - 8);
    v558 = *(v137 + 48);
    if (v558(v123, 1, v136) == 1)
    {
      sub_100012DF0(v123, &qword_1006B1310);
      v138 = v647;
      (*(v643 + 56))(v647, 1, 1, v642);
LABEL_8:
      v147 = v637;
      v148 = v635;
      swift_storeEnumTagMultiPayload();
      v149 = v638;
      (*(v636 + 56))(v638, 1, 1, v148);
      v150 = v640;
      (*(v639 + 56))(v640, 1, 1, v641);
      sub_10011C64C(v147, v149, v150);
      sub_100012DF0(v150, &qword_1006B2B68);
      sub_100012DF0(v149, &qword_1006B2B70);
      sub_100029F20(v147, type metadata accessor for FMSelectedSection);
LABEL_9:
      v151 = &qword_1006B1318;
      v152 = v138;
      return sub_100012DF0(v152, v151);
    }

    v139 = v135;
    v546 = v137 + 48;
    v138 = v647;
    FMIPURLInfo.action.getter();
    v141 = *(v137 + 8);
    v140 = v137 + 8;
    v545 = v136;
    v544 = v141;
    v141(v123, v136);
    v143 = v642;
    v142 = v643;
    v144 = *(v643 + 48);
    v145 = (v144)(v138, 1, v642);
    v146 = v648;
    if (v145 == 1)
    {
      goto LABEL_8;
    }

    v153 = v559;
    sub_100007204(v138, v559, &qword_1006B1318);
    v154 = (*(v142 + 88))(v153, v143);
    if (v154 == enum case for FMIPURLAction.lostMode(_:) || v154 == enum case for FMIPURLAction.playSound(_:) || v154 == enum case for FMIPURLAction.selectDevice(_:) || v154 == enum case for FMIPURLAction.showActions(_:))
    {
      sub_100012DF0(v138, &qword_1006B1318);
      v159 = v557;
      sub_100007204(v139, v557, &qword_1006B1310);
      v160 = (*(v634 + 80) + 24) & ~*(v634 + 80);
      v161 = swift_allocObject();
      *(v161 + 16) = v146;
      sub_100035318(v159, v161 + v160, &qword_1006B1310);

      FMIPManager.refreshBeacons(completion:)();
    }

    if (v154 == enum case for FMIPURLAction.selectItem(_:))
    {
      v155 = v633;
      sub_100007204(v139, v633, &qword_1006B1310);
      v156 = v545;
      if (v558(v155, 1, v545) == 1)
      {
        sub_100012DF0(v155, &qword_1006B1310);
        v157 = 0;
        v158 = 0;
      }

      else
      {
        v157 = FMIPURLInfo.identifier.getter();
        v158 = v167;
        v544(v155, v156);
      }

      v168 = v640;
      (*(v639 + 56))(v640, 1, 1, v641);
      sub_10011A6EC(v157, v158, v168, 1);

      v169 = v168;
LABEL_36:
      sub_100012DF0(v169, &qword_1006B2B68);
      goto LABEL_9;
    }

    if (v154 == enum case for FMIPURLAction.selectItemSerial(_:))
    {
      v162 = v631;
      sub_100007204(v139, v631, &qword_1006B1310);
      v163 = v545;
      v164 = v558;
      if (v558(v162, 1, v545) == 1)
      {
        sub_100012DF0(v162, &qword_1006B1310);
        v165 = 0;
        v166 = 0;
      }

      else
      {
        v165 = FMIPURLInfo.identifier.getter();
        v166 = v180;
        v544(v162, v163);
      }

      v181 = v632;
      sub_100007204(v139, v632, &qword_1006B1310);
      v182 = v164(v181, 1, v163);
      v183 = v639;
      v184 = v641;
      if (v182 == 1)
      {
        sub_100012DF0(v181, &qword_1006B1310);
        v185 = 0;
        v186 = 0;
      }

      else
      {
        v185 = FMIPURLInfo.manufacturer.getter();
        v186 = v187;
        v544(v181, v163);
      }

      v188 = v640;
      (*(v183 + 56))(v640, 1, 1, v184);
      sub_10011B3EC(v165, v166, v185, v186, v188, 1);

      v169 = v188;
      goto LABEL_36;
    }

    v170 = v639;
    v171 = v641;
    if (v154 == enum case for FMIPURLAction.lowBattery(_:) || v154 == enum case for FMIPURLAction.localnotifywhenfound(_:))
    {
      sub_100012DF0(v647, &qword_1006B1318);
      v176 = v556;
      sub_100007204(v139, v556, &qword_1006B1310);
      v177 = v545;
      if (v558(v176, 1, v545) == 1)
      {
        sub_100012DF0(v176, &qword_1006B1310);
        v178 = 0;
        v179 = 0;
      }

      else
      {
        v178 = FMIPURLInfo.identifier.getter();
        v179 = v189;
        v544(v176, v177);
      }

      v190 = v640;
      (*(v170 + 56))(v640, 1, 1, v171);
      sub_10011A6EC(v178, v179, v190, 0);

      v151 = &qword_1006B2B68;
      v152 = v190;
      return sub_100012DF0(v152, v151);
    }

    if (v154 == enum case for FMIPURLAction.notify(_:))
    {
      v172 = v625;
      sub_100007204(v139, v625, &qword_1006B1310);
      v173 = v545;
      if (v558(v172, 1, v545) == 1)
      {
        sub_100012DF0(v172, &qword_1006B1310);
        v174 = 0;
        v175 = 0;
      }

      else
      {
        v174 = FMIPURLInfo.identifier.getter();
        v175 = v214;
        v544(v172, v173);
      }

      v215 = v626;
      sub_100007204(v139, v626, &qword_1006B1310);
      if (v558(v215, 1, v173) == 1)
      {
        sub_100012DF0(v215, &qword_1006B1310);
        v216 = 0;
        v217 = 0;
      }

      else
      {
        v216 = FMIPURLInfo.partIdentifier.getter();
        v217 = v232;
        v544(v215, v173);
      }

      v233 = v640;
      (*(v170 + 56))(v640, 1, 1, v171);
      sub_100117634(v174, v175, v216, v217, v233, 0, 1);

      sub_100012DF0(v233, &qword_1006B2B68);
      goto LABEL_62;
    }

    if (v154 == enum case for FMIPURLAction.showAllItems(_:))
    {
      v191 = v637;
      v192 = v635;
      swift_storeEnumTagMultiPayload();
      v193 = v636 + 56;
      v194 = v638;
      (*(v636 + 56))(v638, 1, 1, v192);
      v195 = v640;
      (*(v170 + 56))(v640, 1, 1, v171);
      sub_10000905C(0, &qword_1006AEDC0);
      v645 = static OS_dispatch_queue.main.getter();
      v196 = v628;
      static DispatchTime.now()();
      + infix(_:_:)();
      v646 = *(v624 + 8);
      (v646)(v196, v630);
      v197 = swift_allocObject();
      swift_weakInit();
      v648 = type metadata accessor for FMSelectedSection;
      v198 = v191;
      v199 = v627;
      sub_1000279D8(v198, v627, type metadata accessor for FMSelectedSection);
      v200 = v617;
      sub_100007204(v194, v617, &qword_1006B2B70);
      v201 = v614;
      sub_100007204(v195, v614, &qword_1006B2B68);
      v202 = (*(v193 + 24) + 24) & ~*(v193 + 24);
      v203 = (v612 + *(v616 + 80) + v202) & ~*(v616 + 80);
      v204 = (v615 + *(v613 + 80) + v203) & ~*(v613 + 80);
      v205 = swift_allocObject();
      *(v205 + 16) = v197;
      sub_100056FB4(v199, v205 + v202, type metadata accessor for FMSelectedSection);
      sub_100035318(v200, v205 + v203, &qword_1006B2B70);
      sub_100035318(v201, v205 + v204, &qword_1006B2B68);
      v655 = sub_10011FB60;
      v656 = v205;
      aBlock = _NSConcreteStackBlock;
      v652 = 1107296256;
      v653 = sub_100004AE4;
      v654 = &unk_1006282A8;
      v206 = _Block_copy(&aBlock);

      v207 = v618;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v208 = v619;
      v209 = v623;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v210 = v629;
      v211 = v645;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v206);

      (*(v622 + 8))(v208, v209);
      (*(v620 + 8))(v207, v621);
      (v646)(v210, v630);
      sub_100012DF0(v640, &qword_1006B2B68);
      sub_100012DF0(v638, &qword_1006B2B70);
      v212 = v637;
      v213 = v648;
LABEL_61:
      sub_100029F20(v212, v213);
      goto LABEL_62;
    }

    v633 = v144;
    v634 = v140;
    v218 = v638;
    v219 = v636;
    v220 = v635;
    v221 = v628;
    v222 = v627;
    if (v154 == enum case for FMIPURLAction.remove(_:))
    {
      v223 = v641;
      v224 = *(v641 + 20);
      v225 = v607;
      v226 = v611;
      swift_storeEnumTagMultiPayload();
      (*(v610 + 56))(&v225[v224], 0, 1, v226);
      *v225 = 0;
      v227 = v644;
      v228 = v605;
      sub_100007204(v644, v605, &qword_1006B1310);
      v229 = v545;
      if (v558(v228, 1, v545) == 1)
      {
        sub_100012DF0(v228, &qword_1006B1310);
        v230 = 0;
        v231 = 0;
      }

      else
      {
        v230 = FMIPURLInfo.identifier.getter();
        v256 = v228;
        v231 = v257;
        v544(v256, v229);
      }

      v258 = v606;
      sub_100007204(v227, v606, &qword_1006B1310);
      if (v558(v258, 1, v229) == 1)
      {
        sub_100012DF0(v258, &qword_1006B1310);
        v259 = 0;
        v260 = 0;
      }

      else
      {
        v266 = v258;
        v259 = FMIPURLInfo.manufacturer.getter();
        v260 = v267;
        v544(v266, v229);
      }

      v268 = v640;
      sub_1000279D8(v225, v640, type metadata accessor for FMPendingInfo);
      (*(v170 + 56))(v268, 0, 1, v223);
      sub_10011B3EC(v230, v231, v259, v260, v268, 1);

      sub_100012DF0(v268, &qword_1006B2B68);
      v212 = v225;
      v213 = type metadata accessor for FMPendingInfo;
      goto LABEL_61;
    }

    if (v154 == enum case for FMIPURLAction.setup(_:))
    {
      v234 = *(v641 + 20);
      v235 = v609;
      v236 = v611;
      swift_storeEnumTagMultiPayload();
      (*(v610 + 56))(&v235[v234], 0, 1, v236);
      *v235 = 0;
      v237 = v637;
      swift_storeEnumTagMultiPayload();
      v238 = *(v219 + 56);
      v636 = v219 + 56;
      v238(v218, 1, 1, v220);
      v646 = type metadata accessor for FMPendingInfo;
      v239 = v235;
      v240 = v222;
      v241 = v640;
      sub_1000279D8(v239, v640, type metadata accessor for FMPendingInfo);
      (*(v170 + 56))(v241, 0, 1, v641);
      sub_10000905C(0, &qword_1006AEDC0);
      v644 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v645 = *(v624 + 8);
      (v645)(v221, v630);
      v242 = swift_allocObject();
      swift_weakInit();
      v648 = type metadata accessor for FMSelectedSection;
      sub_1000279D8(v237, v222, type metadata accessor for FMSelectedSection);
      v243 = v218;
      v244 = v617;
      sub_100007204(v243, v617, &qword_1006B2B70);
      v245 = v614;
      sub_100007204(v241, v614, &qword_1006B2B68);
      v246 = (*(v636 + 24) + 24) & ~*(v636 + 24);
      v247 = (v612 + *(v616 + 80) + v246) & ~*(v616 + 80);
      v248 = (v615 + *(v613 + 80) + v247) & ~*(v613 + 80);
      v249 = swift_allocObject();
      *(v249 + 16) = v242;
      sub_100056FB4(v240, v249 + v246, type metadata accessor for FMSelectedSection);
      sub_100035318(v244, v249 + v247, &qword_1006B2B70);
      sub_100035318(v245, v249 + v248, &qword_1006B2B68);
      v655 = sub_10011FB60;
      v656 = v249;
      aBlock = _NSConcreteStackBlock;
      v652 = 1107296256;
      v653 = sub_100004AE4;
      v654 = &unk_100628258;
      v250 = _Block_copy(&aBlock);

      v251 = v618;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v252 = v619;
      v253 = v623;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v254 = v629;
      v255 = v644;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v250);

      (*(v622 + 8))(v252, v253);
      (*(v620 + 8))(v251, v621);
      (v645)(v254, v630);
      sub_100012DF0(v640, &qword_1006B2B68);
      sub_100012DF0(v638, &qword_1006B2B70);
      sub_100029F20(v637, v648);
      v212 = v609;
      v213 = v646;
      goto LABEL_61;
    }

    v261 = enum case for FMIPURLAction.separation(_:);
    if (v154 != enum case for FMIPURLAction.separation(_:) && v154 != enum case for FMIPURLAction.safeLocation(_:))
    {
      if (v154 != enum case for FMIPURLAction.addSharedItem(_:))
      {
        (*(v643 + 8))(v559, v143);
        v138 = v647;
        goto LABEL_8;
      }

      v262 = v644;
      v263 = v589;
      sub_100007204(v644, v589, &qword_1006B1310);
      v264 = v545;
      v265 = v558;
      if (v558(v263, 1, v545) == 1)
      {
        sub_100012DF0(v263, &qword_1006B1310);
LABEL_62:
        v151 = &qword_1006B1318;
        v152 = v647;
        return sub_100012DF0(v152, v151);
      }

      v323 = v583;
      FMIPURLInfo.originalURL.getter();
      v544(v263, v264);
      (*(v593 + 32))(v592, v323, v594);
      v324 = v262;
      v325 = v590;
      sub_100007204(v324, v590, &qword_1006B1310);
      if (v265(v325, 1, v264) == 1)
      {
        (*(v593 + 8))(v592, v594);
        sub_100012DF0(v590, &qword_1006B1310);
        (*(v586 + 56))(v591, 1, 1, v587);
LABEL_96:
        sub_100012DF0(v591, &unk_1006B20C0);
        goto LABEL_62;
      }

      v326 = v591;
      v327 = v590;
      FMIPURLInfo.sharingUUID.getter();
      v544(v327, v545);
      if ((*(v586 + 48))(v326, 1, v587) == 1)
      {
        (*(v593 + 8))(v592, v594);
        goto LABEL_96;
      }

      v362 = v580;
      v363 = (*(v586 + 32))(v580, v591, v587);
      v364 = *(*(v648 + 3) + 64);
      __chkstk_darwin(v363);
      *(&v544 - 2) = v362;

      v365 = v577;
      sub_100034200(sub_10011EF40, v364, &type metadata accessor for FMIPBeaconShare, v577);

      if ((*(v573 + 48))(v365, 1, v574) == 1)
      {
        sub_100012DF0(v577, &unk_1006C0240);
        (*(v584 + 56))(v576, 1, 1, v585);
        goto LABEL_145;
      }

      v408 = v573;
      v409 = v563;
      v410 = v574;
      (*(v573 + 32))(v563, v577, v574);
      v411 = FMIPManager.items.getter();
      __chkstk_darwin(v411);
      *(&v544 - 2) = v409;
      v412 = v576;
      sub_100034200(sub_10011EF60, v411, &type metadata accessor for FMIPItem, v576);

      (*(v408 + 8))(v409, v410);
      if ((*(v584 + 48))(v412, 1, v585) == 1)
      {
LABEL_145:
        sub_100012DF0(v576, &qword_1006B07D0);
        v413 = sub_10007EBC0(&qword_1006B6BD0);
        v414 = *(v413 + 48);
        v415 = *(v413 + 64);
        v416 = v579;
        (*(v593 + 16))(v579, v592, v594);
        (*(v586 + 16))(v416 + v414, v580, v587);
        v417 = v572;
        sub_100007204(v644, v572, &qword_1006B1310);
        if (v558(v417, 1, v545) == 1)
        {
          sub_100012DF0(v572, &qword_1006B1310);
          v418 = 0;
        }

        else
        {
          v428 = v572;
          v429 = FMIPURLInfo.isPartnerURL.getter();
          v544(v428, v545);
          v418 = v429 & 1;
        }

        *(v579 + v415) = v418;
        swift_storeEnumTagMultiPayload();
        v430 = *(v648 + 7);
        v431 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_1000279D8(v430 + v431, v569, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload() != 17)
        {
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v439 = type metadata accessor for Logger();
          sub_100005B14(v439, qword_1006D4630);
          v440 = Logger.logObject.getter();
          v441 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v440, v441))
          {
            v442 = swift_slowAlloc();
            *v442 = 0;
            _os_log_impl(&_mh_execute_header, v440, v441, "FMMediator: Navigating to items before navigating to shared lost item", v442, 2u);
          }

          v443 = v637;
          v444 = v635;
          swift_storeEnumTagMultiPayload();
          v445 = v636 + 56;
          v446 = *(v636 + 56);
          v447 = v638;
          v446(v638, 1, 1, v444);
          v448 = *(v639 + 56);
          v449 = v640;
          v450 = v641;
          v448(v640, 1, 1, v641);
          sub_10011C64C(v443, v447, v449);
          sub_100012DF0(v449, &qword_1006B2B68);
          sub_100012DF0(v447, &qword_1006B2B70);
          v645 = type metadata accessor for FMSelectedSection;
          sub_100029F20(v443, type metadata accessor for FMSelectedSection);
          v446(v447, 1, 1, v444);
          v451 = v449;
          v448(v449, 1, 1, v450);
          sub_10000905C(0, &qword_1006AEDC0);
          v644 = static OS_dispatch_queue.main.getter();
          v452 = v628;
          static DispatchTime.now()();
          + infix(_:_:)();
          v453 = *(v624 + 8);
          v624 += 8;
          v646 = v453;
          (v453)(v452, v630);
          v454 = swift_allocObject();
          swift_weakInit();
          v455 = v637;
          sub_1000279D8(v579, v637, type metadata accessor for FMSelectedSection);
          v456 = v617;
          sub_100007204(v447, v617, &qword_1006B2B70);
          v457 = v451;
          v458 = v614;
          sub_100007204(v457, v614, &qword_1006B2B68);
          v459 = (*(v445 + 24) + 24) & ~*(v445 + 24);
          v460 = (v612 + *(v616 + 80) + v459) & ~*(v616 + 80);
          v461 = (v615 + *(v613 + 80) + v460) & ~*(v613 + 80);
          v462 = swift_allocObject();
          *(v462 + 16) = v454;
          sub_100056FB4(v455, v462 + v459, type metadata accessor for FMSelectedSection);
          sub_100035318(v456, v462 + v460, &qword_1006B2B70);
          sub_100035318(v458, v462 + v461, &qword_1006B2B68);
          v655 = sub_10011FB60;
          v656 = v462;
          aBlock = _NSConcreteStackBlock;
          v652 = 1107296256;
          v653 = sub_100004AE4;
          v654 = &unk_100628208;
          v463 = _Block_copy(&aBlock);

          v464 = v618;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10007EBC0(&unk_1006B0640);
          sub_100037970();
          v465 = v619;
          v466 = v623;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v467 = v629;
          v468 = v644;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v463);

          (*(v622 + 8))(v465, v466);
          (*(v620 + 8))(v464, v621);
          (v646)(v467, v630);
          sub_100012DF0(v640, &qword_1006B2B68);
          sub_100012DF0(v638, &qword_1006B2B70);
          v469 = v645;
          sub_100029F20(v579, v645);
          (*(v593 + 8))(v592, v594);
          (*(v586 + 8))(v580, v587);
          v212 = v569;
          v213 = v469;
          goto LABEL_61;
        }

        if (qword_1006AEBE0 == -1)
        {
          goto LABEL_155;
        }

        goto LABEL_219;
      }

      (*(v584 + 32))(v562, v576, v585);
      if (qword_1006AEBE0 == -1)
      {
LABEL_167:
        v474 = type metadata accessor for Logger();
        sub_100005B14(v474, qword_1006D4630);
        v475 = Logger.logObject.getter();
        v476 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v475, v476))
        {
          v477 = swift_slowAlloc();
          *v477 = 0;
          _os_log_impl(&_mh_execute_header, v475, v476, "FMMediator: Item already present on device. Navigating to item", v477, 2u);
        }

        v478 = v562;
        v479 = FMIPItem.identifier.getter();
        v481 = v480;
        v482 = v640;
        (*(v639 + 56))(v640, 1, 1, v641);
        sub_10011A6EC(v479, v481, v482, 1);

        sub_100012DF0(v482, &qword_1006B2B68);
        (*(v584 + 8))(v478, v585);
        goto LABEL_170;
      }

LABEL_221:
      swift_once();
      goto LABEL_167;
    }

    sub_100012DF0(v647, &qword_1006B1318);
    v269 = v552;
    sub_100007204(v644, v552, &qword_1006B1310);
    v270 = v545;
    if (v558(v269, 1, v545) == 1)
    {
      sub_100012DF0(v269, &qword_1006B1310);
      v271 = v554;
      (*(v643 + 56))(v554, 1, 1, v143);
    }

    else
    {
      v271 = v554;
      FMIPURLInfo.action.getter();
      v544(v269, v270);
    }

    v272 = v598;
    v273 = v597;
    v274 = v643;
    v275 = v553;
    (*(v643 + 104))(v553, v261, v143);
    (*(v274 + 56))(v275, 0, 1, v143);
    v276 = *(v273 + 48);
    sub_100007204(v271, v272, &qword_1006B1318);
    sub_100007204(v275, v272 + v276, &qword_1006B1318);
    v277 = v633;
    if ((v633)(v272, 1, v143) == 1)
    {
      sub_100012DF0(v553, &qword_1006B1318);
      sub_100012DF0(v554, &qword_1006B1318);
      v278 = v277(v272 + v276, 1, v143);
      v279 = v604;
      v280 = v603;
      v281 = v646;
      v282 = v599;
      v283 = v641;
      v284 = v611;
      v285 = v610;
      if (v278 == 1)
      {
        sub_100012DF0(v272, &qword_1006B1318);
        goto LABEL_72;
      }
    }

    else
    {
      v286 = v548;
      sub_100007204(v272, v548, &qword_1006B1318);
      if (v277(v272 + v276, 1, v143) != 1)
      {
        v319 = v643;
        v320 = v272 + v276;
        v321 = v582;
        (*(v643 + 32))(v582, v320, v143);
        sub_100009FA0(&qword_1006B2B90, &type metadata accessor for FMIPURLAction);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v322 = *(v319 + 8);
        v322(v321, v143);
        sub_100012DF0(v553, &qword_1006B1318);
        sub_100012DF0(v554, &qword_1006B1318);
        v322(v286, v143);
        sub_100012DF0(v272, &qword_1006B1318);
        v279 = v604;
        v280 = v603;
        v281 = v646;
        v282 = v599;
        v283 = v641;
        v284 = v611;
        v285 = v610;
LABEL_72:
        swift_storeEnumTagMultiPayload();
        v287 = sub_1003EB53C();
        v288 = *(v283 + 20);
        sub_1000279D8(v280, v279 + v288, type metadata accessor for FMSelectionPendingAction);
        (*(v285 + 56))(v279 + v288, 0, 1, v284);
        *v279 = v287;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v289 = type metadata accessor for Logger();
        v290 = sub_100005B14(v289, qword_1006D4630);
        sub_1000279D8(v279, v282, type metadata accessor for FMPendingInfo);
        v291 = Logger.logObject.getter();
        v292 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v291, v292))
        {
          v293 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          aBlock = v294;
          *v293 = 136446210;
          sub_1000279D8(v282, v609, type metadata accessor for FMPendingInfo);
          v295 = String.init<A>(describing:)();
          v297 = v296;
          sub_100029F20(v282, type metadata accessor for FMPendingInfo);
          v298 = sub_100005B4C(v295, v297, &aBlock);

          *(v293 + 4) = v298;
          _os_log_impl(&_mh_execute_header, v291, v292, "FMMediator: Separation notification pendingInfo: %{public}s", v293, 0xCu);
          sub_100006060(v294);
        }

        else
        {

          sub_100029F20(v282, type metadata accessor for FMPendingInfo);
        }

        sub_100007204(v281, &aBlock, &unk_1006B8740);
        v299 = Logger.logObject.getter();
        v300 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v299, v300))
        {
          v301 = swift_slowAlloc();
          v302 = swift_slowAlloc();
          v650 = v302;
          *v301 = 136446210;
          sub_100007204(&aBlock, &v649, &unk_1006B8740);
          sub_10007EBC0(&unk_1006B8740);
          v303 = String.init<A>(describing:)();
          v305 = v304;
          sub_100012DF0(&aBlock, &unk_1006B8740);
          v306 = sub_100005B4C(v303, v305, &v650);

          *(v301 + 4) = v306;
          _os_log_impl(&_mh_execute_header, v299, v300, "FMMediator: Separation notification additionalInfo: %{public}s", v301, 0xCu);
          sub_100006060(v302);
        }

        else
        {

          sub_100012DF0(&aBlock, &unk_1006B8740);
        }

        sub_100007204(v281, &aBlock, &unk_1006B8740);
        if (v654)
        {
          v642 = v290;
          sub_10007EBC0(&qword_1006C0C10);
          if (swift_dynamicCast())
          {
            v643 = v649;
            if (*(v649 + 16))
            {
              v307 = v643;
              v309 = *(v643 + 32);
              v308 = *(v643 + 40);
              v310 = v648;
              v311 = *(v648 + 7) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
              swift_beginAccess();
              *(v311 + *(type metadata accessor for FMPendingActionInfo(0) + 32)) = v307;

              v312 = v588;
              v647 = *(v310 + 3);
              sub_1000E5180(v309, v308, v588);
              v645 = *(v601 + 48);
              v646 = (v601 + 48);
              if ((v645)(v312, 1, v608) == 1)
              {
                sub_100012DF0(v588, &unk_1006BBCE0);
                v313 = v581;
                sub_1000E5794(v309, v308, v581);
                if ((v645)(v313, 1, v608) == 1)
                {
                  sub_100012DF0(v581, &unk_1006BBCE0);
                  v314 = v575;
                  sub_1000E5FF8(v309, v308, v575);

                  if ((*(v584 + 48))(v314, 1, v585) == 1)
                  {

                    sub_100012DF0(v575, &qword_1006B07D0);
                    v315 = Logger.logObject.getter();
                    v316 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v315, v316))
                    {
                      v317 = swift_slowAlloc();
                      *v317 = 0;
                      _os_log_impl(&_mh_execute_header, v315, v316, "FMMediator: Unable to find list of deivces or items", v317, 2u);
                    }

                    v318 = v604;
                    goto LABEL_120;
                  }

                  sub_100012DF0(v575, &qword_1006B07D0);

                  v419 = Logger.logObject.getter();
                  v420 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v419, v420))
                  {
                    v421 = swift_slowAlloc();
                    v422 = swift_slowAlloc();
                    aBlock = v422;
                    *v421 = 136446210;
                    v423 = Array.description.getter();
                    v425 = sub_100005B4C(v423, v424, &aBlock);

                    *(v421 + 4) = v425;
                    _os_log_impl(&_mh_execute_header, v419, v420, "FMMediator: Navigating to separated items list with list: %{public}s", v421, 0xCu);
                    sub_100006060(v422);
                  }

                  v397 = v637;
                  *v637 = v643;
                  *(v397 + 1) = xmmword_100554BC0;
                  v398 = v635;
                  swift_storeEnumTagMultiPayload();
                  v399 = v638;
                  goto LABEL_150;
                }

                v588 = v581;
              }

              sub_100012DF0(v588, &unk_1006BBCE0);
              v366 = *(v643 + 16);
              v367 = _swiftEmptyArrayStorage;
              if (v366)
              {
                aBlock = _swiftEmptyArrayStorage;
                sub_10016715C(0, v366, 0);
                v367 = aBlock;
                v644 = (v601 + 32);
                v368 = (v601 + 8);
                v369 = (v643 + 40);
                v370 = v602;
                do
                {
                  v372 = *(v369 - 1);
                  v371 = *v369;

                  sub_1000E5794(v372, v371, v370);
                  v373 = v608;
                  if ((v645)(v370, 1, v608) == 1)
                  {
                    sub_100012DF0(v370, &unk_1006BBCE0);
                  }

                  else
                  {
                    v374 = v600;
                    (*v644)(v600, v370, v373);
                    v375 = FMIPDevice.baIdentifier.getter();
                    v377 = v376;
                    (*v368)(v374, v373);
                    if (v377)
                    {

                      v372 = v375;
                      v371 = v377;
                    }

                    v370 = v602;
                  }

                  aBlock = v367;
                  v379 = v367[2];
                  v378 = v367[3];
                  if (v379 >= v378 >> 1)
                  {
                    sub_10016715C((v378 > 1), v379 + 1, 1);
                    v367 = aBlock;
                  }

                  v367[2] = v379 + 1;
                  v380 = &v367[2 * v379];
                  v380[4] = v372;
                  v380[5] = v371;
                  v369 += 2;
                  --v366;
                }

                while (v366);
              }

              v381 = sub_1005385A8(v367);

              v644 = sub_10014CC9C(v381);
              if (v644[2] != 1)
              {

                v390 = Logger.logObject.getter();
                v391 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v390, v391))
                {
                  v392 = swift_slowAlloc();
                  v393 = swift_slowAlloc();
                  aBlock = v393;
                  *v392 = 136446210;
                  v394 = Array.description.getter();
                  v396 = sub_100005B4C(v394, v395, &aBlock);

                  *(v392 + 4) = v396;
                  _os_log_impl(&_mh_execute_header, v390, v391, "FMMediator: Navigating to separated devices list with list: %{public}s", v392, 0xCu);
                  sub_100006060(v393);
                }

                v397 = v637;
                *v637 = v644;
                *(v397 + 1) = xmmword_100554BC0;
                v398 = v635;
                swift_storeEnumTagMultiPayload();
                v399 = v638;
LABEL_150:
                swift_storeEnumTagMultiPayload();
                (*(v636 + 56))(v399, 0, 1, v398);
                v426 = v604;
                v427 = v640;
                sub_1000279D8(v604, v640, type metadata accessor for FMPendingInfo);
                (*(v639 + 56))(v427, 0, 1, v641);
                sub_10011C64C(v397, v399, v427);
                sub_100012DF0(v427, &qword_1006B2B68);
                sub_100012DF0(v399, &qword_1006B2B70);
                sub_100029F20(v397, type metadata accessor for FMSelectedSection);
LABEL_151:
                v318 = v426;
LABEL_120:
                sub_100029F20(v318, type metadata accessor for FMPendingInfo);
                return sub_100029F20(v603, type metadata accessor for FMSelectionPendingAction);
              }

              v382 = v644[5];
              v633 = v644[4];
              My = type metadata accessor for Feature.FindMy();
              v654 = My;
              v655 = sub_100009FA0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
              v384 = sub_100008FC0(&aBlock);
              (*(*(My - 8) + 104))(v384, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);
              v634 = v382;

              LOBYTE(My) = isFeatureEnabled(_:)();
              sub_100006060(&aBlock);
              if ((My & 1) == 0)
              {

                v400 = Logger.logObject.getter();
                v401 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v400, v401))
                {
                  v402 = swift_slowAlloc();
                  v403 = swift_slowAlloc();
                  aBlock = v403;
                  *v402 = 136446210;
                  *(v402 + 4) = sub_100005B4C(v633, v634, &aBlock);
                  _os_log_impl(&_mh_execute_header, v400, v401, "FMMediator: Navigating to separated device with id: %{public}s", v402, 0xCu);
                  sub_100006060(v403);
                }

                v404 = v604;
                v405 = v640;
                sub_1000279D8(v604, v640, type metadata accessor for FMPendingInfo);
                (*(v639 + 56))(v405, 0, 1, v641);
                sub_100117634(v633, v634, 0, 0, v405, 1, 1);

                v406 = &qword_1006B2B68;
                v407 = v405;
LABEL_214:
                sub_100012DF0(v407, v406);
                v318 = v404;
                goto LABEL_120;
              }

              v385 = v570;
              sub_1000E5180(v633, v634, v570);
              v386 = v385;
              v387 = v571;
              sub_100007204(v386, v571, &unk_1006BBCE0);
              if ((v645)(v387, 1, v608) == 1)
              {

                v388 = &unk_1006BBCE0;
                v389 = &v603;
              }

              else
              {
                v470 = v566;
                v471 = v571;
                FMIPDevice.itemGroup.getter();
                (*(v601 + 8))(v471, v608);
                v472 = type metadata accessor for FMIPItemGroup();
                v473 = *(v472 - 8);
                if ((*(v473 + 48))(v470, 1, v472) != 1)
                {
                  v483 = v566;
                  v484 = FMIPItemGroup.groupedItems.getter();
                  (*(v473 + 8))(v483, v472);
                  v485 = *(v484 + 56);
                  v646 = (v484 + 56);
                  v631 = v484;
                  v486 = 1 << *(v484 + 32);
                  v487 = -1;
                  if (v486 < 64)
                  {
                    v487 = ~(-1 << v486);
                  }

                  v488 = v487 & v485;
                  v647 = ((v486 + 63) >> 6);
                  v645 = _swiftEmptyArrayStorage;
                  v489 = 0;
                  if (!v488)
                  {
LABEL_175:
                    while (1)
                    {
                      v490 = v489 + 1;
                      if (__OFADD__(v489, 1))
                      {
                        goto LABEL_218;
                      }

                      if (v490 >= v647)
                      {

                        goto LABEL_191;
                      }

                      v488 = *(v646 + v490);
                      ++v489;
                      if (v488)
                      {
                        goto LABEL_178;
                      }
                    }
                  }

LABEL_174:
                  v490 = v489;
LABEL_178:
                  v488 &= v488 - 1;

                  v491 = sub_100110CD8(v632);
                  v492 = v491;
                  v493 = (v491 + 40);
                  v494 = -*(v491 + 16);
                  v495 = -1;
                  while (1)
                  {
                    if (v494 + v495 == -1)
                    {

                      v489 = v490;
                      if (!v488)
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_174;
                    }

                    if (++v495 >= *(v492 + 16))
                    {
                      break;
                    }

                    v496 = v493 + 2;
                    v497 = *v493;
                    aBlock = *(v493 - 1);
                    v652 = v497;
                    __chkstk_darwin(v491);
                    *(&v544 - 2) = &aBlock;

                    v498 = sub_10008A40C(sub_10011F7D4, (&v544 - 4), v643);

                    v493 = v496;
                    if (v498)
                    {

                      v499 = v645;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v650 = v499;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_10016736C(0, *(v645 + 2) + 1, 1);
                        v645 = v650;
                      }

                      v502 = *(v645 + 2);
                      v501 = *(v645 + 3);
                      if (v502 >= v501 >> 1)
                      {
                        sub_10016736C((v501 > 1), v502 + 1, 1);
                        v645 = v650;
                      }

                      v503 = v645;
                      *(v645 + 2) = v502 + 1;
                      *(v503 + v502 + 4) = v632;
                      v489 = v490;
                      if (!v488)
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_174;
                    }
                  }

                  __break(1u);
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  swift_once();
LABEL_155:
                  v432 = type metadata accessor for Logger();
                  sub_100005B14(v432, qword_1006D4630);
                  v433 = Logger.logObject.getter();
                  v434 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v433, v434))
                  {
                    v435 = swift_slowAlloc();
                    *v435 = 0;
                    _os_log_impl(&_mh_execute_header, v433, v434, "FMMediator: Navigating to shared lost item", v435, 2u);
                  }

                  v436 = v638;
                  (*(v636 + 56))(v638, 1, 1, v635);
                  v437 = v640;
                  (*(v639 + 56))(v640, 1, 1, v641);
                  v438 = v579;
                  sub_10011C64C(v579, v436, v437);
                  sub_100012DF0(v437, &qword_1006B2B68);
                  sub_100012DF0(v436, &qword_1006B2B70);
                  sub_100029F20(v438, type metadata accessor for FMSelectedSection);
LABEL_170:
                  (*(v593 + 8))(v592, v594);
                  (*(v586 + 8))(v580, v587);
                  goto LABEL_62;
                }

                v388 = &unk_1006BB1C0;
                v389 = &v598;
              }

              sub_100012DF0(*(v389 - 32), v388);
              v645 = _swiftEmptyArrayStorage;
LABEL_191:
              v504 = sub_100538640(v645);

              v505 = sub_10014CCC8(v504);
              if (v505[2] != 1)
              {

                v517 = Logger.logObject.getter();
                v518 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v517, v518))
                {
                  v519 = swift_slowAlloc();
                  v520 = swift_slowAlloc();
                  aBlock = v520;
                  *v519 = 136446210;
                  v521 = Array.description.getter();
                  v523 = sub_100005B4C(v521, v522, &aBlock);

                  *(v519 + 4) = v523;
                  _os_log_impl(&_mh_execute_header, v517, v518, "FMMediator: Navigating to separated devices list with list: %{public}s", v519, 0xCu);
                  sub_100006060(v520);
                }

                v524 = v637;
                *v637 = v644;
                *(v524 + 1) = xmmword_100554BC0;
                v525 = v635;
                swift_storeEnumTagMultiPayload();
                v526 = v638;
                swift_storeEnumTagMultiPayload();
                (*(v636 + 56))(v526, 0, 1, v525);
                v426 = v604;
                v527 = v640;
                sub_1000279D8(v604, v640, type metadata accessor for FMPendingInfo);
                (*(v639 + 56))(v527, 0, 1, v641);
                sub_10011C64C(v524, v526, v527);
                sub_100012DF0(v527, &qword_1006B2B68);
                sub_100012DF0(v526, &qword_1006B2B70);
                sub_100029F20(v524, type metadata accessor for FMSelectedSection);
                sub_100012DF0(v570, &unk_1006BBCE0);
                goto LABEL_151;
              }

              if (!v505[2])
              {
                __break(1u);
                goto LABEL_221;
              }

              v506 = v505[4];

              v507 = 1 << *(v506 + 32);
              v508 = -1;
              if (v507 < 64)
              {
                v508 = ~(-1 << v507);
              }

              v509 = v508 & *(v506 + 56);
              v510 = (v507 + 63) >> 6;
              v645 = (v584 + 16);
              v646 = (v584 + 32);
              v647 = (v584 + 8);

              v511 = 0;
              if (v509)
              {
                while (1)
                {
                  v512 = v511;
LABEL_200:
                  v513 = v584;
                  v514 = v568;
                  v515 = v585;
                  (*(v584 + 16))(v568, *(v506 + 48) + *(v584 + 72) * (__clz(__rbit64(v509)) | (v512 << 6)), v585);
                  v516 = *(v513 + 32);
                  v516(v578, v514, v515);
                  if (FMIPItem.primaryItemPart.getter())
                  {
                    break;
                  }

                  v509 &= v509 - 1;
                  (*v647)(v578, v585);
                  v511 = v512;
                  if (!v509)
                  {
                    goto LABEL_197;
                  }
                }

                v516(v567, v578, v585);
                v528 = 0;
LABEL_207:
                v529 = v567;
                (*(v584 + 56))(v567, v528, 1, v585);

                sub_100007204(v529, v564, &qword_1006B07D0);

                v530 = Logger.logObject.getter();
                v531 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v530, v531))
                {
                  v532 = swift_slowAlloc();
                  aBlock = swift_slowAlloc();
                  *v532 = 136446466;
                  *(v532 + 4) = sub_100005B4C(v633, v634, &aBlock);
                  *(v532 + 12) = 2080;
                  v533 = v564;
                  sub_100007204(v564, v560, &qword_1006B07D0);
                  v534 = String.init<A>(describing:)();
                  v536 = v535;
                  sub_100012DF0(v533, &qword_1006B07D0);
                  v537 = sub_100005B4C(v534, v536, &aBlock);

                  *(v532 + 14) = v537;
                  _os_log_impl(&_mh_execute_header, v530, v531, "FMMediator: Navigating to separated device with id: %{public}s part: %s", v532, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  sub_100012DF0(v564, &qword_1006B07D0);
                }

                v538 = v565;
                sub_100007204(v567, v565, &qword_1006B07D0);
                if ((*(v584 + 48))(v538, 1, v585) == 1)
                {
                  sub_100012DF0(v565, &qword_1006B07D0);
                  v539 = 0;
                  v540 = 0;
                }

                else
                {
                  v541 = v565;
                  v539 = FMIPItem.identifier.getter();
                  v540 = v542;
                  (*v647)(v541, v585);
                }

                v404 = v604;
                v543 = v640;
                sub_1000279D8(v604, v640, type metadata accessor for FMPendingInfo);
                (*(v639 + 56))(v543, 0, 1, v641);
                sub_100117634(v633, v634, v539, v540, v543, 1, 1);

                sub_100012DF0(v543, &qword_1006B2B68);
                sub_100012DF0(v567, &qword_1006B07D0);
                v406 = &unk_1006BBCE0;
                v407 = v570;
                goto LABEL_214;
              }

LABEL_197:
              while (1)
              {
                v512 = v511 + 1;
                if (__OFADD__(v511, 1))
                {
                  goto LABEL_217;
                }

                if (v512 >= v510)
                {

                  v528 = 1;
                  goto LABEL_207;
                }

                v509 = *(v506 + 56 + 8 * v512);
                ++v511;
                if (v509)
                {
                  goto LABEL_200;
                }
              }
            }
          }
        }

        else
        {
          sub_100012DF0(&aBlock, &unk_1006B8740);
        }

        v328 = v648;
        v329 = v644;
        v330 = v596;
        v331 = v550;
        v332 = v549;
        sub_100007204(v644, v549, &qword_1006B1310);
        if (v558(v332, 1, v545) == 1)
        {
          sub_100012DF0(v332, &qword_1006B1310);
          v333 = 0;
          v334 = 0;
        }

        else
        {
          v333 = FMIPURLInfo.identifier.getter();
          v334 = v335;
          v544(v332, v545);
        }

        sub_100007204(v329, v331, &qword_1006B1310);
        if (v558(v331, 1, v545) == 1)
        {
          sub_100012DF0(v331, &qword_1006B1310);
        }

        else
        {
          v336 = FMIPURLInfo.identifier.getter();
          v338 = v337;
          v544(v331, v545);
          if (v338)
          {
            v339 = v336;
            goto LABEL_106;
          }
        }

        v339 = 0;
        v338 = 0xE000000000000000;
LABEL_106:
        sub_1000E5794(v339, v338, v330);

        v340 = v601;
        v341 = v608;
        if ((*(v601 + 48))(v330, 1, v608) == 1)
        {
          sub_100012DF0(v330, &unk_1006BBCE0);
          v342 = 0;
          v343 = 0;
          v344 = v639;
LABEL_115:
          v351 = v551;
          sub_100007204(v329, v551, &qword_1006B1310);
          v352 = v545;
          if (v558(v351, 1, v545) == 1)
          {
            sub_100012DF0(v351, &qword_1006B1310);
          }

          else
          {
            v353 = v351;
            v354 = FMIPURLInfo.identifier.getter();
            v356 = v355;
            v544(v353, v352);
            if (v356)
            {
              v357 = *(v328 + 7);
              sub_10007EBC0(&unk_1006AF770);
              v358 = swift_allocObject();
              *(v358 + 16) = xmmword_100552220;
              *(v358 + 32) = v354;
              *(v358 + 40) = v356;
              v359 = v357 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
              swift_beginAccess();
              *(v359 + *(type metadata accessor for FMPendingActionInfo(0) + 32)) = v358;
            }
          }

          v360 = v604;
          v361 = v640;
          sub_1000279D8(v604, v640, type metadata accessor for FMPendingInfo);
          (*(v344 + 56))(v361, 0, 1, v641);
          sub_100117634(v333, v334, v342, v343, v361, 1, 1);

          sub_100012DF0(v361, &qword_1006B2B68);
          v318 = v360;
          goto LABEL_120;
        }

        (*(v340 + 32))(v595, v330, v341);
        v333 = FMIPDevice.identifier.getter();
        v334 = v345;
        v346 = type metadata accessor for Feature.FindMy();
        v654 = v346;
        v655 = sub_100009FA0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
        v347 = sub_100008FC0(&aBlock);
        (*(*(v346 - 8) + 104))(v347, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), v346);
        LOBYTE(v346) = isFeatureEnabled(_:)();
        sub_100006060(&aBlock);
        if (v346)
        {
          v348 = v547;
          sub_100007204(v644, v547, &qword_1006B1310);
          if (v558(v348, 1, v545) != 1)
          {
            v349 = v547;
            v342 = FMIPURLInfo.identifier.getter();
            v343 = v350;
            (*(v601 + 8))(v595, v608);
            v544(v349, v545);
            goto LABEL_114;
          }

          (*(v601 + 8))(v595, v608);
          sub_100012DF0(v547, &qword_1006B1310);
        }

        else
        {
          (*(v601 + 8))(v595, v608);
        }

        v342 = 0;
        v343 = 0;
LABEL_114:
        v328 = v648;
        v344 = v639;
        v329 = v644;
        goto LABEL_115;
      }

      sub_100012DF0(v553, &qword_1006B1318);
      sub_100012DF0(v554, &qword_1006B1318);
      (*(v643 + 8))(v286, v143);
      v279 = v604;
      v280 = v603;
      v281 = v646;
      v282 = v599;
      v283 = v641;
      v284 = v611;
      v285 = v610;
    }

    sub_100012DF0(v272, &qword_1006B2B88);
    goto LABEL_72;
  }

  sub_10000EFDC();
  sub_1002B904C(v645, v646);
}

uint64_t sub_100117090(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B1310);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  sub_10000905C(0, &qword_1006AEDC0);
  v20 = static OS_dispatch_queue.main.getter();
  sub_100007204(v19, v12, &qword_1006B1310);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_100035318(v12, v14 + v13, &qword_1006B1310);
  aBlock[4] = sub_10011F92C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100628320;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v16 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v23 + 8))(v5, v3);
  return (*(v21 + 8))(v8, v22);
}

uint64_t sub_100117418(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006B2B68);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10007EBC0(&qword_1006B1310);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_100007204(a2, &v16 - v7, &qword_1006B1310);
  v9 = type metadata accessor for FMIPURLInfo();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &qword_1006B1310);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = FMIPURLInfo.identifier.getter();
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  v14 = type metadata accessor for FMPendingInfo();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_100117634(v11, v12, 0, 0, v5, 0, 1);

  return sub_100012DF0(v5, &qword_1006B2B68);
}

uint64_t sub_100117634(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v306 = a7;
  v350 = a6;
  v342 = a5;
  v353 = a3;
  v355 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v335 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v302 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v334 = &v302 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&qword_1006B2B68);
  v330 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v341 = &v302 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v305 = &v302 - v19;
  v331 = v20;
  __chkstk_darwin(v18);
  v332 = &v302 - v21;
  v354 = type metadata accessor for DispatchTime();
  v348 = *(v354 - 8);
  v22 = __chkstk_darwin(v354);
  v329 = &v302 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v352 = &v302 - v24;
  v25 = sub_10007EBC0(&qword_1006B2B70);
  v325 = *(v25 - 8);
  v26 = __chkstk_darwin(v25 - 8);
  v340 = &v302 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v304 = &v302 - v29;
  v30 = __chkstk_darwin(v28);
  v309 = &v302 - v31;
  v32 = __chkstk_darwin(v30);
  v316 = &v302 - v33;
  v34 = __chkstk_darwin(v32);
  v328 = &v302 - v35;
  v326 = v36;
  __chkstk_darwin(v34);
  v323 = &v302 - v37;
  v347 = type metadata accessor for FMSelectedSection();
  v351 = *(v347 - 8);
  v38 = __chkstk_darwin(v347);
  v339 = &v302 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v303 = &v302 - v41;
  v42 = __chkstk_darwin(v40);
  v308 = &v302 - v43;
  v44 = __chkstk_darwin(v42);
  v315 = &v302 - v45;
  v46 = __chkstk_darwin(v44);
  v327 = &v302 - v47;
  v324 = v48;
  __chkstk_darwin(v46);
  v322 = &v302 - v49;
  v360 = type metadata accessor for FMIPItem();
  v345 = *(v360 - 1);
  v50 = __chkstk_darwin(v360);
  v307 = &v302 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v344 = &v302 - v53;
  __chkstk_darwin(v52);
  v358 = &v302 - v54;
  v55 = sub_10007EBC0(&unk_1006BB1C0);
  v56 = __chkstk_darwin(v55 - 8);
  v311 = &v302 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v318 = &v302 - v58;
  v313 = sub_10007EBC0(&qword_1006B07D0);
  v59 = __chkstk_darwin(v313);
  v310 = &v302 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v63 = &v302 - v62;
  v64 = __chkstk_darwin(v61);
  v314 = &v302 - v65;
  v66 = __chkstk_darwin(v64);
  v312 = &v302 - v67;
  v68 = __chkstk_darwin(v66);
  v319 = &v302 - v69;
  __chkstk_darwin(v68);
  v321 = &v302 - v70;
  v71 = sub_10007EBC0(&unk_1006BBCE0);
  v72 = __chkstk_darwin(v71 - 8);
  v317 = &v302 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v75 = &v302 - v74;
  v76 = type metadata accessor for FMIPDevice();
  v77 = *(v76 - 8);
  v356 = v76;
  v357 = v77;
  v78 = __chkstk_darwin(v76);
  v320 = &v302 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v343 = &v302 - v80;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  v82 = sub_100005B14(v81, qword_1006D4630);

  v346 = v82;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  v85 = os_log_type_enabled(v83, v84);
  v338 = v12;
  v337 = v13;
  v336 = v9;
  v333 = v11;
  v349 = a2;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 136315394;
    v362 = v87;
    aBlock = v355;
    v364 = a2;

    sub_10007EBC0(&qword_1006AF8F0);
    v88 = String.init<A>(describing:)();
    v90 = sub_100005B4C(v88, v89, &v362);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = v353;
    aBlock = v353;
    v364 = a4;

    v92 = String.init<A>(describing:)();
    v94 = sub_100005B4C(v92, v93, &v362);

    *(v86 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v83, v84, "FMMediator: Navigate to device: %s, itemPart?: %s", v86, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v91 = v353;
  }

  My = type metadata accessor for Feature.FindMy();
  v366 = My;
  v367 = sub_100009FA0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v96 = sub_100008FC0(&aBlock);
  (*(*(My - 8) + 104))(v96, enum case for Feature.FindMy.baAirpodsMultipartUI(_:), My);

  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(&aBlock);
  v97 = v91;
  v98 = a4;
  v99 = v356;
  if ((My & 1) == 0)
  {

    v97 = 0;
    v98 = 0;
  }

  v361 = v98;
  v100 = v349;
  if (!v349)
  {
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "FMMediator: Falling back to the all devices", v126, 2u);
    }

    v127 = v339;
    v128 = v347;
    swift_storeEnumTagMultiPayload();
    v129 = v351;
    v130 = v340;
    (*(v351 + 56))(v340, 1, 1, v128);
    v131 = type metadata accessor for FMPendingInfo();
    v132 = v341;
    (*(*(v131 - 8) + 56))(v341, 1, 1, v131);
    if ((v350 & 1) == 0)
    {
      sub_10011C64C(v127, v130, v132);
      sub_100012DF0(v132, &qword_1006B2B68);
      sub_100012DF0(v130, &qword_1006B2B70);
      v150 = type metadata accessor for FMSelectedSection;
      v149 = v127;
      goto LABEL_22;
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v358 = static OS_dispatch_queue.main.getter();
    v133 = v329;
    static DispatchTime.now()();
    + infix(_:_:)();
    v360 = *(v348 + 8);
    v360(v133, v354);
    v134 = swift_allocObject();
    swift_weakInit();
    v359 = type metadata accessor for FMSelectedSection;
    v135 = v327;
    sub_1000279D8(v127, v327, type metadata accessor for FMSelectedSection);
    v136 = v328;
    sub_100007204(v130, v328, &qword_1006B2B70);
    v137 = v332;
    sub_100007204(v132, v332, &qword_1006B2B68);
    v138 = (*(v129 + 80) + 24) & ~*(v129 + 80);
    v139 = (v324 + *(v325 + 80) + v138) & ~*(v325 + 80);
    v140 = (v326 + *(v330 + 80) + v139) & ~*(v330 + 80);
    v141 = swift_allocObject();
    *(v141 + 16) = v134;
    sub_100056FB4(v135, v141 + v138, type metadata accessor for FMSelectedSection);
    sub_100035318(v136, v141 + v139, &qword_1006B2B70);
    sub_100035318(v137, v141 + v140, &qword_1006B2B68);
    v367 = sub_10011FB60;
    v368 = v141;
    aBlock = _NSConcreteStackBlock;
    v364 = 1107296256;
    v365 = sub_100004AE4;
    v366 = &unk_100628000;
    v142 = _Block_copy(&aBlock);

    v143 = v334;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v144 = v333;
    v145 = v336;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v146 = v352;
    v147 = v358;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v142);

    (*(v335 + 8))(v144, v145);
    (*(v337 + 8))(v143, v338);
    v360(v146, v354);
    sub_100012DF0(v341, &qword_1006B2B68);
    sub_100012DF0(v340, &qword_1006B2B70);
    v148 = &v369;
LABEL_18:
    v149 = *(v148 - 32);
    v150 = v359;
LABEL_22:
    sub_100029F20(v149, v150);
  }

  v341 = v63;

  v101 = v355;
  sub_1000E512C(v355, v100, v75);
  v102 = v357;
  v103 = *(v357 + 48);
  if (v103(v75, 1, v99) == 1)
  {
    sub_100012DF0(v75, &unk_1006BBCE0);
    v104 = v317;
    sub_1000E5180(v101, v100, v317);
    if (v103(v104, 1, v99) != 1)
    {

      v151 = v320;
      (*(v357 + 32))(v320, v104, v99);
      v159 = v311;
      FMIPDevice.itemGroup.getter();
      v160 = type metadata accessor for FMIPItemGroup();
      v161 = *(v160 - 8);
      if ((*(v161 + 48))(v159, 1, v160) == 1)
      {
        v155 = v99;
        sub_100012DF0(v159, &unk_1006BB1C0);
        v156 = v314;
        (*(v345 + 56))(v314, 1, 1, v360);
        v157 = v357;
        goto LABEL_68;
      }

      v197 = FMIPItemGroup.items.getter();
      (*(v161 + 8))(v159, v160);
      v198 = *(v197 + 16);
      v199 = v360;
      if (!v198)
      {
LABEL_50:
        v156 = v314;
        (*(v345 + 56))(v314, 1, 1, v199);
        goto LABEL_67;
      }

      v200 = *(v345 + 16);
      v201 = (v345 + 8);
      v202 = v197 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
      v203 = *(v345 + 72);
      v200(v344, v202, v360);
      while (1)
      {
        v205 = FMIPItem.identifier.getter();
        if (v361)
        {
          if (v205 == v97 && v361 == v206)
          {

LABEL_66:
            v267 = v345;
            v156 = v314;
            v268 = v360;
            (*(v345 + 32))(v314, v344, v360);
            (*(v267 + 56))(v156, 0, 1, v268);
LABEL_67:

            v155 = v356;
            v157 = v357;
            v151 = v320;
LABEL_68:
            v269 = v341;
            sub_100007204(v156, v341, &qword_1006B07D0);
            v270 = Logger.logObject.getter();
            v271 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v270, v271))
            {
              v272 = swift_slowAlloc();
              v273 = swift_slowAlloc();
              aBlock = v273;
              *v272 = 136315138;
              sub_100007204(v269, v312, &qword_1006B07D0);
              v274 = String.init<A>(describing:)();
              v276 = v275;
              sub_100012DF0(v269, &qword_1006B07D0);
              v277 = v274;
              v151 = v320;
              v278 = sub_100005B4C(v277, v276, &aBlock);
              v157 = v357;

              *(v272 + 4) = v278;
              _os_log_impl(&_mh_execute_header, v270, v271, "FMMediator: Navigate to device with offline device, item part %s", v272, 0xCu);
              sub_100006060(v273);
            }

            else
            {

              sub_100012DF0(v269, &qword_1006B07D0);
            }

            v279 = v351;
            v280 = v350;
            v281 = v347;
            v246 = v316;
            v247 = v315;
            v282 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
            (*(v157 + 16))(v247, v151, v155);
            sub_100007204(v156, v247 + v282, &qword_1006B07D0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            (*(v279 + 56))(v246, 0, 1, v281);
            if (v280)
            {
              sub_10000905C(0, &qword_1006AEDC0);
              v358 = static OS_dispatch_queue.main.getter();
              v283 = v329;
              static DispatchTime.now()();
              + infix(_:_:)();
              v284 = *(v348 + 8);
              v348 += 8;
              v360 = v284;
              v284(v283, v354);
              v285 = swift_allocObject();
              swift_weakInit();
              v359 = type metadata accessor for FMSelectedSection;
              v286 = v247;
              v287 = v327;
              sub_1000279D8(v286, v327, type metadata accessor for FMSelectedSection);
              v288 = v328;
              sub_100007204(v246, v328, &qword_1006B2B70);
              v289 = v332;
              sub_100007204(v342, v332, &qword_1006B2B68);
              v290 = (*(v279 + 80) + 24) & ~*(v279 + 80);
              v291 = (v324 + *(v325 + 80) + v290) & ~*(v325 + 80);
              v292 = (v326 + *(v330 + 80) + v291) & ~*(v330 + 80);
              v293 = v157;
              v294 = swift_allocObject();
              *(v294 + 16) = v285;
              sub_100056FB4(v287, v294 + v290, type metadata accessor for FMSelectedSection);
              sub_100035318(v288, v294 + v291, &qword_1006B2B70);
              sub_100035318(v289, v294 + v292, &qword_1006B2B68);
              v367 = sub_10011FB60;
              v368 = v294;
              aBlock = _NSConcreteStackBlock;
              v364 = 1107296256;
              v365 = sub_100004AE4;
              v366 = &unk_100628140;
              v295 = _Block_copy(&aBlock);

              v296 = v334;
              static DispatchQoS.unspecified.getter();
              aBlock = _swiftEmptyArrayStorage;
              sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
              sub_10007EBC0(&unk_1006B0640);
              sub_100037970();
              v297 = v333;
              v298 = v336;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v299 = v352;
              v300 = v358;
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
              _Block_release(v295);

              (*(v335 + 8))(v297, v298);
              (*(v337 + 8))(v296, v338);
              v360(v299, v354);
              sub_100012DF0(v316, &qword_1006B2B70);
              sub_100029F20(v315, v359);
              sub_100012DF0(v314, &qword_1006B07D0);
              (*(v293 + 8))(v320, v356);
            }

LABEL_73:
            sub_10011C64C(v247, v246, v342);
            sub_100012DF0(v246, &qword_1006B2B70);
            sub_100029F20(v247, type metadata accessor for FMSelectedSection);
            sub_100012DF0(v156, &qword_1006B07D0);
            (*(v157 + 8))(v151, v155);
          }

          v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v207)
          {
            goto LABEL_66;
          }
        }

        else
        {
        }

        v204 = v344;
        v199 = v360;
        (*v201)(v344, v360);
        v202 += v203;
        if (!--v198)
        {
          goto LABEL_50;
        }

        v200(v204, v202, v199);
      }
    }

    sub_100012DF0(v104, &unk_1006BBCE0);
    v105 = v310;
    sub_1000E5FF8(v101, v100, v310);
    v106 = v345;
    v107 = v360;
    v108 = (*(v345 + 48))(v105, 1, v360);
    v109 = v351;
    if (v108 != 1)
    {

      v173 = v307;
      (*(v106 + 32))(v307, v105, v107);
      v174 = Logger.logObject.getter();
      v175 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        *v176 = 0;
        _os_log_impl(&_mh_execute_header, v174, v175, "FMMediator: Navigate to item with item", v176, 2u);
      }

      v177 = v308;
      v178 = v360;
      (*(v106 + 16))(v308, v173, v360);
      v179 = v347;
      swift_storeEnumTagMultiPayload();
      v180 = v309;
      swift_storeEnumTagMultiPayload();
      (*(v109 + 56))(v180, 0, 1, v179);
      if (v350)
      {
        sub_10000905C(0, &qword_1006AEDC0);
        v357 = static OS_dispatch_queue.main.getter();
        v181 = v329;
        static DispatchTime.now()();
        + infix(_:_:)();
        v358 = *(v348 + 8);
        (v358)(v181, v354);
        v182 = swift_allocObject();
        swift_weakInit();
        v359 = type metadata accessor for FMSelectedSection;
        v183 = v327;
        sub_1000279D8(v177, v327, type metadata accessor for FMSelectedSection);
        v184 = v180;
        v185 = v328;
        sub_100007204(v184, v328, &qword_1006B2B70);
        v186 = v332;
        sub_100007204(v342, v332, &qword_1006B2B68);
        v187 = (*(v109 + 80) + 24) & ~*(v109 + 80);
        v188 = (v324 + *(v325 + 80) + v187) & ~*(v325 + 80);
        v189 = (v326 + *(v330 + 80) + v188) & ~*(v330 + 80);
        v190 = swift_allocObject();
        *(v190 + 16) = v182;
        sub_100056FB4(v183, v190 + v187, type metadata accessor for FMSelectedSection);
        sub_100035318(v185, v190 + v188, &qword_1006B2B70);
        sub_100035318(v186, v190 + v189, &qword_1006B2B68);
        v367 = sub_10011FB60;
        v368 = v190;
        aBlock = _NSConcreteStackBlock;
        v364 = 1107296256;
        v365 = sub_100004AE4;
        v366 = &unk_1006280F0;
        v191 = _Block_copy(&aBlock);

        v192 = v334;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v193 = v333;
        v194 = v336;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v195 = v352;
        v196 = v357;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v191);

        (*(v335 + 8))(v193, v194);
        (*(v337 + 8))(v192, v338);
        (v358)(v195, v354);
        sub_100012DF0(v309, &qword_1006B2B70);
        sub_100029F20(v308, v359);
        (*(v345 + 8))(v307, v360);
      }

      else
      {
        sub_10011C64C(v177, v180, v342);
        sub_100012DF0(v180, &qword_1006B2B70);
        sub_100029F20(v177, type metadata accessor for FMSelectedSection);
        (*(v106 + 8))(v173, v178);
      }
    }

    sub_100012DF0(v105, &qword_1006B07D0);
    if (v306)
    {
      sub_10000905C(0, &qword_1006AEDC0);
      v358 = static OS_dispatch_queue.main.getter();
      v110 = v329;
      static DispatchTime.now()();
      v111 = v352;
      + infix(_:_:)();
      v360 = *(v348 + 8);
      v360(v110, v354);
      v112 = v332;
      sub_100007204(v342, v332, &qword_1006B2B68);
      v113 = (*(v330 + 80) + 56) & ~*(v330 + 80);
      v114 = v113 + v331;
      v115 = swift_allocObject();
      v116 = v100;
      v117 = v115;
      v118 = v355;
      v115[2] = v359;
      v115[3] = v118;
      v115[4] = v116;
      v115[5] = v353;
      v115[6] = a4;
      sub_100035318(v112, v115 + v113, &qword_1006B2B68);
      *(v117 + v114) = v350 & 1;
      v367 = sub_10011EDF4;
      v368 = v117;
      aBlock = _NSConcreteStackBlock;
      v364 = 1107296256;
      v365 = sub_100004AE4;
      v366 = &unk_1006280A0;
      v119 = _Block_copy(&aBlock);

      v120 = v334;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v121 = v333;
      v122 = v336;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v123 = v358;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v119);

      (*(v335 + 8))(v121, v122);
      (*(v337 + 8))(v120, v338);
      v360(v111, v354);
    }

    v208 = Logger.logObject.getter();
    v209 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&_mh_execute_header, v208, v209, "FMMediator: Falling back to the all devices since no devices are matching", v210, 2u);
    }

    v211 = v303;
    v212 = v347;
    swift_storeEnumTagMultiPayload();
    v213 = v304;
    (*(v109 + 56))(v304, 1, 1, v212);
    v214 = type metadata accessor for FMPendingInfo();
    v215 = v305;
    (*(*(v214 - 8) + 56))(v305, 1, 1, v214);
    if ((v350 & 1) == 0)
    {
      sub_10011C64C(v211, v213, v215);
      sub_100012DF0(v215, &qword_1006B2B68);
      sub_100012DF0(v213, &qword_1006B2B70);
      v150 = type metadata accessor for FMSelectedSection;
      v149 = v211;
      goto LABEL_22;
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v358 = static OS_dispatch_queue.main.getter();
    v216 = v329;
    static DispatchTime.now()();
    + infix(_:_:)();
    v360 = *(v348 + 8);
    v360(v216, v354);
    v217 = swift_allocObject();
    swift_weakInit();
    v359 = type metadata accessor for FMSelectedSection;
    v218 = v211;
    v219 = v327;
    sub_1000279D8(v218, v327, type metadata accessor for FMSelectedSection);
    v220 = v328;
    sub_100007204(v213, v328, &qword_1006B2B70);
    v221 = v332;
    sub_100007204(v215, v332, &qword_1006B2B68);
    v222 = (*(v109 + 80) + 24) & ~*(v109 + 80);
    v223 = (v324 + *(v325 + 80) + v222) & ~*(v325 + 80);
    v224 = (v326 + *(v330 + 80) + v223) & ~*(v330 + 80);
    v225 = swift_allocObject();
    *(v225 + 16) = v217;
    sub_100056FB4(v219, v225 + v222, type metadata accessor for FMSelectedSection);
    sub_100035318(v220, v225 + v223, &qword_1006B2B70);
    sub_100035318(v221, v225 + v224, &qword_1006B2B68);
    v367 = sub_10011FB60;
    v368 = v225;
    aBlock = _NSConcreteStackBlock;
    v364 = 1107296256;
    v365 = sub_100004AE4;
    v366 = &unk_100628050;
    v226 = _Block_copy(&aBlock);

    v227 = v334;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v228 = v333;
    v229 = v336;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v230 = v352;
    v231 = v358;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v226);

    (*(v335 + 8))(v228, v229);
    (*(v337 + 8))(v227, v338);
    v360(v230, v354);
    sub_100012DF0(v305, &qword_1006B2B68);
    sub_100012DF0(v304, &qword_1006B2B70);
    v148 = &v335;
    goto LABEL_18;
  }

  v151 = v343;
  (*(v102 + 32))(v343, v75, v99);
  v152 = v318;
  FMIPDevice.itemGroup.getter();
  v153 = type metadata accessor for FMIPItemGroup();
  v154 = *(v153 - 8);
  if ((*(v154 + 48))(v152, 1, v153) == 1)
  {
    v155 = v99;
    sub_100012DF0(v152, &unk_1006BB1C0);
    v156 = v321;
    (*(v345 + 56))(v321, 1, 1, v360);
    v157 = v357;
    v158 = v319;
    goto LABEL_59;
  }

  v162 = FMIPItemGroup.items.getter();
  (*(v154 + 8))(v152, v153);
  v355 = v162;
  v163 = *(v162 + 16);
  v164 = v360;
  v158 = v319;
  if (!v163)
  {
LABEL_35:
    v156 = v321;
    (*(v345 + 56))(v321, 1, 1, v164);
    goto LABEL_58;
  }

  v165 = *(v345 + 16);
  v166 = (v345 + 8);
  v167 = v355 + ((*(v345 + 80) + 32) & ~*(v345 + 80));
  v168 = *(v345 + 72);
  v165(v358, v167, v360);
  while (1)
  {
    v170 = FMIPItem.identifier.getter();
    if (!v361)
    {

      goto LABEL_28;
    }

    if (v170 == v97 && v361 == v171)
    {
      break;
    }

    v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v172)
    {
      goto LABEL_57;
    }

LABEL_28:
    v169 = v358;
    v164 = v360;
    (*v166)(v358, v360);
    v167 += v168;
    if (!--v163)
    {
      goto LABEL_35;
    }

    v165(v169, v167, v164);
  }

LABEL_57:
  v232 = v345;
  v156 = v321;
  v233 = v360;
  (*(v345 + 32))(v321, v358, v360);
  (*(v232 + 56))(v156, 0, 1, v233);
LABEL_58:

  v155 = v356;
  v157 = v357;
  v151 = v343;
LABEL_59:
  sub_100007204(v156, v158, &qword_1006B07D0);
  v234 = Logger.logObject.getter();
  v235 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    aBlock = v237;
    *v236 = 136315138;
    sub_100007204(v158, v312, &qword_1006B07D0);
    v238 = String.init<A>(describing:)();
    v240 = v239;
    sub_100012DF0(v158, &qword_1006B07D0);
    v241 = v238;
    v151 = v343;
    v242 = sub_100005B4C(v241, v240, &aBlock);
    v157 = v357;

    *(v236 + 4) = v242;
    _os_log_impl(&_mh_execute_header, v234, v235, "FMMediator: Navigate to device with device, item part %s", v236, 0xCu);
    sub_100006060(v237);
  }

  else
  {

    sub_100012DF0(v158, &qword_1006B07D0);
  }

  v243 = v351;
  v244 = v350;
  v245 = v347;
  v246 = v323;
  v247 = v322;
  v248 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
  (*(v157 + 16))(v247, v151, v155);
  sub_100007204(v156, v247 + v248, &qword_1006B07D0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (*(v243 + 56))(v246, 0, 1, v245);
  if ((v244 & 1) == 0)
  {
    goto LABEL_73;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v358 = static OS_dispatch_queue.main.getter();
  v249 = v329;
  static DispatchTime.now()();
  + infix(_:_:)();
  v250 = *(v348 + 8);
  v348 += 8;
  v360 = v250;
  v250(v249, v354);
  v251 = swift_allocObject();
  swift_weakInit();
  v359 = type metadata accessor for FMSelectedSection;
  v252 = v247;
  v253 = v327;
  sub_1000279D8(v252, v327, type metadata accessor for FMSelectedSection);
  v254 = v328;
  sub_100007204(v246, v328, &qword_1006B2B70);
  v255 = v332;
  sub_100007204(v342, v332, &qword_1006B2B68);
  v256 = (*(v243 + 80) + 24) & ~*(v243 + 80);
  v257 = (v324 + *(v325 + 80) + v256) & ~*(v325 + 80);
  v258 = (v326 + *(v330 + 80) + v257) & ~*(v330 + 80);
  v259 = v157;
  v260 = swift_allocObject();
  *(v260 + 16) = v251;
  sub_100056FB4(v253, v260 + v256, type metadata accessor for FMSelectedSection);
  sub_100035318(v254, v260 + v257, &qword_1006B2B70);
  sub_100035318(v255, v260 + v258, &qword_1006B2B68);
  v367 = sub_10011FB60;
  v368 = v260;
  aBlock = _NSConcreteStackBlock;
  v364 = 1107296256;
  v365 = sub_100004AE4;
  v366 = &unk_100628190;
  v261 = _Block_copy(&aBlock);

  v262 = v334;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v263 = v333;
  v264 = v336;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v265 = v352;
  v266 = v358;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v261);

  (*(v335 + 8))(v263, v264);
  (*(v337 + 8))(v262, v338);
  v360(v265, v354);
  sub_100012DF0(v323, &qword_1006B2B70);
  sub_100029F20(v322, v359);
  sub_100012DF0(v321, &qword_1006B07D0);
  (*(v259 + 8))(v343, v356);
}

uint64_t sub_10011A6EC(void (*a1)(void, void), unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v102) = a4;
  v104 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B2B68);
  v90 = *(v11 - 8);
  v91 = *(v90 + 64);
  __chkstk_darwin(v11 - 8);
  v92 = &v83 - v12;
  v107 = type metadata accessor for DispatchTime();
  v93 = *(v107 - 8);
  v13 = __chkstk_darwin(v107);
  v85 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v83 - v15;
  v16 = sub_10007EBC0(&qword_1006B2B70);
  v87 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v89 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v18;
  __chkstk_darwin(v17);
  v20 = &v83 - v19;
  v21 = type metadata accessor for FMSelectedSection();
  v22 = *(v21 - 8);
  v100 = v21;
  v101 = v22;
  v23 = __chkstk_darwin(v21);
  v86 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v24;
  __chkstk_darwin(v23);
  v26 = &v83 - v25;
  v27 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v27 - 8);
  v110 = &v83 - v28;
  v29 = type metadata accessor for FMIPItem();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100005B14(v33, qword_1006D4630);

  v109 = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v111 = a1;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v108 = v32;
    v39 = v38;
    v40 = swift_slowAlloc();
    v105 = v20;
    v41 = v40;
    aBlock[0] = v40;
    *v39 = 136315138;
    v103 = v30;
    v42 = v5;
    if (a2)
    {
      v43 = a1;
    }

    else
    {
      v43 = 7104878;
    }

    v44 = v29;
    v45 = v26;
    if (a2)
    {
      v46 = a2;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_100005B4C(v43, v46, aBlock);
    v26 = v45;
    v29 = v44;

    *(v39 + 4) = v47;
    v5 = v42;
    v30 = v103;
    _os_log_impl(&_mh_execute_header, v35, v36, "FMMediator: Navigating to item with id: %s", v39, 0xCu);
    sub_100006060(v41);
    v20 = v105;

    v32 = v108;
  }

  v48 = v110;
  if (!a2)
  {
    goto LABEL_14;
  }

  sub_1000E5FF8(v111, a2, v110);
  if ((*(v30 + 48))(v48, 1, v29) == 1)
  {
    sub_100012DF0(v48, &qword_1006B07D0);
LABEL_14:

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      v53 = v111;
      if (a2)
      {
        v54 = v111;
      }

      else
      {
        v54 = 7104878;
      }

      if (a2)
      {
        v55 = a2;
      }

      else
      {
        v55 = 0xE300000000000000;
      }

      v56 = sub_100005B4C(v54, v55, aBlock);

      *(v51 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v49, v50, "FMMediator: Navigation failed for item with id: %s ... will retry when update comes", v51, 0xCu);
      sub_100006060(v52);
    }

    else
    {

      v53 = v111;
    }

    *(v5 + 72) = v53;
    *(v5 + 80) = a2;
  }

  (*(v30 + 32))(v32, v48, v29);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  v60 = os_log_type_enabled(v58, v59);
  v108 = v32;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136315138;
    *(v61 + 4) = sub_100005B4C(v111, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v58, v59, "FMMediator: Continuing navigation to item with id: %s", v61, 0xCu);
    sub_100006060(v62);

    v32 = v108;
  }

  v63 = v101;
  (*(v30 + 16))(v26, v32, v29);
  v64 = v100;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  (*(v63 + 56))(v20, 0, 1, v64);
  if (v102)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v110 = static OS_dispatch_queue.main.getter();
    v65 = v85;
    static DispatchTime.now()();
    + infix(_:_:)();
    v111 = *(v93 + 8);
    v111(v65, v107);
    v66 = swift_allocObject();
    swift_weakInit();
    v109 = type metadata accessor for FMSelectedSection;
    v67 = v86;
    sub_1000279D8(v26, v86, type metadata accessor for FMSelectedSection);
    v68 = v89;
    sub_100007204(v20, v89, &qword_1006B2B70);
    v102 = v26;
    v69 = v92;
    sub_100007204(v104, v92, &qword_1006B2B68);
    v70 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v71 = *(v87 + 80);
    v103 = v30;
    v72 = (v84 + v71 + v70) & ~v71;
    v73 = *(v90 + 80);
    v105 = v20;
    v74 = (v88 + v73 + v72) & ~v73;
    v75 = swift_allocObject();
    v104 = v29;
    v76 = v75;
    *(v75 + 16) = v66;
    sub_100056FB4(v67, v75 + v70, type metadata accessor for FMSelectedSection);
    sub_100035318(v68, v76 + v72, &qword_1006B2B70);
    sub_100035318(v69, v76 + v74, &qword_1006B2B68);
    aBlock[4] = sub_10011FB60;
    aBlock[5] = v76;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100627FB0;
    v77 = _Block_copy(aBlock);

    v78 = v94;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v79 = v96;
    v80 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v81 = v106;
    v82 = v110;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v77);

    (*(v98 + 8))(v79, v80);
    (*(v95 + 8))(v78, v97);
    v111(v81, v107);
    sub_100012DF0(v105, &qword_1006B2B70);
    sub_100029F20(v102, v109);
    return (*(v103 + 8))(v108, v104);
  }

  else
  {
    sub_10011C64C(v26, v20, v104);
    sub_100012DF0(v20, &qword_1006B2B70);
    sub_100029F20(v26, type metadata accessor for FMSelectedSection);
    return (*(v30 + 8))(v32, v29);
  }
}

uint64_t sub_10011B3EC(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v135) = a6;
  v133 = a5;
  v126 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v122 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DispatchQoS();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B2B68);
  v115 = *(v12 - 8);
  v13 = *(v115 + 64);
  __chkstk_darwin(v12 - 8);
  v120 = &v108 - v14;
  v138 = type metadata accessor for DispatchTime();
  v131 = *(v138 - 8);
  v15 = __chkstk_darwin(v138);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v137 = &v108 - v18;
  v19 = sub_10007EBC0(&qword_1006B2B70);
  v116 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v140 = (&v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v119 = &v108 - v23;
  v118 = v24;
  __chkstk_darwin(v22);
  v128 = &v108 - v25;
  v134 = type metadata accessor for FMSelectedSection();
  v136 = *(v134 - 8);
  v26 = __chkstk_darwin(v134);
  v139 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v117 = &v108 - v29;
  v114 = v30;
  __chkstk_darwin(v28);
  v32 = &v108 - v31;
  v33 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v33 - 8);
  v113 = &v108 - v34;
  v35 = type metadata accessor for FMIPItem();
  v130 = *(v35 - 8);
  __chkstk_darwin(v35);
  v129 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100005B14(v37, qword_1006D4630);

  v132 = v38;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v127 = a1;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v110 = v32;
    v43 = v42;
    v44 = swift_slowAlloc();
    v112 = v13;
    v142 = v44;
    aBlock = a1;
    *v43 = 136315394;
    v144 = a2;

    sub_10007EBC0(&qword_1006AF8F0);
    v109 = v35;
    v45 = String.init<A>(describing:)();
    v111 = v17;
    v47 = sub_100005B4C(v45, v46, &v142);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = a3;
    aBlock = a3;
    v144 = a4;
    v49 = a4;

    v50 = String.init<A>(describing:)();
    v52 = sub_100005B4C(v50, v51, &v142);
    v35 = v109;

    *(v43 + 14) = v52;
    v17 = v111;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMMediator: Navigating to item via serial %s & manufacturer %s?", v43, 0x16u);
    swift_arrayDestroy();
    v13 = v112;

    v32 = v110;

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v48 = a3;
    v49 = a4;

    if (!a2)
    {
LABEL_10:
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "FMMediator: Navigating to item via serial, item not found falling back to all items", v59, 2u);
      }

      v60 = v139;
      v61 = v134;
      swift_storeEnumTagMultiPayload();
      v62 = v136;
      v63 = v140;
      (*(v136 + 56))(v140, 1, 1, v61);
      if (v135)
      {
        sub_10000905C(0, &qword_1006AEDC0);
        v134 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v135 = *(v131 + 8);
        v135(v17, v138);
        v64 = swift_allocObject();
        swift_weakInit();
        v141 = type metadata accessor for FMSelectedSection;
        v65 = v60;
        v66 = v117;
        sub_1000279D8(v65, v117, type metadata accessor for FMSelectedSection);
        v67 = v63;
        v68 = v119;
        sub_100007204(v67, v119, &qword_1006B2B70);
        v69 = v120;
        sub_100007204(v133, v120, &qword_1006B2B68);
        v70 = (*(v62 + 80) + 24) & ~*(v62 + 80);
        v71 = (v114 + *(v116 + 80) + v70) & ~*(v116 + 80);
        v72 = (v118 + *(v115 + 80) + v71) & ~*(v115 + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = v64;
        sub_100056FB4(v66, v73 + v70, type metadata accessor for FMSelectedSection);
        sub_100035318(v68, v73 + v71, &qword_1006B2B70);
        sub_100035318(v69, v73 + v72, &qword_1006B2B68);
        v147 = sub_10011FB60;
        v148 = v73;
        aBlock = _NSConcreteStackBlock;
        v144 = 1107296256;
        v145 = sub_100004AE4;
        v146 = &unk_100627F10;
        v74 = _Block_copy(&aBlock);

        v75 = v121;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v76 = v122;
        v77 = v126;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v78 = v137;
        v79 = v134;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v74);

        (*(v125 + 8))(v76, v77);
        (*(v123 + 8))(v75, v124);
        v135(v78, v138);
        sub_100012DF0(v140, &qword_1006B2B70);
        v80 = v139;
        v81 = v141;
      }

      else
      {
        sub_10011C64C(v60, v63, v133);
        sub_100012DF0(v63, &qword_1006B2B70);
        v81 = type metadata accessor for FMSelectedSection;
        v80 = v60;
      }

      return sub_100029F20(v80, v81);
    }
  }

  v53 = v49;
  if (!v49)
  {
    goto LABEL_10;
  }

  v54 = v48;
  v55 = v113;
  sub_1000E6178(v127, a2, v54, v53, v113);
  v56 = v130;
  if ((*(v130 + 48))(v55, 1, v35) == 1)
  {
    sub_100012DF0(v55, &qword_1006B07D0);
    goto LABEL_10;
  }

  (*(v56 + 32))(v129, v55, v35);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  v85 = os_log_type_enabled(v83, v84);
  v112 = v13;
  v111 = v17;
  if (v85)
  {
    v86 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v86 = 136315394;
    *(v86 + 4) = sub_100005B4C(v127, a2, &aBlock);
    *(v86 + 12) = 2080;
    *(v86 + 14) = sub_100005B4C(v54, v53, &aBlock);
    _os_log_impl(&_mh_execute_header, v83, v84, "FMMediator: Navigating to item via serial %s, manufacturer %s", v86, 0x16u);
    swift_arrayDestroy();
  }

  v87 = v129;
  v88 = v130;
  (*(v130 + 16))(v32, v129, v35);
  v89 = v134;
  swift_storeEnumTagMultiPayload();
  v90 = v128;
  swift_storeEnumTagMultiPayload();
  v91 = v136;
  (*(v136 + 56))(v90, 0, 1, v89);
  if (v135)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v139 = static OS_dispatch_queue.main.getter();
    v92 = v111;
    static DispatchTime.now()();
    + infix(_:_:)();
    v110 = v32;
    v140 = *(v131 + 8);
    v131 += 8;
    (v140)(v92, v138);
    v93 = swift_allocObject();
    swift_weakInit();
    v141 = type metadata accessor for FMSelectedSection;
    v94 = v117;
    sub_1000279D8(v32, v117, type metadata accessor for FMSelectedSection);
    v109 = v35;
    v95 = v119;
    sub_100007204(v128, v119, &qword_1006B2B70);
    v96 = v120;
    sub_100007204(v133, v120, &qword_1006B2B68);
    v97 = (*(v91 + 80) + 24) & ~*(v91 + 80);
    v98 = (v114 + *(v116 + 80) + v97) & ~*(v116 + 80);
    v99 = (v118 + *(v115 + 80) + v98) & ~*(v115 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = v93;
    sub_100056FB4(v94, v100 + v97, type metadata accessor for FMSelectedSection);
    sub_100035318(v95, v100 + v98, &qword_1006B2B70);
    sub_100035318(v96, v100 + v99, &qword_1006B2B68);
    v147 = sub_10011FB60;
    v148 = v100;
    aBlock = _NSConcreteStackBlock;
    v144 = 1107296256;
    v145 = sub_100004AE4;
    v146 = &unk_100627F60;
    v101 = _Block_copy(&aBlock);

    v102 = v121;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v103 = v122;
    v104 = v126;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v105 = v137;
    v106 = v139;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v101);

    (*(v125 + 8))(v103, v104);
    (*(v123 + 8))(v102, v124);
    (v140)(v105, v138);
    sub_100012DF0(v128, &qword_1006B2B70);
    sub_100029F20(v110, v141);
    return (*(v88 + 8))(v129, v109);
  }

  else
  {
    v107 = v128;
    sub_10011C64C(v32, v128, v133);
    sub_100012DF0(v107, &qword_1006B2B70);
    sub_100029F20(v32, type metadata accessor for FMSelectedSection);
    return (*(v88 + 8))(v87, v35);
  }
}

uint64_t sub_10011C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10011C64C(a2, a3, a4);
  }

  return result;
}

uint64_t sub_10011C64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v39 = a3;
  v41 = a2;
  v3 = sub_10007EBC0(&qword_1006B2B70);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v40 = type metadata accessor for FMSelectedSection();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v38 - v11;
  v13 = __chkstk_darwin(v10);
  v38 = &v38 - v14;
  __chkstk_darwin(v13);
  v42 = &v38 - v15;
  v16 = sub_10007EBC0(&qword_1006B2B68);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = type metadata accessor for FMPendingInfo();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100007204(v39, v18, &qword_1006B2B68);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100012DF0(v18, &qword_1006B2B68);
  }

  else
  {
    sub_100056FB4(v18, v22, type metadata accessor for FMPendingInfo);
    v23 = *(v44 + 56);
    v24 = *v22;
    v25 = v23 + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v26 = *(type metadata accessor for FMPendingActionInfo(0) + 36);
    v27 = *(v25 + v26);
    *(v25 + v26) = v24;
    v28 = v24;

    v29 = *(v19 + 20);
    v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();
    sub_10011ED84(v22 + v29, v23 + v30);
    swift_endAccess();
    sub_100029F20(v22, type metadata accessor for FMPendingInfo);
  }

  v31 = *(v44 + 56);
  v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v33 = v42;
  sub_1000279D8(v31 + v32, v42, type metadata accessor for FMSelectedSection);
  sub_100007204(v41, v5, &qword_1006B2B70);
  v34 = (*(v6 + 48))(v5, 1, v40);
  v35 = v43;
  if (v34 == 1)
  {
    sub_100012DF0(v5, &qword_1006B2B70);
  }

  else
  {
    v36 = v38;
    sub_100056FB4(v5, v38, type metadata accessor for FMSelectedSection);
    if ((sub_100245AF0(v33, v35) & 1) == 0)
    {
      sub_1000279D8(v36, v12, type metadata accessor for FMSelectedSection);
      sub_1000279D8(v31 + v32, v9, type metadata accessor for FMSelectedSection);
      swift_beginAccess();
      sub_100058530(v12, v31 + v32);
      swift_endAccess();
      sub_100058594(v9);
      sub_100029F20(v9, type metadata accessor for FMSelectedSection);
      sub_100029F20(v12, type metadata accessor for FMSelectedSection);
    }

    sub_100029F20(v36, type metadata accessor for FMSelectedSection);
  }

  sub_1000279D8(v35, v12, type metadata accessor for FMSelectedSection);
  sub_1000279D8(v31 + v32, v9, type metadata accessor for FMSelectedSection);
  swift_beginAccess();
  sub_100058530(v12, v31 + v32);
  swift_endAccess();
  sub_100058594(v9);
  sub_100029F20(v9, type metadata accessor for FMSelectedSection);
  sub_100029F20(v12, type metadata accessor for FMSelectedSection);
  return sub_100029F20(v33, type metadata accessor for FMSelectedSection);
}

uint64_t sub_10011CBB4(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v3 = type metadata accessor for FMFFriend();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = __chkstk_darwin(v3);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v83 = &v79 - v7;
  __chkstk_darwin(v6);
  v80 = &v79 - v8;
  v9 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v9 - 8);
  v87 = &v79 - v10;
  v11 = sub_10007EBC0(&unk_1006BBCE0);
  __chkstk_darwin(v11 - 8);
  v86 = &v79 - v12;
  v13 = type metadata accessor for FMSelectedSection();
  v14 = __chkstk_darwin(v13);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v79 - v18;
  __chkstk_darwin(v17);
  v21 = &v79 - v20;
  v22 = type metadata accessor for FMIPDevice();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v79 - v27;
  v29 = a2;
  sub_1000279D8(a2, v21, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload())
  {
    v84 = v23;
    v85 = v22;
    sub_100029F20(v21, type metadata accessor for FMSelectedSection);
    v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    v31 = v81;
    swift_beginAccess();
    sub_1000279D8(v31 + v30, v19, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v88;
      v33 = v89;
      v34 = v80;
      (*(v88 + 32))(v80, v19, v89);
      sub_1000BF014(v34);
      (*(v32 + 8))(v34, v33);
    }

    else
    {
      sub_100029F20(v19, type metadata accessor for FMSelectedSection);
      v32 = v88;
      v33 = v89;
    }

    v49 = v82;
    sub_1000279D8(v29, v16, type metadata accessor for FMSelectedSection);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v83;
      (*(v32 + 32))(v83, v16, v33);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100005B14(v51, qword_1006D4630);
      v52 = *(v32 + 16);
      v52(v49, v50, v33);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v49;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v90 = v57;
        *v56 = 136315138;
        v58 = FMFFriend.identifier.getter();
        v82 = v52;
        v59 = v58;
        v61 = v60;
        v62 = *(v88 + 8);
        v62(v55, v89);
        v63 = v59;
        v52 = v82;
        v64 = sub_100005B4C(v63, v61, &v90);
        v33 = v89;

        *(v56 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v53, v54, "FMMediator: Selection: Friend selected - %s", v56, 0xCu);
        sub_100006060(v57);
        v32 = v88;
      }

      else
      {

        v62 = *(v32 + 8);
        v62(v49, v33);
      }

      v76 = v86;
      (*(v84 + 56))(v86, 1, 1, v85);
      sub_1000E82EC(v76);
      sub_100012DF0(v76, &unk_1006BBCE0);
      v77 = v87;
      v78 = v83;
      v52(v87, v83, v33);
      (*(v32 + 56))(v77, 0, 1, v33);
      sub_1000BDA10(v77);
      sub_100012DF0(v77, &qword_1006B0050);
      sub_1000BEDC4(v78);
      return (v62)(v78, v33);
    }

    else
    {
      sub_100029F20(v16, type metadata accessor for FMSelectedSection);
      v65 = v85;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      sub_100005B14(v66, qword_1006D4630);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "FMMediator: Selection: Nothing selected", v69, 2u);
      }

      v70 = v86;
      (*(v84 + 56))(v86, 1, 1, v65);
      sub_1000E82EC(v70);
      sub_100012DF0(v70, &unk_1006BBCE0);
      v71 = v87;
      (*(v32 + 56))(v87, 1, 1, v33);
      sub_1000BDA10(v71);
      return sub_100012DF0(v71, &qword_1006B0050);
    }
  }

  else
  {
    v35 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    (*(v23 + 32))(v28, v21, v22);
    sub_100012DF0(&v21[v35], &qword_1006B07D0);
    v83 = v28;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = *(v23 + 16);
    v37(v26, v83, v22);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v84 = v23;
      v41 = v40;
      v42 = swift_slowAlloc();
      v85 = v22;
      v43 = v42;
      v91[0] = v42;
      *v41 = 136315138;
      v44 = FMIPDevice.identifier.getter();
      v82 = v37;
      v46 = v45;
      v47 = *(v84 + 8);
      v47(v26, v85);
      v48 = sub_100005B4C(v44, v46, v91);
      v37 = v82;

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "FMMediator: Selection: Device selected - %s", v41, 0xCu);
      sub_100006060(v43);
      v22 = v85;

      v23 = v84;
    }

    else
    {

      v47 = *(v23 + 8);
      v47(v26, v22);
    }

    v73 = v86;
    v74 = v83;
    v37(v86, v83, v22);
    (*(v23 + 56))(v73, 0, 1, v22);
    sub_1000E82EC(v73);
    sub_100012DF0(v73, &unk_1006BBCE0);
    v75 = v87;
    (*(v88 + 56))(v87, 1, 1, v89);
    sub_1000BDA10(v75);
    sub_100012DF0(v75, &qword_1006B0050);
    return (v47)(v74, v22);
  }
}

uint64_t sub_10011D674()
{

  return v0;
}

uint64_t sub_10011D6E4()
{
  sub_10011D674();

  return swift_deallocClassInstance();
}

uint64_t sub_10011D718()
{
  _StringGuts.grow(_:)(16);
  v0._countAndFlagsBits = 0x616964654D4D463CLL;
  v0._object = 0xED0000203A726F74;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0;
}

void sub_10011D820(const char *a1, char a2)
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
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  FMIPManager.pauseThrottleOfflineLocationRefreshing(pause:)(a2 & 1);
}

void sub_10011D918()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMediator: People are now initialized", v5, 2u);
  }

  v6 = *(v1 + 16);
  v6[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized] = 1;
  sub_10000F064();
  v7 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize;
  v6[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize] = 0;
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v6[v7];

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: Friends failed to initialize %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_10000F24C();
}

void sub_10011DAD0()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMMediator: People failed to initialize", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize;
  v5[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didFriendsFailToInitialize] = 1;
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5[v6];

    _os_log_impl(&_mh_execute_header, v8, v9, "FMConditionProvider: Friends failed to initialize %{BOOL}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  sub_10000F24C();
  *(&v7->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) = 0;
  sub_10000F064();
}

void sub_10011DC7C()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMediator: Devices are now initialized", v5, 2u);
  }

  v6 = *(v1 + 16);
  v6[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized] = 1;
  sub_10000FAEC();
  v7 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize;
  v6[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize] = 0;
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v6[v7];

    _os_log_impl(&_mh_execute_header, v9, v10, "FMConditionProvider: Devices failed to initialize %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_10000F24C();
}

void sub_10011DE34()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMMediator: Devices failed to initialize", v4, 2u);
  }

  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize;
  v5[OBJC_IVAR____TtC6FindMy19FMConditionProvider_didDevicesFailToInitialize] = 1;
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5[v6];

    _os_log_impl(&_mh_execute_header, v8, v9, "FMConditionProvider: Devices failed to initialize %{BOOL}d", v10, 8u);
  }

  else
  {

    v8 = v7;
  }

  sub_10000F24C();
  *(&v7->isa + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) = 0;
  sub_10000FAEC();
}

uint64_t sub_10011DFE0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v88 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTime();
  v87 = *(v94 - 8);
  v10 = __chkstk_darwin(v94);
  v82 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v68 - v12;
  v13 = sub_10007EBC0(&qword_1006B2B68);
  v84 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v85 = v15;
  v86 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v68 - v16;
  v17 = sub_10007EBC0(&qword_1006B2B70);
  v80 = *(v17 - 8);
  v18 = __chkstk_darwin(v17 - 8);
  v83 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v19;
  __chkstk_darwin(v18);
  v91 = &v68 - v20;
  v76 = type metadata accessor for FMSelectedSection();
  v77 = *(v76 - 8);
  v21 = __chkstk_darwin(v76);
  v79 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v22;
  __chkstk_darwin(v21);
  v90 = &v68 - v23;
  v98 = type metadata accessor for FMIPItem();
  v95 = *(v98 - 8);
  v24 = __chkstk_darwin(v98);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v24);
  v29 = *(v1 + 72);
  v30 = *(v1 + 80);
  if (v30)
  {
    v89 = &v68 - v28;
    v69 = (v1 + 72);
    v70 = v8;
    v71 = v6;
    v72 = v7;
    v73 = v4;
    v74 = v3;
    v75 = v1;
    v31 = *(a1 + 16);

    v32 = v98;
    if (v31)
    {
      v33 = *(v95 + 2);
      v96 = (v95 + 8);
      v97 = v33;
      v34 = a1 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v35 = *(v95 + 9);
      while (1)
      {
        v97(v26, v34, v32);
        if (FMIPItem.identifier.getter() == v29 && v30 == v36)
        {
          break;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_10;
        }

        v32 = v98;
        (*v96)(v26, v98);
        v34 += v35;
        if (!--v31)
        {
        }
      }

LABEL_10:
      v38 = v98;
      (*(v95 + 4))(v89, v26, v98);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100005B14(v39, qword_1006D4630);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        v44 = sub_100005B4C(v29, v30, aBlock);

        *(v42 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "FMMediator: Continuing pending navigation to item with id: %s", v42, 0xCu);
        sub_100006060(v43);

        v38 = v98;
      }

      else
      {
      }

      v45 = v90;
      v97(v90, v89, v38);
      v46 = v45;
      v47 = v76;
      swift_storeEnumTagMultiPayload();
      v48 = v91;
      swift_storeEnumTagMultiPayload();
      v49 = v77 + 56;
      (*(v77 + 56))(v48, 0, 1, v47);
      v50 = type metadata accessor for FMPendingInfo();
      v51 = v92;
      (*(*(v50 - 8) + 56))(v92, 1, 1, v50);
      sub_10000905C(0, &qword_1006AEDC0);
      v77 = static OS_dispatch_queue.main.getter();
      v52 = v82;
      static DispatchTime.now()();
      + infix(_:_:)();
      v97 = *(v87 + 8);
      (v97)(v52, v94);
      v53 = swift_allocObject();
      swift_weakInit();
      v95 = type metadata accessor for FMSelectedSection;
      v54 = v79;
      sub_1000279D8(v46, v79, type metadata accessor for FMSelectedSection);
      v55 = v83;
      sub_100007204(v48, v83, &qword_1006B2B70);
      v56 = v86;
      sub_100007204(v51, v86, &qword_1006B2B68);
      v57 = (*(v49 + 24) + 24) & ~*(v49 + 24);
      v58 = (v78 + *(v80 + 80) + v57) & ~*(v80 + 80);
      v59 = (v81 + *(v84 + 80) + v58) & ~*(v84 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = v53;
      sub_100056FB4(v54, v60 + v57, type metadata accessor for FMSelectedSection);
      sub_100035318(v55, v60 + v58, &qword_1006B2B70);
      sub_100035318(v56, v60 + v59, &qword_1006B2B68);
      aBlock[4] = sub_10011EB94;
      aBlock[5] = v60;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100627EC0;
      v61 = _Block_copy(aBlock);

      v62 = v88;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100009FA0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      v63 = v71;
      v64 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v65 = v93;
      v66 = v77;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v61);

      (*(v73 + 8))(v63, v64);
      (*(v70 + 8))(v62, v72);
      (v97)(v65, v94);
      sub_100012DF0(v92, &qword_1006B2B68);
      sub_100012DF0(v91, &qword_1006B2B70);
      sub_100029F20(v90, v95);
      (*v96)(v89, v98);
      v67 = v69;
      *v69 = 0;
      v67[1] = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FMPendingInfo()
{
  result = qword_1006B2BF0;
  if (!qword_1006B2BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011EB98(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areFriendsInitialized) == 1 && (*(a1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areDevicesInitialized) & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "FMMediator: Condition provider got network but app is initialized. Nothing to do", v4, 2u);
    }

    return dispatch thunk of FMFManager.restartMonitoringLocation()();
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v7, v8, "FMMediator: Condition provider got network trying to retry initialization", v9, 2u);
    }

    sub_1000E503C();
    result = dispatch thunk of FMFManager.isInitialized.getter();
    if ((result & 1) == 0)
    {
      return dispatch thunk of FMFManager.initialize()();
    }
  }

  return result;
}

uint64_t sub_10011ED84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B8DD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011EDF4()
{
  v1 = *(sub_10007EBC0(&qword_1006B2B68) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));
  return sub_100117634(v0[3], v0[4], v0[5], v0[6], v2, v2[*(v1 + 64)], 0);
}

uint64_t sub_10011EE90(uint64_t a1, void (**a2)(void, void))
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001115CC(a1, a2, v7, (v2 + v6), v8);
}

uint64_t sub_10011EF80()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B2B70) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(sub_10007EBC0(&qword_1006B2B68) - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v9 + v11;
  v13 = *(v10 + 64);

  v14 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v13;
  v45 = v3;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v14 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v16 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v16 - 8) + 8))(v14, v16);
          break;
        case 8:
          v16 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v17 = type metadata accessor for URL();
          (*(*(v17 - 8) + 8))(v14, v17);
          v18 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
          v19 = type metadata accessor for UUID();
          (*(*(v19 - 8) + 8))(v14 + v18, v19);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for FMFFriend();
      }

      else
      {
        v16 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v20 = type metadata accessor for FMIPDevice();
    (*(*(v20 - 8) + 8))(v14, v20);
    v43 = v7;
    v21 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v22 = type metadata accessor for FMIPItem();
    v23 = *(v22 - 8);
    v42 = v21;
    v24 = v14 + v21;
    v7 = v43;
    if (!(*(v23 + 48))(v24, 1, v22))
    {
      (*(v23 + 8))(v14 + v42, v22);
    }
  }

LABEL_20:
  v25 = v12 & ~v11;
  v26 = v0 + v8;
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 > 4)
    {
      if (v27 <= 6)
      {

        if (*(v26 + 16) >= 4uLL)
        {
        }
      }

      else
      {
        switch(v27)
        {
          case 7:
LABEL_32:
            v28 = type metadata accessor for FMIPDevice();
LABEL_39:
            (*(*(v28 - 8) + 8))(v0 + v8, v28);
            break;
          case 8:
            v28 = type metadata accessor for FMIPUnknownItem();
            goto LABEL_39;
          case 10:
            v29 = type metadata accessor for URL();
            (*(*(v29 - 8) + 8))(v0 + v8, v29);
            v30 = *(sub_10007EBC0(&qword_1006B6BD0) + 48);
            v31 = type metadata accessor for UUID();
            (*(*(v31 - 8) + 8))(v26 + v30, v31);
            break;
        }
      }
    }

    else
    {
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v28 = type metadata accessor for FMFFriend();
        }

        else
        {
          v28 = type metadata accessor for FMIPItem();
        }

        goto LABEL_39;
      }

      if (v27)
      {
        if (v27 == 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = type metadata accessor for FMIPDevice();
        (*(*(v32 - 8) + 8))(v0 + v8, v32);
        v33 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
        v34 = type metadata accessor for FMIPItem();
        v35 = *(v34 - 8);
        if (!(*(v35 + 48))(v26 + v33, 1, v34))
        {
          (*(v35 + 8))(v26 + v33, v34);
        }
      }
    }
  }

  v36 = (v0 + v25);
  v37 = type metadata accessor for FMPendingInfo();
  if (!(*(*(v37 - 8) + 48))(v0 + v25, 1, v37))
  {

    v38 = *(v37 + 20);
    v39 = type metadata accessor for FMSelectionPendingAction(0);
    if (!(*(*(v39 - 8) + 48))(v36 + v38, 1, v39) && swift_getEnumCaseMultiPayload() <= 1)
    {
      v40 = type metadata accessor for UUID();
      (*(*(v40 - 8) + 8))(v36 + v38, v40);
    }
  }

  return _swift_deallocObject(v0, v25 + v44, v45 | v7 | v11 | 7);
}

uint64_t sub_10011F690()
{
  v1 = *(type metadata accessor for FMSelectedSection() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10007EBC0(&qword_1006B2B70) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10007EBC0(&qword_1006B2B68) - 8);
  v8 = *(v0 + 16);
  v9 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10011C5D0(v8, v0 + v2, v0 + v5, v9);
}

uint64_t sub_10011F80C()
{
  v1 = *(sub_10007EBC0(&qword_1006B1310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FMIPURLInfo();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10011F944(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_10007EBC0(&qword_1006B1310) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_10011F9F0()
{
  sub_10011FA74();
  if (v0 <= 0x3F)
  {
    sub_10011FADC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10011FA74()
{
  if (!qword_1006B2C00)
  {
    sub_10000905C(255, &qword_1006BBCB0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B2C00);
    }
  }
}

void sub_10011FADC()
{
  if (!qword_1006B2C08)
  {
    type metadata accessor for FMSelectionPendingAction(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B2C08);
    }
  }
}

id sub_10011FD34()
{
  v1 = [v0 layer];
  v24 = &type metadata for SolariumFeatureFlag;
  v2 = sub_10000BD04();
  v25 = v2;
  v3 = isFeatureEnabled(_:)();
  sub_100006060(v23);
  v4 = _UISheetCornerRadius;
  if (v3)
  {
    v4 = 26.0;
  }

  [v1 setCornerRadius:v4];

  v5 = [v0 layer];
  [v5 setMasksToBounds:0];

  v24 = &type metadata for SolariumFeatureFlag;
  v25 = v2;
  v6 = isFeatureEnabled(_:)();
  sub_100006060(v23);
  v7 = [v0 layer];
  v8 = v7;
  if (v6)
  {
    [v7 setCornerCurve:kCACornerCurveContinuous];
  }

  else
  {
    v9 = [objc_opt_self() blackColor];
    v10 = [v9 CGColor];

    [v8 setShadowColor:v10];
    v11 = [v0 layer];
    LODWORD(v12) = 1031127695;
    [v11 setShadowOpacity:v12];

    v13 = [v0 layer];
    [v13 setShadowRadius:16.0];

    v14 = [v0 layer];
    [v14 setShadowOffset:{0.0, 0.0}];

    v15 = [v0 layer];
    [v15 setShouldRasterize:1];

    v8 = [v0 layer];
    v16 = [objc_opt_self() mainScreen];
    [v16 scale];
    v18 = v17;

    [v8 setRasterizationScale:v18];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v19 = [v0 traitCollection];
  v20 = sub_100356E0C(v19);

  [v0 setBackgroundColor:v20];
  v21 = *&v0[OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView];
  [v21 setAxis:1];
  return [v0 addSubview:v21];
}

void sub_100120088()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy18FMPlatterGroupView_contentStackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = &type metadata for SolariumFeatureFlag;
  v25 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v23);
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v1 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 layoutMarginsGuide];
  v10 = [v9 leadingAnchor];

  if (v2)
  {
    v11 = [v8 constraintEqualToAnchor:v10 constant:-4.0];

    *(v4 + 40) = v11;
    v12 = [v1 trailingAnchor];
    v13 = [v0 layoutMarginsGuide];
    v14 = [v13 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor:v14 constant:4.0];
  }

  else
  {
    v16 = [v8 constraintEqualToAnchor:v10];

    *(v4 + 40) = v16;
    v12 = [v1 trailingAnchor];
    v17 = [v0 layoutMarginsGuide];
    v14 = [v17 trailingAnchor];

    v15 = [v12 constraintEqualToAnchor:v14];
  }

  v18 = v15;

  *(v4 + 48) = v18;
  v19 = [v1 bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v4 + 56) = v21;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_1001203C8(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMPlatterGroupView();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v3 = [v1 traitCollection];
  v4 = sub_100356E0C(v3);

  [v1 setBackgroundColor:v4];
  [v1 _contentMargin];
  [v1 directionalLayoutMargins];
  [v1 setDirectionalLayoutMargins:?];
  [v1 _contentMargin];
  [v1 directionalLayoutMargins];
  return [v1 setDirectionalLayoutMargins:?];
}

id sub_10012058C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterGroupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001205F4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9)
{
  v69 = a8;
  v70 = a7;
  v67 = a4;
  v68 = a6;
  v71 = a2;
  v72 = a9;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  if (a1 && (v21 = [a1 image]) != 0)
  {
    *(v20 + 16) = v21;
    v66 = v20;
    if (a3)
    {
      sub_100003E90();
      v65 = v13;
      v22 = a3;
      v62 = a5;
      v23 = v22;
      v64 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      v26 = v67;
      v25 = v68;
      v24[2] = a1;
      v24[3] = v26;
      v24[4] = v20;
      v24[5] = a5;
      v24[6] = v23;
      v24[7] = v25;
      v68 = v16;
      v27 = v69;
      v24[8] = v70;
      v24[9] = v27;
      v69 = v17;
      v24[10] = v72;
      aBlock[4] = sub_10012263C;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100628410;
      v63 = _Block_copy(aBlock);

      v28 = v23;
      v29 = a1;
      v30 = v26;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100003F6C(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v31 = v63;
      v32 = v64;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v65 + 8))(v15, v12);
      (*(v69 + 8))(v19, v68);
    }

    else
    {
      v42 = v21;
      swift_beginAccess();
      v43 = v70;

      v44 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[0] = *(a5 + 24);
      *(a5 + 24) = 0x8000000000000000;
      sub_1001BB8CC(v44, v68, v43, isUniquelyReferenced_nonNull_native);

      *(a5 + 24) = v74[0];
      swift_endAccess();
      v46 = *(v20 + 16);
      (v69)();
    }

    v47 = v71;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100005B14(v48, qword_1006D4630);
    v49 = v66;

    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v52 = 136315394;
      swift_beginAccess();
      v53 = *(v49 + 16);
      v54 = [v53 description];
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = sub_100005B4C(v55, v57, v74);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      aBlock[6] = v47;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v59 = String.init<A>(describing:)();
      v61 = sub_100005B4C(v59, v60, v74);

      *(v52 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v50, v51, "FMMapSnapshotter: Got snapshot - %s. Error - %s", v52, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    swift_deallocUninitializedObject();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v34 = v71;
    swift_errorRetain();
    v72 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      v74[0] = v34;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v38 = String.init<A>(describing:)();
      v40 = sub_100005B4C(v38, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v72, v35, "FMMapSnapshotter: Could not generate map snapshot image. Error - %s", v36, 0xCu);
      sub_100006060(v37);
    }

    else
    {
      v41 = v72;
    }
  }
}

void sub_100120D94(void *a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  if (a1)
  {
    [a2 coordinate];
    [a1 pointForCoordinate:?];
    v17 = v16;
    v19 = v18;
    swift_beginAccess();
    [*(a3 + 16) size];
    v21 = v20;
    v23 = v22;
    swift_beginAccess();
    [*(a3 + 16) scale];
    v25 = v24;
    v38.width = v21;
    v38.height = v23;
    UIGraphicsBeginImageContextWithOptions(v38, 1, v25);
    swift_beginAccess();
    [*(a3 + 16) drawAtPoint:{0.0, 0.0}];
    [a5 setContentMode:1];
    [a5 bounds];
    v27 = v17 - v26 * 0.5;
    [a5 bounds];
    v29 = v19 - v28 * 0.5;
    [a5 bounds];
    Width = CGRectGetWidth(v39);
    [a5 bounds];
    [a5 drawViewHierarchyInRect:1 afterScreenUpdates:{v27, v29, Width, CGRectGetHeight(v40)}];
    v31 = UIGraphicsGetImageFromCurrentImageContext();
    if (!v31)
    {
      swift_beginAccess();
      v31 = *(a3 + 16);
    }

    swift_beginAccess();
    v32 = *(a3 + 16);
    *(a3 + 16) = v31;
  }

  swift_beginAccess();
  v33 = *(a3 + 16);
  swift_beginAccess();

  v34 = v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1001BB8CC(v34, a6, a7, isUniquelyReferenced_nonNull_native);

  *(a4 + 24) = v37;
  swift_endAccess();
  swift_beginAccess();
  v36 = *(a3 + 16);
  a8();
}

void sub_10012105C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001210E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10012114C()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100003E90();
  v8[0] = "apshotQueue";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_100003F6C(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = &_swiftEmptyDictionarySingleton;
  return v0;
}

void sub_1001213A8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v54 = a7;
  v15[4] = a8;
  v53 = a6;

  [a2 coordinate];
  [a2 coordinate];
  Double.write<A>(to:)();
  v16._countAndFlagsBits = 45;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  Double.write<A>(to:)();
  [a3 userInterfaceStyle];
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  [a1 mapType];
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  [a1 size];
  v25 = Double.description.getter();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  [a1 size];
  v29 = Double.description.getter();
  v31 = v30;
  aBlock = 0;
  v57 = 0xE000000000000000;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  swift_beginAccess();
  v33 = *(a5 + 24);
  if (*(v33 + 16))
  {

    v34 = sub_10000726C(0, 0xE000000000000000);
    if (v35)
    {
      v36 = *(*(v33 + 56) + 8 * v34);

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100005B14(v37, qword_1006D4630);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = 136315138;
        v42 = sub_100005B4C(0, 0xE000000000000000, &aBlock);

        *(v40 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "FMMapSnapshotter: Returning cached image for hash %s", v40, 0xCu);
        sub_100006060(v41);
      }

      else
      {
      }

      sub_1000B55E8(v36, v53, v54, a8);
      goto LABEL_15;
    }
  }

  v36 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:{a1, v53, a7}];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100005B14(v43, qword_1006D4630);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_100005B4C(0, 0xE000000000000000, &aBlock);
    _os_log_impl(&_mh_execute_header, v44, v45, "FMMapSnapshotter: Creating new image for hash %s", v46, 0xCu);
    sub_100006060(v47);
  }

  v48 = *(a5 + 16);
  v49 = swift_allocObject();
  v49[2] = a4;
  v49[3] = a2;
  v49[4] = a5;
  v49[5] = 0;
  v49[6] = 0xE000000000000000;
  v49[7] = sub_1001226C8;
  v49[8] = v15;
  v60 = sub_100122778;
  v61 = v49;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10012105C;
  v59 = &unk_100628500;
  v50 = _Block_copy(&aBlock);
  v51 = a4;
  v52 = a2;

  [v36 startWithQueue:v48 completionHandler:v50];
  _Block_release(v50);
LABEL_15:
}

uint64_t sub_100121AD8(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(id, id, id, uint64_t, uint64_t))
{
  v104 = a5;
  v102 = a6;

  [a1 coordinate];
  [a1 coordinate];
  Double.write<A>(to:)();
  v23._countAndFlagsBits = 45;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  Double.write<A>(to:)();
  [a2 userInterfaceStyle];
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  String.append(_:)(v31);

  v32 = Double.description.getter();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36 = Double.description.getter();
  v38 = v37;
  aBlock = 0;
  v110 = 0xE000000000000000;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  swift_beginAccess();
  v106 = a4;
  v40 = *(a4 + 24);
  if (!*(v40 + 16))
  {
LABEL_8:

    [a1 coordinate];
    v51 = v50 + 0.0025;
    [a1 coordinate];
    v53 = CLLocationCoordinate2DMake(v51, v52);
    v115 = CLLocationCoordinate2DMake(v53.latitude + 0.005, v53.longitude + -0.005);
    v54 = MKMapPointForCoordinate(v115);
    v116 = CLLocationCoordinate2DMake(v53.latitude + -0.005, v53.longitude + 0.005);
    v55 = MKMapPointForCoordinate(v116);
    v56 = a8;
    v57 = [objc_allocWithZone(MKMapSnapshotOptions) init];
    [v57 setMapRect:{v54.x, v54.y, v55.x - v54.x, v55.y - v54.y}];
    [v57 setSize:{a9, a10}];
    [v57 setTraitCollection:a2];
    v58 = swift_allocObject();
    v58[2] = v104;
    v58[3] = v102;
    v58[4] = a7;
    v58[5] = v56;
    v59 = v104;
    v60 = v102;
    v105 = v56;
    swift_bridgeObjectRetain_n();
    v103 = v59;
    v61 = v60;
    [a1 coordinate];
    [a1 coordinate];
    Double.write<A>(to:)();
    v62._countAndFlagsBits = 45;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    Double.write<A>(to:)();
    [a2 userInterfaceStyle];
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    [v57 mapType];
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;

    v70._countAndFlagsBits = v67;
    v70._object = v69;
    String.append(_:)(v70);

    [v57 size];
    v71 = Double.description.getter();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    String.append(_:)(v74);

    [v57 size];
    v75 = Double.description.getter();
    v77 = v76;
    aBlock = 0;
    v110 = 0xE000000000000000;

    v78._countAndFlagsBits = v75;
    v78._object = v77;
    String.append(_:)(v78);

    v79 = *(v106 + 24);
    if (*(v79 + 16))
    {

      v80 = sub_10000726C(0, 0xE000000000000000);
      if (v81)
      {
        v99 = *(*(v79 + 56) + 8 * v80);

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        sub_100005B14(v82, qword_1006D4630);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          aBlock = v86;
          *v85 = 136315138;
          v87 = sub_100005B4C(0, 0xE000000000000000, &aBlock);

          *(v85 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v83, v84, "FMMapSnapshotter: Returning cached image for hash %s", v85, 0xCu);
          sub_100006060(v86);
        }

        else
        {
        }

        v43 = v99;
        a16(v99, v103, v61, a7, v105);

LABEL_24:

        goto LABEL_25;
      }
    }

    v100 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v57];
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v108 = v61;
    v88 = type metadata accessor for Logger();
    sub_100005B14(v88, qword_1006D4630);

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock = v92;
      *v91 = 136315138;
      *(v91 + 4) = sub_100005B4C(0, 0xE000000000000000, &aBlock);
      _os_log_impl(&_mh_execute_header, v89, v90, "FMMapSnapshotter: Creating new image for hash %s", v91, 0xCu);
      sub_100006060(v92);
    }

    v93 = *(v106 + 16);
    v94 = swift_allocObject();
    v94[2] = a3;
    v94[3] = a1;
    v94[4] = v106;
    v94[5] = 0;
    v94[6] = 0xE000000000000000;
    v94[7] = a13;
    v94[8] = v58;
    v113 = a14;
    v114 = v94;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_10012105C;
    v112 = a15;
    v95 = _Block_copy(&aBlock);
    v96 = a3;
    v97 = a1;

    v43 = v100;
    [v100 startWithQueue:v93 completionHandler:v95];
    _Block_release(v95);

    goto LABEL_24;
  }

  v41 = sub_10000726C(0, 0xE000000000000000);
  if ((v42 & 1) == 0)
  {

    goto LABEL_8;
  }

  v43 = *(*(v40 + 56) + 8 * v41);

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100005B14(v44, qword_1006D4630);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v47 = 136315138;
    v49 = sub_100005B4C(0, 0xE000000000000000, &aBlock);

    *(v47 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v45, v46, "FMMapSnapshotter: Returning cached image for hash %s", v47, 0xCu);
    sub_100006060(v48);
  }

  else
  {
  }

  a16(v43, v104, v102, a7, a8);
LABEL_25:
}

uint64_t sub_100122674()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001226D4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10012277C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10007EBC0(&unk_1006B2DB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v25[-v10];
  v12 = type metadata accessor for FMPerformanceTestCase();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a3)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!a4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001586D4(a2, a3, a4, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100122AD4(v11);
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  sub_100122B3C(v11, v16);
  v17 = *(v4 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_window);
  if (!v17 || (v18 = [v17 rootViewController]) == 0)
  {
LABEL_13:
    sub_100122BA0(v16);
    goto LABEL_14;
  }

  v19 = v18;
  type metadata accessor for FMMainViewController();
  result = swift_dynamicCastClass();
  if (!result)
  {

    goto LABEL_13;
  }

  if (a1)
  {
    v20 = result;
    v21 = String._bridgeToObjectiveC()();
    [a1 startedTest:v21];

    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v22 = off_1006BE550;
    type metadata accessor for FMPerformanceTestRunner();
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    *(inited + 24) = v20;
    v24 = sub_10042DD34(v16);

    sub_100122BA0(v16);
    return v24 & 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100122AD4(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B2DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100122B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPerformanceTestCase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100122BA0(uint64_t a1)
{
  v2 = type metadata accessor for FMPerformanceTestCase();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_100122BFC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();
  v9 = sub_100123328(a1, a2, v7);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 1;
  }

  if (v9 != a1 || v11 != a2)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v14 & 1) == 0;
  }

  return 0;
}

id sub_100122DB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v5);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id ToggleLocationSharingIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "init");
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001230FC()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_100123238(uint64_t a1)
{
  sub_1001230FC();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();

  v4 = CFPhoneNumberCreate();

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v7 = String;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

uint64_t sub_100123328(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v29 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v10;
  if (v10)
  {
    v11 = 0;
    v23 = a2 & 0xFFFFFFFFFFFFFFLL;
    v21[1] = v3;
    v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v29;
          v26[1] = v23;
          v15 = v26 + v11;
        }

        else
        {
          v14 = v22;
          if ((v29 & 0x1000000000000000) == 0)
          {
            v14 = _StringObject.sharedUTF8.getter();
          }

          v15 = (v14 + v11);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v19 = (__clz(*v15 ^ 0xFF) - 24);
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            v17 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v17 = 1;
          goto LABEL_15;
        }

        if (v19 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

LABEL_15:
      (*v12)(v9, v25, v6);
      v18 = CharacterSet.contains(_:)();
      (*v13)(v9, v6);
      if (v18)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v11 += v17;
      if (v11 >= v24)
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_1001235AC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  v8._countAndFlagsBits = 0x2D232A29282BLL;
  v8._object = 0xE600000000000000;
  CharacterSet.insert(charactersIn:)(v8);
  v28 = a1;
  v29 = a2;
  sub_100035F3C();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  if (v9)
  {

    v10 = a1;
    v11 = a2;
  }

  else
  {
    v28 = a1;
    v29 = a2;
    v12 = String.Index.utf16Offset<A>(in:)();
    result = String.count.getter();
    v14 = result - v12;
    if (__OFSUB__(result, v12))
    {
      __break(1u);
      return result;
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = [v15 substringWithRange:{v12, v14}];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v17;
  }

  v18 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v18 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v27 = v4;
    sub_1001230FC();
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();

    v21 = CFPhoneNumberCreate();

    if (v21)
    {
      v22 = v21;
      String = CFPhoneNumberCreateString();
      v24 = v27;
      if (String)
      {
        v25 = String;

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v5 + 8))(v7, v24);
      }

      else
      {
        (*(v5 + 8))(v7, v27);
      }
    }

    else
    {
      (*(v5 + 8))(v7, v27);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

uint64_t sub_100123894(uint64_t a1)
{
  v2 = static String.emailPredicate.getter();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 evaluateWithObject:v3];

  if (v4)
  {
  }

  else
  {
    a1 = sub_100123238(a1);
    v6 = v5;

    v7._countAndFlagsBits = 43;
    v7._object = 0xE100000000000000;
    v8 = String.hasPrefix(_:)(v7);

    if (!v8 && String.count.getter() >= 2)
    {
      v9._countAndFlagsBits = a1;
      v9._object = v6;
      String.append(_:)(v9);

      return 43;
    }
  }

  return a1;
}

uint64_t sub_10012399C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPAccessoryError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_10012982C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006285D0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_100123CF0()
{
  v1 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v8 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_startDate;
  swift_beginAccess();
  (*(v5 + 40))(&v0[v8], v7, v4);
  swift_endAccess();
  v9 = v0;
  v10 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    v19 = 0;
    *v13 = 136315138;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    v15._object = 0x800000010057F500;
    v15._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v15);
    type metadata accessor for FMIPDiscoveredAccessory();
    _print_unlocked<A, B>(_:_:)();
    v16 = sub_100005B4C(v19, v20, &v18);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "FMAccessoryPairingCoordinator: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  swift_storeEnumTagMultiPayload();
  sub_100123FF0(v3);
  return sub_100128FAC(v3, type metadata accessor for FMAccessoryPairingCoordinator.Event);
}

uint64_t sub_100123FF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMIPAccessoryError();
  v151 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v142 = &v127[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v150 = &v127[-v7];
  v8 = type metadata accessor for FMIPItem();
  v143 = *(v8 - 8);
  v144 = v8;
  __chkstk_darwin(v8);
  v146 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  v11 = __chkstk_darwin(v10);
  v147 = &v127[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v127[-v13];
  v15 = sub_10007EBC0(&qword_1006B3028);
  __chkstk_darwin(v15 - 8);
  v132 = &v127[-v16];
  v133 = type metadata accessor for FMIPItemRole();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v127[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v148 = sub_10007EBC0(&qword_1006B3030);
  __chkstk_darwin(v148);
  v19 = &v127[-v18];
  v152 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  v20 = __chkstk_darwin(v152);
  v137 = &v127[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v141 = &v127[-v23];
  v24 = __chkstk_darwin(v22);
  v139 = &v127[-v25];
  v26 = __chkstk_darwin(v24);
  v140 = &v127[-v27];
  v28 = __chkstk_darwin(v26);
  v138 = &v127[-v29];
  v30 = __chkstk_darwin(v28);
  v136 = &v127[-v31];
  v32 = __chkstk_darwin(v30);
  v135 = &v127[-v33];
  v34 = __chkstk_darwin(v32);
  v134 = &v127[-v35];
  v36 = __chkstk_darwin(v34);
  v38 = &v127[-v37];
  __chkstk_darwin(v36);
  v40 = &v127[-v39];
  v149 = a1;
  sub_100129530(a1, &v127[-v39], type metadata accessor for FMAccessoryPairingCoordinator.Event);
  v41 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100005B14(v42, qword_1006D4630);
  v43 = Logger.logObject.getter();
  v44 = os_log_type_enabled(v43, v41);
  v145 = v4;
  if (v44)
  {
    v45 = v41;
    v46 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v153[0] = v129;
    *v46 = 136315138;
    v154 = 0;
    v155 = 0xE000000000000000;
    v128 = v45;
    _StringGuts.grow(_:)(18);
    v47._object = 0x800000010057F430;
    v47._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v47);
    _print_unlocked<A, B>(_:_:)();
    v48 = v10;
    v49 = v14;
    v50 = v2;
    v51 = v38;
    v52 = v19;
    v53 = sub_100005B4C(v154, v155, v153);

    *(v46 + 4) = v53;
    v19 = v52;
    v38 = v51;
    v2 = v50;
    v14 = v49;
    v10 = v48;
    _os_log_impl(&_mh_execute_header, v43, v128, "FMAccessoryPairingCoordinator: %s", v46, 0xCu);
    sub_100006060(v129);
  }

  sub_100128FAC(v40, type metadata accessor for FMAccessoryPairingCoordinator.Event);
  sub_1001254F4(v149, v38);
  v54 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_state;
  swift_beginAccess();
  v55 = *(v148 + 48);
  sub_100129530(v2 + v54, v19, type metadata accessor for FMAccessoryPairingCoordinator.State);
  sub_100129530(v38, v19 + v55, type metadata accessor for FMAccessoryPairingCoordinator.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v150;
  v58 = v151;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v91 = v136;
      sub_100129530(v19 + v55, v136, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      v92 = v91[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_7;
      }

      v93 = *v91;
      v94 = v19[1];
      *v14 = *v19;
      v14[1] = v94;
      v14[2] = v93;
      v14[3] = v92;
      goto LABEL_48;
    case 2:
      v68 = v140;
      sub_100129530(v19 + v55, v140, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    case 3:
      v152 = v10;
      v149 = v55;
      v82 = v137;
      sub_100129530(v19 + v55, v137, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      v83 = *(v58 + 32);
      v84 = v82;
      v85 = v58;
      v86 = v145;
      v83(v57, v84, v145);
      v87 = v57;
      v88 = *(v85 + 16);
      v89 = v142;
      v88(v142, v87, v86);
      if ((*(v85 + 88))(v89, v86) == enum case for FMIPAccessoryError.invalidAccountState(_:))
      {
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v90 = v147;
        sub_100129530(v2 + v54, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v90);
        sub_100128FAC(v90, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
        (*(v151 + 8))(v150, v145);
        sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      }

      else
      {
        v111 = v150;
        v88(v14, v150, v145);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v112 = v147;
        sub_100129530(v2 + v54, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v112);
        sub_100128FAC(v112, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
        v113 = *(v151 + 8);
        v114 = v111;
        v115 = v145;
        v113(v114, v145);
        sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
        v113(v89, v115);
      }

      v108 = v19 + v149;
      goto LABEL_40;
    case 4:
      v68 = v138;
      sub_100129530(v19 + v55, v138, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_20:
        v152 = type metadata accessor for FMAccessoryPairingCoordinator.State;
        sub_100128FAC(v19, type metadata accessor for FMAccessoryPairingCoordinator.State);
        v75 = v143;
        v76 = v146;
        v77 = v68;
        v78 = v144;
        (*(v143 + 32))(v146, v77, v144);
        (*(v75 + 16))(v14, v76, v78);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v79 = v2 + v54;
        v80 = v147;
        sub_100129530(v79, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v80);
        v81 = v152;
        sub_100128FAC(v80, v152);
        sub_100128FAC(v14, v81);
        (*(v75 + 8))(v76, v78);
        goto LABEL_50;
      }

LABEL_21:
      sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      sub_100012DF0(v68, &unk_1006B3038);
      goto LABEL_39;
    case 5:
      v95 = v19 + v55;
      v96 = v139;
      goto LABEL_30;
    case 6:
      v95 = v19 + v55;
      v96 = v141;
LABEL_30:
      sub_100129530(v95, v96, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v97 = v143;
        v98 = v146;
        v99 = v96;
        v100 = v144;
        (*(v143 + 32))(v146, v99, v144);
        (*(v97 + 16))(v14, v98, v100);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v101 = v2 + v54;
        v102 = v147;
        sub_100129530(v101, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v102);
        sub_100128FAC(v102, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
        v103 = *(v97 + 8);
        v103(v146, v100);
        sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
        v103(v19, v100);
        goto LABEL_52;
      }

      sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      sub_100012DF0(v96, &unk_1006B3038);
      goto LABEL_39;
    case 7:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v66 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v67 = sub_10012983C;
      goto LABEL_37;
    case 8:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v152 = v10;
      v70 = v132;
      FMIPDiscoveredAccessory.defaultRole.getter();
      v71 = v70;
      v72 = v131;
      v73 = v70;
      v74 = v133;
      if ((*(v131 + 48))(v73, 1, v133) == 1)
      {
        sub_100012DF0(v71, &qword_1006B3028);
      }

      else
      {
        v119 = v130;
        (*(v72 + 32))(v130, v71, v74);
        v120 = sub_100129014();
        v121 = v74;
        v122 = v120;
        v124 = v123;
        (*(v72 + 8))(v119, v121);
        if (v124)
        {
          goto LABEL_47;
        }
      }

      v122 = 0;
      v124 = 0;
LABEL_47:
      *v14 = v122;
      v14[1] = v124;
LABEL_48:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100129334(v14, v2 + v54);
      swift_endAccess();
      v125 = v147;
      sub_100129530(v2 + v54, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
      sub_1001257D0(v125);
      sub_100128FAC(v125, type metadata accessor for FMAccessoryPairingCoordinator.State);
      v118 = v14;
      goto LABEL_49;
    case 9:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_38;
      }

      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100129334(v14, v2 + v54);
      swift_endAccess();
      v104 = v2 + v54;
      v105 = v147;
      sub_100129530(v104, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
      sub_1001257D0(v105);
      sub_100128FAC(v105, type metadata accessor for FMAccessoryPairingCoordinator.State);
      sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
      sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      (*(v58 + 8))(v19, v145);
      goto LABEL_52;
    case 10:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_38;
      }

      v66 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v67 = sub_100129598;
LABEL_37:
      sub_10015DBD0(v67, v66);

      v106 = v134;
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v106);
      sub_100128FAC(v106, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      v107 = v38;
      goto LABEL_51;
    case 11:
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_38;
      }

      v69 = v19[1];
      *v14 = *v19;
      v14[1] = v69;
      goto LABEL_48;
    case 12:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_38;
      }

      sub_100127678(*v19, v19[1], v19[2], v19[3]);

      goto LABEL_50;
    case 13:
      goto LABEL_38;
    case 14:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v62 = v143;
        v61 = v144;
        v63 = v146;
        (*(v143 + 32))(v146, v19, v144);
        (*(v62 + 16))(v14, v63, v61);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v64 = v2 + v54;
        v65 = v147;
        sub_100129530(v64, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v65);
        sub_100128FAC(v65, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
        (*(v62 + 8))(v63, v144);
        goto LABEL_50;
      }

LABEL_38:
      sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      goto LABEL_39;
    default:
      v59 = v135;
      sub_100129530(v19 + v55, v135, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      v60 = v59[1];
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_7:
        sub_100128FAC(v38, type metadata accessor for FMAccessoryPairingCoordinator.Event);

LABEL_39:
        v108 = v19 + v55;
LABEL_40:
        sub_100128FAC(v108, type metadata accessor for FMAccessoryPairingCoordinator.Event);
        v109 = type metadata accessor for FMAccessoryPairingCoordinator.State;
        v110 = v19;
      }

      else
      {
        v116 = *v59;
        sub_100128FAC(v19, type metadata accessor for FMAccessoryPairingCoordinator.State);
        *v14 = v116;
        v14[1] = v60;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100129334(v14, v2 + v54);
        swift_endAccess();
        v117 = v147;
        sub_100129530(v2 + v54, v147, type metadata accessor for FMAccessoryPairingCoordinator.State);
        sub_1001257D0(v117);
        sub_100128FAC(v117, type metadata accessor for FMAccessoryPairingCoordinator.State);
        v118 = v14;
LABEL_49:
        sub_100128FAC(v118, type metadata accessor for FMAccessoryPairingCoordinator.State);
LABEL_50:
        v107 = v38;
LABEL_51:
        sub_100128FAC(v107, type metadata accessor for FMAccessoryPairingCoordinator.Event);
LABEL_52:
        v110 = v19 + v55;
        v109 = type metadata accessor for FMAccessoryPairingCoordinator.Event;
      }

      return sub_100128FAC(v110, v109);
  }
}

uint64_t sub_1001254F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPAccessoryError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100129530(a1, v14, type metadata accessor for FMAccessoryPairingCoordinator.Event);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.Event);
    v15 = *(v2 + OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_pairingWatchdog);
    v16 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
    swift_beginAccess();
    sub_100129530(v15 + v16, v7, type metadata accessor for FMAccessoryPairingWatchdog.State);
    v17 = sub_10007EBC0(&qword_1006B3020);
    if (!(*(*(v17 - 8) + 48))(v7, 3, v17))
    {
      v19 = *(v9 + 32);
      v19(v11, v7, v8);
      v19(a2, v11, v8);
      return swift_storeEnumTagMultiPayload();
    }

    sub_100128FAC(v7, type metadata accessor for FMAccessoryPairingWatchdog.State);
  }

  return sub_100129530(a1, a2, type metadata accessor for FMAccessoryPairingCoordinator.Event);
}

void sub_1001257D0(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v2 - 8);
  v112 = &v107[-v3];
  v4 = type metadata accessor for FMIPAccessoryError();
  v124 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v120 = &v107[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v123 = &v107[-v7];
  v117 = type metadata accessor for FMAccessoryPairingConfirmationCard.ViewModel(0);
  __chkstk_darwin(v117);
  v118 = &v107[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  updated = type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel();
  __chkstk_darwin(updated - 8);
  v116 = &v107[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v126 = type metadata accessor for FMIPItem();
  v125 = *(v126 - 8);
  v11 = __chkstk_darwin(v126);
  v119 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v122 = &v107[-v13];
  v113 = type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel();
  __chkstk_darwin(v113);
  v114 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v110 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v110);
  v111 = &v107[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FMAccessoryPairingEmojiSelectionCard.ViewModel();
  __chkstk_darwin(v16 - 8);
  v115 = &v107[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v128 = type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel();
  __chkstk_darwin(v128);
  v121 = &v107[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  v20 = __chkstk_darwin(v19);
  v22 = &v107[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v107[-v23];
  v25 = a1;
  sub_100129530(a1, &v107[-v23], type metadata accessor for FMAccessoryPairingCoordinator.State);
  v26 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100005B14(v27, qword_1006D4630);
  v28 = Logger.logObject.getter();
  if (os_log_type_enabled(v28, v26))
  {
    v29 = swift_slowAlloc();
    v109 = v4;
    v30 = v29;
    v31 = swift_slowAlloc();
    *&v130 = v31;
    *v30 = 136315138;
    *&v134[0] = 0;
    *(&v134[0] + 1) = 0xE000000000000000;
    v108 = v26;
    _StringGuts.grow(_:)(22);
    v32._object = 0x800000010057F3F0;
    v32._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v32);
    _print_unlocked<A, B>(_:_:)();
    v33 = sub_100005B4C(*&v134[0], *(&v134[0] + 1), &v130);

    *(v30 + 4) = v33;
    v34 = v128;
    _os_log_impl(&_mh_execute_header, v28, v108, "FMAccessoryPairingCoordinator: %s", v30, 0xCu);
    sub_100006060(v31);

    v4 = v109;

    sub_100128FAC(v24, type metadata accessor for FMAccessoryPairingCoordinator.State);
  }

  else
  {

    sub_100128FAC(v24, type metadata accessor for FMAccessoryPairingCoordinator.State);
    v34 = v128;
  }

  sub_100129530(v25, v22, type metadata accessor for FMAccessoryPairingCoordinator.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v58 = v125;
        v59 = v122;
        v60 = v126;
        (*(v125 + 32))(v122, v22, v126);
        v61 = v127;
        v62 = *&v127[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_mediator];
        v63 = v117;
        v64 = v118;
        (*(v58 + 16))(&v118[*(v117 + 20)], v59, v60);

        v65 = FMIPDiscoveredAccessory.capabilities.getter();
        *v64 = v62;
        *(v64 + *(v63 + 24)) = v65;
        v66 = objc_allocWithZone(type metadata accessor for FMAccessoryPairingConfirmationCard(0));
        v67 = v61;
        v68 = sub_1001CF1EC(v67, v64);
        v69 = v60;
        v70 = v68;

        sub_1001269E4(v70);
        (*(v58 + 8))(v59, v69);
      }

      else
      {
        v95 = v124;
        v96 = v123;
        (*(v124 + 32))(v123, v22, v4);
        v97 = *(v95 + 16);
        v98 = v120;
        v97(v120, v96, v4);
        LODWORD(v96) = (*(v95 + 88))(v98, v4);
        v99 = enum case for FMIPAccessoryError.accessoryBatteryTooLow(_:);
        v100 = *(v95 + 8);
        v100(v98, v4);
        if (v96 == v99)
        {
          v101 = v112;
          FMIPDiscoveredAccessory.batteryReplacementURL.getter();
        }

        else
        {
          v102 = type metadata accessor for URL();
          v101 = v112;
          (*(*(v102 - 8) + 56))(v112, 1, 1, v102);
        }

        v103 = v121;
        v104 = v123;
        v97(v121, v123, v4);
        sub_100007204(v101, v103 + *(v128 + 20), &unk_1006B0120);
        v105 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingFailedCard()) init];
        swift_unknownObjectWeakAssign();
        [v105 setDismissalType:3];
        sub_100249568(v103);
        sub_10024995C(v103);
        sub_100128FAC(v103, type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel);
        sub_1001269E4(v105);

        sub_100012DF0(v101, &unk_1006B0120);
        v100(v104, v4);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          return;
        }

        v48 = v121;
        (*(v124 + 104))(v121, enum case for FMIPAccessoryError.invalidAccountState(_:), v4);
        v49 = *(v34 + 20);
        v50 = type metadata accessor for URL();
        (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
        v46 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingAccountUpdateCard()) init];
        swift_unknownObjectWeakAssign();
        [v46 setDismissalType:3];
        sub_100249568(v48);
        sub_10024995C(v48);
        sub_100128FAC(v48, type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel);
        v47 = v46;
        goto LABEL_15;
      }

      v78 = v125;
      v79 = v119;
      (*(v125 + 32))(v119, v22, v126);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v81 = Strong;
        v82 = [Strong navigationController];

        if (v82)
        {
          [v82 dismissViewControllerAnimated:1 completion:0];
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1004854B4(v79);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v78 + 8))(v79, v126);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100128FAC(v22, type metadata accessor for FMAccessoryPairingCoordinator.State);
      v88 = v127;
      v89 = v115;
      FMIPDiscoveredAccessory.defaultRole.getter();
      v90 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingEmojiSelectionCard()) init];
      swift_unknownObjectWeakAssign();
      v91 = OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView;
      v92 = *&v90[OBJC_IVAR____TtC6FindMy36FMAccessoryPairingEmojiSelectionCard_emojiSelectionView];
      v93 = v90;
      [v92 setTranslatesAutoresizingMaskIntoConstraints:0];
      [*&v90[v91] addTarget:v93 action:"updateButtonState" forControlEvents:0x20000];
      v94 = [v93 contentView];
      [v94 addSubview:*&v90[v91]];

      sub_10033F934();
      sub_10033FC60(v89);
      sub_10033FF9C();

      sub_100128FAC(v89, type metadata accessor for FMAccessoryPairingEmojiSelectionCard.ViewModel);
      sub_1001269E4(v93);
    }

    else
    {
      v52 = *v22;
      v51 = v22[1];
      v53 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingNameSelectionCard()) init];
      swift_unknownObjectWeakAssign();
      v54 = OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel;
      v55 = *&v53[OBJC_IVAR____TtC6FindMy35FMAccessoryPairingNameSelectionCard_nameLabel];
      v56 = v53;
      [v55 addTarget:v56 action:"updateButtonState" forControlEvents:0x20000];
      v57 = [v56 contentView];
      [v57 addSubview:*&v53[v54]];

      sub_10017BBE4();
      sub_10017BF8C(v52, v51);
      sub_10017C268();

      sub_1001269E4(v56);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v72 = *v22;
    v71 = v22[1];
    if (qword_1006AEB20 != -1)
    {
      swift_once();
    }

    sub_100220CDC(v132);
    v73 = v133;
    if (v133 == 255)
    {
    }

    else
    {
      v128 = v132[1];
      v126 = v132[0];
      v74 = sub_100220A58();
      if (v74)
      {
        v75 = v74;

        *&v130 = v72;
        *(&v130 + 1) = v71;
        *v131 = v75;
        *&v131[8] = v126;
        *&v131[24] = v128;
        v131[40] = v73;
        v134[0] = v130;
        v134[1] = *v131;
        *v135 = *&v131[16];
        *&v135[9] = *&v131[25];
        v76 = objc_allocWithZone(type metadata accessor for FMAccessoryPairingRegistrationCard());
        sub_100129480(&v130, v129);
        v77 = [v76 init];
        swift_unknownObjectWeakAssign();
        sub_10040CE8C();
        sub_10040D3BC();
        sub_10040D90C(v134);
        sub_10040DBE4();
        sub_1001294DC(&v130);
        sub_1001269E4(v77);

        sub_1001294DC(&v130);
        return;
      }

      sub_100012DF0(v132, &qword_1006B3018);
    }

    v106 = v111;
    (*(v124 + 104))(v111, enum case for FMIPAccessoryError.invalidAccountState(_:), v4);
    swift_storeEnumTagMultiPayload();
    sub_100123FF0(v106);
    sub_100128FAC(v106, type metadata accessor for FMAccessoryPairingCoordinator.Event);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = *v22;
      v37 = v22[1];
      v38 = v127;
      v39 = *(*&v127[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_mediator] + 64);
      v40 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_accessory;
      v41 = v113;
      v42 = *(v113 + 20);
      v43 = type metadata accessor for FMIPDiscoveredAccessory();
      v44 = v114;
      (*(*(v43 - 8) + 16))(&v114[v42], &v38[v40], v43);

      *v44 = v39;
      v45 = (v44 + *(v41 + 24));
      *v45 = v36;
      v45[1] = v37;
      v46 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingInProgressCard()) init];
      swift_unknownObjectWeakAssign();
      sub_10047D28C();
      sub_100128FAC(v44, type metadata accessor for FMAccessoryPairingInProgressCard.ViewModel);
      v47 = v46;
LABEL_15:
      sub_1001269E4(v47);

      return;
    }

    v83 = v125;
    v84 = v122;
    v85 = v126;
    (*(v125 + 32))(v122, v22, v126);
    v86 = v116;
    (*(v83 + 16))(v116, v84, v85);
    v87 = [objc_allocWithZone(type metadata accessor for FMAccessoryPairingUpdateRequiredCard()) init];
    swift_unknownObjectWeakAssign();
    sub_10017EE7C(v86);
    sub_100128FAC(v86, type metadata accessor for FMAccessoryPairingUpdateRequiredCard.ViewModel);
    sub_1001269E4(v87);

    (*(v83 + 8))(v84, v85);
  }
}

uint64_t sub_1001269E4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v21 = v8;
    _StringGuts.grow(_:)(27);

    v9 = [v3 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = sub_100005B4C(0xD000000000000019, 0x800000010057F410, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v4, "FMAccessoryPairingCoordinator: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
      goto LABEL_12;
    }

    v18 = v19;
    v16 = [v19 presentProxCardFlowWithDelegate:v2 initialViewController:v3];
    goto LABEL_10;
  }

  v16 = Strong;
  v17 = [Strong navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 pushViewController:v3 animated:1];
LABEL_10:
  }

LABEL_12:

  return swift_unknownObjectWeakAssign();
}

void sub_100126C5C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v51 - v10;
  v12 = sub_10007EBC0(&qword_1006B3048);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for FMIPAccessoryError();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v51 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_100007204(a1, v14, &qword_1006B3048);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v52 = *(v59 + 32);
      v52(v58, v14, v60);
      v22 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_state;
      swift_beginAccess();
      sub_100129530(v21 + v22, v11, type metadata accessor for FMAccessoryPairingCoordinator.State);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100128FAC(v11, type metadata accessor for FMAccessoryPairingCoordinator.State);
      if (EnumCaseMultiPayload == 3)
      {
        sub_100003E90();
        v51 = static OS_dispatch_queue.main.getter();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v26 = v58;
        v25 = v59;
        v27 = v60;
        (*(v59 + 16))(v18, v58, v60);
        v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v24;
        v52((v29 + v28), v18, v27);
        v65 = sub_100129664;
        v66 = v29;
        aBlock = _NSConcreteStackBlock;
        v62 = 1107296256;
        v63 = sub_100004AE4;
        v64 = &unk_1006286E8;
        v30 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100037918();
        sub_10007EBC0(&unk_1006B0640);
        sub_100037970();
        v31 = v54;
        v32 = v57;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v33 = v51;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*(v56 + 8))(v31, v32);
        (*(v53 + 8))(v5, v55);
        (*(v25 + 8))(v26, v27);
      }

      else
      {
        v42 = v21;
        v43 = static os_log_type_t.default.getter();
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100005B14(v44, qword_1006D4630);
        v45 = Logger.logObject.getter();
        if (os_log_type_enabled(v45, v43))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v67 = v47;
          *v46 = 136315138;
          aBlock = 0;
          v62 = 0xE000000000000000;
          _StringGuts.grow(_:)(95);
          v48._countAndFlagsBits = 0xD000000000000047;
          v48._object = 0x800000010057F490;
          String.append(_:)(v48);
          sub_100129530(v21 + v22, v9, type metadata accessor for FMAccessoryPairingCoordinator.State);
          _print_unlocked<A, B>(_:_:)();
          sub_100128FAC(v9, type metadata accessor for FMAccessoryPairingCoordinator.State);
          v49._object = 0x800000010057F4E0;
          v49._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v49);
          v50 = sub_100005B4C(aBlock, v62, &v67);

          *(v46 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v45, v43, "FMAccessoryPairingCoordinator: %s", v46, 0xCu);
          sub_100006060(v47);
        }

        else
        {
        }

        (*(v59 + 8))(v58, v60);
      }
    }

    else
    {
      sub_100012DF0(v14, &qword_1006B3048);
      v34 = v21;
      v35 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      if (os_log_type_enabled(v37, v35))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v68[0] = v39;
        *v38 = 136315138;
        aBlock = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(50);
        v40._countAndFlagsBits = 0xD000000000000030;
        v40._object = 0x800000010057F450;
        String.append(_:)(v40);
        type metadata accessor for FMIPDiscoveredAccessory();
        _print_unlocked<A, B>(_:_:)();
        v41 = sub_100005B4C(aBlock, v62, v68);

        *(v38 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v37, v35, "FMAccessoryPairingCoordinator: %s", v38, 0xCu);
        sub_100006060(v39);
      }
    }
  }
}

uint64_t sub_10012755C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for FMIPAccessoryError();
    (*(*(v8 - 8) + 16))(v5, a2, v8);
    swift_storeEnumTagMultiPayload();
    sub_100123FF0(v5);

    return sub_100128FAC(v5, type metadata accessor for FMAccessoryPairingCoordinator.Event);
  }

  return result;
}

uint64_t sub_100127678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v18 - v13);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_state;
  swift_beginAccess();

  sub_100129334(v14, v4 + v15);
  swift_endAccess();
  sub_100129530(v4 + v15, v12, type metadata accessor for FMAccessoryPairingCoordinator.State);
  sub_1001257D0(v12);
  sub_100128FAC(v12, type metadata accessor for FMAccessoryPairingCoordinator.State);
  sub_100128FAC(v14, type metadata accessor for FMAccessoryPairingCoordinator.State);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10015E704(a1, a2, a3, a4, sub_100129398, v16);
}

uint64_t sub_10012784C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006B3008);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = v8;
    v35 = v4;

    sub_100007204(a1, v15, &unk_1006B3008);
    v17 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v33 = a1;
      v21 = v20;
      v22 = swift_slowAlloc();
      v32 = v10;
      v23 = v22;
      v40 = v22;
      aBlock = 0;
      *v21 = 136315138;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(33);
      v24._object = 0x800000010057F3D0;
      v24._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v24);
      _print_unlocked<A, B>(_:_:)();
      v25 = sub_100005B4C(aBlock, v42, &v40);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v17, "FMAccessoryPairingCoordinator: %s", v21, 0xCu);
      sub_100006060(v23);
      v10 = v32;

      a1 = v33;
    }

    sub_100012DF0(v15, &unk_1006B3008);
    v8 = v34;
    v4 = v35;
  }

  sub_100003E90();
  v26 = static OS_dispatch_queue.main.getter();
  sub_100007204(a1, v13, &unk_1006B3008);
  v27 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  sub_1001293A0(v13, v28 + v27);
  v45 = sub_100129410;
  v46 = v28;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_100004AE4;
  v44 = &unk_100628698;
  v29 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v39 + 8))(v30, v4);
  return (*(v36 + 8))(v8, v37);
}

uint64_t sub_100127D88(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v44 = type metadata accessor for FMIPAccessoryError();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FMAccessoryPairingCoordinator.Event(0);
  __chkstk_darwin(v48);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FMIPItem();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10007EBC0(&unk_1006B3008);
  __chkstk_darwin(v46);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v40 = v2;
    Date.init()();
    v18 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_startDate;
    swift_beginAccess();
    (*(v10 + 16))(v13, &v17[v18], v9);
    v39 = v15;
    Date.distance(to:)();
    v38 = *(v10 + 8);
    v37 = v10 + 8;
    v38(v13, v9);
    v19 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v19))
    {
      v22 = swift_slowAlloc();
      v36 = v9;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 136315138;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v24;
      _StringGuts.grow(_:)(24);
      v25._countAndFlagsBits = 0x20676E6972696150;
      v25._object = 0xED0000206B6F6F74;
      String.append(_:)(v25);
      Double.write<A>(to:)();
      v26._countAndFlagsBits = 0x73646E6F63657320;
      v26._object = 0xE90000000000002ELL;
      String.append(_:)(v26);
      v27 = sub_100005B4C(v49, v50, &v51);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v19, "FMAccessoryPairingCoordinator: %s", v23, 0xCu);
      sub_100006060(v24);

      v9 = v36;
    }

    sub_100007204(v47, v8, &unk_1006B3008);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v40;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v43;
      v30 = v44;
      (*(v40 + 32))(v43, v8, v44);
      (*(v29 + 16))(v5, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v5);

      sub_100128FAC(v5, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      (*(v29 + 8))(v31, v30);
    }

    else
    {
      v32 = v41;
      v33 = v42;
      v34 = v45;
      (*(v41 + 32))(v42, v8, v45);
      FMIPDiscoveredAccessory.isEligibleForPairing.getter();
      (*(v32 + 16))(v5, v33, v34);
      swift_storeEnumTagMultiPayload();
      sub_100123FF0(v5);

      sub_100128FAC(v5, type metadata accessor for FMAccessoryPairingCoordinator.Event);
      (*(v32 + 8))(v33, v45);
    }

    return (v38)(v39, v9);
  }

  return result;
}

id sub_100128424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryPairingCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001285B8()
{
  result = type metadata accessor for FMIPDiscoveredAccessory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FMAccessoryPairingCoordinator.State(319);
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_10012870C()
{
  v1 = v0;
  v2 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  __chkstk_darwin(v2);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005B4C(0xD000000000000018, 0x800000010057F3B0, v15);
    _os_log_impl(&_mh_execute_header, v7, v5, "FMAccessoryPairingCoordinator: %s", v8, 0xCu);
    sub_100006060(v9);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_state;
  swift_beginAccess();
  sub_100129530(v1 + v10, v4, type metadata accessor for FMAccessoryPairingCoordinator.State);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v11 = type metadata accessor for FMIPItem();
    return (*(*(v11 - 8) + 8))(v4, v11);
  }

  else
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10015F334(sub_100128FA4, v13);

    return sub_100128FAC(v4, type metadata accessor for FMAccessoryPairingCoordinator.State);
  }
}

uint64_t sub_1001289C0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_100003E90();
    v10 = static OS_dispatch_queue.main.getter();
    v15 = v4;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    aBlock[4] = sub_10012900C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100628648;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v15);
  }

  return result;
}

uint64_t sub_100128C74()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1004857CC();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100128D38()
{
  sub_100128EA0(319, &unk_1006B2FB0, sub_10000AF8C);
  if (v0 <= 0x3F)
  {
    sub_100128E40();
    if (v1 <= 0x3F)
    {
      sub_100128E70();
      if (v2 <= 0x3F)
      {
        sub_100128EA0(319, qword_1006B2FD0, &type metadata accessor for FMIPItem);
        if (v3 <= 0x3F)
        {
          sub_100128EA0(319, &qword_1006B8CE0, &type metadata accessor for FMIPAccessoryError);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void *sub_100128E40()
{
  result = qword_1006B2FC0;
  if (!qword_1006B2FC0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1006B2FC0);
  }

  return result;
}

ValueMetadata *sub_100128E70()
{
  result = qword_1006B2FC8;
  if (!qword_1006B2FC8)
  {
    result = &type metadata for FMAccessoryPairingCoordinator.Metadata;
    atomic_store(&type metadata for FMAccessoryPairingCoordinator.Metadata, &qword_1006B2FC8);
  }

  return result;
}

void sub_100128EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100128EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100128F34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100128FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100129014()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  if (qword_1006AED58 != -1)
  {
    swift_once();
  }

  sub_10007EBC0(&qword_1006AF180);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = 0;
  v2 = [v0 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v22];

  if (v2)
  {
    v3 = v22;
    v4 = [v2 givenName];
LABEL_5:
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    goto LABEL_10;
  }

  v8 = v22;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  v9 = [objc_allocWithZone(ACAccountStore) init];
  v5 = [v9 aa_primaryAppleAccount];

  if (v5)
  {
    v4 = [v5 aa_firstName];

    if (v4)
    {
      goto LABEL_5;
    }

    v5 = 0;
  }

  v7 = 0;
LABEL_10:
  v10 = [objc_opt_self() mainBundle];
  v23._object = 0x8000000100579A00;
  v11._countAndFlagsBits = 0xD00000000000001BLL;
  v11._object = 0x800000010057E850;
  v12.value._object = 0x80000001005799E0;
  v23._countAndFlagsBits = 0xD000000000000018;
  v12.value._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v23);

  sub_10007EBC0(&unk_1006B20B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100552210;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_10008EE84();
  *(v14 + 64) = v15;
  if (v7)
  {
    v16 = v5;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  *(v14 + 32) = v16;
  *(v14 + 40) = v17;
  v18 = FMIPItemRole.name.getter();
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v15;
  *(v14 + 72) = v18;
  *(v14 + 80) = v19;
  v20 = String.init(format:_:)();

  return v20;
}

uint64_t sub_100129334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryPairingCoordinator.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001293A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B3008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129410()
{
  v1 = *(sub_10007EBC0(&unk_1006B3008) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100127D88(v2, v3);
}

uint64_t sub_100129530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001295A0()
{
  v1 = type metadata accessor for FMIPAccessoryError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100129710()
{
  sub_100128E40();
  if (v0 <= 0x3F)
  {
    sub_1001297EC();
    if (v1 <= 0x3F)
    {
      sub_100128EA0(319, qword_1006B2FD0, &type metadata accessor for FMIPItem);
      if (v2 <= 0x3F)
      {
        sub_100128EA0(319, &qword_1006B8CE0, &type metadata accessor for FMIPAccessoryError);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_1001297EC()
{
  result = qword_1006B30D0;
  if (!qword_1006B30D0)
  {
    result = &type metadata for Character;
    atomic_store(&type metadata for Character, &qword_1006B30D0);
  }

  return result;
}

uint64_t sub_100129844(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10007EBC0(&qword_1006B3260);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  if (*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery) != v2)
  {
    v13 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting);
    if (*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery))
    {
      *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting) = 1;
      if (v13)
      {
        goto LABEL_6;
      }

      v14 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
      v15 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
      swift_beginAccess();
      sub_100007204(v14 + v15, v12, &qword_1006B3260);
      v16 = type metadata accessor for FMPersonDetailViewModel(0);
      result = (*(*(v16 - 8) + 48))(v12, 1, v16);
      if (result != 1)
      {
        sub_10012D9BC(v12);
        result = sub_100140DB8(v12, type metadata accessor for FMPersonDetailViewModel);
LABEL_6:
        v17 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask;
        if (!*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask))
        {
          v18 = type metadata accessor for TaskPriority();
          (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();

          v20 = v1;
          v21 = static MainActor.shared.getter();
          v22 = swift_allocObject();
          v22[2] = v21;
          v22[3] = &protocol witness table for MainActor;
          v22[4] = v19;

          *(v20 + v17) = sub_10047F498(0, 0, v5, &unk_1005550B8, v22);
        }

        return result;
      }

      __break(1u);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting) = 0;
      if (!v13)
      {
        return result;
      }

      v23 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
      v24 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
      swift_beginAccess();
      sub_100007204(v23 + v24, v9, &qword_1006B3260);
      v25 = type metadata accessor for FMPersonDetailViewModel(0);
      result = (*(*(v25 - 8) + 48))(v9, 1, v25);
      if (result != 1)
      {
        sub_10012D9BC(v9);
        return sub_100140DB8(v9, type metadata accessor for FMPersonDetailViewModel);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100129BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  sub_10007EBC0(&qword_1006B3260);
  v4[14] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for FMFConfigValue();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[22] = v8;
  v4[23] = v7;

  return _swift_task_switch(sub_100129D64, v8, v7);
}

uint64_t sub_100129D64()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 104))(v1, enum case for FMFConfigValue.peopleFindingConnectingTime(_:), v3);
  v0[12] = 0x404E000000000000;
  FMFWaldoGlobalConfig<A>(_:fallback:)();
  (*(v2 + 8))(v1, v3);
  v4 = static Duration.seconds(_:)();
  v6 = v5;
  static Clock<>.continuous.getter();
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_100129EA8;

  return sub_1005149A8(v4, v6, 0, 0, 1);
}

uint64_t sub_100129EA8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 184);
  v7 = *(v2 + 176);
  if (v0)
  {
    v8 = sub_10012A210;
  }

  else
  {
    v8 = sub_10012A040;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10012A040()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting];
    Strong[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting] = 0;
    if (v3)
    {
      v4 = *(v0 + 112);
      v5 = *&Strong[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource];
      v6 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
      swift_beginAccess();
      sub_100007204(v5 + v6, v4, &qword_1006B3260);
      v7 = type metadata accessor for FMPersonDetailViewModel(0);
      result = (*(*(v7 - 8) + 48))(v4, 1, v7);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v9 = *(v0 + 112);
      sub_10012D9BC(v9);

      sub_100140DB8(v9, type metadata accessor for FMPersonDetailViewModel);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask] = 0;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10012A210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012A29C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = sub_10007EBC0(&qword_1006B3260);
  result = __chkstk_darwin(v14 - 8);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable;
  if (*(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable) != v3)
  {
    v34 = v11;
    v35 = v13;
    v19 = *(v2 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource);
    v20 = OBJC_IVAR____TtC6FindMy24FMPersonDetailDataSource_personViewModel;
    swift_beginAccess();
    sub_100007204(v19 + v20, v17, &qword_1006B3260);
    v21 = type metadata accessor for FMPersonDetailViewModel(0);
    result = (*(*(v21 - 8) + 48))(v17, 1, v21);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_10012D9BC(v17);
      sub_100140DB8(v17, type metadata accessor for FMPersonDetailViewModel);
      v22 = sub_10012A7F8();
      v24 = v23;
      v25 = type metadata accessor for FMIPPeopleFindingEvent();
      v26 = *(*(v25 - 8) + 48);
      if (!v26(v24, 1, v25))
      {
        FMIPPeopleFindingEvent.findButtonAvailable.setter();
      }

      (v22)(v36, 0);
      v27 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp;
      swift_beginAccess();
      sub_100007204(v2 + v27, v6, &unk_1006B0000);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        return sub_100012DF0(v6, &unk_1006B0000);
      }

      else
      {
        v28 = v35;
        (*(v8 + 32))(v35, v6, v7);
        if (*(v2 + v18) == 1)
        {
          v29 = sub_10012A7F8();
          if (v26(v30, 1, v25))
          {
            (v29)(v36, 0);
            return (*(v8 + 8))(v35, v7);
          }

          else
          {
            v31 = v34;
            Date.init()();
            v32 = v35;
            Date.timeIntervalSince(_:)();
            v33 = *(v8 + 8);
            v33(v31, v7);
            FMIPPeopleFindingEvent.availabilityLatency.setter();
            (v29)(v36, 0);
            return (v33)(v32, v7);
          }
        }

        else
        {
          return (*(v8 + 8))(v28, v7);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10012A6F0()
{
  v0 = static SystemInfo.arrowChipID.getter();
  v2 = v1;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if ((v8 & 1) == 0)
  {

    return 0;
  }

  v9 = static SystemInfo.isInternalBuild.getter();

  if (v9)
  {
    return (v0 == 8198) & ~v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012A884()
{

  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_delegate);

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startDiscoveryTimestamp, &unk_1006B0000);
  return sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleFindingAnalytics, &qword_1006B3290);
}

id sub_10012AAE8()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMPersonDetailContentViewController%@: deinit", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760);
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMPersonDetailContentViewController();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for FMPersonDetailContentViewController()
{
  result = qword_1006B3248;
  if (!qword_1006B3248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10012AFF4(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMPersonDetailContentViewController();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  v3 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v4 = sub_1003CCB34(v1, v3);

  *&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_conditionsSubscription] = v4;

  *(*&v1[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource] + 104) = 1;

  sub_1003C80C8();
}

void sub_10012B104(char a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMPersonDetailContentViewController();
  v10.receiver = v1;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v7 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10014101C(v7 + v8, v5, type metadata accessor for FMSelectedSection);
  LODWORD(v7) = swift_getEnumCaseMultiPayload();
  sub_100140DB8(v5, type metadata accessor for FMSelectedSection);
  if (v7 == 2)
  {
    sub_10013B614();
  }
}

int64_t sub_10012B288(char a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B3290);
  v5 = __chkstk_darwin(v4 - 8);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v53 - v7;
  v62 = type metadata accessor for FMIPPeopleFindingEvent();
  v8 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006B8DD0);
  v11 = __chkstk_darwin(v10 - 8);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  v15 = type metadata accessor for FMSelectionPendingAction(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v53 - v19;
  v20 = type metadata accessor for FMPersonDetailContentViewController();
  v63.receiver = v2;
  v63.super_class = v20;
  objc_msgSendSuper2(&v63, "viewWillDisappear:", a1 & 1);
  *(*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_dataSource] + 104) = 0;

  sub_1003C80C8();

  v21 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask;
  if (*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_discoveryAnimationEndTask])
  {

    sub_10007EBC0(&unk_1006AF7B0);
    Task.cancel()();
  }

  *&v2[v21] = 0;

  v22 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask;
  if (*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_connectionManagerUpdateTask])
  {

    sub_10007EBC0(&unk_1006AF7B0);
    Task.cancel()();
  }

  *&v2[v22] = 0;

  v23 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask;
  v24 = *&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_tokenReevaluationTask];
  v61 = v8;
  v58 = v15;
  if (v24)
  {

    sub_10007EBC0(&unk_1006AF7B0);
    Task.cancel()();
  }

  *&v2[v23] = 0;

  v25 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_conditionsSubscription;
  v26 = *&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_conditionsSubscription];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v28 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
  swift_beginAccess();

  v29 = v27;
  result = sub_1003CD738(&v27[v28], v26);
  v31 = *&v27[v28];
  if (v31 >> 62)
  {
    v52 = result;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    result = v52;
    if (v32 >= v52)
    {
      goto LABEL_10;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32 < result)
  {
    goto LABEL_22;
  }

LABEL_10:
  sub_1003CDB08(result, v32);
  swift_endAccess();

  *&v2[v25] = 0;

LABEL_11:
  v33 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v34 = *(*&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  sub_100007204(v34 + v35, v14, &unk_1006B8DD0);
  v36 = v16;
  v37 = v58;
  if ((*(v16 + 48))(v14, 1, v58) == 1)
  {
    sub_100012DF0(v14, &unk_1006B8DD0);
  }

  else
  {
    v38 = v56;
    sub_100140CCC(v14, v56, type metadata accessor for FMSelectionPendingAction);
    v39 = v57;
    swift_storeEnumTagMultiPayload();
    v40 = sub_100247790(v38, v39);
    sub_100140DB8(v39, type metadata accessor for FMSelectionPendingAction);
    sub_100140DB8(v38, type metadata accessor for FMSelectionPendingAction);
    if (v40)
    {
      v41 = *(*&v2[v33] + 56);
      v42 = v54;
      (*(v36 + 56))(v54, 1, 1, v37);
      v43 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
      swift_beginAccess();

      sub_1000BBF40(v42, v41 + v43, &unk_1006B8DD0);
      swift_endAccess();

      v44 = (*(*&v2[v33] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo);
      swift_beginAccess();
      *v44 = 0;
      v44[1] = 0;
    }
  }

  v45 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleFindingAnalytics;
  swift_beginAccess();
  v46 = v59;
  sub_100007204(&v2[v45], v59, &qword_1006B3290);
  v48 = v61;
  v47 = v62;
  if ((*(v61 + 48))(v46, 1, v62) == 1)
  {
    return sub_100012DF0(v46, &qword_1006B3290);
  }

  (*(v48 + 32))(v60, v46, v47);
  v49 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
  swift_unknownObjectRelease();
  if ((v49 & 1) == 0 && (sub_10012A6F0() & 1) == 0)
  {
    return (*(v48 + 8))(v60, v47);
  }

  v50 = v60;
  FMIPManager.enqueue(event:)();
  (*(v48 + 8))(v50, v47);

  v51 = v55;
  (*(v48 + 56))(v55, 1, 1, v47);
  swift_beginAccess();
  sub_1000BBF40(v51, &v2[v45], &qword_1006B3290);
  return swift_endAccess();
}

void sub_10012BAF4()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for FMPersonDetailContentViewController();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 layoutMargins];
  v5 = v4;

  [v1 setSpacing:v5];
  v6 = *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 layoutMargins];
  v10 = v9;

  [v6 setSpacing:v10];
  v11 = *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackBottomConstraint];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 layoutMargins];
  v16 = v15;

  [v12 setConstant:-v16];
}

void sub_10012BCB0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v2 - 8);
  v164 = &v161 - v3;
  v4 = sub_10007EBC0(&qword_1006B3298);
  __chkstk_darwin(v4 - 8);
  v171 = &v161 - v5;
  sub_1002791F0();
  v167 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications;
  *(*(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications) + OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_delegate + 8) = &off_100628740;
  swift_unknownObjectWeakAssign();
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel) setHidden:1];
  v166 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView) setAxis:1];
  v6 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView;
  [*(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView) setAxis:0];
  v165 = v6;
  [*(v0 + v6) setDistribution:1];
  v7 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_nameThisLocationButton;
  v8 = *(*(v0 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_nameThisLocationButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainBundle];
  v173._object = 0x800000010057F9F0;
  v12._countAndFlagsBits = 0xD000000000000028;
  v12._object = 0x800000010057F9C0;
  v173._countAndFlagsBits = 0xD00000000000003ALL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v173);

  v14 = String._bridgeToObjectiveC()();

  [v10 setText:v14];

  v15 = *(v1 + v7);
  v15[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = 1;
  v16 = v15;
  sub_1004F4288();

  v17 = *(*(v1 + v7) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 systemBlueColor];
  [v19 setTextColor:v20];

  v21 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton;
  v22 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v172 = v9;
  v23 = [v9 mainBundle];
  v174._object = 0x800000010057FA60;
  v24._countAndFlagsBits = 0xD00000000000002ALL;
  v24._object = 0x800000010057FA30;
  v174._countAndFlagsBits = 0xD00000000000003CLL;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v174);

  v26 = String._bridgeToObjectiveC()();

  [v22 setText:v26];

  v27 = *(*(v1 + v21) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v170 = v18;
  v28 = [v18 systemBlueColor];
  [v27 setTextColor:v28];

  v29 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton;
  v30 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v31 = [v9 mainBundle];
  v175._object = 0x800000010057FAD0;
  v32._countAndFlagsBits = 0xD000000000000028;
  v32._object = 0x800000010057FAA0;
  v175._countAndFlagsBits = 0xD00000000000003ALL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v175);

  v34 = String._bridgeToObjectiveC()();

  [v30 setText:v34];

  v35 = *(*(v1 + v29) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v36 = [v18 systemBlueColor];
  [v35 setTextColor:v36];

  v37 = *(v1 + v29);
  v37[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = 1;
  v38 = v37;
  sub_1004F4288();

  v39 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton;
  v40 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v41 = v172;
  v42 = [v172 mainBundle];
  v176._object = 0x800000010057FB40;
  v43._countAndFlagsBits = 0xD000000000000027;
  v43._object = 0x800000010057FB10;
  v176._countAndFlagsBits = 0xD000000000000039;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v176);

  v45 = String._bridgeToObjectiveC()();

  [v40 setText:v45];

  v46 = *(v1 + v39);
  v46[OBJC_IVAR____TtC6FindMy15FMPlatterButton_alignment] = 1;
  v47 = v46;
  sub_1004F4288();

  v48 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v49 = [v41 mainBundle];
  v177._object = 0x800000010057FBC0;
  v50._countAndFlagsBits = 0xD000000000000030;
  v50._object = 0x800000010057FB80;
  v177._countAndFlagsBits = 0xD000000000000042;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v49, v51, v177);

  v52 = String._bridgeToObjectiveC()();

  [v48 setText:v52];

  v53 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v54 = v170;
  v55 = [v170 systemBlueColor];
  [v53 setTextColor:v55];

  v56 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v57 = [v54 systemBlueColor];
  [v56 setTextColor:v57];

  v58 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining;
  v59 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining);
  v60 = type metadata accessor for FMPlatterIcon();
  v61 = v171;
  swift_storeEnumTagMultiPayload();
  v62 = *(v60 - 1);
  v169 = *(v62 + 56);
  v170 = v60;
  v168 = v62 + 56;
  v169(v61, 0, 1, v60);
  v63 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v64 = v59;
  sub_100140BE4(v61, v59 + v63);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v61, &qword_1006B3298);
  v65 = *(v1 + v58);
  v66 = [v41 mainBundle];
  v67._countAndFlagsBits = 0xD000000000000010;
  v178._object = 0x800000010057FC30;
  v67._object = 0x800000010057FC10;
  v178._countAndFlagsBits = 0xD000000000000022;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v178);

  *&v65[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = v69;

  v70 = *&v65[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];

  v71 = String._bridgeToObjectiveC()();

  [v70 setText:v71];

  v72 = *(v1 + v58);
  v73 = [v41 mainBundle];
  v179._object = 0x800000010057E350;
  v74._countAndFlagsBits = 0xD000000000000028;
  v74._object = 0x800000010057E320;
  v179._countAndFlagsBits = 0xD00000000000003ALL;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, 0, v73, v75, v179);

  *&v72[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v76;

  v77 = *&v72[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v78 = String._bridgeToObjectiveC()();

  [v77 setText:v78];

  v79 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v80 = *(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56);
  v81 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();
  v82 = v164;
  sub_100007204(v80 + v81, v164, &unk_1006B8DD0);
  v83 = type metadata accessor for FMSelectionPendingAction(0);
  LODWORD(v80) = (*(*(v83 - 8) + 48))(v82, 1, v83);
  sub_100012DF0(v82, &unk_1006B8DD0);
  if (v80 == 1 || (v84 = (*(*(v1 + v79) + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo), swift_beginAccess(), (v85 = v84[1]) == 0))
  {
    v89 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention);
    sub_10017CC9C(0, 0, 0);
  }

  else
  {
    v86 = *v84;
    v87 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention);

    v88 = v87;
    sub_10017CC9C(1, v86, v85);
  }

  v164 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention;
  v90 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention);
  v90[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 1;
  v91 = v90;
  sub_1002B20D8();

  v92 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention;
  v93 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention);
  v94 = v172;
  v95 = [v172 mainBundle];
  v180._object = 0x800000010057FC90;
  v96._countAndFlagsBits = 0xD000000000000023;
  v96._object = 0x800000010057FC60;
  v180._countAndFlagsBits = 0xD000000000000035;
  v97._countAndFlagsBits = 0;
  v97._object = 0xE000000000000000;
  v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v180);

  *&v93[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title] = v98;

  v99 = *&v93[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label];

  v100 = String._bridgeToObjectiveC()();

  [v99 setText:v100];

  v101 = *(v1 + v92);
  v102 = [v94 mainBundle];
  v181._object = 0x800000010057B940;
  v103._object = 0x800000010057B920;
  v181._countAndFlagsBits = 0xD000000000000029;
  v103._countAndFlagsBits = 0xD000000000000017;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v181);

  *&v101[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle] = v105;

  v106 = *&v101[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel];

  v107 = String._bridgeToObjectiveC()();

  [v106 setText:v107];

  v108 = v92;
  v163 = v92;
  v109 = *(v1 + v92);
  v111 = v170;
  v110 = v171;
  swift_storeEnumTagMultiPayload();
  v112 = v169;
  v169(v110, 0, 1, v111);
  v113 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  v114 = v109;
  sub_100140BE4(v110, v109 + v113);
  swift_endAccess();
  sub_10032B0BC();

  sub_100012DF0(v110, &qword_1006B3298);
  v115 = *(v1 + v108);
  v115[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = 1;
  v116 = v115;
  sub_10032ADBC();

  v117 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stewieLocationAttention);
  swift_storeEnumTagMultiPayload();
  v112(v110, 0, 1, v111);
  v118 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v110, v117 + v118);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v110, &qword_1006B3298);
  v119 = v172;
  v120 = [v172 mainBundle];
  v182._object = 0x800000010057FD20;
  v121._countAndFlagsBits = 0xD000000000000026;
  v121._object = 0x800000010057FCD0;
  v122.value._object = 0x800000010057FD00;
  v122.value._countAndFlagsBits = 0xD000000000000012;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v182._countAndFlagsBits = 0xD000000000000017;
  v124 = NSLocalizedString(_:tableName:bundle:value:comment:)(v121, v122, v120, v123, v182);

  *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v124;

  v125 = *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v126 = String._bridgeToObjectiveC()();

  [v125 setText:v126];

  v127 = [v119 mainBundle];
  v183._object = 0x800000010057FD20;
  v128._countAndFlagsBits = 0xD000000000000038;
  v128._object = 0x800000010057FD40;
  v129.value._object = 0x800000010057FD00;
  v129.value._countAndFlagsBits = 0xD000000000000012;
  v130._countAndFlagsBits = 0;
  v130._object = 0xE000000000000000;
  v183._countAndFlagsBits = 0xD000000000000017;
  v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, v129, v127, v130, v183);

  *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v131;

  v132 = *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v133 = String._bridgeToObjectiveC()();

  [v132 setText:v133];

  *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8) = &off_100628730;
  swift_unknownObjectWeakAssign();
  v162 = v117;
  *(v117 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  v134 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsOffAttention);
  v135 = v170;
  swift_storeEnumTagMultiPayload();
  v169(v110, 0, 1, v135);
  v136 = OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v110, v134 + v136);
  swift_endAccess();
  sub_10032B0BC();
  sub_100012DF0(v110, &qword_1006B3298);
  v137 = [v119 mainBundle];
  v138._countAndFlagsBits = 0xD000000000000015;
  v184._object = 0x800000010057BEA0;
  v138._object = 0x800000010057BE80;
  v184._countAndFlagsBits = 0xD000000000000027;
  v139._countAndFlagsBits = 0;
  v139._object = 0xE000000000000000;
  v140 = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, 0, v137, v139, v184);

  *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_title) = v140;

  v141 = *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_label);

  v142 = String._bridgeToObjectiveC()();

  [v141 setText:v142];

  v143 = [v119 mainBundle];
  v185._object = 0x800000010057FDC0;
  v144._countAndFlagsBits = 0xD000000000000030;
  v144._object = 0x800000010057FD80;
  v185._countAndFlagsBits = 0xD000000000000042;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  v146 = NSLocalizedString(_:tableName:bundle:value:comment:)(v144, 0, v143, v145, v185);

  *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v146;

  v147 = *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

  v148 = String._bridgeToObjectiveC()();

  [v147 setText:v148];

  v149 = [v119 mainBundle];
  v186._object = 0x800000010057BF60;
  v150._countAndFlagsBits = 0x45535F4F545F4F47;
  v150._object = 0xEE0053474E495454;
  v186._countAndFlagsBits = 0xD000000000000020;
  v151._countAndFlagsBits = 0;
  v151._object = 0xE000000000000000;
  v152 = NSLocalizedString(_:tableName:bundle:value:comment:)(v150, 0, v149, v151, v186);

  *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionTitle) = v152;

  v153 = *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_actionLabel);

  v154 = String._bridgeToObjectiveC()();

  [v153 setText:v154];

  *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_delegate + 8) = &off_100628730;
  swift_unknownObjectWeakAssign();
  *(v134 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = 1;
  sub_10032ADBC();
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel) setHidden:1];
  v155 = v166;
  [*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView) + OBJC_IVAR____TtC6FindMy12FMScrollView_content) addSubview:*(v1 + v166)];
  [*(v1 + v155) addArrangedSubview:*(v1 + v164)];
  [*(v1 + v155) addArrangedSubview:v162];
  [*(v1 + v155) addArrangedSubview:v134];
  [*(v1 + v155) addArrangedSubview:*(v1 + v163)];
  [*(v1 + v155) addArrangedSubview:*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_errorConditionsAttentionModule)];
  v156 = v165;
  [*(v1 + v155) addArrangedSubview:*(v1 + v165)];
  [*(v1 + v156) addArrangedSubview:*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_contactButton)];
  [*(v1 + v155) addArrangedSubview:*(v1 + v167)];
  v157 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController);
  v158 = *(v1 + v155);
  v159 = [v157 view];
  if (v159)
  {
    v160 = v159;
    [v158 addArrangedSubview:v159];
  }

  else
  {
    __break(1u);
  }
}

void sub_10012D294()
{
  sub_10027A200();
  v1 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView;
  [*&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*&v0[v1] bottomAnchor];
  v3 = [*(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] + OBJC_IVAR____TtC6FindMy12FMScrollView_content) bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [*&v0[v1] topAnchor];
  v7 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView] bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:19.0];

  *(v5 + 32) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:16.0];
  *(v5 + 40) = v13;
  v14 = [*&v0[v1] trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 trailingAnchor];

  v19 = [v14 constraintEqualToAnchor:v18 constant:-16.0];
  *(v5 + 48) = v19;
  *(v5 + 56) = v4;
  sub_10000905C(0, &qword_1006B3A70);
  v20 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  v22 = *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackBottomConstraint] = v20;
}

void sub_10012D5B0()
{
  v1 = objc_allocWithZone(UITapGestureRecognizer);
  v2 = v0;
  v15 = [v1 initWithTarget:v2 action:"handleLocationLabel"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_nameThisLocationButton] addGestureRecognizer:v15];
  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleContact"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_contactButton] addGestureRecognizer:v14];
  v13 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleDirections"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton] addGestureRecognizer:v13];
  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleFind"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton] addGestureRecognizer:v12];
  v11 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleStartFollowing"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startFollowingButton] addGestureRecognizer:v11];
  v10 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleRemoveFriend"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton] addGestureRecognizer:v10];
  v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleStartSharing"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_startSharingButton] addGestureRecognizer:v9];
  v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleStopSharingWithGestureRecognizer:"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stopSharingButton] addGestureRecognizer:v8];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleFavorite"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton] addGestureRecognizer:v3];
  v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleUnfavorite"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton] addGestureRecognizer:v4];
  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleStopSharingWithGestureRecognizer:"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining] addGestureRecognizer:v5];
  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleTapNotificationsPausedAttention"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsPausedAttention] addGestureRecognizer:v6];
  v7 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleInnaccurateLocationAttentionTap"];
  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention] addGestureRecognizer:v7];
  v16 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleNotificationsOffAttentionTap"];

  [*&v2[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsOffAttention] addGestureRecognizer:v16];
}

uint64_t sub_10012D9BC(uint64_t a1)
{
  v2 = type metadata accessor for FMPersonDetailViewModel(0);
  v161 = *(v2 - 8);
  __chkstk_darwin(v2);
  v162 = v3;
  v163 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v159 = *(v4 - 8);
  v160 = v4;
  __chkstk_darwin(v4);
  v157 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for DispatchQoS();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v8, v9, "FMPersonDetailContentViewController: update viewModel", v10, 2u);
  }

  v11 = *(a1 + 104);
  v12 = v165;
  v13 = &v165[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText];
  *v13 = *(a1 + 96);
  v13[1] = v11;

  sub_10027D190();
  v14 = *&v12[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel];
  v14[OBJC_IVAR____TtC6FindMy15FMCopyableLabel_isCopyToPasteboardEnabled] = *(a1 + 64);
  v167 = &type metadata for SolariumFeatureFlag;
  v15 = sub_10000BD04();
  v168 = v15;
  v16 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v17 = objc_opt_self();
  v18 = &selRef_labelColor;
  if ((v16 & 1) == 0)
  {
    v18 = &selRef_secondaryLabelColor;
  }

  v19 = [v17 *v18];
  p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  [v14 setTextColor:v19];

  [v14 setUserInteractionEnabled:*(a1 + *(v2 + 92))];
  v167 = &type metadata for SolariumFeatureFlag;
  v168 = v15;
  v21 = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  v154 = v2;
  if (v21)
  {
    v22 = *&v165[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
    v23 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed;
    if ((v165[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed] & 1) != 0 || (v34 = *(a1 + 40)) == 0)
    {
      v36 = 1;
    }

    else
    {
      if ((v34 & 0x2000000000000000) != 0)
      {
        v35 = HIBYTE(v34) & 0xF;
      }

      else
      {
        v35 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
      }

      v36 = v35 == 0;
    }

    [v22 setHidden:v36];
    [v14 setHidden:v165[v23]];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  else
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = *(a1 + 32);
      v26 = objc_opt_self();

      v27 = [v26 mainBundle];
      v170._object = 0x800000010057DBA0;
      v28._countAndFlagsBits = 0xD000000000000027;
      v28._object = 0x800000010057DB70;
      v170._countAndFlagsBits = 0xD000000000000039;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v170);

      sub_10007EBC0(&unk_1006B20B0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100552210;
      *(v30 + 56) = &type metadata for String;
      v31 = sub_10008EE84();
      *(v30 + 32) = v25;
      *(v30 + 40) = v24;
      v33 = *(a1 + 48);
      v32 = *(a1 + 56);
      *(v30 + 96) = &type metadata for String;
      *(v30 + 104) = v31;
      *(v30 + 64) = v31;
      *(v30 + 72) = v33;
      *(v30 + 80) = v32;

      String.init(format:_:)();
      p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    }

    else
    {
    }

    v22 = *&v165[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
    [v22 setHidden:1];
  }

  v37 = String._bridgeToObjectiveC()();

  [v14 setText:v37];

  if (*(a1 + 40))
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  [v22 setText:v38];

  v39 = *&v165[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
  v40 = *(a1 + 72);
  v41 = *(a1 + 80);
  v42 = String._bridgeToObjectiveC()();
  [v39 setText:v42];

  [v39 p:*(a1 + 88) ivar:?lyt[416]];
  v43 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  [v39 setHidden:v43 == 0];
  v45 = *(a1 + 128);
  v44 = *(a1 + 136);
  v46 = v165;
  if (v44)
  {
    v47 = *&v165[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stewieLocationAttention];
    v48 = objc_opt_self();
    v150 = v48;

    v49 = [v48 mainBundle];
    v171._object = 0x800000010057FD20;
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x8000000100580350;
    v51.value._object = 0x800000010057FD00;
    v171._countAndFlagsBits = 0xD000000000000017;
    v51.value._countAndFlagsBits = 0xD000000000000012;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v49, v52, v171);

    v53 = sub_10007EBC0(&unk_1006B20B0);
    v54 = swift_allocObject();
    v164 = xmmword_100552220;
    *(v54 + 16) = xmmword_100552220;
    *(v54 + 56) = &type metadata for String;
    v55 = sub_10008EE84();
    *(v54 + 64) = v55;
    v151 = a1;
    v56 = v46;
    v57 = v55;
    v149 = v55;
    v152 = v45;
    *(v54 + 32) = v45;
    *(v54 + 40) = v44;

    v58 = String.init(format:_:)();
    v60 = v59;

    v61 = (v47 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle);
    *v61 = v58;
    v61[1] = v60;

    v153 = v47;
    v62 = *(v47 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

    v63 = String._bridgeToObjectiveC()();

    [v62 setText:v63];

    v64 = *&v56[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention];
    v65 = v150;
    v66 = [v150 mainBundle];
    v172._object = 0x80000001005803C0;
    v67._countAndFlagsBits = 0xD00000000000002DLL;
    v67._object = 0x8000000100580390;
    v172._countAndFlagsBits = 0xD00000000000003FLL;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v172);

    v69 = swift_allocObject();
    *(v69 + 16) = v164;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v57;
    v70 = v56;
    a1 = v151;
    v71 = v152;
    *(v69 + 32) = v152;
    *(v69 + 40) = v44;

    v72 = String.init(format:_:)();
    v74 = v73;

    v75 = &v64[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
    *v75 = v72;
    v75[1] = v74;

    v76 = *&v64[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

    v77 = String._bridgeToObjectiveC()();

    [v76 setText:v77];

    v78 = *(*&v70[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v79 = [v65 mainBundle];
    v173._object = 0x8000000100580430;
    v80._countAndFlagsBits = 0xD000000000000021;
    v80._object = 0x8000000100580400;
    v173._countAndFlagsBits = 0xD000000000000033;
    v81._countAndFlagsBits = 0;
    v81._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v173);

    v148 = v53;
    v82 = swift_allocObject();
    *(v82 + 16) = v164;
    v83 = v149;
    *(v82 + 56) = &type metadata for String;
    *(v82 + 64) = v83;
    *(v82 + 32) = v71;
    *(v82 + 40) = v44;

    String.init(format:_:)();

    v84 = String._bridgeToObjectiveC()();

    [v78 setText:v84];

    v85 = v165;
    v86 = *(*&v165[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v87 = [v65 mainBundle];
    v174._object = 0x80000001005804A0;
    v88._countAndFlagsBits = 0xD000000000000024;
    v88._object = 0x8000000100580470;
    v174._countAndFlagsBits = 0xD000000000000036;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v88, 0, v87, v89, v174);

    v90 = swift_allocObject();
    *(v90 + 16) = v164;
    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = v83;
    v91 = v152;
    *(v90 + 32) = v152;
    *(v90 + 40) = v44;

    String.init(format:_:)();

    v92 = String._bridgeToObjectiveC()();

    [v86 setText:v92];

    v93 = *(*&v85[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v94 = [v65 mainBundle];
    v175._object = 0x8000000100580510;
    v95._countAndFlagsBits = 0xD00000000000002DLL;
    v95._object = 0x80000001005804E0;
    v175._countAndFlagsBits = 0xD00000000000003FLL;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v95, 0, v94, v96, v175);

    v97 = swift_allocObject();
    *(v97 + 16) = v164;
    *(v97 + 56) = &type metadata for String;
    *(v97 + 64) = v83;
    *(v97 + 32) = v91;
    *(v97 + 40) = v44;
    String.init(format:_:)();
  }

  else
  {
    v98 = *&v165[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_stewieLocationAttention];
    v99 = objc_opt_self();
    v100 = [v99 mainBundle];
    v176._object = 0x800000010057FD20;
    v101._countAndFlagsBits = 0xD000000000000038;
    v101._object = 0x800000010057FD40;
    v102.value._object = 0x800000010057FD00;
    v176._countAndFlagsBits = 0xD000000000000017;
    v102.value._countAndFlagsBits = 0xD000000000000012;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, v176);

    *(v98 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle) = v104;

    v153 = v98;
    v105 = *(v98 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel);

    v106 = String._bridgeToObjectiveC()();

    [v105 setText:v106];

    v107 = *&v46[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention];
    v108 = [v99 mainBundle];
    v177._object = 0x8000000100580220;
    v109._countAndFlagsBits = 0xD000000000000035;
    v109._object = 0x80000001005801E0;
    v177._countAndFlagsBits = 0xD000000000000047;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, v45, v108, v110, v177);

    *&v107[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle] = v111;

    v112 = *&v107[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

    v113 = String._bridgeToObjectiveC()();

    [v112 setText:v113];

    v114 = *(*&v46[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_favoriteButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v115 = [v99 mainBundle];
    v178._object = 0x80000001005802A0;
    v116._countAndFlagsBits = 0xD000000000000029;
    v116._object = 0x8000000100580270;
    v178._countAndFlagsBits = 0xD00000000000003BLL;
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v116, v45, v115, v117, v178);

    v118 = String._bridgeToObjectiveC()();

    [v114 setText:v118];

    v119 = *(*&v46[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_unfavoriteButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v120 = [v99 mainBundle];
    v179._object = 0x8000000100580310;
    v121._countAndFlagsBits = 0xD00000000000002CLL;
    v121._object = 0x80000001005802E0;
    v179._countAndFlagsBits = 0xD00000000000003ELL;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v121, v45, v120, v122, v179);

    v123 = String._bridgeToObjectiveC()();

    [v119 setText:v123];

    v93 = *(*&v46[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_removeFriendButton] + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v124 = [v99 mainBundle];
    v180._object = 0x800000010057FBC0;
    v125._countAndFlagsBits = 0xD000000000000030;
    v125._object = 0x800000010057FB80;
    v180._countAndFlagsBits = 0xD000000000000042;
    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v125, v45, v124, v126, v180);
  }

  v127 = String._bridgeToObjectiveC()();

  [v93 setText:v127];

  v128 = v154;
  LOBYTE(v127) = *(a1 + *(v154 + 96));
  v129 = sub_1004233DC();
  v130 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  *(v153 + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = v129 & 1 | ((v127 & 1) == 0);
  sub_10032ADBC();
  v131 = v165;
  sub_10027C468(*(a1 + *(v128 + 104)));
  v132 = *&v131[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_inaccurateAttention];
  v132[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed] = (*(a1 + *(v128 + 108)) & 1) == 0;
  v133 = v132;
  sub_10032ADBC();

  v134 = *(*&v131[v130] + 16);
  v135 = sub_100057590();

  LOBYTE(v134) = sub_100422D8C();
  sub_10000905C(0, &qword_1006AEDC0);
  v136 = static OS_dispatch_queue.main.getter();
  v137 = swift_allocObject();
  *(v137 + 16) = v131;
  *(v137 + 24) = (v135 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  *(v137 + 25) = v134 & 1;
  v168 = sub_10014100C;
  v169 = v137;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  v167 = &unk_100628A98;
  v138 = _Block_copy(aBlock);
  v139 = v131;

  v140 = v155;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100141248(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v141 = v157;
  v142 = v160;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v138);

  (*(v159 + 8))(v141, v142);
  (*(v156 + 8))(v140, v158);
  swift_unknownObjectWeakInit();
  v143 = v163;
  sub_10014101C(a1, v163, type metadata accessor for FMPersonDetailViewModel);
  v144 = (*(v161 + 80) + 24) & ~*(v161 + 80);
  v145 = swift_allocObject();
  *(v145 + 16) = aBlock;
  sub_100140CCC(v143, v145 + v144, type metadata accessor for FMPersonDetailViewModel);
  sub_10013C8F8(a1, v139, sub_100141084, v145);
  v146 = *&v139[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications];
  sub_10037664C(a1);

  sub_10012F928(a1);

  return swift_unknownObjectWeakDestroy();
}

void sub_10012EE34(uint64_t a1, char a2, char a3)
{
  v6 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications;
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notifications);
  v8 = OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_disabled;
  v7[OBJC_IVAR____TtC6FindMy20FMLocationAlertsView_disabled] = a2;
  v9 = *&v7[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v10 = objc_opt_self();
  v11 = v7;
  v12 = [v10 labelColor];
  [v9 setTextColor:v12];

  v13 = 0.35;
  if ((a2 & 1) == 0)
  {
    v13 = 1.0;
  }

  [v9 setAlpha:v13];
  [*&v11[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton] setShowsMenuAsPrimaryAction:(v7[v8] & 1) == 0];

  v14 = *(a1 + v6);
  v15 = v14;
  if (a2)
  {
    sub_10022E294(0xD000000000000027, 0x8000000100580590);
    v16 = String.init(format:_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v14[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v19 = v16;
  v19[1] = v18;

  sub_100457338();

  *(*(a1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_notificationsOffAttention) + OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_collapsed) = a3 & 1 | ((a2 & 1) == 0);
  sub_10032ADBC();
}

void sub_10012EFEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_msgSend(objc_opt_self() "deviceCapabilities")];
    swift_unknownObjectRelease();
    if (v5 & 1) != 0 || (sub_10012A6F0())
    {
      v6 = *(a2 + *(type metadata accessor for FMPersonDetailViewModel(0) + 132));
      v7 = v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery];
      v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery] = v6;
      sub_100129844(v7);
      if (v6 == 1 && v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting] == 1)
      {
        v8 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v9 = v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery];
      v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isNearbyForDiscovery] = 0;
      sub_100129844(v9);
    }

    v8 = v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable];
LABEL_9:
    v10 = sub_10012A7F8();
    v12 = v11;
    v13 = type metadata accessor for FMIPPeopleFindingEvent();
    v14 = *(*(v13 - 8) + 48);
    if (!v14(v12, 1, v13))
    {
      type metadata accessor for FMPersonDetailViewModel(0);
      FMIPPeopleFindingEvent.withinNearbyRange.setter();
    }

    (v10)(&aBlock, 0);
    v15 = sub_10012A7F8();
    if (!v14(v16, 1, v13))
    {
      type metadata accessor for FMPersonDetailViewModel(0);
      FMIPPeopleFindingEvent.startedDiscovering.setter();
    }

    (v15)(&aBlock, 0);
    if (!v8 || (My = type metadata accessor for Feature.FindMy(), v70 = My, v71 = sub_100141248(&qword_1006B4220, &type metadata accessor for Feature.FindMy), v18 = sub_100008FC0(&aBlock), (*(*(My - 8) + 104))(v18, enum case for Feature.FindMy.redStripe(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100006060(&aBlock), (My & 1) == 0))
    {
      [*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton] removeFromSuperview];
      v27 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton;
      [*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton]];
      v28 = 1;
      [*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_errorConditionsAttentionModule] setHidden:1];
      v29 = *&v4[v27];
      v30 = type metadata accessor for FMPersonDetailViewModel(0);
      v31 = *(a2 + *(v30 + 92));
      if (v31 == 1)
      {
        v28 = *(a2 + *(v30 + 108));
      }

      v32 = v29[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
      v29[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v28;
      v33 = v29;
      sub_1000D1ACC(v32);

      [*&v4[v27] setUserInteractionEnabled:v31];
      if (*(a2 + 24) && (*(*(*&v4[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) & 1) == 0)
      {
        v35 = *(*&v4[v27] + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel);
        v24 = String._bridgeToObjectiveC()();
        [v35 setText:v24];
      }

      else
      {
        v34 = *(*&v4[v27] + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel);
        v24 = String._bridgeToObjectiveC()();
        [v34 setText:v24];
      }

      goto LABEL_37;
    }

    [*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_directionsButton] removeFromSuperview];
    v19 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton;
    v20 = [*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_firstButtonsStackView] addArrangedSubview:*&v4[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_findButton]];
    v21 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    __chkstk_darwin(v20);
    v23 = v22;
    v24 = v4;
    OS_dispatch_queue.sync<A>(execute:)();

    v25 = aBlock;
    if (*&v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peerToken])
    {
      if ((aBlock & 1) == 0)
      {
        if ((v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] & 1) != 0 || (v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_canShowDiscoveryConnecting] & 1) == 0)
        {
          v47 = *&v4[v19];
          v48 = v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
          v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] ^ 1;
          v49 = v47;
          sub_1000D1ACC(v48);

          [*&v4[v19] setUserInteractionEnabled:1];
          v50 = *&v4[v19];
          v50[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
          v51 = objc_opt_self();
          v52 = swift_allocObject();
          *(v52 + 16) = v50;
          v71 = sub_1001412AC;
          v72 = v52;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_100004AE4;
          v70 = &unk_100628B38;
          v53 = _Block_copy(&aBlock);
          v54 = v50;

          [v51 animateWithDuration:4 delay:v53 options:0 animations:0.3 completion:0.0];
          _Block_release(v53);

          v55 = *&v4[v19];
          v55[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
          v56 = v55;
          sub_1000D17E8();
        }

        else
        {
          v37 = *&v4[v19];
          v38 = v37[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
          v37[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
          v39 = v37;
          sub_1000D1ACC(v38);

          v40 = *&v4[v19];
          v40[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
          v41 = v40;
          sub_1000D17E8();

          v42 = *&v4[v19];
          v42[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
          v43 = objc_opt_self();
          v44 = swift_allocObject();
          *(v44 + 16) = v42;
          v71 = sub_100141428;
          v72 = v44;
          aBlock = _NSConcreteStackBlock;
          v68 = 1107296256;
          v69 = sub_100004AE4;
          v70 = &unk_100628B88;
          v45 = _Block_copy(&aBlock);
          v46 = v42;

          [v43 animateWithDuration:4 delay:v45 options:0 animations:0.3 completion:0.0];
          _Block_release(v45);

          [*&v4[v19] setUserInteractionEnabled:0];
        }

        goto LABEL_32;
      }

      v26 = *&v4[v19];
    }

    else
    {
      v26 = *&v4[v19];
      if ((aBlock & 1) == 0)
      {
        v36 = v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_isPrecisionFindingAvailable] ^ 1;
        goto LABEL_31;
      }
    }

    v36 = 1;
LABEL_31:
    v57 = v26;
    v58 = v57[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled];
    v57[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = v36 & 1;
    sub_1000D1ACC(v58);

    [*&v4[v19] setUserInteractionEnabled:v25 ^ 1u];
LABEL_32:
    v59 = *&v4[v21];

    v60 = *(v59 + 16);

    LOBYTE(v59) = sub_10041E648();

    if (v59)
    {
      v62 = 1;
    }

    else
    {
      __chkstk_darwin(v61);
      v64 = v63;
      OS_dispatch_queue.sync<A>(execute:)();

      v62 = aBlock;
    }

    v65 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_errorConditionsAttentionModule;
    v66 = v62 ^ 1;
    [*&v24[OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_errorConditionsAttentionModule] setHidden:v62 ^ 1u];
    if (v66)
    {
      goto LABEL_38;
    }

    v4 = *&v24[v65];
    sub_1004F37A4();
LABEL_37:

    v24 = v4;
LABEL_38:
  }
}

id sub_10012F928(uint64_t a1)
{
  v3 = (a1 + *(type metadata accessor for FMPersonDetailViewModel(0) + 72));
  v4 = v3[1];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining;
    v6 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining);
    v7 = *v3;
    v8 = &v6[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitle];
    *v8 = v7;
    *(v8 + 1) = v4;
    v9 = v6;

    v10 = *&v9[OBJC_IVAR____TtC6FindMy25FMExtendedPlatterInfoView_subtitleLabel];

    v11 = String._bridgeToObjectiveC()();
    [v10 setText:v11];

    [*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_verticalStackView) insertArrangedSubview:*(v1 + v5) atIndex:0];
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_timeRemaining) removeFromSuperview];
  }

  sub_100139DE4();

  return sub_10012FA48(a1);
}

id sub_10012FA48(uint64_t a1)
{
  v3 = type metadata accessor for ManagedPerson();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedPerson.Properties();
  v32 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC6FindMy35FMPersonDetailContentViewController_peopleManagementHostingController);
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  [result setNeedsLayout];

  result = [v14 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  v29 = v3;
  [result layoutIfNeeded];

  result = [v14 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = result;
  [result invalidateIntrinsicContentSize];

  v33 = 0;
  sub_100141248(&qword_1006B3270, &type metadata accessor for ManagedPerson.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  v19 = type metadata accessor for FMPersonDetailViewModel(0);
  if (*(a1 + v19[22]) == 1)
  {
    static ManagedPerson.Properties.canFavorite.getter();
    sub_10037A9A4(v11, v8);
    v20 = *(v32 + 8);
    v20(v8, v5);
    v20(v11, v5);
  }

  if (*(a1 + v19[23]) == 1)
  {
    static ManagedPerson.Properties.hasLocation.getter();
    sub_10037A9A4(v11, v8);
    v21 = *(v32 + 8);
    v21(v8, v5);
    v21(v11, v5);
  }

  v22 = (v32 + 8);
  if (*(a1 + v19[21]) == 1)
  {
    static ManagedPerson.Properties.canStopSharingLocation.getter();
  }

  else
  {
    static ManagedPerson.Properties.canStartSharingLocation.getter();
  }

  sub_10037A9A4(v11, v8);
  v23 = *v22;
  (*v22)(v8, v5);
  v23(v11, v5);
  if (*(a1 + v19[19]) == 1)
  {
    static ManagedPerson.Properties.canStopFollowingLocation.getter();
LABEL_15:
    sub_10037A9A4(v11, v8);
    v23(v8, v5);
    v23(v11, v5);
    goto LABEL_16;
  }

  if ((*(a1 + v19[20]) & 1) == 0)
  {
    static ManagedPerson.Properties.canStartFollowingLocation.getter();
    goto LABEL_15;
  }

LABEL_16:
  if (*(a1 + v19[30]) == 1)
  {
    static ManagedPerson.Properties.areFriendsOperationsRestricted.getter();
    sub_10037A9A4(v11, v8);
    v23(v8, v5);
    v23(v11, v5);
  }

  v27 = v23;
  v28 = v22;
  if (!*(a1 + 136))
  {
  }

  v24 = *(v32 + 16);
  v26 = v13;
  v24(v11, v13, v5);

  v25 = v30;
  ManagedPerson.init(firstName:properties:isFavorite:)();
  PeopleManagementSectionViewModel.updateProperties(with:)();
  (*(v31 + 8))(v25, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onSetAsFavorite.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onEditLocationName.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onStartFollowing.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onStartSharingMyLocation.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onWantToStopSharingMyLocation.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onWantToStopFollowingLocation.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onShouldStopSharingMyLocation.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onShouldStopFollowingLocation.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  PeopleManagementSectionViewModel.onStartSharingMyLocationFor.setter();
  v27(v26, v5);
}
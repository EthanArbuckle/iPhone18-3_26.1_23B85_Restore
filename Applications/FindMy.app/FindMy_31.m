void sub_1003446B8()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for FMSettingsUpdateViewController();
  objc_msgSendSuper2(&v23, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v24.origin.x = v6;
      v24.origin.y = v8;
      v24.size.width = v10;
      v24.size.height = v12;
      Height = CGRectGetHeight(v24);
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        [v14 safeAreaInsets];
        v17 = v16;

        v18 = [v0 view];
        if (v18)
        {
          v19 = v18;
          v20 = Height - v17;
          [v18 safeAreaInsets];
          v22 = v21;

          [v2 setConstant:v20 - v22];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100344944()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint);
}

id sub_1003449B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSettingsUpdateViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100344A88()
{
  v1 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_button;
  *(v0 + v2) = [objc_opt_self() buttonWithType:1];
  v3 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
  *(v0 + v3) = [objc_allocWithZone(UIScrollView) init];
  v4 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100344B8C@<X0>(NSString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v304 = a7;
  v312 = a6;
  v323 = a5;
  v324 = a4;
  v319 = a1;
  v11 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v11 - 8);
  v300 = &v282 - v12;
  v302 = type metadata accessor for Date();
  v301 = *(v302 - 8);
  v13 = __chkstk_darwin(v302);
  v293 = &v282 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v294 = &v282 - v15;
  v315 = type metadata accessor for FMIPItemState();
  v298 = *(v315 - 1);
  v16 = __chkstk_darwin(v315);
  v314 = &v282 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v313 = (&v282 - v18);
  v297 = type metadata accessor for FMIPItemBatteryStatus();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v303 = &v282 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&unk_1006C0220);
  v21 = __chkstk_darwin(v20 - 8);
  v299 = &v282 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v295 = &v282 - v23;
  v286 = type metadata accessor for PersonNameComponents();
  v285 = *(v286 - 8);
  v24 = __chkstk_darwin(v286);
  v282 = &v282 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v284 = &v282 - v26;
  v311 = type metadata accessor for FMIPBeaconShareState();
  v307 = *(v311 - 8);
  v27 = __chkstk_darwin(v311);
  v291 = &v282 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v292 = &v282 - v30;
  v31 = __chkstk_darwin(v29);
  v290 = &v282 - v32;
  __chkstk_darwin(v31);
  *&v306 = &v282 - v33;
  v34 = type metadata accessor for FMIPBeaconShare();
  v35 = *(v34 - 1);
  v36 = __chkstk_darwin(v34);
  v305 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v282 - v38;
  v40 = sub_10007EBC0(&unk_1006C0240);
  v41 = __chkstk_darwin(v40 - 8);
  v308 = &v282 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v282 - v44;
  __chkstk_darwin(v43);
  v47 = &v282 - v46;
  v48 = type metadata accessor for FMItemCellViewModel();
  v49 = (a8 + *(v48 + 104));
  v49->_countAndFlagsBits = 0;
  v49->_object = 0;
  v288 = v49;
  v322 = v48;
  v50 = (a8 + *(v48 + 108));
  v50->_countAndFlagsBits = 0;
  v50->_object = 0;
  v289 = v50;
  v51 = v35;
  sub_100007204(a3, v47, &unk_1006C0240);
  v53 = *(v35 + 48);
  v52 = (v35 + 48);
  v316 = v53;
  if (v53(v47, 1, v34) == 1)
  {
    sub_100012DF0(v47, &unk_1006C0240);
    v309 = FMIPItem.owner.getter();
    v55 = v54;
  }

  else
  {
    v309 = FMIPBeaconShare.ownerHandle.getter();
    v55 = v56;
    (v51[1])(v47, v34);
  }

  v318 = v55;
  sub_100007204(a3, v45, &unk_1006C0240);
  v57 = v316(v45, 1, v34);
  v317 = a3;
  if (v57 == 1)
  {
    sub_100012DF0(v45, &unk_1006C0240);
    v58 = 0;
  }

  else
  {
    v59 = FMIPBeaconShare.requiresResponse.getter();
    v60 = v45;
    v58 = v59;
    (v51[1])(v60, v34);
  }

  v61 = v322;
  *(a8 + v322[20]) = v324;
  *(a8 + 64) = 1;

  a8[2] = FMIPItem.identifier.getter();
  a8[3] = v62;
  a8[4] = v323;
  a8[7] = 0x4040800000000000;
  v287 = v61[23];
  *(a8 + v287) = v58 & 1;
  *(a8 + v61[25]) = 0;
  *(a8 + 65) = 0;
  v63 = (a8 + v61[17]);
  v64 = a2;
  v65 = v309;
  v66 = v318;
  *v63 = v309;
  v63[1] = v66;
  v320 = v64;
  v321 = a8;
  v323 = v51;
  LODWORD(v310) = v58;
  if (v58)
  {

    v67 = 0;
    v68 = v317;
    goto LABEL_28;
  }

  v69 = objc_opt_self();

  v70 = [v69 SPOwner];
  v71 = [v70 destination];

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  if (v65 == v72 && v318 == v74)
  {
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v75 & 1) == 0)
    {
      v67 = 3;
      LOBYTE(v58) = v310;
      v68 = v317;
      goto LABEL_28;
    }
  }

  v76 = v324;
  v77 = v324[2];
  v68 = v317;
  if (v77)
  {
    v78 = 0;
    v79 = v51;
    v80 = v324 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v283 = (v307 + 8);
    v81 = (v79 + 1);
    while (v78 < v76[2])
    {
      (v323[2])(v39, &v80[v323[9] * v78], v34);
      v74 = v39;
      if (FMIPBeaconShare.delegationStatus.getter() & 1) != 0 || (v74 = v39, (FMIPBeaconShare.amOwner.getter() & 1) == 0) || (v74 = v39, (FMIPBeaconShare.isDefaultOwnedShare.getter()))
      {
        (*v81)(v39, v34);
      }

      else
      {
        v82 = v52;
        v83 = v34;
        v84 = v306;
        FMIPBeaconShare.state.getter();
        v74 = FMIPBeaconShareState.isActive.getter();
        v85 = v84;
        v34 = v83;
        v52 = v82;
        (*v283)(v85, v311);
        (*v81)(v39, v34);
        if (v74)
        {
          v67 = 2;
LABEL_24:
          a8 = v321;
          v68 = v317;
          v51 = v323;
          goto LABEL_26;
        }
      }

      ++v78;
      v76 = v324;
      if (v77 == v78)
      {
        v67 = 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

  v67 = 1;
LABEL_26:
  LOBYTE(v58) = v310;
LABEL_28:
  *(a8 + v322[21]) = v67;
  v86 = v308;
  sub_100007204(v68, v308, &unk_1006C0240);
  v87 = v316(v86, 1, v34);
  LODWORD(v306) = v67;
  if (v87 == 1)
  {

    sub_100012DF0(v86, &unk_1006C0240);
    goto LABEL_42;
  }

  v88 = v86;
  v89 = v305;
  (v51[4])(v305, v88, v34);
  if (v58)
  {
    v90 = v322;
    v91 = v322[19];
    FMIPBeaconShare.identifier.getter();
    v92 = type metadata accessor for UUID();
    (*(*(v92 - 8) + 56))(v321 + v91, 0, 1, v92);
    v93 = objc_opt_self();
    v94 = [v93 mainBundle];
    v325._object = 0x800000010057D3F0;
    v95._countAndFlagsBits = 0xD000000000000024;
    v95._object = 0x8000000100592400;
    v96.value._object = 0x800000010057D3D0;
    v325._countAndFlagsBits = 0xD000000000000018;
    v96.value._countAndFlagsBits = 0xD000000000000013;
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v94, v97, v325);

    *v288 = v98;
    v321[6] = 0;
    v321[5] = 0;
    *(v321 + v90[28]) = 0;
    v316 = v93;
    v99 = [v93 mainBundle];
    v315 = 0x800000010057D3F0;
    v326._object = 0x800000010057D3F0;
    v100._countAndFlagsBits = 0xD000000000000025;
    v100._object = 0x8000000100592430;
    v308 = "SHARE_ITEM_STOP_SHARE_ERROR";
    v101.value._object = 0x800000010057D3D0;
    v103 = v320;
    v102 = v321;
    v326._countAndFlagsBits = 0xD000000000000018;
    v101.value._countAndFlagsBits = 0xD000000000000013;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v100, v101, v99, v104, v326);

    *v289 = v105;
    *v102 = 0;
    v102[1] = 0;
    *(v102 + v287) = 1;
    *(v102 + v90[24]) = 0;
    *(v102 + v90[22]) = 0;
    v102[9] = 0;
    *(v102 + v90[30]) = 0;
    *(v102 + v90[29]) = 0;
    *(v102 + 10) = sub_10034D1C8(v103, 1);
    static Date.distantFuture.getter();
    v106 = v290;
    FMIPBeaconShare.state.getter();
    v107 = v292;
    FMIPBeaconShareState.baseState.getter();
    v108 = v307;
    v109 = (v307 + 8);
    v110 = *(v307 + 8);
    v111 = v311;
    v110(v106, v311);
    v112 = *(v108 + 88);
    v307 = v108 + 88;
    v310 = v112;
    v113 = v112(v107, v111);
    v313 = v110;
    v314 = v109;
    if (v113 == enum case for FMIPBeaconShareState.invitationReceived(_:))
    {

      dispatch thunk of FMFManager.contactsController.getter();
      FMIPBeaconShare.ownerHandle.getter();
      v114 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      v324 = v114;
      if (v114)
      {
        v115 = v114;
        v116 = v284;
        PersonNameComponents.init()();
        if ([v115 isKeyAvailable:CNContactNicknameKey])
        {
          v117 = [v115 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v115 isKeyAvailable:CNContactGivenNameKey])
        {
          v118 = [v115 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v115 isKeyAvailable:CNContactFamilyNameKey])
        {
          v119 = [v115 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v120 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v122 = [v120 localizedStringFromPersonNameComponents:isa style:1 options:0];

        v309 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v123;

        (*(v285 + 8))(v116, v286);

        v318 = v124;
      }

      v125 = [v316 mainBundle];
      v327._object = v315;
      v126._countAndFlagsBits = 0xD000000000000023;
      v126._object = 0x80000001005924C0;
      v127 = v308;
      v128.value._object = (v308 | 0x8000000000000000);
      v327._countAndFlagsBits = 0xD000000000000018;
      v128.value._countAndFlagsBits = 0xD000000000000013;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v126, v128, v125, v129, v327);

      sub_10007EBC0(&unk_1006B20B0);
      v130 = swift_allocObject();
      v306 = xmmword_100552220;
      *(v130 + 16) = xmmword_100552220;
      v131 = FMIPItem.name.getter();
      v133 = v132;
      *(v130 + 56) = &type metadata for String;
      v134 = sub_10008EE84();
      *(v130 + 64) = v134;
      *(v130 + 32) = v131;
      *(v130 + 40) = v133;
      v135 = String.init(format:_:)();
      v137 = v136;

      v138 = v321;
      v321[13] = v135;
      v138[14] = v137;
      v139 = [v316 mainBundle];
      v328._object = v315;
      v140._countAndFlagsBits = 0xD000000000000026;
      v140._object = 0x80000001005924F0;
      v141.value._object = (v127 | 0x8000000000000000);
      v328._countAndFlagsBits = 0xD000000000000018;
      v141.value._countAndFlagsBits = 0xD000000000000013;
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v140, v141, v139, v142, v328);

      v143 = swift_allocObject();
      *(v143 + 16) = v306;
      *(v143 + 56) = &type metadata for String;
      *(v143 + 64) = v134;
      v102 = v138;
      v103 = v320;
      v144 = v318;
      *(v143 + 32) = v309;
      *(v143 + 40) = v144;
      v145 = String.init(format:_:)();
      v147 = v146;

      v102[11] = v145;
      v102[12] = v147;
    }

    else
    {
      if (v113 != enum case for FMIPBeaconShareState.requestReceived(_:))
      {

        v102[13] = FMIPItem.name.getter();
        v102[14] = v174;
        v175 = sub_10034C388(v103, v324, v306, v304 & 1, v319);
        v177 = v176;
        v179 = v178;
        v181 = v180;

        if (v177)
        {
          v182 = [v316 mainBundle];
          v329._object = 0x800000010057DBA0;
          v103 = v320;
          v183._countAndFlagsBits = 0xD000000000000027;
          v183._object = 0x800000010057DB70;
          v329._countAndFlagsBits = 0xD000000000000039;
          v184._countAndFlagsBits = 0;
          v184._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v183, 0, v182, v184, v329);

          sub_10007EBC0(&unk_1006B20B0);
          v185 = swift_allocObject();
          *(v185 + 16) = xmmword_100552210;
          *(v185 + 56) = &type metadata for String;
          v186 = sub_10008EE84();
          *(v185 + 32) = v175;
          *(v185 + 40) = v177;
          *(v185 + 96) = &type metadata for String;
          *(v185 + 104) = v186;
          v102 = v321;
          *(v185 + 64) = v186;
          *(v185 + 72) = v179;
          *(v185 + 80) = v181;
          v111 = v311;
          v179 = String.init(format:_:)();
          v181 = v187;
        }

        v188 = v291;
        v189 = v323;
        v190 = v310;
        v102[11] = v179;
        v102[12] = v181;
        v191 = v313;
        v313(v292, v111);
LABEL_74:
        v217 = v305;
        FMIPBeaconShare.state.getter();

        sub_100012DF0(v317, &unk_1006C0240);
        v218 = type metadata accessor for FMIPItem();
        (*(*(v218 - 8) + 8))(v103, v218);
        (v189[1])(v217, v34);
        result = v190(v188, v111);
        if (result == enum case for FMIPBeaconShareState.accepting(_:))
        {
          result = v191(v188, v111);
          v220 = v322[18];
          v221 = 1;
        }

        else
        {
          if (result == enum case for FMIPBeaconShareState.declining(_:))
          {
            result = v191(v188, v111);
            v220 = v322[18];
          }

          else
          {
            v220 = v322[18];
            if (result != enum case for FMIPBeaconShareState.withdrawing(_:))
            {
              *(v102 + v220) = 0;
              return v191(v188, v111);
            }
          }

          v221 = 2;
        }

        *(v102 + v220) = v221;
        return result;
      }

      dispatch thunk of FMFManager.contactsController.getter();
      FMIPBeaconShare.shareeHandle.getter();
      v164 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      if (v164)
      {
        v165 = v164;
        v166 = v282;
        PersonNameComponents.init()();
        if ([v165 isKeyAvailable:CNContactNicknameKey])
        {
          v167 = [v165 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v165 isKeyAvailable:CNContactGivenNameKey])
        {
          v168 = [v165 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v165 isKeyAvailable:CNContactFamilyNameKey])
        {
          v169 = [v165 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v170 = objc_opt_self();
        v171 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v172 = [v170 localizedStringFromPersonNameComponents:v171 style:1 options:0];

        v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v309 = v173;

        (*(v285 + 8))(v166, v286);
        v324 = v165;
      }

      else
      {
        v318 = FMIPBeaconShare.shareeHandle.getter();
        v309 = v192;
        v324 = 0;
      }

      v193 = [v316 mainBundle];
      v194 = v315;
      v330._object = v315;
      v195._countAndFlagsBits = 0xD000000000000020;
      v195._object = 0x8000000100592460;
      v196 = v308;
      v197.value._object = (v308 | 0x8000000000000000);
      v330._countAndFlagsBits = 0xD000000000000018;
      v197.value._countAndFlagsBits = 0xD000000000000013;
      v198._countAndFlagsBits = 0;
      v198._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v195, v197, v193, v198, v330);

      sub_10007EBC0(&unk_1006B20B0);
      v199 = swift_allocObject();
      v306 = xmmword_100552220;
      *(v199 + 16) = xmmword_100552220;
      v200 = FMIPItem.name.getter();
      v202 = v201;
      *(v199 + 56) = &type metadata for String;
      v203 = sub_10008EE84();
      *(v199 + 64) = v203;
      *(v199 + 32) = v200;
      *(v199 + 40) = v202;
      v204 = String.init(format:_:)();
      v206 = v205;

      v207 = v321;
      v321[13] = v204;
      v207[14] = v206;
      v208 = [v316 mainBundle];
      v331._object = v194;
      v209._countAndFlagsBits = 0xD000000000000023;
      v209._object = 0x8000000100592490;
      v210.value._object = (v196 | 0x8000000000000000);
      v331._countAndFlagsBits = 0xD000000000000018;
      v210.value._countAndFlagsBits = 0xD000000000000013;
      v211._countAndFlagsBits = 0;
      v211._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v209, v210, v208, v211, v331);

      v212 = swift_allocObject();
      *(v212 + 16) = v306;
      *(v212 + 56) = &type metadata for String;
      *(v212 + 64) = v203;
      v103 = v320;
      v102 = v207;
      v213 = v309;
      *(v212 + 32) = v318;
      *(v212 + 40) = v213;
      v214 = String.init(format:_:)();
      v216 = v215;

      v207[11] = v214;
      v207[12] = v216;
    }

    v190 = v310;
    v111 = v311;
    v188 = v291;
    v189 = v323;
    v191 = v313;
    goto LABEL_74;
  }

  (v51[1])(v89, v34);
LABEL_42:
  v148 = v322;
  *(a8 + v322[22]) = 1;
  *(a8 + v148[18]) = 0;
  v149 = v295;
  FMIPItem.location.getter();
  v39 = type metadata accessor for FMIPLocation();
  v150 = *(v39 - 1);
  v52 = (v150 + 48);
  v34 = *(v150 + 48);
  v151 = (v34)(v149, 1, v39);
  v81 = v314;
  v309 = v150;
  if (v151 != 1)
  {
    v74 = FMIPLocation.location.getter();
    (*(v150 + 8))(v149, v39);
    if (!v312)
    {

      goto LABEL_48;
    }

    v152 = qword_1006AEC58;
    v78 = v312;
    if (v152 == -1)
    {
LABEL_46:
      v153 = [qword_1006D48A8 localizedDistanceFromLocation:v74 toLocation:v78];
      v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v154;

      [v74 distanceFromLocation:v78];
      v157 = v156;

      v158 = round(v157 / 10.0);
      a8 = v321;
      goto LABEL_49;
    }

LABEL_116:
    swift_once();
    goto LABEL_46;
  }

  sub_100012DF0(v149, &unk_1006C0220);
LABEL_48:
  v308 = 0;
  object = 0;
  v158 = 1.79769313e308;
LABEL_49:
  v159 = v303;
  FMIPItem.batteryStatus.getter();
  v160 = v296;
  v161 = v297;
  v162 = (*(v296 + 88))(v159, v297);
  v318 = v39;
  v316 = v52;
  v323 = v34;
  if (v162 == enum case for FMIPItemBatteryStatus.unknown(_:))
  {
LABEL_50:
    v163 = 0;
    goto LABEL_86;
  }

  if (v162 == enum case for FMIPItemBatteryStatus.highPower(_:))
  {
    v163 = 2;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.fresh(_:))
  {
    v163 = 1;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.earlyLife(_:))
  {
    v163 = 3;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.lateLife(_:))
  {
    v163 = 4;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    v163 = 5;
  }

  else
  {
    if (v162 != enum case for FMIPItemBatteryStatus.dead(_:))
    {
      (*(v160 + 8))(v303, v161);
      goto LABEL_50;
    }

    v163 = 6;
  }

LABEL_86:
  a8[5] = sub_10034D354(v320, v324);
  a8[6] = v222;
  LODWORD(v311) = *(v319[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  v223 = v313;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v224 = v81;
  v225 = v315;
  v226 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227 = *(v298 + 8);
  v227(v224, v225);
  v227(v223, v225);
  if (v226)
  {

    v228 = [objc_opt_self() mainBundle];
    v332._object = 0x8000000100579A00;
    v229._countAndFlagsBits = 0xD00000000000001CLL;
    v229._object = 0x800000010057DF50;
    a8 = v321;
    v230.value._object = 0x80000001005799E0;
    v332._countAndFlagsBits = 0xD000000000000018;
    v230.value._countAndFlagsBits = 0xD000000000000013;
    v231._countAndFlagsBits = 0;
    v231._object = 0xE000000000000000;
    v232 = NSLocalizedString(_:tableName:bundle:value:comment:)(v229, v230, v228, v231, v332);
    countAndFlagsBits = v232._countAndFlagsBits;
    object = v232._object;
  }

  else
  {
    countAndFlagsBits = v308;
  }

  *(a8 + v322[28]) = qword_10055E098[v163];
  v234 = v314;
  if (v311)
  {

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  *a8 = countAndFlagsBits;
  a8[1] = object;
  v235 = v313;
  FMIPItem.state.getter();
  static FMIPItemState.isLocating.getter();
  v236 = v315;
  v237 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227(v234, v236);
  v227(v235, v236);
  if (v237)
  {
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    v238 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v227(v234, v236);
    v227(v235, v236);
    v239 = v238 ^ 1;
  }

  else
  {
    v239 = 0;
  }

  v240 = v322;
  *(a8 + v322[24]) = v239 & 1;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  v241 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227(v234, v236);
  v227(v235, v236);
  v242 = 0.0;
  if ((v241 & 1) == 0)
  {
    v242 = v158;
  }

  *(a8 + 9) = v242;
  v243 = v240[19];
  v244 = type metadata accessor for UUID();
  v245 = 1;
  v246 = v321 + v243;
  v247 = v321;
  (*(*(v244 - 8) + 56))(v246, 1, 1, v244);
  if (v163 <= 2)
  {
    v248 = v323;
  }

  else
  {
    v248 = v323;
    if (v163 == 5)
    {
      v249 = v320;
      v250 = v304;
LABEL_105:

      goto LABEL_106;
    }
  }

  v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v251 & 1) == 0)
  {
    v249 = v320;
    v250 = v304;
    if (v163 > 4)
    {
      v245 = 1;
    }

    else
    {
      v245 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_105;
  }

  v245 = 1;
  v249 = v320;
  v250 = v304;
LABEL_106:
  v252 = v306;
  v253 = v322;
  *(v247 + v322[30]) = v245 & 1;
  *(v247 + v253[29]) = v163;
  *(v247 + 10) = sub_10034D1C8(v249, v310 & 1);
  v254 = sub_10034C388(v249, v324, v252, v250 & 1, v319);
  v256 = v255;
  v258 = v257;
  v260 = v259;

  if (v256)
  {
    v261 = [objc_opt_self() mainBundle];
    v333._object = 0x800000010057DBA0;
    v262._countAndFlagsBits = 0xD000000000000027;
    v262._object = 0x800000010057DB70;
    v333._countAndFlagsBits = 0xD000000000000039;
    v263._countAndFlagsBits = 0;
    v263._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v262, 0, v261, v263, v333);

    sub_10007EBC0(&unk_1006B20B0);
    v264 = swift_allocObject();
    *(v264 + 16) = xmmword_100552210;
    *(v264 + 56) = &type metadata for String;
    v265 = sub_10008EE84();
    *(v264 + 32) = v254;
    *(v264 + 40) = v256;
    *(v264 + 96) = &type metadata for String;
    *(v264 + 104) = v265;
    *(v264 + 64) = v265;
    *(v264 + 72) = v258;
    *(v264 + 80) = v260;
    v249 = v320;
    v247 = v321;
    v258 = String.init(format:_:)();
    v260 = v266;
  }

  v267 = v294;
  v247[11] = v258;
  v247[12] = v260;
  v268 = v299;
  FMIPItem.location.getter();
  v269 = v318;
  if (v248(v268, 1, v318) == 1)
  {
    sub_100012DF0(v268, &unk_1006C0220);
    v270 = v301;
    v271 = v300;
    v272 = v302;
    (*(v301 + 56))(v300, 1, 1, v302);
    static Date.distantFuture.getter();
    if ((*(v270 + 48))(v271, 1, v272) != 1)
    {
      sub_100012DF0(v271, &unk_1006B0000);
    }
  }

  else
  {
    v273 = FMIPLocation.location.getter();
    (*(v309 + 8))(v268, v269);
    v274 = [v273 timestamp];

    v275 = v293;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v270 = v301;
    v276 = *(v301 + 32);
    v277 = v300;
    v272 = v302;
    v276(v300, v275, v302);
    (*(v270 + 56))(v277, 0, 1, v272);
    v276(v267, v277, v272);
    v247 = v321;
  }

  (*(v270 + 32))(v247 + v322[16], v267, v272);
  v278 = FMIPItem.name.getter();
  v280 = v279;

  sub_100012DF0(v317, &unk_1006C0240);
  v281 = type metadata accessor for FMIPItem();
  result = (*(*(v281 - 8) + 8))(v249, v281);
  v247[13] = v278;
  v247[14] = v280;
  return result;
}

uint64_t sub_100346F5C()
{
  v0 = type metadata accessor for FMIPBeaconShareState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.state.getter();
  v4 = FMIPBeaconShareState.isActive.getter();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100347030()
{
  v0 = FMIPBeaconShare.shareeHandle.getter();
  v2 = v1;
  v3 = [objc_opt_self() SPOwner];
  v4 = [v3 destination];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v0 == v5 && v2 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

BOOL sub_100347118()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  FMIPBeaconShare.delegatedSharesURL.getter();
  v3 = type metadata accessor for URL();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) == 1;
  sub_100012DF0(v2, &unk_1006B0120);
  return v4;
}

uint64_t sub_1003471F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FMIPBeaconShare.delegationStatus.getter())
  {
    FMIPBeaconShare.beaconIdentifier.getter();
    v4 = UUID.uuidString.getter();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    if (v4 == FMIPItem.identifier.getter() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_10034734C()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPBeaconShare();
  v40 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = *(v1 + 1);
  v39 = v4;
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v12 = *(v1 + 4);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();

    v14 = *(v1 + 5);
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    v16 = *(v1 + 6);
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  Hasher._combine(_:)(0);
  v14 = *(v1 + 5);
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v15 = v14;
  NSObject.hash(into:)();

  v16 = *(v1 + 6);
  if (v16)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    v17 = v16;
    NSObject.hash(into:)();

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(0);
LABEL_11:
  v18 = *(v1 + 7);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  Hasher._combine(_:)(*&v18);
  Hasher._combine(_:)(v1[64]);
  Hasher._combine(_:)(v1[65]);
  v19 = *(v1 + 9);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  Hasher._combine(_:)(*&v19);
  v20 = *(v1 + 10);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  String.hash(into:)();
  String.hash(into:)();
  v21 = type metadata accessor for FMItemCellViewModel();
  type metadata accessor for Date();
  sub_10034DE20(&qword_1006B1480, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1[v21[18]]);
  sub_100007204(&v1[v21[19]], v10, &unk_1006B20C0);
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    v22 = v2;
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = v6;
    v22 = v2;
    v24 = v41;
    (*(v23 + 32))(v41, v10, v5);
    Hasher._combine(_:)(1u);
    sub_10034DE20(&unk_1006C2410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v23 + 8))(v24, v5);
  }

  v38 = v21;
  v25 = v21[20];
  v41 = v1;
  v26 = *&v1[v25];
  Hasher._combine(_:)(*(v26 + 16));
  v27 = *(v26 + 16);
  v28 = v39;
  if (v27)
  {
    v29 = v40 + 16;
    v30 = *(v40 + 16);
    v31 = v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v32 = *(v40 + 72);
    v33 = (v40 + 8);
    do
    {
      v34 = v29;
      v30(v28, v31, v22);
      sub_10034DE20(&qword_1006BC5D8, &type metadata accessor for FMIPBeaconShare);
      dispatch thunk of Hashable.hash(into:)();
      (*v33)(v28, v22);
      v29 = v34;
      v31 += v32;
      --v27;
    }

    while (v27);
  }

  v35 = v38;
  v36 = v41;
  Hasher._combine(_:)(v41[v38[21]]);
  Hasher._combine(_:)(v36[v35[22]]);
  Hasher._combine(_:)(v36[v35[23]]);
  Hasher._combine(_:)(v36[v35[24]]);
  Hasher._combine(_:)(v36[v35[25]]);
  if (*&v36[v35[26] + 8])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*&v36[v35[27] + 8])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v37 = *&v36[v35[28]];
  if (v37 == 0.0)
  {
    v37 = 0.0;
  }

  Hasher._combine(_:)(*&v37);
  String.hash(into:)();

  Hasher._combine(_:)(v36[v35[30]]);
}

void *sub_100347A60()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_100347A88()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_100347AB0()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100347AE0()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_100347B28(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 104));

  return v2;
}

uint64_t sub_100347B60(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 108));

  return v2;
}

uint64_t sub_100347BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100347C24()
{
  Hasher.init(_seed:)();
  sub_10034734C();
  return Hasher._finalize()();
}

Swift::Int sub_100347C68()
{
  Hasher.init(_seed:)();
  sub_10034734C();
  return Hasher._finalize()();
}

Swift::Int sub_100347CA4(void **a1)
{
  v2 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F340(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100347D4C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100347D4C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMIPBeaconShare();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMIPBeaconShare() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003480FC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100347E78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100347E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMIPBeaconShare();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003480FC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = type metadata accessor for FMIPBeaconShare();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_10025EFD4(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_100348AE8(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10025EFD4(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_10025EF48(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = static FMIPBeaconShare.directionSort(lhs:rhs:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = static FMIPBeaconShare.directionSort(lhs:rhs:)() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_10008B8B8(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_10008B8B8((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_100348AE8(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10025EFD4(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_10025EF48(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_100348AE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for FMIPBeaconShare();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = static FMIPBeaconShare.directionSort(lhs:rhs:)();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_10025F120(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_100349078(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10002E21C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 16 * v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1003491F8(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = result[2];
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if ((v7 + 16 * v3 + 16 * v4) != &v8[2 * v9 + 4])
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = (v4 + v6);
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_100349078(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_39;
  }

  v18 = v1[1] + 16 * v16 + 16 * v17;
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];
  if (v18 != &v19[2 * v20 + 4])
  {

    goto LABEL_20;
  }

  v22 = v19[3];

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = v5[2];
  if (v25)
  {
    if (v24 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = (v17 + v6);
      if (!__OFADD__(v17, v6))
      {
        sub_1003496F0(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v24)
  {

    return sub_1003497A8(v5, v25);
  }

  else
  {
  }
}

uint64_t sub_100349438(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = v14;
  v32 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  result = sub_10034A534(v7);
  v34 = v9 + 32;
  if (result)
  {
    v19 = result;
    __dst = (v18 + 16 * a3);
    v30 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 16 * v20);
    v22 = &v21[16 * a2];
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[16 * v32];
    if (__dst != v23 || __dst >= &v23[16 * v31])
    {
      memmove(__dst, v23, 16 * v31);
    }

    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    result = (a4)(v34 + 16 * a2, a3);
    v25 = v24 + v32;
    if (__OFADD__(v24, v32))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26 = v4[3] >> 1;
    if (v26 < v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v25))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v27 = *(v9 + 16);
  v11 = __OFADD__(v20, v27);
  v28 = v20 + v27;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v28 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v34 - 16 * v20;
  v4[2] = v20;
  v4[3] = (2 * v28) | 1;
}

void *sub_1003496F0(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1003497A8(void *result, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = result;
  v7 = result[2];
  v35 = v7;
  if (v7 == a2)
  {
LABEL_3:
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = &result[2 * a2];
  v36 = a2 + 1;
  v10 = v8[4];
  v9 = v8[5];

  v30 = v2;
  while (!__OFADD__(v5, 1))
  {
    v37 = sub_100349A84(v5, v5 + 1, *v2, v2[1], v4, v3);
    v11 = sub_100349C44();
    sub_100349438(&v37, v5, 0, v11);

    v4 = v2[2];
    v3 = v2[3];
    v12 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v34 = v2[1];
    v33 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = v13[2];
    if ((v34 + 16 * v4 + 16 * v12) != &v13[2 * v14 + 4])
    {

LABEL_16:
      v15 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v16 = v13[3];

    v17 = (v16 >> 1) - v14;
    v15 = v12 + v17;
    if (__OFADD__(v12, v17))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v15)
    {
      v31 = v3;
      v18 = 0;
      v19 = v6;
      v20 = v4;
      v21 = v36;
      v22 = &v6[2 * v36];
      v32 = v20;
      v23 = v34 + 16 * v5 + 16 * v20;
      while (1)
      {
        v24 = (v23 + v18 * 8);
        *v24 = v10;
        v24[1] = v9;
        ++v5;
        if (v35 == v21)
        {
          v10 = 0;
          v9 = 0;
          v36 = v35;
          goto LABEL_26;
        }

        if ((v36 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v21 >= v19[2])
        {
          goto LABEL_36;
        }

        ++v21;
        v10 = v22[v18 + 4];
        v9 = v22[v18 + 5];

        v18 += 2;
        if (v15 == v5)
        {
          v36 = v21;
          v5 = v15;
LABEL_26:
          v6 = v19;
          v2 = v30;
          v3 = v31;
          v4 = v32;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v25 = v5 - v12;
    if (__OFSUB__(v5, v12))
    {
      goto LABEL_39;
    }

    if (v25)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v26 = result[2];
      v27 = __OFADD__(v26, v25);
      v28 = v26 + v25;
      if (v27)
      {
        goto LABEL_40;
      }

      result[2] = v28;

      v29 = v33 + v25;
      if (__OFADD__(v33, v25))
      {
        goto LABEL_41;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v29);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_100349A84(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10002E21C(v6, v25);
}

void *sub_100349C60(uint64_t a1, uint64_t (*a2)(char *))
{
  v51 = a2;
  v3 = type metadata accessor for FMIPBeaconShare();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v45 = &v38 - v9;
  __chkstk_darwin(v8);
  v44 = &v38 - v10;
  v11 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = 0;
    v41 = *(v4 + 80);
    v14 = (v41 + 32) & ~v41;
    v43 = _swiftEmptyArrayStorage + v14;
    v50 = a1 + v14;
    v48 = 0;
    v49 = v4 + 16;
    v46 = _swiftEmptyArrayStorage;
    v47 = (v4 + 32);
    while (v13 < v11)
    {
      v15 = v14;
      v16 = *(v4 + 72);
      result = (*(v4 + 16))(v7, v50 + v16 * v13, v3);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_39;
      }

      if (v51(v7))
      {
        v18 = *v47;
        (*v47)(v45, v7, v3);
        result = (v18)(v44, v45, v3);
        v19 = v18;
        if (v48)
        {
          v42 = v46;
          v20 = v48 - 1;
          if (__OFSUB__(v48, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v40 = v18;
          v21 = v46[3];
          if (((v21 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          v48 = v22;
          sub_10007EBC0(&unk_1006B40A0);
          v42 = swift_allocObject();
          result = j__malloc_size(v42);
          if (!v16)
          {
            goto LABEL_43;
          }

          v23 = result - v15;
          if ((result - v15) == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_44;
          }

          v25 = v23 / v16;
          v26 = v42;
          v42[2] = v48;
          v26[3] = 2 * (v23 / v16);
          v27 = v26 + v15;
          v28 = v46;
          v29 = v46[3] >> 1;
          v30 = v29 * v16;
          if (v46[2])
          {
            if (v42 < v46 || v27 >= v46 + v15 + v30)
            {
              v48 = v26 + v15;
              v38 = v29;
              v39 = v29 * v16;
              v43 = v23 / v16;
              swift_arrayInitWithTakeFrontToBack();
              v29 = v38;
              v30 = v39;
              v27 = v48;
              v25 = v43;
            }

            else if (v42 != v46)
            {
              v48 = v26 + v15;
              v32 = v29;
              v43 = v23 / v16;
              v39 = v29 * v16;
              swift_arrayInitWithTakeBackToFront();
              v30 = v39;
              v29 = v32;
              v27 = v48;
              v25 = v43;
              v28 = v46;
            }

            v28[2] = 0;
          }

          v43 = &v27[v30];
          v48 = ((v25 & 0x7FFFFFFFFFFFFFFFLL) - v29);

          v19 = v40;
          v20 = v48 - 1;
          if (__OFSUB__(v48, 1))
          {
            goto LABEL_40;
          }
        }

        v48 = v20;
        v33 = v43;
        v19(v43, v44, v3);
        v43 = v33 + v16;
        v13 = v17;
        result = v42;
        v46 = v42;
        v14 = v15;
        if (v17 == v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = (*(v4 + 8))(v7, v3);
        ++v13;
        v14 = v15;
        if (v17 == v11)
        {
          result = v46;
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v48 = 0;
LABEL_34:
  v34 = result[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v36 = __OFSUB__(v35, v48);
    v37 = v35 - v48;
    if (!v36)
    {
      result[2] = v37;
      return result;
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t sub_10034A06C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BC490);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v42 - v6;
  v7 = type metadata accessor for FMDeviceCellViewModel();
  result = __chkstk_darwin(v7);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = 0;
  v53 = 0;
  v10 = 0;
  v44 = *(v11 + 80);
  v12 = _swiftEmptyArrayStorage;
  v46 = v11;
  v47 = (v44 + 32) & ~v44;
  v51 = _swiftEmptyArrayStorage + v47;
  v13 = (v11 + 56);
  v45 = v11 + 48;
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 != v16)
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_36;
        }

        if (v10 >= v18)
        {
          goto LABEL_42;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v13)(v5, 1, 1, v7);
        result = sub_100012DF0(v5, &qword_1006BC490);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_43;
        }

        v48 = v12;
        v19 = v46;
        v20 = *(v46 + 72);
        v53 = v15;
        sub_100316EAC(v17 + v47 + v20 * v15, v5);
        (*(v19 + 56))(v5, 0, 1, v7);
        v21 = v49;
        sub_10034D158(v5, v49);
        if ((*(v19 + 48))(v21, 1, v7) == 1)
        {
          v12 = v48;
          goto LABEL_37;
        }

        result = sub_10032AA04(v21, v50);
        v22 = v48;
        v23 = v52;
        if (!v52)
        {
          break;
        }

LABEL_34:
        v36 = __OFSUB__(v23, 1);
        v37 = v23 - 1;
        if (v36)
        {
          goto LABEL_44;
        }

        v52 = v37;
        ++v53;
        v38 = v51;
        result = sub_10032AA04(v50, v51);
        v51 = (v38 + v20);
        v12 = v22;
        v14 = *(v17 + 16);
        v15 = v53;
        if (v53 == v14)
        {
          (*v13)(v5, 1, 1, v7);
          result = sub_100012DF0(v5, &qword_1006BC490);
          goto LABEL_4;
        }
      }

      v24 = v48[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_10007EBC0(&unk_1006AF890);
      v27 = v47;
      v52 = v26;
      v22 = swift_allocObject();
      result = j__malloc_size(v22);
      if (!v20)
      {
        goto LABEL_47;
      }

      v28 = result - v27;
      if (result - v27 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_48;
      }

      v30 = v27;
      v31 = v28 / v20;
      v22[2] = v52;
      v22[3] = 2 * (v28 / v20);
      v32 = v22 + v27;
      v33 = v48;
      v34 = v48[3] >> 1;
      v35 = v34 * v20;
      if (!v48[2])
      {
LABEL_33:
        v51 = &v32[v35];
        v52 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v23 = v52;
        goto LABEL_34;
      }

      if (v22 < v48 || v32 >= v48 + v30 + v35)
      {
        v51 = (v48[3] >> 1);
        v52 = v32;
        v42 = v34 * v20;
        v43 = v28 / v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v22 == v48)
        {
LABEL_32:
          v33[2] = 0;
          goto LABEL_33;
        }

        v51 = (v48[3] >> 1);
        v52 = v32;
        v42 = v34 * v20;
        v43 = v28 / v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v35 = v42;
      v31 = v43;
      v34 = v51;
      v32 = v52;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v21 = v49;
  (*v13)(v49, 1, 1, v7);
LABEL_37:

  result = sub_100012DF0(v21, &qword_1006BC490);
  v39 = v12[3];
  if (v39 < 2)
  {
    return v12;
  }

  v40 = v39 >> 1;
  v36 = __OFSUB__(v40, v52);
  v41 = v40 - v52;
  if (!v36)
  {
    v12[2] = v41;
    return v12;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void *sub_10034A534(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = result[2];
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1003CD588(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_10034A694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v15)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_55;
    }

    v55 = v5;
    sub_10000905C(0, &qword_1006BC2B0);
    v18 = v17;
    v19 = v16;
    v20 = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v55 = v5;
    if (v17)
    {
      goto LABEL_55;
    }
  }

  v21 = *(a1 + 40);
  v22 = *(a2 + 40);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_55;
    }

    sub_10000905C(0, &qword_1006BC2B0);
    v23 = v22;
    v24 = v21;
    v25 = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v22)
  {
    goto LABEL_55;
  }

  v26 = *(a1 + 48);
  v27 = *(a2 + 48);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_55;
    }

    sub_10000905C(0, &qword_1006C0000);
    v28 = v27;
    v29 = v26;
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v27)
  {
    goto LABEL_55;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v31 = type metadata accessor for FMItemCellViewModel();
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v32 = v31[17];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if ((v33 != *v35 || v34 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (*(a1 + v31[18]) != *(a2 + v31[18]))
  {
    goto LABEL_55;
  }

  v36 = v31[19];
  v37 = *(v11 + 48);
  sub_100007204(a1 + v36, v13, &unk_1006B20C0);
  sub_100007204(a2 + v36, &v13[v37], &unk_1006B20C0);
  v38 = *(v55 + 48);
  if (v38(v13, 1, v4) != 1)
  {
    sub_100007204(v13, v10, &unk_1006B20C0);
    v54 = v37;
    if (v38(&v13[v37], 1, v4) != 1)
    {
      v39 = v55;
      (*(v55 + 32))(v7, &v13[v54], v4);
      sub_10034DE20(&qword_1006B22F0, &type metadata accessor for UUID);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v7, v4);
      v41(v10, v4);
      sub_100012DF0(v13, &unk_1006B20C0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    (*(v55 + 8))(v10, v4);
LABEL_47:
    sub_100012DF0(v13, &qword_1006B22E8);
    goto LABEL_55;
  }

  if (v38(&v13[v37], 1, v4) != 1)
  {
    goto LABEL_47;
  }

  sub_100012DF0(v13, &unk_1006B20C0);
LABEL_49:
  if ((sub_100244D08(*(a1 + v31[20]), *(a2 + v31[20])) & 1) == 0 || *(a1 + v31[21]) != *(a2 + v31[21]) || *(a1 + v31[22]) != *(a2 + v31[22]) || *(a1 + v31[23]) != *(a2 + v31[23]) || *(a1 + v31[24]) != *(a2 + v31[24]) || *(a1 + v31[25]) != *(a2 + v31[25]))
  {
    goto LABEL_55;
  }

  v44 = v31[26];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v48)
  {
    goto LABEL_55;
  }

  v49 = v31[27];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v53)
  {
    goto LABEL_55;
  }

  if (*(a1 + v31[28]) == *(a2 + v31[28]) && (sub_1002526D0(*(a1 + v31[29]), *(a2 + v31[29])) & 1) != 0)
  {
    v42 = *(a1 + v31[30]) ^ *(a2 + v31[30]) ^ 1;
    return v42 & 1;
  }

LABEL_55:
  v42 = 0;
  return v42 & 1;
}

uint64_t type metadata accessor for FMItemCellViewModel()
{
  result = qword_1006BC4F0;
  if (!qword_1006BC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034ADE8(uint64_t a1, uint64_t a2, NSString *a3)
{
  v130 = sub_10007EBC0(&qword_1006B1AC0);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v122 - v5;
  v139 = sub_10007EBC0(&qword_1006B1AC8);
  v125 = *(v139 - 8);
  __chkstk_darwin(v139);
  v123 = &v122 - v6;
  v128 = sub_10007EBC0(&qword_1006B1AD0);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v124 = &v122 - v7;
  v138 = sub_10007EBC0(&qword_1006BC458);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v134 = &v122 - v8;
  v140 = sub_10007EBC0(&qword_1006BC460);
  v132 = *(v140 - 8);
  __chkstk_darwin(v140);
  v131 = &v122 - v9;
  v137 = sub_10007EBC0(&qword_1006BC468);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v122 - v10;
  v11 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v11 - 8);
  v142 = &v122 - v12;
  v149 = type metadata accessor for PersonNameComponents();
  v146 = *(v149 - 8);
  __chkstk_darwin(v149);
  *&v153 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPBeaconShare();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v141 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v122 - v18;
  *&v154 = a2;
  *(&v154 + 1) = sub_100346F5C;
  *&v155 = 0;
  v143 = a2;

  sub_10007EBC0(&qword_1006BC470);
  LazyFilterSequence.filter(_:)();
  v156 = v158;
  v157 = v159;
  LazyFilterSequence.filter(_:)();
  *&v158 = sub_100349C60(v154, *(&v154 + 1));
  sub_100347CA4(&v158);

  v20 = *(v158 + 16);
  *&v152 = v14;
  v144 = v15;
  if (!v20)
  {

    v25 = _swiftEmptyArrayStorage;
    v32 = _swiftEmptyArrayStorage[2];
    if (v32)
    {
      goto LABEL_9;
    }

LABEL_43:

    v35 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  v148 = a3;
  v22 = *(v15 + 16);
  v21 = v15 + 16;
  v151 = v22;
  v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
  v147 = v158;
  v24 = v158 + v23;
  object = *(v21 + 56);
  v25 = _swiftEmptyArrayStorage;
  do
  {
    v151(v19, v24, v14);
    v26 = FMIPBeaconShare.otherPartyHandle.getter();
    v28 = v27;
    (*(v21 - 8))(v19, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_10008B9E4(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    if (v30 >= v29 >> 1)
    {
      v25 = sub_10008B9E4((v29 > 1), v30 + 1, 1, v25);
    }

    *(v25 + 2) = v30 + 1;
    v31 = &v25[16 * v30];
    *(v31 + 4) = v26;
    *(v31 + 5) = v28;
    v24 += object;
    --v20;
    v14 = v152;
  }

  while (v20);

  v32 = *(v25 + 2);
  if (!v32)
  {
    goto LABEL_43;
  }

LABEL_9:
  *&v154 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v33 = v25 + 40;
  do
  {

    dispatch thunk of FMFManager.contactsController.getter();
    v34 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

    if (!v34)
    {
      sub_1000EC68C();
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v33 += 16;
    --v32;
  }

  while (v32);

  v35 = v154;
  if (!(v154 >> 62))
  {
LABEL_14:
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_15;
    }

LABEL_45:
    v38 = _swiftEmptyArrayStorage;
LABEL_46:

    v59 = *(v143 + 16);
    v60 = v152;
    v61 = v141;
    if (v59)
    {
      v62 = *(v144 + 16);
      v63 = (v144 + 8);
      v64 = v143 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      v65 = *(v144 + 72);
      while (1)
      {
        v62(v61, v64, v60);
        if (FMIPBeaconShare.isSharedLostItem.getter())
        {
          break;
        }

        (*v63)(v61, v60);
        v64 += v65;
        if (!--v59)
        {
          goto LABEL_50;
        }
      }

      v107 = v144;
      v108 = v142;
      (*(v144 + 32))(v142, v61, v60);
      (*(v107 + 56))(v108, 0, 1, v60);
      sub_100012DF0(v108, &unk_1006C0240);
      if (!*(v38 + 2))
      {
        goto LABEL_60;
      }

      v110 = *(v38 + 4);
      v109 = *(v38 + 5);

      v111 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v111 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (!v111)
      {
LABEL_60:

        v118 = [objc_opt_self() mainBundle];
        v164._object = 0x800000010057D3F0;
        v119._countAndFlagsBits = 0xD000000000000026;
        v119._object = 0x8000000100592380;
        v120.value._object = 0x800000010057D3D0;
        v164._countAndFlagsBits = 0xD000000000000018;
        v120.value._countAndFlagsBits = 0xD000000000000013;
        v121._countAndFlagsBits = 0;
        v121._object = 0xE000000000000000;
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v164)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v112 = [objc_opt_self() mainBundle];
      v163._object = 0x800000010057D3F0;
      v113._countAndFlagsBits = 0xD00000000000001ELL;
      v113._object = 0x8000000100592360;
      v114.value._object = 0x800000010057D3D0;
      v163._countAndFlagsBits = 0xD000000000000018;
      v114.value._countAndFlagsBits = 0xD000000000000013;
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v113, v114, v112, v115, v163);

      sub_10007EBC0(&unk_1006B20B0);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_100552220;
      *(v116 + 56) = &type metadata for String;
      *(v116 + 64) = sub_10008EE84();
      *(v116 + 32) = v110;
      *(v116 + 40) = v109;
      countAndFlagsBits = String.init(format:_:)();
    }

    else
    {
LABEL_50:
      v66 = v142;
      (*(v144 + 56))(v142, 1, 1, v60);
      sub_100012DF0(v66, &unk_1006C0240);
      v67 = *(v38 + 2);
      if (v67 < 2)
      {
        *&v158 = v38;
        v94 = v125;
        v95 = v123;
        (*(v125 + 104))(v123, enum case for ListFormatStyle.ListType.and<A, B>(_:), v139);
        v96 = v129;
        v97 = v126;
        v98 = v130;
        (*(v129 + 104))(v126, enum case for ListFormatStyle.Width.standard<A, B>(_:), v130);
        sub_10007EBC0(&qword_1006C0C10);
        sub_100004098(&qword_1006B1AE0, &qword_1006C0C10);
        v99 = v124;
        static FormatStyle.list<A>(type:width:)();
        (*(v96 + 8))(v97, v98);
        (*(v94 + 8))(v95, v139);
        sub_100004098(&qword_1006B1AE8, &qword_1006B1AD0);
        v100 = v128;
        Sequence.formatted<A>(_:)();
        (*(v127 + 8))(v99, v100);

        v101 = v154;
        v102 = [objc_opt_self() mainBundle];
        v162._object = 0x800000010057D3F0;
        v103._countAndFlagsBits = 0xD000000000000019;
        v103._object = 0x80000001005923B0;
        v104.value._object = 0x800000010057D3D0;
        v162._countAndFlagsBits = 0xD000000000000018;
        v104.value._countAndFlagsBits = 0xD000000000000013;
        v105._countAndFlagsBits = 0;
        v105._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v103, v104, v102, v105, v162);

        sub_10007EBC0(&unk_1006B20B0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_100552220;
        *(v106 + 56) = &type metadata for String;
        *(v106 + 64) = sub_10008EE84();
        *(v106 + 32) = v101;
        countAndFlagsBits = String.init(format:_:)();
      }

      else
      {
        *&v153 = v38 + 32;
        v68 = v67 - 1;
        v69 = objc_opt_self();
        v70 = [v69 mainBundle];
        v160._object = 0x800000010057D3F0;
        v71._countAndFlagsBits = 0xD000000000000024;
        v71._object = 0x80000001005923D0;
        v72.value._object = 0x800000010057D3D0;
        v160._countAndFlagsBits = 0xD000000000000018;
        v72.value._countAndFlagsBits = 0xD000000000000013;
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v71, v72, v70, v73, v160);

        sub_10007EBC0(&unk_1006B20B0);
        v74 = swift_allocObject();
        v152 = xmmword_100552220;
        *(v74 + 16) = xmmword_100552220;
        *(v74 + 56) = &type metadata for Int;
        *(v74 + 64) = &protocol witness table for Int;
        *(v74 + 32) = v68;
        v75 = String.init(format:_:)();
        v77 = v76;

        sub_10007EBC0(&unk_1006AF770);
        inited = swift_initStackObject();
        *(inited + 16) = v152;
        *(inited + 32) = v75;
        *(inited + 40) = v77;
        *&v154 = v38;
        *(&v154 + 1) = v153;
        v155 = xmmword_10055DF60;

        sub_1003491F8(inited);
        v79 = v155;
        v153 = v154;
        v80 = [v69 mainBundle];
        v161._object = 0x800000010057D3F0;
        v81._countAndFlagsBits = 0xD000000000000019;
        v81._object = 0x80000001005923B0;
        v82.value._object = 0x800000010057D3D0;
        v161._countAndFlagsBits = 0xD000000000000018;
        v82.value._countAndFlagsBits = 0xD000000000000013;
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v81, v82, v80, v83, v161);
        v151 = v84._countAndFlagsBits;
        object = v84._object;

        v85 = swift_allocObject();
        *(v85 + 16) = v152;
        v154 = v153;
        v155 = v79;
        v86 = v132;
        v87 = v131;
        (*(v132 + 104))(v131, enum case for ListFormatStyle.ListType.and<A, B>(_:), v140);
        v88 = v136;
        v89 = v134;
        v90 = v138;
        (*(v136 + 104))(v134, enum case for ListFormatStyle.Width.standard<A, B>(_:), v138);
        *&v152 = sub_10007EBC0(&qword_1006BC478);
        sub_100004098(&qword_1006BC480, &qword_1006BC478);
        v91 = v133;
        static FormatStyle.list<A>(type:width:)();
        (*(v88 + 8))(v89, v90);
        (*(v86 + 8))(v87, v140);
        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_10008EE84();
        sub_100004098(&qword_1006BC488, &qword_1006BC468);
        v92 = v137;
        Sequence.formatted<A>(_:)();
        (*(v135 + 8))(v91, v92);
        countAndFlagsBits = String.init(format:_:)();

        swift_unknownObjectRelease();
      }
    }

    return countAndFlagsBits;
  }

LABEL_44:
  v36 = _CocoaArrayWrapper.endIndex.getter();
  if (!v36)
  {
    goto LABEL_45;
  }

LABEL_15:
  v37 = 0;
  v151 = (v35 & 0xC000000000000001);
  object = v35 & 0xFFFFFFFFFFFFFF8;
  v148 = CNContactNicknameKey;
  v147 = CNContactGivenNameKey;
  ++v146;
  v38 = _swiftEmptyArrayStorage;
  v145 = CNContactFamilyNameKey;
  while (1)
  {
    if (v151)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *(object + 16))
      {
        goto LABEL_62;
      }

      v39 = *(v35 + 8 * v37 + 32);
    }

    v40 = v39;
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    PersonNameComponents.init()();
    if ([v40 isKeyAvailable:v148])
    {
      v42 = [v40 nickname];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.nickname.setter();
    }

    if ([v40 isKeyAvailable:v147])
    {
      v43 = [v40 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.setter();
    }

    if ([v40 isKeyAvailable:v145])
    {
      v44 = [v40 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.familyName.setter();
    }

    v45 = objc_opt_self();
    v46 = v153;
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v48 = [v45 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    (*v146)(v46, v149);
    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
    }

    else
    {

      if (qword_1006AEA90 != -1)
      {
        swift_once();
      }

      v53 = [qword_1006D3D28 stringFromContact:v40];
      if (v53)
      {
        v54 = v53;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v55;
      }

      else
      {

        v49 = 0;
        v51 = 0xE000000000000000;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_10008B9E4(0, *(v38 + 2) + 1, 1, v38);
    }

    v57 = *(v38 + 2);
    v56 = *(v38 + 3);
    if (v57 >= v56 >> 1)
    {
      v38 = sub_10008B9E4((v56 > 1), v57 + 1, 1, v38);
    }

    *(v38 + 2) = v57 + 1;
    v58 = &v38[16 * v57];
    *(v58 + 4) = v49;
    *(v58 + 5) = v51;
    ++v37;
    if (v41 == v36)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10034C388(uint64_t a1, uint64_t a2, int a3, int a4, NSString *a5)
{
  v129 = a2;
  v130 = a5;
  LODWORD(v134) = a4;
  v139 = a3;
  v6 = type metadata accessor for FMIPItemState();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = __chkstk_darwin(v6);
  v136 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v135 = &v115[-v9];
  v10 = type metadata accessor for FMIPLocationType();
  v123 = *(v10 - 8);
  v124 = v10;
  __chkstk_darwin(v10);
  v122 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FMIPItem();
  v126 = *(v12 - 8);
  v127 = v12;
  __chkstk_darwin(v12);
  v125 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMIPLocation();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v128 = &v115[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v115[-v18];
  v20 = sub_10007EBC0(&unk_1006C0220);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v115[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v115[-v24];
  FMIPItem.location.getter();
  v131 = v15;
  v26 = *(v15 + 48);
  v27 = v26(v25, 1, v14);
  v28 = v25;
  v29 = a1;
  sub_100012DF0(v28, &unk_1006C0220);
  v30 = [objc_opt_self() mainBundle];
  v31 = "ITEMS_LIST_SEPARATOR";
  if (v27 == 1)
  {
    v31 = "sUpdateViewController.swift";
    v32 = 0xD000000000000011;
  }

  else
  {
    v32 = 0xD000000000000019;
  }

  v132 = 0x8000000100579A00;
  v142._object = 0x8000000100579A00;
  v33 = v31 | 0x8000000000000000;
  v133 = "CLEAR_TAGS_MESSAGE";
  v34.value._object = 0x80000001005799E0;
  v142._countAndFlagsBits = 0xD000000000000018;
  v34.value._countAndFlagsBits = 0xD000000000000013;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, v34, v30, v35, v142);

  v141 = v36;
  FMIPItem.location.getter();
  if (v26(v23, 1, v14) != 1)
  {
    v37 = v131;
    (*(v131 + 32))(v19, v23, v14);
    v38 = sub_1004FB6E0(a1, 1);
    if (!v39)
    {
      (*(v37 + 8))(v19, v14);
      goto LABEL_14;
    }

    v119._countAndFlagsBits = v38;
    v119._object = v39;

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = v125;
    v42 = v126;
    v43 = v127;
    (*(v126 + 16))(v125, v29, v127);
    v44 = v128;
    (*(v37 + 16))(v128, v19, v14);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v121 = v14;
    v120 = v19;
    if (v47)
    {
      v48 = v43;
      v49 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v140._countAndFlagsBits = v117;
      *v49 = 136315394;
      v116 = v46;
      v50 = FMIPItem.identifier.getter();
      v118 = v29;
      v52 = v51;
      (*(v42 + 8))(v41, v48);
      v53 = sub_100005B4C(v50, v52, &v140._countAndFlagsBits);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = FMIPLocation.location.getter();
      v55 = [v54 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v128 = *(v131 + 8);
      (v128)(v44, v14);

      v59 = v56;
      v29 = v118;
      v60 = sub_100005B4C(v59, v58, &v140._countAndFlagsBits);

      *(v49 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v45, v116, "FMItemCellViewModel: beacon %s, location %s", v49, 0x16u);
      swift_arrayDestroy();

      if ((v134 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v128 = *(v131 + 8);
      (v128)(v44, v14);
      (*(v42 + 8))(v41, v43);
      if ((v134 & 1) == 0)
      {
LABEL_11:
        v61 = v120;
        if (FMIPLocation.isOld.getter())
        {
          (v128)(v61, v121);
          v134 = 0;
          v141 = v119;
        }

        else
        {
          v95 = v61;
          v134 = sub_1004FA9E0(v29, 0);
          v97 = v96;
          v99 = v98;
          v100 = [objc_opt_self() mainBundle];
          v146._object = v132;
          v101._countAndFlagsBits = 0xD000000000000014;
          v101._object = 0x8000000100592320;
          v102.value._object = (v133 | 0x8000000000000000);
          v146._countAndFlagsBits = 0xD000000000000018;
          v102.value._countAndFlagsBits = 0xD000000000000013;
          v103._countAndFlagsBits = 0;
          v103._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, v146);

          sub_10007EBC0(&unk_1006B20B0);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_100552210;
          *(v104 + 56) = &type metadata for String;
          v105 = sub_10008EE84();
          *(v104 + 32) = v97;
          *(v104 + 40) = v99;
          *(v104 + 96) = &type metadata for String;
          *(v104 + 104) = v105;
          countAndFlagsBits = v119._countAndFlagsBits;
          *(v104 + 64) = v105;
          *(v104 + 72) = __PAIR128__(v119._object, countAndFlagsBits);
          v107 = String.init(format:_:)();
          object = v108;

          if (FMIPShowLocationSource.getter())
          {
            v140._countAndFlagsBits = 0;
            v140._object = 0xE000000000000000;
            v110 = v122;
            FMIPLocation.locationType.getter();
            v111 = v124;
            _print_unlocked<A, B>(_:_:)();
            (*(v123 + 8))(v110, v111);
            v112._countAndFlagsBits = 539831584;
            v112._object = 0xE400000000000000;
            String.append(_:)(v112);

            v113._countAndFlagsBits = v107;
            v113._object = object;
            String.append(_:)(v113);

            v114 = v140._countAndFlagsBits;
            object = v140._object;
            (v128)(v95, v121);
            v141._countAndFlagsBits = v114;
          }

          else
          {
            (v128)(v95, v121);
            v141._countAndFlagsBits = v107;
          }

          v141._object = object;
        }

        goto LABEL_19;
      }
    }

    v80 = objc_opt_self();
    v81 = [v80 mainBundle];
    v144._object = v132;
    v82._countAndFlagsBits = 0xD000000000000014;
    v82._object = 0x8000000100592320;
    v83.value._object = (v133 | 0x8000000000000000);
    v144._countAndFlagsBits = 0xD000000000000018;
    v83.value._countAndFlagsBits = 0xD000000000000013;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v144);

    sub_10007EBC0(&unk_1006B20B0);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_100552210;
    v86 = [v80 mainBundle];
    v145._object = 0x8000000100589D20;
    v87._countAndFlagsBits = 0xD000000000000019;
    v87._object = 0x8000000100589D00;
    v145._countAndFlagsBits = 0xD00000000000002BLL;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v145);

    *(v85 + 56) = &type metadata for String;
    v90 = sub_10008EE84();
    *(v85 + 32) = v89;
    *(v85 + 96) = &type metadata for String;
    *(v85 + 104) = v90;
    v91 = v119._countAndFlagsBits;
    *(v85 + 64) = v90;
    *(v85 + 72) = __PAIR128__(v119._object, v91);
    v92 = String.init(format:_:)();
    v94 = v93;

    (v128)(v120, v121);
    v134 = 0;
    v141._countAndFlagsBits = v92;
    v141._object = v94;
    goto LABEL_19;
  }

  sub_100012DF0(v23, &unk_1006C0220);
LABEL_14:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100005B14(v62, qword_1006D4630);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "FMItemCellViewModel: Location is nil and not locating...", v65, 2u);
  }

  v134 = 0;
LABEL_19:
  v66 = v135;
  FMIPItem.state.getter();
  v67 = v136;
  static FMIPItemState.isFirmwareUpdating.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v68 = v138;
  v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v70 = *(v137 + 8);
  v70(v67, v68);
  v70(v66, v68);
  if (v69)
  {
    v71 = "SPONDING_SUBTITLE_LIST";
    v72 = 0xD000000000000027;
  }

  else
  {
    if ((FMIPItem.isFirmwareUpdateMandatory.getter() & 1) == 0)
    {
      goto LABEL_24;
    }

    v71 = "ITEMS_NO_LOCATION";
    v72 = 0xD000000000000026;
  }

  v73 = [objc_opt_self() mainBundle];
  v143._object = v132;
  v74._object = (v71 | 0x8000000000000000);
  v75.value._object = (v133 | 0x8000000000000000);
  v143._countAndFlagsBits = 0xD000000000000018;
  v74._countAndFlagsBits = v72;
  v75.value._countAndFlagsBits = 0xD000000000000013;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v143);

  v141 = v77;
LABEL_24:
  if (v139 != 1)
  {
    v78._countAndFlagsBits = sub_10034ADE8(v29, v129, v130);
    v140._countAndFlagsBits = 10;
    v140._object = 0xE100000000000000;
    String.append(_:)(v78);

    String.append(_:)(v140);
  }

  return v134;
}

uint64_t sub_10034D158(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BC490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10034D1C8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for FMIPItemState();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v11(v9, v3);
  v12 = 1000.0;
  v13 = 0.0;
  if (a2)
  {
    v12 = 0.0;
  }

  if ((v10 & 1) == 0)
  {
    v13 = 100.0;
  }

  return v12 + v13;
}

id sub_10034D354(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for FMIPItemState();
  v51 = *(v56 - 8);
  v4 = __chkstk_darwin(v56);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v50 - v6;
  v8 = type metadata accessor for FMIPBeaconShare();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C0240);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v57 = [objc_opt_self() configurationWithPointSize:9.0];
  v18 = *(a2 + 16);
  v53 = v15;
  v54 = v9;
  v52 = a2;
  if (v18)
  {
    v50 = a1;
    v20 = v9 + 16;
    v19 = *(v9 + 16);
    v21 = (v9 + 8);
    v22 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v20 + 56);
    while (1)
    {
      v19(v11, v22, v8);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        break;
      }

      (*v21)(v11, v8);
      v22 += v23;
      if (!--v18)
      {
        v24 = 0;
        v25 = 1;
        a1 = v50;
        v9 = v54;
        goto LABEL_8;
      }
    }

    v9 = v54;
    (*(v54 + 32))(v17, v11, v8);
    v25 = 0;
    v24 = 1;
    a1 = v50;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

LABEL_8:
  (*(v9 + 56))(v17, v25, 1, v8);
  sub_100012DF0(v17, &unk_1006C0240);
  FMIPItem.state.getter();
  v26 = v55;
  static FMIPItemState.markLostActive.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v27 = v56;
  v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = v51[1];
  v29(v26, v27);
  v29(v7, v27);
  if (v24 & 1) != 0 || (v28)
  {
    v31 = v57;
    v32 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

    v51 = [objc_opt_self() systemOrangeColor];
  }

  else
  {
    v51 = 0;
    v30 = 0;
  }

  FMIPItem.state.getter();
  v33 = v55;
  static FMIPItemState.isFirmwareUpdating.getter();
  v34 = v56;
  v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29(v33, v34);
  v29(v7, v34);
  if (v35)
  {
    v36 = v57;
    v37 = String._bridgeToObjectiveC()();
    v38 = a1;
    v39 = [objc_opt_self() systemImageNamed:v37 withConfiguration:v36];

    v40 = [objc_opt_self() systemBlueColor];
    v30 = v39;
    a1 = v38;
    v41 = v52;
    v42 = v53;
  }

  else
  {
    v41 = v52;
    v42 = v53;
    v40 = v51;
  }

  My = type metadata accessor for Feature.FindMy();
  v58[3] = My;
  v58[4] = sub_10034DE20(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v44 = sub_100008FC0(v58);
  (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v45 = sub_100006060(v58);
  if (My)
  {
    __chkstk_darwin(v45);
    *(&v50 - 2) = a1;
    sub_100110880(sub_10034DA80, v41, v42);
    if ((*(v54 + 48))(v42, 1, v8) == 1)
    {
    }

    else
    {
      v46 = v57;
      v47 = String._bridgeToObjectiveC()();
      v48 = [objc_opt_self() systemImageNamed:v47 withConfiguration:v46];

      [objc_opt_self() systemOrangeColor];
      v30 = v48;
    }

    sub_100012DF0(v42, &unk_1006C0240);
  }

  else
  {
  }

  return v30;
}

void sub_10034DAC8()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0);
    if (v1 <= 0x3F)
    {
      sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v3 <= 0x3F)
        {
          sub_10034DCC4(319, &qword_1006B7DC8, &type metadata accessor for UUID, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10034DCC4(319, &unk_1006BC500, &type metadata accessor for FMIPBeaconShare, &type metadata accessor for Array);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10034DCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10034DD70(uint64_t a1)
{
  result = sub_10034DE20(&qword_1006BC5C8, type metadata accessor for FMItemCellViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10034DDC8(uint64_t a1)
{
  result = sub_10034DE20(&qword_1006BC5D0, type metadata accessor for FMItemCellViewModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10034DE20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10034E054()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  [v2 setBackgroundColor:v5];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setNumberOfLines:0];
  v6 = [v3 secondaryLabelColor];
  [v1 setTextColor:v6];

  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v1 setFont:v7];
}

void sub_10034E1DC()
{
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552EF0;
  v11 = [v4 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v4 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v4 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552F00;
  v22 = [v5 leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v21 + 32) = v24;
  v25 = [v5 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 40) = v27;
  v28 = [v5 heightAnchor];
  v29 = [v28 constraintEqualToConstant:1.0];

  *(v21 + 48) = v29;
  v30 = [v5 topAnchor];
  v31 = [v4 lastBaselineAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:6.0];

  *(v21 + 56) = v32;
  v33 = [v5 bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v21 + 64) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:v36];
}

id sub_10034E6F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034E798(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((swift_isaMask & *v2) + 0x198));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4);
}

uint64_t sub_10034E7D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x1A0);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_10034E894(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x1A0);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_10034E95C()
{
  v1 = *((swift_isaMask & *v0) + 0x188);
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for FMActionableListTableViewCell();
  v9.receiver = v0;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v6 = (v0 + *((swift_isaMask & *v0) + 0x198));
  v7 = *v6;
  *v6 = 0;
  v6[1] = 0;
  sub_10001835C(v7);
  (*(*(v1 - 8) + 56))(v4, 1, 1, v1);
  return sub_10034E894(v4);
}

void sub_10034EA98(void *a1)
{
  v1 = a1;
  sub_10034E95C();
}

id sub_10034EAE0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x188);
  v7 = type metadata accessor for Optional();
  __chkstk_darwin(v7 - 8);
  v63 = &v55 - v8;
  v9 = sub_10007EBC0(&qword_1006B9340);
  v10 = __chkstk_darwin(v9 - 8);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v55 - v12;
  v14 = sub_10007EBC0(&qword_1006B6D60);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v62 = &v55 - v19;
  v20 = __chkstk_darwin(v18);
  v60 = &v55 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v55 - v23;
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  v27 = *((v5 & v4) + 0x190);
  v58 = v27[29];
  v59 = v27 + 29;
  v61 = v58(v6, v27);
  v28 = *(v2 + *((swift_isaMask & *v2) + 0x1A8));
  UIButton.configuration.getter();
  v29 = type metadata accessor for UIButton.Configuration();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v65 = v30 + 48;
  v66 = v31;
  v32 = v31(v26, 1, v29);
  v64 = v28;
  if (v32)
  {
    sub_10028247C(v26, v17);
    UIButton.configuration.setter();
    sub_100012DF0(v26, &qword_1006B6D60);
  }

  else
  {
    v33 = v27[20];
    v57 = a1;
    v33(v6, v27);
    v35 = v34;
    v55 = swift_allocObject();
    *(v55 + 16) = v2;
    v36 = v2;
    if (v35)
    {
      sub_10034F23C();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = type metadata accessor for AttributedString();
    (*(*(v38 - 8) + 56))(v13, v37, 1, v38);

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
    a1 = v57;
  }

  v39 = v60;
  UIButton.configuration.getter();
  if (v66(v24, 1, v29))
  {
    sub_10028247C(v24, v17);
    UIButton.configuration.setter();
    sub_100012DF0(v24, &qword_1006B6D60);
  }

  else
  {
    v58(v6, v27);
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v40 = *(v2 + *((swift_isaMask & *v2) + 0x1B0));
  UIButton.configuration.getter();
  if (v66(v39, 1, v29))
  {
    sub_10028247C(v39, v17);
    UIButton.configuration.setter();
    sub_100012DF0(v39, &qword_1006B6D60);
  }

  else
  {
    v41 = v27[21];
    v57 = a1;
    v41(v6, v27);
    v43 = v42;
    *(swift_allocObject() + 16) = v2;
    v44 = v2;
    if (v43)
    {
      v45 = v56;
      sub_10034F23C();

      v46 = 0;
    }

    else
    {
      v46 = 1;
      v45 = v56;
    }

    v47 = type metadata accessor for AttributedString();
    (*(*(v47 - 8) + 56))(v45, v46, 1, v47);

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
    a1 = v57;
  }

  v48 = v62;
  UIButton.configuration.getter();
  if (v66(v48, 1, v29))
  {
    sub_10028247C(v48, v17);
    UIButton.configuration.setter();
    sub_100012DF0(v48, &qword_1006B6D60);
  }

  else
  {
    v58(v6, v27);
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v49 = v61 == 0;
  v50 = v27[27];
  v51 = v50(v6, v27);
  [v64 setEnabled:v49 & ~v51];
  [v40 setEnabled:{v49 & ~v50(v6, v27)}];
  v52 = *(v6 - 8);
  v53 = v63;
  (*(v52 + 16))(v63, a1, v6);
  (*(v52 + 56))(v53, 0, 1, v6);
  sub_10034E894(v53);
  return sub_100047218(a1);
}

uint64_t sub_10034F23C()
{
  v0 = type metadata accessor for AttributeContainer();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  AttributeContainer.init()();
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v7 setAlignment:1];
  LODWORD(v8) = 1.0;
  [v7 setHyphenationFactor:v8];
  [v7 setLineBreakMode:0];
  v11[1] = v7;
  sub_100350E28();
  v9 = v7;
  AttributeContainer.subscript.setter();
  (*(v1 + 16))(v4, v6, v0);

  AttributedString.init(_:attributes:)();

  return (*(v1 + 8))(v6, v0);
}

void sub_10034F404()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B6D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_100044064();
  v5 = *(v0 + *((swift_isaMask & *v0) + 0x1A8));
  sub_100144DD0(0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 0, 1, v6);
  UIButton.configuration.setter();
  v8 = *(v1 + *((swift_isaMask & *v1) + 0x1B0));
  sub_100144DD0(1);
  v7(v4, 0, 1, v6);
  UIButton.configuration.setter();
  v9 = [v5 titleLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 setFont:v11];
  }

  v12 = [v8 titleLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v13 setFont:v14];
  }

  [v5 addTarget:v1 action:"handleAccept" forControlEvents:64];
  [v8 addTarget:v1 action:"handleDecline" forControlEvents:64];
  v15 = [v1 contentView];
  [v15 addSubview:v5];

  v16 = [v1 contentView];
  [v16 addSubview:v8];
}

void sub_10034F6C0()
{
  sub_1000445C8();
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + *((swift_isaMask & *v0) + 0x1C0));
  [v1 setSpacing:10.0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552EE0;
  v3 = swift_isaMask & *v0;
  v4 = *(v0 + *(v3 + 0x1A8));
  *(v2 + 32) = v4;
  v5 = *(v0 + *(v3 + 432));
  *(v2 + 40) = v5;
  sub_100141CA8();
  v6 = v4;
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setArrangedSubviews:isa];

  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v9)
  {
    [v1 setAxis:1];
    [v1 setDistribution:0];
    v11 = *(v0 + qword_1006B7288);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100555280;
    v13 = *(v0 + qword_1006B7270);
    v14 = *(v0 + qword_1006B7290);
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = *(v0 + qword_1006B72A8);
    v16 = *(v0 + qword_1006B7298);
    *(v12 + 48) = v15;
    *(v12 + 56) = v16;
    v17 = *(v0 + qword_1006B7268);
    *(v12 + 64) = v17;
    *(v12 + 72) = v1;
    v18 = v1;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setArrangedSubviews:v24];

    [v11 setAlignment:3 forView:v18 inAxis:0];
  }

  else
  {
    [v1 setAxis:0];
    [v1 setDistribution:1];
    [v1 setAlignment:1];
    v25 = *(v0 + qword_1006B7280);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100552EF0;
    v27 = *(v0 + qword_1006B7278);
    v28 = *(v0 + qword_1006B7298);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    *(v26 + 48) = v1;
    v29 = v27;
    v30 = v28;
    v31 = v1;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v25 setArrangedSubviews:v32];

    [v25 setCustomSpacing:v30 afterView:10.0];
    v33 = [v0 containerView];
    [v33 directionalLayoutMargins];
    [v33 setDirectionalLayoutMargins:?];
  }
}

void sub_10034FAF8(void *a1)
{
  v1 = a1;
  sub_10034FAE8();
}

id sub_10034FB50(const char *a1, char a2)
{
  v29 = a1;
  v4 = v2;
  v5 = *((swift_isaMask & *v2) + 0x188);
  v6 = type metadata accessor for Optional();
  v28 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = *(v5 - 8);
  __chkstk_darwin(v7);
  v27 = &v26 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v5;
    v18 = v6;
    v19 = v10;
    v20 = a2;
    v21 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v4;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, v29, v16, 0xCu);
    sub_100012DF0(v21, &unk_1006AF760);
    a2 = v20;
    v10 = v19;
    v6 = v18;
    v5 = v26;
  }

  result = sub_10034FF14(a2 & 1);
  v24 = *(v13 + *((swift_isaMask & *v13) + 0x198));
  if (v24)
  {
    sub_10034E7D4(v9);
    if ((*(v10 + 48))(v9, 1, v5) == 1)
    {
      return (*(v28 + 8))(v9, v6);
    }

    else
    {
      v25 = v27;
      (*(v10 + 32))(v27, v9, v5);
      sub_100062900(v24);
      v24(a2 & 1, v25);
      sub_10001835C(v24);
      return (*(v10 + 8))(v25, v5);
    }
  }

  return result;
}

void sub_10034FECC(void *a1)
{
  v1 = a1;
  sub_10034FB40();
}

id sub_10034FF14(int a1)
{
  v3 = sub_10007EBC0(&qword_1006B6D60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - v8;
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = *(v1 + *((swift_isaMask & *v1) + 0x1A8));
  UIButton.configuration.getter();
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 1, v13);
  v18[3] = a1;
  if (v15)
  {
    sub_10028247C(v11, v6);
    UIButton.configuration.setter();
    sub_100012DF0(v11, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v16 = *(v1 + *((swift_isaMask & *v1) + 0x1B0));
  UIButton.configuration.getter();
  if (v14(v9, 1, v13))
  {
    sub_10028247C(v9, v6);
    UIButton.configuration.setter();
    sub_100012DF0(v9, &qword_1006B6D60);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  [v12 setEnabled:0];
  return [v16 setEnabled:0];
}

id sub_100350180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = swift_isaMask;
  v6 = &v3[*((swift_isaMask & *v3) + 0x198)];
  *v6 = 0;
  *(v6 + 1) = 0;
  (*(*(*((v5 & v4) + 0x188) - 8) + 56))(&v3[*((swift_isaMask & *v3) + 0x1A0)], 1, 1);
  v7 = *((swift_isaMask & *v3) + 0x1A8);
  v8 = objc_opt_self();
  *&v3[v7] = [v8 buttonWithType:1];
  v9 = *((swift_isaMask & *v3) + 0x1B0);
  *&v3[v9] = [v8 buttonWithType:1];
  v10 = *((swift_isaMask & *v3) + 0x1B8);
  *&v3[v10] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11 = *((swift_isaMask & *v3) + 0x1C0);
  *&v3[v11] = [objc_allocWithZone(NUIContainerStackView) init];
  *&v3[*((swift_isaMask & *v3) + 0x1C8)] = 0x406A400000000000;
  *&v3[*((swift_isaMask & *v3) + 0x1D0)] = 0x4059000000000000;
  v12 = &v3[*((swift_isaMask & *v3) + 0x1D8)];
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v30._object = 0x800000010057DB40;
  v15._object = 0x800000010057DB20;
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v15._countAndFlagsBits = 0xD000000000000018;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v30);

  *v12 = v17;
  v18 = &v3[*((swift_isaMask & *v3) + 0x1E0)];
  v19 = [v13 mainBundle];
  v31._object = 0x800000010057D750;
  v20._countAndFlagsBits = 0xD000000000000019;
  v20._object = 0x800000010057D730;
  v31._countAndFlagsBits = 0xD00000000000002BLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v31);

  *v18 = v22;
  v23 = *((swift_isaMask & *v3) + 0x1E8);
  *&v3[v23] = [v8 buttonWithType:1];
  if (a3)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v29.receiver = v3;
  v29.super_class = type metadata accessor for FMActionableListTableViewCell();
  v25 = objc_msgSendSuper2(&v29, "initWithStyle:reuseIdentifier:", a1, v24);

  return v25;
}

id sub_10035059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100350180(a3, a4, v6);
}

id sub_1003505E8(void *a1)
{
  v23 = *v1;
  v2 = swift_isaMask;
  v3 = &v1[*((swift_isaMask & *v1) + 0x198)];
  *v3 = 0;
  *(v3 + 1) = 0;
  (*(*(*((v2 & v23) + 0x188) - 8) + 56))(&v1[*((swift_isaMask & *v1) + 0x1A0)], 1, 1, *((v2 & v23) + 0x188));
  v4 = *((swift_isaMask & *v1) + 0x1A8);
  v5 = objc_opt_self();
  *&v1[v4] = [v5 buttonWithType:1];
  v6 = *((swift_isaMask & *v1) + 0x1B0);
  *&v1[v6] = [v5 buttonWithType:1];
  v7 = *((swift_isaMask & *v1) + 0x1B8);
  *&v1[v7] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v8 = *((swift_isaMask & *v1) + 0x1C0);
  *&v1[v8] = [objc_allocWithZone(NUIContainerStackView) init];
  *&v1[*((swift_isaMask & *v1) + 0x1C8)] = 0x406A400000000000;
  *&v1[*((swift_isaMask & *v1) + 0x1D0)] = 0x4059000000000000;
  v9 = &v1[*((swift_isaMask & *v1) + 0x1D8)];
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v26._object = 0x800000010057DB40;
  v12._object = 0x800000010057DB20;
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v12._countAndFlagsBits = 0xD000000000000018;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v26);

  *v9 = v14;
  v15 = &v1[*((swift_isaMask & *v1) + 0x1E0)];
  v16 = [v10 mainBundle];
  v27._object = 0x800000010057D750;
  v17._countAndFlagsBits = 0xD000000000000019;
  v17._object = 0x800000010057D730;
  v27._countAndFlagsBits = 0xD00000000000002BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v27);

  *v15 = v19;
  v20 = *((swift_isaMask & *v1) + 0x1E8);
  *&v1[v20] = [v5 buttonWithType:1];
  v25.receiver = v1;
  v25.super_class = type metadata accessor for FMActionableListTableViewCell();
  v21 = objc_msgSendSuper2(&v25, "initWithCoder:", a1);

  if (v21)
  {
  }

  return v21;
}

void sub_100350A0C()
{
  sub_10001835C(*&v0[*((swift_isaMask & *v0) + 0x198)]);
  v1 = *((swift_isaMask & *v0) + 0x1A0);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  v3 = *&v0[*((swift_isaMask & *v0) + 0x1E8)];
}

id sub_100350BE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMActionableListTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100350C50(char *a1)
{
  sub_10001835C(*&a1[*((swift_isaMask & *a1) + 0x198)]);
  v2 = *((swift_isaMask & *a1) + 0x1A0);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *&a1[*((swift_isaMask & *a1) + 0x1E8)];
}

unint64_t sub_100350E28()
{
  result = qword_1006C3C90;
  if (!qword_1006C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C90);
  }

  return result;
}

uint64_t sub_100350E7C()
{
  sub_100006060(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100350EB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10012105C;
  v6[3] = &unk_100637D38;
  v4 = _Block_copy(v6);

  [v3 stewiePublishStateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_100350F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003510BC;
  aBlock[3] = &unk_100637CE8;
  v7 = _Block_copy(aBlock);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A44B4;
  v10[3] = &unk_100637D10;
  v8 = _Block_copy(v10);

  [v4 startMonitoringStewieStateWithBlock:v7 completion:v8];
  _Block_release(v8);
  _Block_release(v7);
}

uint64_t sub_1003510BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100351110(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1001A44B4;
  v6[3] = &unk_100637CC0;
  v4 = _Block_copy(v6);

  [v3 stopMonitoringStewieStateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t sub_1003511C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10007EBC0(&qword_1006BC7F0);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003512C0, 0, 0);
}

uint64_t sub_1003512C0()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100351360;
  v2 = *(v0 + 64);

  return Session.stewiePublishResult()(v2);
}

uint64_t sub_100351360()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1003515A0;
  }

  else
  {
    v2 = sub_100351474;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100351474()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_10000905C(0, &qword_1006BC7F8);
  (*(v2 + 16))(v3, v1, v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v6 = SPSecureLocationsStewiePublishResult.init(_:)();
  v5(v6, 0);

  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003515A0()
{
  v1 = v0[10];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100351644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_10007EBC0(&qword_1006BC7D8);
  v8[11] = swift_task_alloc();
  v10 = sub_10007EBC0(&qword_1006BC7E0);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = sub_10007EBC0(&qword_1006BC7E8);
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_100351820, 0, 0);
}

uint64_t sub_100351820()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10005BEBC;
  v2 = *(v0 + 112);

  return Session.startMonitoringStewieState()(v2);
}

uint64_t sub_1003518C0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = enum case for SecureLocationsStewie.ServiceState.available(_:);
  *(v0 + 168) = enum case for SecureLocationsStewie.ServiceState.unknown(_:);
  *(v0 + 172) = v4;
  v5 = enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:);
  *(v0 + 176) = enum case for SecureLocationsStewie.ServiceState.unavailable(_:);
  *(v0 + 180) = v5;
  v6 = enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:);
  *(v0 + 184) = enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:);
  *(v0 + 188) = v6;
  v7 = enum case for SecureLocationsStewie.ServiceState.disabled(_:);
  *(v0 + 192) = enum case for SecureLocationsStewie.ServiceState.throttled(_:);
  *(v0 + 196) = v7;
  v8 = enum case for SecureLocationsStewie.ServiceState.notSetup(_:);
  *(v0 + 200) = enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:);
  *(v0 + 204) = v8;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_100351A28;
  v10 = *(v0 + 120);
  v11 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v10);
}

uint64_t sub_100351A28()
{

  return _swift_task_switch(sub_100351B24, 0, 0);
}

uint64_t sub_100351B24()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 168);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v3 + 32);
  v9(v7, v1, v2);
  v9(v8, v7, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 != v6)
  {
    if (v10 == *(v0 + 172))
    {
      v11 = 1;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 176))
    {
      v11 = 2;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 180))
    {
      v11 = 3;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 184))
    {
      v11 = 4;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 188))
    {
      v11 = 5;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 192))
    {
      v11 = 6;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 196))
    {
      v11 = 7;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 200))
    {
      v11 = 8;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 204))
    {
      v11 = 9;
      goto LABEL_25;
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v11 = 0;
LABEL_25:
  (*(v0 + 24))(v11);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_100351A28;
  v13 = *(v0 + 120);
  v14 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v14, 0, 0, v13);
}

uint64_t sub_100351DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100351E00, 0, 0);
}

uint64_t sub_100351E00()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100351E98;

  return Session.stopMonitoringStewieState()();
}

uint64_t sub_100351E98()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100351FCC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100351FCC()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100352078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_100170C90(0, 0, v11, &unk_10055E290, v14);
}

uint64_t sub_1003521DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = *v6;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a1;
  v15[6] = a2;

  sub_100170C90(0, 0, v12, a6, v15);
}

uint64_t sub_1003522F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_100351DDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003523C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000EE760;

  return sub_100351644(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10035249C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003524E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_1003511C4(a1, v4, v5, v6, v7, v8);
}

void sub_1003525F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100355AEC(1);
  }
}

void sub_100352650(char *a1)
{
  v40 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v40);
  v5 = &v41[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v41[-1] - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v41[-1] - v10;
  __chkstk_darwin(v9);
  v13 = &v41[-1] - v12;
  v14 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v15 = *(v14 + 56);
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v15 + v16, v13);
  LOBYTE(v15) = sub_10005F7D0(v13, a1);
  sub_10005D4E4(v13);
  if ((v15 & 1) == 0)
  {
    v29 = [v1 presentedViewController];
    if (v29)
    {
      v30 = v29;
      [v29 dismissViewControllerAnimated:1 completion:0];
    }

    v31 = *(v14 + 56);
    sub_100062074(a1, v13);
    v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v31 + v32, v11);
    swift_beginAccess();

    sub_100058530(v13, v31 + v32);
    swift_endAccess();
    sub_100058594(v11);

    sub_10005D4E4(v11);
    v33 = v13;
    goto LABEL_19;
  }

  v17 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];
  if (!*(v17 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
  {
    goto LABEL_5;
  }

  if (*(v17 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
  {
    v41[3] = &type metadata for SolariumFeatureFlag;
    v41[4] = sub_10000BD04();
    isFeatureEnabled(_:)();
    sub_100006060(v41);
LABEL_5:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    sub_100062074(a1, v5);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315138;
      sub_100062074(v5, v13);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_10005D4E4(v5);
      v26 = sub_100005B4C(v23, v25, v41);

      *(v21 + 4) = v26;
      v27 = "FMMainViewController: Tab Bar change to already visible section: %s";
      v28 = v20;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v19, v28, v27, v21, 0xCu);
      sub_100006060(v22);

      return;
    }

    v33 = v5;
    goto LABEL_19;
  }

  sub_10024D538(1, 0.4);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  sub_100062074(a1, v8);
  v19 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v35))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41[0] = v22;
    *v21 = 136315138;
    sub_100062074(v8, v13);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    sub_10005D4E4(v8);
    v39 = sub_100005B4C(v36, v38, v41);

    *(v21 + 4) = v39;
    v27 = "FMMainViewController: Tab Bar change to already visible section in collapsed state. Animating to middle card position for %s";
    v28 = v35;
    goto LABEL_17;
  }

  v33 = v8;
LABEL_19:
  sub_10005D4E4(v33);
}

uint64_t sub_100352B14(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return (*(v1 + 40))(ObjectType, v1);
}

void sub_100352B88(_BYTE *a1)
{
  if ((a1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing] & 1) == 0)
  {
    a1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing] = 1;
    v2 = objc_opt_self();
    v3 = [v2 mainBundle];
    v35._object = 0x8000000100592870;
    v4._countAndFlagsBits = 0xD000000000000020;
    v4._object = 0x8000000100592840;
    v35._countAndFlagsBits = 0xD000000000000032;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v35);

    sub_10022E294(0xD000000000000023, 0x80000001005928B0);
    sub_10007EBC0(&unk_1006B20B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100552220;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 24;
    String.init(format:_:)();

    v7 = String._bridgeToObjectiveC()();

    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = [v2 mainBundle];
    v36._object = 0x8000000100592900;
    v11._object = 0x80000001005928E0;
    v36._countAndFlagsBits = 0xD000000000000026;
    v11._countAndFlagsBits = 0xD000000000000014;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v36);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    v15 = String._bridgeToObjectiveC()();

    v33 = sub_1003572C0;
    v34 = v13;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100017328;
    v32 = &unk_100637FB8;
    v16 = _Block_copy(&aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:1 handler:v16];
    _Block_release(v16);

    [v9 addAction:v18];
    v19 = [v2 mainBundle];
    v37._object = 0x8000000100592950;
    v20._object = 0x8000000100592930;
    v37._countAndFlagsBits = 0xD000000000000026;
    v20._countAndFlagsBits = 0xD000000000000014;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v37);

    v22 = swift_allocObject();
    *(v22 + 16) = v14;
    v23 = v14;
    v24 = String._bridgeToObjectiveC()();

    v33 = sub_1003572E0;
    v34 = v22;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100017328;
    v32 = &unk_100638008;
    v25 = _Block_copy(&aBlock);

    v26 = [v17 actionWithTitle:v24 style:0 handler:v25];
    _Block_release(v25);

    [v9 addAction:v26];
    v27 = sub_1003E1AD0();
    if (v27)
    {
      v28 = v27;
      [v27 presentViewController:v9 animated:1 completion:0];
    }
  }
}

uint64_t sub_100353068(uint64_t a1, uint64_t a2, char a3)
{

  sub_1000E6F4C(a3);

  *(a2 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing) = 0;
  return result;
}

void sub_1003530CC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for FMIPAlertType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v84 = &v84 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v84 - v11;
  v13 = __chkstk_darwin(v10);
  v88 = &v84 - v14;
  v15 = __chkstk_darwin(v13);
  v89 = &v84 - v16;
  v17 = __chkstk_darwin(v15);
  v90 = &v84 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v84 - v20;
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100005B14(v24, qword_1006D4630);

  v86 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v92 = a2;
  v93 = a1;
  v87 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v31 = dispatch thunk of FMIPAlert.debugDescription.getter();
    v33 = sub_100005B4C(v31, v32, &aBlock);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "FMMainViewController: devicesProvider didReceive %s", v29, 0xCu);
    sub_100006060(v30);
  }

  FMIPAlert.type.getter();
  v91 = *(v5 + 104);
  v91(v21, enum case for FMIPAlertType.recurrentNetworkIssue(_:), v4);
  sub_10000A390(&qword_1006BC880, &type metadata accessor for FMIPAlertType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v100 && v95 == v101)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v35 = *(v5 + 8);
  v35(v21, v4);
  v35(v23, v4);

  if (v34)
  {
    goto LABEL_14;
  }

  v36 = v90;
  FMIPAlert.type.getter();
  v37 = v89;
  v91(v89, enum case for FMIPAlertType.networkIssue(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v100 && v95 == v101)
  {
    goto LABEL_12;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v35(v37, v4);
  v35(v36, v4);

  if ((v38 & 1) == 0)
  {
    v36 = v88;
    FMIPAlert.type.getter();
    v37 = v87;
    v91(v87, enum case for FMIPAlertType.initialization(_:), v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock != v100 || v95 != v101)
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35(v37, v4);
      v35(v36, v4);

      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_12:
    v35(v37, v4);
    v35(v36, v4);
  }

LABEL_14:
  v39 = *&v92[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v40 = *(v39 + 16);
  if ((*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) & 1) != 0 || *(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) != 1 || *(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1 || (*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) != 0 || (*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) != 0 || (sub_100056EF8() & 1) == 0)
  {
    return;
  }

  v41 = v84;
  FMIPAlert.type.getter();
  v42 = v85;
  v91(v85, enum case for FMIPAlertType.networkIssue(_:), v4);
  sub_10000A390(&qword_1006BC888, &type metadata accessor for FMIPAlertType);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35(v42, v4);
  v35(v41, v4);
  if ((v43 & 1) == 0)
  {
    *(*(v39 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) = 1;
  }

LABEL_25:
  v45 = v93;
  FMIPAlert.title.getter();
  v47 = v46;
  FMIPAlert.message.getter();
  v49 = v48;
  if (!v47)
  {
    v50 = 0;
    if (v48)
    {
      goto LABEL_27;
    }

LABEL_29:
    v51 = 0;
    goto LABEL_30;
  }

  v50 = String._bridgeToObjectiveC()();

  if (!v49)
  {
    goto LABEL_29;
  }

LABEL_27:
  v51 = String._bridgeToObjectiveC()();

LABEL_30:
  v52 = [objc_opt_self() alertControllerWithTitle:v50 message:v51 preferredStyle:1];

  FMIPAlert.cancelButtonLabel.getter();
  if (v53)
  {

    FMIPAlert.cancelButtonLabel.getter();
    v55 = v54;
    v56 = swift_allocObject();
    v57 = v92;
    *(v56 + 16) = v45;
    *(v56 + 24) = v57;

    v58 = v57;
    if (v55)
    {
      v59 = String._bridgeToObjectiveC()();
    }

    else
    {
      v59 = 0;
    }

    v98 = sub_1003575D4;
    v99 = v56;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100017328;
    v97 = &unk_1006380F8;
    v60 = _Block_copy(&aBlock);

    v61 = [objc_opt_self() actionWithTitle:v59 style:1 handler:v60];
    _Block_release(v60);

    [v52 addAction:v61];
  }

  FMIPAlert.okButtonLabel.getter();
  v63 = v62;
  v64 = swift_allocObject();
  v65 = v92;
  *(v64 + 16) = v45;
  *(v64 + 24) = v65;

  v66 = v65;
  if (v63)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  v98 = sub_1003575CC;
  v99 = v64;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100017328;
  v97 = &unk_1006380A8;
  v68 = _Block_copy(&aBlock);

  v69 = [objc_opt_self() actionWithTitle:v67 style:0 handler:v68];
  _Block_release(v68);

  [v52 addAction:v69];
  v70 = sub_1004901CC();
  v71 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  swift_beginAccess();
  v72 = *&v65[v71];
  v73 = v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65[v71] = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_10008C140(0, v72[2] + 1, 1, v72);
    *&v65[v71] = v72;
  }

  v76 = v72[2];
  v75 = v72[3];
  if (v76 >= v75 >> 1)
  {
    v72 = sub_10008C140((v75 > 1), v76 + 1, 1, v72);
  }

  v72[2] = v76 + 1;
  v77 = &v72[2 * v76];
  *(v77 + 32) = v70 & 1;
  v77[5] = v73;
  *&v65[v71] = v72;
  swift_endAccess();
  if (v65[OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert] & 1) == 0 && (v78 = *&v65[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator], (sub_100056EF8()) && (v79 = *(v78 + 16), v80 = sub_100057590(), v79, v80) && v80 != 3)
  {
    sub_1003542A0();
  }

  else
  {
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "FMMainViewController: Not presenting alert, onboarding and notifications have priority", v83, 2u);
    }
  }
}

void sub_100353C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPAlert.cancelButtonURL.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006B0120);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v8 + 8))(v10, v7);
  }

  *(a3 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
}

void sub_100353E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPAlert.okButtonURL.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &unk_1006B0120);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = [objc_opt_self() defaultWorkspace];
    if (v12)
    {
      v14 = v12;
      URL._bridgeToObjectiveC()(v13);
      v16 = v15;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v14 openSensitiveURL:v16 withOptions:isa];
    }

    (*(v9 + 8))(v11, v8);
  }

  *(a3 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
  v18 = sub_1003E1AD0();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for FMActivityIndicatingNavigationController();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100005B14(v22, qword_1006D4630);

      v23 = v19;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37 = a2;
        v38 = v27;
        *v26 = 136315394;
        type metadata accessor for FMIPAlert();

        v28 = String.init<A>(describing:)();
        v30 = sub_100005B4C(v28, v29, &v38);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = v23;
        v32 = [v21 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_100005B4C(v33, v35, &v38);

        *(v26 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v24, v25, "FMMainViewController: alert %s dismissing %s", v26, 0x16u);
        swift_arrayDestroy();
      }

      [v21 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1003542A0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) == 1 && *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) == 1 && (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) == 0 && (sub_100056EF8() & 1) != 0 && (v2 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue, swift_beginAccess(), v3 = *(v0 + v2), *(v3 + 16)))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    swift_beginAccess();
    v6 = v5;
    sub_1003CF87C(0, 1);
    swift_endAccess();
    *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 1;
    v7 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
    v8 = *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8);
    *v7 = v4;
    v7[1] = v6;
    v9 = v6;

    v10 = sub_1003E1AD0();
    if (v10)
    {
      v11 = v10;
      [v10 presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    v12 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8);
    *v12 = 0;
    v12[1] = 0;
  }
}

void sub_100354424()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  swift_beginAccess();
  v2 = *(*&v0[v1] + 16);
  if (v2)
  {
    v3 = ( + 40);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v3 - 8);
      if (*(v3 - 8))
      {
        v6 = 0x8000000100579120;
      }

      else
      {
        v6 = 0xE700000000000000;
      }

      if (v5 == 1 && 0x8000000100579120 == v6)
      {
      }

      else
      {
        v8 = *v3;
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v10 = v8;

        if (v9)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10008C140(0, v4[2] + 1, 1, v4);
          }

          v12 = v4[2];
          v11 = v4[3];
          if (v12 >= v11 >> 1)
          {
            v4 = sub_10008C140((v11 > 1), v12 + 1, 1, v4);
          }

          v4[2] = v12 + 1;
          v13 = &v4[2 * v12];
          *(v13 + 32) = v5;
          v13[5] = v10;
        }
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  *&v0[v1] = v4;

  v14 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8];
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    aBlock[4] = sub_100357FBC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100638440;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    v18 = v0;

    [v17 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_1003546A8(uint64_t a1, char *a2)
{
  v155 = a2;
  v3 = type metadata accessor for FMFAlertType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v143 = &v133[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10007EBC0(&qword_1006BC890);
  v7 = __chkstk_darwin(v6);
  v137 = &v133[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v141 = &v133[-v10];
  v11 = __chkstk_darwin(v9);
  v153 = &v133[-v12];
  __chkstk_darwin(v11);
  v14 = &v133[-v13];
  v15 = sub_10007EBC0(&qword_1006BC898);
  v16 = __chkstk_darwin(v15 - 8);
  v135 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v136 = &v133[-v19];
  v20 = __chkstk_darwin(v18);
  v138 = &v133[-v21];
  v22 = __chkstk_darwin(v20);
  v139 = &v133[-v23];
  v24 = __chkstk_darwin(v22);
  v144 = &v133[-v25];
  v26 = __chkstk_darwin(v24);
  v145 = &v133[-v27];
  v28 = __chkstk_darwin(v26);
  v142 = &v133[-v29];
  v30 = __chkstk_darwin(v28);
  v32 = &v133[-v31];
  v33 = __chkstk_darwin(v30);
  v146 = &v133[-v34];
  v35 = __chkstk_darwin(v33);
  v37 = &v133[-v36];
  v38 = __chkstk_darwin(v35);
  v40 = &v133[-v39];
  __chkstk_darwin(v38);
  v42 = &v133[-v41];
  v147 = a1;
  FMFAlert.alertType.getter();
  v43 = v4[13];
  v154 = v4 + 13;
  v151 = v43;
  v43(v40, enum case for FMFAlertType.recurrentNetworkIssue(_:), v3);
  v149 = v4[7];
  v150 = v4 + 7;
  v149(v40, 0, 1, v3);
  v152 = v6;
  v44 = *(v6 + 48);
  sub_1003575E4(v42, v14);
  sub_1003575E4(v40, &v14[v44]);
  v148 = v4;
  v47 = v4[6];
  v45 = v4 + 6;
  v46 = v47;
  if (v47(v14, 1, v3) == 1)
  {
    sub_100012DF0(v40, &qword_1006BC898);
    sub_100012DF0(v42, &qword_1006BC898);
    v48 = v45;
    v49 = v46;
    if (v46(&v14[v44], 1, v3) == 1)
    {
      v50 = v147;
LABEL_16:
      sub_100012DF0(v14, &qword_1006BC898);
      goto LABEL_17;
    }
  }

  else
  {
    sub_1003575E4(v14, v37);
    v140 = v45;
    v49 = v46;
    if (v46(&v14[v44], 1, v3) != 1)
    {
      v68 = v148;
      v69 = &v14[v44];
      v70 = v143;
      (v148[4])(v143, v69, v3);
      sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
      v134 = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = v68[1];
      v71(v70, v3);
      sub_100012DF0(v40, &qword_1006BC898);
      sub_100012DF0(v42, &qword_1006BC898);
      v71(v37, v3);
      sub_100012DF0(v14, &qword_1006BC898);
      v50 = v147;
      v48 = v140;
      v51 = v145;
      if (v134)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    sub_100012DF0(v40, &qword_1006BC898);
    sub_100012DF0(v42, &qword_1006BC898);
    (v148[1])(v37, v3);
    v48 = v140;
  }

  sub_100012DF0(v14, &qword_1006BC890);
  v50 = v147;
  v51 = v145;
LABEL_7:
  v52 = v146;
  FMFAlert.alertType.getter();
  v151(v32, enum case for FMFAlertType.networkIssue(_:), v3);
  v149(v32, 0, 1, v3);
  v53 = v153;
  v54 = *(v152 + 48);
  sub_1003575E4(v52, v153);
  sub_1003575E4(v32, v53 + v54);
  if (v49(v53, 1, v3) == 1)
  {
    sub_100012DF0(v32, &qword_1006BC898);
    v14 = v153;
    sub_100012DF0(v52, &qword_1006BC898);
    if (v49(&v14[v54], 1, v3) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v55 = v142;
  sub_1003575E4(v53, v142);
  if (v49((v53 + v54), 1, v3) == 1)
  {
    sub_100012DF0(v32, &qword_1006BC898);
    v14 = v153;
    sub_100012DF0(v146, &qword_1006BC898);
    (v148[1])(v55, v3);
LABEL_12:
    sub_100012DF0(v14, &qword_1006BC890);
    goto LABEL_13;
  }

  v79 = v148;
  v80 = v53 + v54;
  v81 = v143;
  (v148[4])(v143, v80, v3);
  sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
  LODWORD(v147) = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = v53;
  v83 = v50;
  v84 = v48;
  v85 = v49;
  v86 = v79[1];
  v86(v81, v3);
  sub_100012DF0(v32, &qword_1006BC898);
  sub_100012DF0(v146, &qword_1006BC898);
  v86(v142, v3);
  v51 = v145;
  v49 = v85;
  v48 = v84;
  v50 = v83;
  sub_100012DF0(v82, &qword_1006BC898);
  if ((v147 & 1) == 0)
  {
LABEL_13:
    FMFAlert.alertType.getter();
    v56 = v144;
    v151(v144, enum case for FMFAlertType.initialization(_:), v3);
    v149(v56, 0, 1, v3);
    v57 = *(v152 + 48);
    v58 = v141;
    sub_1003575E4(v51, v141);
    sub_1003575E4(v56, &v58[v57]);
    if (v49(v58, 1, v3) == 1)
    {
      sub_100012DF0(v56, &qword_1006BC898);
      sub_100012DF0(v51, &qword_1006BC898);
      if (v49(&v58[v57], 1, v3) == 1)
      {
        v14 = v58;
        goto LABEL_16;
      }
    }

    else
    {
      v72 = v139;
      sub_1003575E4(v58, v139);
      if (v49(&v58[v57], 1, v3) != 1)
      {
        v87 = v51;
        v88 = v148;
        v89 = &v58[v57];
        v90 = v143;
        (v148[4])(v143, v89, v3);
        sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
        LODWORD(v153) = dispatch thunk of static Equatable.== infix(_:_:)();
        v140 = v48;
        v91 = v88[1];
        v91(v90, v3);
        sub_100012DF0(v144, &qword_1006BC898);
        sub_100012DF0(v87, &qword_1006BC898);
        v91(v72, v3);
        sub_100012DF0(v58, &qword_1006BC898);
        if ((v153 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_17;
      }

      sub_100012DF0(v144, &qword_1006BC898);
      sub_100012DF0(v51, &qword_1006BC898);
      (v148[1])(v72, v3);
    }

    v66 = &qword_1006BC890;
    v67 = v58;
    goto LABEL_31;
  }

LABEL_17:
  v59 = *&v155[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v60 = *(v59 + 16);
  if ((*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) & 1) != 0 || *(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) != 1 || *(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1 || (*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) != 0 || (*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) != 0 || (sub_100056EF8() & 1) == 0)
  {
    return;
  }

  v61 = v138;
  FMFAlert.alertType.getter();
  v62 = v136;
  v151(v136, enum case for FMFAlertType.networkIssue(_:), v3);
  v149(v62, 0, 1, v3);
  v63 = *(v152 + 48);
  v64 = v137;
  sub_1003575E4(v61, v137);
  sub_1003575E4(v62, &v64[v63]);
  if (v49(v64, 1, v3) == 1)
  {
    sub_100012DF0(v62, &qword_1006BC898);
    v65 = v137;
    sub_100012DF0(v138, &qword_1006BC898);
    if (v49(&v65[v63], 1, v3) == 1)
    {
      v66 = &qword_1006BC898;
      v67 = v65;
LABEL_31:
      sub_100012DF0(v67, v66);
      goto LABEL_32;
    }

    goto LABEL_67;
  }

  v127 = v135;
  sub_1003575E4(v64, v135);
  if (v49(&v64[v63], 1, v3) == 1)
  {
    sub_100012DF0(v136, &qword_1006BC898);
    v65 = v137;
    sub_100012DF0(v138, &qword_1006BC898);
    (v148[1])(v127, v3);
LABEL_67:
    sub_100012DF0(v65, &qword_1006BC890);
LABEL_68:
    *(*(v59 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) = 1;
    goto LABEL_32;
  }

  v128 = v148;
  v129 = &v64[v63];
  v130 = v143;
  (v148[4])(v143, v129, v3);
  sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType);
  v131 = dispatch thunk of static Equatable.== infix(_:_:)();
  v132 = v128[1];
  v132(v130, v3);
  sub_100012DF0(v136, &qword_1006BC898);
  sub_100012DF0(v138, &qword_1006BC898);
  v132(v135, v3);
  sub_100012DF0(v64, &qword_1006BC898);
  if ((v131 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_32:
  dispatch thunk of FMFAlert.title.getter();
  v74 = v73;
  dispatch thunk of FMFAlert.message.getter();
  v76 = v75;
  if (!v74)
  {
    v77 = 0;
    if (v75)
    {
      goto LABEL_34;
    }

LABEL_40:
    v78 = 0;
    goto LABEL_41;
  }

  v77 = String._bridgeToObjectiveC()();

  if (!v76)
  {
    goto LABEL_40;
  }

LABEL_34:
  v78 = String._bridgeToObjectiveC()();

LABEL_41:
  v92 = [objc_opt_self() alertControllerWithTitle:v77 message:v78 preferredStyle:1];

  dispatch thunk of FMFAlert.cancelButtonLabel.getter();
  if (v93)
  {

    dispatch thunk of FMFAlert.cancelButtonLabel.getter();
    v95 = v94;
    v96 = swift_allocObject();
    v97 = v155;
    *(v96 + 16) = v50;
    *(v96 + 24) = v97;

    v98 = v155;
    if (v95)
    {
      v99 = String._bridgeToObjectiveC()();
    }

    else
    {
      v99 = 0;
    }

    v160 = sub_1003576C0;
    v161 = v96;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_100017328;
    v159 = &unk_1006381E8;
    v100 = _Block_copy(&aBlock);

    v101 = [objc_opt_self() actionWithTitle:v99 style:1 handler:v100];
    _Block_release(v100);

    [v92 addAction:v101];
  }

  dispatch thunk of FMFAlert.okButtonLabel.getter();
  v103 = v102;
  v104 = swift_allocObject();
  v105 = v155;
  *(v104 + 16) = v50;
  *(v104 + 24) = v105;

  v106 = v155;
  if (v103)
  {
    v107 = String._bridgeToObjectiveC()();
  }

  else
  {
    v107 = 0;
  }

  v160 = sub_100357654;
  v161 = v104;
  aBlock = _NSConcreteStackBlock;
  v157 = 1107296256;
  v158 = sub_100017328;
  v159 = &unk_100638198;
  v108 = _Block_copy(&aBlock);

  v109 = [objc_opt_self() actionWithTitle:v107 style:0 handler:v108];
  _Block_release(v108);

  [v92 addAction:v109];
  v110 = sub_100490644();
  v111 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  v112 = v155;
  swift_beginAccess();
  v113 = *&v112[v111];
  v114 = v92;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v112[v111] = v113;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v113 = sub_10008C140(0, v113[2] + 1, 1, v113);
    *&v155[v111] = v113;
  }

  v117 = v113[2];
  v116 = v113[3];
  if (v117 >= v116 >> 1)
  {
    v113 = sub_10008C140((v116 > 1), v117 + 1, 1, v113);
  }

  v113[2] = v117 + 1;
  v118 = &v113[2 * v117];
  *(v118 + 32) = v110;
  v118[5] = v114;
  v119 = v155;
  *&v155[v111] = v113;
  swift_endAccess();
  if (v119[OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert] & 1) == 0 && (v120 = *&v155[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator], (sub_100056EF8()) && (v121 = *(v120 + 16), v122 = sub_100057590(), v121, v122) && v122 != 3)
  {
    sub_1003542A0();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    sub_100005B14(v123, qword_1006D4630);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "FMMainViewController: Not presenting alert, onboarding and notifications have priority", v126, 2u);
    }
  }
}

void sub_100355AEC(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v3 = *(v2 + 16);
  if (v3[OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "FMMainViewController: Not presenting onboarding, UT has priority", v6, 2u);
    }
  }

  else
  {
    v7 = v1;
    v3[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v9 = v3;
    sub_10041E45C();

    *(*(v2 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding) = 0;
    v10 = objc_allocWithZone(type metadata accessor for FMOnboardingNavigationController());

    oslog = sub_1002DBA88(v11, a1 & 1);

    [oslog setModalPresentationStyle:2];
    [oslog setModalInPresentation:1];
    *(&oslog[1].isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_onboardingDelegate) = &off_100637D60;
    swift_unknownObjectWeakAssign();
    [v7 presentViewController:oslog animated:1 completion:0];
  }
}

void sub_100355CE0(void *a1, char a2)
{
  v3 = v2;
  v41 = type metadata accessor for FMIPAuthEventResponse();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPNotificationAuthPromptEvent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 16);
  v13[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
  v14 = v13;
  sub_10041E45C();

  if (a2)
  {
    v39 = v9;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = v10;
    v40 = a1;
    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMMainViewController: Dismiss onboarding with Not Now", v18, 2u);
    }

    v19 = objc_opt_self();
    v20 = [v19 currentNotificationCenter];
    v21 = [v20 notificationSettings];

    v22 = [v21 authorizationStatus];
    if (v22)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v38;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "FMMainViewController: No need to request deliver quietly authorization for Find My. Authorization already determined.", v27, 2u);
      }
    }

    else
    {
      v33 = [v19 currentNotificationCenter];
      v46 = sub_100356280;
      v47 = 0;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1004318E0;
      v45 = &unk_100638350;
      v34 = _Block_copy(&aBlock);
      [v33 requestAuthorizationWithOptions:66 completionHandler:v34];

      _Block_release(v34);
      v26 = v38;
    }

    (*(v6 + 104))(v8, enum case for FMIPAuthEventResponse.notNow(_:), v41);
    FMIPNotificationAuthPromptEvent.init(authEventResponse:)();

    FMIPManager.enqueue(notificationPromptEvent:)();

    v35 = swift_allocObject();
    *(v35 + 16) = v3;
    v46 = sub_100357FBC;
    v47 = v35;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100004AE4;
    v45 = &unk_100638328;
    v36 = _Block_copy(&aBlock);
    v37 = v3;

    [v40 dismissViewControllerAnimated:1 completion:v36];
    _Block_release(v36);
    (*(v26 + 8))(v12, v39);
  }

  else
  {
    v28 = [objc_opt_self() currentNotificationCenter];
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = a1;
    v46 = sub_1002DBF10;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_1004318E0;
    v45 = &unk_1006382D8;
    v30 = _Block_copy(&aBlock);
    v31 = v3;
    v32 = a1;

    [v28 requestAuthorizationWithOptions:7 completionHandler:v30];

    _Block_release(v30);
  }
}

void sub_100356280(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 67109378;
    *(v4 + 4) = a1 & 1;
    *(v4 + 8) = 2080;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v6 = String.init<A>(describing:)();
    v8 = sub_100005B4C(v6, v7, &v10);

    *(v4 + 10) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "FMMainViewController: Request deliver quietly authorization for Find My completed. Granted?: %{BOOL}d. Error?: %s", v4, 0x12u);
    sub_100006060(v5);
  }

  else
  {
  }
}

uint64_t sub_100356438(int a1, uint64_t a2, void *a3, void *a4)
{
  v49 = a4;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPNotificationAuthPromptEvent();
  v53 = *(v9 - 8);
  v54 = v9;
  __chkstk_darwin(v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPAuthEventResponse();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  v55 = &v41 - v17;
  if (a2)
  {
    v45 = a1;
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v44 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = v22;
      v43 = swift_slowAlloc();
      v56 = a2;
      aBlock[0] = v43;
      *v22 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100005B4C(v23, v24, aBlock);
      v18 = v55;

      v26 = v42;
      *(v42 + 1) = v25;
      _os_log_impl(&_mh_execute_header, v20, v44, "FMMainViewController: Failed to request authorization for notifications. Error: %s", v26, 0xCu);
      sub_100006060(v43);
    }

    else
    {
    }

    LOBYTE(a1) = v45;
  }

  v27 = &enum case for FMIPAuthEventResponse.granted(_:);
  if ((a1 & 1) == 0)
  {
    v27 = &enum case for FMIPAuthEventResponse.denied(_:);
  }

  (*(v13 + 104))(v18, *v27, v12);
  (*(v13 + 16))(v16, v18, v12);
  FMIPNotificationAuthPromptEvent.init(authEventResponse:)();
  v28 = a3;
  v29 = v11;

  FMIPManager.enqueue(notificationPromptEvent:)();

  sub_10000905C(0, &qword_1006AEDC0);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = swift_allocObject();
  v32 = v13;
  v33 = v49;
  *(v31 + 16) = v49;
  *(v31 + 24) = v28;
  aBlock[4] = sub_100357EE4;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006383A0;
  v34 = _Block_copy(aBlock);
  v35 = v33;
  v36 = v28;

  v37 = v46;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v39 = v47;
  v38 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v51 + 8))(v39, v38);
  (*(v50 + 8))(v37, v52);
  (*(v53 + 8))(v29, v54);
  return (*(v32 + 8))(v55, v12);
}

void sub_100356A8C(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100357EEC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100004AE4;
  v7[3] = &unk_1006383F0;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_100356B6C()
{
}

id sub_100356C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMainViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100356E0C(void *a1)
{
  v9 = &type metadata for SolariumFeatureFlag;
  v10 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_clearColor;
  }

  else
  {
    v5 = [a1 userInterfaceStyle];
    v3 = objc_opt_self();
    v4 = &selRef_whiteColor;
    if (v5 == 2)
    {
      v4 = &selRef_tertiarySystemFillColor;
    }
  }

  v6 = [v3 *v4];

  return v6;
}

uint64_t sub_100356ECC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*&v0[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 16);
  if (*(v10 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) == 1 && *(v10 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) == 1 && (*(v10 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) == 0 && (*(v10 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) == 0)
  {
    v11 = result;
    result = sub_100056EF8();
    if (result)
    {
      v12 = v0;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100005B14(v13, qword_1006D4630);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "FMMainViewController: provider requested last location prompt and we can show it.", v16, 2u);
      }

      sub_10000905C(0, &qword_1006AEDC0);
      v17 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      aBlock[4] = sub_1003572B8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100637F68;
      v19 = _Block_copy(aBlock);
      v20 = v12;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100037970();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v19);

      (*(v2 + 8))(v4, v1);
      return (*(v6 + 8))(v9, v11);
    }
  }

  return result;
}

uint64_t sub_100357300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);

  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_1003575E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BC898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100357680()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003576EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = *(v3 + 24);
  a3(a2, 0);
  *(v4 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
}

uint64_t sub_100357734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_1003579EC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue) = _swiftEmptyArrayStorage;
  v1 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_compactConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_regularConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100357A9C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "FMMainViewController: updated account status %{BOOL}d", v4, 8u);
  }
}

void sub_100357BA0(char a1)
{
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
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMainViewController: updated network status %{BOOL}d", v5, 8u);
  }

  if (a1)
  {

    sub_100354424();
  }
}

void sub_100357CC0(char a1)
{
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
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMainViewController: updated server alert postponed %{BOOL}d", v5, 8u);
  }

  if ((a1 & 1) == 0)
  {

    sub_1003542A0();
  }
}

void sub_100357DE0()
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
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMMainViewController: App is now initialized", v2, 2u);
  }
}

void sub_100357FD0()
{
  v3 = OBJC_IVAR____TtC6FindMy13FMAppDelegate_alertQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v0 = *(v5 + 32);
  }

  swift_beginAccess();
  v5 = *(v1 + v3);
  v2 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_10:
  if ((v5 & 0xC000000000000001) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
  swift_unknownObjectRelease();
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_13:
    v7 = *(v6 + 16);
    goto LABEL_26;
  }

LABEL_25:
  v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  if (!v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1003CF8A8(0, 1);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert) = 1;
  v8 = sub_1003E1AD0();
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v0 animated:1 completion:0];
  }
}

void sub_1003581E8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v66 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchTime();
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v56[-v10];
  v12 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v12 - 8);
  v14 = &v56[-v13];
  v15 = type metadata accessor for URL();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v56[-v19];
  v21 = sub_100362454(a1);
  if (v21)
  {
    v22 = v21;
    if (!*(v21 + 16) || (v23 = sub_10000726C(0x6449656369766564, 0xE800000000000000), (v24 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v22 + 56) + 32 * v23, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100005B14(v29, qword_1006D4630);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "FMAppDelegate: Error playing sound", v32, 2u);
      }

      return;
    }

    v62 = v6;
    v25 = v78;
    v63 = v79;
    aBlock = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    aBlock = 0xD00000000000001ALL;
    v73 = 0x8000000100592C80;
    v61 = v25;
    v26._countAndFlagsBits = v25;
    v26._object = v63;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x79616C703D706F26;
    v27._object = 0xED0000646E756F53;
    String.append(_:)(v27);
    URL.init(string:)();

    v28 = v70;
    if ((*(v70 + 48))(v14, 1, v15) == 1)
    {

      sub_100012DF0(v14, &unk_1006B0120);
      goto LABEL_8;
    }

    v59 = *(v28 + 32);
    v60 = v28 + 32;
    v59(v20, v14, v15);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    v38 = v63;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v58 = v39;
      v57 = v40;
      v42 = v41;
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      v44 = sub_100005B4C(v61, v38, &aBlock);

      *(v42 + 4) = v44;
      v45 = v58;
      _os_log_impl(&_mh_execute_header, v58, v57, "FMAppDelegate: Playing sound on %s", v42, 0xCu);
      sub_100006060(v43);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v61 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v71[1].isa;
    ++v71;
    v63 = isa;
    (isa)(v9, v62);
    v47 = v70;
    (*(v70 + 16))(v18, v20, v15);
    v48 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v49 = swift_allocObject();
    v50 = v64;
    *(v49 + 16) = v64;
    v59((v49 + v48), v18, v15);
    v76 = sub_10036AC7C;
    v77 = v49;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100004AE4;
    v75 = &unk_100638698;
    v51 = _Block_copy(&aBlock);
    v52 = v50;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v53 = v66;
    v54 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v61;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v51);

    (*(v68 + 8))(v53, v54);
    (*(v65 + 8))(v5, v67);
    (v63)(v11, v62);
    (*(v47 + 8))(v20, v15);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v71 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v71, v34, "FMAppDelegate: Cannot read userInfo for play sound notification", v35, 2u);
    }

    v36 = v71;
  }
}

uint64_t sub_100358B70(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v53 = a5;
  v54 = a4;
  v52 = a3;
  v49 = type metadata accessor for FMSelectedSection();
  v6 = __chkstk_darwin(v49);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v49 - v8;
  sub_10007EBC0(&unk_1006AF770);
  inited = swift_initStackObject();
  v55 = xmmword_100552210;
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = v55;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  *(v12 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 56) = v14;
  v15 = [a1 notification];
  v16 = [v15 request];

  v17 = [v16 content];
  v18 = [v17 categoryIdentifier];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v58 = v19;
  v59 = v21;
  v57 = &v58;
  LOBYTE(v18) = sub_10008A40C(sub_10011F7D4, v56, inited);

  if (v18)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v22 = off_1006BE550;
    v23 = *(off_1006BE550 + 2);
    v23[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v24 = v23;
    sub_10041E45C();

    v25 = v22[7];
    v26 = v50;
    swift_storeEnumTagMultiPayload();
    v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v28 = v51;
    sub_100062074(v25 + v27, v51);
    swift_beginAccess();

    sub_100058530(v26, v25 + v27);
    swift_endAccess();
  }

  else
  {
    *&v55 = a1;
    v29 = [a1 notification];
    v30 = [v29 request];

    v31 = [v30 content];
    v32 = [v31 categoryIdentifier];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v58 = v33;
    v59 = v35;
    __chkstk_darwin(v36);
    *(&v49 - 2) = &v58;
    LOBYTE(v33) = sub_10008A40C(sub_1001413D4, (&v49 - 4), v12);
    swift_setDeallocating();
    swift_arrayDestroy();

    if ((v33 & 1) == 0)
    {
      return result;
    }

    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v38 = off_1006BE550;
    v39 = *(off_1006BE550 + 2);
    v39[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v40 = v39;
    sub_10041E45C();

    v41 = v38[7];
    v26 = v50;
    swift_storeEnumTagMultiPayload();
    v42 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v28 = v51;
    sub_100062074(v41 + v42, v51);
    swift_beginAccess();

    sub_100058530(v26, v41 + v42);
    swift_endAccess();
    a1 = v55;
  }

  sub_100058594(v28);

  sub_10005D4E4(v28);
  sub_10005D4E4(v26);
  v43 = [a1 notification];
  v44 = [a1 actionIdentifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  sub_10036B330(v52, v43, v45, v47);

  return v54(v48);
}

uint64_t sub_100359168(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100005B4C(a1, a2, &v19);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100005B4C(a3, a4, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "FMAppDelegate: processUTNotification for beacon %s, action %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  *(*(off_1006BE550 + 2) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding) = 1;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v4;
  v13[5] = a3;
  v13[6] = a4;

  v14 = v4;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceProvider: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v17, 8u);
  }

  FMIPManager.refreshUnknownBeacons(completion:)();
}

void sub_100359450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v4 - 8);
  v42 = (v39 - v5);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = __chkstk_darwin(v6);
  v41 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39[0] = v11;
    v39[1] = v8;
    v18 = v7;
    v19 = v17;
    v45[0] = v17;
    *v16 = 136315138;
    v20 = Dictionary.description.getter();
    v22 = v6;
    v23 = sub_100005B4C(v20, v21, v45);

    *(v16 + 4) = v23;
    v6 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMAppDelegate: processUTPlaySoundNotification for userInfo %s", v16, 0xCu);
    sub_100006060(v19);
    v7 = v18;
    v11 = v39[0];

    v2 = v40;
  }

  v43 = 1684632949;
  v44 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = sub_10004CC50(v45), (v25 & 1) == 0))
  {
    sub_10004CDB8(v45);
    goto LABEL_11;
  }

  sub_100006004(*(a1 + 56) + 32 * v24, v46);
  sub_10004CDB8(v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMAppDelegate: processUTPlaySoundNotification no UUID found", v29, 2u);
    }

    return;
  }

  v26 = v42;
  UUID.init(uuidString:)();

  if ((*(v7 + 6))(v26, 1, v6) == 1)
  {
    sub_100012DF0(v26, &unk_1006B20C0);
    goto LABEL_11;
  }

  v30 = v26;
  v31 = *(v7 + 4);
  v31(v11, v30, v6);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v42 = v7;
  v32 = v41;
  (*(v7 + 2))(v41, v11, v6);
  v33 = (v7[80] + 24) & ~v7[80];
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  v31((v34 + v33), v32, v6);

  v35 = v2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMDeviceProvider: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v38, 8u);
  }

  FMIPManager.refreshUnknownBeacons(completion:)();

  v42[1](v11, v6);
}

void sub_1003599E4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v2 - 8);
  v69 = v2;
  __chkstk_darwin(v2);
  v66 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v5 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchTime();
  v71 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v56[-v10];
  v12 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v12 - 8);
  v14 = &v56[-v13];
  v15 = type metadata accessor for URL();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v56[-v19];
  v21 = sub_100362454(a1);
  if (v21)
  {
    v22 = v21;
    if (!*(v21 + 16) || (v23 = sub_10000726C(1684632949, 0xE400000000000000), (v24 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v22 + 56) + 32 * v23, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100005B14(v29, qword_1006D4630);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "FMAppDelegate: Error handling low battery", v32, 2u);
      }

      return;
    }

    v62 = v6;
    v25 = v78;
    v63 = v79;
    aBlock = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    aBlock = 0xD000000000000018;
    v73 = 0x8000000100592CA0;
    v61 = v25;
    v26._countAndFlagsBits = v25;
    v26._object = v63;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x42776F6C3D706F26;
    v27._object = 0xEE00797265747461;
    String.append(_:)(v27);
    URL.init(string:)();

    v28 = v70;
    if ((*(v70 + 48))(v14, 1, v15) == 1)
    {

      sub_100012DF0(v14, &unk_1006B0120);
      goto LABEL_8;
    }

    v59 = *(v28 + 32);
    v60 = v28 + 32;
    v59(v20, v14, v15);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100005B14(v37, qword_1006D4630);
    v38 = v63;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v58 = v39;
      v57 = v40;
      v42 = v41;
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      v44 = sub_100005B4C(v61, v38, &aBlock);

      *(v42 + 4) = v44;
      v45 = v58;
      _os_log_impl(&_mh_execute_header, v58, v57, "FMAppDelegate: Handle Low battery for %s", v42, 0xCu);
      sub_100006060(v43);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v61 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v71[1].isa;
    ++v71;
    v63 = isa;
    (isa)(v9, v62);
    v47 = v70;
    (*(v70 + 16))(v18, v20, v15);
    v48 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v49 = swift_allocObject();
    v50 = v64;
    *(v49 + 16) = v64;
    v59((v49 + v48), v18, v15);
    v76 = sub_10036E184;
    v77 = v49;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_100004AE4;
    v75 = &unk_1006387D8;
    v51 = _Block_copy(&aBlock);
    v52 = v50;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v53 = v66;
    v54 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v61;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v51);

    (*(v68 + 8))(v53, v54);
    (*(v65 + 8))(v5, v67);
    (v63)(v11, v62);
    (*(v47 + 8))(v20, v15);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100005B14(v33, qword_1006D4630);
    v71 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v71, v34, "FMAppDelegate: Cannot read userInfo for low battery notification", v35, 2u);
    }

    v36 = v71;
  }
}

void sub_10035A364(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v93 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for DispatchTime();
  v90 = *(v96 - 8);
  v7 = __chkstk_darwin(v96);
  v9 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v95 = &v79[-v10];
  v11 = type metadata accessor for URL();
  v97 = *(v11 - 8);
  v12 = *(v97 + 64);
  v13 = __chkstk_darwin(v11);
  v14 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v89 = &v79[-v15];
  v16 = sub_10007EBC0(&unk_1006B0120);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v79[-v21];
  __chkstk_darwin(v20);
  v98 = &v79[-v23];
  v24 = sub_100362454(a1);
  if (v24)
  {
    v25 = v24;
    if (*(v24 + 16))
    {
      v88 = v1;
      v26 = sub_10000726C(1684632949, 0xE400000000000000);
      if (v27)
      {
        v86 = v4;
        sub_100006004(*(v25 + 56) + 32 * v26, &aBlock);
        if (swift_dynamicCast())
        {
          v85 = v105;
          v87 = v106;
          (*(v97 + 56))(v98, 1, 1, v11);
          if (*(v25 + 16))
          {
            v28 = sub_10000726C(0x49555570756F7267, 0xE900000000000044);
            if (v29)
            {
              sub_100006004(*(v25 + 56) + 32 * v28, &aBlock);

              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_28:
                v50 = v87;
                if (qword_1006AEBE0 != -1)
                {
                  swift_once();
                }

                v51 = type metadata accessor for Logger();
                sub_100005B14(v51, qword_1006D4630);

                v52 = Logger.logObject.getter();
                v53 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v52, v53))
                {
                  v54 = swift_slowAlloc();
                  v84 = v3;
                  v55 = v54;
                  v56 = swift_slowAlloc();
                  aBlock = v56;
                  *v55 = 136315138;
                  *(v55 + 4) = sub_100005B4C(v85, v87, &aBlock);
                  _os_log_impl(&_mh_execute_header, v52, v53, "FMAppDelegate: Handle Local Notify When Found for %s", v55, 0xCu);
                  sub_100006060(v56);
                  v50 = v87;

                  v3 = v84;
                }

                v41 = v98;
                aBlock = 0;
                v100 = 0xE000000000000000;
                _StringGuts.grow(_:)(50);

                aBlock = 0xD000000000000018;
                v100 = 0x8000000100592CA0;
                v57._countAndFlagsBits = v85;
                v57._object = v50;
                String.append(_:)(v57);

                v58 = 0x8000000100592CC0;
                v59 = 0xD000000000000018;
                goto LABEL_33;
              }

              v30 = v106;
              v31 = HIBYTE(v106) & 0xF;
              if ((v106 & 0x2000000000000000) == 0)
              {
                v31 = v105 & 0xFFFFFFFFFFFFLL;
              }

              if (v31)
              {
                v83 = v105;
                if (qword_1006AEBE0 != -1)
                {
                  swift_once();
                }

                v32 = type metadata accessor for Logger();
                sub_100005B14(v32, qword_1006D4630);

                v33 = Logger.logObject.getter();
                v34 = static os_log_type_t.default.getter();
                v35 = v30;
                v36 = v34;
                v84 = v35;

                if (os_log_type_enabled(v33, v36))
                {
                  v37 = swift_slowAlloc();
                  v82 = v33;
                  v38 = v37;
                  v81 = swift_slowAlloc();
                  aBlock = v81;
                  *v38 = 136315394;
                  *(v38 + 4) = sub_100005B4C(v85, v87, &aBlock);
                  *(v38 + 12) = 2080;
                  v80 = v36;
                  v39 = v83;
                  *(v38 + 14) = sub_100005B4C(v83, v84, &aBlock);
                  _os_log_impl(&_mh_execute_header, v82, v80, "FMAppDelegate: Handle Local Notify When Found for %s of group %s", v38, 0x16u);
                  v40 = v39;
                  swift_arrayDestroy();

                  v41 = v98;
                }

                else
                {

                  v41 = v98;
                  v40 = v83;
                }

                aBlock = 0;
                v100 = 0xE000000000000000;
                _StringGuts.grow(_:)(48);

                aBlock = 0xD00000000000001ALL;
                v100 = 0x8000000100592C80;
                v76._countAndFlagsBits = v40;
                v76._object = v84;
                String.append(_:)(v76);

                v77._countAndFlagsBits = 0x3D64497472617026;
                v77._object = 0xE800000000000000;
                String.append(_:)(v77);
                v78._countAndFlagsBits = v85;
                v78._object = v87;
                String.append(_:)(v78);

                v59 = 0x69746F6E3D706F26;
                v58 = 0xEA00000000007966;
LABEL_33:
                String.append(_:)(*&v59);
                URL.init(string:)();

                sub_100012DF0(v41, &unk_1006B0120);
                sub_100035318(v22, v41, &unk_1006B0120);
                sub_100007204(v41, v19, &unk_1006B0120);
                v60 = v97;
                if ((*(v97 + 48))(v19, 1, v11) == 1)
                {
                  sub_100012DF0(v19, &unk_1006B0120);
                  if (qword_1006AEBE0 != -1)
                  {
                    swift_once();
                  }

                  v61 = type metadata accessor for Logger();
                  sub_100005B14(v61, qword_1006D4630);
                  v62 = Logger.logObject.getter();
                  v63 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v62, v63))
                  {
                    v64 = swift_slowAlloc();
                    *v64 = 0;
                    _os_log_impl(&_mh_execute_header, v62, v63, "FMAppDelegate: Unable to construct landing URL for local notify when found", v64, 2u);
                  }

                  v65 = v41;
                }

                else
                {
                  v85 = *(v60 + 32);
                  v66 = v89;
                  v85(v89, v19, v11);
                  sub_10000905C(0, &qword_1006AEDC0);
                  v87 = static OS_dispatch_queue.main.getter();
                  static DispatchTime.now()();
                  + infix(_:_:)();
                  v90 = *(v90 + 8);
                  (v90)(v9, v96);
                  (*(v60 + 16))(v14, v66, v11);
                  v67 = (*(v60 + 80) + 24) & ~*(v60 + 80);
                  v68 = swift_allocObject();
                  v69 = v88;
                  *(v68 + 16) = v88;
                  v85((v68 + v67), v14, v11);
                  v103 = sub_10036E184;
                  v104 = v68;
                  aBlock = _NSConcreteStackBlock;
                  v100 = 1107296256;
                  v101 = sub_100004AE4;
                  v102 = &unk_100638828;
                  v70 = _Block_copy(&aBlock);
                  v71 = v69;

                  v72 = v91;
                  static DispatchQoS.unspecified.getter();
                  aBlock = _swiftEmptyArrayStorage;
                  sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
                  sub_10007EBC0(&unk_1006B0640);
                  sub_100037970();
                  v73 = v93;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v74 = v95;
                  v75 = v87;
                  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                  _Block_release(v70);

                  (*(v86 + 8))(v73, v3);
                  (*(v92 + 8))(v72, v94);
                  (v90)(v74, v96);
                  (*(v60 + 8))(v66, v11);
                  v65 = v98;
                }

                sub_100012DF0(v65, &unk_1006B0120);
                return;
              }
            }
          }

          goto LABEL_28;
        }
      }
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "FMAppDelegate: Error handling local notify when found", v45, 2u);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100005B14(v46, qword_1006D4630);
    v98 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v98, v47, "FMAppDelegate: Cannot read userInfo for local notify when found", v48, 2u);
    }

    v49 = v98;
  }
}

void sub_10035B140(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v65 = &v55[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v5 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchTime();
  v70 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v55[-v10];
  v12 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = type metadata accessor for URL();
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v20 = &v55[-v19];
  v21 = sub_100362454(a1);
  if (v21)
  {
    v22 = v21;
    if (!*(v21 + 16) || (v23 = sub_10000726C(0x754E6C6169726573, 0xEC0000007265626DLL), (v24 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v22 + 56) + 32 * v23, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100005B14(v28, qword_1006D4630);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "FMAppDelegate: Error handling notifyWhenDetached notification", v31, 2u);
      }

      return;
    }

    v61 = v6;
    v25 = v77;
    v62 = v78;
    aBlock = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    aBlock = 0xD000000000000019;
    v72 = 0x8000000100592CE0;
    v60 = v25;
    v26._countAndFlagsBits = v25;
    v26._object = v62;
    String.append(_:)(v26);
    URL.init(string:)();

    v27 = v69;
    if ((*(v69 + 48))(v14, 1, v15) == 1)
    {

      sub_100012DF0(v14, &unk_1006B0120);
      goto LABEL_8;
    }

    v58 = *(v27 + 32);
    v59 = v27 + 32;
    v58(v20, v14, v15);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100005B14(v36, qword_1006D4630);
    v37 = v62;

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v57 = v38;
      v56 = v39;
      v41 = v40;
      v42 = swift_slowAlloc();
      aBlock = v42;
      *v41 = 136315138;
      v43 = sub_100005B4C(v60, v37, &aBlock);

      *(v41 + 4) = v43;
      v44 = v57;
      _os_log_impl(&_mh_execute_header, v57, v56, "FMAppDelegate: Handling notifyWhenDetached notification for %s", v41, 0xCu);
      sub_100006060(v42);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0);
    v60 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v70[1].isa;
    ++v70;
    v62 = isa;
    (isa)(v9, v61);
    v46 = v69;
    (*(v69 + 16))(v18, v20, v15);
    v47 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v48 = swift_allocObject();
    v49 = v63;
    *(v48 + 16) = v63;
    v58((v48 + v47), v18, v15);
    v75 = sub_10036E184;
    v76 = v48;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_100004AE4;
    v74 = &unk_100638878;
    v50 = _Block_copy(&aBlock);
    v51 = v49;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v52 = v65;
    v53 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v54 = v60;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v50);

    (*(v67 + 8))(v52, v53);
    (*(v64 + 8))(v5, v66);
    (v62)(v11, v61);
    (*(v46 + 8))(v20, v15);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100005B14(v32, qword_1006D4630);
    v70 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v70, v33, "FMAppDelegate: Cannot read userInfo for notifyWhenDetached notification", v34, 2u);
    }

    v35 = v70;
  }
}

uint64_t sub_10035BAAC()
{
  v0 = type metadata accessor for FMSelectedSection();
  v1 = __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v5 = &v9[-v4];
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v6 = *(off_1006BE550 + 7);
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v6 + v7, v3);
  swift_beginAccess();

  sub_100058530(v5, v6 + v7);
  swift_endAccess();
  sub_100058594(v3);

  sub_10005D4E4(v3);
  return sub_10005D4E4(v5);
}

uint64_t sub_10035BC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t (*a14)(void), uint64_t a15)
{
  v154 = a8;
  v155 = a4;
  v158 = a14;
  v159 = a15;
  v156 = a13;
  v157 = a12;
  v153 = a9;
  v21 = sub_10007EBC0(&unk_1006B0000);
  v22 = __chkstk_darwin(v21 - 8);
  v141 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v145 = &v140 - v25;
  __chkstk_darwin(v24);
  v143 = &v140 - v26;
  v27 = sub_10007EBC0(&unk_1006BEF80);
  v28 = __chkstk_darwin(v27 - 8);
  v146 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v147 = &v140 - v30;
  v31 = type metadata accessor for FMFLocationAlert();
  v148 = *(v31 - 8);
  v149 = v31;
  v32 = __chkstk_darwin(v31);
  v144 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v140 - v34;
  v36 = type metadata accessor for FriendshipExpiration();
  v150 = *(v36 - 8);
  v151 = v36;
  __chkstk_darwin(v36);
  v152 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = a1;
  v38 = [a1 actionIdentifier];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v160 = v40;

  v142 = a2;
  v41 = a2;
  v42 = a3;
  if (!a3)
  {
    v41 = v155;
    v42 = a5;
    if (!a5)
    {
      v42 = a7;
      if (!a7)
      {
        a6 = v154;
        v42 = v153;
        if (!v153)
        {

          a6 = a10;
          v42 = a11;
        }
      }

      v41 = a6;
    }
  }

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v160;
  if (v43 == v39 && v44 == v160)
  {

LABEL_13:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100005B14(v48, qword_1006D4630);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "FMAppDelegate: Default action", v51, 2u);
    }

    goto LABEL_18;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v47 = v42;
  if (v46)
  {
    goto LABEL_13;
  }

  if (v39 == 0x43415F4552414853 && v45 == 0xEF44495F4E4F4954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_18:

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100005B14(v52, qword_1006D4630);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "FMAppDelegate: Share push action", v55, 2u);
    }

    sub_10035E03C(v156);
    return v158();
  }

  if (v42)
  {
    if (v39 == 0xD000000000000018 && 0x800000010057C0B0 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v57 = qword_1006AEBE0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100005B14(v58, qword_1006D4630);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "FMAppDelegate: Share for one hour", v61, 2u);
      }

      sub_10007EBC0(&unk_1006AF770);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_100552220;
      *(v62 + 32) = v41;
      *(v62 + 40) = v42;
      (*(v150 + 104))(v152, enum case for FriendshipExpiration.oneHour(_:), v151);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v63 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v64 = swift_allocObject();
      v64[2] = v41;
      v64[3] = v42;
      v65 = v159;
      v64[4] = v158;
      v64[5] = v65;

      v66 = sub_10036E180;
LABEL_39:
      sub_1000FB600(v63, v66, v64);
    }

    if (v39 == 0xD000000000000013 && 0x800000010057C120 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v67 = qword_1006AEBE0;

      if (v67 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100005B14(v68, qword_1006D4630);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "FMAppDelegate: Share EOD action", v71, 2u);
      }

      sub_10007EBC0(&unk_1006AF770);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100552220;
      *(v72 + 32) = v41;
      *(v72 + 40) = v42;
      (*(v150 + 104))(v152, enum case for FriendshipExpiration.endOfDay(_:), v151);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v63 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v64 = swift_allocObject();
      v64[2] = v41;
      v64[3] = v42;
      v64[4] = v158;
      v64[5] = v159;

      v66 = sub_10036DE80;
      goto LABEL_39;
    }

    if (v39 == 0xD00000000000001CLL && 0x800000010057C190 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v73 = qword_1006AEBE0;

      if (v73 != -1)
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
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "FMAppDelegate: Share Indefinitely action", v77, 2u);
      }

      sub_10007EBC0(&unk_1006AF770);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_100552220;
      *(v78 + 32) = v41;
      *(v78 + 40) = v42;
      (*(v150 + 104))(v152, enum case for FriendshipExpiration.forever(_:), v151);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v63 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v64 = swift_allocObject();
      v64[2] = v41;
      v64[3] = v42;
      v64[4] = v158;
      v64[5] = v159;

      v66 = sub_10036E180;
      goto LABEL_39;
    }
  }

  if (v39 == 0xD000000000000010 && 0x800000010057BFD0 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_100005B14(v79, qword_1006D4630);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v82 = os_log_type_enabled(v80, v81);
    v84 = v153;
    v83 = v154;
    if (v82)
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "FMAppDelegate: Accept invite action", v85, 2u);
    }

    if (!v84)
    {
      goto LABEL_72;
    }

    type metadata accessor for FMFRespondToInviteAction();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v86 = FMFRespondToInviteAction.init(friendId:accepted:)();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v87 = swift_allocObject();
    v87[2] = v83;
    v87[3] = v84;
    v87[4] = v158;
    v87[5] = v159;

    v88 = sub_10036DE58;
LABEL_71:
    sub_1000FB600(v86, v88, v87);

LABEL_72:
  }

  if (v39 == 0xD000000000000011 && 0x800000010057C040 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100005B14(v89, qword_1006D4630);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    v92 = os_log_type_enabled(v90, v91);
    v94 = v153;
    v93 = v154;
    if (v92)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "FMAppDelegate: Decline invite action", v95, 2u);
    }

    if (!v94)
    {
      goto LABEL_72;
    }

    type metadata accessor for FMFRespondToInviteAction();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v86 = FMFRespondToInviteAction.init(friendId:accepted:)();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v87 = swift_allocObject();
    v87[2] = v93;
    v87[3] = v94;
    v87[4] = v158;
    v87[5] = v159;

    v88 = sub_10036DE30;
    goto LABEL_71;
  }

  if (!v42)
  {
    goto LABEL_115;
  }

  if (v39 == 0xD000000000000019 && 0x800000010057C360 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v96 = swift_allocObject();
    v96[2] = v41;
    v96[3] = v42;
    v98 = v157;
    v97 = v158;
    v96[4] = v157;
    v96[5] = v97;
    v96[6] = v159;
    v99 = qword_1006AEC80;
    swift_bridgeObjectRetain_n();

    v100 = v98;
    if (v99 != -1)
    {
      swift_once();
    }

    v101 = v147;
    sub_1000BD790(v41, v42, v147);

    v103 = v148;
    v102 = v149;
    if ((*(v148 + 48))(v101, 1, v149) != 1)
    {
      (*(v103 + 32))(v35, v101, v102);
      sub_10036C79C(v35, v41, v47, v158, v159);

      swift_bridgeObjectRelease_n();

      return (*(v103 + 8))(v35, v102);
    }

    sub_100012DF0(v101, &unk_1006BEF80);
    v104 = swift_allocObject();
    v104[2] = v100;
    v104[3] = v41;
    v104[4] = v47;
    v104[5] = sub_10036DDA8;
    v105 = v158;
    v104[6] = v96;
    v104[7] = v105;
    v104[8] = v159;

    v106 = v100;

    sub_1000BEA00(sub_10036DE04, v104);

    goto LABEL_94;
  }

  if (v39 == 0xD00000000000001ALL && 0x800000010057C3F0 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v107 = swift_allocObject();
    v107[2] = v41;
    v107[3] = v42;
    v109 = v157;
    v108 = v158;
    v107[4] = v157;
    v107[5] = v108;
    v107[6] = v159;
    v110 = qword_1006AEC80;
    swift_bridgeObjectRetain_n();

    v111 = v109;
    if (v110 != -1)
    {
      swift_once();
    }

    v112 = v146;
    sub_1000BD790(v41, v47, v146);

    v114 = v148;
    v113 = v149;
    if ((*(v148 + 48))(v112, 1, v149) != 1)
    {
      v118 = v144;
      (*(v114 + 32))(v144, v112, v113);
      sub_10036CE04(v118, v41, v47, v158, v159);

      swift_bridgeObjectRelease_n();

      return (*(v114 + 8))(v118, v113);
    }

    sub_100012DF0(v112, &unk_1006BEF80);
    v115 = swift_allocObject();
    v115[2] = v111;
    v115[3] = v41;
    v115[4] = v47;
    v115[5] = sub_10036DD44;
    v116 = v158;
    v115[6] = v107;
    v115[7] = v116;
    v115[8] = v159;

    v117 = v111;

    sub_1000BEA00(sub_10036E188, v115);

LABEL_94:
  }

  if ((v39 != 0xD000000000000017 || 0x800000010057C4A0 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_115:
    if (v39 == 0xD000000000000017 && 0x800000010057C530 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_10036D19C(v156);
    }

    else
    {
      if ((v39 != 0xD00000000000001ALL || 0x800000010057C4E0 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v128 = type metadata accessor for Logger();
        sub_100005B14(v128, qword_1006D4630);
        v129 = v140;
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = 138412290;
          *(v132 + 4) = v129;
          *v133 = v129;
          v134 = v129;
          _os_log_impl(&_mh_execute_header, v130, v131, "FMAppDelegate: Unhandled notification response %@", v132, 0xCu);
          sub_100012DF0(v133, &unk_1006AF760);
        }

        return v158();
      }

      sub_10036D7D0(v156);
    }

    goto LABEL_72;
  }

  v119 = qword_1006AEBE0;

  if (v119 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  sub_100005B14(v120, qword_1006D4630);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "FMAppDelegate: Mute Geofence action", v123, 2u);
  }

  v124 = [objc_opt_self() endDateForMuteTimespan:1];
  if (v124)
  {
    v125 = v124;
    v126 = v145;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = type metadata accessor for Date();
    (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  }

  else
  {
    v135 = type metadata accessor for Date();
    (*(*(v135 - 8) + 56))(v145, 1, 1, v135);
  }

  v136 = v143;
  sub_100035318(v145, v143, &unk_1006B0000);
  sub_100007204(v136, v141, &unk_1006B0000);
  type metadata accessor for FMFMuteFencesAction();
  swift_allocObject();
  v137 = FMFMuteFencesAction.init(friendId:endDate:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v138 = swift_allocObject();
  v138[2] = v142;
  v138[3] = a3;
  v139 = v159;
  v138[4] = v158;
  v138[5] = v139;

  sub_1000FB600(v137, sub_10036DD38, v138);

  return sub_100012DF0(v143, &unk_1006B0000);
}
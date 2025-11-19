uint64_t specialized Set.startIndex.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

void specialized Set.subscript.getter(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v4 = v13;
      v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v8 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v7 & v8;
        if (((*(a4 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = *(*(a4 + 48) + 8 * v6);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          goto LABEL_15;
        }

        v7 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v11 = *(*(a4 + 48) + 8 * v6);

  v12 = v11;
}

uint64_t _s27PhoneCallFlowDelegatePlugin0aB6RecordC10getBuilder04callF07options07appInfoH06localeAC0H0CSo06INCallF0C_AC7OptionsVAA03AppL8Building_p10Foundation6LocaleVtFZTf4nnenn_nAA0plH0C_Tt3g5(void *a1, uint64_t a2, void (**a3)(uint64_t, void (*)(uint64_t, char *, uint64_t)), void *a4)
{
  v301 = a4;
  v297 = a3;
  v293 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v278 = v10 - v9;
  v299 = type metadata accessor for Locale();
  v11 = OUTLINED_FUNCTION_7(v299);
  v294 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v298 = v16 - v15;
  v300 = type metadata accessor for SpeakableString();
  v17 = OUTLINED_FUNCTION_7(v300);
  v295 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v26);
  v285 = &v264 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v264 - v32;
  v34 = type metadata accessor for Date();
  v35 = OUTLINED_FUNCTION_7(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_16_2();
  v41 = v40;
  __chkstk_darwin(v42);
  v44 = &v264 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v46 = OUTLINED_FUNCTION_21(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_9_3();
  v50 = __chkstk_darwin(v49);
  v52 = &v264 - v51;
  __chkstk_darwin(v50);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v53);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v54);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  v57 = __chkstk_darwin(v56);
  v59 = &v264 - v58;
  __chkstk_darwin(v57);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v60);
  v62 = &v264 - v61;
  type metadata accessor for App();
  v289 = a1;
  outlined bridged method (pb) of @objc INCallRecord.providerBundleId.getter(a1);
  v280 = App.__allocating_init(appIdentifier:)();
  specialized AppInfoBuilding.getAppNameIfThirdParty(_:requestedLocale:)(v280, v301);
  if (v63)
  {
    OUTLINED_FUNCTION_94();
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  __swift_storeEnumTagSinglePayload(v62, v64, 1, v300);
  v65 = OUTLINED_FUNCTION_23_37();
  v67 = [v65 v66];
  if (v67)
  {
    v68 = v67;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v69 = *(v37 + 32);
    v69(v33, v41, v34);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v34);
    v69(v44, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v34);
    Date.init()();
    if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  type metadata accessor for DialogCalendar();
  v282 = static DialogCalendar.make(date:)();
  (*(v37 + 8))(v44, v34);
  v76 = OUTLINED_FUNCTION_23_37();
  v78 = [v76 v77];
  v281 = v62;
  v266 = v52;
  v274 = v59;
  if (v78)
  {
    BackingType = INCallRecordTypeGetBackingType();
    switch(BackingType)
    {
      case 2:
        v80 = @"OUTGOING";
        goto LABEL_20;
      case 3:
        v80 = @"MISSED";
        goto LABEL_20;
      case 4:
        v80 = @"RECEIVED";
        goto LABEL_20;
      case 5:
        v80 = @"LATEST";
        goto LABEL_20;
      case 7:
        v80 = @"VOICEMAIL";
        goto LABEL_20;
      case 8:
        v80 = @"RINGING";
        goto LABEL_20;
      case 9:
        v80 = @"IN_PROGRESS";
        goto LABEL_20;
      case 10:
        v80 = @"ON_HOLD";
LABEL_20:
        v82 = v80;
        break;
      default:
        v80 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v81 = v294;
    v83 = v80;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = v294;
  }

  SpeakableString.init(serializedValue:)();
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_94();
  v84 = OUTLINED_FUNCTION_23_37();
  v85 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v84);
  if (v85)
  {
    v86 = v85;
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
  }

  v302[0] = _swiftEmptyArrayStorage;
  v87 = specialized Array.count.getter(v86);
  v88 = 0;
  v265 = 0;
  v294 = v86 & 0xC000000000000001;
  v290 = v86 & 0xFFFFFFFFFFFFFF8;
  v297 = (v81 + 8);
  v301 = _swiftEmptyArrayStorage;
  v292 = _swiftEmptyArrayStorage;
  while (v87 != v88)
  {
    if (v294)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v88 >= *(v290 + 16))
      {
        goto LABEL_130;
      }

      v89 = *(v86 + 8 * v88 + 32);
    }

    v90 = v89;
    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
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
      goto LABEL_137;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v304, v304[3]);
    v92 = v298;
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v304);
    v93 = static PhonePerson.make(phonePerson:options:locale:)(v90, v293 & 2, v92);

    (*v297)(v92, v299);
    ++v88;
    if (v93)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v94 = *(&dword_18 + (v302[0] & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v302[0] & 0xFFFFFFFFFFFFFF8)) >= v94 >> 1)
      {
        OUTLINED_FUNCTION_76(v94);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v292 = v302[0];
      v88 = v91;
    }
  }

  v95 = OUTLINED_FUNCTION_23_37();
  v96 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v95);
  if (v96)
  {
    v97 = v96;
  }

  else
  {
    v97 = _swiftEmptyArrayStorage;
  }

  v98 = specialized Array.count.getter(v97);
  v99 = 0;
  v294 = v295 + 32;
  v100 = v292;
  while (v98 != v99)
  {
    if ((v97 & 0xC000000000000001) != 0)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v99 >= *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_132;
      }

      v101 = *(v97 + 8 * v99 + 32);
    }

    v102 = v101;
    if (__OFADD__(v99, 1))
    {
      goto LABEL_131;
    }

    outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v101);
    OUTLINED_FUNCTION_94();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = v301[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v301 = v109;
    }

    v104 = v301[2];
    v103 = v301[3];
    if (v104 >= v103 >> 1)
    {
      OUTLINED_FUNCTION_76(v103);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v301 = v110;
    }

    v301[2] = v104 + 1;
    OUTLINED_FUNCTION_15_57();
    (*(v107 + 32))(v106 + v105 + *(v107 + 72) * v104, v296);
    ++v99;
  }

  v296 = specialized Array.count.getter(v100);
  if (!v296)
  {
    v111 = 0;
    goto LABEL_55;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v100 & 0xC000000000000001) == 0, v100);
  if ((v100 & 0xC000000000000001) == 0)
  {
    v111 = *(v100 + 32);

    goto LABEL_55;
  }

LABEL_137:
  v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_55:
  static Device.current.getter();
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  v112 = CATWrapper.__allocating_init(options:globals:)();
  v304[0] = v289;
  v304[6] = v112;
  v113 = v289;
  CallRecordDisplayTextComponents.callDateText.getter();
  v115 = v114;
  v116 = v284;
  static CallRecordViewUtils.generateDisplayTime(dateTime:formattedDate:)(v284);

  v117 = v295 + 8;
  v118 = *(v295 + 8);
  v119 = OUTLINED_FUNCTION_25_40(&v305);
  v118(v119);
  v283 = *(v117 + 24);
  v283(v304, v116, v115);
  v284 = v113;
  v120 = INCallRecord.callDuration.getter();
  if ((v121 & 1) == 0)
  {
    v122 = *&v120;
    v123 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v123 setUnitsStyle:0];
    [v123 setAllowedUnits:192];
    [v123 setZeroFormattingBehavior:0x10000];
    v124 = [v123 stringFromTimeInterval:ceil(v122)];
    if (v124)
    {
      v125 = v124;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v126._countAndFlagsBits = 48;
      v126._object = 0xE100000000000000;
      LOBYTE(v125) = String.hasPrefix(_:)(v126);

      if (v125)
      {
        specialized Collection.dropFirst(_:)(1uLL);
        static String._fromSubstring(_:)();
      }
    }
  }

  OUTLINED_FUNCTION_94();
  v127 = OUTLINED_FUNCTION_25_40(&v306);
  v118(v127);
  OUTLINED_FUNCTION_9_76();
  v128();
  v129 = v284;
  if ([v284 callRecordType] != &dword_4 + 1)
  {
    if (![v129 preferredCallProvider])
    {
      v273 = 0xE700000000000000;
      v272 = 0x4E574F4E4B4E55;
      goto LABEL_64;
    }

    v154 = INPreferredCallProviderGetBackingType();
    if (v154 == 4)
    {
      v130 = @"THIRD_PARTY_PROVIDER";
      goto LABEL_62;
    }

    if (v154 == 3)
    {
      v130 = @"FACETIME_PROVIDER";
      goto LABEL_62;
    }

    if (v154 != 2)
    {
      v130 = [NSString stringWithFormat:@"(unknown: %i)", v154];
      goto LABEL_63;
    }
  }

  v130 = @"TELEPHONY_PROVIDER";
LABEL_62:
  v131 = v130;
LABEL_63:
  v132 = v130;
  v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v273 = v133;

LABEL_64:
  v134 = type metadata accessor for PhoneCallRecord.Builder(0);
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  PhoneCallRecord.Builder.init()();
  v137 = v284;
  v138 = [v284 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v139 = v291;
  SpeakableString.init(serializedValue:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v300);
  OUTLINED_FUNCTION_35_0();
  (*(v143 + 856))(v139);
  OUTLINED_FUNCTION_22_36();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v139, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_37();
  v145 = *(v144 + 872);

  v145(v146);
  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_35_0();
  v148 = (*(v147 + 888))(v111);

  v149 = outlined bridged method (pb) of @objc INCallInvite.participants.getter(v137);
  v270 = v111;
  v269 = v117;
  v268 = v118;
  v271 = v148;
  if (v149)
  {
    v150 = v149;
    if (specialized Array.count.getter(v149))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v150 & 0xC000000000000001) == 0, v150);
      if ((v150 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v151 = *(v150 + 32);
      }

      OUTLINED_FUNCTION_40_0();

      v152 = outlined bridged method (ob) of @objc INPerson.alternatives.getter((v150 & 0xC000000000000001));
      if (v152)
      {
        v153 = v152;
      }

      else
      {
        v153 = _swiftEmptyArrayStorage;
      }
    }

    else
    {

      v153 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v153 = _swiftEmptyArrayStorage;
  }

  v279 = _swiftEmptyArrayStorage;
  v303 = _swiftEmptyArrayStorage;
  v155 = specialized Array.count.getter(v153);
  v156 = 0;
  v290 = v153 & 0xC000000000000001;
  v289 = (v153 & 0xFFFFFFFFFFFFFF8);
  v157 = v298;
  while (v155 != v156)
  {
    if (v290)
    {
      v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v156 >= *(v289 + 2))
      {
        goto LABEL_134;
      }

      v158 = *(v153 + 8 * v156 + 32);
    }

    v159 = v158;
    v160 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      goto LABEL_133;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v302, v302[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v302);
    v161 = static PhonePerson.make(phonePerson:options:locale:)(v159, 0, v157);

    (*v297)(v157, v299);
    ++v156;
    if (v161)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v162 = *(&dword_18 + (v303 & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v303 & 0xFFFFFFFFFFFFFF8)) >= v162 >> 1)
      {
        OUTLINED_FUNCTION_76(v162);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v279 = v303;
      v156 = v160;
    }
  }

  (*(*v271 + 904))(v279);
  OUTLINED_FUNCTION_40_0();

  v163 = v295 + 16;
  v164 = v291;
  v165 = v300;
  v299 = *(v295 + 16);
  v299(v291, v285, v300);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v165);
  OUTLINED_FUNCTION_35_0();
  (*(v169 + 912))(v164);
  OUTLINED_FUNCTION_22_36();
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v164, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v170 = v284;
  v171 = INCallRecord.refinedCallDurationAsDouble.getter();
  LOBYTE(v164) = v172;
  type metadata accessor for PhoneCallMetrics();
  if (v164)
  {
    v173 = 0;
  }

  else
  {
    v173 = v171;
  }

  PhoneCallMetrics.__allocating_init(timeToEstablish:duration:)(0, 0, v173, 0);
  OUTLINED_FUNCTION_37();
  v175 = (*(v174 + 928))();

  v176 = INCallRecord.refinedUnseenAsBool.getter();
  (*(*v175 + 944))(v176 & 1);

  if ([v170 callCapability])
  {
    v177 = INCallCapabilityGetBackingType();
    v178 = v276;
    v179 = v275;
    v180 = v274;
    if (v177 == 2)
    {
      v181 = @"VIDEO_CALL";
    }

    else
    {
      if (v177 != 1)
      {
        v181 = [NSString stringWithFormat:@"(unknown: %i)", v177];
        goto LABEL_100;
      }

      v181 = @"AUDIO_CALL";
    }

    v182 = v181;
LABEL_100:
    v183 = v181;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_101;
  }

  v178 = v276;
  v179 = v275;
  v180 = v274;
LABEL_101:
  SpeakableString.init(serializedValue:)();
  v184 = 1;
  OUTLINED_FUNCTION_23_3();
  v185 = v300;
  __swift_storeEnumTagSinglePayload(v186, v187, v188, v300);
  OUTLINED_FUNCTION_35_0();
  (*(v189 + 952))(v180);

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v180, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v190 = INCallRecord.refinedNumberOfCallsAsInt.getter();
  if (v191)
  {
    v190 = 0;
  }

  _sSd7exactlySdSgx_tcSzRzlufCSi_Tt0g5(v190);
  OUTLINED_FUNCTION_26_34();
  v193 = (*(v192 + 968))();

  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v185);
  outlined init with copy of SpeakableString?(v281, v178);
  App.appIdentifier.getter();
  v198 = v277;
  if (v197)
  {
    OUTLINED_FUNCTION_94();
    v184 = 0;
  }

  v199 = v300;
  __swift_storeEnumTagSinglePayload(v198, v184, 1, v300);
  type metadata accessor for PhoneCallProvider(0);
  PhoneCallProvider.__allocating_init(preferredCallProvider:providerName:providerBundleId:)(v179, v178, v198);
  (*(*v193 + 976))();

  INCallRecord.refinedIsCallerIDBlockedAsBool.getter();
  OUTLINED_FUNCTION_26_34();
  (*(v200 + 992))(v201 & 1);
  OUTLINED_FUNCTION_32_25();
  v202 = v291;
  v299(v291, v286, v199);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v199);
  OUTLINED_FUNCTION_35_0();
  (*(v206 + 1016))(v202);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v207 = SpeakableString.print.getter();
  v298 = v163;
  static CallRecordViewUtils.generatedDisplayTextColor(callRecordType:forCallHistoryDisplay:)(v207, v208);

  OUTLINED_FUNCTION_37();
  (*(v209 + 1032))(v202);

  OUTLINED_FUNCTION_4_85();
  v210 = SpeakableString.print.getter();
  static CallRecordViewUtils.generatedDisplaySymbolIcon(callRecordType:forCallHistoryDisplay:)(v210, v211);

  OUTLINED_FUNCTION_26_34();
  (*(v212 + 1048))(v202);
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_4_85();
  static Device.current.getter();
  v213 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedSelectedAction(callRecord:forCallHistoryDisplay:deviceState:)(v213, v214);
  __swift_destroy_boxed_opaque_existential_1(v302);
  OUTLINED_FUNCTION_35_0();
  (*(v215 + 1080))(v202);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v216 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedSelectedActionForVoicemail(callRecord:forCallHistoryDisplay:)(v216, v217);
  OUTLINED_FUNCTION_37();
  (*(v218 + 1096))(v202);
  OUTLINED_FUNCTION_40_0();

  OUTLINED_FUNCTION_4_85();
  v219 = OUTLINED_FUNCTION_29_33();
  static CallRecordViewUtils.generatedActionForOpeningCallRecord(callRecord:forCallHistoryDisplay:)(v219, v220);
  OUTLINED_FUNCTION_35_0();
  (*(v221 + 1112))(v202);
  OUTLINED_FUNCTION_22_36();
  OUTLINED_FUNCTION_4_85();
  v299(v202, v287, v199);
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v199);
  OUTLINED_FUNCTION_37();
  (*(v225 + 1128))(v202);

  OUTLINED_FUNCTION_4_85();
  INCallRecord.refinedCallDurationAsDouble.getter();
  OUTLINED_FUNCTION_26_34();
  (*(v226 + 1168))();
  OUTLINED_FUNCTION_32_25();
  OUTLINED_FUNCTION_35_0();
  v228 = v292;
  v229 = (*(v227 + 1144))(v292);

  v230 = 0;
  v231 = v228 & 0xC000000000000001;
  v232 = v228 & 0xFFFFFFFFFFFFFF8;
  v233 = _swiftEmptyArrayStorage;
  while (v296 != v230)
  {
    if (v231)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v230 >= *(v232 + 16))
      {
        goto LABEL_136;
      }

      v234 = *(v228 + 8 * v230 + 32);
    }

    if (__OFADD__(v230, 1))
    {
      goto LABEL_135;
    }

    v235 = v291;
    dispatch thunk of DialogPerson.toString.getter();
    v236 = v235;
    v237 = v288;
    outlined init with take of SpeakableString?(v236, v288);

    if (__swift_getEnumTagSinglePayload(v237, 1, v300) == 1)
    {
      _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v237, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
      ++v230;
    }

    else
    {
      OUTLINED_FUNCTION_9_76();
      v238();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = v233[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v233 = v245;
      }

      v240 = v233[2];
      v239 = v233[3];
      if (v240 >= v239 >> 1)
      {
        OUTLINED_FUNCTION_76(v239);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v233 = v246;
      }

      v233[2] = v240 + 1;
      OUTLINED_FUNCTION_15_57();
      v242 = *(v241 + 72);
      OUTLINED_FUNCTION_9_76();
      v243();
      ++v230;
    }

    v228 = v292;
  }

  (*(*v229 + 1152))(v233);

  OUTLINED_FUNCTION_35_0();
  v248 = (*(v247 + 1160))(v301);

  if (v293)
  {
    v249 = type metadata accessor for PhoneCallRecord(0);
    v250 = *(v249 + 48);
    v251 = *(v249 + 52);
    swift_allocObject();

    PhoneCallRecord.init(builder:)(v252);
    type metadata accessor for SearchCallHistoryCATs();
    static CATOption.defaultMode.getter();
    CATWrapper.__allocating_init(options:globals:)();
    v253 = v266;
    v254 = v265;
    static CallRecordViewUtils.generatedDisplayName(searchCallHistoryCATs:callRecord:)(v266);
    v255 = v281;
    v256 = v268;
    if (v254)
    {

      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v257, v258, v259, v300);
    }

    v260 = v267;
    (*(*v248 + 1000))(v253);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v253, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_29_33();
    static CallRecordViewUtils.generatedDisplayCallDetail(searchCallHistoryCATs:callRecord:)(v261);
    (*(*v248 + 1064))(v260);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v260, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  }

  else
  {

    v255 = v281;
    v256 = v268;
  }

  outlined destroy of CallRecordDisplayTextComponents(v304);
  v262 = v300;
  v256(v287, v300);
  v256(v286, v262);
  v256(v285, v262);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v255, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  return v248;
}

uint64_t partial apply for specialized thunk for @escaping @callee_guaranteed (@guaranteed TUCallCenter) -> (@out A)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNContactStore(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Set<TUHandle>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id SPHTUBackedCallCapabilities.isAddPersonEnabled.getter()
{
  v0 = objc_opt_self();
  result = [v0 supportsConversations];
  if (result)
  {
    return [v0 isAddPersonEnabled];
  }

  return result;
}

id SPHTUBackedCallCapabilities.isGreenTea.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result isGreenTea];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SPHCallHandleFormatting.normalizedHandle(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 value];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    return 0;
  }

  v12 = [a1 type];
  if (v12 == &dword_0 + 1)
  {
    v17 = [objc_opt_self() normalizedEmailAddressHandleForValue:v7];
  }

  else
  {
    if (v12 == &dword_0 + 2)
    {
      v13 = PNCopyBestGuessCountryCodeForNumber();
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = objc_opt_self();
      }

      else
      {
        v15 = objc_opt_self();
        (*(a3 + 8))(a2, a3);
        if (!v18)
        {
          v19 = 0;
          goto LABEL_16;
        }
      }

      v19 = String._bridgeToObjectiveC()();

LABEL_16:
      v16 = [v15 normalizedPhoneNumberHandleForValue:v7 isoCountryCode:v19];

      return v16;
    }

    v17 = [objc_opt_self() normalizedGenericHandleForValue:v7];
  }

  v16 = v17;

  return v16;
}

uint64_t static SPHCallHandleFormatter.countryCode.getter()
{
  v0 = TUNetworkCountryCode();
  if (!v0)
  {
    v0 = TUHomeCountryCode();
    if (!v0)
    {
      return 0;
    }
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

Swift::Void __swiftcall SpringBoardServicesManager.undimScreen()()
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.siriPhone);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#SpringBoardServicesManager undimed screen.", v3, 2u);
  }

  _SBSUndimScreen();
}

uint64_t ButtonConfigurationModel.init(label:directInvocation:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_12_64(a1, a2, a3);
  [objc_allocWithZone(SABaseCommand) init];
  v5 = type metadata accessor for ButtonConfigurationModel();
  v6 = v5[5];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  CodableAceObject.init(wrappedValue:)();
  *(v4 + v5[8]) = 1;
  v7 = v5[6];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();
  v8 = v5[7];
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1(v9);
  v11 = *(v10 + 32);

  return v11(v4 + v8, v3);
}

uint64_t type metadata accessor for ButtonConfigurationModel()
{
  result = type metadata singleton initialization cache for ButtonConfigurationModel;
  if (!type metadata singleton initialization cache for ButtonConfigurationModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StackedButtonsModel.init(buttonConfiguration:useCase:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_ss23_ContiguousArrayStorageCy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v2 = *(type metadata accessor for ButtonConfigurationModel() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_424FD0;
  outlined init with take of ButtonConfigurationModel(a1, v5 + v4);
  return v5;
}

uint64_t ButtonConfigurationModel.init(label:action:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_12_64(a1, a2, a3);
  v6 = type metadata accessor for ButtonConfigurationModel();
  v7 = v6[5];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v8 = v5;
  CodableAceObject.init(wrappedValue:)();
  v9 = v6[7];
  v10 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3(v10);
  v15 = v11;
  (*(v11 + 16))(v4 + v9, v3, v10);
  *(v4 + v6[8]) = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  v12 = v6[6];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  v13 = *(v15 + 8);

  return v13(v3, v10);
}

uint64_t ButtonConfigurationModel.init(label:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a2;
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = [objc_allocWithZone(SAUIAppPunchOut) init];
  URL.init(string:)();

  v19 = type metadata accessor for URL();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) != 1)
  {
    URL._bridgeToObjectiveC()(v20);
    v21 = v22;
    (*(*(v19 - 8) + 8))(v17, v19);
  }

  [v18 setPunchOutUri:v21];

  v23 = v18;
  UUID.init()();
  UUID.uuidString.getter();
  v36 = *(v8 + 8);
  v24 = OUTLINED_FUNCTION_5_26();
  v25(v24);
  v26 = OUTLINED_FUNCTION_8_33();
  outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(v26, v27, v23);

  v28 = v23;
  UUID.init()();
  v29 = v37;
  *a3 = a1;
  *(a3 + 1) = v29;
  v30 = type metadata accessor for ButtonConfigurationModel();
  v31 = v30[5];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  v32 = v28;
  CodableAceObject.init(wrappedValue:)();
  (*(v8 + 16))(&a3[v30[7]], v13, v5);
  a3[v30[8]] = 0;
  [objc_allocWithZone(SAIntentGroupRunSiriKitExecutor) init];
  v33 = v30[6];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  CodableAceObject.init(wrappedValue:)();

  v34 = OUTLINED_FUNCTION_5_26();
  return v36(v34);
}

uint64_t StackedButtonsModel.shouldHideSnippet(on:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for DeviceIdiom();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = *(v7 + 104);
  v13(v11 - v10, enum case for DeviceIdiom.car(_:), v4);
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(&lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, &type metadata accessor for DeviceIdiom);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v12, v4);
  if (v14)
  {
    goto LABEL_2;
  }

  if (a3 != 1)
  {
    v16 = 0;
    return v16 & 1;
  }

  v13(v12, enum case for DeviceIdiom.watch(_:), v4);
  v17 = static DeviceIdiom.== infix(_:_:)();
  v15(v12, v4);
  if (v17)
  {
LABEL_2:
    v16 = 1;
  }

  else
  {
    v13(v12, enum case for DeviceIdiom.mac(_:), v4);
    v16 = static DeviceIdiom.== infix(_:_:)();
    v15(v12, v4);
  }

  return v16 & 1;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.action()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.action.getter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t ButtonConfigurationModel.action.setter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*ButtonConfigurationModel.action.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for ButtonConfigurationModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t property wrapper backing initializer of ButtonConfigurationModel.directInvocation()
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);

  return CodableAceObject.init(wrappedValue:)();
}

uint64_t ButtonConfigurationModel.directInvocation.getter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t ButtonConfigurationModel.directInvocation.setter()
{
  v0 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*ButtonConfigurationModel.directInvocation.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for ButtonConfigurationModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v2[4] = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t ButtonConfigurationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ButtonConfigurationModel() + 28);
  v4 = type metadata accessor for UUID();
  v5 = OUTLINED_FUNCTION_23_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ButtonConfigurationModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000000004616C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000000461D50 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t ButtonConfigurationModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C6562616CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ButtonConfigurationModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ButtonConfigurationModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ButtonConfigurationModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ButtonConfigurationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_17_17();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v28 = type metadata accessor for ButtonConfigurationModel();
    v14 = v28[5];
    v15 = OUTLINED_FUNCTION_8_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_2_115(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v28[6];
    v18 = OUTLINED_FUNCTION_8_33();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_2_115(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v28[7];
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_1_120();
    lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(v21, v22);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(v3 + v28[8]);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v24 = *(v7 + 8);
  v25 = OUTLINED_FUNCTION_5_26();
  return v26(v25);
}

uint64_t ButtonConfigurationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v59 = type metadata accessor for UUID();
  v4 = OUTLINED_FUNCTION_7(v59);
  v55 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v52 = v9 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_7(v58);
  v54 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  v53 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  OUTLINED_FUNCTION_7(v15);
  v56 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v19);
  v21 = v49 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7(v61);
  v57 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_17_17();
  v26 = type metadata accessor for ButtonConfigurationModel();
  v27 = OUTLINED_FUNCTION_23_1(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_4();
  v32 = (v31 - v30);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys();
  v60 = v2;
  v34 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v21;
  v36 = v58;
  v62 = v26;
  v50 = v15;
  v37 = v59;
  v67 = 0;
  *v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v32[1] = v38;
  v49[2] = v38;
  v66 = 1;
  OUTLINED_FUNCTION_3_111(&lazy protocol witness table cache variable for type CodableAceObject<SABaseCommand> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo13SABaseCommandCGMR);
  v39 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v56 + 32))(v32 + v62[5], v35, v39);
  v65 = 2;
  OUTLINED_FUNCTION_3_111(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v40 = v53;
  v49[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v32;
  (*(v54 + 32))(v32 + v62[6], v40, v36);
  v64 = 3;
  OUTLINED_FUNCTION_1_120();
  lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(v42, v43);
  v44 = v52;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v55 + 32))(v41 + v62[7], v44, v37);
  v63 = 4;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = OUTLINED_FUNCTION_9_77();
  v47(v46);
  *(v41 + v62[8]) = v45 & 1;
  outlined init with copy of ButtonConfigurationModel(v41, v51);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of ButtonConfigurationModel(v41);
}

PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional __swiftcall StackedButtonsModel.UseCase.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StackedButtonsModel.UseCase.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t StackedButtonsModel.UseCase.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C6143724F646461;
  }

  if (a1 == 1)
  {
    return 0x747465536E65706FLL;
  }

  return 0xD000000000000011;
}

PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StackedButtonsModel.UseCase@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StackedButtonsModel::UseCase_optional *a2@<X8>)
{
  result.value = StackedButtonsModel.UseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StackedButtonsModel.UseCase@<X0>(uint64_t *a1@<X8>)
{
  result = StackedButtonsModel.UseCase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StackedButtonsModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000000461D70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t StackedButtonsModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65736143657375;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedButtonsModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StackedButtonsModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedButtonsModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t StackedButtonsModel.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_17_17();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = OUTLINED_FUNCTION_8_33();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_5_26();
  return v15(v14);
}

uint64_t StackedButtonsModel.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin19StackedButtonsModelV10CodingKeys33_681430E2C5A237474B232B789BBEE430LLOGMR);
  OUTLINED_FUNCTION_7(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
  v13[7] = 0;
  lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](&lazy protocol witness table cache variable for type [ButtonConfigurationModel] and conformance <A> [A], &lazy protocol witness table cache variable for type ButtonConfigurationModel and conformance ButtonConfigurationModel);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v14;
  v13[5] = 1;
  lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedButtonsModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedButtonsModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StackedButtonsModel(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return StackedButtonsModel.encode(to:)(a1);
}

void outlined bridged method (mbnn) of @objc SABaseClientBoundCommand.aceId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAceId:v4];
}

unint64_t lazy protocol witness table accessor for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonConfigurationModel.CodingKeys and conformance ButtonConfigurationModel.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of ButtonConfigurationModel(uint64_t a1)
{
  v2 = type metadata accessor for ButtonConfigurationModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.CodingKeys and conformance StackedButtonsModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase()
{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase;
  if (!lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedButtonsModel.UseCase and conformance StackedButtonsModel.UseCase);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [ButtonConfigurationModel] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMd, &_sSay27PhoneCallFlowDelegatePlugin24ButtonConfigurationModelVGMR);
    lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(a2, type metadata accessor for ButtonConfigurationModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DeviceIdiom and conformance DeviceIdiom(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for StackedButtonsModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StackedButtonsModel and conformance StackedButtonsModel();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for ButtonConfigurationModel()
{
  type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SABaseCommand>, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseCommand>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CodableAceObject<SABaseCommand>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for CNContactStore(255, a3, a4);
    v5 = type metadata accessor for CodableAceObject();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for StackedButtonsModel.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackedButtonsModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonConfigurationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t StartAudioCallAceViewProvider.__allocating_init(templatingService:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return StartAudioCallAceViewProvider.init(templatingService:sharedGlobals:)(a1, a2);
}

uint64_t StartAudioCallAceViewProvider.init(templatingService:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  *(v2 + direct field offset for StartAudioCallAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a2, v2 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals);
  v4 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v4;
}

uint64_t StartAudioCallAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v19).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contact)
  {
    v33 = a7;
    v32 = direct field offset for StartAudioCallAceViewProvider.sharedGlobals;
    type metadata accessor for PhoneCallDisplayTextCATs();
    static CATOption.defaultMode.getter();
    v31 = CATWrapper.__allocating_init(options:globals:)();
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder", v23, 2u);
    }

    outlined init with copy of SignalProviding(v34 + v32, v37);
    v35[0] = a1;
    v35[1] = a4;
    v35[2] = a2;
    v35[3] = a3;
    v35[4] = a6;
    v36 = v33 & 1;
    v37[5] = v31;

    v24 = a4;

    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a8, a9);
    return outlined destroy of DefaultDisambiguationBuilder<INStartAudioCallIntent>(v35);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.siriPhone);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Not disambiguating contact - not building a disambiguation snippet", v29, 2u);
    }

    if (a5 >> 62)
    {
      type metadata accessor for SAAceView();

      v30 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SAAceView();
      v30 = a5;
    }

    a8(v30, 0);
  }
}

uint64_t StartAudioCallAceViewProvider.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for StartAudioCallAceViewProvider.templatingService);

  v2 = (v0 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t StartAudioCallAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();
  v1 = *(v0 + direct field offset for StartAudioCallAceViewProvider.templatingService);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallAceViewProvider.sharedGlobals));
  return v0;
}

uint64_t StartAudioCallAceViewProvider.__deallocating_deinit()
{
  StartAudioCallAceViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INStartAudioCallIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo012INStartAudioB6IntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartAudioCallAceViewProvider()
{
  result = type metadata singleton initialization cache for StartAudioCallAceViewProvider;
  if (!type metadata singleton initialization cache for StartAudioCallAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartAudioCallCatTemplatingService.__allocating_init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v9 = OUTLINED_FUNCTION_28_4(v8);
  v10(v9);
  OUTLINED_FUNCTION_2_116();
  v11 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_65();
}

void StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_29_1();
  v1 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_9_1();
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v6 = OUTLINED_FUNCTION_28_4(v5);
  v7(v6);
  OUTLINED_FUNCTION_2_116();
  v8 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallCatTemplatingService.slotTemplating(for:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_35_0();
      v10 = OUTLINED_FUNCTION_11_5(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v10, v29);
      OUTLINED_FUNCTION_7_2(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin29DestinationTypeSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_35_0();
      v6 = OUTLINED_FUNCTION_11_5(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v6, v29);
      OUTLINED_FUNCTION_7_2(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      specialized SlotTemplating.toAnySlotTemplating()();

      v7 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin09PreferredB22ProviderSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
LABEL_5:
      v11 = v29;
LABEL_8:
      result = _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v11, v7, v8);
      v21 = v3[1];
      *a2 = *v3;
      a2[1] = v21;
      v22 = v3[3];
      a2[2] = v3[2];
      a2[3] = v22;
      return result;
    case 4:
      OUTLINED_FUNCTION_35_0();
      v13 = OUTLINED_FUNCTION_11_5(v12 + class metadata base offset for PhoneCallBaseCatTemplatingService);
      outlined init with copy of SignalProviding(v13, v28);
      v14 = *(v2 + direct field offset for StartAudioCallCatTemplatingService.catFamily);

      v15 = DucTemplatingService.locale.getter();
      v17 = v16;
      v18 = type metadata accessor for AppInfoBuilder();
      v19 = swift_allocObject();
      v28[11] = v18;
      v28[12] = &protocol witness table for AppInfoBuilder;
      v28[5] = v14;
      v28[6] = v15;
      v28[7] = v17;
      v28[8] = v19;
      v3 = v29;
      specialized SlotTemplating.toAnySlotTemplating()();
      v7 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMd;
      v8 = &_s27PhoneCallFlowDelegatePlugin22ContactsSlotTemplatingVySo012INStartAudioB6IntentCSo16INIntentResponseCGMR;
      v11 = v28;
      goto LABEL_8;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000004FLL, 0x8000000000461EC0, v28);
    _os_log_impl(&dword_0, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void StartAudioCallCatTemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v56 = v3;
  v57 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v58 = &v50 - v10;
  v62 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  v54 = v5;
  v19 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v5);
  v55 = v12;
  if (v19)
  {
    v20 = v19;
    v51 = v1;
    v52 = v7;
    v64 = _swiftEmptyArrayStorage;
    v21 = specialized Array.count.getter(v19);
    v22 = 0;
    v60 = v20 & 0xC000000000000001;
    v61 = v21;
    v59 = v20 & 0xFFFFFFFFFFFFFF8;
    v53 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v61 == v22)
      {

        v1 = v51;
        v7 = v52;
        v27 = v53;
        goto LABEL_15;
      }

      if (v60)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v59 + 16))
        {
          goto LABEL_29;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v63, v63[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v63);
      v26 = static PhonePerson.make(phonePerson:options:locale:)(v24, 0, v18);

      (*(v12 + 8))(v18, v62);
      ++v22;
      if (v26)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v53 = v64;
        v22 = v25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_15:
    type metadata accessor for PhonePersonList.Builder();
    v28 = swift_allocObject();
    *(v28 + 16) = _swiftEmptyArrayStorage;
    v29 = (v28 + 16);
    swift_beginAccess();
    *v29 = v27;
    type metadata accessor for PhonePersonList();
    swift_allocObject();
    v30 = OUTLINED_FUNCTION_40_0();
    v31 = PhonePersonList.init(builder:)(v30);
    v32 = *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
    v33 = v54;
    _s27PhoneCallFlowDelegatePlugin0a5StartB6IntentC6intent21isRelationshipRequestAcA07CallingG0_p_SbtcfCTf4enn_nSo012INStartAudiobG0C_Tt1g5();
    v60 = v34;
    type metadata accessor for SirikitDeviceState();
    v35 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    outlined init with copy of SignalProviding(v35, v63);
    v61 = v31;

    v59 = SirikitDeviceState.__allocating_init(from:)();
    v36 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
    v37 = v36[3];
    v38 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v39 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    (*(v38 + 16))(v7, v18, v37, v38);
    v41 = v40;
    (*(v55 + 8))(v18, v62);
    v42 = v58;
    if (v41)
    {
      SpeakableString.init(print:speak:)();
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v42, v43, 1, v44);
    v45 = App.isFirstParty()();
    v46 = App.appIdentifier.getter();
    if (v47)
    {
      if (v46 == 0xD000000000000010 && v47 == 0x8000000000458F10)
      {
        v49 = 1;
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v49 = 0;
    }

    (*(*v32 + class metadata base offset for StartCallCATs + 1152))(v60, v61, v59, v42, v45, v49 & 1, 0, v57, v56);

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v42, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_65();
  }
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v14._countAndFlagsBits = a2;
  v14._object = a3;
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v15.value, &v17);
  v18(a1, a2, a3, a4, a5, 1, a6, a7);
}

void StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v44 = v2;
  v45 = v3;
  v43 = v4;
  v41 = v5;
  v42 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v40 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v39 - v15;
  OUTLINED_FUNCTION_35_0();
  v18 = (v0 + *(v17 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v20 = v18[3];
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v20);
  OUTLINED_FUNCTION_35_0();
  v22 = (v0 + *(v21 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  v23 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  OUTLINED_FUNCTION_40_0();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v19 + 16))(v41, v12, v20, v19);
  v25 = v24;
  (*(v40 + 8))(v12, v42);
  if (v25)
  {
    SpeakableString.init(print:speak:)();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, v26, 1, v27);
  switch([v43 code])
  {
    case 5uLL:
      OUTLINED_FUNCTION_9_78(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      (*(v28 + class metadata base offset for StartCallCATs + 640))(v16, v44, v45);
      break;
    case 6uLL:
      type metadata accessor for SirikitDeviceState();
      v31 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
      v32 = v31[3];
      v33 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(v33 + 8))(v46, v32, v33);
      SirikitDeviceState.__allocating_init(from:)();
      OUTLINED_FUNCTION_9_78(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      (*(v34 + class metadata base offset for StartCallCATs + 736))();
      goto LABEL_10;
    case 7uLL:
      OUTLINED_FUNCTION_9_78(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      (*(v29 + class metadata base offset for StartCallCATs + 768))(v16, v44, v45);
      break;
    case 8uLL:
      OUTLINED_FUNCTION_9_78(direct field offset for StartAudioCallCatTemplatingService.catFamily);
      (*(v30 + class metadata base offset for StartCallCATs + 832))(v16, v44, v45);
      break;
    default:
      v35 = *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
      type metadata accessor for SirikitDeviceState();
      outlined init with copy of SignalProviding(v22, v46);
      v36 = SirikitDeviceState.__allocating_init(from:)();
      v37 = swift_allocObject();
      *(v37 + 16) = v44;
      *(v37 + 24) = v45;
      v38 = *(*v35 + class metadata base offset for StartCallCATs + 576);

      v38(v36, partial apply for closure #2 in StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:), v37);

LABEL_10:

      break;
  }

  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)()
{
  OUTLINED_FUNCTION_5_6();
  v2._countAndFlagsBits = v1;
  v2._object = v0;
  v3.value = PhoneCallSlotNames.init(rawValue:)(v2).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v3.value, &v7);
  v4 = OUTLINED_FUNCTION_10_7();
  v5(v4);
}

uint64_t StartAudioCallCatTemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_6();
  v14._countAndFlagsBits = v11;
  v14._object = v10;
  v15.value = PhoneCallSlotNames.init(rawValue:)(v14).value;
  StartAudioCallCatTemplatingService.slotTemplating(for:)(v15.value, &v19);
  (*(*v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 216))(v9, a8, v12);
  v16 = OUTLINED_FUNCTION_10_7();
  v17(v16);
}

uint64_t StartAudioCallCatTemplatingService.makeGenericErrorDialog(app:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + direct field offset for StartAudioCallCatTemplatingService.catFamily);
  type metadata accessor for SirikitDeviceState();
  OUTLINED_FUNCTION_35_0();
  v8 = OUTLINED_FUNCTION_11_5(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  outlined init with copy of SignalProviding(v8, v11);
  v9 = SirikitDeviceState.__allocating_init(from:)();
  (*(*v6 + class metadata base offset for StartCallCATs + 960))(v9, a2, a3);
}

uint64_t StartAudioCallCatTemplatingService.deinit()
{
  v0 = specialized PhoneCallBaseCatTemplatingService.deinit();
  v1 = *(v0 + direct field offset for StartAudioCallCatTemplatingService.catFamily);

  return v0;
}

uint64_t StartAudioCallCatTemplatingService.__deallocating_deinit()
{
  v0 = *(specialized PhoneCallBaseCatTemplatingService.deinit() + direct field offset for StartAudioCallCatTemplatingService.catFamily);

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(void *a1)
{
  v1 = [a1 contacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v38 = a4;
  v43 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v44 = v37 - v17;
  v41 = type metadata accessor for Locale();
  v39 = *(v41 - 8);
  v18 = *(v39 + 64);
  __chkstk_darwin(v41);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CATOption();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v54[3] = a7;
  v54[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  v40 = a2;
  *(a6 + direct field offset for StartAudioCallCatTemplatingService.catFamily) = a2;
  v42 = "csV2";
  outlined init with copy of SignalProviding(a1, v51);
  outlined init with copy of SignalProviding(v54, v50);
  type metadata accessor for StartCallCATs();

  static CATOption.defaultMode.getter();
  v45 = CATWrapper.__allocating_init(options:globals:)();
  v49[3] = &type metadata for LabelTemplatesProvider;
  v49[4] = &protocol witness table for LabelTemplatesProvider;
  v24 = swift_allocObject();
  v49[0] = v24;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v25 = (a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v25 = 0x3D65737561705C1BLL;
  v25[1] = 0xEC0000005C303532;
  v26 = a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  outlined init with copy of SignalProviding(v51, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v27 = v52;
  v28 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v28 + 8))(v48, v27, v28);
  v29 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(v48, a6 + v29);
  v30 = *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v37[1] = a3;
  *(a6 + v30) = a3;
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v38;
  outlined init with copy of SignalProviding(v50, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  outlined init with copy of SignalProviding(v49, a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  *(a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v45;
  outlined init with copy of SignalProviding(a6 + v29, v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v47[0] = Locale.identifier.getter();
  v47[1] = v31;
  v46[0] = 45;
  v46[1] = 0xE100000000000000;
  v47[5] = 95;
  v47[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v39 + 8))(v20, v41);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType();
  Dictionary.init(dictionaryLiteral:)();
  v32 = v52;
  v33 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v33 + 24))(v47, v32, v33);
  outlined init with copy of SignalProviding(a6 + v29, v46);
  v34 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v34);
  v35 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v35;
}

uint64_t partial apply for closure #2 in StartAudioCallCatTemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for StartAudioCallCatTemplatingService()
{
  result = type metadata singleton initialization cache for StartAudioCallCatTemplatingService;
  if (!type metadata singleton initialization cache for StartAudioCallCatTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType()
{
  result = lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType;
  if (!lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType)
  {
    type metadata accessor for INIntentSlotValueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType);
  }

  return result;
}

uint64_t StartAudioCallDirectAction.init(appId:intentTypeName:intentData:nlIntent:userDialogAct:preferPrintingDialogOnDisplayMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

id StartAudioCallDirectAction.toStartLocalRequest(deviceState:)(void *a1)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v2 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v3 = StartAudioCallDirectAction.toDictionary()();
  v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v3);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v4, v2);
  v5 = SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(a1);

  return v5;
}

unint64_t StartAudioCallDirectAction.startAudioCallIntent.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  if (v0[5] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = v0[4];
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  OUTLINED_FUNCTION_19_0();
  v5 = INIntentCreate();

  if (v5)
  {
    v6 = v5;
    v7 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartCallIntent_ptr);

    if (v7)
    {
      v8 = INStartCallIntent.toStartAudioCallIntent()();

      if (v8)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v9 = type metadata accessor for Logger();
        __swift_project_value_buffer(v9, static Logger.siriPhone);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (!OUTLINED_FUNCTION_51_0(v11))
        {
          goto LABEL_20;
        }

        v12 = OUTLINED_FUNCTION_65_0();
        *v12 = 0;
        v13 = "#StartAudioCallDirectAction Received INStartCallIntent from directAction, converting to INStartAudioCallIntent";
LABEL_19:
        _os_log_impl(&dword_0, v10, v5, v13, v12, 2u);
        OUTLINED_FUNCTION_26_0();
LABEL_20:

        v5 = v6;
        goto LABEL_26;
      }
    }

    v6 = v6;
    v8 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartAudioCallIntent_ptr);

    if (v8)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.siriPhone);
      v10 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_51_0(v15))
      {
        goto LABEL_20;
      }

      v12 = OUTLINED_FUNCTION_65_0();
      *v12 = 0;
      v13 = "#StartAudioCallDirectAction Received INStartAudioCallIntent from directAction";
      goto LABEL_19;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_65_0();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#StartAudioCallDirectAction Didn't receive initial siriKitIntent, using default INStartAudioCallIntent", v19, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v20 = objc_allocWithZone(INStartAudioCallIntent);
  v8 = @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(1, 0);
LABEL_26:

  return v8;
}

uint64_t _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v3;
  }

  else
  {
    v9 = INTypedIntentWithIntent();
    if (v9)
    {
      v10 = v9;
      v11 = *a1;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t StartAudioCallDirectAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0x6449707061, 0xE500000000000000);
    if (v5)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v22);
      if (OUTLINED_FUNCTION_1_121())
      {
        v6 = v21;
        specialized Dictionary.subscript.getter(0x7954746E65746E69, 0xEE00656D614E6570, a1, &v22);
        if (v23)
        {
          v7 = OUTLINED_FUNCTION_1_121();
          if (v7)
          {
            v8 = v20;
          }

          else
          {
            v8 = 0;
          }

          if (v7)
          {
            v9 = v21;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v22);
          v8 = 0;
          v9 = 0;
        }

        specialized Dictionary.subscript.getter(0x6144746E65746E69, 0xEA00000000006174, a1, &v22);
        if (v23)
        {
          v18 = OUTLINED_FUNCTION_1_121();
          if (v18)
          {
            v12 = v20;
          }

          else
          {
            v12 = 0;
          }

          if (v18)
          {
            v13 = v21;
          }

          else
          {
            v13 = 0xF000000000000000;
          }
        }

        else
        {
          outlined destroy of Any?(&v22);
          v12 = 0;
          v13 = 0xF000000000000000;
        }

        specialized Dictionary.subscript.getter(0x746E65746E496C6ELL, 0xE800000000000000, a1, &v22);
        if (v23)
        {
          v19 = OUTLINED_FUNCTION_1_121();
          if (v19)
          {
            v14 = v20;
          }

          else
          {
            v14 = 0;
          }

          if (v19)
          {
            v15 = v21;
          }

          else
          {
            v15 = 0xF000000000000000;
          }
        }

        else
        {
          outlined destroy of Any?(&v22);
          v14 = 0;
          v15 = 0xF000000000000000;
        }

        specialized Dictionary.subscript.getter(0x6C61694472657375, 0xED0000746341676FLL, a1, &v22);
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
          if (OUTLINED_FUNCTION_1_121())
          {
            v16 = v20;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          outlined destroy of Any?(&v22);
          v16 = 0;
        }

        specialized Dictionary.subscript.getter(0xD000000000000021, 0x8000000000459A70, a1, &v22);

        if (v23)
        {
          result = swift_dynamicCast();
          if (result)
          {
            v17 = v20;
LABEL_40:
            v11 = v20;
            goto LABEL_12;
          }
        }

        else
        {
          result = outlined destroy of Any?(&v22);
        }

        v17 = 1;
        goto LABEL_40;
      }
    }
  }

  v11 = 0;
  v6 = 0;
  v8 = 0;
  v9 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_12:
  *a2 = v11;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  return result;
}

uint64_t StartAudioCallDirectAction.intentData.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_19_0();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t StartAudioCallDirectAction.nlIntent.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_19_0();
  outlined copy of Data?(v3, v4);
  return OUTLINED_FUNCTION_19_0();
}

uint64_t StartAudioCallDirectAction.toDictionary()()
{
  v1 = v0;
  v18 = *v0;
  ObjectType = &type metadata for String;
  v12 = v18;
  outlined init with take of Any(&v12, &v9);
  outlined init with copy of String(&v18, &v17);
  swift_isUniquelyReferenced_nonNull_native();
  *&v17 = &_swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6449707061, 0xE500000000000000);
  v2 = v17;
  v17 = v1[1];
  if (*(&v17 + 1))
  {
    OUTLINED_FUNCTION_3_112(*(&v17 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v17, &v16, &_sSSSgMd, &_sSSSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    *&v16 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x7954746E65746E69, 0xEE00656D614E6570);
    v2 = v16;
  }

  v16 = v1[2];
  if (*(&v16 + 1) >> 60 != 15)
  {
    OUTLINED_FUNCTION_3_112(*(&v16 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v16, &v15, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    *&v15 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6144746E65746E69, 0xEA00000000006174);
    v2 = v15;
  }

  v15 = v1[3];
  if (*(&v15 + 1) >> 60 != 15)
  {
    OUTLINED_FUNCTION_3_112(*(&v15 + 1), v5, v6, v7, v8, v9, v10, v11, v12, v13, ObjectType);
    outlined init with copy of SIRINLUUserDialogAct?(&v15, &v6, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    v6 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x746E65746E496C6ELL, 0xE800000000000000);
    v2 = v6;
  }

  v3 = *(v1 + 8);
  v6 = v3;
  if (v3)
  {
    ObjectType = swift_getObjectType();
    *&v12 = v3;
    outlined init with take of Any(&v12, &v9);
    outlined init with copy of SIRINLUUserDialogAct?(&v6, &v8, &_sSo20SIRINLUUserDialogAct_pSgMd, &_sSo20SIRINLUUserDialogAct_pSgMR);
    swift_isUniquelyReferenced_nonNull_native();
    v8 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v9, 0x6C61694472657375, 0xED0000746341676FLL);
    return v8;
  }

  return v2;
}

id @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithDestinationType:a1 contacts:v4.super.isa];

  return v5;
}

uint64_t outlined init with copy of SIRINLUUserDialogAct?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_19_0();
  v7(v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for StartAudioCallDirectAction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StartAudioCallDirectAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  return specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, a2, a3, a4, specialized PhoneFlow.init(sharedGlobals:));
}

{
  return specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, a2, a3, a4, specialized PhoneFlow.init(sharedGlobals:));
}

uint64_t specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *))
{
  *(v5 + *(*v5 + 288)) = a1;
  v8 = (v5 + *(*v5 + 296));
  *v8 = a2;
  v8[1] = a3;
  v9 = one-time initialization token for siriPhone;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    v15 = *v8;
    v16 = v8[1];

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_0, v11, v12, "%s.initialize", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
  }

  outlined init with copy of SignalProviding(a4, v20);
  v18 = a5(v20);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

uint64_t specialized CallingFlowAbstraction.deinit()
{
  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

{
  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

uint64_t specialized CallingFlowAbstraction.deinit(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + *(*v1 + 288));

  v3 = *(v1 + *(*v1 + 296) + 8);

  return v1;
}

uint64_t StartAudioCallFlow.__allocating_init(app:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return StartAudioCallFlow.init(app:sharedGlobals:)(a1, a2);
}

uint64_t StartAudioCallFlow.init(app:sharedGlobals:)(uint64_t a1, uint64_t *a2)
{
  v5 = (v2 + direct field offset for StartAudioCallFlow.flowName);
  *v5 = 0xD000000000000012;
  v5[1] = 0x8000000000449C90;
  outlined init with copy of SignalProviding(a2, v8);
  v6 = specialized CallingFlowAbstraction.init(app:flowName:sharedGlobals:)(a1, 0xD000000000000012, 0x8000000000449C90, v8, specialized PhoneFlow.init(sharedGlobals:));
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t StartAudioCallFlow.makeRCHFlow(input:intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v52 = v7;
  v53 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v54 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  v12 = OUTLINED_FUNCTION_7(v11);
  v49 = v13;
  v50 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v51 = v47 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  v17 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v19 = v47 - v18;
  v20 = type metadata accessor for CATOption();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v23 = *(*v3 + 152);
  v23(v60, v22);
  v24 = one-time initialization token for instance;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = static BiomeEventSender.instance;
  v26 = type metadata accessor for StartAudioCallRCHFlowDelegate();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();

  v47[1] = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(v60, a3, v25, v29);
  (v23)(v60);
  type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v30 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v31 = CATWrapperSimple.__allocating_init(options:globals:)();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
  swift_allocObject();
  v33 = specialized CallingIntentRCHFlowStrategy.init(sharedGlobals:appResolved:phoneCallDisplayTextCATsSimple:startCallCATsSimple:)(v60, a3, v30, v31);
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5AudiobmD0C_Tt2g5();
  (v23)(v60);
  v34 = v61;
  v35 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  (*(v35 + 104))(v57, v34, v35);
  v37 = v58;
  v36 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v56 = v33;
  (*(v49 + 16))(v51, &v19[*(v48 + 36)], v50);
  (*(v52 + 16))(v54, v19, v53);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = RCHChildFlowFactory.init(producers:withFallbacks:)();
  v42 = a3;
  v43 = *(v36 + 8);
  v44 = lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>();
  v45 = v43(&v56, v41, v42, v55, v32, v44, v37, v36);

  outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartAudioCallIntent, INStartAudioCallIntentResponse>(v19);

  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v45;
}

uint64_t StartAudioCallFlow.deinit()
{
  v0 = OUTLINED_FUNCTION_0_115();
  v1 = *(v0 + direct field offset for StartAudioCallFlow.flowName + 8);

  return v0;
}

uint64_t StartAudioCallFlow.__deallocating_deinit()
{
  v0 = OUTLINED_FUNCTION_0_115();
  v1 = *(v0 + direct field offset for StartAudioCallFlow.flowName + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>()
{
  result = lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>;
  if (!lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallingIntentRCHFlowStrategy<INStartAudioCallIntent, INStartAudioCallIntentResponse> and conformance CallingIntentRCHFlowStrategy<A, B>);
  }

  return result;
}

uint64_t outlined destroy of PhoneCallFlowFactory.PhoneRCHFlowProducers<INStartAudioCallIntent, INStartAudioCallIntentResponse>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartAudioCallFlow()
{
  result = type metadata singleton initialization cache for StartAudioCallFlow;
  if (!type metadata singleton initialization cache for StartAudioCallFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a6[3];
  v12 = a6[4];
  v13 = __swift_project_boxed_opaque_existential_1(a6, v11);

  return specialized static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(a1, a2, a3, a4, a5, v13, v11, v12);
}

id specialized static StartAudioCallIntentConversion.convertToIntent(phoneCallNLIntent:app:sharedGlobals:previousIntent:previousIntentResponse:groupResolver:)(void *a1, uint64_t a2, void *a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v112 = a8;
  v117 = a2;
  v115 = type metadata accessor for Locale();
  v114 = *(v115 - 8);
  v12 = *(v114 + 64);
  __chkstk_darwin(v115);
  v113 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v118 = &v103 - v17;
  v18 = *(a7 - 8);
  v19 = *(v18 + 8);
  v21 = __chkstk_darwin(v20);
  v23 = *(v18 + 2);
  v119 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(v21);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (PhoneCallNLIntent.hasAnyConfirmation()())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.siriPhone);
    v26 = a4;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v118 = v18;
      v30 = a7;
      v31 = v29;
      v32 = swift_slowAlloc();
      v124[0] = v32;
      *v31 = 136315138;
      v121[0] = a4;
      v33 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INStartAudioCallIntentCSgMd, &_sSo22INStartAudioCallIntentCSgMR);
      v34 = String.init<A>(describing:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v124);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v27, v28, "#StartAudioCallIntentConversion is confirmation, returning previousIntent: %s.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);

      a7 = v30;
      v18 = v118;
    }

    v37 = v26;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v111 = v15;
    v38 = type metadata accessor for Logger();
    v116 = __swift_project_value_buffer(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "#StartAudioCallIntentConversion called with NLv4IntentOnly", v41, 2u);
    }

    v42 = a3[3];
    v43 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v42);
    (*(v43 + 8))(v124, v42, v43);
    v44 = a3[3];
    v45 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v44);
    v46 = (*(v45 + 72))(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    type metadata accessor for INCallDestinationType(0);
    Transformer.init(transform:)();
    v47 = Transformer.transform.getter();
    v47(v121, a1);
    v108 = v46;
    v109 = v14;

    v48 = v121[0];
    v49 = a1[3];
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v49);
    v51 = (*(v50 + 128))(v49, v50);
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);

    HIDWORD(v106) = PhoneCallNLIntent.isEmergencyContactCall()();
    v53 = a1[3];
    v54 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v53);
    v55 = PhoneCallNLIntent.getPersons()(v53, v54);
    v56 = objc_allocWithZone(INStartAudioCallIntent);
    v57 = @nonobjc INStartAudioCallIntent.init(destinationType:contacts:)(v48, v55);
    v58 = _s27PhoneCallFlowDelegatePlugin20NLv4IntentConversionPAAE03setG8Metadata3for13sharedGlobals3app08previousG00G4TypeQzAJ_AA06SharedM9Providing_p17SiriAppResolution0T0CAJSgtFZAA010StartAudiobgH0O_Tt3g5(v57, a3, v117, a4);

    outlined init with copy of SignalProviding(a1, v121);
    v59 = v58;

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    v62 = os_log_type_enabled(v60, v61);
    v110 = a7;
    v107 = v51;
    if (v62)
    {
      v63 = swift_slowAlloc();
      HIDWORD(v104) = v61;
      v64 = v63;
      v65 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v120[0] = v105;
      *v64 = 138413058;
      *(v64 + 4) = v59;
      *v65 = v59;
      *(v64 + 12) = 2080;
      v66 = v59;
      v103 = v60;
      v67 = dispatch thunk of App.debugDescription.getter();
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v120);

      *(v64 + 14) = v69;
      *(v64 + 22) = 2080;
      v70 = v122;
      v71 = v123;
      __swift_project_boxed_opaque_existential_1(v121, v122);
      (*(v71 + 24))(v70, v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_pMR);
      v72 = Array.description.getter();
      v74 = v73;

      __swift_destroy_boxed_opaque_existential_1(v121);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v120);

      *(v64 + 24) = v75;
      *(v64 + 32) = 2080;
      type metadata accessor for ContactQuery();
      v76 = Array.debugDescription.getter();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v120);

      *(v64 + 34) = v78;
      v79 = v103;
      _os_log_impl(&dword_0, v103, BYTE4(v104), "#StartAudioCallIntentConversion starts with intent:%@ resolvedApp:%s phoneCallNLIntent=%s contactQueries=%s", v64, 0x2Au);
      outlined destroy of NSObject?(v65);

      swift_arrayDestroy();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v121);
    }

    v80 = a3[3];
    v81 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v80);
    v82 = *(v81 + 56);
    a4 = v59;
    v83 = v82(v80, v81);
    LOBYTE(v80) = (*(*v83 + 232))(v83);

    if (v80)
    {
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      swift_allocObject();
      a7 = v110;
      _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO21resolveUpdateSKIntent13siriKitIntent14contactQueries012hasEmergencyG03app02nlO013sharedGlobals18multicardinalIndex0mN11EventSender09emergencygH00P13GroupResolveryAA013NCRResolvableO0_p_Say13SiriInference0G5QueryVGSb07SiriAppH03AppCAA0aB8NLIntent_pAA06SharedW9Providing_pSiSg04SirinC004SirinZ7Sending_pAA0sgH0CAA0G14GroupResolving_ptFZTf4ennnnnnnnnn_nSo012INStartAudiobO0C_Tt9g5Tf4nnnnnnnnne_n();

      __swift_destroy_boxed_opaque_existential_1(v121);
    }

    else
    {
      v84 = a3[3];
      v85 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v84);
      (*(v85 + 8))(v121, v84, v85);
      __swift_project_boxed_opaque_existential_1(v121, v122);
      v86 = v113;
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v87 = swift_allocObject();
      v88 = a1[3];
      v89 = a1[4];
      v90 = __swift_project_boxed_opaque_existential_1(a1, v88);
      LOBYTE(v101) = 1;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_n(a4, v107, BYTE4(v106) & 1, v117, v86, v90, a3, 0, v101, v120, v87, v88, v89, v102, v103, v104, v105, v106, v107, v108, v109);

      __swift_destroy_boxed_opaque_existential_1(v120);
      (*(v114 + 8))(v86, v115);
      __swift_destroy_boxed_opaque_existential_1(v121);
      a7 = v110;
    }

    v91 = v109;
    v92 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(a4);
    v93 = one-time initialization token for instance;
    v94 = a4;
    if (v93 != -1)
    {
      swift_once();
    }

    _s27PhoneCallFlowDelegatePlugin34AppSelectionSignalsGatheringHelperO23triggerSignalCollection13sharedGlobals8contacts05phoneB8NLIntent05smartfG018eligibleAppsFinder8skIntentyAA06SharedO9Providing_p_SaySo8INPersonCGSgAA0abR0_pAA05SmartfG14FeatureManagerCSgAA012PrefetchableF7Finding_pAA07CallingX0_pSgtFZTf4nnnnenn_nAA08EligiblefV0C_Tt5g5(a3, v92, a1, 0, static EligibleAppFinder.instance);

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v97 = 138412290;
      *(v97 + 4) = v94;
      *v98 = a4;
      v99 = v94;
      _os_log_impl(&dword_0, v95, v96, "#StartAudioCallIntentConversion ends with %@", v97, 0xCu);
      outlined destroy of NSObject?(v98);
    }

    (*(v111 + 8))(v118, v91);
    __swift_destroy_boxed_opaque_existential_1(v124);
  }

  (*(v18 + 1))(v119, a7);
  return a4;
}

uint64_t specialized PhoneCallNLIntent.hasCallConfirmation(_:)(uint64_t a1)
{
  if (one-time initialization token for confirmation != -1)
  {
    swift_once();
  }

  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_10_72();
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(v2, v3);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v11 == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = PhoneCallConfirmation.rawValue.getter(v11);
    v7 = v6;
    if (v5 == PhoneCallConfirmation.rawValue.getter(a1) && v7 == v8)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v4 & 1;
}

uint64_t specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, void *a2, int a3, int a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  return specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(a1, a2, a3, a4, a5, a6, a7, a8, outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMR, &direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
}

{
  return specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(a1, a2, a3, a4, a5, a6, a7, a8, outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartVideoB6IntentCSo0jkbL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartVideoB6IntentCSo0jkbL8ResponseCGMR, &direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals);
}

uint64_t specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(int a1, void *a2, int a3, int a4, id a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t (*a9)(void *), uint64_t *a10, uint64_t *a11, void *a12)
{
  v16 = [a5 disambiguationItems];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  v19 = &selRef_alternatives;
  if (v18)
  {
    v19 = &selRef_disambiguationItems;
  }

  v20 = [a5 *v19];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22._countAndFlagsBits = OUTLINED_FUNCTION_20_0();
  if ((PhoneCallSlotNames.init(rawValue:)(v22).value & 0xFE) == 4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v23 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v23, static Logger.siriPhone);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_10_0(v25))
      {
        v26 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v26);
        OUTLINED_FUNCTION_18_30();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_12_3();
      }

      v32 = specialized _arrayConditionalCast<A, B>(_:)(v21);

      v21 = (v32 ? v32 : _swiftEmptyArrayStorage);
      v33 = a9(a2);
      if (!v33)
      {
        break;
      }

      v34 = v33;
      if (!specialized Array.count.getter(v33))
      {

        break;
      }

      v35 = (v34 & 0xC000000000000001);
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v34 & 0xC000000000000001) == 0, v34);
      if ((v34 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v34 + 32);
      }

      OUTLINED_FUNCTION_40_0();

      v37 = [v34 & 0xC000000000000001 relationship];

      if (!v37)
      {
        break;
      }

      v38 = specialized Array.count.getter(v21);
      v39 = 0;
      a9 = (v21 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v38 == v39)
        {

          goto LABEL_32;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

          v40 = *(v21 + 8 * v39 + 32);
        }

        a2 = v40;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        [v40 setRelationship:v37];

        ++v39;
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

LABEL_32:
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(a10, a11);
    v69 = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    *&v67 = a6;

    v51 = App.appIdentifier.getter();
    if (v52)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v55 = v64 + *a12;
    OUTLINED_FUNCTION_13_56();
    v57 = *(v56 + 184);
    v58 = OUTLINED_FUNCTION_1_1();
    v59(v58);
    OUTLINED_FUNCTION_13_56();
    v61 = *(v60 + 8);
    v62 = OUTLINED_FUNCTION_1_1();
    v63(v62);
    v70[0] = v21;
    v70[1] = v21;
    outlined init with take of SPHConversation(&v67, &v74);
    v71 = 1;
    v72 = v53;
    v73 = v54;

    specialized DisambiguationItemFactory.buildDisambiguationItemList(_:)(a7, a8);
    return outlined destroy of PhoneContactDisambiguationItemFactory(v70);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.siriPhone);
    OUTLINED_FUNCTION_40_0();

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_42();
      v45 = OUTLINED_FUNCTION_36();
      v70[0] = v45;
      *v44 = 136315138;
      v46 = OUTLINED_FUNCTION_20_0();
      *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v48);
      _os_log_impl(&dword_0, v42, v43, "#CallingIntentRCHFlowDelegate Disambiguating %s, no disambiguation snippet", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v49 = type metadata accessor for SiriKitDisambiguationList();
    OUTLINED_FUNCTION_41_1(v49);
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a7();
  }
}

uint64_t specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()()
{
  v1 = *(v0 + *(type metadata accessor for PhoneCallNLv3Intent(0) + 48));
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  IntentNodeTraversable.intentNodes(forOntologyNode:)();
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply);

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v2 + 16))
    {
      outlined init with copy of SignalProviding(v6, v14);
      v7 = v15;
      v8 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = (*(v8 + 408))(v7, v8);
      if (v10)
      {
        if (v9 == 0xD000000000000011 && v10 == 0x800000000045E840)
        {

          __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_15:
          v13 = 1;
          goto LABEL_16;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = __swift_destroy_boxed_opaque_existential_1(v14);
        if (v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(v14);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v13 = 0;
LABEL_16:

    return v13;
  }

  return result;
}

void specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)()
{
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
}

{
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
}

{
  OUTLINED_FUNCTION_66();
  v162 = v1;
  v166 = v2;
  v168 = v3;
  v171 = v0;
  v173 = v4;
  v163 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7(v163);
  v161 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v160 = v10 - v9;
  v11 = OUTLINED_FUNCTION_15_0();
  v12 = type metadata accessor for PhoneCallNLv3Intent(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_4();
  v167 = v17 - v16;
  OUTLINED_FUNCTION_15_0();
  v18 = type metadata accessor for NLIntent();
  v19 = OUTLINED_FUNCTION_7(v18);
  v170 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_12_5();
  v165 = v23 - v24;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v25);
  v27 = &v153 - v26;
  __chkstk_darwin(v28);
  v169 = &v153 - v29;
  OUTLINED_FUNCTION_15_0();
  v30 = type metadata accessor for Parse();
  v31 = OUTLINED_FUNCTION_7(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  OUTLINED_FUNCTION_12_5();
  v159 = v36 - v37;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v38);
  v164 = &v153 - v39;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v40);
  v42 = &v153 - v41;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v172 = __swift_project_value_buffer(v43, static Logger.siriPhone);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v45))
  {
    v46 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v46);
    _os_log_impl(&dword_0, v44, v45, "#IntentFromParseFlowStrategyHelper makeIntentFromParse", v18, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  v47 = v33[2];
  v48 = v173;
  v47(v42, v173, v30);
  v49 = v33[11];
  v50 = OUTLINED_FUNCTION_29_31();
  v52 = v51(v50);
  if (v52 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v52 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v155 = v47;
      v61 = v33[12];
      v62 = OUTLINED_FUNCTION_29_31();
      v63(v62);
      v64 = *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48)];
      v66 = v169;
      v65 = v170;
      (*(v170 + 32))(v169, v42, v18);
      v67 = *(v65 + 16);
      v157 = (v65 + 16);
      v156 = v67;
      v67(v27, v66, v18);
      PhoneCallNLv3Intent.init(intent:)(v27, v167);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();

      v70 = os_log_type_enabled(v68, v69);
      v158 = v18;
      if (v70)
      {
        v71 = OUTLINED_FUNCTION_42();
        v72 = OUTLINED_FUNCTION_36();
        v176[0] = v72;
        *v71 = 136315138;
        v73 = Parse.ServerConversion.siriKitIntent.getter();
        v74 = [v73 _metadata];

        v75 = [v74 userUtterance];
        *&v174 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11_INPBStringCSgMd, &_sSo11_INPBStringCSgMR);
        v76 = String.init<A>(describing:)();
        v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v176);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_0, v68, v69, "User utterance: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v72);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();

      v81 = os_log_type_enabled(v79, v80);
      v168 = v64;
      if (v81)
      {
        v82 = OUTLINED_FUNCTION_42();
        v154 = OUTLINED_FUNCTION_36();
        v176[0] = v154;
        *v82 = 136315138;
        v83 = Parse.ServerConversion.siriKitIntent.getter();
        v84 = [v83 description];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v176);

        *(v82 + 4) = v88;
        _os_log_impl(&dword_0, v79, v80, "SKIntent from server: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v154);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      v89 = v158;
      v90 = v165;
      v156(v165, v169, v158);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = OUTLINED_FUNCTION_42();
        v157 = OUTLINED_FUNCTION_36();
        v176[0] = v157;
        *v93 = 136315138;
        lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, &type metadata accessor for NLIntent);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v89;
        v97 = v96;
        v98 = *(v170 + 8);
        v98(v90, v95);
        v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v97, v176);

        *(v93 + 4) = v99;
        _os_log_impl(&dword_0, v91, v92, "NLIntent from server: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v157);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v98 = *(v170 + 8);
        v98(v90, v89);
      }

      v48 = v173;
      v104 = Parse.ServerConversion.siriKitIntent.getter();
      v18 = v166();

      if (v18)
      {
        v105 = v18;
        v106 = v171;
        v107 = IntentFromParseFlowStrategyHelper.inferApp(from:)();
        v108 = v106[7];
        __swift_project_boxed_opaque_existential_1(v106 + 3, v106[6]);
        v109 = *(v108 + 8);
        v110 = OUTLINED_FUNCTION_11_0();
        v111(v110, v108);
        __swift_project_boxed_opaque_existential_1(v176, v176[3]);
        v112 = v160;
        OUTLINED_FUNCTION_11_0();
        dispatch thunk of DeviceState.siriLocale.getter();
        v113 = v167;
        v162(v105, v167, v107, v112, v106 + 3, 0, 1);

        (*(v161 + 8))(v112, v163);
        __swift_destroy_boxed_opaque_existential_1(v176);
        v114 = v105;
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = OUTLINED_FUNCTION_42();
          v118 = OUTLINED_FUNCTION_36();
          v176[0] = v118;
          *v117 = 136315138;
          v119 = v114;
          v120 = [v119 description];
          v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v173 = v98;
          v123 = v122;

          v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, v176);

          *(v117 + 4) = v124;
          _os_log_impl(&dword_0, v115, v116, "SKIntent after NCR replacement: %s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v118);
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_52();

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v167, v125);
          v126 = OUTLINED_FUNCTION_16_55();
          (v173)(v126);
        }

        else
        {

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v113, v143);
          v144 = OUTLINED_FUNCTION_16_55();
          (v98)(v144);
        }

        goto LABEL_29;
      }

      OUTLINED_FUNCTION_1_122();
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v167, v127);
      v128 = OUTLINED_FUNCTION_16_55();
      (v98)(v128);
      v47 = v155;
    }

    else
    {
      if (v52 == enum case for Parse.NLv4IntentOnly(_:) || v52 == enum case for Parse.uso(_:))
      {
        goto LABEL_6;
      }

      v101 = v33[1];
      v102 = OUTLINED_FUNCTION_29_31();
      v103(v102);
    }

    v129 = v164;
    v47(v164, v48, v30);
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v131))
    {
      OUTLINED_FUNCTION_42();
      v132 = OUTLINED_FUNCTION_32_0();
      v176[0] = v132;
      *v18 = 136315138;
      v133 = v159;
      v47(v159, v129, v30);
      v134 = String.init(describing:)(v133);
      v136 = v135;
      (v33[1])(v129, v30);
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v136, v176);

      *(v18 + 4) = v137;
      OUTLINED_FUNCTION_18_30();
      _os_log_impl(v138, v139, v140, v141, v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_12_3();
    }

    else
    {

      (v33[1])(v129, v30);
    }

    goto LABEL_29;
  }

LABEL_6:
  v53 = v33[1];
  v54 = OUTLINED_FUNCTION_29_31();
  v55(v54);
  v56 = v171[7];
  __swift_project_boxed_opaque_existential_1(v171 + 3, v171[6]);
  v57 = *(v56 + 72);
  v58 = OUTLINED_FUNCTION_40_0();
  v60 = v59(v58, v56);
  (*(*v60 + 192))(&v174, v48);

  if (v175)
  {
    outlined init with take of SPHConversation(&v174, v176);
    specialized IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)();
    __swift_destroy_boxed_opaque_existential_1(v176);
LABEL_29:
    OUTLINED_FUNCTION_65();
    return;
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v174, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v146))
  {
    OUTLINED_FUNCTION_42();
    v147 = OUTLINED_FUNCTION_32_0();
    v176[0] = v147;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000050, 0x800000000045C0D0, v176);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v148, v149, v150, v151, v152, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v147);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23();
  __break(1u);
}

void specialized IntentFromParseFlowStrategyHelper.makeIntentFromParseSiriX(parse:nlIntent:previousIntent:)()
{
  OUTLINED_FUNCTION_66();
  v123 = v1;
  v125 = v2;
  v126 = v3;
  v4 = v0;
  v6 = v5;
  v128 = v7;
  v8 = type metadata accessor for Locale();
  v9 = OUTLINED_FUNCTION_7(v8);
  v121 = v10;
  v122 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v120 = v14 - v13;
  OUTLINED_FUNCTION_15_0();
  v15 = type metadata accessor for Parse();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_12_5();
  v117 = v21 - v22;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v23);
  v119 = &v114 - v24;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v25);
  v27 = &v114 - v26;
  isa = v0[2].isa;
  if (isa)
  {
    v29 = one-time initialization token for siriPhone;
    v30 = v0[2].isa;

    if (v29 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v31, static Logger.siriPhone);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_42();
      v127 = v18;
      v35 = v34;
      v36 = OUTLINED_FUNCTION_36();
      v124 = v27;
      v37 = v36;
      v129 = isa;
      v130[0] = v36;
      *v35 = 136315138;
      type metadata accessor for App();
      lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type App and conformance App, &type metadata accessor for App);
      v0 = &v129;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v130);
      OUTLINED_FUNCTION_40_0();

      *(v35 + 4) = &v129;
      _os_log_impl(&dword_0, v32, v33, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: appResolved: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v27 = v124;
      OUTLINED_FUNCTION_26_0();
      v18 = v127;
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }
  }

  else
  {
    v40 = &v114 - v26;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v41, static Logger.siriPhone);
    v0 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v42))
    {
      v43 = OUTLINED_FUNCTION_65_0();
      *v43 = 0;
      _os_log_impl(&dword_0, v0, v42, "#IntentFromParseFlowStrategyHelper makeIntentFromParse: no appResolved", v43, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v27 = v40;
  }

  v44 = *(v18 + 16);
  v44(v27, v128, v15);
  v45 = (*(v18 + 88))(v27, v15);
  if (v45 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v114 = v44;
    v124 = v27;
    v127 = v18;
    v116 = v15;
    v46 = v4[6].isa;
    v47 = v4[7].isa;
    __swift_project_boxed_opaque_existential_1(&v4[3].isa, v46);
    v48 = *(v47 + 10);

    v115 = v4;
    v49 = v6;
    v50 = v125;
    v48(v130, v46, v47);
    v51 = v6[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v118 = isa;
    OUTLINED_FUNCTION_38_27();
    v53 = v52();
    outlined destroy of SKTransformer(v130);
    if (v53)
    {
      v128 = v50;
      v54 = v115;
      v55 = v115[6].isa;
      v56 = v115[7].isa;
      __swift_project_boxed_opaque_existential_1(&v115[3].isa, v55);
      v57 = *(v56 + 1);
      v58 = v53;
      v57(v130, v55, v56);
      __swift_project_boxed_opaque_existential_1(v130, v130[3]);
      v59 = v120;
      OUTLINED_FUNCTION_40_0();
      dispatch thunk of DeviceState.siriLocale.getter();
      v60 = v49[3];
      v61 = v49[4];
      v62 = __swift_project_boxed_opaque_existential_1(v49, v60);
      v123(v58, v62, v118, v59, v54 + 3, 0, 1, v60, v61);

      (*(v121 + 8))(v59, v122);
      __swift_destroy_boxed_opaque_existential_1(v130);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v63, static Logger.siriPhone);
      v64 = v58;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.debug.getter();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v128;
      if (v67)
      {
        v69 = OUTLINED_FUNCTION_42();
        v70 = OUTLINED_FUNCTION_36();
        v130[0] = v70;
        *v69 = 136315138;
        v71 = v64;
        v72 = [v71 description];
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v75 = v74;

        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v130);

        *(v69 + 4) = v76;
        _os_log_impl(&dword_0, v65, v66, "#IntentFromParseFlowStrategyHelper SKIntent after NCR replacement: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_12_3();
        OUTLINED_FUNCTION_26_0();
      }

      (*(v127 + 8))(v124, v116);
    }

    else
    {

      v89 = *(v127 + 8);
      v90 = v116;
      v127 += 8;
      v89(v124, v116);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v91, static Logger.siriPhone);
      v92 = v119;
      v93 = v114;
      v114(v119, v128, v90);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_16_4(v95))
      {
        v96 = OUTLINED_FUNCTION_42();
        v97 = OUTLINED_FUNCTION_36();
        v130[0] = v97;
        *v96 = 136315138;
        v98 = v117;
        v93(v117, v92, v90);
        v99 = String.init(describing:)(v98);
        v100 = v92;
        v101 = v99;
        v103 = v102;
        v89(v100, v90);
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v130);

        *(v96 + 4) = v104;
        _os_log_impl(&dword_0, v94, v95, "#IntentFromParseFlowStrategyHelper makeIntentFromParseSiriX get unexpected parse: %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {

        v89(v92, v90);
      }
    }

LABEL_34:
    OUTLINED_FUNCTION_65();
    return;
  }

  if (v45 == enum case for Parse.NLv4IntentOnly(_:) || v45 == enum case for Parse.uso(_:))
  {
    (*(v18 + 8))(v27, v15);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v78, static Logger.siriPhone);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v80))
    {
      v81 = OUTLINED_FUNCTION_65_0();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v0, "IntentFromParseFlowStrategyHelper NLv4/USO parse. running convertToIntent.", v81, 2u);
      OUTLINED_FUNCTION_52();
    }

    v82 = v4[7].isa;
    __swift_project_boxed_opaque_existential_1(&v4[3].isa, v4[6].isa);
    v83 = *(v82 + 10);
    v84 = OUTLINED_FUNCTION_40_0();
    v85(v84, v82);
    v86 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);

    v87 = v125;
    OUTLINED_FUNCTION_38_27();
    v88();

    outlined destroy of SKTransformer(v130);
    goto LABEL_34;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logger.siriPhone);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v107))
  {
    OUTLINED_FUNCTION_42();
    v108 = OUTLINED_FUNCTION_32_0();
    v130[0] = v108;
    *isa = 136315138;
    *(isa + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000057, 0x800000000045C130, v130);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v109, v110, v111, v112, v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23();
  __break(1u);
}

uint64_t specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t StartAudioCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v13 = OUTLINED_FUNCTION_33_24(v12);
  v14(v13);
  OUTLINED_FUNCTION_29_34();
  v15 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v7;
}

uint64_t StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  OUTLINED_FUNCTION_9_10();
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v9 = OUTLINED_FUNCTION_33_24(v8);
  v10(v9);
  OUTLINED_FUNCTION_29_34();
  v11 = OUTLINED_FUNCTION_40_0();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v3;
}

uint64_t StartAudioCallRCHFlowDelegate.makeAceViewProvider()()
{
  v1 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  outlined init with copy of SignalProviding(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v4);
  v2 = type metadata accessor for StartAudioCallAceViewProvider();
  OUTLINED_FUNCTION_41_1(v2);
  return StartAudioCallAceViewProvider.init(templatingService:sharedGlobals:)(v1, v4);
}

uint64_t StartAudioCallRCHFlowDelegate.makeNLContextProvider()()
{
  OUTLINED_FUNCTION_13_56();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_1_1();
  v3(v2);
  OUTLINED_FUNCTION_13_56();
  v5 = *(v4 + 184);
  v6 = OUTLINED_FUNCTION_1_1();
  v7(v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderCySo012INStartAudioB6IntentCSo0hibJ8ResponseCGMR);
  OUTLINED_FUNCTION_41_1(v8);
  return specialized PhoneCallNLContextProvider.init(deviceState:assistantProperties:)(v11, &v10);
}

void StartAudioCallRCHFlowDelegate.makeDialogTemplating()()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  outlined init with copy of SignalProviding(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v6);
  type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallDisplayTextCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AppInfoBuilder();
  swift_allocObject();
  v5 = type metadata accessor for StartAudioCallCatTemplatingService();
  OUTLINED_FUNCTION_41_1(v5);
  specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)();
}

uint64_t StartAudioCallRCHFlowDelegate.makeIntentFromParse(parse:previousIntent:)()
{
  v1 = v0;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v2, static Logger.siriPhone);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v4))
  {
    v5 = OUTLINED_FUNCTION_65_0();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#StartAudioCallRCHFlowDelegate makeIntentFromParse", v5, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  outlined init with copy of SignalProviding(v1 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, v11);
  v6 = *(v1 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartAudiobF0CGMd, &_s27PhoneCallFlowDelegatePlugin015IntentFromParseC14StrategyHelperCySo012INStartAudiobF0CGMR);
  inited = swift_initStackObject();
  outlined init with take of SPHConversation(v11, inited + 24);
  *(inited + 16) = v6;

  OUTLINED_FUNCTION_20_0();
  specialized IntentFromParseFlowStrategyHelper.makeIntentFromParse(parse:previousIntent:)();
  v9 = v8;
  swift_setDeallocating();
  specialized IntentFromParseFlowStrategyHelper.__deallocating_deinit();
  return v9;
}

void StartAudioCallRCHFlowDelegate.makeConfirmationStateFromParse(parse:)()
{
  OUTLINED_FUNCTION_66();
  v124 = v0;
  v125 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_12_5();
  v117 = v8 - v9;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v10);
  v121 = &v117 - v11;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v12);
  v120 = (&v117 - v13);
  OUTLINED_FUNCTION_15_0();
  v14 = type metadata accessor for Parse.DirectInvocation();
  v15 = OUTLINED_FUNCTION_7(v14);
  v118 = v16;
  v119 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = type metadata accessor for PhoneCallNLv3Intent(0);
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_12_5();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v122 = &v117 - v30;
  OUTLINED_FUNCTION_15_0();
  v31 = type metadata accessor for NLIntent();
  v32 = OUTLINED_FUNCTION_7(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  OUTLINED_FUNCTION_12_5();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  v42 = &v117 - v41;
  v43 = type metadata accessor for Parse();
  v44 = OUTLINED_FUNCTION_7(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  OUTLINED_FUNCTION_4();
  v51 = v50 - v49;
  v52 = v46[2];
  v123 = v3;
  v52(v51, v3, v43);
  v53 = v46[11];
  v54 = OUTLINED_FUNCTION_8_33();
  v56 = v55(v54);
  if (v56 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v56 != enum case for Parse.directInvocation(_:))
    {
      v85 = v46[1];
      v86 = OUTLINED_FUNCTION_8_33();
      v87(v86);
      goto LABEL_22;
    }

    v73 = v46[12];
    v74 = OUTLINED_FUNCTION_8_33();
    v75(v74);
    v76 = v118;
    v77 = v51;
    v78 = v119;
    (*(v118 + 32))(v21, v77, v119);
    v79 = v120;
    static CommonDirectAction.from(_:)(v120);
    (*(v76 + 8))(v21, v78);
    v80 = v121;
    outlined init with take of CommonDirectAction?(v79, v121);
    v81 = type metadata accessor for CommonDirectAction();
    if (__swift_getEnumTagSinglePayload(v80, 1, v81) != 1)
    {
      v82 = v117;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v80, v117, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
      OUTLINED_FUNCTION_20_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 7)
      {
        v84 = &enum case for SiriKitConfirmationState.cancelled(_:);
        goto LABEL_19;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v84 = &enum case for SiriKitConfirmationState.confirmed(_:);
LABEL_19:
        v104 = *v84;
        v105 = type metadata accessor for SiriKitConfirmationState();
        OUTLINED_FUNCTION_23_1(v105);
        (*(v106 + 104))(v125, v104);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
        goto LABEL_25;
      }

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v82, type metadata accessor for CommonDirectAction);
    }

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v80, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
    goto LABEL_22;
  }

  v57 = v46[12];
  v58 = OUTLINED_FUNCTION_8_33();
  v59(v58);
  (*(v34 + 32))(v42, v51, v31);
  v60 = v124;
  v61 = *(v124 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);
  if (v61)
  {
    (*(v34 + 16))(v39, v42, v31);

    v62 = v122;
    PhoneCallNLv3Intent.init(intent:)(v39, v122);
    v63 = *(v60 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v60 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals), *(v60 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 24));
    v64 = *(v63 + 80);
    v65 = OUTLINED_FUNCTION_1_1();
    v66(v65);
    outlined init with copy of PhoneCallNLv3Intent(v62, v28);

    v67 = specialized SKTransformer.convertToSKIntent<A>(phoneCallNLIntent:rchFlowContext:)(v28, v61, 0, 0, v126);

    outlined destroy of SKTransformer(v126);
    OUTLINED_FUNCTION_1_122();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v28, v68);
    if (v67)
    {
      if (specialized PhoneCallNLIntent.hasCallConfirmation(_:)(1))
      {

        OUTLINED_FUNCTION_1_122();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v62, v69);
        v70 = OUTLINED_FUNCTION_15_58();
        v71(v70);
        v72 = &enum case for SiriKitConfirmationState.rejected(_:);
      }

      else
      {
        if ((specialized PhoneCallNLIntent.hasCallConfirmation(_:)(0) & 1) == 0)
        {
          v97 = specialized PhoneCallNLIntent.hasCallConfirmation(_:)(2);

          OUTLINED_FUNCTION_1_122();
          _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v62, v98);
          v99 = OUTLINED_FUNCTION_15_58();
          v100(v99);
          v101 = type metadata accessor for SiriKitConfirmationState();
          OUTLINED_FUNCTION_23_1(v101);
          if (v97)
          {
            v103 = &enum case for SiriKitConfirmationState.cancelled(_:);
          }

          else
          {
            v103 = &enum case for SiriKitConfirmationState.unset(_:);
          }

          (*(v102 + 104))(v125, *v103);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_1_122();
        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v62, v91);
        v92 = OUTLINED_FUNCTION_15_58();
        v93(v92);
        v72 = &enum case for SiriKitConfirmationState.confirmed(_:);
      }

      v94 = *v72;
      v95 = type metadata accessor for SiriKitConfirmationState();
      OUTLINED_FUNCTION_23_1(v95);
      (*(v96 + 104))(v125, v94);
LABEL_25:
      OUTLINED_FUNCTION_65();
      return;
    }

    OUTLINED_FUNCTION_1_122();
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v62, v88);
    v89 = OUTLINED_FUNCTION_15_58();
    v90(v89);
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow19BaseRCHFlowDelegateCySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
    v107 = method lookup function for BaseRCHFlowDelegate();
    v107(v123);
    goto LABEL_25;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  __swift_project_value_buffer(v108, static Logger.siriPhone);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v110))
  {
    OUTLINED_FUNCTION_42();
    v111 = OUTLINED_FUNCTION_32_0();
    v126[0] = v111;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000000461FE0, v126);
    OUTLINED_FUNCTION_18_30();
    _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_12_3();
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_28_28();
  OUTLINED_FUNCTION_34_23();
  __break(1u);
}

uint64_t StartAudioCallRCHFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(int a1, void *a2, int a3, int a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v14 = dispatch thunk of BaseRCHFlowDelegate.makeDialogTemplating()();
  specialized CallingIntentRCHFlowDelegate.buildDisambiguationList(app:intent:parameterName:intentResolutionResult:templatingService:_:)(a1, a2, a3, a4, a5, v14, a6, a7, outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartAudioB6IntentCSo0jkbL8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo012INStartAudioB6IntentCSo0jkbL8ResponseCGMR, &direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals);
}

uint64_t StartVideoCallRCHFlowDelegate.makeErrorDialogBehavior(app:intent:intentResponse:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  v3 = type metadata accessor for ErrorDialogBehavior();
  v4 = OUTLINED_FUNCTION_23_1(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

void StartAudioCallRCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for RCHExecutionStep();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  (*(v8 + 104))(v12 - v11, enum case for RCHExecutionStep.handle(_:), v5);
  v14 = static RCHExecutionStep.== infix(_:_:)();
  (*(v8 + 8))(v13, v5);
  if ((v14 & 1) != 0 && v2 && [v2 code] == &dword_0 + 2)
  {
    v15 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender + 24);
    v16 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender), v15);
    v17 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 24);
    v18 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals + 32);
    __swift_project_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals), v17);
    v19 = (*(v18 + 112))(v17, v18);
    BiomeEventSending.logEventForVoiceTriggerOnHeadset(currentRequest:)(v19, v15, v16);

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
    OUTLINED_FUNCTION_11_0();
    *v4 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
    *(v4 + 8) = 256;
    v20 = &enum case for LaunchAppBehavior.withAutomaticPunchOut(_:);
  }

  else
  {
    v20 = &enum case for LaunchAppBehavior.withDialogAndButton(_:);
  }

  v21 = *v20;
  v22 = type metadata accessor for LaunchAppBehavior();
  OUTLINED_FUNCTION_23_1(v22);
  (*(v23 + 104))(v4, v21);
  OUTLINED_FUNCTION_65();
}

uint64_t StartAudioCallRCHFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender));
  v1 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);
}

uint64_t StartAudioCallRCHFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals));
  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender));
  v1 = *(v0 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved);

  return v0;
}

uint64_t StartAudioCallRCHFlowDelegate.__deallocating_deinit()
{
  StartAudioCallRCHFlowDelegate.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  outlined init with copy of SignalProviding(a1, a4 + direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals);
  *(a4 + direct field offset for StartAudioCallRCHFlowDelegate.appResolved) = a2;
  outlined init with copy of SignalProviding(v14, a4 + direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender);
  v12 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

void specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v59 = v4;
  v6 = v5;
  v8 = v7;
  v55 = v7;
  v10 = v9;
  v57 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v58 = &v50 - v15;
  OUTLINED_FUNCTION_15_0();
  v16 = type metadata accessor for Locale();
  v17 = OUTLINED_FUNCTION_7(v16);
  v53 = v18;
  v54 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  v24 = type metadata accessor for CATOption();
  v25 = OUTLINED_FUNCTION_21(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_4();
  v68[3] = type metadata accessor for AppInfoBuilder();
  v68[4] = &protocol witness table for AppInfoBuilder;
  v68[0] = v3;
  *(v1 + direct field offset for StartAudioCallCatTemplatingService.catFamily) = v8;
  v56 = "csV2";
  outlined init with copy of SignalProviding(v10, v65);
  outlined init with copy of SignalProviding(v68, v64);
  type metadata accessor for StartCallCATs();

  static CATOption.defaultMode.getter();
  v51 = CATWrapper.__allocating_init(options:globals:)();
  v63[3] = &type metadata for LabelTemplatesProvider;
  v63[4] = &protocol witness table for LabelTemplatesProvider;
  v28 = swift_allocObject();
  v63[0] = v28;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  v29 = (v1 + *(*v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
  *v29 = 0x3D65737561705C1BLL;
  v29[1] = 0xEC0000005C303532;
  OUTLINED_FUNCTION_72_0();
  v31 = v1 + *(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v31 = v32;
  *(v31 + 1) = v32;
  *(v31 + 4) = 0;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v65, v1 + *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v34 = v66;
  v35 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  (*(v35 + 8))(&v61, v34, v35);
  OUTLINED_FUNCTION_72_0();
  v37 = *(v36 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of SPHConversation(&v61, v1 + v37);
  OUTLINED_FUNCTION_72_0();
  v39 = *(v38 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24);
  v52 = v6;
  *(v1 + v39) = v6;
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v40 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v59;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v64, v1 + *(v41 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v63, v1 + *(v42 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_72_0();
  *(v1 + *(v43 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v51;
  outlined init with copy of SignalProviding(v1 + v37, &v61);
  __swift_project_boxed_opaque_existential_1(&v61, v62);

  dispatch thunk of DeviceState.siriLocale.getter();
  v60[5] = Locale.identifier.getter();
  v60[6] = v44;
  v60[0] = 45;
  v60[1] = 0xE100000000000000;
  v60[10] = 95;
  v60[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v53 + 8))(v23, v54);

  type metadata accessor for INIntentSlotValueType(0);
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type INIntentSlotValueType and conformance INIntentSlotValueType, type metadata accessor for INIntentSlotValueType);
  Dictionary.init(dictionaryLiteral:)();
  v45 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v46 = *(v45 + 24);
  v47 = OUTLINED_FUNCTION_11_0();
  v48(v47, v45);
  outlined init with copy of SignalProviding(v1 + v37, v60);
  v49 = type metadata accessor for DucTemplatingLocalContext();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v49);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  __swift_destroy_boxed_opaque_existential_1(v65);
  OUTLINED_FUNCTION_65();
}

uint64_t outlined init with take of CommonDirectAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMd, &_s27PhoneCallFlowDelegatePlugin18CommonDirectActionOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for StartAudioCallRCHFlowDelegate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate, type metadata accessor for StartAudioCallRCHFlowDelegate);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type StartAudioCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartAudioCallRCHFlowDelegate);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for StartAudioCallRCHFlowDelegate()
{
  result = type metadata singleton initialization cache for StartAudioCallRCHFlowDelegate;
  if (!type metadata singleton initialization cache for StartAudioCallRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo012INStartAudiobK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v63 = a7;
  v65 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = type metadata accessor for PhoneCallNLv3Intent(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = a2;
  v26 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v25, v26);
  v64 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v27)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
  }

  v57 = v18;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v28 = v26;
  v29 = *&v26[*(v22 + 48)];
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  v30 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v30);
  v58 = v28;
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply);

  v32 = *(v31 + 16);
  if (v32)
  {
    v68 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v68;
    v56 = v31;
    v34 = v31 + 32;
    v66 = (v13 + 32);
    v35 = v62;
    do
    {
      outlined init with copy of SignalProviding(v34, v67);
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v67);
      v68 = v33;
      v36 = v33[2];
      if (v36 >= v33[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v68;
      }

      v33[2] = v36 + 1;
      (*(v13 + 32))(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v35, v12);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v38 = 0;
  v39 = v33[2];
  v40 = v13 + 16;
  v62 = (v13 + 32);
  v66 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v39 == v38)
    {

      v50 = v58;
      v51 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v52 = swift_allocObject();
      v26 = v50;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v64, v66, v51 & 1, v65, v59, v50, v60, v61, v63 & 1, v67, v52);

      __swift_destroy_boxed_opaque_existential_1(v67);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v38 >= v33[2])
    {
      break;
    }

    v41 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v42 = *(v13 + 72);
    (*(v13 + 16))(v21, v33 + v41 + v42 * v38, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v21, v12);
      ++v38;
    }

    else
    {
      v55 = *v62;
      v56 = v40;
      v55(v57, v21, v12);
      v43 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v43[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v67[0];
      }

      v47 = v43[2];
      v46 = v43[3];
      v48 = v43;
      v49 = (v47 + 1);
      v40 = v56;
      if (v47 >= v46 >> 1)
      {
        v66 = (v47 + 1);
        v54 = v47;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v49 = v66;
        v48 = v67[0];
        v47 = v54;
        v40 = v56;
      }

      ++v38;
      v48[2] = v49;
      v66 = v48;
      result = (v55)(v48 + v41 + v47 * v42, v57, v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartAudiobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v192 = a7;
  v189 = a5;
  v186 = a4;
  v171 = type metadata accessor for ResolvedSiriKitContact();
  v170 = *(v171 - 8);
  v16 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PhoneError();
  v18 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v20 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v167 = &v158 - v22;
  v185 = type metadata accessor for RecommenderType();
  v183 = *(v185 - 8);
  v23 = *(v183 + 64);
  __chkstk_darwin(v185);
  v184 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for SearchSuggestedContacts();
  v178 = *(v179 - 8);
  v25 = *(v178 + 64);
  __chkstk_darwin(v179);
  v181 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContactResolverDomain();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v177 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for ContactActionType();
  v180 = *(v182 - 8);
  v30 = *(v180 + 64);
  __chkstk_darwin(v182);
  v176 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v173 = &v158 - v33;
  __chkstk_darwin(v34);
  v175 = &v158 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v174 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v191 = &v158 - v40;
  v194 = type metadata accessor for Locale();
  v190 = *(v194 - 1);
  v41 = *(v190 + 64);
  __chkstk_darwin(v194);
  v172 = &v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v193 = &v158 - v44;
  v188 = type metadata accessor for ContactResolverConfigHashable();
  v45 = *(*(v188 - 8) + 64);
  __chkstk_darwin(v188);
  v47 = (&v158 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v187 = &v158 - v49;
  v199[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v199[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v199);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v51 = type metadata accessor for ContactResolution();
  if (a3)
  {
    swift_getObjectType();
    v52 = dynamic_cast_existential_1_unconditional(a1);
    v54 = v53;
    v55 = one-time initialization token for siriPhone;
    v56 = a1;
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.siriPhone);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v60, 2u);
    }

    v61 = [objc_allocWithZone(HKHealthStore) init];
    v62 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v61];

    v197 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    v198 = &protocol witness table for HKMedicalIDStore;
    *&v196 = v62;
    (*(*a11 + 80))(v52, v54, v189, &v196);

    __swift_destroy_boxed_opaque_existential_1(&v196);
    return __swift_destroy_boxed_opaque_existential_1(v199);
  }

  v63 = v51;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v64)
  {
    return __swift_destroy_boxed_opaque_existential_1(v199);
  }

  v159 = v63;
  v165 = a2;
  v158 = v20;
  if (v186)
  {
    v65 = App.appIdentifier.getter();
    if (v66)
    {
      v67 = v65;
      v68 = v66;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v70 = v69;
      v71 = v69[2];
      if (v71 >= v69[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v157;
      }

      v70[2] = v71 + 1;
      v72 = &v70[2 * v71];
      v72[4] = v67;
      v72[5] = v68;
    }

    else
    {
      v70 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v70 = _swiftEmptyArrayStorage;
  }

  v73 = v70;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    swift_once();
  }

  v74 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  v78 = v192[3];
  v79 = v192[4];
  __swift_project_boxed_opaque_existential_1(v192, v78);
  (*(v79 + 8))(&v196, v78, v79);
  __swift_project_boxed_opaque_existential_1(&v196, v197);
  v80 = v193;
  DeviceState.siriInputLocale.getter();
  v81 = a1;

  v82 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v81);
  if (v83)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0;
  }

  if (v83)
  {
    v85 = v83;
  }

  else
  {
    v85 = 0xE000000000000000;
  }

  v162 = v84;
  *v47 = v84;
  v47[1] = v85;
  v164 = v75;
  v47[2] = v75;
  v47[3] = v77;
  v86 = v188;
  v87 = *(v190 + 16);
  v87(v47 + *(v188 + 24), v80, v194);
  *(v47 + *(v86 + 28)) = v73;

  v161 = v85;

  v163 = v77;

  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartAudioCallIntent, v191);
  v88 = [v81 preferredCallProvider];
  v189 = v81;
  v160 = a8;
  v166 = v73;
  if (v88 == &dword_0 + 2)
  {
    swift_getObjectType();
    dynamic_cast_existential_1_unconditional(v81);
    v90 = v89;
    ObjectType = swift_getObjectType();
    v92 = *(v90 + 24);
    v93 = v81;
    v94 = v92(ObjectType, v90);

    v95 = v180;
    v96 = *(v180 + 104);
    if (v94 == 1)
    {
      v97 = &enum case for ContactActionType.facetimeAudio(_:);
    }

    else
    {
      v97 = &enum case for ContactActionType.facetimeVideo(_:);
    }

    v98 = *v97;
  }

  else
  {
    v98 = enum case for ContactActionType.phoneCall(_:);
    v95 = v180;
    v96 = *(v180 + 104);
  }

  v99 = v173;
  v100 = v182;
  v96(v173, v98, v182);
  v101 = v175;
  (*(v95 + 32))(v175, v99, v100);
  v87(v172, v193, v194);
  static ContactResolverDomain.phone.getter();
  v102 = v191;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v191, v174, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v178 + 104))(v181, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v179);
  (*(v183 + 104))(v184, enum case for RecommenderType.mlRecommender(_:), v185);
  v103 = v100;
  v104 = *(v188 + 32);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  (*(v95 + 16))(v176, v101, v103);
  ContactResolverConfig.actionType.setter();
  (*(v95 + 8))(v101, v103);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v102, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v190 + 8))(v193, v194);
  v105 = v187;
  outlined init with take of ContactResolverConfigHashable(v47, v187);
  __swift_destroy_boxed_opaque_existential_1(&v196);
  v106 = v192[3];
  v107 = v192[4];
  __swift_project_boxed_opaque_existential_1(v192, v106);
  (*(v107 + 96))(&v196, v106, v107);
  v108 = v197;
  v109 = v198;
  __swift_project_boxed_opaque_existential_1(&v196, v197);
  v110 = (v109[2])(v165, v105, v108, v109);
  __swift_destroy_boxed_opaque_existential_1(&v196);
  v111 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  type metadata accessor for SiriKitEvent();
  v112 = [v189 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(v199, &v196);
  v113 = swift_allocObject();
  *(v113 + 16) = v186;
  outlined init with take of SPHConversation(&v196, v113 + 24);
  *(v113 + 64) = v110;

  LOBYTE(v195) = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v114 = *(v110 + 16);
  if (v114)
  {
    *&v196 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v115 = *(v170 + 16);
    v193 = v110;
    v194 = v115;
    v116 = v110 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
    v117 = *(v170 + 72);
    v118 = (v170 + 8);
    v119 = v169;
    v120 = v171;
    do
    {
      v194(v119, v116, v120);
      ResolvedSiriKitContact.person.getter();
      (*v118)(v119, v120);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v121 = *(v196 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v116 += v117;
      --v114;
    }

    while (v114);

    v122._rawValue = v196;
  }

  else
  {

    v122._rawValue = _swiftEmptyArrayStorage;
  }

  v123 = specialized Array.count.getter(v122._rawValue);
  v124 = v189;
  v125 = v160;
  if (v123)
  {
    v126 = static ContactResolution.dedupeContacts(contacts:)();

    v122._rawValue = v126;
  }

  if (a9)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    __swift_project_value_buffer(v127, static Logger.siriPhone);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v128, v129))
    {
      goto LABEL_60;
    }

    v130 = swift_slowAlloc();
    *v130 = 0;
    v131 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_59:
    _os_log_impl(&dword_0, v128, v129, v131, v130, 2u);

LABEL_60:

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v122);

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v187, type metadata accessor for ContactResolverConfigHashable);
    return __swift_destroy_boxed_opaque_existential_1(v199);
  }

  v132 = outlined bridged method (pb) of @objc INStartAudioCallIntent.contacts.getter(v124);
  if (!v132)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v141 = type metadata accessor for Logger();
    __swift_project_value_buffer(v141, static Logger.siriPhone);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v128, v129))
    {
      goto LABEL_60;
    }

    v130 = swift_slowAlloc();
    *v130 = 0;
    v131 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
    goto LABEL_59;
  }

  v133 = v132;
  if (!specialized Array.count.getter(v122._rawValue))
  {
    goto LABEL_49;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v122._rawValue & 0xC000000000000001) == 0, v122._rawValue);
  if ((v122._rawValue & 0xC000000000000001) != 0)
  {
    v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v134 = *(v122._rawValue + 4);
  }

  v135 = v134;
  if (v125 < 0 || specialized Array.count.getter(v133) <= v125 || (v136 = specialized Array.count.getter(v122._rawValue), specialized Array.count.getter(v133) < v136))
  {

LABEL_49:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    __swift_project_value_buffer(v137, static Logger.siriPhone);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_0, v138, v139, "#ContactResolution: overwriting contacts slot", v140, 2u);
    }

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v122);
    goto LABEL_54;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v143 = type metadata accessor for Logger();
  __swift_project_value_buffer(v143, static Logger.siriPhone);
  v144 = Logger.logObject.getter();
  v145 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    *v146 = 134217984;
    *(v146 + 4) = v160;
    _os_log_impl(&dword_0, v144, v145, "#ContactResolution updating person at index %ld", v146, 0xCu);
  }

  v147 = specialized Array.count.getter(v133);
  v148 = v160;
  if (v147 <= v160)
  {
    v152 = v158;
    *v158 = v160;
    swift_storeEnumTagMultiPayload();
    v153 = v167;
    PhoneError.logged()(v167);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v152, type metadata accessor for PhoneError);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v153, type metadata accessor for PhoneError);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 134218240;
      *(v156 + 4) = v148;
      *(v156 + 12) = 2048;
      *(v156 + 14) = specialized Array.count.getter(v133);
      _os_log_impl(&dword_0, v154, v155, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v156, 0x16u);
    }

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v122);
    goto LABEL_54;
  }

  v149 = v135;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v133 >> 62 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
    v133 = result;
  }

  if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) > v160)
  {
    v150 = *(&stru_20.cmd + 8 * v160 + (v133 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v160 + (v133 & 0xFFFFFFFFFFFFFF8)) = v149;

    INStartAudioCallIntent.overwriteContacts(newContacts:)(v151);

LABEL_54:

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v187, type metadata accessor for ContactResolverConfigHashable);

    return __swift_destroy_boxed_opaque_existential_1(v199);
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo07INStartbK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v63 = a7;
  v65 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = type metadata accessor for PhoneCallNLv3Intent(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = a2;
  v26 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v25, v26);
  v64 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v27)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
  }

  v57 = v18;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v28 = v26;
  v29 = *&v26[*(v22 + 48)];
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  v30 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v30);
  v58 = v28;
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(closure #1 in PhoneCallNLv3Intent.contacts.getterpartial apply);

  v32 = *(v31 + 16);
  if (v32)
  {
    v68 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v68;
    v56 = v31;
    v34 = v31 + 32;
    v66 = (v13 + 32);
    v35 = v62;
    do
    {
      outlined init with copy of SignalProviding(v34, v67);
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v67);
      v68 = v33;
      v36 = v33[2];
      if (v36 >= v33[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v68;
      }

      v33[2] = v36 + 1;
      (*(v13 + 32))(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v35, v12);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v38 = 0;
  v39 = v33[2];
  v40 = v13 + 16;
  v62 = (v13 + 32);
  v66 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v39 == v38)
    {

      v50 = v58;
      v51 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v52 = swift_allocObject();
      v26 = v50;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v64, v66, v51 & 1, v65, v59, v50, v60, v61, v63 & 1, v67, v52);

      __swift_destroy_boxed_opaque_existential_1(v67);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v38 >= v33[2])
    {
      break;
    }

    v41 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v42 = *(v13 + 72);
    (*(v13 + 16))(v21, v33 + v41 + v42 * v38, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v21, v12);
      ++v38;
    }

    else
    {
      v55 = *v62;
      v56 = v40;
      v55(v57, v21, v12);
      v43 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v43[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v67[0];
      }

      v47 = v43[2];
      v46 = v43[3];
      v48 = v43;
      v49 = (v47 + 1);
      v40 = v56;
      if (v47 >= v46 >> 1)
      {
        v66 = (v47 + 1);
        v54 = v47;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v49 = v66;
        v48 = v67[0];
        v47 = v54;
        v40 = v56;
      }

      ++v38;
      v48[2] = v49;
      v66 = v48;
      result = (v55)(v48 + v41 + v47 * v42, v57, v12);
    }
  }

  __break(1u);
  return result;
}

void _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B1LL8nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm()
{
  OUTLINED_FUNCTION_66();
  v93 = v1;
  v94 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for PhoneCallNLv3Intent(0);
  v101 = v10;
  v102 = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
  outlined init with copy of PhoneCallNLv3Intent(v9, boxed_opaque_existential_1);
  swift_getObjectType();
  dynamic_cast_existential_1_unconditional(v7);
  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 16);
  v16 = v7;
  if (v15(ObjectType, v13) == 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_3;
  }

  if (v5)
  {
    if (*(v5 + 16))
    {
      goto LABEL_33;
    }

    if (one-time initialization token for siriPhone != -1)
    {
LABEL_86:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (!OUTLINED_FUNCTION_10_0(v32))
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v21 = v3(v16);
  if (!v21)
  {
    goto LABEL_24;
  }

  v16 = v21;
  v22 = specialized Array.count.getter(v21);
  if (!v22)
  {

LABEL_24:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v35))
    {
LABEL_22:
      v33 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v33);
LABEL_31:
      OUTLINED_FUNCTION_18_30();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_12_3();
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v23 = v22;
  v24 = 0;
  v25 = v16 & 0xC000000000000001;
  v26 = v16 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v23 == v24)
    {

      if (one-time initialization token for siriPhone != -1)
      {
LABEL_88:
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v36, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v37))
      {
LABEL_30:
        v38 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v38);
        goto LABEL_31;
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v25)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_82;
      }

      v27 = *(v16 + 8 * v24 + 32);
    }

    v28 = v27;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v29 = INPerson.hasHandleValue.getter();

    ++v24;
    if (!v29)
    {
      v44 = 0;
      v92 = v16 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v25)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v44 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_86;
          }

          v45 = *(v16 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_83;
        }

        v48 = [v45 personHandle];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 emergencyType];

          if (v50)
          {

            if (one-time initialization token for siriPhone != -1)
            {
LABEL_90:
              OUTLINED_FUNCTION_0_6();
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_9_0(v77, static Logger.siriPhone);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.debug.getter();
            if (OUTLINED_FUNCTION_10_0(v79))
            {
              OUTLINED_FUNCTION_42();
              v80 = OUTLINED_FUNCTION_32_0();
              v96[0] = v80;
              *v47 = 136315138;
              *&v95[0] = v50;
              type metadata accessor for INPersonHandleEmergencyType(0);
              v81 = String.init<A>(describing:)();
              v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v96);

              *(v47 + 4) = v83;
              OUTLINED_FUNCTION_18_30();
              _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v80);
              OUTLINED_FUNCTION_52();
              OUTLINED_FUNCTION_12_3();
            }

            goto LABEL_33;
          }
        }

        ++v44;
        v26 = v92;
      }

      while (v47 != v23);
      v51 = __swift_project_boxed_opaque_existential_1(v100, v101);
      v52 = *(boxed_opaque_existential_1 + *(v10 + 48));
      OUTLINED_FUNCTION_10_72();
      lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(v53, v54);
      v55 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
      v50 = &v91;
      __chkstk_darwin(v55);
      v56 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v94);

      v57 = *(v56 + 16);

      if (!v57)
      {
LABEL_74:

        goto LABEL_33;
      }

      v58 = *(v51 + *(v10 + 48));
      v59 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
      __chkstk_darwin(v59);
      v47 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(v93);

      v46 = 0;
      v60 = *(v47 + 16);
      v61 = v47 + 32;
      if (v16 >= 0)
      {
        v62 = v26;
      }

      else
      {
        v62 = v16;
      }

      v93 = v62;
      v94 = v60;
      while (1)
      {
        if (v94 == v46)
        {

          goto LABEL_77;
        }

        if (v46 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_88;
        }

        outlined init with copy of SignalProviding(v61, v95);
        v63 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(v26 + 16);
        if (v46 == v63)
        {
          break;
        }

        if (v25)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_90;
          }

          v64 = *(v16 + 8 * v46 + 32);
        }

        v65 = v64;
        outlined init with take of SPHConversation(v95, v96);
        v99 = v65;
        v67 = v97;
        v66 = v98;
        __swift_project_boxed_opaque_existential_1(v96, v97);
        v68 = (*(v66 + 32))(v67, v66);
        if (!v69)
        {
          goto LABEL_72;
        }

        v70 = v68;
        v71 = v69;

        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v70 & 0xFFFFFFFFFFFFLL;
        }

        if (!v72 || (v73 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v65), !v74))
        {
LABEL_72:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v96, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
LABEL_73:

          goto LABEL_74;
        }

        v75 = v73;
        v50 = v74;

        if ((v50 & 0x2000000000000000) != 0)
        {
          v76 = HIBYTE(v50) & 0xF;
        }

        else
        {
          v76 = v75 & 0xFFFFFFFFFFFFLL;
        }

        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v96, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMd, &_s27PhoneCallFlowDelegatePlugin04SiriA7Contact_p_So8INPersonCtMR);
        v61 += 40;
        ++v46;
        v26 = v92;
        if (!v76)
        {
          goto LABEL_73;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_77:
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v89, static Logger.siriPhone);
      v31 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_10_0(v90))
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v17, static Logger.siriPhone);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v19))
  {
    v20 = OUTLINED_FUNCTION_65_0();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "#ContactResolution intent is emergency call. bypassing contact resolution", v20, 2u);
    OUTLINED_FUNCTION_52();
  }

LABEL_33:
  __swift_destroy_boxed_opaque_existential_1(v100);
  OUTLINED_FUNCTION_65();
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v191 = a7;
  v188 = a5;
  v185 = a4;
  v170 = type metadata accessor for ResolvedSiriKitContact();
  v169 = *(v170 - 8);
  v16 = *(v169 + 64);
  __chkstk_darwin(v170);
  v168 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PhoneError();
  v18 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v167);
  v20 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v166 = &v157 - v22;
  v184 = type metadata accessor for RecommenderType();
  v182 = *(v184 - 8);
  v23 = *(v182 + 64);
  __chkstk_darwin(v184);
  v183 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for SearchSuggestedContacts();
  v177 = *(v178 - 8);
  v25 = *(v177 + 64);
  __chkstk_darwin(v178);
  v180 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContactResolverDomain();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v176 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for ContactActionType();
  v179 = *(v181 - 8);
  v30 = *(v179 + 64);
  __chkstk_darwin(v181);
  v175 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v172 = &v157 - v33;
  __chkstk_darwin(v34);
  v174 = &v157 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v173 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v190 = &v157 - v40;
  v193 = type metadata accessor for Locale();
  v189 = *(v193 - 1);
  v41 = *(v189 + 64);
  __chkstk_darwin(v193);
  v171 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v192 = &v157 - v44;
  v187 = type metadata accessor for ContactResolverConfigHashable();
  v45 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v187);
  v47 = (&v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v186 = &v157 - v49;
  v198[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v198[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v198);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v51 = type metadata accessor for ContactResolution();
  if ((a3 & 1) == 0)
  {
    v63 = v51;
    _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
    if (v64)
    {
      return __swift_destroy_boxed_opaque_existential_1(v198);
    }

    v158 = v63;
    v164 = a2;
    v157 = v20;
    if (v185)
    {
      v65 = App.appIdentifier.getter();
      if (v66)
      {
        v67 = v65;
        v68 = v66;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v70 = v69;
        v71 = v69[2];
        if (v71 >= v69[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v156;
        }

        v70[2] = v71 + 1;
        v72 = &v70[2 * v71];
        v72[4] = v67;
        v72[5] = v68;
      }

      else
      {
        v70 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v70 = _swiftEmptyArrayStorage;
    }

    v73 = v70;
    if (one-time initialization token for emptyStartCallIntent != -1)
    {
      swift_once();
    }

    v74 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    v78 = v191[3];
    v79 = v191[4];
    __swift_project_boxed_opaque_existential_1(v191, v78);
    (*(v79 + 8))(&v195, v78, v79);
    __swift_project_boxed_opaque_existential_1(&v195, v196);
    v80 = v192;
    DeviceState.siriInputLocale.getter();
    v81 = a1;

    v82 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v81);
    if (v83)
    {
      v84 = v82;
    }

    else
    {
      v84 = 0;
    }

    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0xE000000000000000;
    }

    v161 = v84;
    *v47 = v84;
    v47[1] = v85;
    v163 = v75;
    v47[2] = v75;
    v47[3] = v77;
    v86 = v187;
    v87 = *(v189 + 16);
    v87(v47 + *(v187 + 24), v80, v193);
    *(v47 + *(v86 + 28)) = v73;

    v160 = v85;

    v162 = v77;

    static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartCallIntent, v190);
    v88 = [v81 preferredCallProvider];
    v188 = v81;
    v159 = a8;
    v165 = v73;
    if (v88 == &dword_0 + 2)
    {
      swift_getObjectType();
      dynamic_cast_existential_1_unconditional(v81);
      v90 = v89;
      ObjectType = swift_getObjectType();
      v92 = *(v90 + 24);
      v93 = v81;
      v94 = v92(ObjectType, v90);

      v95 = v179;
      v96 = *(v179 + 104);
      if (v94 == 1)
      {
        v97 = &enum case for ContactActionType.facetimeAudio(_:);
      }

      else
      {
        v97 = &enum case for ContactActionType.facetimeVideo(_:);
      }

      v98 = *v97;
    }

    else
    {
      v98 = enum case for ContactActionType.phoneCall(_:);
      v95 = v179;
      v96 = *(v179 + 104);
    }

    v99 = v172;
    v100 = v181;
    v96(v172, v98, v181);
    v101 = v174;
    (*(v95 + 32))(v174, v99, v100);
    v87(v171, v192, v193);
    static ContactResolverDomain.phone.getter();
    v102 = v190;
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v190, v173, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v177 + 104))(v180, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v178);
    (*(v182 + 104))(v183, enum case for RecommenderType.mlRecommender(_:), v184);
    v103 = v100;
    v104 = *(v187 + 32);
    ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
    (*(v95 + 16))(v175, v101, v103);
    ContactResolverConfig.actionType.setter();
    (*(v95 + 8))(v101, v103);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v102, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
    (*(v189 + 8))(v192, v193);
    v105 = v186;
    outlined init with take of ContactResolverConfigHashable(v47, v186);
    __swift_destroy_boxed_opaque_existential_1(&v195);
    v106 = v191[3];
    v107 = v191[4];
    __swift_project_boxed_opaque_existential_1(v191, v106);
    (*(v107 + 96))(&v195, v106, v107);
    v108 = v196;
    v109 = v197;
    __swift_project_boxed_opaque_existential_1(&v195, v196);
    v110 = (v109[2])(v164, v105, v108, v109);
    __swift_destroy_boxed_opaque_existential_1(&v195);
    v111 = a10[4];
    __swift_project_boxed_opaque_existential_1(a10, a10[3]);
    type metadata accessor for SiriKitEvent();
    v112 = [v188 typeName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of SignalProviding(v198, &v195);
    v113 = swift_allocObject();
    *(v113 + 16) = v185;
    outlined init with take of SPHConversation(&v195, v113 + 24);
    *(v113 + 64) = v110;

    LOBYTE(v194) = 0;
    SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    v114 = *(v110 + 16);
    if (v114)
    {
      *&v195 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v115 = *(v169 + 16);
      v192 = v110;
      v193 = v115;
      v116 = v110 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
      v117 = *(v169 + 72);
      v118 = (v169 + 8);
      v119 = v168;
      v120 = v170;
      do
      {
        v193(v119, v116, v120);
        ResolvedSiriKitContact.person.getter();
        (*v118)(v119, v120);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v121 = *(v195 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v116 += v117;
        --v114;
      }

      while (v114);

      v122 = v195;
    }

    else
    {

      v122 = _swiftEmptyArrayStorage;
    }

    v123 = specialized Array.count.getter(v122);
    v124 = v188;
    v125 = v159;
    if (v123)
    {
      v126 = static ContactResolution.dedupeContacts(contacts:)();

      v122 = v126;
    }

    if (a9)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v127 = type metadata accessor for Logger();
      __swift_project_value_buffer(v127, static Logger.siriPhone);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v128, v129))
      {
        goto LABEL_60;
      }

      v130 = swift_slowAlloc();
      *v130 = 0;
      v131 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_59:
      _os_log_impl(&dword_0, v128, v129, v131, v130, 2u);

LABEL_60:

      INStartCallIntent.overwriteContacts(newContacts:)(v122);

      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v186, type metadata accessor for ContactResolverConfigHashable);
      return __swift_destroy_boxed_opaque_existential_1(v198);
    }

    v132 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v124);
    if (!v132)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      __swift_project_value_buffer(v141, static Logger.siriPhone);
      v128 = Logger.logObject.getter();
      v129 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v128, v129))
      {
        goto LABEL_60;
      }

      v130 = swift_slowAlloc();
      *v130 = 0;
      v131 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
      goto LABEL_59;
    }

    v133 = v132;
    if (!specialized Array.count.getter(v122))
    {
      goto LABEL_49;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v122 & 0xC000000000000001) == 0, v122);
    if ((v122 & 0xC000000000000001) != 0)
    {
      v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v134 = *(v122 + 32);
    }

    v135 = v134;
    if (v125 < 0 || specialized Array.count.getter(v133) <= v125 || (v136 = specialized Array.count.getter(v122), specialized Array.count.getter(v133) < v136))
    {

LABEL_49:
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v137 = type metadata accessor for Logger();
      __swift_project_value_buffer(v137, static Logger.siriPhone);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_0, v138, v139, "#ContactResolution: overwriting contacts slot", v140, 2u);
      }

      INStartCallIntent.overwriteContacts(newContacts:)(v122);
      goto LABEL_54;
    }

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    v144 = __swift_project_value_buffer(v143, static Logger.siriPhone);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 134217984;
      *(v147 + 4) = v159;
      _os_log_impl(&dword_0, v145, v146, "#ContactResolution updating person at index %ld", v147, 0xCu);
    }

    v148 = specialized Array.count.getter(v133);
    v149 = v159;
    if (v148 <= v159)
    {
      v153 = v157;
      *v157 = v159;
      swift_storeEnumTagMultiPayload();
      v154 = v166;
      PhoneError.logged()(v166);
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v153, type metadata accessor for PhoneError);
      _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v154, type metadata accessor for PhoneError);
      v145 = Logger.logObject.getter();
      v144 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v145, v144))
      {
LABEL_76:

        INStartCallIntent.overwriteContacts(newContacts:)(v122);
        goto LABEL_54;
      }

      v146 = swift_slowAlloc();
      *v146 = 134218240;
      *(v146 + 4) = v149;
      *(v146 + 12) = 2048;
      if (!(v133 >> 62))
      {
        v155 = *(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8));
LABEL_75:
        *(v146 + 14) = v155;
        _os_log_impl(&dword_0, v145, v144, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v146, 0x16u);

        goto LABEL_76;
      }
    }

    else
    {

      v122 = v135;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v133 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew()(v133);
      }

      if (*(&dword_10 + (v133 & 0xFFFFFFFFFFFFFF8)) > v159)
      {
        v151 = *(&stru_20.cmd + 8 * v159 + (v133 & 0xFFFFFFFFFFFFFF8));
        *(&stru_20.cmd + 8 * v159 + (v133 & 0xFFFFFFFFFFFFFF8)) = v122;

        INStartCallIntent.overwriteContacts(newContacts:)(v152);

LABEL_54:

        _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v186, type metadata accessor for ContactResolverConfigHashable);

        return __swift_destroy_boxed_opaque_existential_1(v198);
      }

      __break(1u);
    }

    v155 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_75;
  }

  swift_getObjectType();
  v52 = dynamic_cast_existential_1_unconditional(a1);
  v54 = v53;
  v55 = one-time initialization token for siriPhone;
  v56 = a1;
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  __swift_project_value_buffer(v57, static Logger.siriPhone);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v60, 2u);
  }

  v61 = [objc_allocWithZone(HKHealthStore) init];
  v62 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v61];

  v196 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
  v197 = &protocol witness table for HKMedicalIDStore;
  *&v195 = v62;
  (*(*a11 + 80))(v52, v54, v188, &v195);

  __swift_destroy_boxed_opaque_existential_1(&v195);
  return __swift_destroy_boxed_opaque_existential_1(v198);
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC23updateSiriKitIntentNLv304sirijK002nlK03app6locale13sharedGlobals18multicardinalIndexyAA07CallingK0_p_AA0aB8NLIntent_p0i3AppG00W0CSg10Foundation6LocaleVAA06SharedR9Providing_pSiSgtFZTf4ennnnnn_nSo012INStartVideobK0C_Tt5g5Tf4nennnn_nAA0ablK0V_Tg5(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *, char *, uint64_t), uint64_t a6, int a7)
{
  v63 = a7;
  v65 = a3;
  v12 = type metadata accessor for ContactQuery();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  v22 = type metadata accessor for PhoneCallNLv3Intent(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = a2;
  v26 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PhoneCallNLv3Intent(v25, v26);
  v64 = a1;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v27)
  {
    return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
  }

  v57 = v18;
  v59 = a4;
  v60 = a5;
  v61 = a6;
  v28 = v26;
  v29 = *&v26[*(v22 + 48)];
  lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(&lazy protocol witness table cache variable for type PhoneCallNLv3Intent and conformance PhoneCallNLv3Intent, type metadata accessor for PhoneCallNLv3Intent);
  v30 = IntentNodeTraversable.intentNodes(forOntologyNode:)();
  __chkstk_darwin(v30);
  v58 = v28;
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology21NonTerminalIntentNodeVG_27PhoneCallFlowDelegatePlugin0dJ7Contact_ps5NeverOTg5(partial apply for closure #1 in PhoneCallNLv3Intent.contacts.getter);

  v32 = *(v31 + 16);
  if (v32)
  {
    v68 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v68;
    v56 = v31;
    v34 = v31 + 32;
    v66 = (v13 + 32);
    v35 = v62;
    do
    {
      outlined init with copy of SignalProviding(v34, v67);
      __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      SiriPhoneContact.asSiriInferenceContact.getter();
      __swift_destroy_boxed_opaque_existential_1(v67);
      v68 = v33;
      v36 = v33[2];
      if (v36 >= v33[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v68;
      }

      v33[2] = v36 + 1;
      (*(v13 + 32))(v33 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v36, v35, v12);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v38 = 0;
  v39 = v33[2];
  v40 = v13 + 16;
  v62 = (v13 + 32);
  v66 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v39 == v38)
    {

      v50 = v58;
      v51 = specialized PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v52 = swift_allocObject();
      v26 = v50;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(v64, v66, v51 & 1, v65, v59, v50, v60, v61, v63 & 1, v67, v52);

      __swift_destroy_boxed_opaque_existential_1(v67);
      return _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v26, type metadata accessor for PhoneCallNLv3Intent);
    }

    if (v38 >= v33[2])
    {
      break;
    }

    v41 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v42 = *(v13 + 72);
    (*(v13 + 16))(v21, v33 + v41 + v42 * v38, v12);
    if (one-time initialization token for emptyQuery != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyQuery);
    if (static ContactQuery.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    if (one-time initialization token for emptyNLv4Query != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, static ContactQuery.emptyNLv4Query);
    if (static ContactQuery.== infix(_:_:)())
    {
LABEL_18:
      result = (*(v13 + 8))(v21, v12);
      ++v38;
    }

    else
    {
      v55 = *v62;
      v56 = v40;
      v55(v57, v21, v12);
      v43 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = v43[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v43 = v67[0];
      }

      v47 = v43[2];
      v46 = v43[3];
      v48 = v43;
      v49 = (v47 + 1);
      v40 = v56;
      if (v47 >= v46 >> 1)
      {
        v66 = (v47 + 1);
        v54 = v47;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v49 = v66;
        v48 = v67[0];
        v47 = v54;
        v40 = v56;
      }

      ++v38;
      v48[2] = v49;
      v66 = v48;
      result = (v55)(v48 + v41 + v47 * v42, v57, v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo012INStartVideobK0C_Tt9g5Tf4nnnnnennnn_nAA0ab4NLv3K0V_Tg5(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, char *, uint64_t), uint64_t a8, char a9, void *a10, uint64_t a11)
{
  v167 = a8;
  v190 = a5;
  v191 = a7;
  v183 = a4;
  v169 = type metadata accessor for ResolvedSiriKitContact();
  v170 = *(v169 - 8);
  v15 = *(v170 + 64);
  __chkstk_darwin(v169);
  v168 = v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for PhoneError();
  v17 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v166 = (v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v164 = v154 - v20;
  v182 = type metadata accessor for RecommenderType();
  v180 = *(v182 - 8);
  v21 = *(v180 + 64);
  __chkstk_darwin(v182);
  v181 = v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for SearchSuggestedContacts();
  v176 = *(v177 - 8);
  v23 = *(v176 + 64);
  __chkstk_darwin(v177);
  v178 = v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ContactResolverDomain();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v175 = v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for ContactActionType();
  v173 = *(v179 - 8);
  v28 = *(v173 + 64);
  __chkstk_darwin(v179);
  v174 = v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v154 - v31;
  __chkstk_darwin(v33);
  v189 = v154 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v172 = v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v188 = v154 - v39;
  v40 = type metadata accessor for Locale();
  v186 = *(v40 - 8);
  v187 = v40;
  v41 = *(v186 + 64);
  __chkstk_darwin(v40);
  v171 = v154 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = v154 - v44;
  v185 = type metadata accessor for ContactResolverConfigHashable();
  v46 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v48 = (v154 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v49);
  v184 = v154 - v50;
  v196[3] = type metadata accessor for PhoneCallNLv3Intent(0);
  v196[4] = &protocol witness table for PhoneCallNLv3Intent;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v196);
  outlined init with copy of PhoneCallNLv3Intent(a6, boxed_opaque_existential_1);
  v52 = type metadata accessor for ContactResolution();
  if (a3)
  {
    swift_getObjectType();
    v53 = dynamic_cast_existential_1_unconditional(a1);
    v55 = v54;
    v56 = one-time initialization token for siriPhone;
    v57 = a1;
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Logger.siriPhone);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "#ContactResolution NL intent has an emergency contact. Bypassing contact resolution.", v61, 2u);
    }

    v62 = [objc_allocWithZone(HKHealthStore) init];
    v63 = [objc_allocWithZone(HKMedicalIDStore) initWithHealthStore:v62];

    v194 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for HKMedicalIDStore, HKMedicalIDStore_ptr);
    v195 = &protocol witness table for HKMedicalIDStore;
    *&v193 = v63;
    (*(*a11 + 80))(v53, v55, v190, &v193);

    __swift_destroy_boxed_opaque_existential_1(&v193);
    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v64 = v52;
  _s27PhoneCallFlowDelegatePlugin17ContactResolutionC010shouldSkipfG033_4B58522B746884F3C9E10F5EDE9E49B18nlIntent02skT014contactQueriesSbAA0aB8NLIntent_p_AA013NCRResolvableT0_pSay13SiriInference0F5QueryVGSgtFZTf4nenn_nSo012INStartAudiobT0C_Tt2g5Tf4enn_nAA0ab4NLv3T0V_Tg5Tm();
  if (v65)
  {
    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v154[1] = v64;
  v161 = a2;
  v66 = _swiftEmptyArrayStorage;
  if (v183)
  {
    v67 = App.appIdentifier.getter();
    if (v68)
    {
      v69 = v67;
      v70 = v68;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = v71;
      v72 = v71[2];
      if (v72 >= v71[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v153;
      }

      v66[2] = v72 + 1;
      v73 = &v66[2 * v72];
      v73[4] = v69;
      v73[5] = v70;
    }
  }

  v160 = v32;
  if (one-time initialization token for emptyStartCallIntent != -1)
  {
    swift_once();
  }

  v74 = [static PhoneCallIntentClassNames.emptyStartCallIntent _className];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v159 = v75;
  v77 = v76;

  v79 = *(v191 + 3);
  v78 = *(v191 + 4);
  __swift_project_boxed_opaque_existential_1(v191, v79);
  (*(v78 + 8))(&v193, v79, v78);
  __swift_project_boxed_opaque_existential_1(&v193, v194);
  v163 = v45;
  DeviceState.siriInputLocale.getter();
  v80 = a1;

  v81 = outlined bridged method (ob) of @objc INIntent.intentId.getter(v80);
  if (v82)
  {
    v83 = v81;
  }

  else
  {
    v83 = 0;
  }

  v158 = v83;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  *v48 = v83;
  v48[1] = v84;
  v157 = v84;
  v48[2] = v75;
  v48[3] = v77;
  v156 = v77;
  v85 = *(v185 + 24);
  v86 = v66;
  v162 = v66;
  v87 = v185;
  v88 = v48;
  v89 = *(v186 + 16);
  v155 = v88;
  v90 = v187;
  v89(v88 + v85, v45, v187);
  *(v88 + *(v87 + 28)) = v86;

  v91 = v188;
  v190 = v80;
  static ContactResolverConfigHashable.chooseHandleTypePreference(skIntent:)(&protocol witness table for INStartVideoCallIntent, v188);
  v92 = v173;
  v93 = v160;
  v94 = v179;
  (*(v173 + 104))(v160, enum case for ContactActionType.phoneCall(_:), v179);
  (*(v92 + 32))(v189, v93, v94);
  v89(v171, v163, v90);
  static ContactResolverDomain.phone.getter();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v91, v172, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v176 + 104))(v178, enum case for SearchSuggestedContacts.ifOnlyMatchIsSuggested(_:), v177);
  (*(v180 + 104))(v181, enum case for RecommenderType.mlRecommender(_:), v182);
  v95 = *(v185 + 32);
  v96 = v155;
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:)();
  v97 = v189;
  (*(v92 + 16))(v174, v189, v94);
  ContactResolverConfig.actionType.setter();
  (*(v92 + 8))(v97, v94);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v188, &_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  (*(v186 + 8))(v163, v187);
  v98 = v184;
  outlined init with take of ContactResolverConfigHashable(v96, v184);
  __swift_destroy_boxed_opaque_existential_1(&v193);
  v99 = *(v191 + 3);
  v100 = *(v191 + 4);
  __swift_project_boxed_opaque_existential_1(v191, v99);
  (*(v100 + 96))(&v193, v99, v100);
  v101 = v194;
  v102 = v195;
  __swift_project_boxed_opaque_existential_1(&v193, v194);
  v103 = (v102[2])(v161, v98, v101, v102);
  __swift_destroy_boxed_opaque_existential_1(&v193);
  v104 = a10[4];
  __swift_project_boxed_opaque_existential_1(a10, a10[3]);
  type metadata accessor for SiriKitEvent();
  v105 = [v190 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of SignalProviding(v196, &v193);
  v106 = swift_allocObject();
  *(v106 + 16) = v183;
  outlined init with take of SPHConversation(&v193, v106 + 24);
  *(v106 + 64) = v103;

  LOBYTE(v192) = 0;
  SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
  dispatch thunk of SiriKitEventSending.send(_:)();

  v107 = *(v103 + 16);
  if (v107)
  {
    *&v193 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v108 = v168;
    v109 = v103;
    v110 = v169;
    v191 = *(v170 + 16);
    v111 = *(v170 + 80);
    v189 = v109;
    v112 = &v109[(v111 + 32) & ~v111];
    v113 = *(v170 + 72);
    v114 = (v170 + 8);
    do
    {
      v191(v108, v112, v110);
      ResolvedSiriKitContact.person.getter();
      (*v114)(v108, v110);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v115 = *(v193 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v112 += v113;
      --v107;
    }

    while (v107);

    v116._rawValue = v193;
  }

  else
  {

    v116._rawValue = _swiftEmptyArrayStorage;
  }

  v117 = specialized Array.count.getter(v116._rawValue);
  v118 = v184;
  v119 = v190;
  if (v117)
  {
    v120 = static ContactResolution.dedupeContacts(contacts:)();

    v116._rawValue = v120;
  }

  if (a9)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    __swift_project_value_buffer(v121, static Logger.siriPhone);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v122, v123))
    {
      goto LABEL_52;
    }

    v124 = swift_slowAlloc();
    *v124 = 0;
    v125 = "#ContactResolution multicardinalIndex is nil, overwriting contacts slot";
LABEL_51:
    _os_log_impl(&dword_0, v122, v123, v125, v124, 2u);

LABEL_52:

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v116);

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v118, type metadata accessor for ContactResolverConfigHashable);
    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  v126 = outlined bridged method (pb) of @objc INStartVideoCallIntent.contacts.getter(v119);
  if (!v126)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    __swift_project_value_buffer(v136, static Logger.siriPhone);
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v122, v123))
    {
      goto LABEL_52;
    }

    v124 = swift_slowAlloc();
    *v124 = 0;
    v125 = "#ContactResolution siriKitIntent contacts slot is nil, overwriting contacts slot";
    goto LABEL_51;
  }

  v127 = v126;
  if (!specialized Array.count.getter(v116._rawValue))
  {
    goto LABEL_41;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v116._rawValue & 0xC000000000000001) == 0, v116._rawValue);
  if ((v116._rawValue & 0xC000000000000001) != 0)
  {
    v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v128 = *(v116._rawValue + 4);
  }

  v129 = v128;
  v130 = v167;
  if (v167 < 0 || specialized Array.count.getter(v127) <= v130 || (v131 = specialized Array.count.getter(v116._rawValue), specialized Array.count.getter(v127) < v131))
  {

LABEL_41:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    __swift_project_value_buffer(v132, static Logger.siriPhone);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v133, v134, "#ContactResolution: overwriting contacts slot", v135, 2u);
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v116);
    goto LABEL_46;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v138 = type metadata accessor for Logger();
  __swift_project_value_buffer(v138, static Logger.siriPhone);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 134217984;
    *(v141 + 4) = v167;
    _os_log_impl(&dword_0, v139, v140, "#ContactResolution updating person at index %ld", v141, 0xCu);
  }

  v142 = specialized Array.count.getter(v127);
  v143 = v167;
  if (v142 <= v167)
  {
    v147 = v166;
    *v166 = v167;
    swift_storeEnumTagMultiPayload();
    v148 = v164;
    v149 = v143;
    PhoneError.logged()(v164);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v147, type metadata accessor for PhoneError);
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v148, type metadata accessor for PhoneError);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 134218240;
      *(v152 + 4) = v149;
      *(v152 + 12) = 2048;
      *(v152 + 14) = specialized Array.count.getter(v127);
      _os_log_impl(&dword_0, v150, v151, "#ContactResolution multicardinalIndex %ld out of bounds for contacts array of length %ld, falling back to overwriting contacts slot", v152, 0x16u);
    }

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v116);
    goto LABEL_46;
  }

  v144 = v129;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v127 >> 62 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v127);
    v127 = result;
  }

  if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) > v143)
  {
    v145 = *(&stru_20.cmd + 8 * v143 + (v127 & 0xFFFFFFFFFFFFFF8));
    *(&stru_20.cmd + 8 * v143 + (v127 & 0xFFFFFFFFFFFFFF8)) = v144;

    INStartVideoCallIntent.overwriteContacts(newContacts:)(v146);

LABEL_46:

    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(v118, type metadata accessor for ContactResolverConfigHashable);

    return __swift_destroy_boxed_opaque_existential_1(v196);
  }

  __break(1u);
  return result;
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_6(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t lazy protocol witness table accessor for type StartAudioCallRCHFlowDelegate and conformance StartAudioCallRCHFlowDelegate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_29_34()
{

  return specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(v2, v1, v5, v0, v3, v4);
}

uint64_t StartCallAceViewProvider.__allocating_init(templatingService:isDirectInvocation:sharedGlobals:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_61();
  return StartCallAceViewProvider.init(templatingService:isDirectInvocation:sharedGlobals:)(v8, a2, a3);
}

uint64_t StartCallAceViewProvider.init(templatingService:isDirectInvocation:sharedGlobals:)(uint64_t a1, char a2, uint64_t *a3)
{
  *(v3 + direct field offset for StartCallAceViewProvider.templatingService) = a1;
  outlined init with copy of SignalProviding(a3, v3 + direct field offset for StartCallAceViewProvider.sharedGlobals);
  *(v3 + direct field offset for StartCallAceViewProvider.isDirectInvocation) = a2;
  v6 = DefaultAceViewProvider.init()();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v6;
}

uint64_t StartCallAceViewProvider.makeAceViewsForResolveNeedsConfirmation(app:parameterName:intent:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v16).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v33 = a7;
    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_12_1(v17, static Logger.siriPhone);
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_65_0();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#StartCallAceViewProvider Building call/cancel confirmation buttons", v20, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v21 = *(v8 + direct field offset for StartCallAceViewProvider.templatingService);
    v22 = (v8 + direct field offset for StartCallAceViewProvider.sharedGlobals);
    v23 = *(v8 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v25))
    {
      v26 = OUTLINED_FUNCTION_65_0();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#StartCallViewBuilders Providing CallCancelSlotConfirmationButtonsBuilder", v26, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v27 = v22[3];
    v28 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v27);
    (*(v28 + 8))(v35, v27, v28);
    outlined init with copy of SignalProviding(v22, &v37);
    v34[0] = a4;
    v34[1] = v21;
    v35[5] = a1;
    v35[6] = a5;
    v36 = v23;
    v29 = a4;

    v30 = a5;
    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, a6, v33);
    return outlined destroy of CallCancelSlotConfirmationButtonsBuilder(v34);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMR);
    v32 = method lookup function for DefaultAceViewProvider();

    return v32(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t StartCallAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, void *a6, char a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v18 = type metadata accessor for CATOption();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);

  v20._countAndFlagsBits = a2;
  v20._object = a3;
  if (PhoneCallSlotNames.init(rawValue:)(v20).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts)
  {
    v53 = v9;
    v54 = a8;
    v21 = SiriKitDisambiguationList.rawItems.getter();
    v22 = specialized _arrayConditionalCast<A, B>(_:)(v21);

    if (v22)
    {
      static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v22);
      v24 = v23;

      if (v24)
      {
        v25 = *(v53 + direct field offset for StartCallAceViewProvider.templatingService);
        v26 = direct field offset for StartCallAceViewProvider.sharedGlobals;
        v27 = *(v53 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v28 = type metadata accessor for Logger();
        v29 = OUTLINED_FUNCTION_12_1(v28, static Logger.siriPhone);
        v30 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v30))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_7_80(&dword_0, v31, v32, "#StartCallViewBuilders Providing ForeignEmergencyButtonsBuilder");
          OUTLINED_FUNCTION_26_0();
        }

        outlined init with copy of SignalProviding(v53 + v26, v57);
        v55 = v25;
        v56 = a6;
        v59[8] = v27;

        specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)();
        return outlined destroy of ForeignEmergencyButtonsBuilder(&v55);
      }

      else
      {
        v45 = direct field offset for StartCallAceViewProvider.sharedGlobals;
        type metadata accessor for PhoneCallDisplayTextCATs();
        static CATOption.defaultMode.getter();
        v52 = CATWrapper.__allocating_init(options:globals:)();
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v46 = type metadata accessor for Logger();
        v47 = OUTLINED_FUNCTION_12_1(v46, static Logger.siriPhone);
        v48 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_16_4(v48))
        {
          *OUTLINED_FUNCTION_65_0() = 0;
          OUTLINED_FUNCTION_7_80(&dword_0, v49, v50, "#StartCallViewBuilders Providing DefaultDisambiguationBuilder");
          OUTLINED_FUNCTION_26_0();
        }

        outlined init with copy of SignalProviding(v53 + v45, v59);
        v55 = a1;
        v56 = a4;
        v57[0] = a2;
        v57[1] = a3;
        v57[2] = a6;
        v58 = a7 & 1;
        v60 = v52;

        v51 = a4;
        specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, v54, a9);
        return outlined destroy of DefaultDisambiguationBuilder<INStartCallIntent>(&v55);
      }
    }

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v39 = type metadata accessor for Logger();
    v40 = OUTLINED_FUNCTION_12_1(v39, static Logger.siriPhone);
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v42, v43, "#StartCallAceViewProvider DisambiguationItem for contacts slot was not an INPerson");
      OUTLINED_FUNCTION_26_0();
    }

    if (!(a5 >> 62))
    {
      goto LABEL_20;
    }

LABEL_29:
    OUTLINED_FUNCTION_6_90();
    OUTLINED_FUNCTION_61();

    v44 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_21;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v34 = type metadata accessor for Logger();
  v35 = OUTLINED_FUNCTION_12_1(v34, static Logger.siriPhone);
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    *OUTLINED_FUNCTION_65_0() = 0;
    OUTLINED_FUNCTION_33(&dword_0, v37, v38, "#StartCallAceViewProvider Not building disambiguation snippet - not disambiguating contacts");
    OUTLINED_FUNCTION_26_0();
  }

  if (a5 >> 62)
  {
    goto LABEL_29;
  }

LABEL_20:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for SAAceView();
  v44 = a5;
LABEL_21:
  a8(v44, 0);
}

void StartCallAceViewProvider.makeAceViewsForConfirmIntentWithUser(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = v5 + direct field offset for StartCallAceViewProvider.sharedGlobals;
  v13 = *(v5 + direct field offset for StartCallAceViewProvider.sharedGlobals + 24);
  v14 = *(v5 + direct field offset for StartCallAceViewProvider.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v5 + direct field offset for StartCallAceViewProvider.sharedGlobals), v13);
  (*(v14 + 8))(v25, v13, v14);
  if ((static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(a2, a3) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    goto LABEL_9;
  }

  v15 = static EmergencyUtils.shouldOpenMicForEmergency(intent:deviceState:)(a2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (v15)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMd, &_s11SiriKitFlow22DefaultAceViewProviderCySo17INStartCallIntentCSo0hiJ8ResponseCGMR);
    v24 = method lookup function for DefaultAceViewProvider();
    v24(a1, a2, a3, a4, a5);
    goto LABEL_10;
  }

  v16 = *(v6 + direct field offset for StartCallAceViewProvider.templatingService);
  v17 = *(v6 + direct field offset for StartCallAceViewProvider.isDirectInvocation);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v18 = type metadata accessor for Logger();
  v19 = OUTLINED_FUNCTION_12_1(v18, static Logger.siriPhone);
  v20 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_4(v20))
  {
    v21 = OUTLINED_FUNCTION_65_0();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#StartCallViewBuilders Providing EmergencyCountdownBuilder", v21, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  outlined init with copy of SignalProviding(v12, v26);
  v25[0] = v16;
  v25[1] = a1;
  v25[2] = a2;
  v25[3] = a3;
  v26[40] = v17;

  v22 = a2;
  v23 = a3;
  specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(_swiftEmptyArrayStorage, a4, a5);
  outlined destroy of EmergencyCountdownBuilder(v25);
LABEL_10:
  OUTLINED_FUNCTION_4_86();
}

void StartCallAceViewProvider.makeAceViewsForLaunchAppWithButton(app:intent:intentResolutionResult:intentResponse:utteranceViews:_:)(uint64_t a1, void *a2, id a3, void *a4, int64_t a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  if (!a3 || [a3 resolutionResultCode] != &dword_0 + 1 || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0))
  {
    v18 = *(v7 + direct field offset for StartCallAceViewProvider.templatingService);
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0aB24BaseCatTemplatingServiceCySo07INStartB6IntentCSo0jbK8ResponseCGMR);
    v27[4] = &protocol witness table for PhoneCallBaseCatTemplatingService<A, B>;
    v27[0] = v18;
    v19 = direct field offset for StartCallAceViewProvider.sharedGlobals;

    static StartCallViewBuilders.makeErrorButtonBuilder(templatingService:app:intent:intentResponse:sharedGlobals:)(a1, a2, a4, (v7 + v19), v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v20 = v25;
    v21 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v21 + 8))(a5, a6, a7, v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = a3;
  if ([a2 preferredCallProvider] == &dword_0 + 2 && objc_msgSend(v16, "unsupportedReason") - 5 <= &dword_0 + 1)
  {
    static StartCallViewBuilders.makeFaceTimeSettingsViewBuilder(templatingService:sharedGlobals:)(*(v7 + direct field offset for StartCallAceViewProvider.templatingService), v7 + direct field offset for StartCallAceViewProvider.sharedGlobals, v24);
    specialized IdiomSensitiveViewBuilder.makeViews(utteranceViews:_:)(a5, a6, a7);

    outlined destroy of FaceTimeSettingsBuilder(v24);
LABEL_8:
    OUTLINED_FUNCTION_4_86();
    return;
  }

  if (a5 >> 62)
  {
    if (a5 < 0)
    {
      v22 = a5;
    }

    else
    {
      v22 = a5 & 0xFFFFFFFFFFFFFF8;
    }

    type metadata accessor for SAAceView();

    _bridgeCocoaArray<A>(_:)();
    OUTLINED_FUNCTION_61();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for SAAceView();
    v22 = a5;
  }

  a6(v22, 0);

  OUTLINED_FUNCTION_4_86();
}

uint64_t StartCallAceViewProvider.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for StartCallAceViewProvider.templatingService);

  v2 = (v0 + direct field offset for StartCallAceViewProvider.sharedGlobals);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t StartCallAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();
  v1 = *(v0 + direct field offset for StartCallAceViewProvider.templatingService);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for StartCallAceViewProvider.sharedGlobals));
  return v0;
}

uint64_t StartCallAceViewProvider.__deallocating_deinit()
{
  StartCallAceViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of DefaultDisambiguationBuilder<INStartCallIntent>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin28DefaultDisambiguationBuilder33_6270EEFB01DDA464E81F258DCCAFA0E4LLVySo07INStartB6IntentCGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StartCallAceViewProvider()
{
  result = type metadata singleton initialization cache for StartCallAceViewProvider;
  if (!type metadata singleton initialization cache for StartCallAceViewProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_1_123();

  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(v0, v1, v2, v3, v4);
}

id static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_1_123();

  return specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(v0, v1, v2, v3, v4);
}

uint64_t static DialogCalendar.make(date:)()
{
  Date.timeIntervalSince1970.getter();
  v0 = type metadata accessor for DialogCalendar.Builder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  DialogCalendar.Builder.init(secs:)();
  v3 = dispatch thunk of DialogCalendar.Builder.build()();

  return v3;
}

uint64_t static PhoneCallGroup.make(groupName:groupId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  if (a4)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0;
  }

  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v19 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    goto LABEL_19;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
LABEL_19:
    type metadata accessor for PhoneCallGroup(0);

    String.toSpeakableString.getter();

    v21 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    String.toSpeakableString.getter();

    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
    return PhoneCallGroup.__allocating_init(groupName:groupId:)(v14, v12);
  }

  else
  {

    return 0;
  }
}

void specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a4;
  v107 = a2;
  v106 = type metadata accessor for Locale();
  v9 = OUTLINED_FUNCTION_7(v106);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v99 = &v92 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v92 - v23;
  __chkstk_darwin(v22);
  v98 = &v92 - v25;
  v26 = *(a5 + 24);
  v101 = a5;
  v27 = v26(a4, a5);
  v96 = a3;
  if (v27)
  {
    BackingType = INCallCapabilityGetBackingType();
    if (BackingType == 2)
    {
      v29 = @"VIDEO_CALL";
    }

    else
    {
      if (BackingType != 1)
      {
        OUTLINED_FUNCTION_4_87();
        v29 = [v31 stringWithFormat:@"(unknown: %i)"];
        goto LABEL_9;
      }

      v29 = @"AUDIO_CALL";
    }

    v30 = v29;
LABEL_9:
    v32 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v33 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  v37 = v100;
  v38 = (*(v101 + 32))(v100);
  v102 = a1;
  if (v38)
  {
    v39 = INCallAudioRouteGetBackingType();
    switch(v39)
    {
      case 4:
        v40 = @"HEY_SIRI_AUDIO_ROUTE";
        break;
      case 3:
        v40 = @"BLUETOOTH_AUDIO_ROUTE";
        break;
      case 2:
        v40 = @"SPEAKERPHONE_AUDIO_ROUTE";
        break;
      default:
        OUTLINED_FUNCTION_4_87();
        v40 = [v42 stringWithFormat:@"(unknown: %i)"];
        goto LABEL_20;
    }

    v41 = v40;
LABEL_20:
    v43 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v100;
  }

  OUTLINED_FUNCTION_2_117();
  v94 = v24;
  OUTLINED_FUNCTION_23_3();
  v47 = __swift_storeEnumTagSinglePayload(v44, v45, v46, v33);
  v48 = *(v101 + 8);
  OUTLINED_FUNCTION_3_113(v47, *(v48 + 16));
  if (v49(v37))
  {
    v50 = INPreferredCallProviderGetBackingType();
    switch(v50)
    {
      case 4:
        v51 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v51 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v51 = @"TELEPHONY_PROVIDER";
        break;
      default:
        OUTLINED_FUNCTION_4_87();
        v51 = [v53 stringWithFormat:@"(unknown: %i)", v96];
        goto LABEL_31;
    }

    v52 = v51;
LABEL_31:
    v54 = v51;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v100;
  }

  OUTLINED_FUNCTION_2_117();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v33);
  if ((*(v101 + 16))(v37))
  {
    switch(INCallDestinationTypeGetBackingType())
    {
      case 1u:
        v58 = @"NORMAL_DESTINATION";
        goto LABEL_40;
      case 2u:
        v58 = @"EMERGENCY_DESTINATION";
        goto LABEL_40;
      case 3u:
        v58 = @"VOICEMAIL_DESTINATION";
        goto LABEL_40;
      case 4u:
        v58 = @"REDIAL_DESTINATION";
        goto LABEL_40;
      case 5u:
        v58 = @"CALL_BACK_DESTINATION";
LABEL_40:
        v59 = v58;
        break;
      default:
        OUTLINED_FUNCTION_4_87();
        v58 = [v91 stringWithFormat:@"(unknown: %i)"];
        break;
    }

    v60 = v58;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  OUTLINED_FUNCTION_2_117();
  v95 = v19;
  OUTLINED_FUNCTION_23_3();
  v64 = __swift_storeEnumTagSinglePayload(v61, v62, v63, v33);
  OUTLINED_FUNCTION_3_113(v64, *(v48 + 8));
  v65 = v102;
  v67 = v66(v37);
  v68 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptyArrayStorage;
  if (v67)
  {
    v69 = v67;
    v110 = _swiftEmptyArrayStorage;
    v108 = specialized Array.count.getter(v67);
    v70 = 0;
    v103 = v69 & 0xFFFFFFFFFFFFFF8;
    v104 = v69 & 0xC000000000000001;
    v93 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v108 == v70)
      {

        v65 = v102;
        v37 = v100;
        v68 = v93;
        goto LABEL_55;
      }

      if (v104)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v70 >= *(v103 + 16))
        {
          goto LABEL_72;
        }

        v71 = *(v69 + 8 * v70 + 32);
      }

      v72 = v71;
      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v109, v109[3]);
      v74 = v105;
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v109);
      v75 = static PhonePerson.make(phonePerson:options:locale:)(v72, v107 & 1, v74);

      (*(v11 + 8))(v74, v106);
      ++v70;
      if (v75)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v93 = v110;
        v70 = v73;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  else
  {
LABEL_55:
    type metadata accessor for PhonePersonList();
    v76 = PhonePersonList.__allocating_init(list:)(v68);
    v77 = (*(v101 + 40))(v37);
    if (v77)
    {
      v78 = v77;
      v108 = v76;
      v109[0] = _swiftEmptyArrayStorage;
      v79 = specialized Array.count.getter(v77);
      v80 = 0;
      while (v79 != v80)
      {
        if ((v78 & 0xC000000000000001) != 0)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v80 >= *(&dword_10 + (v78 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_74;
          }

          v81 = *(v78 + 8 * v80 + 32);
        }

        v82 = v81;
        v83 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_73;
        }

        type metadata accessor for PhoneCallGroup(0);
        v84 = outlined bridged method (pb) of @objc INCallGroup.groupName.getter(v82);
        v86 = v85;
        v87 = outlined bridged method (pb) of @objc INCallGroup.groupId.getter(v82);
        v89 = static PhoneCallGroup.make(groupName:groupId:)(v84, v86, v87, v88);

        ++v80;
        if (v89)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v109[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v109[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v97 = v109[0];
          v80 = v83;
        }
      }

      v90 = v97;
      v76 = v108;
    }

    else
    {

      v90 = _swiftEmptyArrayStorage;
    }

    PhoneStartCallIntent.__allocating_init(callCapability:audioRoute:preferredCallProvider:destinationType:contacts:callGroups:)(v98, v94, v99, v95, v76, v90);
  }
}

id specialized static PhoneStartCallIntent.makeForSlotTemplating(intent:isRelationshipRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v47 - v10;
  v56 = type metadata accessor for Locale();
  v12 = OUTLINED_FUNCTION_7(v56);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhoneStartCallIntent.Builder(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = PhoneStartCallIntent.Builder.init()();
  OUTLINED_FUNCTION_3_113(v22, *(a5 + 8));
  v24 = v23(a4);
  v53 = _swiftEmptyArrayStorage;
  if (!v24)
  {
LABEL_14:
    type metadata accessor for PhonePersonList();
    v32 = PhonePersonList.__allocating_init(list:)(v53);
    v33 = (*(*v22 + 352))(v32);

    OUTLINED_FUNCTION_3_113(v34, *(a5 + 16));
    if (!v35(a4))
    {
      goto LABEL_25;
    }

    v36 = INPreferredCallProviderGetBackingType();
    switch(v36)
    {
      case 4:
        v37 = @"THIRD_PARTY_PROVIDER";
        break;
      case 3:
        v37 = @"FACETIME_PROVIDER";
        break;
      case 2:
        v37 = @"TELEPHONY_PROVIDER";
        break;
      default:
        v37 = [NSString stringWithFormat:@"(unknown: %i)", v36];
        goto LABEL_24;
    }

    v38 = v37;
LABEL_24:
    v39 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_25:
    SpeakableString.init(print:speak:)();
    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    v44 = (*(*v33 + 320))(v11);

    v45 = outlined destroy of SpeakableString?(v11);
    v46 = (*(*v44 + 376))(v45);

    return v46;
  }

  v25 = v24;
  v48 = v22;
  v49 = a5;
  v50 = a1;
  v51 = a4;
  v52 = v11;
  v60 = _swiftEmptyArrayStorage;
  result = specialized Array.count.getter(v24);
  v58 = result;
  v27 = 0;
  v54 = v25 & 0xFFFFFFFFFFFFFF8;
  v55 = v25 & 0xC000000000000001;
  v28 = (v14 + 8);
  while (1)
  {
    if (v58 == v27)
    {

      a4 = v51;
      v11 = v52;
      a5 = v49;
      v22 = v48;
      goto LABEL_14;
    }

    if (v55)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v54 + 16))
      {
        goto LABEL_27;
      }

      result = *(v25 + 8 * v27 + 32);
    }

    v29 = result;
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    type metadata accessor for PhonePerson(0);
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    __swift_destroy_boxed_opaque_existential_1(v59);
    v31 = static PhonePerson.make(phonePerson:options:locale:)(v29, v57 & 1, v18);

    result = (*v28)(v18, v56);
    ++v27;
    if (v31)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v60 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v53 = v60;
      v27 = v30;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional __swiftcall StartCallCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v1;
  }
}

unint64_t StartCallCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 1:
    case 24:
    case 34:
      result = 0xD00000000000002ALL;
      break;
    case 2:
    case 6:
    case 14:
    case 31:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD000000000000025;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD000000000000031;
      break;
    case 8:
    case 26:
      result = 0xD000000000000033;
      break;
    case 9:
    case 17:
      result = 0xD000000000000024;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000032;
      break;
    case 13:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD000000000000021;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 18:
    case 27:
      result = 0xD00000000000002BLL;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
    case 28:
      result = 0xD000000000000036;
      break;
    case 21:
      result = 0xD00000000000003ALL;
      break;
    case 22:
      result = 0xD000000000000037;
      break;
    case 23:
      result = 0xD00000000000003BLL;
      break;
    case 25:
      result = 0xD000000000000038;
      break;
    case 29:
      result = 0xD00000000000002DLL;
      break;
    case 30:
      result = 0xD000000000000034;
      break;
    case 32:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000028;
      break;
    case 35:
      result = 0xD00000000000003ELL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance StartCallCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::StartCallCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = StartCallCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StartCallCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = StartCallCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StartCallConfirmContactsParameters.confirmAction.getter()
{
  return StartCallConfirmContactsParameters.confirmAction.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 20));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.confirmAction.setter()
{
  return StartCallConfirmContactsParameters.confirmAction.setter();
}

{
  v0 = OUTLINED_FUNCTION_2_4();
  v2 = *(v1(v0) + 20);
  v3 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t StartCallConfirmContactsParameters.confirmAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.contactHeader.getter()
{
  return StartCallConfirmContactsParameters.contactHeader.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 24));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.contactHeader.setter()
{
  return StartCallConfirmContactsParameters.contactHeader.setter();
}

{
  v0 = OUTLINED_FUNCTION_2_4();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t StartCallConfirmContactsParameters.contactHeader.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.contactToConfirm.setter()
{
  return StartCallConfirmContactsParameters.contactToConfirm.setter();
}

{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 28);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t StartCallConfirmContactsParameters.contactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.inferenceSource.getter()
{
  return StartCallConfirmContactsParameters.inferenceSource.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 32));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallConfirmContactsParameters.inferenceSource.setter()
{
  return StartCallConfirmContactsParameters.inferenceSource.setter();
}

{
  v0 = OUTLINED_FUNCTION_2_4();
  v2 = *(v1(v0) + 32);
  v3 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t StartCallConfirmContactsParameters.inferenceSource.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCallConfirmContactsParameters(0) + 48));
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for StartCallConfirmContactsParameters(v2) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StartCallConfirmContactsParameters.redactedContactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 48);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallConfirmContactsParameters.rejectAction.getter()
{
  v0 = type metadata accessor for StartCallConfirmContactsParameters(0);
  v1 = OUTLINED_FUNCTION_54_0(*(v0 + 52));
  return outlined init with copy of SpeakableString?(v1, v2, v3, v4);
}

uint64_t StartCallConfirmContactsParameters.rejectAction.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 52);
  v2 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t StartCallConfirmContactsParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallConfirmContactsParameters(v0) + 52);
  return OUTLINED_FUNCTION_9_11();
}

void StartCallConfirmContactsParameters.asKeyValuePairs()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v25 = OUTLINED_FUNCTION_21(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  __chkstk_darwin(v37);
  v39 = &a9 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_4441D0;
  *(v40 + 32) = 0x6C646E7542707061;
  *(v40 + 40) = 0xEB00000000644965;
  outlined init with copy of SpeakableString?(v21, v39, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v41 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v39);
  if (v42)
  {
    outlined destroy of SpeakableString?(v39, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v40 + 48) = 0u;
    *(v40 + 64) = 0u;
  }

  else
  {
    *(v40 + 72) = v41;
    __swift_allocate_boxed_opaque_existential_1((v40 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v43 + 32))();
  }

  OUTLINED_FUNCTION_118_4();
  *(v40 + 80) = v44;
  *(v40 + 88) = 0xED00006E6F697463;
  v45 = type metadata accessor for StartCallConfirmContactsParameters(0);
  OUTLINED_FUNCTION_117_2(v45);
  outlined init with copy of SpeakableString?(v21 + v46, v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v36);
  if (v42)
  {
    outlined destroy of SpeakableString?(v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_103_3();
  }

  else
  {
    *(v40 + 120) = v41;
    __swift_allocate_boxed_opaque_existential_1((v40 + 96));
    OUTLINED_FUNCTION_2_9();
    (*(v47 + 32))();
  }

  strcpy((v40 + 128), "contactHeader");
  *(v40 + 142) = -4864;
  outlined init with copy of SpeakableString?(v21 - 4054248, v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v33);
  if (v42)
  {
    outlined destroy of SpeakableString?(v33, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_119_5();
  }

  else
  {
    *(v40 + 168) = v41;
    __swift_allocate_boxed_opaque_existential_1((v40 + 144));
    OUTLINED_FUNCTION_2_9();
    (*(v48 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v40 + 176) = 0xD000000000000010;
  *(v40 + 184) = v49;
  v50 = *(v21 + 160);
  if (v50)
  {
    v51 = type metadata accessor for DialogPerson();
    v52 = v50;
  }

  else
  {
    v51 = OUTLINED_FUNCTION_18_2();
    *(v40 + 200) = 0;
    *(v40 + 208) = 0;
  }

  *(v40 + 192) = v52;
  *(v40 + 216) = v51;
  *(v40 + 224) = 0x636E657265666E69;
  *(v40 + 232) = 0xEF656372756F5365;
  outlined init with copy of SpeakableString?(v21 - 4052396, v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v30);
  if (v42)
  {

    outlined destroy of SpeakableString?(v30, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v40 + 240) = 0u;
    *(v40 + 256) = 0u;
  }

  else
  {
    *(v40 + 264) = v41;
    __swift_allocate_boxed_opaque_existential_1((v40 + 240));
    OUTLINED_FUNCTION_2_9();
    (*(v53 + 32))();
  }

  OUTLINED_FUNCTION_93();
  *(v40 + 272) = v54;
  *(v40 + 280) = v55;
  *(v40 + 288) = *(v21 + 16);
  OUTLINED_FUNCTION_27_2();
  *(v40 + 312) = v56;
  *(v40 + 320) = 0xD000000000000018;
  *(v40 + 328) = v57;
  *(v40 + 336) = *(v21 + 933529);
  OUTLINED_FUNCTION_27_2();
  *(v40 + 360) = v58;
  *(v40 + 368) = 0xD000000000000016;
  *(v40 + 376) = v59;
  *(v40 + 384) = *(v21 + 325272);
  OUTLINED_FUNCTION_27_2();
  *(v40 + 408) = v60;
  *(v40 + 416) = 0xD000000000000018;
  *(v40 + 424) = v61;
  v62 = *v21;
  if (*v21)
  {
    type metadata accessor for DialogPerson();
    v63 = v62;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v40 + 440) = 0;
    *(v40 + 448) = 0;
  }

  *(v40 + 432) = v63;
  OUTLINED_FUNCTION_125_3();
  *(v40 + 456) = v64;
  *(v40 + 464) = v65;
  *(v40 + 472) = 0xEC0000006E6F6974;
  v66 = OUTLINED_FUNCTION_54_0(196608);
  outlined init with copy of SpeakableString?(v66, v67, v68, v69);
  OUTLINED_FUNCTION_6_1(v20);
  if (v42)
  {

    outlined destroy of SpeakableString?(v20, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v40 + 480) = 0u;
    *(v40 + 496) = 0u;
  }

  else
  {
    *(v40 + 504) = v41;
    __swift_allocate_boxed_opaque_existential_1((v40 + 480));
    OUTLINED_FUNCTION_2_9();
    v71 = *(v70 + 32);
    OUTLINED_FUNCTION_105_5();
    v72();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t StartCallConfirmContactsParameters.init(appBundleId:confirmAction:contactHeader:contactToConfirm:inferenceSource:isFaceTime:isFoundInAppConfirmation:isTopMatchConfirmation:redactedContactToConfirm:rejectAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124_1();
  outlined init with take of SpeakableString?(v17, v18);
  v19 = type metadata accessor for StartCallConfirmContactsParameters(0);
  outlined init with take of SpeakableString?(v12, v13 + v19[5]);
  outlined init with take of SpeakableString?(v11, v13 + v19[6]);
  *(v13 + v19[7]) = v10;
  outlined init with take of SpeakableString?(a5, v13 + v19[8]);
  *(v13 + v19[9]) = a6;
  *(v13 + v19[10]) = a7;
  *(v13 + v19[11]) = a8;
  *(v13 + v19[12]) = a9;
  v20 = v13 + v19[13];

  return outlined init with take of SpeakableString?(a10, v20);
}

uint64_t StartCallErrorWithCodeAirplaneModeEnabledParameters.settingsPunchOutAction.getter()
{
  return StartCallErrorWithCodeAirplaneModeEnabledParameters.settingsPunchOutAction.getter();
}

{
  v0 = OUTLINED_FUNCTION_81_8();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_54_0(*(v2 + 28));
  return outlined init with copy of SpeakableString?(v3, v4, v5, v6);
}

uint64_t StartCallErrorWithCodeAirplaneModeEnabledParameters.settingsPunchOutAction.setter()
{
  return StartCallErrorWithCodeAirplaneModeEnabledParameters.settingsPunchOutAction.setter();
}

{
  v0 = OUTLINED_FUNCTION_2_4();
  v2 = *(v1(v0) + 28);
  v3 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t StartCallErrorWithCodeAirplaneModeEnabledParameters.settingsPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallErrorWithCodeAirplaneModeEnabledParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallErrorWithCodeAirplaneModeEnabledParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_82_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_0_2(v6, xmmword_42BF10);
  v7 = *v1;
  if (*v1)
  {
    v8 = type metadata accessor for SirikitDeviceState();
    v9 = v7;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_37_27();
  }

  *(v6 + 48) = v9;
  *(v6 + 72) = v8;
  *(v6 + 80) = 0x656772656D457369;
  *(v6 + 88) = 0xEB0000000079636ELL;
  *(v6 + 96) = *(v1 + 8);
  OUTLINED_FUNCTION_27_2();
  *(v6 + 120) = v10;
  *(v6 + 128) = 0xD000000000000013;
  *(v6 + 136) = v11;
  *(v6 + 144) = *(v1 + 9);
  OUTLINED_FUNCTION_27_2();
  *(v6 + 168) = v13;
  *(v6 + 176) = v12 + 3;
  *(v6 + 184) = v14;
  v15 = type metadata accessor for StartCallErrorWithCodeAirplaneModeEnabledParameters(0);
  v16 = OUTLINED_FUNCTION_54_0(*(v15 + 28));
  outlined init with copy of SpeakableString?(v16, v17, v18, v19);
  v20 = type metadata accessor for SpeakableString();
  v21 = OUTLINED_FUNCTION_45_20();
  if (__swift_getEnumTagSinglePayload(v21, v22, v20) == 1)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
  }

  else
  {
    *(v6 + 216) = v20;
    __swift_allocate_boxed_opaque_existential_1((v6 + 192));
    OUTLINED_FUNCTION_40(v20);
    (*(v23 + 32))();
  }

  return v6;
}

uint64_t StartCallErrorWithCodeAirplaneModeEnabledParameters.init(device:isEmergency:isResponseFramework:settingsPunchOutAction:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  v4 = *(type metadata accessor for StartCallErrorWithCodeAirplaneModeEnabledParameters(0) + 28);
  v5 = OUTLINED_FUNCTION_91_0();

  return outlined init with take of SpeakableString?(v5, v6);
}

uint64_t StartCallErrorWithCodeAppConfigurationRequiredParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallErrorWithCodeAppConfigurationRequiredParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.device.setter()
{
  return StartCallErrorWithCodeCallingServiceNotAvailableParameters.device.setter();
}

{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 20);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallErrorWithCodeCallingServiceNotAvailableParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallErrorWithCodeCallingServiceNotAvailableParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.asKeyValuePairs()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_0_4(v10, xmmword_42BF10);
  outlined init with copy of SpeakableString?(v2, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v9);
  if (v12)
  {
    outlined destroy of SpeakableString?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v13 + 32))();
  }

  OUTLINED_FUNCTION_9_79();
  *(v10 + 80) = v14;
  *(v10 + 88) = v15;
  v16 = type metadata accessor for StartCallErrorWithCodeCallingServiceNotAvailableParameters(0);
  OUTLINED_FUNCTION_117_2(v16);
  v18 = *(v2 + v17);
  if (v18)
  {
    type metadata accessor for SirikitDeviceState();
    v19 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
  }

  *(v10 + 96) = v19;
  OUTLINED_FUNCTION_128_1();
  *(v10 + 120) = v20;
  *(v10 + 128) = v21;
  OUTLINED_FUNCTION_56_12();
  *(v10 + 136) = v22;
  *(v10 + 144) = *(v2 - 4054248);
  OUTLINED_FUNCTION_27_2();
  *(v10 + 168) = v23;
  *(v10 + 176) = 0xD000000000000017;
  *(v10 + 184) = v24;
  outlined init with copy of SpeakableString?(v2 + 160, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v0);
  if (v12)
  {

    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v11;
    __swift_allocate_boxed_opaque_existential_1((v10 + 192));
    OUTLINED_FUNCTION_2_9();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_105_5();
    v27();
  }

  return v10;
}

uint64_t StartCallErrorWithCodeCallingServiceNotAvailableParameters.init(appName:device:isThirdPartyApp:launchAppPunchOutAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  v9 = type metadata accessor for StartCallErrorWithCodeCallingServiceNotAvailableParameters(0);
  *(a5 + v9[5]) = a2;
  *(a5 + v9[6]) = a3;
  v10 = a5 + v9[7];

  return outlined init with take of SpeakableString?(a4, v10);
}

uint64_t StartCallErrorWithCodeContactNotSupportedByAppParameters.launchAppPunchOutAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallErrorWithCodeContactNotSupportedByAppParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallErrorWithCodeAppConfigurationRequiredParameters.asKeyValuePairs()(uint64_t (*a1)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_28_5();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_42_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_4(v10, xmmword_426980);
  OUTLINED_FUNCTION_121_2();
  outlined init with copy of SpeakableString?(v11, v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v3);
  if (v15)
  {
    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v14;
    __swift_allocate_boxed_opaque_existential_1((v10 + 48));
    OUTLINED_FUNCTION_19_12();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_121_2();
    v18();
  }

  OUTLINED_FUNCTION_128_1();
  *(v10 + 80) = v19;
  *(v10 + 88) = 0xEF70704179747261;
  *(v10 + 96) = *(v2 + *(a1(0) + 20));
  OUTLINED_FUNCTION_27_2();
  *(v10 + 120) = v20;
  *(v10 + 128) = 0xD000000000000017;
  *(v10 + 136) = v21;
  v23 = OUTLINED_FUNCTION_54_0(*(v22 + 24));
  outlined init with copy of SpeakableString?(v23, v24, v25, v26);
  OUTLINED_FUNCTION_21_3(v1);
  if (v15)
  {
    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_119_5();
  }

  else
  {
    *(v10 + 168) = v14;
    __swift_allocate_boxed_opaque_existential_1((v10 + 144));
    OUTLINED_FUNCTION_19_12();
    (*(v27 + 32))();
  }

  return v10;
}

uint64_t StartCallErrorWithCodeAppConfigurationRequiredParameters.init(appName:isThirdPartyApp:launchAppPunchOutAction:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of SpeakableString?(a1, a5);
  v9 = a4(0);
  *(a5 + *(v9 + 20)) = a2;
  v10 = a5 + *(v9 + 24);

  return outlined init with take of SpeakableString?(a3, v10);
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.confirmAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.intent.setter()
{
  return StartCallIntentConfirmationWithRestrictedContactsParameters.intent.setter();
}

{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.restrictedContacts.getter()
{
  v1 = *(v0 + *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(0) + 32));
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.restrictedContacts.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v2) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.restrictedContacts.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t StartCallIntentConfirmationWithRestrictedContactsParameters.asKeyValuePairs()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_42_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_42BF20;
  *(v9 + 32) = 0x436465776F6C6C61;
  *(v9 + 40) = 0xEF73746361746E6FLL;
  v10 = *v0;
  if (*v0)
  {
    type metadata accessor for PhonePersonList();
    v11 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v11;
  OUTLINED_FUNCTION_118_4();
  *(v9 + 72) = v12;
  *(v9 + 80) = v13;
  *(v9 + 88) = 0xED00006E6F697463;
  v14 = type metadata accessor for StartCallIntentConfirmationWithRestrictedContactsParameters(0);
  outlined init with copy of SpeakableString?(v0 + v14[5], v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v1);
  if (v16)
  {

    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v15;
    __swift_allocate_boxed_opaque_existential_1((v9 + 96));
    OUTLINED_FUNCTION_19_12();
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_121_2();
    v19();
  }

  OUTLINED_FUNCTION_14_8();
  *(v9 + 128) = v20;
  *(v9 + 136) = 0xE600000000000000;
  v21 = *(v0 + v14[6]);
  if (v21)
  {
    type metadata accessor for PhoneStartCallIntent(0);
    v22 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v22;
  OUTLINED_FUNCTION_125_3();
  *(v9 + 168) = v23;
  *(v9 + 176) = v24;
  *(v9 + 184) = 0xEC0000006E6F6974;
  outlined init with copy of SpeakableString?(v0 + v14[7], v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v7);
  if (v16)
  {

    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
  }

  else
  {
    *(v9 + 216) = v15;
    __swift_allocate_boxed_opaque_existential_1((v9 + 192));
    OUTLINED_FUNCTION_19_12();
    (*(v25 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v9 + 224) = 0xD000000000000012;
  *(v9 + 232) = v26;
  v27 = *(v0 + v14[8]);
  if (v27)
  {
    v28 = type metadata accessor for PhonePersonList();
  }

  else
  {
    v28 = 0;
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
  }

  *(v9 + 240) = v27;
  *(v9 + 264) = v28;

  return v9;
}
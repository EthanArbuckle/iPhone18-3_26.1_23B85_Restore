uint64_t static InputUtils.getPersonNameComponents(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v102 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v98 = v93 - v7;
  OUTLINED_FUNCTION_22_10();
  v8 = type metadata accessor for OSSignpostError();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v96 = v10;
  v97 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v95 = v14 - v13;
  OUTLINED_FUNCTION_22_10();
  v15 = type metadata accessor for OSSignpostID();
  v16 = OUTLINED_FUNCTION_7_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_63_4();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_44_8();
  v26 = type metadata accessor for OSSignposter();
  v27 = OUTLINED_FUNCTION_7_1(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_3();
  v34 = v33 - v32;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_2_31();
    swift_once();
  }

  v35 = __swift_project_value_buffer(v26, static Signposter.voiceCommands);
  v100 = v29;
  v101 = v26;
  (*(v29 + 16))(v34, v35, v26);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v36 = OSSignposter.logHandle.getter();
  v37 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_18_1();
    v38 = swift_slowAlloc();
    v94 = v18;
    v39 = v34;
    v40 = v38;
    *v38 = 0;
    v41 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v36, v37, v41, "InputUtilsGetPersonNameComponents", "", v40, 2u);
    v34 = v39;
    v18 = v94;
    OUTLINED_FUNCTION_15_1();
  }

  v42 = OUTLINED_FUNCTION_60_3();
  v43(v42);
  v44 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_46_9(v44);
  swift_allocObject();
  v45 = OSSignpostIntervalState.init(id:isOpen:)();
  v46 = *(v18 + 8);
  v46(v2, v15);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.voiceCommands);
  v48 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v49 = OUTLINED_FUNCTION_6_22();
  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_18_1();
    v51 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v51);
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v52, v53, v54, v55, v36, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (VoiceCommandsNLIntent.voiceCommandContact.getter())
  {
    v99 = v34;
    v56 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v57 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v58 = v95;
      checkForErrorAndConsumeState(state:)();
      v94 = v45;

      v59 = v96;
      if ((*(v96 + 88))(v58, v97) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v60 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v58, v97);
        v60 = "";
      }

      OUTLINED_FUNCTION_18_1();
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v56, v57, v74, "InputUtilsGetPersonNameComponents", v60, v73, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v46(v23, v15);
    OUTLINED_FUNCTION_38_8();
    v76 = (*(v75 + 216))();
    v96 = v77;
    v97 = v76;
    OUTLINED_FUNCTION_38_8();
    v79 = (*(v78 + 184))();
    v94 = v80;
    v95 = v79;
    OUTLINED_FUNCTION_38_8();
    v82 = (*(v81 + 192))();
    v93[1] = v83;
    v93[2] = v82;
    OUTLINED_FUNCTION_38_8();
    (*(v84 + 200))();
    OUTLINED_FUNCTION_38_8();
    (*(v85 + 232))();
    OUTLINED_FUNCTION_38_8();
    (*(v86 + 224))();
    v87 = type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
    v91 = v102;
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();

    (*(v100 + 8))(v99, v101);
    v69 = v91;
    v70 = 0;
    v71 = 1;
    v72 = v87;
  }

  else
  {
    v61 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v62 = OUTLINED_FUNCTION_6_22();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_18_1();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v64);
      OUTLINED_FUNCTION_30_9();
      _os_log_impl(v65, v66, v67, v68, v36, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    else
    {
    }

    (*(v100 + 8))(v34, v101);
    type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_37_2();
  }

  return __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
}

uint64_t static InputUtils.getURL(from:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_18_1();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v3, v4, "#InputUtils getURL", v7, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    OUTLINED_FUNCTION_14_15();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v8, v9);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v15)
  {
    String.convertedToURL()(a1);
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_37_2();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

id static InputUtils.getCurrency(from:locale:)(uint64_t a1, uint8_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  v8 = &v45[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  v14 = &v45[-v13];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_18_1();
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v16, v17, "#InputUtils getCurrency", v20, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v21, v22);
  IntentNodeTraversable.value<A>(forNode:)();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  v24 = OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_35_10(v24, v25, v23);
  if (v26)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v14, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    goto LABEL_11;
  }

  Scalar.value.getter();
  v27 = v47;
  v28 = v48;
  OUTLINED_FUNCTION_21_2(v23);
  (*(v29 + 8))(v14, v23);
  if (v28)
  {
LABEL_11:
    v30 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v31 = OUTLINED_FUNCTION_6_22();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_13:

      return 0;
    }

LABEL_12:
    OUTLINED_FUNCTION_18_1();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_45(v33);
    OUTLINED_FUNCTION_30_9();
    _os_log_impl(v34, v35, v36, v37, a2, 2u);
    OUTLINED_FUNCTION_15_1();

    goto LABEL_13;
  }

  if (one-time initialization token for voiceCommandCurrencyUnitNode != -1)
  {
    swift_once();
  }

  IntentNodeTraversable.value<A>(forNode:)();
  if (v46 >= 0xBu)
  {
    if (v46 == 89)
    {
      v30 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v43 = OUTLINED_FUNCTION_6_22();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter(v46);
    String.uppercased()();
  }

  else
  {
    Locale.currency.getter();
    v39 = type metadata accessor for Locale.Currency();
    OUTLINED_FUNCTION_35_10(v8, 1, v39);
    if (v26)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s10Foundation6LocaleV8CurrencyVSgMd, &_s10Foundation6LocaleV8CurrencyVSgMR);
    }

    else
    {
      Locale.Currency.identifier.getter();
      OUTLINED_FUNCTION_21_2(v39);
      (*(v40 + 8))(v8, v39);
    }
  }

  [objc_allocWithZone(NSDecimalNumber) initWithDouble:v27];
  v41 = objc_allocWithZone(INCurrencyAmount);
  v42 = OUTLINED_FUNCTION_22();
  return @nonobjc INCurrencyAmount.init(amount:currencyCode:)(v42);
}

double static InputUtils.convertVoiceCommandReferenceToIndex(reference:lastInd:)(char a1, uint64_t a2)
{
  if (a1 != 35)
  {
    v4 = VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter(a1);
    v6 = specialized Collection<>.firstIndex(of:)(v4, v5, &outlined read-only object #0 of one-time initialization function for NUMBERICREFERENCENODEVALUES);
    v8 = v7;

    if (v8)
    {
      switch(a1)
      {
        case 25:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v10 = OUTLINED_FUNCTION_64();
          *&result = 1;
          *(v10 + 16) = xmmword_216850;
          *(v10 + 32) = a2;
          return result;
        case 26:
          goto LABEL_9;
        case 29:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v12 = OUTLINED_FUNCTION_64();
          *&result = 1;
          *(v12 + 16) = xmmword_216850;
          v13 = a2 - 1;
          if (!__OFSUB__(a2, 1))
          {
            goto LABEL_12;
          }

          __break(1u);
LABEL_9:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          if (a2)
          {
            v14 = swift_allocObject();
            *&result = 2;
            *(v14 + 16) = xmmword_216840;
            *(v14 + 32) = a2 / 2;
            *(v14 + 40) = a2 / 2 + 1;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_64();
            *&result = 1;
            *(v12 + 16) = xmmword_216850;
            v13 = a2 >> 1;
LABEL_12:
            *(v12 + 32) = v13;
          }

          break;
        case 30:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v12 = OUTLINED_FUNCTION_64();
          *&result = 1;
          *(v12 + 16) = xmmword_216850;
          v13 = a2 - 2;
          if (__OFSUB__(a2, 2))
          {
            __break(1u);
            JUMPOUT(0xEAB9CLL);
          }

          goto LABEL_12;
        default:
          return result;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v11 = OUTLINED_FUNCTION_64();
      *&result = 1;
      *(v11 + 16) = xmmword_216850;
      *(v11 + 32) = v6;
    }
  }

  return result;
}

uint64_t InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for OSSignpostError();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for DateTimeResolver();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v10 = type metadata accessor for DateTimeResolutionSpec.DateTimeConvergenceStrategy();
  v2[27] = v10;
  v11 = *(v10 - 8);
  v2[28] = v11;
  v12 = *(v11 + 64) + 15;
  v2[29] = swift_task_alloc();
  v13 = type metadata accessor for DateTimeResolutionSpec.ExpandToType();
  v2[30] = v13;
  v14 = *(v13 - 8);
  v2[31] = v14;
  v15 = *(v14 + 64) + 15;
  v2[32] = swift_task_alloc();
  v16 = type metadata accessor for DateTimeResolutionSpec();
  v2[33] = v16;
  v17 = *(v16 - 8);
  v2[34] = v17;
  v18 = *(v17 + 64) + 15;
  v2[35] = swift_task_alloc();
  v19 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v20 = *(*(type metadata accessor for TimeZone() - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v21 = type metadata accessor for DateTimeResolutionContext.Hemisphere();
  v2[38] = v21;
  v22 = *(v21 - 8);
  v2[39] = v22;
  v23 = *(v22 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v24 = type metadata accessor for Locale();
  v2[43] = v24;
  v25 = *(v24 - 8);
  v2[44] = v25;
  v26 = *(v25 + 64) + 15;
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v27 = type metadata accessor for Calendar.Identifier();
  v2[49] = v27;
  v28 = *(v27 - 8);
  v2[50] = v28;
  v29 = *(v28 + 64) + 15;
  v2[51] = swift_task_alloc();
  v30 = type metadata accessor for Calendar();
  v2[52] = v30;
  v31 = *(v30 - 8);
  v2[53] = v31;
  v32 = *(v31 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v33 = type metadata accessor for OSSignpostID();
  v2[56] = v33;
  v34 = *(v33 - 8);
  v2[57] = v34;
  v35 = *(v34 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v36 = type metadata accessor for OSSignposter();
  v2[61] = v36;
  v37 = *(v36 - 8);
  v2[62] = v37;
  v38 = *(v37 + 64) + 15;
  v2[63] = swift_task_alloc();
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v40 = type metadata accessor for TerminalElement.DateTimeValue();
  v2[65] = v40;
  v41 = *(v40 - 8);
  v2[66] = v41;
  v42 = *(v41 + 64) + 15;
  v2[67] = swift_task_alloc();

  return _swift_task_switch(InputUtils.DateTimeHydrator.hydrate(dateTimeValue:), 0, 0);
}

uint64_t InputUtils.DateTimeHydrator.hydrate(dateTimeValue:)()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  outlined init with copy of LocationProviding?(*(v0 + 136), v2, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
  OUTLINED_FUNCTION_35_10(v2, 1, v1);
  if (v3)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v0 + 512), &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMd, &_s12SiriOntology15TerminalElementV13DateTimeValueVSgMR);
    v4 = *(v0 + 536);
    v6 = *(v0 + 504);
    v5 = *(v0 + 512);
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v9 = *(v0 + 464);
    v11 = *(v0 + 432);
    v10 = *(v0 + 440);
    v12 = *(v0 + 408);
    v13 = *(v0 + 384);
    v48 = *(v0 + 376);
    v49 = *(v0 + 368);
    v50 = *(v0 + 360);
    v51 = *(v0 + 336);
    v52 = *(v0 + 328);
    v53 = *(v0 + 320);
    v54 = *(v0 + 296);
    v55 = *(v0 + 288);
    v56 = *(v0 + 280);
    v57 = *(v0 + 256);
    v59 = *(v0 + 232);
    v61 = *(v0 + 208);
    v63 = *(v0 + 184);
    v65 = *(v0 + 176);
    v67 = *(v0 + 168);

    OUTLINED_FUNCTION_6_6();
    v15 = 0;
  }

  else
  {
    (*(*(v0 + 528) + 32))(*(v0 + 536), *(v0 + 512), *(v0 + 520));
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_2_31();
      swift_once();
    }

    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    v21 = __swift_project_value_buffer(v19, static Signposter.voiceCommands);
    (*(v18 + 16))(v17, v21, v19);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v22 = OSSignposter.logHandle.getter();
    v23 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v24 = *(v0 + 480);
      OUTLINED_FUNCTION_18_1();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v25);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v22, v23, v26, "InputUtilsGetDateTime", "", v20, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v27 = *(v0 + 472);
    v28 = *(v0 + 480);
    v29 = *(v0 + 448);
    v30 = *(v0 + 456);
    v31 = *(v0 + 400);
    v32 = *(v0 + 408);
    v58 = *(v0 + 392);
    v60 = *(v0 + 440);
    v62 = *(v0 + 384);
    v64 = *(v0 + 536);
    v33 = *(v0 + 312);
    v66 = *(v0 + 304);
    v68 = *(v0 + 336);
    v34 = *(v0 + 144);

    v35 = *(v30 + 16);
    v36 = OUTLINED_FUNCTION_51_4();
    v37(v36);
    v38 = type metadata accessor for OSSignpostIntervalState();
    OUTLINED_FUNCTION_46_9(v38);
    swift_allocObject();
    OUTLINED_FUNCTION_55_2();
    *(v0 + 544) = OSSignpostIntervalState.init(id:isOpen:)();
    v39 = *(v30 + 8);
    *(v0 + 552) = v39;
    *(v0 + 560) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v28, v29);
    (*(v31 + 104))(v32, enum case for Calendar.Identifier.gregorian(_:), v58);
    Calendar.init(identifier:)();
    (*(v31 + 8))(v32, v58);
    v40 = v34[9];
    __swift_project_boxed_opaque_existential_1(v34 + 5, v34[8]);
    OUTLINED_FUNCTION_20_1();
    dispatch thunk of DeviceState.siriLocale.getter();
    *(v0 + 568) = TerminalElement.DateTimeValue.toDateTime()();
    *(v0 + 608) = enum case for DateTimeResolutionContext.Hemisphere.north(_:);
    v41 = *(v33 + 104);
    *(v0 + 576) = v41;
    *(v0 + 584) = (v33 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v41(v68);
    outlined init with copy of LocationProviding?(v34, v0 + 56, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
    if (*(v0 + 80))
    {
      outlined init with take of AceServiceInvokerAsync((v0 + 56), v0 + 16);
    }

    else
    {
      outlined init with copy of DeviceState(*(v0 + 144) + 80, v0 + 96);
      v42 = type metadata accessor for LocationProvider();
      v43 = swift_allocObject();
      *(v43 + 16) = 0x3FA999999999999ALL;
      outlined init with take of AceServiceInvokerAsync((v0 + 96), v43 + 24);
      *(v0 + 40) = v42;
      *(v0 + 48) = &protocol witness table for LocationProvider;
      *(v0 + 16) = v43;
      if (*(v0 + 80))
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v0 + 56, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMd, &_s18SiriLinkFlowPlugin17LocationProviding_pSgMR);
      }
    }

    v44 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v45 = *(v44 + 8);
    v69 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 592) = v47;
    *v47 = v0;
    OUTLINED_FUNCTION_64_2(v47);
    v15 = OUTLINED_FUNCTION_9_3();
    v14 = v69;
  }

  return v14(v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 592);
  *v2 = *v0;
  *(v1 + 600) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = *(v0 + 600);
  if (v1)
  {
    v2 = *(v0 + 584);
    v3 = *(v0 + 576);
    v4 = *(v0 + 608);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    [*(v0 + 600) lat];
    v10 = v9;

    (*(v8 + 8))(v5, v7);
    if (v10 <= 0.0)
    {
      v11 = enum case for DateTimeResolutionContext.Hemisphere.south(_:);
    }

    else
    {
      v11 = v4;
    }

    v3(v6, v11, v7);
    v12 = *(v8 + 32);
    v13 = OUTLINED_FUNCTION_9_3();
    v14(v13);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);
    v16 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v17 = OUTLINED_FUNCTION_17_18();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_18_1();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_45(v19);
      OUTLINED_FUNCTION_26(&dword_0, v20, v21, "#InputUtils: Could not get location, setting hemisphere to north");
      OUTLINED_FUNCTION_15_1();
    }
  }

  v137 = *(v0 + 568);
  v22 = *(v0 + 424);
  v104 = *(v0 + 416);
  v107 = *(v0 + 440);
  v23 = *(v0 + 384);
  v98 = *(v0 + 376);
  v101 = *(v0 + 432);
  v24 = *(v0 + 360);
  v25 = *(v0 + 344);
  v26 = *(v0 + 312);
  v86 = *(v0 + 320);
  v27 = *(v0 + 296);
  v88 = *(v0 + 304);
  v90 = *(v0 + 336);
  v92 = *(v0 + 288);
  v95 = *(v0 + 368);
  v128 = *(v0 + 280);
  v116 = *(v0 + 256);
  v119 = *(v0 + 240);
  v122 = *(v0 + 232);
  v110 = *(v0 + 248);
  v113 = *(v0 + 224);
  v125 = *(v0 + 216);
  v131 = *(v0 + 208);
  v134 = *(v0 + 184);
  v28 = *(*(v0 + 352) + 16);
  OUTLINED_FUNCTION_54_4();
  v28();
  OUTLINED_FUNCTION_54_4();
  v28();
  OUTLINED_FUNCTION_54_4();
  v28();
  static TimeZone.current.getter();
  (*(v26 + 16))(v86, v90, v88);
  (*(v22 + 16))(v101, v107, v104);
  static Date.now.getter();
  v29 = type metadata accessor for DateTimeResolutionContext();
  OUTLINED_FUNCTION_46_9(v29);
  swift_allocObject();
  DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)();
  (*(v110 + 104))(v116, enum case for DateTimeResolutionSpec.ExpandToType.pointInTime(_:), v119);
  (*(v113 + 104))(v122, enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:), v125);
  type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
  type metadata accessor for DateTime();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type DateTime.DateTimeRange.DefinedDateTimeRange and conformance DateTime.DateTimeRange.DefinedDateTimeRange, &type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange);
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_13_5();
  DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)();
  DateTimeResolver.init()();
  DateTimeResolver.makeRecommendation(value:context:spec:)();
  v30 = *(v0 + 544);
  v31 = *(v0 + 504);
  v32 = *(v0 + 464);
  v33 = *(v0 + 184);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v34);
  v35 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v36 = *(v0 + 544);
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);
    v39 = *(v0 + 152);

    checkForErrorAndConsumeState(state:)();

    if ((*(v38 + 88))(v37, v39) != enum case for OSSignpostError.doubleEnd(_:))
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    v40 = *(v0 + 464);
    OUTLINED_FUNCTION_18_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_7(v41);
    OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_47_4();
    _os_signpost_emit_with_name_impl(v42, v43, v44, v45, v46, v47, v48, v49);
    OUTLINED_FUNCTION_15_1();
  }

  v93 = *(v0 + 552);
  v96 = *(v0 + 560);
  v83 = *(v0 + 568);
  v84 = *(v0 + 544);
  v129 = *(v0 + 528);
  v132 = *(v0 + 520);
  v135 = *(v0 + 536);
  v50 = *(v0 + 496);
  v123 = *(v0 + 488);
  v126 = *(v0 + 504);
  v85 = *(v0 + 448);
  v87 = *(v0 + 464);
  v51 = *(v0 + 424);
  v111 = *(v0 + 416);
  v114 = *(v0 + 440);
  v52 = *(v0 + 352);
  v105 = *(v0 + 344);
  v108 = *(v0 + 384);
  v53 = *(v0 + 312);
  v99 = *(v0 + 304);
  v102 = *(v0 + 336);
  v54 = v35;
  v55 = *(v0 + 272);
  v89 = *(v0 + 264);
  v91 = *(v0 + 280);
  v56 = *(v0 + 200);
  v57 = *(v0 + 208);
  v58 = *(v0 + 192);
  v117 = *(v0 + 176);
  v120 = *(v0 + 184);

  v93(v87, v85);
  (*(v56 + 8))(v57, v58);
  (*(v55 + 8))(v91, v89);
  (*(v53 + 8))(v102, v99);
  (*(v52 + 8))(v108, v105);
  (*(v51 + 8))(v114, v111);
  (*(v50 + 8))(v126, v123);
  (*(v129 + 8))(v135, v132);
  outlined init with take of Date?(v120, v117, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8DateTimeCGMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117, 1, v59);
  v61 = *(v0 + 176);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v61, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMd, &_s13SiriInference14RecommendationOyAA8DateTimeCGSgMR);
  }

  else
  {
    v62 = *(v59 - 8);
    v63 = (*(v62 + 88))(v61, v59);
    v64 = *(v0 + 176);
    if (v63 == enum case for Recommendation.confident<A>(_:))
    {
      v65 = *(v62 + 96);
      v66 = OUTLINED_FUNCTION_22();
      v67(v66);
      v138 = *v64;
      goto LABEL_21;
    }

    v68 = *(v62 + 8);
    v69 = OUTLINED_FUNCTION_22();
    v70(v69);
  }

  v138 = 0;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v71 = *(v0 + 536);
  v73 = *(v0 + 504);
  v72 = *(v0 + 512);
  v74 = *(v0 + 472);
  v75 = *(v0 + 480);
  v76 = *(v0 + 464);
  v78 = *(v0 + 432);
  v77 = *(v0 + 440);
  v79 = *(v0 + 408);
  v80 = *(v0 + 384);
  v94 = *(v0 + 376);
  v97 = *(v0 + 368);
  v100 = *(v0 + 360);
  v103 = *(v0 + 336);
  v106 = *(v0 + 328);
  v109 = *(v0 + 320);
  v112 = *(v0 + 296);
  v115 = *(v0 + 288);
  v118 = *(v0 + 280);
  v121 = *(v0 + 256);
  v124 = *(v0 + 232);
  v127 = *(v0 + 208);
  v130 = *(v0 + 184);
  v133 = *(v0 + 176);
  v136 = *(v0 + 168);

  OUTLINED_FUNCTION_6_6();

  return v81(v138);
}

void static InputUtils.getInt(from:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMd, _s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGMR);
  OUTLINED_FUNCTION_7_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
  v11 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v12 = OUTLINED_FUNCTION_17_18();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_68_3(&dword_0, v14, v15, "#InputUtils getInt");
    OUTLINED_FUNCTION_15_1();
  }

  if (one-time initialization token for voiceCommandScalarNode != -1)
  {
    OUTLINED_FUNCTION_4_32();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  OUTLINED_FUNCTION_1_35();
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(v16, v17);
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_35_10(v5, 1, v6);
  if (v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMd, &_s12SiriOntology6ScalarVySd0A14LinkFlowPlugin21VoiceCommandsNLIntentV0g7CommandC4UnitOGSgMR);
    return;
  }

  v19 = OUTLINED_FUNCTION_52_5();
  v20(v19);
  Scalar.value.getter();
  v21 = OUTLINED_FUNCTION_50_3();
  v22(v21, v6);
  if (v25)
  {
    return;
  }

  if ((~*&v24 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_26_14();
  if (!v23)
  {
    goto LABEL_18;
  }
}

uint64_t static InputUtils.getPlacemarkQueryText(_:)()
{
  if (one-time initialization token for voiceCommandTextNode != -1)
  {
    swift_once();
  }

  type metadata accessor for VoiceCommandsNLIntent(0);
  _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v6)
  {
    return v5;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#InputUtils: getPlacemarkQueryText - no voiceCommandText from intent", v4, 2u);
  }

  return 0;
}

uint64_t static InputUtils.getPlacemarkQueryLatLong()()
{
  return _swift_task_switch(static InputUtils.getPlacemarkQueryLatLong(), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  static AceService.currentAsync.getter();
  type metadata accessor for LocationProvider();
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 80), inited + 24);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_64_2(v2);

  return LocationProvider.getCurrentLocation()();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v8 = *v0;

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + 24));
  OUTLINED_FUNCTION_6_6();

  return v6(v2);
}

uint64_t static InputUtils.getPlacemarkRecommendation(queryText:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v48 = a1;
  v46 = a3;
  v3 = type metadata accessor for LocationResolutionSpec();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  __chkstk_darwin(v3);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationResolver();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  __chkstk_darwin(v6);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Location();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeZone();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocationResolutionContext();
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = *(v54 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v41 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v41 - v29;
  __chkstk_darwin(v28);
  v32 = &v41 - v31;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v58, v58[3]);
  v33 = v42;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  v53 = v20;
  v34 = *(v20 + 16);
  v34(v30, v32, v19);
  v34(v27, v32, v19);
  v34(v24, v32, v19);
  v35 = v46;
  static TimeZone.current.getter();
  v36 = v44;
  v37 = v45;
  LocationResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:latitude:longitude:)();
  v38 = v47;

  Location.init(locationLabel:)(v48, v38, v33);
  LocationResolver.init()();
  LocationResolutionSpec.init()();
  LocationResolver.makeRecommendation(value:context:spec:)();
  (*(v51 + 8))(v37, v52);
  (*(v49 + 8))(v36, v50);
  (*(v56 + 8))(v33, v57);
  (*(v54 + 8))(v18, v55);
  (*(v53 + 8))(v32, v19);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  return __swift_storeEnumTagSinglePayload(v35, 0, 1, v39);
}

unint64_t static InputUtils.getPlacemark(_:)()
{
  v1 = OUTLINED_FUNCTION_13_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_50_0();
  v9 = v7 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_44_8();
  Recommendation<A>.location.getter(v0);
  outlined init with copy of LocationProviding?(v0, v16, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  v17 = type metadata accessor for Location();
  OUTLINED_FUNCTION_35_10(v16, 1, v17);
  if (v18)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v16, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    goto LABEL_6;
  }

  v19 = Location.toCLPlacemark()();
  OUTLINED_FUNCTION_21_2(v17);
  (*(v20 + 8))(v16, v17);
  if (!v19)
  {
LABEL_6:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v21, static Logger.voiceCommands);
    v22 = OUTLINED_FUNCTION_9_3();
    outlined init with copy of LocationProviding?(v22, v23, v24, v25);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(v13, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
      v30 = OUTLINED_FUNCTION_22();
LABEL_17:
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v30, v31, &_s13SiriInference8LocationVSgMR);
      return 0;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136315138;
    outlined init with copy of LocationProviding?(v13, v9, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    OUTLINED_FUNCTION_35_10(v9, 1, v17);
    if (v18)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    }

    else
    {
      v32 = Location.locationLabel.getter();
      v34 = v33;
      OUTLINED_FUNCTION_21_2(v17);
      (*(v35 + 8))(v9, v17);
      if (v34)
      {
        outlined destroy of Siri_Nlu_External_UserDialogAct?(v13, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
LABEL_16:
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v41);

        *(v28 + 4) = v36;
        OUTLINED_FUNCTION_66_2(&dword_0, v37, v38, "#InputUtils getPlacemark - failed to convert to CLPlacemark; location-label=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        OUTLINED_FUNCTION_15_1();

        OUTLINED_FUNCTION_15_1();

        v31 = &_s13SiriInference8LocationVSgMd;
        v30 = v0;
        goto LABEL_17;
      }
    }

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v13, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);

    v34 = 0xE300000000000000;
    v32 = 7104878;
    goto LABEL_16;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  return v19;
}

uint64_t static InputUtils.getPlaceDescriptor(_:)()
{
  if (static InputUtils.getPlacemark(_:)())
  {
    PlaceDescriptor.init(placemark:)();
  }

  type metadata accessor for PlaceDescriptor();
  v0 = OUTLINED_FUNCTION_61_1();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t Location.init(locationLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a1;
  v77 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6CountyVSgMd, &_s13SiriInference6CountyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12LocationNameVSgMd, &_s13SiriInference12LocationNameVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v73 = v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference16AddressReferenceVSgMd, &_s13SiriInference16AddressReferenceVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v72 = v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContinentNameVSgMd, &_s13SiriInference13ContinentNameVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v71 = v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13StreetAddressVSgMd, &_s13SiriInference13StreetAddressVSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8LandmarkVSgMd, &_s13SiriInference8LandmarkVSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference9ProximityVSgMd, &_s13SiriInference9ProximityVSgMR);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5PlaceVSgMd, &_s13SiriInference5PlaceVSgMR);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = v70 - v29;
  v70[1] = v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8CentroidVSgMd, &_s13SiriInference8CentroidVSgMR);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = v70 - v33;
  v70[2] = v70 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference4CityVSgMd, &_s13SiriInference4CityVSgMR);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = v70 - v37;
  v70[3] = v70 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5StateVSgMd, &_s13SiriInference5StateVSgMR);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v42 = v70 - v41;
  v70[4] = v70 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ZipcodeVSgMd, &_s13SiriInference7ZipcodeVSgMR);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = v70 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7CountryVSgMd, &_s13SiriInference7CountryVSgMR);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v50 = v70 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6RadiusVSgMd, &_s13SiriInference6RadiusVSgMR);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v54 = v70 - v53;
  v55 = type metadata accessor for Radius();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v55);
  v56 = type metadata accessor for Country();
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v56);
  v57 = type metadata accessor for Zipcode();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v57);
  v58 = type metadata accessor for State();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v58);
  v59 = type metadata accessor for City();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v59);
  v60 = type metadata accessor for Centroid();
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v60);
  v61 = type metadata accessor for Place();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v61);
  v62 = type metadata accessor for Proximity();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v62);
  v63 = type metadata accessor for Landmark();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v63);
  v64 = type metadata accessor for StreetAddress();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v64);
  v65 = type metadata accessor for ContinentName();
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v65);
  v66 = type metadata accessor for AddressReference();
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v66);
  v67 = type metadata accessor for LocationName();
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v67);
  v68 = type metadata accessor for County();
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v68);
  return Location.init(radius:country:zipcode:state:city:centroid:place:timezone:proximity:landmark:streetAddress:continentName:addressReference:locationName:locationLabel:county:locationAccuracy:)();
}

uint64_t Recommendation<A>.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Location();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v45 - v19);
  (*(v17 + 16))(&v45 - v19, v2, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == enum case for Recommendation.confident<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    (*(v9 + 32))(a1, v20, v8);
LABEL_9:
    v27 = a1;
    v28 = 0;
    return __swift_storeEnumTagSinglePayload(v27, v28, 1, v8);
  }

  if (v21 == enum case for Recommendation.needsConfirmation<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    v22 = *(v9 + 32);
    v22(v15, v20, v8);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.voiceCommands);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "#InputUtils LocationResolver call returned needsConfirmation which is unsupported, returning location", v26, 2u);
    }

    v22(a1, v15, v8);
    goto LABEL_9;
  }

  if (v21 == enum case for Recommendation.needsDisambiguation<A>(_:))
  {
    (*(v17 + 96))(v20, v16);
    specialized Collection.first.getter(*v20, v7);

    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v36 = *(v9 + 32);
      v36(v13, v7, v8);
      if (one-time initialization token for voiceCommands != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.voiceCommands);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "#InputUtils LocationResolver call returned needsDisambiguation which is unsupported, picking first location", v40, 2u);
      }

      v36(a1, v13, v8);
      goto LABEL_9;
    }

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s13SiriInference8LocationVSgMd, &_s13SiriInference8LocationVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.voiceCommands);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v32))
    {
LABEL_23:

      v27 = a1;
      v28 = 1;
      return __swift_storeEnumTagSinglePayload(v27, v28, 1, v8);
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#InputUtils getPlacemark - zero recommendations for disambiguation";
LABEL_22:
    _os_log_impl(&dword_0, v31, v32, v34, v33, 2u);

    goto LABEL_23;
  }

  if (v21 == enum case for Recommendation.none<A>(_:))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.voiceCommands);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_23;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "#InputUtils getPlacemark - no recommendations";
    goto LABEL_22;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.voiceCommands);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "#InputUtils getPlacemark - unknown recommendation", v44, 2u);
  }

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  return (*(v17 + 8))(v20, v16);
}

id @nonobjc INCurrencyAmount.init(amount:currencyCode:)(void *a1)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithAmount:a1 currencyCode:v3];

  return v4;
}

uint64_t outlined init with copy of VoiceCommandsNLIntent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceCommandsNLIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

uint64_t outlined init with copy of LocationProviding?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_21_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin17LocationProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for InputUtils.DateTimeHydrator(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for InputUtils.DateTimeHydrator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18SiriLinkFlowPlugin21VoiceCommandsNLIntentVAC0A8Ontology21IntentNodeTraversableAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_67_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_21_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_25_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_9()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  return *(v0 - 160);
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return static InputUtils.getPlacemarkRecommendation(queryText:latitude:longitude:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return IntentNodeTraversable.value<A>(forNode:)();
}

uint64_t OUTLINED_FUNCTION_65_2@<X0>(unsigned int *a1@<X8>)
{
  result = v1[21];
  v3 = v1[18];
  v4 = *a1;
  v5 = *(v1[19] + 104);
  return result;
}

void OUTLINED_FUNCTION_66_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_67_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_68_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_69_2()
{
  v2 = *(v0 - 288);

  return Logger.logObject.getter();
}

uint64_t RunCustomIntentCATs.confirmSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_16_19(v14);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATs.confirmSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_4_33(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v13;
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v0 + 96);
  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v19;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v20;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 80) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_38_3(v21);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_70_1();

    OUTLINED_FUNCTION_6_7();

    return v12();
  }
}

uint64_t RunCustomIntentCATs.describeCustomIntentItem(device:item:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_31_0(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = v0[6];
  v7 = v0[4];
  v1[6] = v2;
  v1[9] = v5;
  v1[10] = 1835365481;
  v1[11] = 0xE400000000000000;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_16_19(v14);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATs.deviceUnlock(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.deviceUnlock(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.disambiguateSlotValue(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.disambiguateSlotValue(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.disambiguateSlotValueItems(device:customPrompt:items:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_69_3();
  v0[8] = v2;
  v3 = OUTLINED_FUNCTION_1_3(v2, xmmword_218630);
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[7];
  OUTLINED_FUNCTION_4_33(v3);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v5);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v6);
  v7 = v0[7];
  OUTLINED_FUNCTION_24_6();
  if (v8)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = v0[5];
  v2[8].n128_u64[0] = 0x736D657469;
  v2[8].n128_u64[1] = 0xE500000000000000;
  v2[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[9].n128_u64[0] = v12;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[9] = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_38_3(v13);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[7];
  v1 = v0[8];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[10];

  return v3();
}

uint64_t RunCustomIntentCATs.disambiguateSlotValueWithCustomText(device:customIntroductionPrompt:customSelectionPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 112) = v1;
  OUTLINED_FUNCTION_51_5(v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v10 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v10);
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_41_3();
  v34 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218720);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 32);
  OUTLINED_FUNCTION_5_4(v4);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  v9 = *(v0 + 80);
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 40);
  OUTLINED_FUNCTION_26_3();
  v3[8].n128_u64[0] = 0xD000000000000015;
  v3[8].n128_u64[1] = v16;
  outlined init with copy of SpeakableString?(v17, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v10)
  {
    outlined destroy of String?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  v21 = *(v0 + 64);
  v22 = *(v0 + 48);
  OUTLINED_FUNCTION_26_3();
  v3[11].n128_u64[0] = 0xD000000000000010;
  v3[11].n128_u64[1] = v23;
  outlined init with copy of SpeakableString?(v24, v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v21, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_24_4();
    v27();
  }

  v28 = *(v0 + 112);
  v3[14].n128_u64[0] = 0xD000000000000018;
  v3[14].n128_u64[1] = 0x8000000000230D40;
  v3[16].n128_u64[1] = &type metadata for Bool;
  v3[15].n128_u8[0] = v28;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v33 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 96) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_39_11(v30);
  OUTLINED_FUNCTION_17_19();

  return v33();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v16 = v3 + 8;
    v14 = v3[8];
    v15 = v16[1];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v6 = v0[13];

  return v5();
}

uint64_t RunCustomIntentCATs.doneButton()()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v7(v2, 0xD00000000000001ALL, 0x800000000022EAA0, _swiftEmptyArrayStorage);
}

uint64_t RunCustomIntentCATs.errorWithCodeCustomError(device:customDialog:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  v1[8] = OUTLINED_FUNCTION_71_3(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = v0[8];
  v8 = v0[4];
  *(v2 + 48) = v3;
  *(v2 + 72) = v6;
  strcpy((v2 + 80), "customDialog");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v13;
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[10] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_38_3(v18);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_70_1();

    OUTLINED_FUNCTION_6_7();

    return v12();
  }
}

uint64_t RunCustomIntentCATs.extensionTimedOut(device:actionName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_31_0(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216840);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v6 = v0[6];
  v7 = v0[4];
  v1[6] = v2;
  v1[9] = v5;
  v1[10] = 0x614E6E6F69746361;
  v1[11] = 0xEA0000000000656DLL;
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
  if (v9)
  {

    outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_16_19(v14);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATs.followupNotSupported(device:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_41_3();
  v23 = v2;
  OUTLINED_FUNCTION_14_0();
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = v0[6];
  v8 = v0[4];
  OUTLINED_FUNCTION_5_4(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v9);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v10);
  if (v11)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_24_4();
    v14();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v22 = v15;
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_13_6(v16);
  *v17 = v18;
  v17[1] = RunVoiceCommandCATs.disambiguateSlotValue(device:slotName:);
  v19 = v0[5];
  v20 = v0[2];
  OUTLINED_FUNCTION_17_19();

  return v22();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessage(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.handoffNotificationMessageHomePodOnly(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.handoffNotificationMessageHomePodOnly(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.initiateHandoff(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.initiateHandoff(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.intentConfirmationPrompt(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_5(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v9 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v0[11] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_21A520);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = v0[10];
  OUTLINED_FUNCTION_3_24(v4);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v0[10];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[9];
  v14 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_43_6();
  v18 = v0[8];
  v19 = v0[6];
  OUTLINED_FUNCTION_26_3();
  v3[11].n128_u64[0] = v1;
  v3[11].n128_u64[1] = v20;
  outlined init with copy of SpeakableString?(v21, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[12] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_39_11(v25);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v16 = v3 + 8;
    v14 = v3[8];
    v15 = v16[1];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

uint64_t RunCustomIntentCATs.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 128) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v12);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v1 + 104) = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  v6 = *(v1 + 96);
  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  v9 = *(v1 + 96);
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v1 + 88);
  v15 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v15, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v1 + 88), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  OUTLINED_FUNCTION_43_6();
  v19 = *(v1 + 80);
  v20 = *(v1 + 48);
  OUTLINED_FUNCTION_26_3();
  *(v4 + 176) = v2;
  *(v4 + 184) = v21;
  outlined init with copy of SpeakableString?(v22, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v1 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_24_4();
    v25();
  }

  v26 = *(v1 + 72);
  v27 = *(v1 + 56);
  OUTLINED_FUNCTION_44_9();
  *(v4 + 224) = v28;
  *(v4 + 232) = v29;
  outlined init with copy of SpeakableString?(v30, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v10)
  {
    outlined destroy of String?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
  }

  else
  {
    *(v4 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 240));
    OUTLINED_FUNCTION_13_2();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_24_4();
    v33();
  }

  v34 = *(v1 + 128);
  OUTLINED_FUNCTION_26_3();
  *(v4 + 272) = v2 + 8;
  *(v4 + 280) = v35;
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 288) = v36;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 112) = v37;
  *v37 = v38;
  v37[1] = RunCustomIntentCATs.intentConfirmationPromptWithTemplate(device:intentCategory:categoryVerb:localizedAppName:customDialog:shouldShowAppAttribution:);
  v39 = *(v1 + 64);
  v40 = *(v1 + 16);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[12];
    v12 = v3[13];
    v15 = v3[10];
    v14 = v3[11];
    v16 = v3[9];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

uint64_t RunCustomIntentCATs.intentHandledResponse(device:intentCategory:categoryVerb:localizedAppName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_51_5(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_27();
  v9 = swift_task_alloc();
  *(v0 + 80) = OUTLINED_FUNCTION_48_0(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_66_3();
  v0[11] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_21A520);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = v0[10];
  OUTLINED_FUNCTION_3_24(v4);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v6);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v7);
  v8 = v0[10];
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = v0[9];
  v14 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  OUTLINED_FUNCTION_43_6();
  v18 = v0[8];
  v19 = v0[6];
  OUTLINED_FUNCTION_26_3();
  v3[11].n128_u64[0] = v1;
  v3[11].n128_u64[1] = v20;
  outlined init with copy of SpeakableString?(v21, v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_14_16() == 1)
  {
    outlined destroy of String?(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_24_4();
    v24();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[12] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_39_11(v25);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t RunCustomIntentCATs.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 128) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v12);
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  *(v1 + 104) = v4;
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216FA0);
  if (v3)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  v6 = *(v1 + 96);
  OUTLINED_FUNCTION_3_24(v5);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  v9 = *(v1 + 96);
  OUTLINED_FUNCTION_24_6();
  if (v10)
  {

    outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_24_4();
    v13();
  }

  v14 = *(v1 + 88);
  v15 = OUTLINED_FUNCTION_9_19();
  outlined init with copy of SpeakableString?(v15, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v1 + 88), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = *(v1 + 80);
  v20 = *(v1 + 48);
  OUTLINED_FUNCTION_44_9();
  *(v4 + 176) = v21;
  *(v4 + 184) = v22;
  outlined init with copy of SpeakableString?(v23, v19, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(*(v1 + 80), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    OUTLINED_FUNCTION_67_4();
    OUTLINED_FUNCTION_13_2();
    v25 = *(v24 + 32);
    OUTLINED_FUNCTION_24_4();
    v26();
  }

  OUTLINED_FUNCTION_43_6();
  v27 = *(v1 + 72);
  v28 = *(v1 + 56);
  OUTLINED_FUNCTION_26_3();
  *(v4 + 224) = v2;
  *(v4 + 232) = v29;
  outlined init with copy of SpeakableString?(v30, v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_9_5();
  if (v10)
  {
    outlined destroy of String?(v27, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
  }

  else
  {
    *(v4 + 264) = v0;
    __swift_allocate_boxed_opaque_existential_1((v4 + 240));
    OUTLINED_FUNCTION_13_2();
    v32 = *(v31 + 32);
    OUTLINED_FUNCTION_24_4();
    v33();
  }

  v34 = *(v1 + 128);
  OUTLINED_FUNCTION_26_3();
  *(v4 + 272) = v2 + 8;
  *(v4 + 280) = v35;
  *(v4 + 312) = &type metadata for Bool;
  *(v4 + 288) = v36;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 112) = v37;
  *v37 = v38;
  v37[1] = RunCustomIntentCATs.intentHandledResponseWithTemplate(device:intentCategory:categoryVerb:customDialog:localizedAppName:shouldShowAppAttribution:);
  v39 = *(v1 + 64);
  v40 = *(v1 + 16);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v45(v41, v42, v43, v44, v45, v46, v47, v48);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[12];
    v12 = v3[13];
    v15 = v3[10];
    v14 = v3[11];
    v16 = v3[9];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v7 = v0[15];

  return v6();
}

uint64_t RunCustomIntentCATs.introduceDisambiguationList(device:itemCount:pageSize:hasMultiplePages:customIntroductionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 98) = v3;
  *(v1 + 97) = v4;
  *(v1 + 96) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_41_3();
  v26 = v2;
  OUTLINED_FUNCTION_14_0();
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218720);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v7 = *(v0 + 96);
  *(v1 + 48) = v3;
  *(v1 + 72) = v6;
  *(v1 + 80) = 0x6E756F436D657469;
  *(v1 + 88) = 0xE900000000000074;
  if (v7)
  {
    OUTLINED_FUNCTION_68_4();
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 32);
    v8 = &type metadata for Double;
  }

  v10 = *(v0 + 97);
  *(v1 + 96) = v9;
  *(v1 + 120) = v8;
  *(v1 + 128) = 0x657A695365676170;
  *(v1 + 136) = 0xE800000000000000;
  if (v10)
  {
    OUTLINED_FUNCTION_68_4();
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = &type metadata for Double;
  }

  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v15 = *(v0 + 98);
  *(v1 + 144) = v12;
  *(v1 + 168) = v11;
  *(v1 + 176) = 0xD000000000000010;
  *(v1 + 184) = 0x8000000000232F10;
  *(v1 + 192) = v15;
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000018;
  *(v1 + 232) = 0x8000000000232ED0;
  outlined init with copy of SpeakableString?(v14, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v17)
  {

    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
  }

  else
  {
    *(v1 + 264) = v16;
    __swift_allocate_boxed_opaque_existential_1((v1 + 240));
    OUTLINED_FUNCTION_13_2();
    v19 = *(v18 + 32);
    OUTLINED_FUNCTION_24_4();
    v20();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v25 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 80) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_39_11(v22);
  OUTLINED_FUNCTION_17_19();

  return v25();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[11];

  return v3();
}

uint64_t RunCustomIntentCATs.introduceNextDisambiguationPage(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.introduceNextDisambiguationPage(device:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, xmmword_216850);
  if (v2)
  {
    v5 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_47_5(v5);
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t RunCustomIntentCATs.offerMoreDisambiguationItems(device:remainingPages:customSelectionPrompt:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_41_3();
  v21 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_69_3();
  *(v0 + 64) = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_218630);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 88);
  v3[3].n128_u64[0] = v2;
  v3[4].n128_u64[1] = v4;
  strcpy(&v3[5], "remainingPages");
  v3[5].n128_u8[15] = -18;
  if (v5)
  {
    OUTLINED_FUNCTION_68_4();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = &type metadata for Double;
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v3[6].n128_u64[0] = v7;
  v3[7].n128_u64[1] = v6;
  v3[8].n128_u64[0] = 0xD000000000000015;
  v3[8].n128_u64[1] = 0x8000000000232EF0;
  outlined init with copy of SpeakableString?(v9, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v10);
  v11 = *(v0 + 56);
  OUTLINED_FUNCTION_24_6();
  if (v12)
  {

    outlined destroy of String?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_24_4();
    v15();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v20 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 72) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_38_3(v17);
  OUTLINED_FUNCTION_17_19();

  return v20();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];

    OUTLINED_FUNCTION_6_7();

    return v14();
  }
}

uint64_t RunCustomIntentCATs.offerMoreItems(device:remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 40) = a5;
  *(v7 + 48) = v6;
  *(v7 + 81) = a6;
  *(v7 + 80) = a4;
  OUTLINED_FUNCTION_54_5(a1, a2, a3);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t RunCustomIntentCATs.offerMoreItems(device:remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_69_3();
  *(v0 + 56) = v2;
  *(v2 + 16) = xmmword_218630;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 80);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "remainingPages");
  *(v2 + 95) = -18;
  if (v5)
  {
    OUTLINED_FUNCTION_68_4();
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = &type metadata for Double;
  }

  v8 = *(v0 + 81);
  *(v2 + 96) = v7;
  *(v2 + 120) = v6;
  strcpy((v2 + 128), "nextPageSize");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  *(v2 + 144) = v9;
  *(v2 + 168) = v10;
  OUTLINED_FUNCTION_13_8(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_13_6(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_38_3(v12);
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_87();

  return v18(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t RunCustomIntentCATs.promptForSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_16_19(v14);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATs.promptForSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_4_33(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v13;
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v0 + 96);
  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v19;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v20;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 80) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_38_3(v21);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t RunCustomIntentCATs.readDisambiguationItems(device:items:)()
{
  OUTLINED_FUNCTION_41_3();
  v13 = v1;
  OUTLINED_FUNCTION_14_0();
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v0[6] = v3;
  v4 = OUTLINED_FUNCTION_1_3(v3, xmmword_216840);
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v5 = v0[4];
  v3[3].n128_u64[0] = v2;
  v3[4].n128_u64[1] = v4;
  v3[5].n128_u64[0] = 0x736D657469;
  v3[5].n128_u64[1] = 0xE500000000000000;
  v3[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v3[6].n128_u64[0] = v5;
  v6 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v12 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[7] = v7;
  *v7 = v8;
  v7[1] = RunCustomIntentCATs.readDisambiguationItems(device:items:);
  v9 = v0[5];
  v10 = v0[2];

  return v12(v10, 0xD000000000000027, 0x800000000022EDE0, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t RunCustomIntentCATs.unsupportedSlotValue(device:parameterName:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_31_0(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_216840);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  OUTLINED_FUNCTION_15_18(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_13(v8);
  if (v9)
  {

    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_6(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_16_19(v14);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_87();

  return v20(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t RunCustomIntentCATs.unsupportedSlotValueWithCustomText(device:customPrompt:localizedAppName:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_40_7(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  *(v0 + 64) = OUTLINED_FUNCTION_71_3(v9);
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_66_3();
  v5 = OUTLINED_FUNCTION_58_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_21A520);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v7 = *(v0 + 64);
  OUTLINED_FUNCTION_4_33(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v8);
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_24_6();
  if (v9)
  {

    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_26_5();
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  OUTLINED_FUNCTION_31_7();
  OUTLINED_FUNCTION_26_3();
  *(v2 + 128) = v1;
  *(v2 + 136) = v13;
  outlined init with copy of SpeakableString?(v14, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_20_12() == 1)
  {
    outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_43_2();
  }

  else
  {
    OUTLINED_FUNCTION_46_1();
    OUTLINED_FUNCTION_13_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_24_4();
    v17();
  }

  v18 = *(v0 + 96);
  OUTLINED_FUNCTION_26_3();
  *(v2 + 176) = v1 + 8;
  *(v2 + 184) = v19;
  *(v2 + 216) = &type metadata for Bool;
  *(v2 + 192) = v20;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 80) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_38_3(v21);
  OUTLINED_FUNCTION_11_15();
  OUTLINED_FUNCTION_87();

  return v27(v23, v24, v25, v26, v27, v28, v29, v30);
}

uint64_t RunCustomIntentCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return RunCustomIntentCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t RunCustomIntentCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t type metadata accessor for RunCustomIntentCATs()
{
  result = type metadata singleton initialization cache for RunCustomIntentCATs;
  if (!type metadata singleton initialization cache for RunCustomIntentCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24(uint64_t result)
{
  v4 = *(v2 + 32);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "intentCategory");
  *(v3 + 95) = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t result)
{
  v4 = *(v2 + 32);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "customPrompt");
  *(v3 + 93) = 0;
  *(v3 + 94) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19()
{
  result = *(v0 + 40);
  strcpy((v1 + 128), "categoryVerb");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_16()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t result)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 32);
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  strcpy((v3 + 80), "parameterName");
  *(v3 + 94) = -4864;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  result = __swift_getEnumTagSinglePayload(v1, 1, v0);
  v4 = *(v2 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 56);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_40_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 96) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_5(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = result;
  v6[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = result;
  return result;
}

double OUTLINED_FUNCTION_56_2()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_67_4()
{
  *(v1 + 216) = v0;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 192));
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1)
{
  *(v1 + 56) = a1;

  return swift_task_alloc();
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.__allocating_init(runner:deviceState:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of AceServiceInvokerAsync(a1, v4 + 56);
  outlined init with take of AceServiceInvokerAsync(a2, v4 + 16);
  return v4;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.init(runner:deviceState:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of AceServiceInvokerAsync(a1, v2 + 56);
  outlined init with take of AceServiceInvokerAsync(a2, v2 + 16);
  return v2;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse()()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for AceOutput();
  v1[15] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v9 = *(*(type metadata accessor for CATOption() - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[19] = v10;
  v11 = *(v10 - 8);
  OUTLINED_FUNCTION_16_1();
  v1[20] = v12;
  v14 = *(v13 + 64);
  v1[21] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v15, v16, v17);
}

{
  v1 = v0[18];
  v2 = v0[13];
  type metadata accessor for RunCustomIntentCATs();
  static CATOption.defaultMode.getter();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  v0[22] = v3;
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v4);
  v6 = DeviceState.asSiriKitDeviceState()(v4, v5);
  v0[23] = v6;
  v7 = *(*v3 + class metadata base offset for RunCustomIntentCATs + 104);
  OUTLINED_FUNCTION_16_1();
  v14 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();
  v12 = v0[21];

  return v14(v12, v6);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v3[25] = v0;

  if (!v0)
  {
    v10 = v3[22];
    v9 = v3[23];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = async function pointer to static NotificationTemplates.genericHandoffNotification()[1];
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();

  return static NotificationTemplates.genericHandoffNotification()(v8);
}

{
  v1 = *(v0 + 104);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = *(v3 + 32);
  OUTLINED_FUNCTION_16_1();
  v10 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse();

  return v10(v2, v3);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 248) = v5;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[20];
  v4 = v0[21];
  v13 = v0[19];
  v14 = v0[18];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  v15 = v0[14];
  v9 = v0[12];
  v0[10] = v8;
  v0[11] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v6 + 16))(boxed_opaque_existential_1, v7, v8);
  HandoffResponse.init(output:companionNotificationText:runSiriKitExecutorCommand:)();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v4, v13);

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[25];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.makeHandoffResponse()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  v10 = *(v9 + 208);
  v11 = *v3;
  OUTLINED_FUNCTION_3_0();
  *v12 = v11;
  v7[27] = v2;

  if (!v2)
  {
    v7[28] = a2;
    v7[29] = a1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t CustomIntentHandoffToCompanionFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy(uint64_t a1)
{
  v4 = *(**v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance CustomIntentHandoffToCompanionFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentHandleIntentFlowStrategy.__allocating_init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CustomIntentHandleIntentFlowStrategy.init(voiceCommandName:siriEnvironment:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  outlined init with copy of DeviceState(a4, v4 + 16);
  outlined init with copy of DeviceState(a4, v44);
  type metadata accessor for RunCustomIntentCATs();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_10_8();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v12, &v48);
  type metadata accessor for RunCustomIntentCATsSimple();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_10_8();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v13, &v47);
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_10_8();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v14, &v46);
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_10_8();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  OUTLINED_FUNCTION_10_23(v15, &v45);
  v16 = type metadata accessor for ContinueInAppCATWrapperSimple();
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  outlined init with copy of DeviceState?(v42, v41);
  v19 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v41);
  outlined destroy of DeviceState?(v42);
  v20 = type metadata accessor for ResponseFactory();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = ResponseFactory.init()();
  type metadata accessor for CustomIntentHandleIntentResponseGenerator();
  v24 = swift_allocObject();
  outlined init with copy of DeviceState(v44, v42);
  v41[3] = v20;
  v41[4] = &protocol witness table for ResponseFactory;
  v41[0] = v23;
  v25 = a1;
  v24[10] = a1;
  v24[11] = a2;
  outlined init with copy of DeviceState(v42, (v24 + 2));
  v24[9] = a3;
  v24[12] = v19;
  outlined init with copy of DeviceState(v41, (v24 + 13));
  outlined init with copy of DeviceState(v42, v40);
  v26 = one-time initialization token for shared;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = static WFDialogState.shared;

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v28 = type metadata accessor for AppNameResolver();
  v29 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v30 = swift_allocObject();
  v38 = v28;
  v39 = &protocol witness table for AppNameResolver;

  *&v37 = v29;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  *(v30 + 56) = v27;
  outlined init with take of AceServiceInvokerAsync(v40, v30 + 16);
  *(v30 + 64) = 0;
  *(v30 + 72) = 1;
  *(v30 + 80) = v36;
  *(v30 + 88) = v35;
  *(v30 + 96) = v34;
  *(v30 + 104) = v33;
  outlined init with take of AceServiceInvokerAsync(&v37, v30 + 112);
  v24[7] = v30;
  v31 = v24[9];
  type metadata accessor for CustomIntentSnippetProvider();
  swift_allocObject();
  v24[8] = CustomIntentSnippetProvider.init(voiceCommandName:templatingService:deviceState:siriEnvironment:)(v25, a2, v30, v42, v31);
  *(v5 + 56) = v24;

  return v5;
}

uint64_t CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:)()
{
  v1 = v0[3];
  v2 = *(v0[4] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v0[6] = OUTLINED_FUNCTION_8_21(v3);
  v4 = *(*v2 + 208);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_3_25(v6);

  return v9(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makePromptForDeviceUnlock(rchRecord:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 40);

    OUTLINED_FUNCTION_6_7();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CustomIntentHandleIntentFlowStrategy makeIntentHandledResponse", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v7 = IntentResolutionRecord.intent.getter();
  v8 = IntentResolutionRecord.intentResponse.getter();
  LOBYTE(v6) = CustomIntentHandleIntentFlowStrategy.isReadRequest(intent:intentResponse:deviceState:)(v7, v8, (v5 + 16));

  if (v6)
  {
    v9 = v0[2];
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    OUTLINED_FUNCTION_6_7();

    return v10();
  }

  else
  {
    v12 = v0[3];
    v13 = *(v0[4] + 56);
    v14 = IntentResolutionRecord.app.getter();
    v0[6] = OUTLINED_FUNCTION_8_21(v14);
    v15 = IntentResolutionRecord.intentResponse.getter();
    OUTLINED_FUNCTION_9_20(v15);
    v17 = *(v16 + 192);
    v21 = v17 + *v17;
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_3_25(v19);
    OUTLINED_FUNCTION_11_16();

    return v20();
  }
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);
    v10 = *(v3 + 40);

    OUTLINED_FUNCTION_6_7();

    return v11();
  }
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = v0[3];
  v2 = *(v0[4] + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo8INIntentCSo0G8ResponseCGMR);
  v3 = IntentResolutionRecord.app.getter();
  v0[6] = OUTLINED_FUNCTION_8_21(v3);
  v4 = IntentResolutionRecord.intentResponse.getter();
  OUTLINED_FUNCTION_9_20(v4);
  v6 = *(v5 + 224);
  v11 = v6 + *v6;
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_3_25(v8);
  OUTLINED_FUNCTION_11_16();

  return v9();
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {

    return _swift_task_switch(CustomIntentHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0, 0);
  }

  else
  {
    v9 = *(v3 + 48);
    v10 = *(v3 + 40);

    OUTLINED_FUNCTION_6_7();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3();
}

uint64_t CustomIntentHandleIntentFlowStrategy.isReadRequest(intent:intentResponse:deviceState:)(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for InteractionType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = CustomIntentHandleIntentFlowStrategy.getReadItems(intent:intentResponse:)(a1, a2)[2];

  if (v14)
  {
    OUTLINED_FUNCTION_4_24();
    if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isCarPlay.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isHomePod.getter()) || (OUTLINED_FUNCTION_4_24(), (dispatch thunk of DeviceState.isEyesFree.getter()))
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v16 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      dispatch thunk of DeviceState.interactionType.getter();
      (*(v7 + 104))(v11, enum case for InteractionType.dialogDriven(_:), v6);
      LOBYTE(v14) = specialized == infix<A>(_:_:)();
      v17 = *(v7 + 8);
      v17(v11, v6);
      v17(v13, v6);
    }
  }

  return v14 & 1;
}

void *CustomIntentHandleIntentFlowStrategy.getReadItems(intent:intentResponse:)(void *a1, void *a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2;
  v4 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v3);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = v4;
  v6 = [a1 typeName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  v24 = v3;
  v11 = INIntentResponse.localizedResponseTemplate(intentName:)(v10);

  type metadata accessor for CATSpeakableString();
  v25 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v11._countAndFlagsBits, v11._object);

  v13 = 0;
  v14 = 1 << *(v5 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v5 + 64);
  v17 = (v14 + 63) >> 6;
LABEL_6:
  if (!v16)
  {
    goto LABEL_8;
  }

  do
  {
    v18 = v13;
LABEL_12:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v20, v27);
    outlined init with copy of Any(*(v5 + 56) + 32 * v20, v26);
    *__src = v27[0];
    *&__src[16] = v27[1];
    *&__src[32] = v28;
    outlined init with take of Any(v26, &__src[40]);
LABEL_13:
    memcpy(__dst, __src, 0x48uLL);
    if (!*(&__dst[1] + 1))
    {

      return _swiftEmptyArrayStorage;
    }

    outlined init with take of Any((&__dst[2] + 8), v27);
    *__src = __dst[0];
    *&__src[16] = __dst[1];
    *&__src[32] = *&__dst[2];
    v21 = swift_dynamicCast();
    if (v21)
    {
      *__src = v26[0];
      __chkstk_darwin(v21);
      v23[2] = __src;
      v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v23, v25);

      if (v22)
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
        goto LABEL_6;
      }

      outlined init with take of Any(v27, __src);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      result = swift_dynamicCast();
      if (result)
      {

        return *&v26[0];
      }

      goto LABEL_6;
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  while (v16);
LABEL_8:
  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      memset(__src, 0, sizeof(__src));
      goto LABEL_13;
    }

    v16 = *(v5 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t InstallShortcutViewFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t InstallShortcutViewFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance ListShortcutsFlow;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentHandleIntentFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CustomIntentHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t outlined destroy of DeviceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy()
{
  result = lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy;
  if (!lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy)
  {
    type metadata accessor for CustomIntentHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentHandleIntentFlowStrategy and conformance CustomIntentHandleIntentFlowStrategy);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t a1)
{
  *(v1 + 40) = a1;

  return IntentResolutionRecord.intent.getter();
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t result)
{
  *(v2 + 56) = result;
  v3 = *v1;
  return result;
}

void ShortcutsLinkRCHFlowStrategy.__allocating_init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_21_5(v22, v23, v24, v25, v26, v27, v28, v29);
  v30 = swift_allocObject();
  v31 = a22[3];
  v32 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v31);
  OUTLINED_FUNCTION_13_1();
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v40 = (*(v39 + 16))(v37 - v36);
  OUTLINED_FUNCTION_25_9(v40, v41, v42, v43, v44, v45, v46, v47, a21, v38, v30, v31, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_21_5(v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = a22[3];
  v32 = a22[4];
  __swift_mutable_project_boxed_opaque_existential_1(a22, v31);
  OUTLINED_FUNCTION_13_1();
  v34 = *(v33 + 64);
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_3();
  v38 = v37 - v36;
  v40 = (*(v39 + 16))(v37 - v36);
  OUTLINED_FUNCTION_25_9(v40, v41, v42, v43, v44, v45, v46, v47, a21, v38, v22, v31, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a22);
  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:needsValueRequest:actionMetadata:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for CATOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_3();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  outlined init with copy of DeviceState(v0 + 128, v17);

  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs();
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  static CATOption.defaultMode.getter();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for ShortcutsLinkPromptForValueFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForValueFlowStrategy.init(action:needsValueRequest:appBundleId:actionMetadata:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:serviceInvoker:)(v7, v5, v10, v11, v3, v16, v12, v13, v17);
  outlined init with copy of DeviceState(v1 + 88, v17);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMR);
  OUTLINED_FUNCTION_66(v14);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy, type metadata accessor for ShortcutsLinkPromptForValueFlowStrategy);

  v17[0] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  OUTLINED_FUNCTION_10_24();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v15, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo7LNValueCGMR);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:disambiguatingNeedsValueRequest:actionMetadata:actionParameterMetadata:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v32 = v1;
  v30 = v2;
  v33 = v3;
  v5 = v4;
  v6 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_13_1();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v16 = v0[2];
  v15 = v0[3];
  v31 = v16;
  v17 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  OUTLINED_FUNCTION_1_18();
  dispatch thunk of DeviceState.siriLocale.getter();
  v18 = Locale.identifier.getter();
  v20 = v19;
  (*(v8 + 8))(v14, v6);
  v21 = type metadata accessor for LinkMetadataProvider();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(v16, v15, v30, v32, v18, v20);

  swift_setDeallocating();

  v23 = [v5 dialog];
  outlined init with copy of DeviceState((v0 + 5), v36);
  outlined init with copy of DeviceState((v0 + 16), v35);
  outlined init with copy of DeviceState((v0 + 11), v34);
  v24 = swift_allocObject();
  *(v24 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  type metadata accessor for ShortcutsLinkDisambiguationFlowStrategy();
  v25 = swift_allocObject();
  v25[13] = v21;
  v25[14] = &protocol witness table for LinkMetadataProvider;
  v25[10] = v24;
  v25[20] = v33;
  v25[3] = v31;
  v25[4] = v15;
  v25[2] = v23;
  outlined init with take of AceServiceInvokerAsync(v36, (v25 + 5));
  outlined init with take of AceServiceInvokerAsync(v35, (v25 + 15));
  outlined init with take of AceServiceInvokerAsync(v34, (v25 + 21));
  outlined init with copy of DeviceState((v0 + 11), v36);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMR);
  OUTLINED_FUNCTION_66(v26);
  OUTLINED_FUNCTION_9_21();
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(v27, v28);
  v29 = v33;

  *&v36[0] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_11_17(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<ShortcutsLinkDisambiguationItem, [LNValue]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  OUTLINED_FUNCTION_42();
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:confirmationRequest:actionMetadata:)()
{
  OUTLINED_FUNCTION_40_0();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v4 = type metadata accessor for CATOption();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  OUTLINED_FUNCTION_3();
  v6 = *(v0 + 24);
  v20 = *(v0 + 16);
  outlined init with copy of DeviceState(v0 + 40, v26);
  outlined init with copy of DeviceState(v0 + 128, &v25);
  outlined init with copy of DeviceState(v0 + 88, v24);
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_31_8();

  static CATOption.defaultMode.getter();
  v7 = CATWrapperSimple.__allocating_init(options:globals:)();
  v8 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v9 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATs();
  static CATOption.defaultMode.getter();
  v10 = CATWrapper.__allocating_init(options:globals:)();
  v11 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v11);
  v12 = ResponseFactory.init()();
  type metadata accessor for ShortcutsLinkPromptForConfirmationFlowStrategy();
  v13 = swift_allocObject();
  v13[11] = v8;
  v13[12] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v13[8] = v9;
  v13[17] = &type metadata for EnableTCCLabelsProvider;
  v13[18] = &protocol witness table for EnableTCCLabelsProvider;
  v13[22] = v11;
  v13[23] = &protocol witness table for ResponseFactory;
  v13[19] = v12;
  v13[2] = v21;
  v13[3] = v22;
  v13[4] = v23;
  v13[5] = v20;
  v13[6] = v6;
  v13[7] = v7;
  v13[13] = v10;
  outlined init with take of AceServiceInvokerAsync(v26, (v13 + 24));
  outlined init with take of AceServiceInvokerAsync(&v25, (v13 + 29));
  outlined init with take of AceServiceInvokerAsync(v24, (v13 + 34));
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = [v15 value];
  outlined init with copy of DeviceState(v0 + 88, v26);
  *&v25 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v18);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForConfirmationFlowStrategy and conformance ShortcutsLinkPromptForConfirmationFlowStrategy, type metadata accessor for ShortcutsLinkPromptForConfirmationFlowStrategy);

  *&v26[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v19, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo7LNValueCAA06SimpleF16ResponseProviderVGMR);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

uint64_t *ShortcutsLinkRCHFlowStrategy.flowFor(action:actionConfirmationRequest:actionMetadata:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = *(v4 + 24);
  outlined init with copy of DeviceState(v4 + 40, v17);
  outlined init with copy of DeviceState(v4 + 128, v16);
  outlined init with copy of DeviceState(v4 + 88, v15);
  type metadata accessor for ShortcutsLinkPromptForActionConfirmationFlowStrategy();
  swift_allocObject();

  v10 = a1;
  ShortcutsLinkPromptForActionConfirmationFlowStrategy.init(action:request:actionMetadata:appBundleId:deviceState:serviceInvoker:outputPublisher:)(v10, a2, a3, v8, v9, v17, v16, v15);
  outlined init with copy of DeviceState(v4 + 88, v17);
  v16[0] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v11);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForActionConfirmationFlowStrategy and conformance ShortcutsLinkPromptForActionConfirmationFlowStrategy, type metadata accessor for ShortcutsLinkPromptForActionConfirmationFlowStrategy);
  v12 = v10;

  v17[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v13, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo8LNActionCAA06SimpleF16ResponseProviderVGMR);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v17;
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:disambiguationRequest:selectedValues:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = v0[9];
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  OUTLINED_FUNCTION_31_8();
  dispatch thunk of DeviceState.siriLocale.getter();
  Locale.identifier.getter();
  (*(v7 + 8))(v13, v5);
  LNDisambiguationRequest.toDisambiguationItems(selectedValues:locale:)(v2);
  OUTLINED_FUNCTION_31_8();

  v16 = v0[2];
  v15 = v0[3];
  v17 = v0[4];

  v18 = v17;
  v19 = [v4 dialog];
  outlined init with copy of DeviceState((v0 + 5), v28);
  outlined init with copy of DeviceState((v0 + 16), v27);
  outlined init with copy of DeviceState((v0 + 11), v26);
  v20 = type metadata accessor for LinkMetadataProvider();
  v21 = swift_allocObject();
  *(v21 + 16) = [objc_allocWithZone(LNMetadataProvider) init];
  type metadata accessor for ShortcutsLinkDisambiguationFlowStrategy();
  v22 = swift_allocObject();
  v22[13] = v20;
  v22[14] = &protocol witness table for LinkMetadataProvider;
  v22[10] = v21;
  v22[3] = v16;
  v22[4] = v15;
  v22[20] = v18;
  v22[2] = v19;
  outlined init with take of AceServiceInvokerAsync(v28, (v22 + 5));
  outlined init with take of AceServiceInvokerAsync(v27, (v22 + 15));
  outlined init with take of AceServiceInvokerAsync(v26, (v22 + 21));
  outlined init with copy of DeviceState((v0 + 11), v28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMd, &_s11SiriKitFlow023PromptForDisambiguationC5AsyncCy0a4LinkC6Plugin09ShortcutshF4ItemVSaySo7LNValueCGGMR);
  OUTLINED_FUNCTION_66(v23);
  OUTLINED_FUNCTION_9_21();
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(v24, v25);

  *&v28[0] = PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_11_17(&lazy protocol witness table cache variable for type PromptForDisambiguationFlowAsync<ShortcutsLinkDisambiguationItem, [LNValue]> and conformance PromptForDisambiguationFlowAsync<A, B>);
  Flow.eraseToAnyValueFlow()();

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

__int128 *ShortcutsLinkRCHFlowStrategy.flowFor(action:choiceRequest:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  outlined init with copy of DeviceState(v3 + 40, v15);
  outlined init with copy of DeviceState(v3 + 128, v14);
  outlined init with copy of DeviceState(v3 + 88, v13);
  type metadata accessor for ShortcutsLinkPromptForMultiChoiceFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(a2, v5, v7, v6, v15, v14, v13);
  outlined init with copy of DeviceState(v3 + 88, v15);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMR);
  OUTLINED_FUNCTION_66(v8);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForMultiChoiceFlowStrategy and conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy, type metadata accessor for ShortcutsLinkPromptForMultiChoiceFlowStrategy);

  v9 = v6;
  v10 = a2;

  *&v15[0] = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  OUTLINED_FUNCTION_10_24();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v11, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCySo14LNChoiceOptionCGMR);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v15;
}

__int128 *ShortcutsLinkRCHFlowStrategy.flowFor(action:continueInAppRequest:actionMetadata:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  v6 = *(v3 + 24);
  outlined init with copy of DeviceState(v3 + 40, v12);
  outlined init with copy of DeviceState(v3 + 88, v11);
  type metadata accessor for ShortcutsLinkPromptForContinueInAppFlowStrategy();
  swift_allocObject();
  ShortcutsLinkPromptForContinueInAppFlowStrategy.init(appBundleId:deviceState:outputPublisher:)(v5, v6, v12, v11);
  outlined init with copy of DeviceState(v3 + 88, v12);
  *&v11[0] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMR);
  OUTLINED_FUNCTION_66(v7);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShortcutsLinkPromptForContinueInAppFlowStrategy and conformance ShortcutsLinkPromptForContinueInAppFlowStrategy, type metadata accessor for ShortcutsLinkPromptForContinueInAppFlowStrategy);

  v8 = a2;
  *&v12[0] = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  OUTLINED_FUNCTION_1_36();
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(v9, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCySo22LNContinueInAppRequestCAA06SimpleF16ResponseProviderVGMR);
  Flow.eraseToAnyValueFlow()();
  OUTLINED_FUNCTION_1_18();

  return v12;
}

void ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v56 = *v0;
  type metadata accessor for ResponseMode();
  OUTLINED_FUNCTION_13_1();
  v53 = v11;
  v54 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = [v0[4] systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v17) = Array<A>.isAudioStarting.getter(v18);

  v55 = v17;
  if (v17)
  {
    OUTLINED_FUNCTION_32_11();
    if (!v19)
    {
      OUTLINED_FUNCTION_0();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_24_12(&dword_0, v23, v24, "#ShortcutsLinkRCHFlowStrategy action is audioStarting intent");
      OUTLINED_FUNCTION_15_0();
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_6();
    }

    (*(*static WFDialogState.shared + 264))();
  }

  if ([v9 openAppWhenRun])
  {
    v25 = [v7 output];
    v26 = [v25 showOutputAction];

    if (v26)
    {

      OUTLINED_FUNCTION_32_11();
      if (!v19)
      {
        OUTLINED_FUNCTION_0();
      }

      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v27, static Logger.voiceCommands);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_17_11(v29))
      {
        goto LABEL_29;
      }

      *swift_slowAlloc() = 0;
      v32 = "#ShortcutsLinkRCHFlowStrategy skipping dialog because openAppWhenRun = true";
LABEL_28:
      OUTLINED_FUNCTION_24_12(&dword_0, v30, v31, v32);
      OUTLINED_FUNCTION_15_0();
LABEL_29:

      outlined init with copy of DeviceState((v1 + 16), v58);
      type metadata accessor for EmptyOutputAndCloseFlow();
      swift_allocObject();
      *&v58[0] = EmptyOutputAndCloseFlow.init(shouldClose:aceServiceInvoker:applicationSessionID:)(0, v58, v5, v3);
      lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type EmptyOutputAndCloseFlow and conformance EmptyOutputAndCloseFlow, type metadata accessor for EmptyOutputAndCloseFlow);

      Flow.eraseToAnyFlow()();
      goto LABEL_30;
    }
  }

  v33 = [v7 output];
  v34 = [v33 snippetAction];

  if (!v34 || (v34, type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNActionOutput, LNActionOutput_ptr), (static LNActionOutput.shouldSuppressSnippetIntent()() & 1) != 0))
  {
    if (*(v1 + 80) != 1 || (v35 = [v7 output], v36 = LNActionOutput.hasCustomOutput()(), v35, !v36))
    {
      OUTLINED_FUNCTION_32_11();
      if (!v19)
      {
        OUTLINED_FUNCTION_0();
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v50, static Logger.voiceCommands);
      v28 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();
      if (!OUTLINED_FUNCTION_17_11(v51))
      {
        goto LABEL_29;
      }

      *swift_slowAlloc() = 0;
      v32 = "#ShortcutsLinkRCHFlowStrategy not showing anything for successResult";
      goto LABEL_28;
    }
  }

  OUTLINED_FUNCTION_32_11();
  if (!v19)
  {
    OUTLINED_FUNCTION_0();
  }

  v37 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v37, static Logger.voiceCommands);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_48();
    v41 = swift_slowAlloc();
    *&v58[0] = v41;
    *v40 = 136315138;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentRequest.getter();
    v52 = v7;
    v42 = v5;
    v43 = v3;

    CurrentRequest.responseMode.getter();

    v44 = ResponseMode.description.getter();
    v46 = v45;
    (*(v53 + 8))(v16, v54);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v58);
    v3 = v43;
    v5 = v42;
    v7 = v52;

    *(v40 + 4) = v47;
    _os_log_impl(&dword_0, v38, v39, "#ShortcutsLinkRCHFlowStrategy showing success snippet and dialog: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  outlined init with copy of DeviceState((v1 + 11), v58);
  outlined init with copy of DeviceState((v1 + 16), v57);
  v48 = swift_allocObject();
  *(v48 + 16) = v1;
  *(v48 + 24) = v7;
  *(v48 + 32) = v5;
  *(v48 + 40) = v3;
  *(v48 + 48) = v55 & 1;
  *(v48 + 56) = v56;
  type metadata accessor for ShowOutputAndCloseFlow();
  swift_allocObject();
  *&v58[0] = ShowOutputAndCloseFlow.init(shouldCloseSiri:outputPublisher:aceServiceInvoker:outputGenerator:)(0, v58, v57, &async function pointer to partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:), v48);
  lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type ShowOutputAndCloseFlow and conformance ShowOutputAndCloseFlow, type metadata accessor for ShowOutputAndCloseFlow);

  v49 = v7;
  Flow.eraseToAnyFlow()();
LABEL_30:

  OUTLINED_FUNCTION_20_13();
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  return _swift_task_switch(closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:), 0, 0);
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v11 = *(v10 + 64);
  v12 = v11[2];
  v13 = v11[3];
  v14 = [*(v10 + 72) output];
  *(v10 + 104) = v14;
  v15 = v11[21];
  v16 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v16);
  v17 = ResponseFactory.init()();
  *(v10 + 40) = v16;
  *(v10 + 48) = &protocol witness table for ResponseFactory;
  *(v10 + 16) = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v10 + 112) = v18;
  *v18 = v19;
  v18[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:);
  v20 = *(v10 + 88);
  v21 = *(v10 + 96);
  v22 = *(v10 + 128);
  v23 = *(v10 + 80);
  v24 = *(v10 + 56);

  return static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(v24, v12, v13, v14, v23, v20, v22, (v11 + 5), a9, a10);
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *(v5 + 104);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 120);
  return v2();
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  *(v11 + 88) = a10;
  *(v11 + 96) = v10;
  *(v11 + 72) = a9;
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 248) = v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v16;
  *(v11 + 24) = v17;
  *(v11 + 32) = v18;
  *(v11 + 16) = v19;
  v20 = type metadata accessor for Locale();
  *(v11 + 104) = v20;
  OUTLINED_FUNCTION_5_0(v20);
  *(v11 + 112) = v21;
  v23 = *(v22 + 64);
  *(v11 + 120) = OUTLINED_FUNCTION_28();
  v24 = *(*(type metadata accessor for DialogPhase() - 8) + 64);
  *(v11 + 128) = OUTLINED_FUNCTION_28();
  v25 = type metadata accessor for OutputGenerationManifest();
  *(v11 + 136) = v25;
  OUTLINED_FUNCTION_5_0(v25);
  *(v11 + 144) = v26;
  v28 = *(v27 + 64);
  *(v11 + 152) = OUTLINED_FUNCTION_28();
  v29 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_38_9(v29, v30, v31);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)()
{
  v1 = v0[5];
  v0[20] = [v1 dialog];
  v2 = [v1 viewSnippet];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 viewData];

    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v0[21] = v3;
  v0[22] = v6;
  v7 = v0[19];
  v8 = v0[16];
  v10 = v0[6];
  v9 = v0[7];
  static DialogPhase.summary.getter();
  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);
  v13 = v0[9];

  return LinkActionDialogTemplating.actionPerformedDialog(customPrompt:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 200) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v6 = [*(v0 + 200) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSnippetEnvironment, LNSnippetEnvironment_ptr);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_31_8();
  dispatch thunk of DeviceState.siriLocale.getter();
  v8 = Locale.identifier.getter();
  v10 = v9;
  *(v0 + 208) = v9;
  (*(v3 + 8))(v2, v4);
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);
  v12 = *(v0 + 88);

  return static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(v8, v10, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 216);
  v5 = *(v3 + 208);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 224) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 240);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  outlined consume of Data?(v0[21], v0[22]);

  (*(v4 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();
  v8 = v0[24];

  return v7();
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_8_0();
  *(v11 + 232) = [*(v11 + 40) snippetAction];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v11 + 240) = v12;
  *v12 = v13;
  v12[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:);
  v14 = *(v11 + 200);
  v15 = *(v11 + 168);
  v16 = *(v11 + 176);
  v17 = *(v11 + 152);
  v18 = *(v11 + 80);
  v19 = *(v11 + 64);
  v20 = *(v11 + 248);
  v21 = *(v11 + 16);
  v26 = *(v11 + 224);
  v24 = *(v11 + 24);
  v25 = *(v11 + 32);

  return static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(v21, v19, v20, v18, v14, v17, v15, v16, a9, a10, a11);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 224);
  v14 = *(v12 + 168);
  v15 = *(v12 + 176);
  v16 = *(v12 + 152);
  v17 = *(v12 + 160);
  v18 = *(v12 + 136);
  v19 = *(v12 + 144);
  v21 = *(v12 + 120);
  v20 = *(v12 + 128);

  outlined consume of Data?(v14, v15);
  (*(v19 + 8))(v16, v18);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkRCHFlowStrategy.flowForAppProtectionCheck()()
{
  type metadata accessor for App();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  App.__allocating_init(appIdentifier:)();
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  static AppFlowFactory.makeFixedAppResolutionFlow<A>(app:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(&lazy protocol witness table cache variable for type AnyAppResolutionFlow<INIntent> and conformance AnyAppResolutionFlow<A>, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMd, &_s11SiriKitFlow016AnyAppResolutionC0CySo8INIntentCGMR);
  v3 = Flow.eraseToAnyValueFlow()();

  return v3;
}

uint64_t *ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1)
{
  v3 = v1;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v5, static Logger.voiceCommands);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_26_15();
    v15[0] = v8;
    *v2 = 136315138;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v15);

    *(v2 + 4) = v11;
    _os_log_impl(&dword_0, v6, v7, "Failed to perform action with error: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  outlined init with copy of DeviceState(v3 + 88, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v3;
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  OUTLINED_FUNCTION_66(v13);
  swift_errorRetain();

  v15[0] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  Flow.eraseToAnyFlow()();
  OUTLINED_FUNCTION_1_18();

  return v15;
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  v4 = type metadata accessor for TemplatingResult();
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:), 0, 0);
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)()
{
  OUTLINED_FUNCTION_24_1();
  v51 = v0;
  v1 = *(v0 + 224);
  *(v0 + 264) = _convertErrorToNSError(_:)();
  if (NSError.isPreflightError.getter())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = *(v0 + 224);
    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 224);
      OUTLINED_FUNCTION_48();
      v7 = OUTLINED_FUNCTION_26_15();
      v50 = v7;
      *v2 = 136315138;
      swift_getErrorValue();
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = *(v0 + 192);
      v11 = Error.localizedDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v50);

      *(v2 + 4) = v13;
      OUTLINED_FUNCTION_25_0(&dword_0, v14, v15, "Handling preflight error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v16 = *(v0 + 232);
    static Device.current.getter();
    type metadata accessor for WorkflowSnippetProvider();
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    outlined init with take of AceServiceInvokerAsync((v0 + 112), inited + 16);
    v18 = *(v16 + 16);
    v19 = *(v16 + 24);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 280) = v20;
    *v20 = v21;
    v20[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);
    v22 = *(v0 + 216);

    return WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)();
  }

  else if (NSError.isLinkUserCancelledError.getter())
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = *(v0 + 224);
    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 224);
      OUTLINED_FUNCTION_48();
      v29 = OUTLINED_FUNCTION_26_15();
      v50 = v29;
      *v24 = 136315138;
      swift_getErrorValue();
      v31 = *(v0 + 152);
      v30 = *(v0 + 160);
      v32 = *(v0 + 168);
      v33 = Error.localizedDescription.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v50);

      *(v24 + 4) = v35;
      OUTLINED_FUNCTION_25_0(&dword_0, v36, v37, "Handling user cancelled error: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v38 = async function pointer to static ResponseTemplates.taskAborted()[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 296) = v39;
    *v39 = v40;
    v39[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);
    v41 = *(v0 + 256);

    return static ResponseTemplates.taskAborted()(v41);
  }

  else
  {
    v42 = *(**(v0 + 232) + 224);
    v49 = (v42 + *v42);
    v43 = v42[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 312) = v44;
    *v44 = v45;
    v44[1] = closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:);
    v46 = *(v0 + 224);
    v47 = *(v0 + 232);
    v48 = *(v0 + 216);

    return v49(v48, v46);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 288) = v0;

  if (!v0)
  {
    v9 = *(v3 + 272);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v9 + 16));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 256);

  OUTLINED_FUNCTION_6_7();

  return v2();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 272);

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 304);
  v2 = *(v0 + 256);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();

  v1 = *(v0 + 320);
  v2 = *(v0 + 256);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 256);
  v14 = *(v12 + 264);
  v15 = *(v12 + 240);
  v16 = *(v12 + 248);
  v17 = *(v12 + 232);
  v18 = *(v12 + 216);
  v19 = v17[9];
  __swift_project_boxed_opaque_existential_1(v17 + 5, v17[8]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v20 = type metadata accessor for AceOutput();
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0;
  *(v12 + 72) = 0u;
  v18[3] = v20;
  v18[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v18);
  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();

  outlined destroy of String?(v12 + 72, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  (*(v16 + 8))(v13, v15);
  v21 = *(v12 + 256);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for DialogPhase();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[19] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0[14] + 168);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:);
  v3 = v0[13];

  return LinkActionDialogTemplating.makeFailureHandlingIntentDialog(error:)();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  *v4 = *v1;
  v3[23] = v7;

  if (v0)
  {
    v8 = v3[21];
    v11 = v3 + 17;
    v9 = v3[17];
    v10 = v11[1];

    OUTLINED_FUNCTION_6_0();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[26];
  v3 = v1[25];
  v4 = v1[24];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v23 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  outlined init with copy of DeviceState(v1, (v0 + 2));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  if (v5)
  {
    v21 = v0[21];
    v10 = OUTLINED_FUNCTION_48();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    outlined init with copy of DeviceState((v0 + 2), (v0 + 7));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v3, v4, "#ShortcutsLinkRCHFlowStrategy flowFor:error; output: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

    (*(v8 + 8))(v21, v9);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[21];
  v17 = v0[17];
  v18 = v0[18];

  OUTLINED_FUNCTION_6_7();

  return v19();
}

uint64_t ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[23];
  v14 = v12[21];
  v16 = v12[17];
  v15 = v12[18];
  v17 = v12[15];
  v18 = v12[16];
  static DialogPhase.error.getter();
  v19 = [v13 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v18 + 16))(v16, v15, v17);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v18 + 8))(v15, v17);
  v20 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v20);
  v12[24] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v21 = swift_allocObject();
  v12[25] = v21;
  *(v21 + 16) = xmmword_216010;
  *(v21 + 32) = v13;
  v22 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v37 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v23 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v12[26] = v24;
  *v24 = v25;
  v24[1] = ShortcutsLinkRCHFlowStrategy.makeOutputForFailureHandlingIntentDialog(error:);
  v26 = v12[21];
  v27 = v12[12];
  OUTLINED_FUNCTION_27_0();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 288) = a10;
  *(v11 + 296) = a11;
  *(v11 + 272) = a9;
  *(v11 + 256) = a7;
  *(v11 + 264) = a8;
  *(v11 + 240) = a5;
  *(v11 + 248) = a6;
  *(v11 + 224) = a2;
  *(v11 + 232) = a4;
  *(v11 + 336) = a3;
  *(v11 + 216) = a1;
  v12 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_38_9(v12, v13, v14);
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v13 = v12[28];
  (*(*static WFDialogState.shared + 224))(*(v12 + 336));
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v15 = v12[29];
    v16 = v12[30];
    v17 = v15[3];
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    v12[40] = v19;
    *(v19 + 16) = xmmword_216010;
    *(v19 + 32) = v16;
    v20 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v21 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[41] = v25;
    *v25 = v26;
    v25[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:);
    v27 = v12[31];
    v28 = v12[27];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v28, v19, v27, v17, v18, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    v55 = *(v12 + 18);
    v30 = v12[34];
    v29 = v12[35];
    v31 = v12[32];
    v54 = v12[33];
    v33 = v12[29];
    v32 = v12[30];
    v34 = v12[28];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v35 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v34, 2);
    v37 = v36;

    v38 = DialogExecutionResult.firstDialogFullPrint()();
    v12[2] = v30;
    v12[3] = v29;
    v12[4] = v35;
    v12[5] = v37;
    *(v12 + 3) = v38;
    *&v39 = v31;
    *(&v39 + 1) = v54;
    *(v12 + 4) = v39;
    *(v12 + 5) = v55;
    v40 = v33[3];
    v56 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v40);
    v12[25] = type metadata accessor for WorkflowDataModels(0);
    v12[26] = lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 22);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v42 = swift_allocObject();
    v12[38] = v42;
    *(v42 + 16) = xmmword_216010;
    *(v42 + 32) = v32;
    outlined copy of Data?(v31, v54);
    v43 = *(&v55 + 1);
    v44 = v55;
    outlined init with copy of WorkflowDataModels.LinkActionModel((v12 + 2), (v12 + 12));
    v45 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v46 = v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[39] = v49;
    *v49 = v50;
    v49[1] = static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:);
    v51 = v12[31];
    v52 = v12[27];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v52, v12 + 22, v42, v51, v40, v56, v47, v48, a9, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(deviceState:isAudioStartAction:responseFactory:dialogResult:manifest:viewData:appBundleId:snippetAction:environment:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *(v4 + 304);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 176));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.LinkActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 328);
  v3 = *(v1 + 320);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t ShortcutsLinkRCHFlowStrategy.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  v2 = *(v0 + 168);

  return v0;
}

uint64_t ShortcutsLinkRCHFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a6;
  v38 = a7;
  v34 = a9;
  v35 = a8;
  v36 = a13;
  v18 = type metadata accessor for CATOption();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v42[3] = a12;
  v42[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a10, a12);
  *(a11 + 16) = a1;
  *(a11 + 24) = a2;
  *(a11 + 32) = a3;
  outlined init with copy of DeviceState(a5, a11 + 40);
  *(a11 + 80) = a4;
  outlined init with copy of DeviceState(v35, a11 + 88);
  outlined init with copy of DeviceState(v34, a11 + 128);
  outlined init with copy of DeviceState(a5, v41);
  outlined init with copy of DeviceState(v42, v39);
  type metadata accessor for RunVoiceCommandCATs();
  v21 = a3;
  static CATOption.defaultMode.getter();
  v22 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v23 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  type metadata accessor for LinkActionDialogTemplating();
  v24 = swift_allocObject();
  v25 = v40;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v41, v37, v38, v22, v23, v29, v24, a12, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  *(a11 + 168) = v31;
  return a11;
}

void *specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(int a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v9 = &off_2B4000;
  v10 = [a3 valueType];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v73 = v10;
    if (a4)
    {
      v12 = specialized Array.count.getter(a4);
      if (v12)
      {
        v13 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        if (v13 < 0)
        {
          __break(1u);
          swift_once();
          v31 = type metadata accessor for Logger();
          __swift_project_value_buffer(v31, static Logger.voiceCommands);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_0, v32, v33, "Could not create [ShortcutsLinkDisambiguationItem] for LNNeedsValueRequest", v34, 2u);
          }
        }

        else
        {
          v14 = 0;
          do
          {
            if ((a4 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(a4 + 8 * v14 + 32);
            }

            v16 = v15;
            LNValue.toDisambiguationItem(locale:)(a5, a6, &v76);

            v17 = _swiftEmptyArrayStorage[2];
            if (v17 >= _swiftEmptyArrayStorage[3] >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            ++v14;
            _swiftEmptyArrayStorage[2] = v17 + 1;
            v18 = &_swiftEmptyArrayStorage[7 * v17];
            v19 = v76;
            v20 = v77;
            v21 = v78;
            v18[10] = v79;
            *(v18 + 3) = v20;
            *(v18 + 4) = v21;
            *(v18 + 2) = v19;
          }

          while (v13 != v14);
          v29 = v73;
LABEL_17:
        }
      }

      else
      {
      }
    }

    else
    {
      v30 = v11;
      v8 = LinkMetadataProvider.enums(forBundleIdentifier:)();
      v36 = 0;
      v72 = specialized Array.count.getter(v8);
      while (v72 != v36)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_53;
          }

          v37 = *(v8 + 8 * v36 + 32);
        }

        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v74 = v37;
        v38 = [v37 identifier];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v40;

        v41 = [v30 enumerationIdentifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v39 == v42 && v9 == v44)
        {

LABEL_40:

          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNLinkEnumerationValueType, LNLinkEnumerationValueType_ptr);
          v57 = [v30 enumerationIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v58;

          v59 = LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)();
          v60 = [v74 cases];
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnumCaseMetadata, LNEnumCaseMetadata_ptr);
          v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v62 = specialized Array.count.getter(v61);
          if (!v62)
          {

            return _swiftEmptyArrayStorage;
          }

          v63 = v62;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          if ((v63 & 0x8000000000000000) == 0)
          {
            v64 = 0;
            do
            {
              if ((v61 & 0xC000000000000001) != 0)
              {
                v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v65 = *(v61 + 8 * v64 + 32);
              }

              v66 = v65;
              LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)(v59, a5, a6, &v76);

              v67 = _swiftEmptyArrayStorage[2];
              if (v67 >= _swiftEmptyArrayStorage[3] >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              ++v64;
              _swiftEmptyArrayStorage[2] = v67 + 1;
              v68 = &_swiftEmptyArrayStorage[7 * v67];
              v69 = v76;
              v70 = v77;
              v71 = v78;
              v68[10] = v79;
              *(v68 + 3) = v70;
              *(v68 + 4) = v71;
              *(v68 + 2) = v69;
            }

            while (v63 != v64);

            v29 = v74;
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_57;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_40;
        }

        ++v36;
      }

      if (one-time initialization token for voiceCommands == -1)
      {
        goto LABEL_37;
      }

LABEL_57:
      swift_once();
LABEL_37:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.voiceCommands);
      v24 = v10;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v76.n128_u64[0] = v51;
        *v50 = 136315138;
        v52 = [v30 enumerationIdentifier];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v76);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_0, v48, v49, "Could not find LNEnumMetadata for identifier: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);

        goto LABEL_16;
      }
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_54:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.voiceCommands);
    v23 = v8;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = [v23 v9[325]];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_0, v24, v25, "Can only create disambiguations for LNLinkEnumerationValueType, not %@", v26, 0xCu);
      outlined destroy of String?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

LABEL_16:
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_FA8B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_33_6(v8);

  return closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(action:successResult:startedSessionId:)(v10, v11, v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in static ShortcutsLinkRCHFlowStrategy.makeCustomOutput(appBundleId:successOutput:startedSessionId:isAudioStartAction:deviceState:linkActionDialogTemplate:responseFactory:serviceInvoker:)();
}

uint64_t sub_FA9C8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_33_6(v4);

  return closure #1 in ShortcutsLinkRCHFlowStrategy.flowFor(error:)(v6, v7, v2);
}

uint64_t lazy protocol witness table accessor for type ShortcutsLinkPromptForValueFlowStrategy and conformance ShortcutsLinkPromptForValueFlowStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_17(unint64_t *a1)
{

  return lazy protocol witness table accessor for type ReactiveFlow<SendMailPlan> and conformance ReactiveFlow<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized ShortcutsLinkRCHFlowStrategy.init(appBundleId:actionMetadata:showWhenRun:deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:outputPublisher:aceServiceInvoker:linkActionPatterns:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}

uint64_t OUTLINED_FUNCTION_26_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

void static CustomUnderstandingSystemDialogActsFactory.systemPromptedForSlotValue(intentType:bundleId:resolvedParameters:unresolvedParameter:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  v50 = OUTLINED_FUNCTION_10_25(v10, v47);
  v11 = OUTLINED_FUNCTION_7_1(v50);
  v49 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v48 = v16 - v15;
  *&v52[0] = 95;
  *(&v52[0] + 1) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_37();
  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v55 = v5;
  v56 = v3;
  *&v53 = 46;
  *(&v53 + 1) = 0xE100000000000000;
  v18 = StringProtocol.components<A>(separatedBy:)();
  specialized BidirectionalCollection.last.getter(v18);
  v20 = v19;

  if (!v20)
  {
  }

  v21 = type metadata accessor for UsoOpenTaskBuilder();
  OUTLINED_FUNCTION_66(v21);
  v22 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
  v23 = v22;
  if (v1)
  {
    v51 = v22;
    v24 = *(v1 + 64);
    v25 = *(v1 + 32);
    OUTLINED_FUNCTION_5_18();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;

    v31 = 0;
    if (!v28)
    {
      goto LABEL_6;
    }

    do
    {
      v32 = v31;
LABEL_10:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v32 << 6);
      v35 = (*(v1 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      outlined init with copy of Any(*(v1 + 56) + 32 * v34, v52);
      *&v53 = v36;
      *(&v53 + 1) = v37;
      outlined init with take of Any(v52, v54);

LABEL_11:
      OUTLINED_FUNCTION_12_19();
      if (!v17)
      {

        v23 = v51;
        goto LABEL_18;
      }

      outlined init with take of Any(v57, &v53);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v38 = OUTLINED_FUNCTION_64();
        v39 = OUTLINED_FUNCTION_14_17(v38, xmmword_216010);
        OUTLINED_FUNCTION_66(v39);
        v38[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
        dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();
      }
    }

    while (v28);
LABEL_6:
    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v32 >= v30)
      {
        v28 = 0;
        memset(v54, 0, sizeof(v54));
        v53 = 0u;
        goto LABEL_11;
      }

      v28 = *(v1 + 64 + 8 * v32);
      ++v31;
      if (v28)
      {
        v31 = v32;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v40 = OUTLINED_FUNCTION_64();
    v41 = OUTLINED_FUNCTION_14_17(v40, xmmword_216010);
    OUTLINED_FUNCTION_66(v41);
    v40[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
    dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

    v42 = OUTLINED_FUNCTION_64();
    *(v42 + 16) = xmmword_216010;
    *(v42 + 32) = v23;

    static UsoGraphBuilder.buildGraph(taskBuilders:)();

    OUTLINED_FUNCTION_11_18();
    if (v40)
    {

      OUTLINED_FUNCTION_13_17();
      outlined destroy of String?(v42, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
    }

    else
    {
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v50);
      (*(v49 + 32))(v48, v42, v50);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
      OUTLINED_FUNCTION_20_14();
      v46 = static USOSerializedGraph.fromProto(protoGraph:)();
      [objc_allocWithZone(SIRINLUSystemPrompted) initWithReference:v46];
      OUTLINED_FUNCTION_31_8();

      (*(v49 + 8))(v48, v50);
    }

    OUTLINED_FUNCTION_42();
  }
}

void static CustomUnderstandingSystemDialogActsFactory.systemOfferedForIntentConfirmation(intent:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v7);
  v9 = &v122 - v8;
  v125 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  v10 = OUTLINED_FUNCTION_7_1(v125);
  v124 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v123 = v15 - v14;
  v16 = Dictionary.init(dictionaryLiteral:)();
  v17 = outlined bridged method (pb) of @objc INIntent.parametersByName.getter(v3);
  v130 = v9;
  if (v17)
  {
    v18 = v17;
    v122 = v3;
    v19 = 0;
    v21 = v17 + 64;
    v20 = *(v17 + 64);
    v22 = *(v17 + 32);
    OUTLINED_FUNCTION_5_18();
    v25 = v24 & v23;
    v1 = (v26 + 63) >> 6;
    *&v27 = 136315138;
    v126 = v27;
    v131 = v28;
    v132.n128_u64[0] = v21;
    v127 = v1;
    if ((v24 & v23) == 0)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v29 = v19;
LABEL_8:
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v31 = v30 | (v29 << 6);
      v32 = (*(v18 + 48) + 16 * v31);
      v34 = *v32;
      v33 = v32[1];
      outlined init with copy of Any(*(v18 + 56) + 32 * v31, v140);
      *&v141 = v34;
      *(&v141 + 1) = v33;
      outlined init with take of Any(v140, v142);

LABEL_9:
      OUTLINED_FUNCTION_12_19();
      if (!v0)
      {
        v133 = v16;

        v9 = v130;
        v3 = v122;
        goto LABEL_49;
      }

      v133 = v143;
      outlined init with take of Any(v145, &v141);
      outlined init with copy of Any(&v141, v140);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
      if (swift_dynamicCast())
      {
        v35 = v139;
        OUTLINED_FUNCTION_2_32();
        v36 = String._bridgeToObjectiveC()();
        v37 = [v35 valueForKey:v36];

        if (v37)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v137 = 0u;
          v136 = 0u;
        }

        v138[1] = v137;
        v138[0] = v136;
        if (*(&v137 + 1))
        {
          if (swift_dynamicCast())
          {
            v129 = v35;
            v128 = v134;
            v62 = v135;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v138[0] = v16;
            v64 = OUTLINED_FUNCTION_4_34();
            v66 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
            OUTLINED_FUNCTION_22_12(v66, v67);
            if (v45)
            {
              goto LABEL_63;
            }

            v69 = v68;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
            {
              v70 = OUTLINED_FUNCTION_4_34();
              specialized __RawDictionaryStorage.find<A>(_:)(v70, v71);
              v18 = v131;
              if ((v69 & 1) != (v72 & 1))
              {
                goto LABEL_66;
              }
            }

            else
            {
              v18 = v131;
            }

            v75 = v128;
            if (v69)
            {

              OUTLINED_FUNCTION_19_13();
              v77 = v76[1];
              *v76 = v75;
              v76[1] = v62;

              __swift_destroy_boxed_opaque_existential_1Tm(&v141);
            }

            else
            {
              OUTLINED_FUNCTION_3_26();
              *v78 = v75;
              v78[1] = v62;

              __swift_destroy_boxed_opaque_existential_1Tm(&v141);
              v79 = *(v16 + 16);
              v45 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (v45)
              {
                goto LABEL_65;
              }

              *(v16 + 16) = v80;
            }

            v21 = v132.n128_u64[0];
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(&v141);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v141);

          outlined destroy of String?(v138, &_sypSgMd, &_sypSgMR);
        }

        goto LABEL_45;
      }

      outlined init with copy of Any(&v141, v138);
      if (!swift_dynamicCast())
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0_1();
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static Logger.voiceCommands);

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v138[0] = v57;
          *v56 = v126;
          v58 = OUTLINED_FUNCTION_4_34();
          v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v60);

          *(v56 + 4) = v61;
          v18 = v131;
          _os_log_impl(&dword_0, v54, v55, "Tried to unwrap parameter as String when generating SystemDialogAct for: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          v21 = v132.n128_u64[0];
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v141);
        goto LABEL_45;
      }

      v38 = v136;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v138[0] = v16;
      v40 = OUTLINED_FUNCTION_4_34();
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v41);
      OUTLINED_FUNCTION_22_12(v42, v43);
      if (v45)
      {
        goto LABEL_62;
      }

      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v16))
      {
        v47 = OUTLINED_FUNCTION_4_34();
        specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
        v21 = v132.n128_u64[0];
        if ((v46 & 1) != (v49 & 1))
        {
          goto LABEL_66;
        }

        if ((v46 & 1) == 0)
        {
LABEL_18:
          OUTLINED_FUNCTION_3_26();
          *v50 = v38;
          __swift_destroy_boxed_opaque_existential_1Tm(&v141);
          v51 = *(v16 + 16);
          v45 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v45)
          {
            goto LABEL_64;
          }

          *(v16 + 16) = v52;
          goto LABEL_38;
        }
      }

      else
      {
        v21 = v132.n128_u64[0];
        if ((v46 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_19_13();
      v74 = *(v73 + 8);
      *v73 = v38;

      __swift_destroy_boxed_opaque_existential_1Tm(&v141);
LABEL_38:
      v18 = v131;
      v1 = v127;
LABEL_45:
      __swift_destroy_boxed_opaque_existential_1Tm(v140);
      if (!v25)
      {
LABEL_4:
        while (1)
        {
          v29 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v29 >= v1)
          {
            v25 = 0;
            memset(v142, 0, sizeof(v142));
            v141 = 0u;
            goto LABEL_9;
          }

          v25 = *(v21 + 8 * v29);
          ++v19;
          if (v25)
          {
            v19 = v29;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_61;
      }
    }
  }

  v133 = v16;
LABEL_49:
  v81 = [v3 typeName];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v143 = INIntent.bundleId.getter();
  v144 = v85;
  *&v141 = 46;
  *(&v141 + 1) = 0xE100000000000000;
  *&v140[0] = 95;
  *(&v140[0] + 1) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_15_19();
  v123 = v1;
  v122 = &type metadata for String;
  OUTLINED_FUNCTION_1_37();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v143 = v82;
  v144 = v84;
  *&v141 = 46;
  *(&v141 + 1) = 0xE100000000000000;
  v86 = StringProtocol.components<A>(separatedBy:)();
  specialized BidirectionalCollection.last.getter(v86);
  v88 = v87;

  if (v88)
  {
  }

  v89 = v133;
  v90 = type metadata accessor for UsoOpenTaskBuilder();
  OUTLINED_FUNCTION_66(v90);
  OUTLINED_FUNCTION_20_14();
  v91 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
  v92 = 0;
  v94 = *(v89 + 64);
  v93 = v89 + 64;
  v95 = *(v93 - 32);
  OUTLINED_FUNCTION_5_18();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;
  v132 = xmmword_216010;
  v131 = v101;
  if ((v97 & v96) != 0)
  {
    do
    {
      v102 = v92;
LABEL_57:
      v103 = __clz(__rbit64(v98));
      v98 &= v98 - 1;
      v104 = (v102 << 10) | (16 * v103);
      v105 = (*(v133 + 48) + v104);
      v106 = *v105;
      v107 = v105[1];
      v108 = (*(v133 + 56) + v104);
      v109 = *v108;
      v110 = v108[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v111 = OUTLINED_FUNCTION_64();
      v112 = OUTLINED_FUNCTION_14_17(v111, v132);
      OUTLINED_FUNCTION_66(v112);

      v111[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
      v91 = v131;
      dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

      v9 = v130;
    }

    while (v98);
  }

  while (1)
  {
    v102 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v102 >= v100)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v113 = OUTLINED_FUNCTION_64();
      v113[1] = v132;
      v113[2].n128_u64[0] = v91;

      static UsoGraphBuilder.buildGraph(taskBuilders:)();

      Graph.protobufGraphSiriNl(vocabManager:)();
      OUTLINED_FUNCTION_49_3();
      v114 = v125;
      __swift_storeEnumTagSinglePayload(v115, v116, v117, v125);
      v118 = v124;
      v119 = v123;
      (*(v124 + 32))(v123, v9, v114);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
      OUTLINED_FUNCTION_31_8();
      v120 = static USOSerializedGraph.fromProto(protoGraph:)();
      v121 = [objc_allocWithZone(SIRINLUUserWantedToProceed) initWithReference:v120];
      [objc_allocWithZone(SIRINLUSystemOffered) initWithOfferedAct:v121];

      (*(v118 + 8))(v119, v114);
      OUTLINED_FUNCTION_42();
      return;
    }

    v98 = *(v93 + 8 * v102);
    ++v92;
    if (v98)
    {
      v92 = v102;
      goto LABEL_57;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void static CustomUnderstandingSystemDialogActsFactory.systemOfferedForParameterConfirmation(intent:parameter:resolutionResult:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v11);
  v48 = OUTLINED_FUNCTION_10_25(v12, v45);
  v13 = OUTLINED_FUNCTION_7_1(v48);
  v46 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  v19 = [v1 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v55, &v53);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_32();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v52 valueForKey:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
    }

    else
    {

      v49 = 0u;
      v50 = 0u;
    }

    v51[0] = v49;
    v51[1] = v50;
    if (*(&v50 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      outlined destroy of String?(v51, &_sypSgMd, &_sypSgMR);
    }
  }

  else if (swift_dynamicCast())
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    outlined init with copy of Any(v55, v51);
    if (!swift_dynamicCast())
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0_1();
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.voiceCommands);
      OUTLINED_FUNCTION_20_14();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v51[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v3, v51);
        _os_log_impl(&dword_0, v23, v24, "Tried to unwrap parameter as String when generating confirmation SystemDialogAct for: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  v27 = [v7 typeName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v53 = INIntent.bundleId.getter();
  v54 = v31;
  *&v51[0] = 46;
  *(&v51[0] + 1) = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_15_19();
  v47 = v5;
  OUTLINED_FUNCTION_1_37();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v53 = v28;
  v54 = v30;
  *&v51[0] = 46;
  *(&v51[0] + 1) = 0xE100000000000000;
  v32 = StringProtocol.components<A>(separatedBy:)();
  specialized BidirectionalCollection.last.getter(v32);
  v34 = v33;

  if (v34)
  {
  }

  v35 = type metadata accessor for UsoOpenTaskBuilder();
  OUTLINED_FUNCTION_66(v35);
  OUTLINED_FUNCTION_31_8();
  v36 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v37 = OUTLINED_FUNCTION_64();
  v38 = OUTLINED_FUNCTION_14_17(v37, xmmword_216010);
  OUTLINED_FUNCTION_66(v38);
  v37[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
  dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

  v39 = OUTLINED_FUNCTION_64();
  *(v39 + 16) = xmmword_216010;
  *(v39 + 32) = v36;

  static UsoGraphBuilder.buildGraph(taskBuilders:)();

  OUTLINED_FUNCTION_11_18();
  if (v37)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    OUTLINED_FUNCTION_13_17();
    outlined destroy of String?(v39, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_49_3();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v48);
    (*(v47 + 32))(&type metadata for String, v39, v48);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
    v43 = static USOSerializedGraph.fromProto(protoGraph:)();
    v44 = [objc_allocWithZone(SIRINLUUserWantedToProceed) initWithReference:v43];
    [objc_allocWithZone(SIRINLUSystemOffered) initWithOfferedAct:v44];
    OUTLINED_FUNCTION_31_8();

    (*(v47 + 8))(&type metadata for String, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  OUTLINED_FUNCTION_42();
}

void static CustomUnderstandingSystemDialogActsFactory.systemGaveOptionsForDisambiguation(intent:parameter:options:)()
{
  OUTLINED_FUNCTION_40_0();
  v58.n128_u64[0] = v0;
  v52 = v1;
  v53 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMd, &_s12SiriOntology0A26_Nl_Core_Protocol_UsoGraphVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v8);
  v54 = v47 - v9;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
  v11 = OUTLINED_FUNCTION_7_1(v10);
  v57 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = [v4 typeName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v63 = INIntent.bundleId.getter();
  v64 = v22;
  v61 = 46;
  v62 = 0xE100000000000000;
  v59 = 95;
  v60 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_1_37();
  v51 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v55 = v23;

  v63 = v19;
  v64 = v21;
  v61 = 46;
  v62 = 0xE100000000000000;
  v24 = StringProtocol.components<A>(separatedBy:)();
  v25 = specialized BidirectionalCollection.last.getter(v24);
  v27 = v26;

  if (v27)
  {

    v19 = v25;
    v21 = v27;
  }

  v28 = _swiftEmptyArrayStorage;
  v63 = _swiftEmptyArrayStorage;
  v29 = *(v58.n128_u64[0] + 16);
  v49 = (v57 + 32);
  v48 = (v57 + 8);
  v30 = (v58.n128_u64[0] + 40);
  v58 = xmmword_216010;
  v50 = v21;
  if (v29)
  {
    do
    {
      v47[1] = v28;
      v56 = v30;
      v57 = v29;
      v31 = v17;
      v32 = v10;
      v34 = *(v30 - 1);
      v33 = *v30;
      v35 = type metadata accessor for UsoOpenTaskBuilder();
      OUTLINED_FUNCTION_66(v35);

      v36 = v19;
      v37 = UsoOpenTaskBuilder.init(baseEntityString:verbString:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v38 = OUTLINED_FUNCTION_64();
      v39 = OUTLINED_FUNCTION_14_17(v38, v58);
      OUTLINED_FUNCTION_66(v39);
      OUTLINED_FUNCTION_20_14();
      v38[2].n128_u64[0] = UsoPrimitiveStringBuilder.init(value:)();
      dispatch thunk of UsoOpenTaskBuilder.setArgumentBuilders(argumentName:builders:)();

      v40 = OUTLINED_FUNCTION_64();
      v40[1] = v58;
      v40[2].n128_u64[0] = v37;

      static UsoGraphBuilder.buildGraph(taskBuilders:)();

      v41 = v54;
      Graph.protobufGraphSiriNl(vocabManager:)();
      OUTLINED_FUNCTION_49_3();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v10);
      (*v49)(v31, v41, v10);
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for USOSerializedGraph, USOSerializedGraph_ptr);
      v45 = static USOSerializedGraph.fromProto(protoGraph:)();
      v46 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask:v45];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v48)(v31, v32);
      v28 = v63;
      v30 = v56 + 2;
      v29 = v57 - 1;
      v10 = v32;
      v17 = v31;
      v19 = v36;
    }

    while (v57 != 1);
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SIRINLUSystemGaveOptions, SIRINLUSystemGaveOptions_ptr);
  SIRINLUSystemGaveOptions.__allocating_init(choices:)();
  OUTLINED_FUNCTION_42();
}

id SIRINLUSystemGaveOptions.__allocating_init(choices:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithChoices:isa];

  return v2;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

void OUTLINED_FUNCTION_3_26()
{
  v3 = *(v2 - 272);
  *(v3 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v4 = (*(v3 + 48) + 16 * v0);
  *v4 = *(v2 - 328);
  v4[1] = v1;
  v5 = *(v3 + 56) + 16 * v0;
}

uint64_t OUTLINED_FUNCTION_10_25@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 272) = &a2 - a1;

  return type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph();
}

uint64_t OUTLINED_FUNCTION_11_18()
{
  v2 = *(v0 - 272);

  return Graph.protobufGraphSiriNl(vocabManager:)();
}

__n128 OUTLINED_FUNCTION_12_19()
{
  v1 = *(v0 - 176);
  *(v0 - 144) = *(v0 - 192);
  *(v0 - 128) = v1;
  result = *(v0 - 160);
  *(v0 - 112) = result;
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17()
{
  v3 = *(v1 - 264);

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_14_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for UsoPrimitiveStringBuilder();
}

uint64_t ListShortcutsCATs.launchApp(device:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(ListShortcutsCATs.launchApp(device:), 0, 0);
}

uint64_t ListShortcutsCATs.launchApp(device:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_216850;
  *(v2 + 32) = 0x656369766564;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = ListShortcutsCATs.launchApp(device:);
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD000000000000017, 0x800000000022DE30, v2);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(InstallShortcutCATs.errorInstallShortcut(device:), 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t ListShortcutsCATs.viewShortcutsInApp()(uint64_t a1)
{
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v6 = &async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = ListShortcutsCATs.viewShortcutsInApp();

  return (v6)(a1, 0xD000000000000020, 0x800000000022DE50, _swiftEmptyArrayStorage);
}

uint64_t ListShortcutsCATs.viewShortcutsInApp()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ListShortcutsCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return ListShortcutsCATs.init(templateDir:options:globals:)(a1, a2);
}

uint64_t ListShortcutsCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t type metadata accessor for ListShortcutsCATs()
{
  result = type metadata singleton initialization cache for ListShortcutsCATs;
  if (!type metadata singleton initialization cache for ListShortcutsCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ExactMatcher.match(term:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = *v3;
  v97 = 0;
  v109 = type metadata accessor for CharacterSet();
  v5 = *(v109 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v109);
  v107 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v100[10];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v95 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v96 = &v91 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v91 - v17;
  v92 = v19;
  __chkstk_darwin(v16);
  v21 = &v91 - v20;
  v104._countAndFlagsBits = String.sanitized.getter();
  v23 = v22;
  OUTLINED_FUNCTION_2_33();
  v24 = Array.startIndex.getter();
  *&v122 = v24;
  v103 = v10 + 16;
  v106 = v10 + 32;
  v108 = v5 + 8;
  v105 = v10;
  v102 = v10 + 8;
  v101 = a3;
  v104._object = v23;
  for (i = v21; ; v21 = i)
  {
    OUTLINED_FUNCTION_2_33();
    if (v24 == Array.endIndex.getter())
    {
      OUTLINED_FUNCTION_2_33();
      v49 = Array.startIndex.getter();
      v112 = v49;
      OUTLINED_FUNCTION_2_33();
      v50 = Array.endIndex.getter();
      v51 = v97;
      v52 = v95;
      if (v49 == v50)
      {
LABEL_19:

        return 0;
      }

      v100 = v100[11];
      i = v100[1];
      v99 = (v100 + 1);
      v57 = &_sSaySSGMd;
      v58 = &_sSaySSGMR;
      v94 = v9;
      while (1)
      {
        OUTLINED_FUNCTION_2_33();
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          OUTLINED_FUNCTION_1_38();
          v63 = v96;
          (*(v62 + 16))(v96, v60 + v61 * v49, v9);
        }

        else
        {
          OUTLINED_FUNCTION_5_19();
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v92 != 8)
          {
            goto LABEL_41;
          }

          v110._countAndFlagsBits = result;
          OUTLINED_FUNCTION_3_27(&v124);
          v63 = v96;
          v88(v96, &v110, v9);
          swift_unknownObjectRelease();
        }

        OUTLINED_FUNCTION_5_19();
        Array.formIndex(after:)(v64);
        OUTLINED_FUNCTION_4_35();
        v93 = *v65;
        (v93)(v52, v63, v9);
        (i)(v117, v9, v100);
        v66 = v52;
        v67 = v119;
        v123 = v119;
        v122 = v117[0];

        outlined destroy of String(&v122);
        v121 = v117[1];
        outlined destroy of String?(&v121, &_sSSSgMd, &_sSSSgMR);
        v120 = v118;
        outlined destroy of String?(&v120, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
        outlined destroy of String?(&v123, v57, v58);
        v68 = v58;
        v69 = v57;
        v70 = *(v67 + 16);
        if (v70)
        {
          v97 = v51;
          v111 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v111;
          v72 = (v67 + 40);
          do
          {
            v73 = *(v72 - 1);
            v74 = *v72;
            v110 = String.lowercased()();

            v75 = v107;
            static CharacterSet.punctuationCharacters.getter();
            lazy protocol witness table accessor for type String and conformance String();
            v76 = StringProtocol.components(separatedBy:)();
            OUTLINED_FUNCTION_3_27(&v127);
            v77(v75, v109);

            v110._countAndFlagsBits = v76;
            __swift_instantiateConcreteTypeFromMangledNameV2(v69, v68);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v78 = BidirectionalCollection<>.joined(separator:)();
            v80 = v79;

            v111 = v71;
            v81 = v71[2];
            if (v81 >= v71[3] >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v71 = v111;
            }

            v71[2] = v81 + 1;
            v82 = &v71[2 * v81];
            v82[4] = v78;
            v82[5] = v80;
            v72 += 2;
            --v70;
          }

          while (v70);
          v57 = v69;
          v83 = v69;
          v58 = v68;
          v84 = outlined destroy of String?(&v123, v83, v68);
          v51 = v97;
          v52 = v95;
        }

        else
        {
          v84 = outlined destroy of String?(&v123, v69, v68);
          v71 = _swiftEmptyArrayStorage;
          v57 = v69;
          v58 = v68;
          v52 = v66;
        }

        v110 = v104;
        __chkstk_darwin(v84);
        *(&v91 - 2) = &v110;
        v85 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v91 - 4), v71);

        if (v85)
        {
          break;
        }

        OUTLINED_FUNCTION_3_27(&v123);
        v9 = v94;
        v86(v52, v94);
        OUTLINED_FUNCTION_2_33();
        v87 = Array.endIndex.getter();
        v49 = v112;
        if (v112 == v87)
        {
          goto LABEL_19;
        }
      }

      v89 = getContiguousArrayStorageType<A>(for:)(v94, v94);
      OUTLINED_FUNCTION_0_25(v89);
      v90 = static Array._adoptStorage(_:count:)();
      OUTLINED_FUNCTION_4_35();
      v93();
      type metadata accessor for Array();
      v56._rawValue = v90;
      return CustomIntentDisambiguationItemContainer.init(items:)(v56).items._rawValue;
    }

    OUTLINED_FUNCTION_2_33();
    v25 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!v25)
    {
      break;
    }

    OUTLINED_FUNCTION_1_38();
    (*(v28 + 16))(v21, v26 + v27 * v24, v9);
LABEL_5:
    OUTLINED_FUNCTION_5_19();
    Array.formIndex(after:)(v29);
    OUTLINED_FUNCTION_4_35();
    v99 = *v30;
    (v99)(v18, v21, v9);
    v31 = v100[11];
    (*(v31 + 8))(&v113, v9, v31);
    v126 = v114;
    outlined destroy of String?(&v126, &_sSSSgMd, &_sSSSgMR);
    v125 = v115;
    outlined destroy of String?(&v125, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
    v124 = v116;
    outlined destroy of String?(&v124, &_sSaySSGMd, &_sSaySSGMR);
    v32 = String.lowercased()();

    v117[0] = v32;
    v33 = v107;
    static CharacterSet.punctuationCharacters.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v34 = StringProtocol.components(separatedBy:)();
    OUTLINED_FUNCTION_3_27(&v127);
    v35(v33, v109);

    *&v117[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    object = v104._object;
    if (v36 == v104._countAndFlagsBits && v38 == v104._object)
    {
      goto LABEL_20;
    }

    countAndFlagsBits = v104._countAndFlagsBits;
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_21;
    }

    if ((*(v31 + 32))(v9, v31) == countAndFlagsBits && v43 == object)
    {
LABEL_20:
      v53 = v99;

      goto LABEL_22;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
LABEL_21:
      v53 = v99;
LABEL_22:

      v54 = getContiguousArrayStorageType<A>(for:)(v9, v9);
      OUTLINED_FUNCTION_0_25(v54);
      v55 = static Array._adoptStorage(_:count:)();
      OUTLINED_FUNCTION_4_35();
      v53();
      type metadata accessor for Array();
      v56._rawValue = v55;
      return CustomIntentDisambiguationItemContainer.init(items:)(v56).items._rawValue;
    }

    OUTLINED_FUNCTION_3_27(&v123);
    v46(v18, v9);
    v24 = v122;
  }

  OUTLINED_FUNCTION_5_19();
  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v92 == 8)
  {
    *&v117[0] = result;
    OUTLINED_FUNCTION_3_27(&v124);
    v48(v21, v117, v9);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_25(uint64_t a1)
{
  v3 = *(v1 - 360);
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = ((v5 + *(a1 + 48)) & ~v5) + v4;
  v7 = v5 | *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_1_38()
{
  v2 = *(v1 - 360);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v4 = *(v2 + 72);
}

uint64_t static WorkflowSnippetProvider.getSnippetProvider(deviceState:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  OUTLINED_FUNCTION_6_23(a1);
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    outlined init with copy of DeviceState(a1, v12);
    type metadata accessor for WorkflowCarplaySnippetProvider();
  }

  else
  {
    v4 = a1[3];
    v5 = a1[4];
    OUTLINED_FUNCTION_6_23(a1);
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      outlined init with copy of DeviceState(a1, v12);
      type metadata accessor for WorkflowWatchSnippetProvider();
    }

    else
    {
      v6 = a1[3];
      v7 = a1[4];
      OUTLINED_FUNCTION_6_23(a1);
      if (dispatch thunk of DeviceState.isHomePod.getter())
      {
        outlined init with copy of DeviceState(a1, v12);
        type metadata accessor for WorkflowHomePodSnippetProvider();
      }

      else
      {
        v8 = a1[3];
        v9 = a1[4];
        OUTLINED_FUNCTION_6_23(a1);
        if (dispatch thunk of DeviceState.isMac.getter())
        {
          outlined init with copy of DeviceState(a1, v12);
          type metadata accessor for WorkflowMacSnippetProvider();
        }

        else
        {
          outlined init with copy of DeviceState(a1, v12);
          type metadata accessor for WorkflowPhoneSnippetProvider();
        }
      }
    }
  }

  v10 = swift_allocObject();
  outlined init with take of Output(v12, v10 + 16);
  return v10;
}

uint64_t WorkflowSnippetProvider.buildSnippetForChooseFromList(shortcutName:appBundleId:disambiguationItems:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_18_4();
  v14 = *(v13 + 128);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = protocol witness for AppShortcutInvoking.autoShortcuts.getter in conformance AutoShortcutInvocation;

  return v18(a5, a1, a2, a3, a4, a6);
}

uint64_t WorkflowSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

void WorkflowSnippetProvider.makeSnippetForShowAlert(dialogRequest:appBundleId:shortcutName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v26 = *(v22 + 16);
  v25 = *(v22 + 24);
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  OUTLINED_FUNCTION_18_19();
  v29 = OUTLINED_FUNCTION_17_20(v28);
  v30(v29);
  OUTLINED_FUNCTION_8_22();
  v31 = OUTLINED_FUNCTION_7_21();
  if (v32)
  {
    outlined destroy of String?(v31, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_26_16(v34))
    {
      OUTLINED_FUNCTION_85();
      a11 = OUTLINED_FUNCTION_25_10();
      *v26 = 136315650;
      v35 = OUTLINED_FUNCTION_38_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &a11);
      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_14_18();
      OUTLINED_FUNCTION_3_28(85);
      *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, v37, v38);
      OUTLINED_FUNCTION_10_26(&dword_0, v39, v40, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    v41 = OUTLINED_FUNCTION_16_20();
    v42(v41);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_6_1();
}

uint64_t WorkflowSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

void WorkflowSnippetProvider.buildIntentSnippet(intent:intentResponse:shortcutName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v26 = *(v22 + 16);
  v25 = *(v22 + 24);
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  OUTLINED_FUNCTION_18_19();
  v29 = OUTLINED_FUNCTION_17_20(v28);
  v30(v29);
  OUTLINED_FUNCTION_8_22();
  v31 = OUTLINED_FUNCTION_7_21();
  if (v32)
  {
    outlined destroy of String?(v31, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_26_16(v34))
    {
      OUTLINED_FUNCTION_85();
      a11 = OUTLINED_FUNCTION_25_10();
      *v26 = 136315650;
      v35 = OUTLINED_FUNCTION_38_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &a11);
      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_14_18();
      OUTLINED_FUNCTION_3_28(98);
      v37 = OUTLINED_FUNCTION_31_9();
      *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v39);
      OUTLINED_FUNCTION_10_26(&dword_0, v40, v41, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    v42 = OUTLINED_FUNCTION_16_20();
    v43(v42);
  }

  OUTLINED_FUNCTION_31_9();
  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_6_1();
}

uint64_t WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for TemplatingText();
  v1[15] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[16] = v9;
  v11 = *(v10 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for TemplatingSection();
  v1[18] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[19] = v13;
  v15 = *(v14 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  v1[21] = OUTLINED_FUNCTION_27();
  v1[22] = swift_task_alloc();
  v19 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v19);
  v21 = *(v20 + 64);
  v1[23] = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for TemplatingResult();
  v1[24] = v22;
  OUTLINED_FUNCTION_5_0(v22);
  v1[25] = v23;
  v25 = *(v24 + 64);
  v1[26] = OUTLINED_FUNCTION_27();
  v1[27] = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v26, v27, v28);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[11];
  v3 = v0[12];
  type metadata accessor for App();

  v0[28] = App.__allocating_init(appIdentifier:)();
  type metadata accessor for AppNameResolver();
  swift_initStackObject();
  v5 = static SAAppInfoFactory.createAppInfo(app:)();
  v0[29] = AppNameResolver.resolveAppNameWithAppInfo(appInfo:)(v5);
  v0[30] = v6;

  v0[31] = type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  v0[32] = v7;

  SpeakableString.init(print:speak:)();
  v8 = type metadata accessor for SpeakableString();
  v0[33] = v8;
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v8);
  v9 = *(*v7 + class metadata base offset for RunVoiceCommandCATs + 24);
  v23 = *v7 + class metadata base offset for RunVoiceCommandCATs + 24;
  v24 = v9 + *v9;
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[34] = v11;
  *v11 = v0;
  v11[1] = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  v12 = v0[27];
  v13 = v0[22];
  OUTLINED_FUNCTION_82_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = v2[34];
  v6 = v2[22];
  *v4 = *v1;
  v3[35] = v0;

  outlined destroy of String?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = v2[32];
  if (v0)
  {
    v8 = v3[30];

    v9 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  else
  {

    v9 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[13];
  v0[9] = &_swiftEmptyArrayStorage;
  static CATOption.defaultMode.getter();
  v8 = CATWrapper.__allocating_init(options:globals:)();
  v0[36] = v8;
  v9 = v7[5];
  v10 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v9);
  v11 = DeviceState.asSiriKitDeviceState()(v9, v10);
  v0[37] = v11;
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v1);
  v12 = *(*v8 + class metadata base offset for RunVoiceCommandCATs + 64);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[38] = v14;
  *v14 = v0;
  v14[1] = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  v15 = v0[26];
  v16 = v0[21];

  return v18(v15, v11, v16);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[38];
  *v4 = *v1;
  *(v3 + 312) = v0;

  v6 = v2[37];
  v7 = v2[36];
  v8 = v2[21];
  if (v0)
  {

    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v9 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  else
  {
    outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

    v9 = WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v5 = *(v2 + 208);
  v6 = TemplatingResult.sections.getter();
  if (!*(v6 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(v2 + 152);
  v8 = *(v2 + 136);
  v10 = *(v2 + 120);
  v9 = *(v2 + 128);
  v11 = *(v2 + 104);
  v51 = *(v2 + 96);
  v12 = *(v2 + 88);
  (*(v7 + 16))(*(v2 + 160), v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(v2 + 144));

  TemplatingSection.content.getter();
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_56_1();
  v15(v14);
  v16 = TemplatingText.text.getter();
  v18 = v17;
  (*(v9 + 8))(v8, v10);
  v19 = [objc_allocWithZone(SAAppsLaunchApp) init];
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v12, v51, v19);
  v20 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
  v21 = dispatch thunk of DeviceState.isPhone.getter();
  v22 = *(v2 + 104);
  v44 = v19;
  if (v21)
  {
    type metadata accessor for SiriKitAceViewBuilder();
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    v23 = v19;
    dispatch thunk of SiriKitAceViewBuilder.addButton(label:command:)();

    dispatch thunk of SiriKitAceViewBuilder.build()();

    goto LABEL_8;
  }

  v24 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v22[5]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v1 = [objc_allocWithZone(SASTCommandTemplateAction) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = OUTLINED_FUNCTION_64();
    *(v25 + 16) = xmmword_216010;
    *(v25 + 32) = v19;
    v26 = v19;
    outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v25, v1, &selRef_setCommands_);
    v4 = [objc_allocWithZone(SAUIDecoratedText) init];
    outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v16, v18, v4);
    v27 = [objc_allocWithZone(SASTButtonItem) init];
    [v27 setDecoratedLabel:v4];
    [v27 setCentered:1];
    [v27 setAction:v1];
    v28 = [objc_allocWithZone(SASTItemGroup) init];
    v29 = OUTLINED_FUNCTION_64();
    *(v29 + 16) = xmmword_216010;
    *(v29 + 32) = v27;
    v0 = v27;
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v29, v28);
    v3 = v28;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*(v2 + 72) & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (*(v2 + 72) & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
LABEL_6:
      OUTLINED_FUNCTION_56_1();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v46 = *(v2 + 72);

      goto LABEL_8;
    }

LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_6;
  }

LABEL_8:
  v30 = *(v2 + 216);
  v43 = *(v2 + 224);
  v31 = *(v2 + 200);
  v45 = *(v2 + 208);
  v32 = *(v2 + 192);
  v47 = *(v2 + 184);
  v48 = *(v2 + 176);
  v49 = *(v2 + 168);
  v50 = *(v2 + 160);
  v52 = *(v2 + 136);
  v34 = *(v2 + 104);
  v33 = *(v2 + 112);
  v35 = *(v2 + 80);
  v36 = v34[6];
  __swift_project_boxed_opaque_existential_1(v34 + 2, v34[5]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v37 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  v38 = type metadata accessor for AceOutput();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  v35[3] = v38;
  v35[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v35);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of String?(v2 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v39 = *(v31 + 8);
  v40 = OUTLINED_FUNCTION_56_1();
  v39(v40);
  (v39)(v30, v32);

  v41 = *(v2 + 8);

  return v41();
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[28];

  v2 = v0[35];
  OUTLINED_FUNCTION_27_13();

  v3 = v0[1];

  return v3();
}

{
  OUTLINED_FUNCTION_14_0();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[24];
  v4 = v0[25];

  (*(v4 + 8))(v2, v3);
  v5 = v0[39];
  OUTLINED_FUNCTION_27_13();

  v6 = v0[1];

  return v6();
}

id WorkflowSnippetProvider.makeConfirmationOptions(confirmationButtonText:cancelButtonText:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = [objc_allocWithZone(SAUIConfirmationOptions) init];
  static Device.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "confirmation");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = 7562617;
  *(inited + 56) = 0xE300000000000000;
  v5 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for SKIDirectInvocationPayload();
  OUTLINED_FUNCTION_31_9();
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = DeviceState.asInvocationContext.getter();
  v10 = SAInputOriginDialogButtonTapValue;
  [v9 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v11 = objc_opt_self();
  v12 = [v11 runSiriKitExecutorCommandWithContext:v9 payload:v6];
  v13 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v14 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setBundleId:v15];

  [v13 setRequestedApp:v14];
  [v12 setAppSelectionState:v13];

  v16 = [v11 wrapCommandInStartLocalRequest:v12];
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  static Device.current.getter();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_216850;
  strcpy((v17 + 32), "confirmation");
  *(v17 + 45) = 0;
  *(v17 + 46) = -5120;
  *(v17 + 72) = &type metadata for String;
  *(v17 + 48) = 0x6C65636E6163;
  *(v17 + 56) = 0xE600000000000000;
  v18 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_31_9();
  v19 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v18);
  v21 = v20;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v21, v19);
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v22 = DeviceState.asInvocationContext.getter();
  [v22 setInputOrigin:v10];
  v23 = [v11 runSiriKitExecutorCommandWithContext:v22 payload:v19];
  v24 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v25 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setBundleId:v26];

  [v24 setRequestedApp:v25];
  [v23 setAppSelectionState:v24];

  v27 = [v11 wrapCommandInStartLocalRequest:v23];
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(a1, a2, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = OUTLINED_FUNCTION_64();
  *(v28 + 16) = xmmword_216010;
  *(v28 + 32) = v16;
  v29 = v16;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v28, v32, &selRef_setConfirmCommands_);
  outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(a3, a4, v32);
  v30 = OUTLINED_FUNCTION_64();
  *(v30 + 16) = xmmword_216010;
  *(v30 + 32) = v27;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v30, v32, &selRef_setDenyCommands_);

  return v32;
}

Swift::Bool __swiftcall WorkflowSnippetProvider.shouldShowSnippet(intent:)(INIntent intent)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v10, v12, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  outlined init with copy of Logger?(v10, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    outlined destroy of String?(v8, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_85();
      v21 = swift_slowAlloc();
      *v16 = 136315650;
      v17 = OUTLINED_FUNCTION_38_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);
      OUTLINED_FUNCTION_18_12();
      *(v16 + 4) = v1;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 161;
      *(v16 + 22) = 2080;
      *(v16 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000045, 0x80000000002331B0, &v21);
      _os_log_impl(&dword_0, v14, v15, "FatalError at %s:%lu - %s", v16, 0x20u);
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    (*(v13 + 8))(v8, v11);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_28_10();
  result = OUTLINED_FUNCTION_11_19();
  __break(1u);
  return result;
}

uint64_t WorkflowSnippetProvider.buildConfirmationButtons(buttonLabels:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t WorkflowSnippetProvider.buildConfirmationButtons(buttonLabels:appBundleId:)()
{
  v1 = v0[2];
  if (v1[2] == 2)
  {
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];
    v5 = v1[4];
    v6 = v1[5];
    v7 = v1[6];
    v8 = v1[7];
    OUTLINED_FUNCTION_18_4();
    v10 = *(v9 + 152);

    v11 = OUTLINED_FUNCTION_56_1();
    v12 = v10(v11);
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_6_6();

  return v13(v12);
}

uint64_t WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  OUTLINED_FUNCTION_18_4();
  v6 = *(v5 + 120);
  v18 = v5 + 120;
  v19 = v6 + *v6;
  v7 = v6[1];
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  OUTLINED_FUNCTION_82_2();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v5 = *(v4 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = xmmword_216840;
  v3 = [v1 okButton];
  v4 = [v3 title];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v8 = [v1 cancelButton];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 title];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  v13 = v0[3];
  v14 = v0[7];
  *(v2 + 48) = v9;
  *(v2 + 56) = v12;
  v0[10] = v13;
  v15 = *(*v14 + 168);
  v30 = *v14 + 168;
  v31 = v15 + *v15;
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = WorkflowSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  v18 = v0[6];
  v19 = v0[7];
  v20 = v0[5];
  OUTLINED_FUNCTION_82_2();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 96) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  [v2 setConfirmationOptions:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = OUTLINED_FUNCTION_64();
  *(v3 + 16) = xmmword_216010;
  *(v3 + 32) = v2;

  OUTLINED_FUNCTION_6_6();

  return v4(v3);
}

uint64_t WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[10];
  v2 = v0[5];
  v3 = [v2 interaction];
  v4 = [v3 intent];
  v0[12] = v4;

  v5 = [v2 interaction];
  v6 = [v5 intentResponse];
  v0[13] = v6;

  OUTLINED_FUNCTION_18_4();
  v8 = *(v7 + 136);
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[7];

  return v15(v4, v6, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 112);
  *v2 = *v0;
  *(v1 + 120) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 120))
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    v4 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 128) = v4;
    type metadata accessor for CATButtonLabelTemplating();
    inited = swift_initStackObject();
    *(v0 + 136) = inited;
    *(inited + 16) = v4;
    v6 = [v1 verb];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 144) = v9;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);

    return CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(v3 + 16, v7, v9);
  }

  else
  {
    v12 = *(v0 + 96);

    v13 = *(v0 + 88);

    OUTLINED_FUNCTION_6_6();

    return v14(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = v3[19];
  v7 = v3[18];
  v8 = v3[10];
  v9 = *v0;
  *v5 = *v0;
  v4[20] = v2;

  OUTLINED_FUNCTION_18_4();
  v11 = *(v10 + 168);
  v26 = v10 + 168;
  v27 = v11 + *v11;
  v12 = v11[1];
  v13 = swift_task_alloc();
  v4[21] = v13;
  *v13 = v9;
  v13[1] = WorkflowSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v14 = v4[10];
  v15 = v3[9];
  v16 = v3[8];
  OUTLINED_FUNCTION_82_2();

  return v20(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  v4 = *(v3 + 168);
  v5 = *(v3 + 160);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v9 + 176) = v8;

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[22];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  [v2 setConfirmationOptions:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = OUTLINED_FUNCTION_64();
  *(v5 + 16) = xmmword_216010;
  *(v5 + 32) = v2;

  v6 = v0[11];

  OUTLINED_FUNCTION_6_6();

  return v7(v5);
}

uint64_t WorkflowSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  OUTLINED_FUNCTION_8_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_27();
  *(v0 + 24) = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

void WorkflowSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v26 = *(v22 + 16);
  v25 = *(v22 + 24);
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.voiceCommands);
  OUTLINED_FUNCTION_18_19();
  v29 = OUTLINED_FUNCTION_17_20(v28);
  v30(v29);
  OUTLINED_FUNCTION_8_22();
  v31 = OUTLINED_FUNCTION_7_21();
  if (v32)
  {
    outlined destroy of String?(v31, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_26_16(v34))
    {
      OUTLINED_FUNCTION_85();
      a11 = OUTLINED_FUNCTION_25_10();
      *v26 = 136315650;
      v35 = OUTLINED_FUNCTION_38_10();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &a11);
      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_14_18();
      OUTLINED_FUNCTION_3_28(92);
      *(v26 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, v37, v38);
      OUTLINED_FUNCTION_10_26(&dword_0, v39, v40, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_6_15();
      OUTLINED_FUNCTION_11_0();
      OUTLINED_FUNCTION_15_0();
    }

    v41 = OUTLINED_FUNCTION_16_20();
    v42(v41);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_6_1();
}

void outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLaunchId:v4];
}

void outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.confirmText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setConfirmText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUIConfirmationOptions.denyText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setDenyText:v4];
}

void outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 *a3];
}

uint64_t OUTLINED_FUNCTION_8_22()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return outlined init with copy of Logger?(v1, v2);
}

void OUTLINED_FUNCTION_10_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_11_19()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t OUTLINED_FUNCTION_16_20()
{
  result = *(v0 + 16);
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_16(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_13()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[17];
  v9 = v0[14];
}
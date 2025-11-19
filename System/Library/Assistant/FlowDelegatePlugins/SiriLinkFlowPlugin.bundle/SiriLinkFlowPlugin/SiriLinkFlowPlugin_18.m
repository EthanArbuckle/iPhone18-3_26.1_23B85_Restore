void static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:)()
{
  v1 = v0[9];
  v2 = specialized Array.count.getter(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v7 = _swiftEmptyArrayStorage;
  for (i = v0; ; v0 = i)
  {
    v42 = v7;
    v0[10] = v7;
    while (1)
    {
      if (v2 == v3)
      {
        v0 = i;
        v24 = i[9];

        LOBYTE(v2) = v42;
        if (v42[2])
        {
          v25 = *(*i[7] + 288);
          v40 = v25 + *v25;
          v26 = v25[1];
          v27 = swift_task_alloc();
          i[11] = v27;
          *v27 = i;
          v27[1] = static AutoShortcutsSetEnablementFlow.prepareAppShortcutPhrases(appId:deviceState:provider:preferences:dialogTemplating:);
          v28 = i[7];
          OUTLINED_FUNCTION_58();

          __asm { BRAA            X1, X16 }
        }

        if (one-time initialization token for voiceCommands != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v4)
      {
        v12 = i[9];
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v8 = *(v6 + 8 * v3);
      }

      v9 = v8;
      v0 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        OUTLINED_FUNCTION_0();
LABEL_27:
        v31 = v0[3];
        v32 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v32, static Logger.voiceCommands);

        v33 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_73_6();

        if (OUTLINED_FUNCTION_86_1())
        {
          v35 = v0[2];
          v34 = v0[3];
          v36 = OUTLINED_FUNCTION_48();
          v37 = swift_slowAlloc();
          v43 = v37;
          *v36 = 136315138;
          *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, &v43);
          _os_log_impl(&dword_0, v33, v2, "#AutoShortcutsSetEnablementFlow failed to get appShortcutPhrases for appId=%s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);

          OUTLINED_FUNCTION_11_0();
        }

        OUTLINED_FUNCTION_12_7();
        OUTLINED_FUNCTION_58();

        __asm { BRAA            X3, X16 }
      }

      v10 = [v8 orderedPhrases];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        break;
      }

      if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

LABEL_10:

      ++v3;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_10;
    }

LABEL_13:
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v13 = *(v11 + 32);
    }

    v14 = v13;

    v15 = [v14 localizedPhrase];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = v42[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v22;
    }

    v19 = v42[2];
    if (v19 >= v42[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = v23;
    }

    v7 = v42;
    v42[2] = v19 + 1;
    v20 = &v42[2 * v19];
    v20[4] = v16;
    v20[5] = v18;
    v3 = v0;
  }
}

uint64_t AutoShortcutsSetEnablementFlow.executeIntentConfirmed(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  *(v16 + 360) = a15;
  *(v16 + 368) = v15;
  *(v16 + 344) = v17;
  *(v16 + 352) = v18;
  *(v16 + 328) = v19;
  *(v16 + 336) = v20;
  *(v16 + 312) = v21;
  *(v16 + 320) = v22;
  *(v16 + 81) = v23;
  *(v16 + 304) = v24;
  type metadata accessor for AutoShortcutFirstRunFlow();
  v25 = swift_task_alloc();
  *(v16 + 376) = v25;
  *v25 = v16;
  v25[1] = AutoShortcutsSetEnablementFlow.executeIntentConfirmed(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  OUTLINED_FUNCTION_87();

  return static AutoShortcutFirstRunFlow.setSiriAutoShortcutsEnablement(isEnable:bundleId:voiceShortcutsClient:userDefaults:)(v26, v27, v28, v29, v30);
}

uint64_t AutoShortcutsSetEnablementFlow.executeIntentConfirmed(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 376);
  *v2 = *v0;
  *(v1 + 82) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 82) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 384) = v1;
    *v1 = v0;
    v1[1] = AutoShortcutsSetEnablementFlow.executeIntentConfirmed(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v2 = *(v0 + 360);
    v3 = *(v0 + 368);
    v4 = *(v0 + 344);
    v5 = *(v0 + 352);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = *(v0 + 312);
    v9 = *(v0 + 320);
    v10 = *(v0 + 81);

    return AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v10, v8, v9, v6, v7, v4, v5, v2);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v14))
    {
      v15 = *(v0 + 81);
      v16 = OUTLINED_FUNCTION_23_15();
      *v16 = 67109120;
      v16[1] = v15;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v17, v18, v19, v20, v21, 8u);
      OUTLINED_FUNCTION_17();
    }

    v22 = *(v0 + 368);
    v23 = *(v0 + 304);

    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_52_9();
    *(v22 + 288) = 6;
    *(v22 + 352) = 96;
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 16);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_6_0();

    return v24();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 83) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 83);
  v2 = *(v0 + 368);
  v3 = *(v0 + 304);
  if (v1 == 7)
  {
    v4 = v0 + 88;
    v5 = OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_110_0(v5, (v2 + 288));
    *(v2 + 288) = 1;
    OUTLINED_FUNCTION_66_8((v2 + 296));
    *(v2 + 344) = 0;
    v6 = 0x80;
  }

  else
  {
    v4 = v0 + 160;
    v7 = v1 & 7;
    v8 = OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_110_0(v8, (v2 + 288));
    *(v2 + 288) = v7;
    v6 = 96;
  }

  *(v2 + 352) = v6;
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v4);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_8_0();
  *(v10 + 672) = v9;
  *(v10 + 664) = a9;
  *(v10 + 656) = v11;
  *(v10 + 648) = v12;
  *(v10 + 640) = v13;
  *(v10 + 632) = v14;
  *(v10 + 624) = v15;
  *(v10 + 616) = v16;
  *(v10 + 81) = v17;
  *(v10 + 608) = v18;
  *(v10 + 680) = *v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v19);
  v21 = *(v20 + 64);
  *(v10 + 688) = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for DialogPhase();
  *(v10 + 696) = v22;
  OUTLINED_FUNCTION_5_0(v22);
  *(v10 + 704) = v23;
  v25 = *(v24 + 64);
  *(v10 + 712) = OUTLINED_FUNCTION_27();
  *(v10 + 720) = swift_task_alloc();
  v26 = type metadata accessor for OutputGenerationManifest();
  *(v10 + 728) = v26;
  OUTLINED_FUNCTION_5_0(v26);
  *(v10 + 736) = v27;
  v29 = *(v28 + 64);
  *(v10 + 744) = OUTLINED_FUNCTION_28();
  v30 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  *(v10 + 752) = v30;
  OUTLINED_FUNCTION_5_0(v30);
  *(v10 + 760) = v31;
  v33 = *(v32 + 64);
  *(v10 + 768) = OUTLINED_FUNCTION_28();
  v34 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_36_13(v34, v35, v36);
}

{
  OUTLINED_FUNCTION_15_2();
  v10 = *(v9 + 760);
  v11 = *(v9 + 81);
  (*(v10 + 104))(*(v9 + 768), enum case for RFFeatureFlags.ResponseFramework._SMART(_:), *(v9 + 752));
  v12 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v13 = *(v10 + 8);
  v14 = OUTLINED_FUNCTION_22_4();
  v15(v14);
  if (v12 & 1) == 0 || (v11)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v9 + 872) = v21;
    *v21 = v22;
    v21[1] = AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v23 = *(v9 + 672);
    v24 = *(v9 + 656);
    v25 = *(v9 + 648);
    v26 = *(v9 + 640);
    v27 = *(v9 + 632);
    v28 = *(v9 + 624);
    v29 = *(v9 + 616);
    v30 = *(v9 + 81);
    v31 = *(v9 + 608);
    v42 = *(v9 + 664);
    OUTLINED_FUNCTION_87();

    return AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(v32, v33, v34, v35, v36, v37, v38, v39, a9);
  }

  else
  {
    *(v9 + 776) = *(*(v9 + 672) + 96);
    OUTLINED_FUNCTION_18_4();
    v17 = *(v16 + 240);
    v43 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v9 + 784) = v19;
    *v19 = v9;
    OUTLINED_FUNCTION_64_2(v19);

    return v43();
  }
}

{
  OUTLINED_FUNCTION_93_2();
  v10 = v9[105];
  if (v10)
  {
    v57 = v9[101];
    v58 = v9[102];
    v55 = v9[99];
    v56 = v9[100];
    v11 = v9[93];
    v12 = v9[90];
    v13 = v9[89];
    v14 = v9[88];
    v15 = v9[87];
    v16 = v9[86];
    v59 = v9[85];
    v54 = v9[84];
    static DialogPhase.confirmation.getter();
    v17 = [v10 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v14 + 16))(v13, v12, v15);
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OutputGenerationManifest.responseViewId.setter();
    (*(v14 + 8))(v12, v15);
    OutputGenerationManifest.listenAfterSpeaking.setter();
    v18 = *(v54 + 280);
    OUTLINED_FUNCTION_18_4();
    (*(v19 + 80))();
    v20 = type metadata accessor for NLContextUpdate();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
    OutputGenerationManifest.nlContextUpdate.setter();
    v21 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v21);
    v22 = ResponseFactory.init()();
    v9[62] = v21;
    v9[63] = &protocol witness table for ResponseFactory;
    v9[59] = v22;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v9[106] = v23;
    *v23 = v24;
    v23[1] = AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v25 = v9[102];
    v26 = v9[101];
    v27 = v9[100];
    v28 = v9[99];
    v29 = v9[93];
    OUTLINED_FUNCTION_77();

    return static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:)(v30, v31, v32, v33, v34, v35, v36, v37, a9);
  }

  else
  {
    v40 = v9[102];
    v41 = v9[100];

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v42, static Logger.voiceCommands);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v44))
    {
      v45 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v45);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_17();
    }

    v51 = v9[84];
    v52 = v9[76];

    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6();
    memcpy(v9 + 11, (v51 + 288), 0x41uLL);
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State((v9 + 11));
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_28_14();

    OUTLINED_FUNCTION_6_0();

    return v53();
  }
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 784);
  v7 = *v1;
  *v4 = v7;
  *(v3 + 792) = v8;
  *(v3 + 800) = v9;
  *(v3 + 808) = v10;
  *(v3 + 816) = v11;
  *(v3 + 824) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v12, v13, v14);
  }

  else
  {
    v15 = *(**(v3 + 776) + 136);
    v22 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v3 + 832) = v17;
    *v17 = v7;
    v17[1] = AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v18 = *(v3 + 776);
    v19 = *(v3 + 640);
    v20 = OUTLINED_FUNCTION_73(*(v3 + 632));

    return v22(v20);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 832);
  *v2 = *v0;
  *(v1 + 840) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = v4[106];
  v6 = v4[102];
  v7 = v4[100];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 472));
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 672);
  v2 = v1[10];
  v3 = v1[11];
  OUTLINED_FUNCTION_47(v1 + 7);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 856) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 864) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  v2 = *(*v0 + 872);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[96];
  v6 = v1[93];
  v7 = v1[90];
  v8 = v1[89];
  v9 = v1[86];

  v10 = *(v3 + 8);
  OUTLINED_FUNCTION_87();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_12_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v3))
  {
    *OUTLINED_FUNCTION_23_15() = 67109120;
    OUTLINED_FUNCTION_9_8();
    _os_log_impl(v4, v5, v6, v7, v8, 8u);
    OUTLINED_FUNCTION_17();
  }

  v9 = v0[103];
  v10 = v0[84];
  v11 = v0[76];

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_53_6();
  memcpy(v0 + 2, (v10 + 288), 0x41uLL);
  OUTLINED_FUNCTION_35_16();
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v0 + 2));
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_6_0();

  return v12();
}

void AutoShortcutsSetEnablementFlow.publishConfirmation(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  v13 = *(v0 + 840);
  v14 = *(v0 + 736);
  v15 = *(v0 + 728);
  v16 = *(v0 + 744);
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  v12 = *(v0 + 608);
  *(v0 + 304) = 0;
  *(v0 + 312) = v8;
  *(v0 + 320) = v7;
  *(v0 + 328) = v6;
  *(v0 + 336) = v5;
  *(v0 + 344) = v4;
  *(v0 + 352) = v3;
  v9 = *(v0 + 304) & 7;
  *(v0 + 360) = v2;
  OUTLINED_FUNCTION_53_6();
  memcpy((v0 + 232), (v1 + 288), 0x41uLL);
  *(v1 + 288) = v9;
  *(v1 + 296) = v8;
  *(v1 + 304) = v7;
  *(v1 + 312) = v6;
  *(v1 + 320) = v5;
  *(v1 + 328) = v4;
  *(v1 + 336) = v3;
  *(v1 + 344) = v2;
  *(v1 + 352) = 32;
  outlined init with copy of SpeakableString?(v0 + 304, v0 + 368, &_sSb10isEnabling_SS5appIdSS0C4NameSaySSG15shortcutPhrasesSSSg18moreShortcutsLabeltMd, &_sSb10isEnabling_SS5appIdSS0C4NameSaySSG15shortcutPhrasesSSSg18moreShortcutsLabeltMR);
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 232);
  static ExecuteResponse.ongoing(requireInput:)();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  (*(v14 + 8))(v16, v15);
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_14_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v1[108];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    v5 = v1[108];
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_26_22(&dword_0, v8, v0, "#AutoShortcutsSetEnablementFlow error publishing confirmation; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v9 = v1[108];
  v10 = v1[105];
  v11 = v1[93];
  v12 = v1[92];
  v13 = v1[91];
  v14 = v1[84];
  v15 = v1[76];

  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_108_0(v1 + 20);
  OUTLINED_FUNCTION_43_10();
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v1 + 20));
  static ExecuteResponse.complete()();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 54);
  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_20_1();
  v18(v17);
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  __asm { BRAA            X1, X16 }
}

uint64_t static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[41] = a9;
  v10[42] = v9;
  v10[39] = a7;
  v10[40] = a8;
  v10[37] = a5;
  v10[38] = a6;
  v10[35] = a3;
  v10[36] = a4;
  v10[33] = a1;
  v10[34] = a2;
  return OUTLINED_FUNCTION_11_30(static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:));
}

uint64_t static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v13 = v12[34];
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = v12[41];
    v17 = v12[35];
    v18 = v16[3];
    v19 = v16[4];
    OUTLINED_FUNCTION_47(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = OUTLINED_FUNCTION_64();
    v12[45] = v20;
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v17;
    v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v22 = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[46] = v23;
    *v23 = v24;
    v23[1] = static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:);
    v25 = v12[36];
    v26 = v12[33];
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v36 = v12[41];
    v35 = v12[42];
    v37 = v12[40];
    v38 = v12[37];
    v39 = v12[38];
    v40 = v12[34];
    v65 = v12[39];
    v66 = v12[35];
    v41 = DialogExecutionResult.firstDialogFullPrint()();
    v12[2] = static AutoShortcutsSetEnablementFlow.getShortcutsBundleIdAndDisplayName(deviceState:)(v40);
    v12[3] = v42;
    v12[4] = v43;
    v12[5] = v44;
    v12[6] = v38;
    v12[7] = v39;
    v12[8] = v65;
    v12[9] = v37;
    *(v12 + 5) = xmmword_21CC10;
    *(v12 + 96) = 0;
    *(v12 + 13) = v41;
    v45 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v12[31] = type metadata accessor for WorkflowDataModels(0);
    OUTLINED_FUNCTION_39_16();
    v12[32] = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(v46, 255, v47);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 28);
    memcpy(boxed_opaque_existential_1, v12 + 2, 0x68uLL);
    OUTLINED_FUNCTION_51_6();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v49 = OUTLINED_FUNCTION_64();
    v12[43] = v49;
    *(v49 + 16) = xmmword_216010;
    *(v49 + 32) = v66;

    outlined init with copy of WorkflowDataModels.ConfirmActionModel((v12 + 2), (v12 + 15));
    v50 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
    v51 = v66;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[44] = v52;
    *v52 = v53;
    v52[1] = static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:);
    v54 = v12[36];
    v55 = v12[33];
    OUTLINED_FUNCTION_6_1();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v66, a12);
  }
}

uint64_t static AutoShortcutsSetEnablementFlow.makeConfirmChangeEnablementOutput(deviceState:dialogResult:manifest:buttonLabels:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *(v4 + 344);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 224));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.ConfirmActionModel(v0 + 16);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 368);
  v3 = *(v1 + 360);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t static AutoShortcutsSetEnablementFlow.getShortcutsBundleIdAndDisplayName(deviceState:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = dispatch thunk of DeviceState.isWatch.getter();
  if (v3)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "CHFlowStrategy.swift";
  }

  else
  {
    v5 = "rCodeUnsupportedInCarPlay";
  }

  type metadata accessor for App();
  App.__allocating_init(appIdentifier:)();
  v6 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a1, 2);
  v8 = v7;

  if (!v8)
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5 | 0x8000000000000000, &v16);
      _os_log_impl(&dword_0, v11, v12, "#AutoShortcutsSetEnablementFlow: failed to get Shortcuts app's displayName; bundleId='%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }
  }

  return v4;
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_8_0();
  *(v10 + 712) = v9;
  *(v10 + 704) = a9;
  *(v10 + 696) = v11;
  *(v10 + 688) = v12;
  *(v10 + 680) = v13;
  *(v10 + 672) = v14;
  *(v10 + 664) = v15;
  *(v10 + 656) = v16;
  *(v10 + 81) = v17;
  *(v10 + 648) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v19);
  v21 = *(v20 + 64);
  *(v10 + 720) = OUTLINED_FUNCTION_28();
  v22 = type metadata accessor for DialogPhase();
  *(v10 + 728) = v22;
  OUTLINED_FUNCTION_5_0(v22);
  *(v10 + 736) = v23;
  v25 = *(v24 + 64);
  *(v10 + 744) = OUTLINED_FUNCTION_27();
  *(v10 + 752) = swift_task_alloc();
  v26 = type metadata accessor for OutputGenerationManifest();
  *(v10 + 760) = v26;
  OUTLINED_FUNCTION_5_0(v26);
  *(v10 + 768) = v27;
  v29 = *(v28 + 64);
  *(v10 + 776) = OUTLINED_FUNCTION_28();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
  OUTLINED_FUNCTION_14(v30);
  v32 = *(v31 + 64);
  *(v10 + 784) = OUTLINED_FUNCTION_28();
  v33 = type metadata accessor for TemplatingResult();
  *(v10 + 792) = v33;
  OUTLINED_FUNCTION_5_0(v33);
  *(v10 + 800) = v34;
  v36 = *(v35 + 64);
  *(v10 + 808) = OUTLINED_FUNCTION_28();
  v37 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_36_13(v37, v38, v39);
}

{
  OUTLINED_FUNCTION_15_2();
  if (*(v9 + 856))
  {
    v10 = *(v9 + 840);
    if (*(v9 + 81))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v9 + 864) = v11;
      *v11 = v12;
      v11[1] = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
      v13 = *(v9 + 832);
      v14 = *(v9 + 712);
      v15 = *(v9 + 696);
      v16 = *(v9 + 688);
      v17 = *(v9 + 664);
      v18 = *(v9 + 656);
      v52 = *(v9 + 704);
      OUTLINED_FUNCTION_74_5();
      OUTLINED_FUNCTION_87();

      return AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:)(v19, v20, v21, v22, v23, v24, v25, v26, a9);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v9 + 904) = v44;
      *v44 = v45;
      v44[1] = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
      v46 = *(v9 + 832);
      v47 = *(v9 + 712);
      OUTLINED_FUNCTION_74_5();

      return AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:)(v48, v49, v50, v10);
    }
  }

  else
  {
    v29 = *(v9 + 840);
    v30 = OUTLINED_FUNCTION_92_2();
    v31(v30);

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v32 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v32, static Logger.voiceCommands);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v34))
    {
      v35 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v35);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_17();
    }

    v41 = *(v9 + 712);
    v42 = *(v9 + 648);

    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v9 + 16);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_7_31();

    OUTLINED_FUNCTION_6_0();

    return v43();
  }
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  *(v0 + 816) = *(*(v0 + 712) + 96);
  OUTLINED_FUNCTION_18_4();
  v2 = *(v1 + 144);
  v11 = (v2 + *v2);
  v3 = v2[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 824) = v4;
  *v4 = v5;
  v4[1] = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  v6 = *(v0 + 784);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 81);

  return v11(v6, v8, v7, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 824);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of String?(v2, &_s11SiriKitFlow16TemplatingResultVSgMd, &_s11SiriKitFlow16TemplatingResultVSgMR);
LABEL_8:
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v14, static Logger.voiceCommands);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v16))
    {
      v17 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v17);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v18, v19, v20, v21, v22, 2u);
      OUTLINED_FUNCTION_17();
    }

    v23 = *(v0 + 712);
    v24 = *(v0 + 648);

    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 16);
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_7_31();

    OUTLINED_FUNCTION_6_0();

    return v25();
  }

  (*(*(v0 + 800) + 32))(*(v0 + 808), v2, v1);
  v3 = TemplatingResult.firstSectionContentText()();
  *(v0 + 832) = v3;
  if (!v3.value._object)
  {
    v12 = OUTLINED_FUNCTION_92_2();
    v13(v12);
    goto LABEL_8;
  }

  v4 = *(**(v0 + 816) + 152);
  v26 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 848) = v6;
  *v6 = v0;
  v6[1] = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  v7 = *(v0 + 816);
  v8 = *(v0 + 680);
  v9 = *(v0 + 81);
  v10 = OUTLINED_FUNCTION_73(*(v0 + 672));

  return v26(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 848);
  *v2 = *v0;
  *(v1 + 856) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 864);
  v6 = *(v4 + 840);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  v9 = *(v2 + 528);
  *(v2 + 872) = *(v2 + 512);
  *(v2 + 888) = v9;
  *(v2 + 82) = *(v2 + 544);

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 904);
  v6 = *(v4 + 840);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  v9 = *(v2 + 488);
  *(v2 + 912) = *(v2 + 472);
  *(v2 + 928) = v9;
  *(v2 + 83) = *(v2 + 504);

  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 952);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 960) = v0;

  if (!v0)
  {
    v9 = *(v3 + 944);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 712);
  v2 = v1[10];
  v3 = v1[11];
  OUTLINED_FUNCTION_47(v1 + 7);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 968) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 968);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 976) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v18 = *(v0 + 800);
  v19 = *(v0 + 792);
  v20 = *(v0 + 808);
  v16 = *(v0 + 856);
  v17 = *(v0 + 776);
  v14 = *(v0 + 768);
  v15 = *(v0 + 760);
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 81);
  v13 = *(v0 + 648);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 432));
  *(v0 + 304) = v9;
  *(v0 + 312) = v8;
  *(v0 + 320) = v7;
  *(v0 + 328) = v6;
  *(v0 + 336) = v5;
  *(v0 + 344) = v4;
  *(v0 + 352) = v3;
  *(v0 + 360) = v2;
  v10 = *(v0 + 304) & 7;
  OUTLINED_FUNCTION_53_6();
  memcpy((v0 + 160), (v1 + 288), 0x41uLL);
  *(v1 + 288) = v10;
  *(v1 + 296) = v8;
  *(v1 + 304) = v7;
  *(v1 + 312) = v6;
  *(v1 + 320) = v5;
  *(v1 + 328) = v4;
  *(v1 + 336) = v3;
  *(v1 + 344) = v2;
  *(v1 + 352) = 32;
  outlined init with copy of SpeakableString?(v0 + 304, v0 + 368, &_sSb10isEnabling_SS5appIdSS0C4NameSaySSG15shortcutPhrasesSSSg18moreShortcutsLabeltMd, &_sSb10isEnabling_SS5appIdSS0C4NameSaySSG15shortcutPhrasesSSSg18moreShortcutsLabeltMR);
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 160);
  static ExecuteResponse.ongoing(requireInput:)();

  (*(v14 + 8))(v17, v15);
  (*(v18 + 8))(v20, v19);
  OUTLINED_FUNCTION_7_31();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_93_2();
  if (*(v19 + 82))
  {
    v24 = *(v19 + 872);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
    Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v26))
    {
      v27 = *(v19 + 81);
      v28 = OUTLINED_FUNCTION_23_15();
      *v28 = 67109120;
      v28[1] = v27;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v29, v30, v31, v32, v33, 8u);
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_68_10();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_108_0((v19 + 232));
    OUTLINED_FUNCTION_43_10();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v19 + 232);
    static ExecuteResponse.complete()();

    v34 = *(v22 + 8);
    v35 = OUTLINED_FUNCTION_9_3();
    v36(v35);
    OUTLINED_FUNCTION_7_31();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_77();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v68 = *(v19 + 888);
    v69 = *(v19 + 896);
    v46 = *(v19 + 880);
    v47 = *(v19 + 872);
    OUTLINED_FUNCTION_42_12();
    v48 = [v20 patternId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = OUTLINED_FUNCTION_72_7();
    v50(v49);
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OUTLINED_FUNCTION_51_6();
    OutputGenerationManifest.responseViewId.setter();
    v21[1](v23, v18);
    OutputGenerationManifest.listenAfterSpeaking.setter();
    v51 = *(a10 + 280);
    OUTLINED_FUNCTION_18_4();
    v53 = *(v52 + 80);
    OUTLINED_FUNCTION_65_8();
    v54();

    v55 = type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_91_1(v55);
    v56 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v56);
    *(v19 + 944) = ResponseFactory.init()();
    OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v70 = v57;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v19 + 952) = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_33_11(v58);
    OUTLINED_FUNCTION_77();

    return v63(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, v68, v70, a15, a16, a17, a18);
  }
}

{
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_93_2();
  if (*(v19 + 83))
  {
    v24 = *(v19 + 912);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v25 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v25, static Logger.voiceCommands);
    Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v26))
    {
      v27 = *(v19 + 81);
      v28 = OUTLINED_FUNCTION_23_15();
      *v28 = 67109120;
      v28[1] = v27;
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v29, v30, v31, v32, v33, 8u);
      OUTLINED_FUNCTION_17();
    }

    OUTLINED_FUNCTION_68_10();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_108_0((v19 + 232));
    OUTLINED_FUNCTION_43_10();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v19 + 232);
    static ExecuteResponse.complete()();

    v34 = *(v22 + 8);
    v35 = OUTLINED_FUNCTION_9_3();
    v36(v35);
    OUTLINED_FUNCTION_7_31();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_77();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v68 = *(v19 + 928);
    v69 = *(v19 + 936);
    v46 = *(v19 + 920);
    v47 = *(v19 + 912);
    OUTLINED_FUNCTION_42_12();
    v48 = [v20 patternId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = OUTLINED_FUNCTION_72_7();
    v50(v49);
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OUTLINED_FUNCTION_51_6();
    OutputGenerationManifest.responseViewId.setter();
    v21[1](v23, v18);
    OutputGenerationManifest.listenAfterSpeaking.setter();
    v51 = *(a10 + 280);
    OUTLINED_FUNCTION_18_4();
    v53 = *(v52 + 80);
    OUTLINED_FUNCTION_65_8();
    v54();

    v55 = type metadata accessor for NLContextUpdate();
    OUTLINED_FUNCTION_91_1(v55);
    v56 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v56);
    *(v19 + 944) = ResponseFactory.init()();
    OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v70 = v57;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v19 + 952) = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_33_11(v58);
    OUTLINED_FUNCTION_77();

    return v63(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, v68, v70, a15, a16, a17, a18);
  }
}

uint64_t AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v18 = *(v15 + 944);

  v19 = *(v15 + 960);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v21 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v22);
    OUTLINED_FUNCTION_5_7(&dword_0, v23, v24, "#AutoShortcutsSetEnablementFlow error publishing confirmation; %@");
    outlined destroy of String?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_35_16();
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v15 + 88);
  static ExecuteResponse.complete()();

  v25 = *(v14 + 8);
  v26 = OUTLINED_FUNCTION_13_5();
  v27(v26);
  (*(v16 + 8))(a11, a10);
  OUTLINED_FUNCTION_7_31();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  __swift_destroy_boxed_opaque_existential_1Tm((v15 + 432));
  v18 = *(v15 + 976);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v20 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v21);
    OUTLINED_FUNCTION_5_7(&dword_0, v22, v23, "#AutoShortcutsSetEnablementFlow error publishing confirmation; %@");
    outlined destroy of String?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_49_11();
  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_35_16();
  outlined destroy of AutoShortcutsSetEnablementFlow.State(v15 + 88);
  static ExecuteResponse.complete()();

  v24 = *(v14 + 8);
  v25 = OUTLINED_FUNCTION_13_5();
  v26(v25);
  (*(v16 + 8))(a11, a10);
  OUTLINED_FUNCTION_7_31();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[50] = a9;
  v10[51] = v9;
  v10[48] = a7;
  v10[49] = a8;
  v10[46] = a5;
  v10[47] = a6;
  v10[44] = a3;
  v10[45] = a4;
  v10[42] = a1;
  v10[43] = a2;
  return OUTLINED_FUNCTION_11_30(AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 408) + 96);
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 232);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 416) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_64_2(v5);

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 416);
  *v3 = *v1;
  v2[53] = v6;
  v2[54] = v7;
  v2[55] = v8;
  v2[56] = v9;
  v2[57] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 464);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[59] = v0;

  if (!v0)
  {
    v7[60] = v3;
    v7[61] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined bridged method (mbnn) of @objc PatternExecutionResult.visual.setter(*(v0 + 488), *(v0 + 480), *(v0 + 344));
  outlined destroy of ActionConfirmationVisual(v0 + 16);
  v1 = [*(v0 + 344) dialog];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for PatternExecutionDialog, PatternExecutionDialog_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v4 setSpokenOnly:isa];
  }

  else
  {
  }

  v6 = *(v0 + 440);
  v7 = *(v0 + 336);
  OUTLINED_FUNCTION_9_27(*(v0 + 448), *(v0 + 424));

  return v8();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 496);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[63] = v0;

  if (!v0)
  {
    v7[64] = v3;
    v7[65] = v5;
    outlined destroy of AutoShortcutFirstRunVisual((v7 + 26));
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined bridged method (mbnn) of @objc PatternExecutionResult.visual.setter(*(v0 + 520), *(v0 + 512), *(v0 + 344));
  v1 = [*(v0 + 344) dialog];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for PatternExecutionDialog, PatternExecutionDialog_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v4 setSpokenOnly:isa];
  }

  else
  {
  }

  v6 = *(v0 + 440);
  v7 = *(v0 + 336);
  OUTLINED_FUNCTION_9_27(*(v0 + 448), *(v0 + 424));

  return v8();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 456);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow error updating enabling pattern; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_52(*(v0 + 336));
  OUTLINED_FUNCTION_87();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[56];
  v2 = v0[54];
  outlined destroy of ActionConfirmationVisual((v0 + 2));

  v3 = v0[59];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow error updating enabling pattern; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_52(v0[42]);
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[56];
  v2 = v0[54];
  outlined destroy of AutoShortcutFirstRunVisual((v0 + 26));

  v3 = v0[63];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow error updating enabling pattern; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_52(v0[42]);
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 408);
  v14 = v13[5];
  v15 = v13[6];
  OUTLINED_FUNCTION_47(v13 + 2);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    [*(v12 + 344) setVisual:0];
    v16 = *(v12 + 440);
    v17 = *(v12 + 336);
    OUTLINED_FUNCTION_9_27(*(v12 + 448), *(v12 + 424));
    OUTLINED_FUNCTION_27_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  else
  {
    v27 = v13[5];
    v28 = v13[6];
    OUTLINED_FUNCTION_47(v13 + 2);
    OUTLINED_FUNCTION_9_3();
    v29 = dispatch thunk of DeviceState.isWatch.getter();
    v31 = *(v12 + 440);
    v30 = *(v12 + 448);
    v33 = *(v12 + 424);
    v32 = *(v12 + 432);
    if (v29)
    {
      v34 = *(v12 + 376);
      v48 = *(v12 + 368);
      outlined init with copy of DeviceState((v13 + 2), v12 + 296);
      type metadata accessor for App();

      App.__allocating_init(appIdentifier:)();
      v35 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v12 + 296, 2);
      v37 = v36;

      __swift_destroy_boxed_opaque_existential_1Tm((v12 + 296));
      *(v12 + 16) = 0xD000000000000019;
      *(v12 + 24) = 0x800000000022F8D0;
      *(v12 + 32) = v35;
      *(v12 + 40) = v37;
      *(v12 + 48) = v33;
      *(v12 + 56) = v32;
      *(v12 + 64) = v31;
      *(v12 + 72) = v30;
      *(v12 + 80) = 0;
      *(v12 + 88) = v48;
      *(v12 + 96) = v34;
      *(v12 + 104) = xmmword_21CC10;
      v38 = swift_task_alloc();
      *(v12 + 464) = v38;
      *v38 = v12;
      v38[1] = AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:);
      OUTLINED_FUNCTION_27_0();

      return ActionConfirmationVisual.data.getter();
    }

    else
    {
      v40 = *(v12 + 392);
      v41 = *(v12 + 400);
      v42 = *(v12 + 376);
      v44 = *(v12 + 360);
      v43 = *(v12 + 368);
      v45 = *(v12 + 352);
      *(v12 + 208) = *(v12 + 384);
      *(v12 + 216) = v33;
      *(v12 + 224) = v32;
      *(v12 + 232) = v31;
      *(v12 + 240) = v30;
      *(v12 + 248) = v40;
      *(v12 + 256) = v41;
      *(v12 + 264) = v43;
      *(v12 + 272) = v42;
      *(v12 + 280) = v45;
      *(v12 + 288) = v44;
      memcpy((v12 + 120), (v12 + 208), 0x58uLL);

      v46 = swift_task_alloc();
      *(v12 + 496) = v46;
      *v46 = v12;
      v46[1] = AutoShortcutsSetEnablementFlow.updateEnablingPattern(_:appId:promptLabel:shortcutPhrases:moreShortcutsLabel:);
      OUTLINED_FUNCTION_27_0();

      return AutoShortcutFirstRunVisual.data.getter();
    }
  }
}

uint64_t AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return OUTLINED_FUNCTION_0_16(AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 192) + 96);
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 240);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_64_2(v5);

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 200);
  *v3 = *v1;
  v2[26] = v6;
  v2[27] = v7;
  v2[28] = v8;
  v2[29] = v9;
  v2[30] = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v10 = *(v9 + 248);
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  v7[32] = v0;

  if (!v0)
  {
    v7[33] = v3;
    v7[34] = v5;
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[10].n128_u64[1];
  outlined bridged method (mbnn) of @objc PatternExecutionResult.visual.setter(v0[17].n128_i64[0], v0[16].n128_u64[1], v1);
  v2 = [v1 dialog];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for PatternExecutionDialog, PatternExecutionDialog_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v3))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
    [v5 setSpokenOnly:isa];
    outlined destroy of ActionConfirmationVisual(&v0[1]);
  }

  else
  {

    outlined destroy of ActionConfirmationVisual(&v0[1]);
  }

  v7 = v0[14].n128_u64[0];
  v8 = v0[10].n128_u64[0];
  OUTLINED_FUNCTION_9_27(v0[14].n128_u64[1], v0[13]);

  return v9();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 240);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow error updatng disabling pattern; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_52(*(v0 + 160));
  OUTLINED_FUNCTION_87();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[29];
  v2 = v0[27];
  outlined destroy of ActionConfirmationVisual((v0 + 2));

  v3 = v0[32];
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow error updatng disabling pattern; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_52(v0[20]);
  OUTLINED_FUNCTION_87();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = *(v14 + 192);
  v16 = v15[5];
  v17 = v15[6];
  OUTLINED_FUNCTION_47(v15 + 2);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    [*(v14 + 168) setVisual:0];
    v18 = *(v14 + 224);
    v19 = *(v14 + 160);
    OUTLINED_FUNCTION_9_27(*(v14 + 232), *(v14 + 208));
    OUTLINED_FUNCTION_6_1();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v29 = *(v14 + 232);
    v31 = *(v14 + 208);
    v30 = *(v14 + 216);
    v32 = *(v14 + 184);
    v43 = *(v14 + 176);
    v44 = *(v14 + 224);
    v33 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
    OUTLINED_FUNCTION_13_5();
    v34 = dispatch thunk of DeviceState.isWatch.getter();
    if (v34)
    {
      v35 = 0xD000000000000019;
    }

    else
    {
      v35 = 0xD000000000000013;
    }

    if (v34)
    {
      v36 = "CHFlowStrategy.swift";
    }

    else
    {
      v36 = "rCodeUnsupportedInCarPlay";
    }

    v37 = v36 | 0x8000000000000000;
    outlined init with copy of DeviceState((v15 + 2), v14 + 120);
    type metadata accessor for App();

    OUTLINED_FUNCTION_13_5();
    App.__allocating_init(appIdentifier:)();
    v38 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v14 + 120, 2);
    v40 = v39;

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 120));
    *(v14 + 16) = v35;
    *(v14 + 24) = v37;
    *(v14 + 32) = v38;
    *(v14 + 40) = v40;
    *(v14 + 48) = v31;
    *(v14 + 56) = v30;
    *(v14 + 64) = v44;
    *(v14 + 72) = v29;
    *(v14 + 80) = 0;
    *(v14 + 88) = v43;
    *(v14 + 96) = v32;
    *(v14 + 104) = xmmword_21CC10;
    v41 = swift_task_alloc();
    *(v14 + 248) = v41;
    *v41 = v14;
    v41[1] = AutoShortcutsSetEnablementFlow.updateDisablingPattern_preRFv2(_:promptLabel:);
    OUTLINED_FUNCTION_6_1();

    return ActionConfirmationVisual.data.getter();
  }
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 528) = v9;
  *(v10 + 520) = a9;
  *(v10 + 504) = a7;
  *(v10 + 512) = a8;
  *(v10 + 488) = a5;
  *(v10 + 496) = a6;
  *(v10 + 472) = a3;
  *(v10 + 480) = a4;
  *(v10 + 81) = a2;
  *(v10 + 464) = a1;
  *(v10 + 536) = *v9;
  return OUTLINED_FUNCTION_11_30(AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_15_2();
  if (*(v0 + 81) == 1)
  {
    v1 = *(*(v0 + 528) + 96);
    v2 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v2);
    v3 = ResponseFactory.init()();
    *(v0 + 376) = v2;
    *(v0 + 384) = &protocol witness table for ResponseFactory;
    *(v0 + 352) = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 544) = v4;
    *v4 = v5;
    v4[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v6 = *(v0 + 504);
    v7 = *(v0 + 512);
    v8 = *(v0 + 488);
    v9 = *(v0 + 496);
    v10 = *(v0 + 472);
    v11 = *(v0 + 480);
    v20 = *(v0 + 520);
    OUTLINED_FUNCTION_87();

    return static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 552) = v14;
    *v14 = v15;
    v14[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v16 = *(v0 + 528);
    v17 = *(v0 + 488);
    v18 = *(v0 + 496);

    return AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with copy of SpeakableString?(v0 + 232, v0 + 312, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  if (*(v0 + 336))
  {
    v1 = *(v0 + 528);
    outlined init with take of AceServiceInvokerAsync((v0 + 312), v0 + 272);
    v2 = v1[10];
    v3 = v1[11];
    OUTLINED_FUNCTION_47(v1 + 7);
    v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 560) = v5;
    *v5 = v6;
    v5[1] = AutoShortcutsSetEnablementFlow.publishChangeNotNeeded(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    OUTLINED_FUNCTION_27_4();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v9);
  }

  else
  {
    outlined destroy of String?(v0 + 312, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v12))
    {
      v13 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v13);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_17();
    }

    v19 = *(v0 + 528);
    v20 = *(v0 + 464);

    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State(v0 + 16);
    static ExecuteResponse.complete()();
    outlined destroy of String?(v0 + 232, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    OUTLINED_FUNCTION_6_0();

    return v21();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 552);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[66];
  v2 = v0[58];
  OUTLINED_FUNCTION_53_6();
  memcpy(v0 + 20, (v1 + 288), 0x41uLL);
  *(v1 + 288) = 1;
  OUTLINED_FUNCTION_66_8((v1 + 296));
  *(v1 + 344) = 0;
  *(v1 + 352) = 0x80;
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v0 + 20));
  static ExecuteResponse.complete()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  outlined destroy of String?((v0 + 29), &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v1[71];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    v5 = v1[71];
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_26_22(&dword_0, v8, v0, "#AutoShortcutsSetEnablementFlow error publishing changeNotNeeded; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v9 = v1[71];
  v10 = v1[66];
  v11 = v1[58];

  OUTLINED_FUNCTION_89_1();
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_35_16();
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v1 + 11));
  static ExecuteResponse.complete()();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 34);
  outlined destroy of String?((v1 + 29), &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 128) = v22;
  *(v0 + 136) = v23;
  *(v0 + 112) = v21;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  *(v0 + 256) = v7;
  *(v0 + 56) = v8;
  v9 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  *(v0 + 144) = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for OutputGenerationManifest();
  *(v0 + 152) = v12;
  OUTLINED_FUNCTION_5_0(v12);
  *(v0 + 160) = v13;
  v15 = *(v14 + 64);
  *(v0 + 168) = OUTLINED_FUNCTION_28();
  v16 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  static DialogPhase.completion.getter();
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  v4 = *(*v3 + 176);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
  v7 = *(v0 + 120);
  v8 = *(v0 + 88);
  v9 = *(v0 + 256);
  v10 = OUTLINED_FUNCTION_73(*(v0 + 80));

  return v12(v10);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = [*(v0 + 184) catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  v4 = *(*v2 + 208);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
  v7 = *(v0 + 120);

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 200);
  *v3 = *v1;
  *(v2 + 208) = v6;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *(v4 + 224);
  v7 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v9 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_22_4();
  v7(v6);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 248);
  v3 = *(v1 + 240);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 192);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow making appEnabledOutput; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_78_4();
  v9(v8);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  if (!v3)
  {
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 144);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 216);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  if (OUTLINED_FUNCTION_76_6())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v5);
    OUTLINED_FUNCTION_5_7(&dword_0, v6, v7, "#AutoShortcutsSetEnablementFlow making appEnabledOutput; %@");
    outlined destroy of String?(v4, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_78_4();
  v9(v8);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  if (!v3)
  {
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 144);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_93_2();
  v13 = *(v12 + 128);
  v14 = v13[3];
  v15 = v13[4];
  OUTLINED_FUNCTION_47(v13);
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v16 = *(v12 + 184);
    v17 = *(v12 + 136);
    v18 = v17[3];
    v19 = v17[4];
    OUTLINED_FUNCTION_47(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v20 = OUTLINED_FUNCTION_64();
    *(v12 + 240) = v20;
    *(v20 + 16) = xmmword_216010;
    *(v20 + 32) = v16;
    v21 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v22 = v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 248) = v23;
    *v23 = v24;
    v23[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
    v25 = *(v12 + 168);
    v26 = *(v12 + 56);
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v35 = *(v12 + 208);
    v36 = *(v12 + 136);
    v37 = *(v12 + 112);
    v63 = *(v12 + 72);
    v64 = *(v12 + 104);
    v61 = *(v12 + 96);
    v62 = *(v12 + 64);
    v38 = *(v12 + 184);
    v39 = DialogExecutionResult.firstDialogFullPrint()();
    if (v39.value._object)
    {
      countAndFlagsBits = v39.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v39.value._object)
    {
      object = v39.value._object;
    }

    else
    {
      object = 0xE000000000000000;
    }

    v42 = DialogExecutionResult.firstDialogFullPrint()();
    v65 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    *(v12 + 40) = type metadata accessor for WorkflowDataModels(0);
    OUTLINED_FUNCTION_39_16();
    *(v12 + 48) = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(v43, 255, v44);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 16));
    boxed_opaque_existential_1->value._countAndFlagsBits = v61;
    boxed_opaque_existential_1->value._object = &dword_0 + 3;
    boxed_opaque_existential_1[1].value._countAndFlagsBits = v62;
    boxed_opaque_existential_1[1].value._object = v63;
    boxed_opaque_existential_1[2].value._countAndFlagsBits = countAndFlagsBits;
    boxed_opaque_existential_1[2].value._object = object;
    boxed_opaque_existential_1[3].value._countAndFlagsBits = v64;
    boxed_opaque_existential_1[3].value._object = v37;
    boxed_opaque_existential_1[4] = v42;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v46 = OUTLINED_FUNCTION_64();
    *(v12 + 224) = v46;
    *(v46 + 16) = xmmword_216010;
    *(v46 + 32) = v38;
    v47 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];

    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 232) = v48;
    *v48 = v49;
    v48[1] = static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:);
    v50 = *(v12 + 168);
    v51 = *(v12 + 56);
    OUTLINED_FUNCTION_77();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v52, v53, v54, v55, v56, v57, v58, v59, v61, v62, v63, v64);
  }
}

uint64_t AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 272) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for TemplatingResult();
  *(v1 + 96) = v9;
  OUTLINED_FUNCTION_5_0(v9);
  *(v1 + 104) = v10;
  v12 = *(v11 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_27();
  *(v1 + 120) = swift_task_alloc();
  v13 = type metadata accessor for DialogPhase();
  *(v1 + 128) = v13;
  OUTLINED_FUNCTION_5_0(v13);
  *(v1 + 136) = v14;
  v16 = *(v15 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_27();
  *(v1 + 152) = swift_task_alloc();
  v17 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 160) = v17;
  OUTLINED_FUNCTION_5_0(v17);
  *(v1 + 168) = v18;
  v20 = *(v19 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_28();
  v21 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  *(v1 + 184) = v21;
  OUTLINED_FUNCTION_5_0(v21);
  *(v1 + 192) = v22;
  v24 = *(v23 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_28();
  v25 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v25, v26, v27);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 80);
  (*(v1 + 104))(*(v0 + 200), enum case for RFFeatureFlags.ResponseFramework._SMART(_:), *(v0 + 184));
  v3 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *(v2 + 96);
  OUTLINED_FUNCTION_18_4();
  if (v3)
  {
    v22 = (*(v8 + 192) + **(v8 + 192));
    v9 = *(*(v8 + 192) + 4);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
    v11 = *(v0 + 272);
    v12 = *(v0 + 72);
    v13 = OUTLINED_FUNCTION_73(*(v0 + 64));

    return v22(v13);
  }

  else
  {
    v23 = (*(v8 + 200) + **(v8 + 200));
    v15 = *(*(v8 + 200) + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 256) = v16;
    *v16 = v17;
    v16[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
    v18 = *(v0 + 112);
    v19 = *(v0 + 272);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);

    return v23(v18, v20, v21, v19);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 208);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[31];
  v3 = v1[30];
  v4 = v1[29];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  (*(v1 + 32))(*(v0 + 120), *(v0 + 112), *(v0 + 96));
  v5 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
  v6 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v4[3] = v6;
  v4[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v4);
  static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of String?(v2, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_22_4();
  v9(v8);
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 216);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow making appDisabledOutput; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v10 = *(v0 + 56);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

{
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 264);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutsSetEnablementFlow making appDisabledOutput; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v10 = *(v0 + 56);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  OUTLINED_FUNCTION_29_19();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 176);
  v15 = *(v12 + 144);
  v14 = *(v12 + 152);
  v16 = *(v12 + 128);
  v17 = *(v12 + 136);
  v18 = *(v12 + 224);
  static DialogPhase.confirmation.getter();
  v19 = [v18 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v17 + 16))(v15, v14, v16);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v20 = *(v17 + 8);
  v21 = OUTLINED_FUNCTION_20_1();
  v22(v21);
  v23 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v23);
  *(v12 + 232) = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = OUTLINED_FUNCTION_64();
  *(v12 + 240) = v24;
  *(v24 + 16) = xmmword_216010;
  *(v24 + 32) = v18;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v39 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v12 + 248) = v26;
  *v26 = v27;
  v26[1] = AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:);
  v28 = *(v12 + 176);
  v29 = *(v12 + 56);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_27_0();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, v39, a10, a11, a12);
}

uint64_t AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 224) = a8;
  *(v9 + 232) = v8;
  *(v9 + 208) = a6;
  *(v9 + 216) = a7;
  *(v9 + 192) = a4;
  *(v9 + 200) = a5;
  *(v9 + 176) = a2;
  *(v9 + 184) = a3;
  *(v9 + 280) = a1;
  *(v9 + 240) = *v8;
  return OUTLINED_FUNCTION_0_16(AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:));
}

uint64_t AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:)()
{
  OUTLINED_FUNCTION_12_0();
  if (*(v0 + 280) == 1)
  {
    v1 = *(*(v0 + 232) + 96);
    v2 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v2);
    v3 = ResponseFactory.init()();
    *(v0 + 160) = v2;
    *(v0 + 168) = &protocol witness table for ResponseFactory;
    *(v0 + 136) = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 248) = v4;
    *v4 = v5;
    v4[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v6 = *(v0 + 216);
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v19 = *(v0 + 224);

    return static AutoShortcutsSetEnablementFlow.makeAppEnabledOutput(wasAppAlreadyEnabled:appId:appName:shortcutPhrases:moreShortcutsLabel:dialogTemplating:deviceState:responseFactory:)();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 256) = v13;
    *v13 = v14;
    v13[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    v15 = *(v0 + 232);
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);

    return AutoShortcutsSetEnablementFlow.makeAppDisabledOutput(appName:wasAppAlreadyEnabled:)();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with copy of SpeakableString?(v0 + 16, v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 232);
    outlined init with take of AceServiceInvokerAsync((v0 + 96), v0 + 56);
    v2 = v1[10];
    v3 = v1[11];
    OUTLINED_FUNCTION_47(v1 + 7);
    v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v0 + 264) = v5;
    *v5 = v6;
    v5[1] = AutoShortcutsSetEnablementFlow.publishEnablementUpdated(wasEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
    OUTLINED_FUNCTION_27_4();

    return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v9);
  }

  else
  {
    outlined destroy of String?(v0 + 96, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v12))
    {
      v13 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v13);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_17();
    }

    outlined destroy of String?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    OUTLINED_FUNCTION_6_6();

    return v19(1);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 256);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  outlined destroy of String?(v0 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_6();

  return v1(7);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = *(v1 + 272);
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    v5 = *(v1 + 272);
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_26_22(&dword_0, v8, v0, "#AutoShortcutsSetEnablementFlow error publishing enablementUpdated; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v9 = *(v1 + 272);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  outlined destroy of String?(v1 + 16, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_87();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 81) = v2;
  *(v1 + 360) = v3;
  *(v1 + 368) = v0;
  *(v1 + 344) = v4;
  *(v1 + 352) = v5;
  v6 = type metadata accessor for DialogPhase();
  *(v1 + 376) = v6;
  OUTLINED_FUNCTION_5_0(v6);
  *(v1 + 384) = v7;
  v9 = *(v8 + 64);
  *(v1 + 392) = OUTLINED_FUNCTION_27();
  *(v1 + 400) = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  *(v1 + 408) = v10;
  OUTLINED_FUNCTION_5_0(v10);
  *(v1 + 416) = v11;
  v13 = *(v12 + 64);
  *(v1 + 424) = OUTLINED_FUNCTION_28();
  v14 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(*(v0 + 368) + 96);
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + 160);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 432) = v5;
  *v5 = v0;
  v5[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
  v6 = *(v0 + 81);
  v7 = *(v0 + 360);
  v8 = OUTLINED_FUNCTION_73(*(v0 + 352));

  return v10(v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v2 = v1;
  v4 = *(v3 + 432);
  *v2 = *v0;
  *(v1 + 440) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[58];
  v3 = v1[57];
  v4 = v1[56];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 368);
  v2 = v1[10];
  v3 = v1[11];
  OUTLINED_FUNCTION_47(v1 + 7);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 472) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
  OUTLINED_FUNCTION_27_4();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 480) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  v5 = v0[46];
  v6 = v0[43];
  OUTLINED_FUNCTION_53_6();
  memcpy(v0 + 20, (v5 + 288), 0x41uLL);
  *(v5 + 288) = 1;
  OUTLINED_FUNCTION_66_8((v5 + 296));
  *(v5 + 344) = 0;
  *(v5 + 352) = 0x80;
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v0 + 20));
  static ExecuteResponse.complete()();

  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_22_4();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 29);
  v10 = v0[53];
  v11 = v0[49];
  v12 = v0[50];

  OUTLINED_FUNCTION_6_0();

  return v13();
}

uint64_t AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[55];
  if (v13)
  {
    v14 = v12[53];
    v16 = v12[49];
    v15 = v12[50];
    v17 = v12[47];
    v18 = v12[48];
    static DialogPhase.completion.getter();
    v19 = [v13 catId];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v18 + 16))(v16, v15, v17);
    OUTLINED_FUNCTION_1_0();
    OutputGenerationManifest.init(dialogPhase:_:)();
    OutputGenerationManifest.responseViewId.setter();
    (*(v18 + 8))(v15, v17);
    v20 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v20);
    v12[56] = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = OUTLINED_FUNCTION_64();
    v12[57] = v21;
    *(v21 + 16) = xmmword_216010;
    *(v21 + 32) = v13;
    v22 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
    v58 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
    v23 = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v12[58] = v24;
    *v24 = v25;
    v24[1] = AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:);
    v26 = v12[53];
    OUTLINED_FUNCTION_74_5();
    OUTLINED_FUNCTION_27_0();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, v58, a10, a11, a12);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v36, static Logger.voiceCommands);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_30_1(v38))
    {
      v39 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v39);
      OUTLINED_FUNCTION_9_8();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_17();
    }

    v45 = v12[46];
    v46 = v12[43];

    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_53_6();
    OUTLINED_FUNCTION_52_9();
    OUTLINED_FUNCTION_37_12();
    outlined destroy of AutoShortcutsSetEnablementFlow.State((v12 + 2));
    static ExecuteResponse.complete()();
    v47 = v12[53];
    v48 = v12[49];
    v49 = v12[50];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_27_0();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12);
  }
}

void AutoShortcutsSetEnablementFlow.publishChangeDeclinedAck(appName:isStillEnabled:)()
{
  OUTLINED_FUNCTION_14_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v1[60];
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_73_6();

  if (OUTLINED_FUNCTION_86_1())
  {
    v5 = v1[60];
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_26_22(&dword_0, v8, v0, "#AutoShortcutsSetEnablementFlow error publishing changeDeclinedAck; %@");
    outlined destroy of String?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  v9 = v1[60];
  v10 = v1[55];
  v12 = v1[52];
  v11 = v1[53];
  v13 = v1[51];
  v14 = v1[46];
  v15 = v1[43];

  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_108_0(v1 + 11);
  OUTLINED_FUNCTION_43_10();
  outlined destroy of AutoShortcutsSetEnablementFlow.State((v1 + 11));
  static ExecuteResponse.complete()();

  v16 = *(v12 + 8);
  v17 = OUTLINED_FUNCTION_20_1();
  v18(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 29);
  v19 = v1[53];
  v20 = v1[49];
  v21 = v1[50];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  __asm { BRAA            X1, X16 }
}

uint64_t AutoShortcutsSetEnablementFlow.execute(completion:)()
{
  type metadata accessor for AutoShortcutsSetEnablementFlow();
  _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(&lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow and conformance AutoShortcutsSetEnablementFlow, v0, type metadata accessor for AutoShortcutsSetEnablementFlow);
  OUTLINED_FUNCTION_48_2();
  return Flow.deferToExecuteAsync(_:)();
}

Swift::Bool __swiftcall DeviceState.canOutputAppShortcutPhrases()()
{
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isWatch.getter()) || (OUTLINED_FUNCTION_48_2(), (dispatch thunk of DeviceState.isMac.getter()))
  {
    OUTLINED_FUNCTION_48_2();
    v0 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t AutoShortcutsSetEnablementFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  v3 = *(v0 + 280);

  outlined consume of AutoShortcutsSetEnablementFlow.State(*(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352));
  return v0;
}

uint64_t AutoShortcutsSetEnablementFlow.__deallocating_deinit()
{
  AutoShortcutsSetEnablementFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance AutoShortcutsSetEnablementFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AutoShortcutsSetEnablementFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoShortcutsSetEnablementFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void outlined bridged method (mbnn) of @objc PatternExecutionResult.visual.setter(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(a1, a2);
  [a3 setVisual:isa];
}

uint64_t specialized AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v49 = a7;
  v48 = a6;
  v47 = a4;
  v45 = a3;
  v51 = a2;
  v50 = a9;
  v18 = type metadata accessor for CATOption();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v60 = a13;
  v61 = a15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, a8, a13);
  v57 = a12;
  v58 = a14;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v56);
  (*(*(a12 - 8) + 32))(v21, a10, a12);
  type metadata accessor for WorkflowNLContextProvider();
  *(a11 + 280) = swift_allocObject();
  outlined init with copy of DeviceState(a1, a11 + 16);
  outlined init with copy of DeviceState(v51, a11 + 56);
  outlined init with copy of DeviceState(a1, v55);
  v22 = v45;
  outlined init with copy of DeviceState(v45, v52);
  type metadata accessor for AutoShortcutDialogTemplating();
  v23 = swift_allocObject();
  v25 = v53;
  v24 = v54;
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(v55, v47, a5, v29, v23, v25, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  *(a11 + 96) = v31;
  outlined init with copy of DeviceState(a1, v55);
  outlined init with copy of DeviceState(v22, v52);
  type metadata accessor for RunLinkActionCATs();
  static CATOption.defaultMode.getter();
  v46 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  static CATOption.defaultMode.getter();
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  static CATOption.defaultMode.getter();
  v34 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for LinkActionDialogTemplating();
  v35 = swift_allocObject();
  v36 = v53;
  v37 = v54;
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v39 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = &v45 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  v43 = specialized LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)(v55, v46, v32, v33, v34, v41, v35, v36, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  *(a11 + 104) = v43;
  outlined init with take of AceServiceInvokerAsync(v48, a11 + 112);
  outlined init with take of AceServiceInvokerAsync(v49, a11 + 152);
  outlined init with take of AceServiceInvokerAsync(&v59, a11 + 192);
  *(a11 + 232) = v50;
  outlined init with take of AceServiceInvokerAsync(&v56, a11 + 240);
  *(a11 + 288) = 0u;
  *(a11 + 304) = 0u;
  *(a11 + 320) = 0u;
  *(a11 + 336) = 0u;
  *(a11 + 352) = 0x80;
  return a11;
}

uint64_t outlined destroy of VoiceCommandTask(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of AutoShortcutsSetEnablementFlow.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a3;
  v10 = a9 >> 5;
  if ((v10 - 1) >= 2)
  {
    if (v10)
    {
      return result;
    }
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSetEnablementFlow.EnablementFlowError and conformance AutoShortcutsSetEnablementFlow.EnablementFlowError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin026AutoShortcutsSetEnablementC0C5StateO(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 4;
  }
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.State(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 3;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 8 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 49) = 0u;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AutoShortcutsSetEnablementFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 64) & 1 | (32 * a2);
    *result &= 7uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = (a2 - 4) & 7;
    *(result + 8) = (a2 - 4) >> 3;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.EnablementFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSetEnablementFlow.EnablementFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1A03BCLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52@<X0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_31()
{
  v2 = v0[101];
  v3 = v0[98];
  v4 = v0[97];
  v5 = v0[94];
  v6 = v0[93];
  v7 = v0[90];
}

uint64_t OUTLINED_FUNCTION_9_27@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  v3[1].n128_u64[0] = v2;
  v3[1].n128_u64[1] = a1;
  v3[2].n128_u8[0] = 0;
  result = v4 + 8;
  v6 = *(v4 + 8);
  return result;
}

void OUTLINED_FUNCTION_26_22(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_28_14()
{
  v2 = v0[96];
  v3 = v0[93];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[86];
}

uint64_t OUTLINED_FUNCTION_29_19()
{
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t a1)
{
  *(a1 + 8) = AutoShortcutsSetEnablementFlow.publishConfirmation_preRFv2(isEnabling:appId:appName:shortcutPhrases:moreShortcutsLabel:);
  v2 = *(v1 + 776);
  return v1 + 432;
}

uint64_t OUTLINED_FUNCTION_36_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_42_12()
{
  v2 = v0[107];
  v3 = v0[97];
  v4 = v0[94];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v10 = v0[89];

  return static DialogPhase.confirmation.getter();
}

void OUTLINED_FUNCTION_49_11()
{
  v3 = v1[107];
  v4 = v1[100];
  v5 = v1[99];
  v11 = v1[101];
  v6 = v1[97];
  v7 = v1[96];
  v8 = v1[95];
  v9 = v1[89];
  v10 = v1[81];
}

void *OUTLINED_FUNCTION_52_9()
{

  return memcpy((v1 + 16), (v0 + 288), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_53_6()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_66_8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void OUTLINED_FUNCTION_68_10()
{
  v3 = v1[107];
  v4 = v1[101];
  v5 = v1[100];
  v6 = v1[99];
  v7 = v1[89];
  v8 = v1[81];
}

uint64_t OUTLINED_FUNCTION_75_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[45];
  v5 = v2[40];
  v6 = v2[41];
  result = v2[38];
  v8 = v2[39];
  *(v3 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v5 = v3[45];
  v6 = v3[40];
  v7 = v3[41];
  result = v3[38];
  v9 = v3[39];
  *(v4 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v1 = v0[24];
  result = v0[21];
  v3 = v0[19];
  v4 = v0[7];
  v5 = *(v0[20] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *OUTLINED_FUNCTION_82_8()
{

  return memcpy((v1 - 232), (v0 + 288), 0x41uLL);
}

void *OUTLINED_FUNCTION_83_4()
{

  return memcpy((v0 + 88), (v1 + 288), 0x41uLL);
}

BOOL OUTLINED_FUNCTION_86_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t OUTLINED_FUNCTION_92_2()
{
  result = v0[101];
  v2 = v0[99];
  v3 = *(v0[100] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_105_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 272);

  return Input.parse.getter();
}

void *OUTLINED_FUNCTION_108_0(void *a1)
{

  return memcpy(a1, (v1 + 288), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_109_1(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

void *OUTLINED_FUNCTION_110_0(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x41uLL);
}

uint64_t InputToDisambiguationItemsConverter.__allocating_init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(a1, a2);
  return v4;
}

void *InputToDisambiguationItemsConverter.init(disambiguationItems:page:)(uint64_t a1, uint64_t a2)
{
  v2[4] = &outlined read-only object #0 of InputToDisambiguationItemsConverter.init(disambiguationItems:page:);
  v2[2] = a1;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
  }

  v2[3] = v3;
  return v2;
}

void InputToDisambiguationItemsConverter.inputToChosenItems(input:)()
{
  OUTLINED_FUNCTION_38_8();
  v52 = v0;
  v1 = type metadata accessor for USOParse();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v54 = v3;
  v55 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v53 = v7 - v6;
  v8 = type metadata accessor for NLIntent();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Parse.DirectInvocation();
  v18 = OUTLINED_FUNCTION_7_1(v17);
  v56 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v24 = v23 - v22;
  v25 = type metadata accessor for Parse();
  v26 = OUTLINED_FUNCTION_7_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  OUTLINED_FUNCTION_3();
  v33 = v32 - v31;
  Input.parse.getter();
  v34 = (*(v28 + 88))(v33, v25);
  if (v34 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v35 = OUTLINED_FUNCTION_4_50();
    v36(v35);
LABEL_5:
    v40 = OUTLINED_FUNCTION_16_31();
    v41(v40);
    OUTLINED_FUNCTION_38_8();
    (*(v42 + 160))(v16);
    goto LABEL_6;
  }

  if (v34 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v37 = OUTLINED_FUNCTION_4_50();
    v38(v37);
    v39 = *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR) + 48));

    goto LABEL_5;
  }

  if (v34 == enum case for Parse.directInvocation(_:))
  {
    v43 = OUTLINED_FUNCTION_4_50();
    v44(v43);
    (*(v56 + 32))(v24, v33, v17);
    OUTLINED_FUNCTION_38_8();
    (*(v45 + 152))(v24);
    (*(v56 + 8))(v24, v17);
    goto LABEL_7;
  }

  if (v34 != enum case for Parse.uso(_:))
  {
    v51 = *(v52 + 80);
    static Array._allocateUninitialized(_:)();
    (*(v28 + 8))(v33, v25);
    goto LABEL_7;
  }

  v46 = OUTLINED_FUNCTION_4_50();
  v47(v46);
  v16 = v53;
  v11 = v54;
  v48 = OUTLINED_FUNCTION_16_31();
  v8 = v55;
  v49(v48);
  OUTLINED_FUNCTION_38_8();
  (*(v50 + 136))(v53);
LABEL_6:
  (*(v11 + 8))(v16, v8);
LABEL_7:
  OUTLINED_FUNCTION_42();
}

void InputToDisambiguationItemsConverter.usoToChosenItems(usoParse:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_38_8();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v50 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = OUTLINED_FUNCTION_7_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  USOParse.userParse.getter();
  v26 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v11 + 8))(v16, v8);
  specialized Collection.first.getter(v26, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v27, static Logger.voiceCommands);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v29))
    {
      v30 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v30);
      OUTLINED_FUNCTION_24_12(&dword_0, v31, v32, "#InputToDisambiguationItemsConverter: could not get userDialogAct from parse");
      OUTLINED_FUNCTION_15_0();
    }

    v33 = *(v3 + 80);
    static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v20 + 32))(v25, v7, v17);
    v34 = *(v1 + 24);
    v35 = *(v3 + 80);
    v36 = Array.count.getter();
    Siri_Nlu_External_UserDialogAct.listPositionValue(totalLength:)(v36);
    v37 = InputToDisambiguationItemsConverter.getItemsFromReferences(references:)();

    v50[0] = v37;
    OUTLINED_FUNCTION_17_28();
    type metadata accessor for Array();
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {

      v38 = InputToDisambiguationItemsConverter.getStringFromUSOParse(uda:)(v25);
      if (v39)
      {
        v40 = v38;
        v41 = v39;
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v42 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_59(v42, static Logger.voiceCommands);

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = OUTLINED_FUNCTION_48();
          v46 = OUTLINED_FUNCTION_85();
          v50[0] = v46;
          *v45 = 136315138;
          *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v50);
          _os_log_impl(&dword_0, v43, v44, "#InputToDisambiguationItemsConverter: usoToChosenItems retrieving disambiguation item with title: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_15_0();
        }

        InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v40, v41, 0);
      }

      else
      {
        OUTLINED_FUNCTION_17_28();
        static Array._allocateUninitialized(_:)();
      }
    }

    v47 = *(v20 + 8);
    v48 = OUTLINED_FUNCTION_0_23();
    v49(v48);
  }

  OUTLINED_FUNCTION_42();
}

void InputToDisambiguationItemsConverter.stringToChosenItems(option:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_85();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v9);
    _os_log_impl(&dword_0, v5, v6, "#InputToDisambiguationItemsConverter: smartPromptToChosenItems retrieving smart prompt item with title %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(a1, a2, 0);
}

uint64_t InputToDisambiguationItemsConverter.directInvocationToChosenItems(directInvocation:)()
{
  v1 = *v0;
  v2 = Parse.DirectInvocation.userData.getter();
  if (v2 && (static SLFDisambiguationItemConverter.toTitle(userData:)(v2), v4 = v3, , v4))
  {
    v5 = OUTLINED_FUNCTION_0_23();
    InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v5, v6, 1);
    v8 = v7;

    return v8;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_50(v12))
    {
      v13 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_18_11(v13);
      OUTLINED_FUNCTION_29_7(&dword_0, v14, v15, "#InputToDisambiguationItemsConverter: received unknown directInvocation");
      OUTLINED_FUNCTION_15_0();
    }

    v16 = *(v1 + 80);

    return static Array._allocateUninitialized(_:)();
  }
}

uint64_t InputToDisambiguationItemsConverter.nlv3IntentToChosenItems(nlIntent:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for VoiceCommandsNLIntent(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = type metadata accessor for NLIntent();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  if (one-time initialization token for voiceCommandReferenceNode != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent();
  IntentNodeTraversable.value<A>(forNode:)();
  v11 = v2[3];
  v12 = *(v4 + 80);
  v13 = Array.count.getter();
  static InputUtils.convertVoiceCommandReferenceToIndex(reference:lastInd:)(v26, v13);
  v14 = InputToDisambiguationItemsConverter.getItemsFromReferences(references:)();

  OUTLINED_FUNCTION_17_28();
  type metadata accessor for Array();
  OUTLINED_FUNCTION_1_4();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {

    if (one-time initialization token for voiceCommandTextNode != -1)
    {
      swift_once();
    }

    IntentNodeTraversable.value<A>(forNode:)();
    if (v28)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v15 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_59(v15, static Logger.voiceCommands);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_48();
        v27 = OUTLINED_FUNCTION_85();
        *v18 = 136315138;
        v19 = OUTLINED_FUNCTION_0_23();
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v21);
        _os_log_impl(&dword_0, v16, v17, "#InputToDisambiguationItemsConverter nlv3IntentToChosenItems: retrieving disambiguation item with title: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      v22 = OUTLINED_FUNCTION_0_23();
      InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(v22, v23, 0);
      v14 = v24;
    }

    else
    {
      OUTLINED_FUNCTION_17_28();
      v14 = static Array._allocateUninitialized(_:)();
    }
  }

  outlined destroy of VoiceCommandsNLIntent(v9);
  return v14;
}

void InputToDisambiguationItemsConverter.getItemsFromTitle(title:requiresExactMatch:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *v3;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v9))
  {
    v10 = OUTLINED_FUNCTION_48();
    *v10 = 134217984;
    v11 = v4[2];
    v12 = *(v6 + 80);
    *(v10 + 4) = Array.count.getter();

    _os_log_impl(&dword_0, v8, v9, "#InputToDisambiguationItemsConverter: Searching %ld disambiguation items for query.", v10, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    v12 = *(v6 + 80);
  }

  v13 = *(v6 + 88);
  OUTLINED_FUNCTION_7_32();
  type metadata accessor for ExactMatcher();
  v14 = DescribeCustomIntentItemCatTemplater.__allocating_init()();
  v15 = v4[2];
  v16 = *(*v14 + 96);
  v17 = OUTLINED_FUNCTION_0_23();
  v19 = v18(v17);

  if (!v19)
  {
    if (a3)
    {
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v28))
      {
        v29 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v29);
        v32 = "#InputToDisambiguationItemsConverter: only exact matches requested, none found.";
LABEL_21:
        OUTLINED_FUNCTION_29_7(&dword_0, v30, v31, v32);
        OUTLINED_FUNCTION_15_0();
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_32();
      type metadata accessor for PartialMatcher();
      v33 = *(*DescribeCustomIntentItemCatTemplater.__allocating_init()() + 96);
      v34 = OUTLINED_FUNCTION_0_23();
      v36 = v35(v34);

      if (v36)
      {
        goto LABEL_23;
      }

      v55 = static LocaleUtils.siriLanguageCode()();
      v56 = v37;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_50(v39))
      {
        v40 = OUTLINED_FUNCTION_48();
        v54 = v38;
        v41 = OUTLINED_FUNCTION_85();
        v57[0] = v41;
        *v40 = 136315138;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v57);
        _os_log_impl(&dword_0, v54, v39, "#InputToDisambiguationItemsConverter: Current siri language: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_15_0();
      }

      else
      {
      }

      v43 = v4[4];
      v57[0] = v55;
      v57[1] = v56;
      __chkstk_darwin(v42);
      v53[2] = v57;
      v45 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v53, v44);

      if (v45)
      {
        OUTLINED_FUNCTION_7_32();
        type metadata accessor for TfIdfFuzzyMatcher();
        TfIdfFuzzyMatcher.__allocating_init()();
        v47 = *(*v46 + 112);
        v48 = OUTLINED_FUNCTION_0_23();
        v50 = v49(v48);

        if (v50)
        {
          goto LABEL_23;
        }
      }

      v27 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_50(v51))
      {
        v52 = OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_18_11(v52);
        v32 = "#InputToDisambiguationItemsConverter: No items matched the input query.";
        goto LABEL_21;
      }
    }

    static Array._allocateUninitialized(_:)();
LABEL_23:
    OUTLINED_FUNCTION_42();
    return;
  }

  v20 = getContiguousArrayStorageType<A>(for:)(v12, v12);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = *(*(v12 - 8) + 72);
  v24 = *(*(v12 - 8) + 80);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  Array.subscript.getter();

  OUTLINED_FUNCTION_42();

  _finalizeUninitializedArray<A>(_:)(v25);
}

uint64_t InputToDisambiguationItemsConverter.getItemsFromReferences(references:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v2 = *(v1 + 80);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in InputToDisambiguationItemsConverter.getItemsFromReferences(references:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a1 < 0)
  {
    v7 = *(v4 + 80);
    goto LABEL_5;
  }

  v6 = a2[3];
  v7 = *(v4 + 80);
  v5 = *a1;
  if (v5 >= Array.count.getter())
  {
LABEL_5:
    v8 = a3;
    v9 = 1;
    return __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
  }

  Array.subscript.getter();
  v8 = a3;
  v9 = 0;
  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

uint64_t InputToDisambiguationItemsConverter.getStringFromUSOParse(uda:)(os_log_type_t a1)
{
  v2 = Siri_Nlu_External_UserDialogAct.stringValue.getter();
  v5 = v3;
  if (v3)
  {
    v4 = v2;
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v6, static Logger.voiceCommands);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_48();
      v10 = OUTLINED_FUNCTION_85();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v16);
      _os_log_impl(&dword_0, v7, v8, "#InputToDisambiguationItemsConverter: got stringValue: %s from USO parse", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v12 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v12, static Logger.voiceCommands);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_17_11(v14))
    {
      v15 = OUTLINED_FUNCTION_52();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, a1, "#InputToDisambiguationItemsConverter: could not get string value from payload", v15, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    return 0;
  }

  return v4;
}

void *InputToDisambiguationItemsConverter.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t InputToDisambiguationItemsConverter.__deallocating_deinit()
{
  InputToDisambiguationItemsConverter.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t LNDialog.asSpeakableString.getter(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for ResponseMode();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(LNDialog.asSpeakableString.getter, 0, 0);
}

uint64_t LNDialog.asSpeakableString.getter()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LNDialog.asSpeakableString.getter;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo14LNDialogResult_ps5Error_pGMd, &_sSccySo14LNDialogResult_ps5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDialogResult?, @unowned NSError?) -> () with result type LNDialogResult;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 getResultWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = LNDialog.asSpeakableString.getter;
  }

  else
  {
    v3 = LNDialog.asSpeakableString.getter;
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[18];
  v6 = [v5 captionPrint];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v0[19] = v7;
  v8 = v0 + 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentRequest.getter();

  CurrentRequest.responseMode.getter();

  static ResponseMode.voiceForward.getter();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode();
  LOBYTE(v6) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v2, v4);
  v10 = v0[27];
  if (v6)
  {
    v9(v0[27], v0[24]);
    v11 = &selRef_speak;
  }

  else
  {
    v12 = v0[26];
    v13 = v0[24];
    static ResponseMode.voiceOnly.getter();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v9(v12, v13);
    v9(v10, v13);
    v11 = &selRef_captionSpeak;
    if (v14)
    {
      v11 = &selRef_speak;
    }

    else
    {
      v8 = v0 + 20;
    }
  }

  v15 = v0[22];
  v16 = [v5 *v11];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v17;
  BidirectionalCollection<>.joined(separator:)();

  SpeakableString.init(print:speak:)();
  swift_unknownObjectRelease();
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[22];
  v21 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);

  v22 = v0[1];

  return v22();
}

{
  v1 = v0[28];
  swift_willThrow();

  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[22];
  v5 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned LNDialogResult?, @unowned NSError?) -> () with result type LNDialogResult(uint64_t a1, uint64_t a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, a3);
  }

  if (a2)
  {
    swift_unknownObjectRetain();
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional __swiftcall WorkflowRunnerCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATPatternsIdentifiers@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = WorkflowRunnerCATPatternsIdentifiers.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v5;
  return result;
}

uint64_t WorkflowRunnerFinalDoneParameters.device.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.setter()
{
  return WorkflowRunnerFinalDoneParameters.intentVerb.setter();
}

{
  v0 = OUTLINED_FUNCTION_92();
  v2 = *(v1(v0) + 24);
  v3 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerFinalDoneParameters(v0) + 24);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.setter()
{
  return WorkflowRunnerFinalDoneParameters.localizedAppName.setter();
}

{
  v0 = OUTLINED_FUNCTION_92();
  v2 = *(v1(v0) + 28);
  v3 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerFinalDoneParameters(v0) + 28);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.asKeyValuePairs()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_15_26();
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_12_28(v10, xmmword_21A520);
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v11 = v2;
  }

  else
  {
    v11 = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v11;
  OUTLINED_FUNCTION_26_3();
  *(v10 + 72) = v12;
  *(v10 + 80) = 0xD000000000000017;
  *(v10 + 88) = v13;
  *(v10 + 96) = *(v1 + 8);
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 128) = 0x6556746E65746E69;
  *(v10 + 136) = 0xEA00000000006272;
  done = type metadata accessor for WorkflowRunnerFinalDoneParameters(0);
  outlined init with copy of AppDisplayInfo?(v1 + *(done + 24), v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_32(v9);
  if (v16)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v15;
    __swift_allocate_boxed_opaque_existential_1((v10 + 144));
    OUTLINED_FUNCTION_8_32();
    (*(v17 + 32))();
  }

  OUTLINED_FUNCTION_26_3();
  *(v10 + 176) = 0xD000000000000010;
  *(v10 + 184) = v18;
  v19 = OUTLINED_FUNCTION_18_28(*(done + 28));
  outlined init with copy of AppDisplayInfo?(v19, v20, v21, v22);
  OUTLINED_FUNCTION_16_32(v0);
  if (v16)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v15;
    __swift_allocate_boxed_opaque_existential_1((v10 + 192));
    OUTLINED_FUNCTION_8_32();
    (*(v23 + 32))();
  }

  return v10;
}

uint64_t WorkflowRunnerFinalDoneParameters.intentVerb.getter(uint64_t (*a1)(void))
{
  v1 = a1(0);
  v2 = OUTLINED_FUNCTION_18_28(*(v1 + 24));
  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t WorkflowRunnerInputTextParameters.inputType.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerInputTextParameters(v0) + 24);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerFinalDoneParameters.localizedAppName.getter(uint64_t (*a1)(void))
{
  v1 = a1(0);
  v2 = OUTLINED_FUNCTION_18_28(*(v1 + 28));
  return outlined init with copy of AppDisplayInfo?(v2, v3, v4, v5);
}

uint64_t WorkflowRunnerInputTextParameters.message.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerInputTextParameters(v0) + 28);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerInputTextParameters.asKeyValuePairs()()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_15_26();
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_12_28(v10, xmmword_21A520);
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v11 = v2;
  }

  else
  {
    v11 = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v11;
  OUTLINED_FUNCTION_26_3();
  *(v10 + 72) = v12;
  *(v10 + 80) = 0xD000000000000017;
  *(v10 + 88) = v13;
  *(v10 + 96) = *(v1 + 8);
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 128) = 0x7079547475706E69;
  *(v10 + 136) = 0xE900000000000065;
  v14 = type metadata accessor for WorkflowRunnerInputTextParameters(0);
  outlined init with copy of AppDisplayInfo?(v1 + *(v14 + 24), v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_16_32(v9);
  if (v16)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v15;
    __swift_allocate_boxed_opaque_existential_1((v10 + 144));
    OUTLINED_FUNCTION_8_32();
    (*(v17 + 32))();
  }

  OUTLINED_FUNCTION_26_23();
  *(v10 + 176) = v18;
  *(v10 + 184) = 0xE700000000000000;
  v19 = OUTLINED_FUNCTION_18_28(*(v14 + 28));
  outlined init with copy of AppDisplayInfo?(v19, v20, v21, v22);
  OUTLINED_FUNCTION_16_32(v0);
  if (v16)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v15;
    __swift_allocate_boxed_opaque_existential_1((v10 + 192));
    OUTLINED_FUNCTION_8_32();
    (*(v23 + 32))();
  }

  return v10;
}

uint64_t WorkflowRunnerFinalDoneParameters.init(device:executeSashGroupOnWatch:intentVerb:localizedAppName:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = a5(0);
  outlined init with take of SpeakableString?(a3, a6 + *(v9 + 24));
  v10 = a6 + *(v9 + 28);

  return outlined init with take of SpeakableString?(a4, v10);
}

uint64_t WorkflowRunnerShowAlertParameters.message.getter()
{
  v0 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  v1 = OUTLINED_FUNCTION_18_28(*(v0 + 20));
  return outlined init with copy of AppDisplayInfo?(v1, v2, v3, v4);
}

uint64_t WorkflowRunnerShowAlertParameters.message.setter()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerShowAlertParameters(v0) + 20);
  v2 = OUTLINED_FUNCTION_24_21();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t WorkflowRunnerShowAlertParameters.message.modify()
{
  v0 = OUTLINED_FUNCTION_92();
  v1 = *(type metadata accessor for WorkflowRunnerShowAlertParameters(v0) + 20);
  return OUTLINED_FUNCTION_22_21();
}

uint64_t WorkflowRunnerShowAlertParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_216840;
  OUTLINED_FUNCTION_26_3();
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = v9;
  *(v8 + 48) = *v0;
  OUTLINED_FUNCTION_26_23();
  v10[9] = v12;
  v10[10] = v11;
  v10[11] = 0xE700000000000000;
  v13 = type metadata accessor for WorkflowRunnerShowAlertParameters(0);
  v14 = OUTLINED_FUNCTION_18_28(*(v13 + 20));
  outlined init with copy of AppDisplayInfo?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v16;
    __swift_allocate_boxed_opaque_existential_1((v7 + 96));
    OUTLINED_FUNCTION_21_2(v16);
    (*(v17 + 32))();
  }

  return v7;
}

uint64_t WorkflowRunnerShowAlertParameters.init(executeSashGroupOnWatch:message:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v2 = *(type metadata accessor for WorkflowRunnerShowAlertParameters(0) + 20);
  v3 = OUTLINED_FUNCTION_24_21();

  return outlined init with take of SpeakableString?(v3, v4);
}

uint64_t WorkflowRunnerCATPatternsExecutor.finalDone(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  done = type metadata accessor for WorkflowRunnerFinalDoneParameters(v4);
  *(v0 + 40) = done;
  OUTLINED_FUNCTION_14(done);
  v7 = *(v6 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_23_18();
  v3 = OUTLINED_FUNCTION_11_31(v2);
  v1(v3);
  *(v0 + 56) = WorkflowRunnerFinalDoneParameters.asKeyValuePairs()();
  v4 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_42(v4);

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_53();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_53();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t WorkflowRunnerCATPatternsExecutor.inputText(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for WorkflowRunnerInputTextParameters(v4);
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  v2 = OUTLINED_FUNCTION_23_18();
  v3 = OUTLINED_FUNCTION_11_31(v2);
  v1(v3);
  *(v0 + 56) = WorkflowRunnerInputTextParameters.asKeyValuePairs()();
  v4 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_42(v4);

  return v6(v5);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_53();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2_53();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t outlined destroy of WorkflowRunnerFinalDoneParameters()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21_2(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t WorkflowRunnerCATPatternsExecutor.showAlert(executeSashGroupOnWatch:_:)()
{
  OUTLINED_FUNCTION_8_0();
  v4 = OUTLINED_FUNCTION_7_33(v1, v2, v3);
  v5 = type metadata accessor for WorkflowRunnerShowAlertParameters(v4);
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 88);
  v5 = *(*(v0 + 40) + 20);
  v6 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(&v1[v5], 1, 1, v6);
  *v1 = v4;
  v3(v1);
  *(v0 + 56) = WorkflowRunnerShowAlertParameters.asKeyValuePairs()();
  v7 = OUTLINED_FUNCTION_22_3(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 64) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_0_42(v7);

  return v9(v8);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_60();

  v0 = OUTLINED_FUNCTION_9_28();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1_60();

  OUTLINED_FUNCTION_21_19();

  return v0();
}

uint64_t WorkflowRunnerCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return WorkflowRunnerCATPatternsExecutor.init(templateDir:options:globals:)(a1, a2);
}

uint64_t WorkflowRunnerCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_92();
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of AppDisplayInfo?(v2, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATPatternsIdentifiers and conformance WorkflowRunnerCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.finalDone(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = AutoShortcutCATsSimple.userDenied();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.inputText(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for WorkflowRunnerCATPatternsExecuting.showAlert(executeSashGroupOnWatch:_:) in conformance WorkflowRunnerCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for WorkflowRunnerCATPatternsExecutor + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v12(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A4774);
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

void type metadata accessor for SirikitDeviceState?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v7 = OUTLINED_FUNCTION_18_28(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_18_28(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for WorkflowRunnerFinalDoneParameters()
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4A58(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v8 = OUTLINED_FUNCTION_18_28(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

_BYTE *sub_1A4AFC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v6 = OUTLINED_FUNCTION_18_28(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void type metadata completion function for WorkflowRunnerShowAlertParameters()
{
  type metadata accessor for SirikitDeviceState?(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t OUTLINED_FUNCTION_0_42(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return 0xD000000000000018;
}

uint64_t OUTLINED_FUNCTION_1_60()
{
  v2 = *(v0 + 48);

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_2_53()
{
  v2 = *(v0 + 48);

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_3_53()
{
  v2 = *(v0 + 48);

  return outlined destroy of WorkflowRunnerFinalDoneParameters();
}

uint64_t OUTLINED_FUNCTION_7_33(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_11_31(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 28), 1, 1, a1);
  *v1 = 0;
  *(v1 + 8) = v3;
  return v1;
}

__n128 *OUTLINED_FUNCTION_12_28(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656369766564;
  result[2].n128_u64[1] = 0xE600000000000000;
  v3 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_18()
{
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = *(*(v0 + 40) + 24);

  return type metadata accessor for SpeakableString();
}

uint64_t IntroduceCustomIntentCatTemplater.makeTemplate(items:_:)(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TemplatingResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_0_43();
  TemplatingResult.init(dialogId:print:speak:)(0x7974706D65, 0xE500000000000000, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v2);
  (*(v9 + 16))(v7, v2, v8);
  swift_storeEnumTagMultiPayload();
  a2(v7);
  outlined destroy of String?(v7, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return (*(v9 + 8))(v2, v8);
}

uint64_t IntroduceCustomIntentOutputProvider.__allocating_init(items:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_0_43();
  (*(v14 + 16))(v5);
  v15 = a4(a1, a2, v5, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

uint64_t IntroduceCustomIntentOutputProvider.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[11];
  v6 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v5);
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v2;
  v9 = *(v6 + 8);

  v9(v7, partial apply for closure #1 in IntroduceCustomIntentOutputProvider.makeOutput(_:), v8, v5, v6);
}

uint64_t closure #1 in IntroduceCustomIntentOutputProvider.makeOutput(_:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AceOutput();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TemplatingResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v27 - v19);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v27 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v31 = *v20;
    v34 = 1;
    swift_errorRetain();
    a2(&v31);
  }

  else
  {
    v27 = v13;
    v28 = v12;
    (*(v13 + 32))(v16, v20, v12);
    v21 = a4[6];
    v22 = a4[7];
    __swift_project_boxed_opaque_existential_1(a4 + 3, v21);
    if ((*(v22 + 8))(v16, a4[2], v21, v22) >> 62)
    {
      type metadata accessor for SABaseCommand();
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SABaseCommand();
    }

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    AceOutput.init(commands:flowActivity:)();
    v23 = v29;
    *(&v32 + 1) = v29;
    v33 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
    v25 = v30;
    (*(v30 + 16))(boxed_opaque_existential_1, v11, v23);
    v34 = 0;
    a2(&v31);
    (*(v25 + 8))(v11, v23);
    (*(v27 + 8))(v16, v28);
  }

  return outlined destroy of String?(&v31, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

void *IntroduceCustomIntentOutputProvider.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  return v0;
}

uint64_t IntroduceCustomIntentOutputProvider.__deallocating_deinit()
{
  IntroduceCustomIntentOutputProvider.deinit();

  return swift_deallocClassInstance();
}

void *specialized IntroduceCustomIntentOutputProvider.__allocating_init(items:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntroduceCustomIntentOutputProvider();
  v15 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  v16 = specialized IntroduceCustomIntentOutputProvider.init(items:templating:viewBuilder:)(a1, a2, v14, v15, a5, a6);
  (*(v11 + 8))(a3, a5);
  return v16;
}

void *specialized IntroduceCustomIntentOutputProvider.init(items:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[6] = a5;
  a4[7] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 3);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[2] = a1;
  outlined init with take of Output(a2, a4 + 8);
  return a4;
}

uint64_t sub_1A5830()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t INImage.convertToVisualProperty()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR) - 8) + 64);
  v2[25] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for ImageElement.AspectRatio();
  v2[26] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v2[27] = v5;
  v7 = *(v6 + 64);
  v2[28] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for ImageElement.ImageStyle();
  v2[29] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v2[30] = v9;
  v11 = *(v10 + 64);
  v2[31] = OUTLINED_FUNCTION_28();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR) - 8) + 64);
  v2[32] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for ImageElement.RenderingMode();
  v2[33] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v2[34] = v14;
  v16 = *(v15 + 64);
  v2[35] = OUTLINED_FUNCTION_28();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR) - 8) + 64);
  v2[36] = OUTLINED_FUNCTION_28();
  v18 = type metadata accessor for ImageElement();
  v2[37] = v18;
  OUTLINED_FUNCTION_5_0(v18);
  v2[38] = v19;
  v21 = *(v20 + 64);
  v2[39] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(INImage.convertToVisualProperty(), 0, 0);
}

uint64_t INImage.convertToVisualProperty()()
{
  if ([*(v0 + 192) _isSystem])
  {
    outlined bridged method (pb) of @objc INImage._name.getter(*(v0 + 192));
    if (v1)
    {
      v63 = *(v0 + 296);
      v65 = *(v0 + 304);
      v2 = *(v0 + 272);
      v3 = *(v0 + 280);
      v53 = v3;
      v54 = *(v0 + 288);
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v57 = *(v0 + 312);
      v59 = v4;
      v6 = *(v0 + 240);
      v7 = *(v0 + 248);
      v8 = *(v0 + 232);
      v51 = v8;
      v61 = *(v0 + 184);
      type metadata accessor for Color();
      v9 = OUTLINED_FUNCTION_76_3();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
      (*(v2 + 104))(v3, enum case for ImageElement.RenderingMode.template(_:), v4);
      v11 = type metadata accessor for ImageElement.Background();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
      (*(v6 + 104))(v7, enum case for ImageElement.ImageStyle.default(_:), v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v12 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_7_1(v12);
      v14 = v13;
      v16 = *(v15 + 72);
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_216850;
      (*(v14 + 104))(v18 + v17, enum case for _ProtoIdiom.default(_:), v12);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v18);
      static ImageElement.symbol(_:darkModeName:tintColor:renderingMode:imageStyle:background:idioms:punchesThroughBackground:)();

      (*(v6 + 8))(v7, v51);
      outlined destroy of String?(v5, &_s10SnippetKit12ImageElementV10BackgroundVSgMd, &_s10SnippetKit12ImageElementV10BackgroundVSgMR);
      (*(v2 + 8))(v53, v59);
      outlined destroy of String?(v54, &_s10SnippetKit5ColorVSgMd, &_s10SnippetKit5ColorVSgMR);
      VisualPropertyConvertible<>.asVisualProperty()();
      (*(v65 + 8))(v57, v63);
      type metadata accessor for VisualProperty();
      v19 = OUTLINED_FUNCTION_76_3();
      goto LABEL_14;
    }
  }

  if (![*(v0 + 192) _requiresRetrieval])
  {
    v23 = *(v0 + 192);
    v24 = outlined bridged method (pb) of @objc INImage._imageData.getter(v23);
    v64 = v25;
    v66 = v24;
    if (v25 >> 60 == 15)
    {
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.voiceCommands);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_32(&dword_0, v29, v30, "image data is empty");
        OUTLINED_FUNCTION_15_0();

        outlined consume of Data?(v66, v64);
      }

      else
      {

        v27 = v23;
      }

      v48 = *(v0 + 184);

      type metadata accessor for VisualProperty();
      v19 = OUTLINED_FUNCTION_76_3();
      v47 = 1;
      goto LABEL_17;
    }

    v60 = *(v0 + 304);
    v62 = *(v0 + 296);
    v31 = *(v0 + 240);
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v52 = *(v0 + 312);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v58 = v35;
    v37 = *(v0 + 200);
    v55 = v33;
    v56 = *(v0 + 184);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_13_26();
    ImageElement.AspectRatio.init(width:height:)();
    (*(v35 + 16))(v37, v33, v36);
    OUTLINED_FUNCTION_10_35();
    v38 = OUTLINED_FUNCTION_8_33();
    v39(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
    v40 = type metadata accessor for _ProtoIdiom();
    OUTLINED_FUNCTION_7_1(v40);
    v42 = v41;
    v44 = *(v43 + 72);
    v45 = OUTLINED_FUNCTION_4_51();
    *(v45 + 16) = xmmword_216850;
    (*(v42 + 104))(v45 + v32, enum case for _ProtoIdiom.default(_:), v40);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v45);
    OUTLINED_FUNCTION_5_35();
    OUTLINED_FUNCTION_12_29();

    (*(v31 + 8))(v32, v34);
    outlined destroy of String?(v37, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_216850;
    *(v46 + 56) = type metadata accessor for VisualElement();
    *(v46 + 64) = &protocol witness table for VisualElement;
    __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    ImageElement.asVisualElement()();
    VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
    outlined consume of Data?(v66, v64);

    (*(v60 + 8))(v52, v62);
    (*(v58 + 8))(v55, v36);
    v20 = type metadata accessor for VisualProperty();
    v19 = v56;
LABEL_14:
    v47 = 0;
LABEL_17:
    __swift_storeEnumTagSinglePayload(v19, v47, 1, v20);
    OUTLINED_FUNCTION_2_54();

    v49 = *(v0 + 8);

    return v49();
  }

  v21 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = INImage.convertToVisualProperty();
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7INImageCSgs5Error_pGMd, &_sSccySo7INImageCSgs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?;
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v22;
  [v21 _retrieveImageDataWithReply:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = INImage.convertToVisualProperty();
  }

  else
  {
    v3 = INImage.convertToVisualProperty();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = outlined bridged method (pb) of @objc INImage._imageData.getter(v2);
    v43 = v4;
    v44 = v3;
    if (v4 >> 60 != 15)
    {
      v41 = v0[38];
      v42 = v0[37];
      v17 = v0[30];
      v18 = v0[31];
      v19 = v0[28];
      v20 = v0[29];
      v37 = v0[39];
      v22 = v0[26];
      v21 = v0[27];
      v40 = v21;
      v23 = v0[25];
      v38 = v19;
      v39 = v0[23];
      OUTLINED_FUNCTION_13_26();
      OUTLINED_FUNCTION_13_26();
      ImageElement.AspectRatio.init(width:height:)();
      (*(v21 + 16))(v23, v19, v22);
      OUTLINED_FUNCTION_10_35();
      v24 = OUTLINED_FUNCTION_8_33();
      v25(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit11_ProtoIdiomOGMR);
      v26 = type metadata accessor for _ProtoIdiom();
      OUTLINED_FUNCTION_7_1(v26);
      v28 = v27;
      v30 = *(v29 + 72);
      v31 = OUTLINED_FUNCTION_4_51();
      *(v31 + 16) = xmmword_216850;
      (*(v28 + 104))(v31 + v18, enum case for _ProtoIdiom.default(_:), v26);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(v31);
      OUTLINED_FUNCTION_5_35();
      OUTLINED_FUNCTION_12_29();

      (*(v17 + 8))(v18, v20);
      outlined destroy of String?(v23, &_s10SnippetKit12ImageElementV11AspectRatioVSgMd, &_s10SnippetKit12ImageElementV11AspectRatioVSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_216850;
      *(v32 + 56) = type metadata accessor for VisualElement();
      *(v32 + 64) = &protocol witness table for VisualElement;
      __swift_allocate_boxed_opaque_existential_1((v32 + 32));
      ImageElement.asVisualElement()();
      VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
      outlined consume of Data?(v44, v43);

      (*(v41 + 8))(v37, v42);
      (*(v40 + 8))(v38, v22);
      v15 = type metadata accessor for VisualProperty();
      v16 = v39;
      v33 = 0;
      goto LABEL_16;
    }

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.voiceCommands);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_32(&dword_0, v8, v9, "image data is empty");
      OUTLINED_FUNCTION_15_0();

      outlined consume of Data?(v44, v43);
    }

    else
    {

      v6 = v2;
    }

    v34 = v0[23];

    type metadata accessor for VisualProperty();
    v16 = OUTLINED_FUNCTION_76_3();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Can't retrieve image;", v13, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v14 = v0[23];

    v15 = type metadata accessor for VisualProperty();
    v16 = v14;
  }

  v33 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v16, v33, 1, v15);
  OUTLINED_FUNCTION_2_54();

  v35 = v0[1];

  return v35();
}

{
  v21 = v0;
  v1 = v0[40];
  swift_willThrow();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = v0[40];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[20];
    v13 = Error.localizedDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v4, v5, "Error retrieving image data %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v16 = v0[23];
  v17 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  OUTLINED_FUNCTION_2_54();

  v18 = v0[1];

  return v18();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned INImage?, @unowned NSError?) -> () with result type INImage?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, v6);
  }

  else
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, a2);
  }
}

uint64_t ImageElement.convertToVisualProperty()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit24VisualElementConvertible_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_216850;
  *(v0 + 56) = type metadata accessor for VisualElement();
  *(v0 + 64) = &protocol witness table for VisualElement;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  ImageElement.asVisualElement()();
  return VisualProperty.init(_:safeForLogging:focusAction:selectedAction:)();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SnippetKit11_ProtoIdiomO_Tt0gq5(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoIdiom();
  v3 = OUTLINED_FUNCTION_7_1(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v32 - v10;
  if (!*(a1 + 16))
  {
    v12 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMd, &_ss11_SetStorageCy10SnippetKit11_ProtoIdiomOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v12 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v40 = result + 56;
  v14 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v14 + 32) & ~v14);
  v39 = v37 + 16;
  v15 = (v37 + 8);
  v33 = (v37 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v37 + 72);
    v38 = v13 + 1;
    v17 = *(v37 + 16);
    v17(v41, v35 + v16 * v13, v2);
    v18 = v12[5];
    lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom);
    v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v40 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v9, v12[6] + v21 * v16, v2);
      lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(&lazy protocol witness table cache variable for type _ProtoIdiom and conformance _ProtoIdiom);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *v15;
      (*v15)(v9, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v28 = v41;
    *(v40 + 8 * v22) = v24 | v23;
    result = (*v33)(v12[6] + v21 * v16, v28, v2);
    v29 = v12[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v12[2] = v31;
LABEL_12:
    v13 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t outlined bridged method (pb) of @objc INImage._imageData.getter(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INImage._name.getter(void *a1)
{
  v1 = [a1 _name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t lazy protocol witness table accessor for type _ProtoIdiom and conformance _ProtoIdiom(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ProtoIdiom();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_54()
{
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[25];
}

uint64_t OUTLINED_FUNCTION_4_51()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void OUTLINED_FUNCTION_11_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_12_29()
{

  return static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)();
}

id OUTLINED_FUNCTION_13_26()
{
  v3 = *(v1 + 2528);

  return [v0 v3];
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional __swiftcall WorkflowRunnerCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.Properties()
{
  OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.Properties.rawValue.getter();
  *v0 = 0xD000000000000018;
  v0[1] = v2;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputDate(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_0_44(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
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

  v13 = v1[6];
  v14 = v1[4];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v15;
  v2[17] = v16;
  outlined init with copy of SpeakableString?(v17, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v26 = v21;
  v22 = swift_task_alloc();
  v1[9] = v22;
  *v22 = v1;
  v22[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v23 = v1[5];
  v24 = OUTLINED_FUNCTION_17_29();

  return v26(v24);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x54646E4165746164;
      break;
    case 3:
      result = OUTLINED_FUNCTION_22_22();
      break;
    case 4:
      result = 1701669236;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkflowRunnerCATsSimple.InputDateDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.InputDateDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputDateDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.InputDateDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.InputDateDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.InputDateDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputDateAsLabels(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_0_44(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
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

  v13 = v1[6];
  v14 = v1[4];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v15;
  v2[17] = v16;
  outlined init with copy of SpeakableString?(v17, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v27 = v21;
  v22 = swift_task_alloc();
  v1[9] = v22;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v22 = v23;
  v22[1] = WorkflowRunnerCATsSimple.inputDateAsLabels(device:inputType:message:);
  v24 = v1[5];
  v25 = OUTLINED_FUNCTION_16_33();

  return v27(v25);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_83_1();

    v12 = OUTLINED_FUNCTION_18_2();

    return v13(v12);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputDateDialogIds and conformance WorkflowRunnerCATsSimple.InputDateDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputText(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_0_44(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
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

  v13 = v1[6];
  v14 = v1[4];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v15;
  v2[17] = v16;
  outlined init with copy of SpeakableString?(v17, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v26 = v21;
  v22 = swift_task_alloc();
  v1[9] = v22;
  *v22 = v1;
  v22[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v23 = v1[5];
  v24 = OUTLINED_FUNCTION_17_29();

  return v26(v24);
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t WorkflowRunnerCATsSimple.InputTextDialogIds.rawValue.getter(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x7265626D756ELL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_22_22();
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkflowRunnerCATsSimple.InputTextDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.InputTextDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::InputTextDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.InputTextDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.InputTextDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.InputTextDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.inputTextAsLabels(device:inputType:message:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_32_4(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_27();
  *(v0 + 56) = OUTLINED_FUNCTION_82_4(v7);
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_64_3(v4);
  v6 = OUTLINED_FUNCTION_1_3(v5, xmmword_218630);
  if (v3)
  {
    v6 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    v2[7] = 0;
    v2[8] = 0;
  }

  OUTLINED_FUNCTION_0_44(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_22(v8);
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

  v13 = v1[6];
  v14 = v1[4];
  OUTLINED_FUNCTION_1_61();
  v2[16] = v15;
  v2[17] = v16;
  outlined init with copy of SpeakableString?(v17, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14_19();
  if (v9)
  {
    outlined destroy of String?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
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

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v27 = v21;
  v22 = swift_task_alloc();
  v1[9] = v22;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v22 = v23;
  v22[1] = WorkflowRunnerCATsSimple.inputDate(device:inputType:message:);
  v24 = v1[5];
  v25 = OUTLINED_FUNCTION_16_33();

  return v27(v25);
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.InputTextDialogIds and conformance WorkflowRunnerCATsSimple.InputTextDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.showAlert(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v16 = v11;
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = WorkflowRunnerCATsSimple.showAlert(message:);
  v13 = v0[3];
  v14 = OUTLINED_FUNCTION_17_29();

  return v16(v14);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional __swiftcall WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 == 1)
  {
    v4.value = SiriLinkFlowPlugin_WorkflowRunnerCATsSimple_ShowAlertDialogIds_custom;
  }

  else
  {
    v4.value = SiriLinkFlowPlugin_WorkflowRunnerCATsSimple_ShowAlertDialogIds_unknownDefault;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t WorkflowRunnerCATsSimple.ShowAlertDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x61756E69746E6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::WorkflowRunnerCATsSimple::ShowAlertDialogIds_optional *a2@<X8>)
{
  result.value = WorkflowRunnerCATsSimple.ShowAlertDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = WorkflowRunnerCATsSimple.ShowAlertDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t WorkflowRunnerCATsSimple.showAlertAsLabels(message:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_216850;
  OUTLINED_FUNCTION_1_61();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of String?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v17 = v11;
  v12 = swift_task_alloc();
  v0[6] = v12;
  lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v12 = v13;
  v12[1] = WorkflowRunnerCATsSimple.showAlertAsLabels(message:);
  v14 = v0[3];
  v15 = OUTLINED_FUNCTION_16_33();

  return v17(v15);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_18_2();

    return v15(v14);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.ShowAlertDialogIds and conformance WorkflowRunnerCATsSimple.ShowAlertDialogIds);
  }

  return result;
}

uint64_t WorkflowRunnerCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return WorkflowRunnerCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t WorkflowRunnerCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_39_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of SpeakableString?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of String?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

uint64_t WorkflowRunnerCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_58_0();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  return v7;
}

uint64_t WorkflowRunnerCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_39_2(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_58_0();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_63_0();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkflowRunnerCATsSimple.Properties and conformance WorkflowRunnerCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for WorkflowRunnerCATsSimple()
{
  result = type metadata singleton initialization cache for WorkflowRunnerCATsSimple;
  if (!type metadata singleton initialization cache for WorkflowRunnerCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A9030);
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

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.InputDateDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A9134);
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

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.InputTextDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1A9238);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WorkflowRunnerCATsSimple.ShowAlertDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1A933CLL);
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

uint64_t OUTLINED_FUNCTION_0_44(uint64_t result)
{
  v4 = *(v2 + 56);
  v5 = *(v2 + 24);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x7079547475706E69;
  v3[11] = 0xE900000000000065;
  return result;
}

SiriLinkFlowPlugin::Document __swiftcall Document.init(body:)(Swift::String body)
{
  v1 = String.lowercased()();

  countAndFlagsBits = v1._countAndFlagsBits;
  object = v1._object;
  result.body._object = object;
  result.body._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t TfIdfComputer.__allocating_init(documents:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TfIdfComputer.init(documents:)(a1);
  return v2;
}

BOOL Array<A>.isNullVector.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (!v1)
    {
      break;
    }

    v4 = *v2++;
    --v1;
  }

  while (v4 == 0.0);
  return v3 == 0;
}

double Array<A>.magnitude.getter(uint64_t a1)
{
  Array<A>.dot(other:)(a1, a1);

  return sqrt(v1);
}

uint64_t Array<A>.dot(other:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2 > *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v3 = (a2 + 32);
      v4 = (result + 32);
      v5 = 0.0;
      do
      {
        v6 = *v3++;
        v7 = v6;
        v8 = *v4++;
        v5 = v5 + v7 * v8;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void *TfIdfComputer.init(documents:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v1[2] = a1;

  v1[3] = static TfIdfComputer.idf(items:)(v5);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.voiceCommands);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = *(a1 + 16);

    *(v9 + 4) = v10;

    _os_log_impl(&dword_0, v7, v8, "[TfIdf] computing idf for %ld documents", v9, 0xCu);
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v2;
}

void *static TfIdfComputer.idf(items:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    v3 = _swiftEmptyArrayStorage;
    v4 = *(a1 + 16);
    do
    {
      v5 = *(v2 - 1);
      v6 = *v2;

      static TfIdfComputer.tokenize(_:)(v5, v6);
      v8 = v7;

      v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = v3[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v13;
      }

      v10 = v3[2];
      v11 = v10 + 1;
      if (v10 >= v3[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = v14;
      }

      v3[2] = v11;
      v3[v10 + 4] = v9;
      v2 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage[2];
    v3 = _swiftEmptyArrayStorage;
  }

  for (i = 0; v11 != i; i = v16)
  {
    if (i >= v3[2])
    {
      goto LABEL_50;
    }

    v16 = i + 1;
    v17 = v3[i + 4];

    specialized Array.append<A>(contentsOf:)(v18);
  }

  v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(_swiftEmptyArrayStorage);
  v20 = 0;
  v21 = v1;
  v22 = v19 + 56;
  v60 = v19;
  v23 = 1 << *(v19 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v19 + 56);
  v26 = (v23 + 63) >> 6;
  v58 = v26;
  v59 = v19 + 56;
  if (v25)
  {
    while (1)
    {
      v27 = v20;
LABEL_22:
      v28 = (*(v60 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v25)))));
      v30 = *v28;
      v29 = v28[1];
      v31 = v3[2];

      if (v31)
      {
        break;
      }

      v33 = 0.5;
LABEL_38:
      v42 = log10(v21 / v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
      v46 = _swiftEmptyDictionarySingleton[2];
      v47 = (v45 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_52;
      }

      v49 = v44;
      v50 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v48))
      {
        v51 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_54;
        }

        v49 = v51;
      }

      v25 &= v25 - 1;
      if (v50)
      {
        *(_swiftEmptyDictionarySingleton[7] + 8 * v49) = v42;
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v49 >> 6) + 8] |= 1 << v49;
        v53 = (_swiftEmptyDictionarySingleton[6] + 16 * v49);
        *v53 = v30;
        v53[1] = v29;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v49) = v42;
        v54 = _swiftEmptyDictionarySingleton[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_53;
        }

        _swiftEmptyDictionarySingleton[2] = v56;
      }

      v20 = v27;
      v26 = v58;
      v22 = v59;
      if (!v25)
      {
        goto LABEL_19;
      }
    }

    v32 = 0;
    v33 = 0.5;
    while (v32 < v3[2])
    {
      v34 = v3[v32 + 4];
      if (*(v34 + 16))
      {
        v35 = *(v34 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v36 = Hasher._finalize()();
        v37 = ~(-1 << *(v34 + 32));
        while (1)
        {
          v38 = v36 & v37;
          if (((*(v34 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
          {
            break;
          }

          v39 = (*(v34 + 48) + 16 * v38);
          if (*v39 != v30 || v39[1] != v29)
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v36 = v38 + 1;
            if ((v41 & 1) == 0)
            {
              continue;
            }
          }

          v33 = v33 + 1.0;
          goto LABEL_35;
        }
      }

LABEL_35:
      if (++v32 == v31)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_19:
  while (1)
  {
    v27 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return _swiftEmptyDictionarySingleton;
    }

    v25 = *(v22 + 8 * v27);
    ++v20;
    if (v25)
    {
      goto LABEL_22;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TfIdfComputer.vectorize(input:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v5 = v3 + 64;
  v4 = *(v3 + 64);
  v6 = *(v3 + 32);
  OUTLINED_FUNCTION_1_62();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v12 = 0;
  v13 = _swiftEmptyDictionarySingleton;
  v102 = v3 + 64;
  for (i = v3; v9; v5 = v102)
  {
LABEL_6:
    v15 = (*(v3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    v17 = *v15;
    v16 = v15[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v13;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
    v21 = v13[2];
    v22 = (v20 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_59;
    }

    v24 = v19;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_64;
      }

      v24 = v26;
    }

    v3 = i;
    if (v25)
    {

      v13 = v106;
      *(v106[7] + 8 * v24) = 0;
    }

    else
    {
      v13 = v106;
      OUTLINED_FUNCTION_2_55(&v106[v24 >> 6]);
      v28 = (v106[6] + 16 * v24);
      *v28 = v17;
      v28[1] = v16;
      *(v13[7] + 8 * v24) = 0;
      v29 = v13[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_60;
      }

      v13[2] = v31;
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v5 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_6;
    }
  }

  v32 = TfIdfComputer.tf(item:)(a1, a2);
  v33 = 0;
  v35 = v32 + 8;
  v34 = v32[8];
  v36 = *(v32 + 32);
  OUTLINED_FUNCTION_1_62();
  v39 = v38 & v37;
  v9 = (v40 + 63) >> 6;
  v41 = &unk_2B7000;
  v101 = v42;
LABEL_17:
  v43 = v33;
  v103 = v13;
  if (!v39)
  {
    goto LABEL_19;
  }

  do
  {
    v33 = v43;
LABEL_22:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v44 | (v33 << 6);
    v46 = (v32[6] + 16 * v45);
    v47 = *v46;
    v48 = v46[1];
    if (v13[2])
    {
      v49 = *(v32[7] + 8 * v45);

      v50 = OUTLINED_FUNCTION_3_54();
      specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
      if (v52)
      {
        v62 = 0.0;
        if (*(i + 16))
        {
          v63 = OUTLINED_FUNCTION_3_54();
          v65 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v64);
          if (v66)
          {
            v62 = *(*(i + 56) + 8 * v65);
          }
        }

        v67 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v13;
        v68 = OUTLINED_FUNCTION_3_54();
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v69);
        v71 = v13[2];
        v104 = v72;
        v73 = (v72 & 1) == 0;
        v74 = v71 + v73;
        if (__OFADD__(v71, v73))
        {
          __break(1u);
        }

        else
        {
          v75 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v67, v74))
          {
            v76 = OUTLINED_FUNCTION_3_54();
            v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77);
            v80 = v104;
            v32 = v101;
            if ((v104 & 1) != (v79 & 1))
            {
              goto LABEL_64;
            }

            v75 = v78;
          }

          else
          {
            v32 = v101;
            v80 = v104;
          }

          v81 = v49 * v62;
          if (v80)
          {

            v13 = v106;
            *(v106[7] + 8 * v75) = v81;
LABEL_45:
            v41 = &unk_2B7000;
            goto LABEL_17;
          }

          v13 = v106;
          OUTLINED_FUNCTION_2_55(&v106[v75 >> 6]);
          v82 = (v106[6] + 16 * v75);
          *v82 = v47;
          v82[1] = v48;
          *(v13[7] + 8 * v75) = v81;
          v83 = v13[2];
          v30 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (!v30)
          {
            v13[2] = v84;
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_64:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    if (v41[95] != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.voiceCommands);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v106 = v57;
      *v56 = 136315138;
      v58 = OUTLINED_FUNCTION_3_54();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v60);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_0, v54, v55, "[TfIdf] skipping token not in training data %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v32 = v101;
      OUTLINED_FUNCTION_15_0();
      v41 = &unk_2B7000;
      OUTLINED_FUNCTION_15_0();
    }

    else
    {
    }

    v43 = v33;
    v13 = v103;
  }

  while (v39);
LABEL_19:
  while (1)
  {
    v33 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v33 >= v9)
    {

      v106 = specialized _copyCollectionToContiguousArray<A>(_:)(v13);
      specialized MutableCollection<>.sort(by:)(&v106);
      v85 = v106;
      v86 = v106[2];
      if (v86)
      {
        v106 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v86, 0);
        v9 = v106;
        v87 = v106[2];
        v88 = 6;
        do
        {
          v89 = v85[v88];
          v106 = v9;
          v90 = *(v9 + 24);
          if (v87 >= v90 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v87 + 1, 1);
            v9 = v106;
          }

          *(v9 + 16) = v87 + 1;
          *(v9 + 8 * v87 + 32) = v89;
          v88 += 3;
          ++v87;
          --v86;
        }

        while (v86);
      }

      else
      {

        v9 = _swiftEmptyArrayStorage;
      }

      v13 = a2;
      if (v41[95] != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_54;
    }

    v39 = v35[v33];
    ++v43;
    if (v39)
    {
      goto LABEL_22;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  OUTLINED_FUNCTION_0_1();
  swift_once();
LABEL_54:
  v91 = type metadata accessor for Logger();
  __swift_project_value_buffer(v91, static Logger.voiceCommands);

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v94 = 136315394;
    *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, v13, &v106);
    *(v94 + 12) = 2080;
    v95 = Array.description.getter();
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v106);

    *(v94 + 14) = v97;
    _os_log_impl(&dword_0, v92, v93, "[TfIdf] vectorizing input: %s vector: %s", v94, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  return v9;
}

void static TfIdfComputer.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  [v4 setLanguage:NLLanguageEnglish];
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(a1, a2, v4);
  v5 = NLTokenizer.tokens(for:)();
  v6 = *(v5 + 16);
  if (v6)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v7 = (v5 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      String.subscript.getter();
      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v13 = _swiftEmptyArrayStorage[2];
      if (v13 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v7 += 2;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v12;
      --v6;
    }

    while (v6);
  }

  v15 = 0;
  v16 = _swiftEmptyArrayStorage[2];
LABEL_7:
  for (i = &_swiftEmptyArrayStorage[2 * v15 + 5]; ; i += 2)
  {
    if (v16 == v15)
    {

      return;
    }

    if (v15 >= _swiftEmptyArrayStorage[2])
    {
      break;
    }

    v19 = *(i - 1);
    v18 = *i;

    if (String.count.getter() > 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v21 = _swiftEmptyArrayStorage[2];
      if (v21 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v21 + 1;
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_7;
    }

    ++v15;
  }

  __break(1u);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    specialized Set._Variant.insert(_:)(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

void *TfIdfComputer.tf(item:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  static TfIdfComputer.tokenize(_:)(a1, a2);
  v5 = v4;
  v6 = 0;
  v25 = *(v4 + 16);
  for (i = (v4 + 40); ; i += 2)
  {
    if (v25 == v6)
    {

      return _swiftEmptyDictionarySingleton;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v13 = _swiftEmptyDictionarySingleton[2];
    v14 = (v12 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_14;
    }

    v16 = v11;
    v17 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSdGMd, &_ss17_NativeDictionaryVySSSdGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_16;
      }

      v16 = v18;
    }

    if ((v17 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_55(&_swiftEmptyDictionarySingleton[v16 >> 6]);
      v20 = (_swiftEmptyDictionarySingleton[6] + 16 * v16);
      *v20 = v9;
      v20[1] = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v16) = 0;
      v21 = _swiftEmptyDictionarySingleton[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_15;
      }

      _swiftEmptyDictionarySingleton[2] = v23;
    }

    *(_swiftEmptyDictionarySingleton[7] + 8 * v16) = *(_swiftEmptyDictionarySingleton[7] + 8 * v16) + 1.0;

    ++v6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TfIdfComputer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t TfIdfComputer.__deallocating_deinit()
{
  TfIdfComputer.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_218740;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setString:v4];
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}
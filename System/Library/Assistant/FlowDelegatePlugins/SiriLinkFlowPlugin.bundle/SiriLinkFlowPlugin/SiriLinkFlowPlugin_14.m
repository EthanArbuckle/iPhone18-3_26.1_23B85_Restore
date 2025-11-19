uint64_t specialized AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = type metadata accessor for CATOption();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v28 = a8;
  v29 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  outlined init with copy of DeviceState(a1, a7 + 16);
  outlined init with copy of DeviceState(a2, a7 + 56);
  outlined init with copy of DeviceState(a3, a7 + 232);
  outlined init with copy of DeviceState(a5, a7 + 96);
  outlined init with copy of DeviceState(a4, a7 + 136);
  type metadata accessor for WorkflowNLContextProvider();
  *(a7 + 184) = swift_allocObject();
  outlined init with copy of DeviceState(a5, v26);
  type metadata accessor for AutoShortcutCATs();
  static CATOption.defaultMode.getter();
  v20 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for AutoShortcutCATsSimple();
  static CATOption.defaultMode.getter();
  v21 = CATWrapperSimple.__allocating_init(options:globals:)();
  v22 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v23 = CATWrapper.__allocating_init(options:globals:)();
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for AutoShortcutDialogTemplating();
  v24 = swift_allocObject();
  v24[12] = v22;
  v24[13] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v24[9] = v23;
  outlined init with take of AceServiceInvokerAsync(v26, (v24 + 2));
  v24[7] = v20;
  v24[8] = v21;
  *(a7 + 176) = v24;
  outlined init with take of AceServiceInvokerAsync(&v27, a7 + 192);
  *(a7 + 272) = 0x80;
  return a7;
}

uint64_t sub_143234()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_27_6();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t partial apply for closure #1 in AutoShortcutFirstRunFlow.on(input:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in AutoShortcutFirstRunFlow.on(input:)(v3, v4, v5, v6);
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t specialized static AutoShortcutFirstRunFlow.getAppName(bundleId:appNameResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_13_1();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_3();
  (*(v10 + 16))(v15 - v14, v16, v17);
  if (a2)
  {
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    a1 = (*(a6 + 8))();
  }

  v18 = *(v10 + 8);
  v19 = OUTLINED_FUNCTION_48_2();
  v20(v19);
  return a1;
}

unint64_t type metadata accessor for LNAutoShortcutLocalizedPhrase()
{
  result = lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase;
  if (!lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AutoShortcutFirstRunFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutFirstRunFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
        JUMPOUT(0x1436CCLL);
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for AutoShortcutFirstRunFlow.State(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *destructiveInjectEnumTag for AutoShortcutFirstRunFlow.State(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t sub_143758()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  OUTLINED_FUNCTION_23_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 80);

  return closure #1 in closure #1 in static AutoShortcutFirstRunFlow.isAutoShortcutsEnabledFor(bundleId:voiceShortcutsClient:)(a1, a2);
}

uint64_t OUTLINED_FUNCTION_18_23(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = *(v24 + 192);
  v27 = *(v24 + 336);
  *(*(v24 + 200) + 272) = v27 & 1 | 0x40;

  return static InstrumentationUtils.emitFirstRunConfirmationEndedInstrumentation(enabled:)(v27 & 1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t OUTLINED_FUNCTION_30_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return specialized AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)(v14, v13, v12, v11, v10, v16, v9, v15, a9);
}

uint64_t OUTLINED_FUNCTION_35_12()
{
  v2 = *(v0 + 192);
  *(*(v0 + 200) + 272) = -127;

  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t OUTLINED_FUNCTION_36_9()
{
  v2 = *(v0 + 192);
  *(*(v0 + 200) + 272) = 0x80;

  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t OUTLINED_FUNCTION_44_11(float a1)
{
  *v2 = a1;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = *(v4 + 32);
  return v3;
}

uint64_t OUTLINED_FUNCTION_50_5()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
}

uint64_t OUTLINED_FUNCTION_51_8()
{
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
}

uint64_t OUTLINED_FUNCTION_63_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void __swiftcall AutoShortcutAppPhrasesViewModel.init(shortcutPhrases:maxPhrases:bundleId:prompt:moreShortcutsLabel:footnoteLabel:)(SiriLinkFlowPlugin::AutoShortcutAppPhrasesViewModel *__return_ptr retstr, Swift::OpaquePointer shortcutPhrases, Swift::Int maxPhrases, Swift::String bundleId, Swift::String prompt, Swift::String_optional moreShortcutsLabel, Swift::String_optional footnoteLabel)
{
  retstr->shortcutPhrases = shortcutPhrases;
  retstr->maxPhrases = maxPhrases;
  retstr->bundleId = bundleId;
  retstr->prompt = prompt;
  retstr->moreShortcutsLabel = moreShortcutsLabel;
  retstr->footnoteLabel = footnoteLabel;
}

uint64_t AutoShortcutAppPhrasesViewModel.moreShortcutsLabel.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutAppPhrasesViewModel.footnoteLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_22();
}

unint64_t AutoShortcutAppPhrasesViewModel.punchoutURL.getter()
{
  _StringGuts.grow(_:)(27);

  String.append(_:)(v0[1]);
  return 0xD000000000000019;
}

void *AutoShortcutAppPhrasesViewModel.displayPhrases.getter()
{
  v3 = *v0;
  v2 = v0[1];
  if (v2 < *(*v0 + 16))
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      specialized Array.subscript.getter(0, v2, *v0);
      v3 = v4;
      v1 = v5;
      if ((v5 & 1) == 0)
      {
LABEL_4:
        v6 = OUTLINED_FUNCTION_22();
        specialized _copyCollectionToContiguousArray<A>(_:)(v6, v7, v3, v1);
        v9 = v8;
        swift_unknownObjectRelease();
        return v9;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {
        swift_unknownObjectRelease();
        v12 = _swiftEmptyArrayStorage;
      }

      v13 = v12[2];

      if (!__OFSUB__(v1 >> 1, v3))
      {
        if (v13 == (v1 >> 1) - v3)
        {
          v3 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v3)
          {
            swift_unknownObjectRelease();
            return _swiftEmptyArrayStorage;
          }

          return v3;
        }

LABEL_15:
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v11 = *v0;

  return v3;
}

uint64_t AutoShortcutAppPhrasesViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEF73657361726850;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736172685078616DLL && a2 == 0xEA00000000007365;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000000233BD0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65746F6E746F6F66 && a2 == 0xED00006C6562614CLL)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t AutoShortcutAppPhrasesViewModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74756374726F6873;
  switch(a1)
  {
    case 1:
      result = 0x736172685078616DLL;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x74706D6F7270;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x65746F6E746F6F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutoShortcutAppPhrasesViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AutoShortcutAppPhrasesViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutoShortcutAppPhrasesViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutoShortcutAppPhrasesViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AutoShortcutAppPhrasesViewModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin31AutoShortcutAppPhrasesViewModelV10CodingKeys33_E31A9BF5EBFA4D765AA7A4713904B257LLOGMd, &_ss22KeyedEncodingContainerVy18SiriLinkFlowPlugin31AutoShortcutAppPhrasesViewModelV10CodingKeys33_E31A9BF5EBFA4D765AA7A4713904B257LLOGMR);
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = *v3;
  v24[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3[1];
    v24[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[2];
    v16 = v3[3];
    v24[5] = 2;
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v18 = v3[5];
    v24[4] = 3;
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[6];
    v20 = v3[7];
    v24[3] = 4;
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[8];
    v22 = v3[9];
    v24[2] = 5;
    OUTLINED_FUNCTION_2_41();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

void *AutoShortcutAppPhrasesViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin31AutoShortcutAppPhrasesViewModelV10CodingKeys33_E31A9BF5EBFA4D765AA7A4713904B257LLOGMd, &_ss22KeyedDecodingContainerVy18SiriLinkFlowPlugin31AutoShortcutAppPhrasesViewModelV10CodingKeys33_E31A9BF5EBFA4D765AA7A4713904B257LLOGMR);
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(__src[0]) = 0;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v37[0];
  OUTLINED_FUNCTION_0_30(1);
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_0_30(2);
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v16;
  OUTLINED_FUNCTION_0_30(3);
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v15;
  v34 = v17;
  OUTLINED_FUNCTION_0_30(4);
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v30 = v18;
  v38 = 5;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = *(v8 + 8);
  v23 = v21;
  v29 = v24;
  v22(v12, v5);
  v25 = v31;
  __src[0] = v14;
  __src[1] = v31;
  __src[2] = v33;
  __src[3] = v35;
  v26 = v34;
  __src[4] = v32;
  __src[5] = v34;
  __src[6] = v30;
  __src[7] = v20;
  v27 = v29;
  __src[8] = v23;
  __src[9] = v29;
  outlined init with copy of AutoShortcutAppPhrasesViewModel(__src, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37[0] = v14;
  v37[1] = v25;
  v37[2] = v33;
  v37[3] = v35;
  v37[4] = v32;
  v37[5] = v26;
  v37[6] = v30;
  v37[7] = v20;
  v37[8] = v23;
  v37[9] = v27;
  outlined destroy of AutoShortcutAppPhrasesViewModel(v37);
  return memcpy(a2, __src, 0x50uLL);
}

void *protocol witness for Decodable.init(from:) in conformance AutoShortcutAppPhrasesViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = AutoShortcutAppPhrasesViewModel.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutAppPhrasesViewModel.CodingKeys and conformance AutoShortcutAppPhrasesViewModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x144914);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t key path setter for ShortcutsHandoffFlow.state : ShortcutsHandoffFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsHandoffFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShortcutsHandoffFlow.State(a1, v7);
  return (*(**a2 + 96))(v7);
}

uint64_t ShortcutsHandoffFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin20ShortcutsHandoffFlow_state;
  swift_beginAccess();
  return outlined init with copy of ShortcutsHandoffFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of ShortcutsHandoffFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsHandoffFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShortcutsHandoffFlow.state.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin20ShortcutsHandoffFlow_state;
  swift_beginAccess();
  outlined assign with take of ShortcutsHandoffFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of ShortcutsHandoffFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsHandoffFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL ShortcutsHandoffFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsHandoffFlow.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  OUTLINED_FUNCTION_18_4();
  (*(v9 + 88))();
  v10 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 2, v10);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v10 - 8) + 16))(v6, a1, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 2, v10);
    OUTLINED_FUNCTION_18_4();
    (*(v12 + 96))(v6);
  }

  else
  {
    outlined destroy of ShortcutsHandoffFlow.State(v8);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t outlined destroy of ShortcutsHandoffFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutsHandoffFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShortcutsHandoffFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMd, &_s11SiriKitFlow017UserIdentityCheckC8StrategyV20HandoffConfigurationVSgMR) - 8) + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v4 = type metadata accessor for UserIdentityCheckFlowStrategy();
  v1[8] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[9] = v5;
  v7 = *(v6 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for ExecuteOnRemoteDeviceSpecification();
  v1[11] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[12] = v9;
  v11 = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for UserIdentityCheckFlowStrategy.HandoffConfiguration();
  v1[14] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for CompanionDeviceInfoRequirement();
  v1[17] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = OUTLINED_FUNCTION_28();
  v20 = *(*(type metadata accessor for ShortcutsHandoffFlow.State(0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v21 = type metadata accessor for Input();
  v1[22] = v21;
  OUTLINED_FUNCTION_5_0(v21);
  v1[23] = v22;
  v24 = *(v23 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(ShortcutsHandoffFlow.execute(), 0, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[6];
  OUTLINED_FUNCTION_18_4();
  (*(v4 + 88))();
  if (__swift_getEnumTagSinglePayload(v2, 2, v1))
  {
    v5 = v0[5];
    outlined destroy of ShortcutsHandoffFlow.State(v0[21]);
    static ExecuteResponse.complete()();
  }

  else
  {
    v6 = v0[22];
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[17];
    v47 = v0[14];
    v48 = v0[25];
    v12 = v0[12];
    v36 = v0[13];
    v37 = v0[11];
    v38 = v0[24];
    v40 = v0[15];
    v41 = v0[10];
    v42 = v0[23];
    v43 = v0[9];
    v44 = v0[8];
    v39 = v0[7];
    v13 = v0[6];
    v45 = v0[5];
    v46 = v0[16];
    (*(v42 + 32))();
    __swift_storeEnumTagSinglePayload(v8, 2, 2, v6);
    (*(*v13 + 96))(v8);
    type metadata accessor for CompanionCompatibilityCheckFlowStrategy();
    (*(v10 + 104))(v9, enum case for CompanionDeviceInfoRequirement.supportsPeerToPeerHandoff(_:), v11);
    static CompanionCompatibilityCheckFlowStrategy.require(_:redirectToServerOnFailure:shouldOutputErrorDialog:)();
    (*(v10 + 8))(v9, v11);
    type metadata accessor for SimpleHandoffStrategy();
    swift_allocObject();
    lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy, v14, type metadata accessor for SimpleHandoffStrategy);

    UserIdentityCheckFlowStrategy.HandoffConfiguration.init(companionCompatiblityCheck:handoffStrategy:)();
    (*(v42 + 16))(v38, v48, v6);
    (*(v12 + 104))(v36, enum case for ExecuteOnRemoteDeviceSpecification.userCompanion(_:), v37);
    static OutputPublisherFactory.makeOutputPublisherAsync()();
    v15 = type metadata accessor for ExecuteOnRemoteFlow();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v0[2] = ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
    v18 = type metadata accessor for CommonFlowGuard();
    OUTLINED_FUNCTION_5_0(v18);
    v20 = *(v19 + 72);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_218630;
    (*(v40 + 16))(v39, v46, v47);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v47);
    UserIdentityCheckFlowStrategy.init(allowsAnonymousUser:allowsUserInteraction:handoffConfiguration:requireSpeechProfile:)();
    static CommonFlowGuard.ensuringUserIdentity(using:)();
    (*(v43 + 8))(v41, v44);
    static CommonFlowGuard.ensuringPersonalRequestsAreEnabledWhenApplicable.getter();
    static CommonFlowGuard.ensuringUserHasSupportedCompanion(using:)();
    v23 = static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

    v0[3] = v23;
    type metadata accessor for GuardFlow();
    v24 = Flow.guarded<A>(by:)();

    v0[4] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>();
    Flow.eraseToAnyFlow()();

    static ExecuteResponse.complete(next:)();

    (*(v40 + 8))(v46, v47);
    (*(v42 + 8))(v48, v6);
  }

  v26 = v0[24];
  v25 = v0[25];
  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[19];
  v30 = v0[16];
  v31 = v0[13];
  v32 = v0[10];
  v33 = v0[7];

  v34 = v0[1];

  return v34();
}

uint64_t ShortcutsHandoffFlow.execute(completion:)()
{
  type metadata accessor for ShortcutsHandoffFlow(0);
  lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(&lazy protocol witness table cache variable for type ShortcutsHandoffFlow and conformance ShortcutsHandoffFlow, 255, type metadata accessor for ShortcutsHandoffFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t ShortcutsHandoffFlow.__deallocating_deinit()
{
  outlined destroy of ShortcutsHandoffFlow.State(v0 + OBJC_IVAR____TtC18SiriLinkFlowPlugin20ShortcutsHandoffFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ShortcutsHandoffFlow.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin20ShortcutsHandoffFlow_state;
  v5 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 2, v5);
  return v3;
}

uint64_t ShortcutsHandoffFlow.init()()
{
  v1 = OBJC_IVAR____TtC18SiriLinkFlowPlugin20ShortcutsHandoffFlow_state;
  v2 = type metadata accessor for Input();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 2, v2);
  return v0;
}

uint64_t protocol witness for Flow.execute() in conformance ShortcutsHandoffFlow(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance ShortcutsHandoffFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.execute() in conformance ShortcutsHandoffFlow()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ShortcutsHandoffFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShortcutsHandoffFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t lazy protocol witness table accessor for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>()
{
  result = lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>;
  if (!lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMd, &_s11SiriKitFlow011ConditionalC0CyAA015ExecuteOnRemoteC6ResultOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionalFlow<ExecuteOnRemoteFlowResult> and conformance ConditionalFlow<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleHandoffStrategy and conformance SimpleHandoffStrategy(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse() in conformance SimpleHandoffStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.execute() in conformance ShortcutsHandoffFlow;

  return HandoffSessionToCompanionFlowStrategyAsync.makeHandoffResponse()(a1, a2, a3);
}

uint64_t sub_145CB8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_18_4();
  return (*(v2 + 88))();
}

uint64_t type metadata completion function for ShortcutsHandoffFlow()
{
  result = type metadata accessor for ShortcutsHandoffFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_145DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Input();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_145E04(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Input();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t type metadata completion function for ShortcutsHandoffFlow.State()
{
  v0 = type metadata accessor for Input();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)()
{
  v1 = OUTLINED_FUNCTION_5_24();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v15 = OUTLINED_FUNCTION_1_45(v7, v8, v9, v10, v11, v12, v13, v14, v23);
  v16(v15);
  v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_3_32(v18);
  v20(v19);
  v21 = v0;
  OUTLINED_FUNCTION_2_42();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.disambiguationItemTransformer(attributeMetadata:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v40 = a4;
  v41 = a1;
  v5 = type metadata accessor for Locale();
  v6 = OUTLINED_FUNCTION_7_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  v11 = OUTLINED_FUNCTION_7_1(v39);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v11);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  if (!a2)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  v23 = a2;
  if ([v22 valueType] != &stru_20.vmsize + 1)
  {

LABEL_6:
    v31 = OUTLINED_FUNCTION_4_39();
    v32(v31);
    v33 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v34 = swift_allocObject();
    (*(v8 + 32))(v34 + v33, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    Transformer.init(transform:)();
    v35 = v39;
    v36 = Transformer.transform.getter();
    (*(v13 + 8))(v18, v35);
    v36(v41);
  }

  v24 = OUTLINED_FUNCTION_4_39();
  v25(v24);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v8 + 32))(v27 + v26, &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v28 = v23;
  OUTLINED_FUNCTION_2_42();
  Transformer.init(transform:)();
  v29 = v39;
  v30 = Transformer.transform.getter();
  (*(v13 + 8))(v20, v29);
  v30(v41);
}

uint64_t static Transformer<>.enumTransformer(attribute:locale:)()
{
  v1 = OUTLINED_FUNCTION_5_24();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v15 = OUTLINED_FUNCTION_1_45(v7, v8, v9, v10, v11, v12, v13, v14, v23);
  v16(v15);
  v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = OUTLINED_FUNCTION_3_32(v18);
  v20(v19);
  v21 = v0;
  OUTLINED_FUNCTION_2_42();
  return Transformer.init(transform:)();
}

uint64_t static Transformer<>.valueTransformer(locale:)()
{
  v1 = OUTLINED_FUNCTION_5_24();
  v2 = OUTLINED_FUNCTION_7_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  OUTLINED_FUNCTION_2_42();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in static Transformer<>.enumTransformer(attribute:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v48 = a3;
  v57 = a4;
  v46 = type metadata accessor for Locale();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v46);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_s13SiriUtilities11TransformerVyyp0A14LinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
  v45 = *(v42 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v42);
  v10 = v40 - v9;
  v11 = type metadata accessor for Locale.Language();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v40 - v18;
  v20 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for INIntentResolutionResult, INIntentResolutionResult_ptr);
  v43 = a1;
  v47 = v20;
  v21 = static INIntentResolutionResult.getCodableEnumValueFromAny(item:attribute:)(a1, a2);
  v22 = v48;
  if (v21)
  {
    v23 = v21;
    v40[1] = v7;
    v41 = v6;
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    (*(v12 + 8))(v15, v11);
    v24 = type metadata accessor for Locale.LanguageCode();
    if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
    {
      outlined destroy of Locale.LanguageCode?(v19);
      v25 = 0xE200000000000000;
      v26 = 28261;
    }

    else
    {
      v26 = Locale.LanguageCode.identifier.getter();
      v25 = v27;
      (*(*(v24 - 8) + 8))(v19, v24);
    }

    v28 = [v23 index];
    v29 = static INIntentResolutionResult.getSynonymsForEnum(enumValue:language:)(v23, v26, v25);
    v50[0] = v28;
    v50[1] = v29;
    v51 = 0;
    v30 = outlined bridged method (mbnb) of @objc INCodableEnumValue.localizedDisplayName(forLanguage:)(v26, v25, v23);
    if (v31)
    {
      v32 = v57;
LABEL_8:
      *&v52 = v30;
      *(&v52 + 1) = v31;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = _swiftEmptyArrayStorage;
      outlined init with copy of CustomIntentDisambiguationRawValue(v50, v49);
      CustomIntentDisambiguationItem.init(component:rawValue:)(&v52, v49, v32);

      return outlined destroy of CustomIntentDisambiguationRawValue(v50);
    }

    v30 = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v23);
    v32 = v57;
    if (v31)
    {
      goto LABEL_8;
    }

    outlined destroy of CustomIntentDisambiguationRawValue(v50);

    v6 = v41;
    v22 = v48;
  }

  v34 = v44;
  v35 = v46;
  (*(v6 + 16))(v44, v22, v46);
  v36 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v37 = swift_allocObject();
  (*(v6 + 32))(v37 + v36, v34, v35);
  Transformer.init(transform:)();
  v38 = v42;
  v39 = Transformer.transform.getter();
  (*(v45 + 8))(v10, v38);
  v39(v43);
}

uint64_t closure #1 in static Transformer<>.valueTransformer(locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  static Transformer<>.getDisambiguationItemComponent(value:locale:)(a1, a2, v7);
  outlined init with copy of Any(a1, v6);
  v6[32] = 1;
  return CustomIntentDisambiguationItem.init(component:rawValue:)(v7, v6, a3);
}

uint64_t partial apply for closure #1 in static Transformer<>.valueTransformer(locale:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for closure #1 in static Transformer<>.valueTransformer(locale:)(a1, a2);
}

{
  v5 = *(type metadata accessor for Locale() - 8);
  return closure #1 in static Transformer<>.valueTransformer(locale:)(a1, v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)), a2);
}

double static Transformer<>.getDisambiguationItemComponent(value:locale:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27[-1] - v12;
  outlined init with copy of Any(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin23CustomStringLocalizable_pMd, &_s18SiriLinkFlowPlugin23CustomStringLocalizable_pMR);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v7 + 32))(v11, v13, v6);
      static Transformer<>.ItemTypeHandlers.measurement(input:locale:)(v31);
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INObject, INObject_ptr);
      if (swift_dynamicCast())
      {
        v21 = v27[0];
        static Transformer<>.ItemTypeHandlers.customObject(input:locale:)(v27[0], v31);
      }

      else
      {
        type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v23 = *&v31[0];
          v24 = [*&v31[0] stringValue];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v25;

          goto LABEL_3;
        }

        if (swift_dynamicCast())
        {
          v19 = 0;
          v18 = *(&v31[0] + 1);
          v16 = *&v31[0];
          goto LABEL_4;
        }

        type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSDateComponents, NSDateComponents_ptr);
        if (!swift_dynamicCast())
        {
          if (!swift_dynamicCast())
          {
            v16 = 0;
            v19 = 0;
            v26 = 0u;
            v20 = _swiftEmptyArrayStorage;
            v18 = 0xE000000000000000;
            goto LABEL_11;
          }

          static Transformer<>.ItemTypeHandlers.object(input:locale:)(v27[0], v31);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        v21 = v27[0];
        static Transformer<>.ItemTypeHandlers.date(input:locale:)(v31);
      }
    }

LABEL_10:
    v19 = v32;
    v20 = v33;
    v26 = v31[1];
    v18 = *(&v31[0] + 1);
    v16 = *&v31[0];
    goto LABEL_11;
  }

  outlined init with take of AceServiceInvokerAsync(v31, v27);
  v14 = v28;
  v15 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v16 = (*(v15 + 8))(a2, v14, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
LABEL_3:
  v19 = 0;
LABEL_4:
  v26 = 0u;
  v20 = _swiftEmptyArrayStorage;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  *a3 = v16;
  *(a3 + 8) = v18;
  result = *&v26;
  *(a3 + 16) = v26;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  return result;
}

void static Transformer<>.ItemTypeHandlers.measurement(input:locale:)(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(NSMeasurementFormatter) init];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  [v2 setLocale:isa];

  [v2 setUnitOptions:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd, &_s10Foundation11MeasurementVySo6NSUnitCGMR);
  v9 = Measurement._bridgeToObjectiveC()();
  v4 = v9.super.isa;
  v5 = [v2 stringFromMeasurement:{v9.super.isa, v9._doubleValue}];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = _swiftEmptyArrayStorage;
}

void static Transformer<>.ItemTypeHandlers.customObject(input:locale:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for Locale.LanguageCode();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v12);
    v14 = 0xE200000000000000;
    v15 = 28261;
  }

  else
  {
    v15 = Locale.LanguageCode.identifier.getter();
    v14 = v16;
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = objc_allocWithZone(INStringLocalizer);
  v18 = @nonobjc INStringLocalizer.init(languageCode:)(v15, v14);
  v19 = [a1 _intents_readableTitleWithLocalizer:v18];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = [a1 _intents_readableSubtitleWithLocalizer:v18];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [a1 displayImage];

  *a2 = v21;
  a2[1] = v23;
  a2[2] = v26;
  a2[3] = v28;
  a2[4] = v29;
  a2[5] = _swiftEmptyArrayStorage;
}

uint64_t static Transformer<>.ItemTypeHandlers.date(input:locale:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.Language();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - v14;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v8 + 8))(v11, v7);
  v16 = type metadata accessor for Locale.LanguageCode();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v15);
  }

  else
  {
    Locale.LanguageCode.identifier.getter();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  Locale.init(identifier:)();
  v17 = NSDateComponents.toRelativeLocalizedString(locale:)();
  v19 = v18;
  result = (*(v3 + 8))(v6, v2);
  if (v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (v19)
  {
    v22 = v19;
  }

  *a1 = v21;
  a1[1] = v22;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = _swiftEmptyArrayStorage;
  return result;
}

void static Transformer<>.ItemTypeHandlers.object(input:locale:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v8, v4);
  v13 = type metadata accessor for Locale.LanguageCode();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v12);
    v14 = 0xE200000000000000;
    v15 = 28261;
  }

  else
  {
    v15 = Locale.LanguageCode.identifier.getter();
    v14 = v16;
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v17 = objc_allocWithZone(INStringLocalizer);
  v18 = @nonobjc INStringLocalizer.init(languageCode:)(v15, v14);
  v19 = [a1 _intents_readableTitleWithLocalizer:v18];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  *a2 = v21;
  a2[1] = v23;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = _swiftEmptyArrayStorage;
}

uint64_t outlined destroy of Locale.LanguageCode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id @nonobjc INStringLocalizer.init(languageCode:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithLanguageCode:v3];

  return v4;
}

uint64_t outlined bridged method (mbnb) of @objc INCodableEnumValue.localizedDisplayName(forLanguage:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 localizedDisplayNameForLanguage:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t objectdestroy_5Tm()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t OUTLINED_FUNCTION_3_32(uint64_t a1)
{
  *(a1 + 16) = v1;
  v4 = *(v2 + 32);
  return a1 + v3;
}

uint64_t OUTLINED_FUNCTION_4_39()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_24()
{

  return type metadata accessor for Locale();
}

void *static INIntentParameterHelper.removeParameterValue<A>(_:_:)(void *a1, uint64_t a2, unint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(a1, a2, a3, v5, 0, 1);
  outlined destroy of String?(v5, &_sypSgMd, &_sypSgMR);
  return a1;
}

double static INIntentParameterHelper.extractParameterValue(_:_:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF3Key33_8F08DCA83036D5D1828044109472059DLLySSx_SStSo0E0CRbzlFZAG_Tt1g5(a1, a2, a3);
  v6 = String._bridgeToObjectiveC()();

  v7 = [a1 valueForKeyPath:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF3Key33_8F08DCA83036D5D1828044109472059DLLySSx_SStSo0E0CRbzlFZAG_Tt1g5(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF11Description33_8F08DCA83036D5D1828044109472059DLLySo0e4SlotI0Cx_SStSo0E0CRbzlFZAI_Tt1g5(a1, a2, a3);
  v7 = [v6 facadePropertyName];
  if (v7)
  {
    v8 = v7;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);

    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, a3, &v20);
      *(v13 + 12) = 2080;
      v14 = [v10 typeName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_0, v11, v12, "Cannot get a key for parameter: %s on intent type: %s. Will use parameterName instead. This may result in a crash.", v13, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v4;
}

uint64_t static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[33] = a1;
  v6[34] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR) - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v6[40] = v8;
  v9 = *(v8 - 8);
  v6[41] = v9;
  v10 = *(v9 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v6[44] = v11;
  v12 = *(v11 - 8);
  v6[45] = v12;
  v13 = *(v12 + 64) + 15;
  v6[46] = swift_task_alloc();

  return _swift_task_switch(static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:), 0, 0);
}

uint64_t static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:)()
{
  v97 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 280);
  USOParse.userParse.getter();
  v7 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v8 = *(v4 + 8);
  v8(v2, v3);
  specialized Collection.first.getter(v7, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    outlined destroy of String?(*(v0 + 312), &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    OUTLINED_FUNCTION_3_33();
    if (!v52)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v12, v13, "No UDA found in USO parse");
      OUTLINED_FUNCTION_15_0();
    }

    v14 = *(v0 + 264);

    *v14 = 0u;
    v14[1] = 0u;
    goto LABEL_39;
  }

  v15 = *(v0 + 336);
  v16 = *(v0 + 320);
  v17 = *(v0 + 280);
  (*(*(v0 + 360) + 32))(*(v0 + 368), *(v0 + 312), *(v0 + 352));
  USOParse.userParse.getter();
  v18 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v8(v15, v16);
  v19 = *(v18 + 16);

  if (v19 >= 2)
  {
    OUTLINED_FUNCTION_3_33();
    if (!v52)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v23, v24, "More than one task found in UDA");
      OUTLINED_FUNCTION_15_0();
    }
  }

  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  v27 = [*(v0 + 272) _codableDescription];
  v28 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(v25, v26, v27);
  *(v0 + 376) = v28;

  if (!v28)
  {
    goto LABEL_31;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_11_22())
  {
    v29 = *(v0 + 368);
    v30 = Siri_Nlu_External_UserDialogAct.stringValue.getter();
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    v33 = *(v0 + 352);
    static INIntentParameterHelper.buildCustomObjectValueDictionary(attribute:value:)(v28, v30, v34, *(v0 + 264));

    (*(v32 + 8))(v31, v33);
LABEL_39:
    OUTLINED_FUNCTION_5_25();

    v72 = *(v0 + 8);

    return v72();
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_11_22())
  {
    OUTLINED_FUNCTION_3_33();
    if (!v52)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v35, static Logger.voiceCommands);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      OUTLINED_FUNCTION_42_8();
      _os_log_impl(v39, v40, v41, v42, v38, 2u);
      OUTLINED_FUNCTION_15_0();
    }

    v44 = *(v0 + 360);
    v43 = *(v0 + 368);
    v45 = *(v0 + 352);
    v46 = *(v0 + 264);

    (*(v44 + 8))(v43, v45);
    *v46 = 0u;
    v46[1] = 0u;
    goto LABEL_39;
  }

  objc_opt_self();
  if (!OUTLINED_FUNCTION_11_22())
  {
LABEL_31:
    OUTLINED_FUNCTION_3_33();
    if (!v52)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v55, static Logger.voiceCommands);
    v56 = v28;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_85();
      v96 = v60;
      *v59 = 136315138;
      if (v28)
      {
        v61 = [v56 valueType];
      }

      else
      {
        v61 = 0;
      }

      *(v0 + 240) = v61;
      *(v0 + 248) = v28 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21INIntentSlotValueTypeVSgMd, &_sSo21INIntentSlotValueTypeVSgMR);
      v62 = String.init<A>(describing:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v96);

      *(v59 + 4) = v64;
      OUTLINED_FUNCTION_42_8();
      _os_log_impl(v65, v66, v67, v68, v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v69 = *(v0 + 368);
    v70 = Siri_Nlu_External_UserDialogAct.stringValue.getter();
    v74 = v71;
    v76 = *(v0 + 360);
    v75 = *(v0 + 368);
    v77 = *(v0 + 352);
    v78 = *(v0 + 264);
    if (v71)
    {
      v79 = v70;
      *(v78 + 24) = &type metadata for String;

      *v78 = v79;
      *(v78 + 8) = v74;
      (*(v76 + 8))(v75, v77);
    }

    else
    {

      (*(v76 + 8))(v75, v77);
      *v78 = 0u;
      *(v78 + 16) = 0u;
    }

    goto LABEL_39;
  }

  objc_opt_self();
  v47 = OUTLINED_FUNCTION_11_22();
  if (!v47)
  {
    v81 = *(v0 + 360);
    v80 = *(v0 + 368);
    v82 = *(v0 + 352);
    v83 = *(v0 + 264);

    v84 = OUTLINED_FUNCTION_9_24();
    v85(v84, v82);
    *v83 = 0u;
    v83[1] = 0u;
    goto LABEL_39;
  }

  v48 = v47;
  v49 = v28;
  v50 = outlined bridged method (ob) of @objc INCodableObjectAttribute.typeName.getter(v48);
  if (!v51)
  {
    goto LABEL_30;
  }

  v52 = v50 == 0x6E61656C6F6F42 && v51 == 0xE700000000000000;
  if (v52)
  {

    goto LABEL_47;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
LABEL_47:
    v54 = &dword_0 + 1;
    goto LABEL_48;
  }

LABEL_30:
  v54 = [v48 valueType];
LABEL_48:
  *(v0 + 40) = type metadata accessor for LocationResolver();
  *(v0 + 48) = &protocol witness table for LocationResolver;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  LocationResolver.init()();
  static AceService.currentAsync.getter();
  v86 = type metadata accessor for LocationProvider();
  v87 = swift_allocObject();
  *(v87 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync((v0 + 96), v87 + 24);
  *(v0 + 80) = v86;
  *(v0 + 88) = &protocol witness table for LocationProvider;
  *(v0 + 56) = v87;
  *(v0 + 160) = type metadata accessor for DateTimeResolver();
  *(v0 + 168) = &protocol witness table for DateTimeResolver;
  __swift_allocate_boxed_opaque_existential_1((v0 + 136));
  DateTimeResolver.init()();
  v88 = type metadata accessor for ContactResolver();
  v89 = *(v88 + 48);
  v90 = *(v88 + 52);
  swift_allocObject();
  v91 = ContactResolver.init()();
  *(v0 + 200) = v88;
  *(v0 + 208) = &protocol witness table for ContactResolver;
  *(v0 + 176) = v91;
  v92 = swift_task_alloc();
  *(v0 + 384) = v92;
  *v92 = v0;
  v92[1] = static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:);
  v93 = *(v0 + 368);
  v94 = *(v0 + 304);
  v95 = *(v0 + 264);

  return INIntentSlotValueType.getIntentSlotValue(userDialogAct:locale:locationResolver:locationProvider:dateTimeResolver:contactResolver:)(v95, v93, v94, v0 + 16, v0 + 56, v0 + 136, v0 + 176, v54);
}

{
  v2 = *v1;
  v3 = (*v1)[48];
  v6 = *v1;
  v2[49] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  if (v0)
  {
    v4 = static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:);
  }

  else
  {
    v4 = static INIntentParameterHelper.extractParameterValue(previousIntent:usoParse:parameterName:locale:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[45];

  v5 = OUTLINED_FUNCTION_9_24();
  v6(v5, v3);
  OUTLINED_FUNCTION_5_25();

  v7 = v0[1];

  return v7();
}

{
  v26 = v0;

  v1 = *(v0 + 392);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  if (v5)
  {
    v24 = *(v0 + 352);
    v10 = OUTLINED_FUNCTION_48();
    v11 = OUTLINED_FUNCTION_85();
    v25 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v23 = v6;
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    v14 = *(v0 + 232);
    v15 = Error.localizedDescription.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_0, v3, v4, "Could not extract parameter values from USO parse %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();

    (*(v8 + 8))(v23, v24);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_9_24();
    v19(v18, v9);
  }

  v20 = *(v0 + 264);
  *v20 = 0u;
  v20[1] = 0u;
  OUTLINED_FUNCTION_5_25();

  v21 = *(v0 + 8);

  return v21();
}

void static INIntentParameterHelper.buildCustomObjectValueDictionary(attribute:value:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || [a1 valueType] != &stru_B8.size + 1 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || !a3)
  {
LABEL_11:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  v8 = a1;

  if (INCodableAttribute.supportsMultipleValues.getter())
  {

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "SiriLinkFlow does not support parsing multiple values", v12, 2u);
    }

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  strcpy((inited + 32), "displayString");
  *(inited + 46) = -4864;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v14 = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);

  *a4 = v14;
}

uint64_t static INIntentParameterHelper.applyParameterValue(_:_:_:applyValueStrategy:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v88 - v17;
  v19 = OUTLINED_FUNCTION_1_46();
  static INIntentParameterHelper.extractParameterValue(_:_:)(v19, v20, v21, v22);
  if (!(*(a4 + 24) | v94))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v23, static Logger.voiceCommands);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_48();
      v27 = OUTLINED_FUNCTION_85();
      v92[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v92);
      OUTLINED_FUNCTION_42_8();
      _os_log_impl(v28, v29, v30, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    goto LABEL_25;
  }

  v88 = v16;
  v32 = OUTLINED_FUNCTION_1_46();
  v89 = _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF3Key33_8F08DCA83036D5D1828044109472059DLLySSx_SStSo0E0CRbzlFZAG_Tt1g5(v32, v33, v34);
  v36 = v35;
  v37 = OUTLINED_FUNCTION_1_46();
  v40 = _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF11Description33_8F08DCA83036D5D1828044109472059DLLySo0e4SlotI0Cx_SStSo0E0CRbzlFZAI_Tt1g5(v37, v38, v39);
  v41 = v40;
  if ((a6 & 1) != 0 || [v40 valueStyle] != &dword_0 + 3)
  {
    if ([v41 valueStyle] == &dword_0 + 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSgGMd, &_ss23_ContiguousArrayStorageCyypSgGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_216850;
      outlined init with copy of SpeakableString?(a4, v46 + 32, &_sypSgMd, &_sypSgMR);
      v92[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypSgGMd, _sSayypSgGMR);
      v92[0] = v46;
    }

    else
    {
      outlined init with copy of SpeakableString?(a4, v92, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    v42 = OUTLINED_FUNCTION_1_46();
    _s18SiriLinkFlowPlugin23INIntentParameterHelperO29makeUpdatedMulticardinalValue33_8F08DCA83036D5D1828044109472059DLLyypSgx_SSAFSitSo0E0CRbzlFZAH_Tt4g5(v42, v43, v44, a4, a5, v45);
  }

  v47 = v89;
  if (![v41 isEnum])
  {
    outlined init with copy of SpeakableString?(v92, v90, &_sypSgMd, &_sypSgMR);
    v60 = v91;
    if (v91)
    {
      v61 = __swift_project_boxed_opaque_existential_1(v90, v91);
      v62 = *(v60 - 8);
      v63 = *(v62 + 64);
      __chkstk_darwin(v61);
      v65 = &v88 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v65);
      v66 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v62 + 8))(v65, v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
    }

    else
    {
      v66 = 0;
    }

    v58.super.super.isa = String._bridgeToObjectiveC()();

    [a1 setValue:v66 forKey:v58.super.super.isa];
    swift_unknownObjectRelease();
LABEL_24:

    outlined destroy of String?(v92, &_sypSgMd, &_sypSgMR);
LABEL_25:
    v67 = a1;
    outlined destroy of String?(v93, &_sypSgMd, &_sypSgMR);
    return v67;
  }

  outlined init with copy of SpeakableString?(v92, v90, &_sypSgMd, &_sypSgMR);
  v48 = v91;
  outlined destroy of String?(v90, &_sypSgMd, &_sypSgMR);
  if (!v48)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_59(v49, static Logger.voiceCommands);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = OUTLINED_FUNCTION_48();
      v53 = OUTLINED_FUNCTION_85();
      v90[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v36, v90);
      OUTLINED_FUNCTION_42_8();
      _os_log_impl(v54, v55, v56, v57, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v58.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v59 = String._bridgeToObjectiveC()();

    [a1 setValue:v58.super.super.isa forKey:v59];

    v41 = v59;
    goto LABEL_24;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v69, static Logger.voiceCommands);

  v70 = a1;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v90[0] = swift_slowAlloc();
    *v73 = 136315394;
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v36, v90);

    *(v73 + 4) = v74;
    *(v73 + 12) = 2080;
    v75 = [v70 typeName];
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;

    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v90);

    *(v73 + 14) = v79;
    _os_log_impl(&dword_0, v71, v72, "\nCannot generically set enumerated values due to incompatibilities between Swift and Objective-C.\nIf you are seeing this message please implement the code to apply values for parameter '%s' on intent type '%s' in your domain code.\nYou can use the typed setters on the intent to set enum types rather than using 'setValue'.", v73, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }

  v80 = *(v69 - 8);
  (*(v80 + 16))(v18, &_sypSgMd, v69);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v69);
  v81 = v88;
  outlined init with copy of SpeakableString?(v18, v88, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  if (__swift_getEnumTagSinglePayload(v81, 1, v69) == 1)
  {
    outlined destroy of String?(v88, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = OUTLINED_FUNCTION_85();
      v90[0] = swift_slowAlloc();
      *v84 = 136315650;
      v85 = StaticString.description.getter();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v90);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2048;
      *(v84 + 14) = 106;
      *(v84 + 22) = 2080;
      *(v84 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000044, 0x8000000000233C50, v90);
      _os_log_impl(&dword_0, v82, v83, "FatalError at %s:%lu - %s", v84, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    (*(v80 + 8))(v88, v69);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s18SiriLinkFlowPlugin23INIntentParameterHelperO04makeF11Description33_8F08DCA83036D5D1828044109472059DLLySo0e4SlotI0Cx_SStSo0E0CRbzlFZAI_Tt1g5(void *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = [a1 _intentInstanceDescription];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 slotByName:v14];

  if (v15)
  {
    return v15;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.voiceCommands);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v19._countAndFlagsBits = 0xD000000000000032;
  v19._object = 0x8000000000233D20;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.append(_:)(v20);
  v21._object = 0x8000000000233D60;
  v21._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v21);
  v22 = [a1 typeName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27 = v38;
  v28 = v39;
  v29 = *(v17 - 8);
  (*(v29 + 16))(v12, v18, v17);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v17);
  outlined init with copy of SpeakableString?(v12, v10, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  LODWORD(v22) = __swift_getEnumTagSinglePayload(v10, 1, v17);

  if (v22 == 1)
  {
    outlined destroy of String?(v10, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v32 = 136315650;
      v33 = StaticString.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v37);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 155;
      *(v32 + 22) = 2080;
      *(v32 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v37);
      _os_log_impl(&dword_0, v30, v31, "FatalError at %s:%lu - %s", v32, 0x20u);
      swift_arrayDestroy();
    }

    (*(v29 + 8))(v10, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void _s18SiriLinkFlowPlugin23INIntentParameterHelperO29makeUpdatedMulticardinalValue33_8F08DCA83036D5D1828044109472059DLLyypSgx_SSAFSitSo0E0CRbzlFZAH_Tt4g5(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  static INIntentParameterHelper.extractParameterValue(_:_:)(a1, a2, a3, v24);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    if (swift_dynamicCast())
    {
      v9 = v22;
      if (*(v22 + 16) > a5)
      {
        goto LABEL_4;
      }

LABEL_11:
      outlined init with copy of SpeakableString?(a4, &v22, &_sypSgMd, &_sypSgMR);
      if (!v23)
      {
        outlined destroy of String?(&v22, &_sypSgMd, &_sypSgMR);
        goto LABEL_22;
      }

      outlined init with take of Any(&v22, v24);
      outlined init with copy of Any(v24, &v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v9[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v18;
      }

      v13 = v9[2];
      if (v13 >= v9[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v9 = v19;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v9[2] = v13 + 1;
      v11 = &v22;
      v12 = &v9[4 * v13 + 4];
LABEL_17:
      outlined init with take of Any(v11, v12);
LABEL_22:
      a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      *a6 = v9;
      return;
    }
  }

  else
  {
    outlined destroy of String?(v24, &_sypSgMd, &_sypSgMR);
  }

  v9 = _swiftEmptyArrayStorage;
  if ((a5 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  outlined init with copy of SpeakableString?(a4, &v22, &_sypSgMd, &_sypSgMR);
  if (!v23)
  {
    outlined destroy of String?(&v22, &_sypSgMd, &_sypSgMR);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_20;
    }

    goto LABEL_26;
  }

  outlined init with take of Any(&v22, v24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v9 = v20;
    if ((a5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (v9[2] > a5)
      {
        v10 = &v9[4 * a5];
        __swift_destroy_boxed_opaque_existential_1Tm(v10 + 4);
        v11 = v24;
        v12 = v10 + 4;
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = v21;
LABEL_20:
  v14 = v9[2];
  if (v14 > a5)
  {
    v15 = v14 - 1;
    v16 = &v9[4 * a5];
    __swift_destroy_boxed_opaque_existential_1Tm(v16 + 4);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v16 + 64, v15 - a5, v16 + 32);
    v9[2] = v15;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t outlined bridged method (ob) of @objc INCodableObjectAttribute.typeName.getter(void *a1)
{
  v2 = [a1 typeName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  v2 = v0[46];
  v3 = v0[42];
  v4 = v0[43];
  v5 = v0[39];
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return swift_dynamicCastObjCClass();
}

double static WFPausedShortcutConverter.toSiriWorkflowInput(userData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "toSiriWorkflowInput userData: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  v12 = static WFPausedShortcutConverter.getWFPausedShortcutData(userData:)(a1);
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_0_31();
    specialized Dictionary.subscript.getter(v13, v14, a1, v22);
    if (v23)
    {
      v15 = swift_dynamicCast();
      v16 = v20;
      v17 = v21;
      if (!v15)
      {
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      outlined destroy of Any?(v22);
      v16 = 0;
      v17 = 0;
    }

    v18 = 3;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = -1;
  }

  *a2 = v12;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = v18;
  return result;
}

uint64_t static WFPausedShortcutConverter.toUserData(pausedShortcutData:runnerInput:)(uint64_t a1, uint64_t a2)
{
  v4 = Dictionary.init(dictionaryLiteral:)();
  if (!*(a2 + 64))
  {
    v6 = *a2;
    v5 = *(a2 + 8);
    v19 = &type metadata for String;
    *&v18 = v6;
    *(&v18 + 1) = v5;
    outlined init with take of Any(&v18, v17);
    outlined init with copy of SiriWorkflowRunnerInput?(a2, &v15);
    swift_isUniquelyReferenced_nonNull_native();
    *&v15 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0x74756374726F6873, 0xEC000000656D614ELL);
    v4 = v15;
  }

  v7 = objc_opt_self();
  *&v15 = 0;
  v8 = [v7 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16 = &type metadata for Data;
    *&v15 = v10;
    *(&v15 + 1) = v12;
    outlined init with take of Any(&v15, &v18);
    swift_isUniquelyReferenced_nonNull_native();
    *&v17[0] = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v18, 0xD000000000000012, 0x8000000000233D80);
    return *&v17[0];
  }

  else
  {
    v13 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t static WFPausedShortcutConverter.getWFPausedShortcutData(userData:)(uint64_t a1)
{
  specialized Dictionary.subscript.getter(0xD000000000000012, 0x8000000000233D80, a1, &v14);
  if (!v15)
  {
    outlined destroy of Any?(&v14);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.voiceCommands);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Cannot get data from userData", v9, 2u);
    }

    return 0;
  }

  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFPausedShortcutData, WFPausedShortcutData_ptr);
  v1 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v10 = v1;
  if (v1)
  {
    outlined consume of Data._Representation(v12, v13);
    return v10;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Cannot unarchive WFPausedShortcutData", v5, 2u);
  }

  outlined consume of Data._Representation(v12, v13);

  return 0;
}

uint64_t outlined init with copy of SiriWorkflowRunnerInput?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerInputOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Optional<A>.asNLContextUpdate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    NLContextUpdate.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_216010;
    *(v4 + 32) = a1;
    NLContextUpdate.systemDialogActs.setter();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t Siri_Nlu_External_SystemDialogAct.asNLContextUpdate()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v4 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216850;
  (*(v5 + 16))(v8 + v7, v2, v4);
  NLContextUpdate.nluSystemDialogActs.setter();
  v9 = type metadata accessor for NLContextUpdate();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
}

uint64_t DeviceState.isActualHomePod.getter()
{
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v0 = dispatch thunk of DeviceState.isSidekick.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t VoiceCommandParityFlow.__allocating_init(intent:app:outputPublisher:overrideCurrentRequestEnvironment:deviceState:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  VoiceCommandParityFlow.init(intent:app:outputPublisher:overrideCurrentRequestEnvironment:deviceState:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t VoiceCommandParityFlow.exitValue.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = v1;
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = *(v0 + 128);
    }

    else
    {
      lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
      v4 = OUTLINED_FUNCTION_16_6();
      *v5 = 0;
    }
  }

  outlined copy of VoiceCommandParityFlow.State(v1, v2, v3);
  return v4;
}

uint64_t VoiceCommandParityFlow.init(intent:app:outputPublisher:overrideCurrentRequestEnvironment:deviceState:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  outlined init with take of AceServiceInvokerAsync(a3, v6 + 32);
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0x80;
  *(v6 + 112) = a4;
  *(v6 + 120) = a5;
  outlined init with take of AceServiceInvokerAsync(a6, v6 + 72);
  return v6;
}

id outlined copy of VoiceCommandParityFlow.State(id result, void *a2, char a3)
{
  if (a3 >> 6 == 1)
  {
    return swift_errorRetain();
  }

  if (!(a3 >> 6))
  {
    return outlined copy of ParityFlowExecutionResult(result, a2, a3);
  }

  return result;
}

id outlined copy of ParityFlowExecutionResult(id result, void *a2, char a3)
{
  if (a3 == 1)
  {

    return swift_errorRetain();
  }

  else if (!a3)
  {
    v4 = result;

    return a2;
  }

  return result;
}

uint64_t VoiceCommandParityFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(VoiceCommandParityFlow.execute(), 0, 0);
}

uint64_t VoiceCommandParityFlow.execute()()
{
  v23 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    v8 = [*(v5 + 16) debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v22);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "#VoiceCommandParityFlow execute intent: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  v13 = v0[3];
  if (*(v13 + 144) < 0)
  {
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    v19 = swift_task_alloc();
    v0[4] = v19;
    *v19 = v0;
    v19[1] = VoiceCommandParityFlow.execute();
    v20 = v0[2];
    v21 = v0[3];

    return VoiceCommandParityFlow.executeIntent(intent:app:)();
  }

  else
  {
    v14 = v0[2];
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_6_0();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t VoiceCommandParityFlow.execute(completion:)()
{
  type metadata accessor for VoiceCommandParityFlow();
  lazy protocol witness table accessor for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow(&lazy protocol witness table cache variable for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow, v0, type metadata accessor for VoiceCommandParityFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t VoiceCommandParityFlow.executeIntent(intent:app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for AceOutput();
  v1[15] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[16] = v6;
  v8 = *(v7 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v10 = type metadata accessor for NLContextUpdate();
  v1[20] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_28();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR) - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for Parse.DirectInvocation();
  v1[24] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = OUTLINED_FUNCTION_28();

  return _swift_task_switch(VoiceCommandParityFlow.executeIntent(intent:app:), 0, 0);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  v4 = *(v2 + 248);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    v7 = VoiceCommandParityFlow.executeIntent(intent:app:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    v7 = VoiceCommandParityFlow.executeIntent(intent:app:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t VoiceCommandParityFlow.executeIntent(intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_12_23();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 184);
  v27 = *(v24 + 192);
  v29 = *(v24 + 104);
  v30 = static VoiceCommandsParity.processIntent(intent:)(*(v24 + 96));
  *(v24 + 216) = v30;
  static VoiceCommandsParity.buildDirectInvocationParse(intent:app:)(v30);
  if (__swift_getEnumTagSinglePayload(v28, 1, v27) == 1)
  {
    v31 = *(v24 + 112);
    outlined destroy of String?(*(v24 + 184), &_s11SiriKitFlow5ParseO16DirectInvocationVSgMd, &_s11SiriKitFlow5ParseO16DirectInvocationVSgMR);
    lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
    v32 = OUTLINED_FUNCTION_16_6();
    *v33 = 1;
    OUTLINED_FUNCTION_7_25(v32);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v34 = *(v24 + 104);
    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.voiceCommands);
    v36 = v30;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v24 + 104);
      v40 = swift_slowAlloc();
      *&a11 = swift_slowAlloc();
      *v40 = 136315394;
      v41 = [v36 debugDescription];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &a11);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      *(v24 + 56) = v39;
      type metadata accessor for App();
      OUTLINED_FUNCTION_1_47();
      lazy protocol witness table accessor for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow(v46, 255, v47);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &a11);

      *(v40 + 14) = v50;
      OUTLINED_FUNCTION_13_21(&dword_0, v51, v52, "cannot build direction invocation for intent: %s, app: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v53 = *(v24 + 88);
    static ExecuteResponse.complete()();

LABEL_21:
    OUTLINED_FUNCTION_3_34();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_77();

    return v112(v111, v112, v113, v114, v115, v116, v117, v118, a9, a10, a11, *(&a11 + 1), a12, *(&a12 + 1), a13, a14, a15, a16);
  }

  (*(*(v24 + 200) + 32))(*(v24 + 208), *(v24 + 184), *(v24 + 192));
  v54 = static FlowLocator.findFlow(forInvocation:)();
  *(v24 + 224) = v54;
  if (!v54)
  {
LABEL_16:
    v85 = *(v24 + 112);
    lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
    v86 = OUTLINED_FUNCTION_16_6();
    *v87 = 2;
    OUTLINED_FUNCTION_7_25(v86);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v88 = *(v24 + 104);
    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.voiceCommands);
    v90 = v30;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = *(v24 + 104);
      v94 = swift_slowAlloc();
      *&a11 = swift_slowAlloc();
      *v94 = 136315394;
      v95 = [v90 debugDescription];
      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v98 = v97;

      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &a11);

      *(v94 + 4) = v99;
      *(v94 + 12) = 2080;
      *(v24 + 64) = v93;
      type metadata accessor for App();
      OUTLINED_FUNCTION_1_47();
      lazy protocol witness table accessor for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow(v100, 255, v101);
      v102 = dispatch thunk of CustomStringConvertible.description.getter();
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &a11);

      *(v94 + 14) = v104;
      OUTLINED_FUNCTION_13_21(&dword_0, v105, v106, "cannot build flow for direct invocation, intent: %s, app: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v108 = *(v24 + 200);
    v107 = *(v24 + 208);
    v109 = *(v24 + 192);
    v110 = *(v24 + 88);
    static ExecuteResponse.complete()();

    (*(v108 + 8))(v107, v109);
    goto LABEL_21;
  }

  *(v24 + 232) = type metadata accessor for AnyVoiceCommandsParityFlow();
  v55 = swift_dynamicCastClass();
  *(v24 + 240) = v55;
  if (!v55)
  {

    goto LABEL_16;
  }

  v57 = *(v24 + 152);
  v56 = *(v24 + 160);
  v58 = *(v24 + 104);
  static VoiceCommandsParity.buildNLContextUpdate(intent:app:)(v30);
  if (__swift_getEnumTagSinglePayload(v57, 1, v56) == 1)
  {
    v59 = *(v24 + 112);
    outlined destroy of String?(*(v24 + 152), &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError();
    v60 = OUTLINED_FUNCTION_16_6();
    *v61 = 0;
    v63 = *(v59 + 128);
    v62 = *(v59 + 136);
    *(v59 + 128) = v60;
    *(v59 + 136) = 0;
    v64 = *(v59 + 144);
    *(v59 + 144) = 64;
    outlined consume of VoiceCommandParityFlow.State(v63, v62, v64);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v65 = *(v24 + 104);
    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.voiceCommands);
    v67 = v30;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      a10 = *(v24 + 104);
      v70 = swift_slowAlloc();
      *&a11 = swift_slowAlloc();
      *v70 = 136315394;
      v71 = [v67 debugDescription];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &a11);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      *(v24 + 72) = a10;
      type metadata accessor for App();
      OUTLINED_FUNCTION_1_47();
      lazy protocol witness table accessor for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow(v76, 255, v77);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &a11);

      *(v70 + 14) = v80;
      _os_log_impl(&dword_0, v68, v69, "cannot build contextUpdate for direct invocation, intent: %s, app: %s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v82 = *(v24 + 200);
    v81 = *(v24 + 208);
    v83 = *(v24 + 192);
    v84 = *(v24 + 88);
    static ExecuteResponse.complete()();

    (*(v82 + 8))(v81, v83);
    goto LABEL_21;
  }

  v121 = *(v24 + 168);
  v120 = *(v24 + 176);
  v122 = *(v24 + 160);
  v123 = *(v24 + 136);
  v124 = *(v24 + 144);
  v125 = *(v24 + 120);
  v126 = *(v24 + 128);
  v127 = *(v24 + 112);
  (*(v121 + 32))(v120, *(v24 + 152), v122);
  a13 = 0;
  a11 = 0u;
  a12 = 0u;
  (*(v121 + 16))(v124, v120, v122);
  __swift_storeEnumTagSinglePayload(v124, 0, 1, v122);
  AceOutput.init(commands:flowActivity:nlContextUpdate:)();
  v128 = v127[8];
  __swift_project_boxed_opaque_existential_1(v127 + 4, v127[7]);
  *(v24 + 40) = v125;
  *(v24 + 48) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 16));
  (*(v126 + 16))(boxed_opaque_existential_1, v123, v125);
  v130 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v131 = swift_task_alloc();
  *(v24 + 248) = v131;
  *v131 = v24;
  v131[1] = VoiceCommandParityFlow.executeIntent(intent:app:);
  OUTLINED_FUNCTION_77();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v132, v133, v134);
}

uint64_t VoiceCommandParityFlow.executeIntent(intent:app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_12_23();
  v19 = *(v18 + 232);
  v20 = *(v18 + 240);
  v21 = *(v18 + 200);
  v40 = *(v18 + 208);
  v41 = *(v18 + 224);
  v22 = *(v18 + 168);
  v38 = *(v18 + 176);
  v39 = *(v18 + 192);
  v36 = *(v18 + 216);
  v37 = *(v18 + 160);
  v23 = *(v18 + 128);
  v35 = *(v18 + 136);
  v24 = *(v18 + 120);
  v25 = *(v18 + 88);
  (*(**(v18 + 112) + 208))();
  *(v18 + 80) = v20;

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v23 + 8))(v35, v24);
  (*(v22 + 8))(v38, v37);
  (*(v21 + 8))(v40, v39);

  OUTLINED_FUNCTION_3_34();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_77();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

{
  OUTLINED_FUNCTION_12_23();
  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 2);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "submitting contextUpdate failed.", v22, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v23 = v18[32];
  v24 = v18[28];
  v25 = v18[25];
  v49 = v18[24];
  v50 = v18[26];
  v26 = v18[21];
  v48 = v18[22];
  v46 = v18[27];
  v47 = v18[20];
  v27 = v18[16];
  v45 = v18[17];
  v28 = v18[14];
  v29 = v18[15];
  v30 = v18[11];

  lazy protocol witness table accessor for type RunVoiceShortcutFlowErrors and conformance RunVoiceShortcutFlowErrors();
  v31 = OUTLINED_FUNCTION_16_6();
  *v32 = 2;
  v34 = *(v28 + 128);
  v33 = *(v28 + 136);
  *(v28 + 128) = v31;
  *(v28 + 136) = 0;
  v35 = *(v28 + 144);
  *(v28 + 144) = 64;
  outlined consume of VoiceCommandParityFlow.State(v34, v33, v35);
  static ExecuteResponse.complete()();

  (*(v27 + 8))(v45, v29);
  (*(v26 + 8))(v48, v47);
  (*(v25 + 8))(v50, v49);
  OUTLINED_FUNCTION_3_34();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_77();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, v49, v50, a16, a17, a18);
}

void VoiceCommandParityFlow.processParityRequestExecutionResult(executionResult:)(uint64_t a1)
{
  v2 = static VoiceCommandsParity.processExecutionResult(intent:executionResult:)(*(v1 + 16), a1);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *(v1 + 128) = v2;
  *(v1 + 136) = v5;
  v6 = *(v1 + 144);
  *(v1 + 144) = v7;

  outlined consume of VoiceCommandParityFlow.State(v3, v4, v6);
}

uint64_t VoiceCommandParityFlow.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v2 = *(v0 + 120);

  outlined consume of VoiceCommandParityFlow.State(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  return v0;
}

uint64_t VoiceCommandParityFlow.__deallocating_deinit()
{
  VoiceCommandParityFlow.deinit();

  return swift_deallocClassInstance();
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance VoiceCommandParityFlow(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance WFExecuteCustomIntentFlow;
}

uint64_t protocol witness for Flow.execute() in conformance VoiceCommandParityFlow(uint64_t a1)
{
  v4 = *(**v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance VoiceCommandParityFlow@<X0>(uint64_t a1@<X8>)
{
  result = (*(**v1 + 128))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

void outlined consume of VoiceCommandParityFlow.State(void *a1, void *a2, char a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
    outlined consume of ParityFlowExecutionResult(a1, a2, a3);
  }
}

void outlined consume of ParityFlowExecutionResult(void *a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin06ParityC15ExecutionResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin018VoiceCommandParityC0C5State33_AC9EC9B2D075688ACAD90BAD102A8E9ALLO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for VoiceCommandParityFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 17))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for VoiceCommandParityFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for VoiceCommandParityFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceCommandsParityError and conformance VoiceCommandsParityError()
{
  result = lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError;
  if (!lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError;
  if (!lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceCommandsParityError and conformance VoiceCommandsParityError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VoiceCommandParityFlow and conformance VoiceCommandParityFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_34()
{
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
}

void OUTLINED_FUNCTION_7_25(uint64_t a1)
{
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);
  *(v1 + 128) = a1;
  *(v1 + 136) = 0;
  v5 = *(v1 + 144);
  *(v1 + 144) = 64;

  outlined consume of VoiceCommandParityFlow.State(v4, v3, v5);
}

void OUTLINED_FUNCTION_13_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t AutoShortcutDialogTemplating.__allocating_init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_82_6();
  v1 = swift_allocObject();
  v2 = *(v0 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v0, *(v0 + 24));
  OUTLINED_FUNCTION_62_7();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_36_10(v6, v11);
  v8(v7);
  OUTLINED_FUNCTION_50_6();
  v9 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v1;
}

uint64_t AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_82_6();
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_62_7();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5);
  v7 = OUTLINED_FUNCTION_36_10(v6, v11);
  v8(v7);
  OUTLINED_FUNCTION_50_6();
  v9 = OUTLINED_FUNCTION_1_18();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v0;
}

uint64_t AutoShortcutDialogTemplating.firstRun_preRFv2(app:)()
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
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_8_26();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v1);
  v3 = *(v2 + class metadata base offset for AutoShortcutCATs + 48);
  OUTLINED_FUNCTION_6_17();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 56) = v7;
  *v7 = v8;
  v7[1] = AutoShortcutDialogTemplating.firstRun_preRFv2(app:);
  v9 = *(v0 + 48);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_67_7();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *(v5 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v3 + 64) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 48);

    OUTLINED_FUNCTION_6_0();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t AutoShortcutDialogTemplating.firstRunAsLabels(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_8_26();
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v0);
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 104);
  OUTLINED_FUNCTION_6_17();
  v18 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_57_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_65_6(v7);
  OUTLINED_FUNCTION_67_7();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_43_9();
  v3 = *v2;
  v4 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *(v3 + 48);
  *v5 = *v2;
  *(v4 + 56) = v0;

  v7 = *(v3 + 40);
  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v5 = v4;

  OUTLINED_FUNCTION_12_7();

  return v6(v3, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t AutoShortcutDialogTemplating.confirmChangeEnablement(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 64) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_8_26();
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v0);
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 32);
  OUTLINED_FUNCTION_6_17();
  v18 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_57_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_51_9(v7);
  OUTLINED_FUNCTION_67_7();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_43_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v2 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v10 = *(v3 + 40);

    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 56);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutDialogTemplating - error getting RFv2 confirmChangeEnablement result; %@");
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_87();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t AutoShortcutDialogTemplating.confirmChangeEnablement_preRFv2(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 72) = v1;
  OUTLINED_FUNCTION_32_4(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_8_26();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v1);
  v3 = *(v2 + class metadata base offset for AutoShortcutCATs + 16);
  OUTLINED_FUNCTION_6_17();
  v20 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 56) = v7;
  *v7 = v8;
  v7[1] = AutoShortcutDialogTemplating.confirmChangeEnablement_preRFv2(appName:isEnabling:);
  v9 = *(v0 + 48);
  v10 = *(v0 + 72);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_67_7();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_69_7();
  v0 = OUTLINED_FUNCTION_6_27();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 64);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutDialogTemplating - error getting confirmChangeEnablement result; %@");
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_68_9();
  v11 = *(OUTLINED_FUNCTION_81_4(v10) + 48);
  OUTLINED_FUNCTION_6_17();
  v29 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_57_1(v15);
  *v16 = v17;
  v16[1] = AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:);
  v18 = *(v9 + 64);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_82_2();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, v29);
}

uint64_t AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 40);

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v5 = OUTLINED_FUNCTION_76_6();
  v6 = *(v0 + 56);
  if (v5)
  {
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v8);
    OUTLINED_FUNCTION_5_7(&dword_0, v9, v10, "#AutoShortcutDialogTemplating - error making confirmChangeEnablementPattern result; %@");
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_87();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t AutoShortcutDialogTemplating.confirmChangeEnablementDeclined(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 64) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_8_26();
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v0);
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 48);
  OUTLINED_FUNCTION_6_17();
  v18 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_57_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_51_9(v7);
  OUTLINED_FUNCTION_67_7();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_43_9();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *(v2 + 48);
  *v4 = *v1;
  *(v3 + 56) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v2 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v10 = *(v3 + 40);

    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 56);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutDialogTemplating - error getting confirmChangeEnablementDeclined result; %@");
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  v10 = *(v0 + 40);

  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_87();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t AutoShortcutDialogTemplating.confirmChangeEnablementDeclined_preRFv2(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 72) = v1;
  OUTLINED_FUNCTION_32_4(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_8_26();
  v1 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v1);
  v3 = *(v2 + class metadata base offset for AutoShortcutCATs + 24);
  OUTLINED_FUNCTION_6_17();
  v20 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 56) = v7;
  *v7 = v8;
  v7[1] = AutoShortcutDialogTemplating.confirmChangeEnablementDeclined_preRFv2(appName:isEnabled:);
  v9 = *(v0 + 48);
  v10 = *(v0 + 72);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_67_7();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  OUTLINED_FUNCTION_1_18();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_5();
  v4 = OUTLINED_FUNCTION_76_6();
  v5 = *(v0 + 64);
  if (v4)
  {
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_74_4(5.7779e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_58_6(v7);
    OUTLINED_FUNCTION_5_7(&dword_0, v8, v9, "#AutoShortcutDialogTemplating - error getting confirmChangeEnablementDeclined result; %@");
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_69_7();
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t AutoShortcutDialogTemplating.appEnabled(appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v1[7];
  *v4 = *v2;
  *(v3 + 64) = v0;

  v6 = v1[6];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t AutoShortcutDialogTemplating.appEnabled(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[4];
  v11 = v9[5];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v10[8];
  v15 = v10[5];
  v16 = v10[6];
  v9[6] = OUTLINED_FUNCTION_17_25(v10);

  OUTLINED_FUNCTION_13_18();
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v17);
  v19 = *(v18 + class metadata base offset for AutoShortcutCATsSimple + 16);
  OUTLINED_FUNCTION_6_17();
  v33 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  v9[7] = v23;
  *v23 = v9;
  OUTLINED_FUNCTION_46_12(v23);
  OUTLINED_FUNCTION_82_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33);
}

uint64_t AutoShortcutDialogTemplating.appEnabled_preRFv2(appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_32_4(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 72) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = *(v3 + 48);

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t AutoShortcutDialogTemplating.appEnabled_preRFv2(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v13 = *(v9 + 24);
  v12 = *(v9 + 32);
  v15 = v10[6];
  v14 = v10[7];
  v16 = v10[5];
  *(v9 + 56) = OUTLINED_FUNCTION_17_25(v10);

  OUTLINED_FUNCTION_13_18();
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v17);
  v19 = *(v18 + class metadata base offset for AutoShortcutCATs + 8);
  OUTLINED_FUNCTION_6_17();
  v36 = v20 + *v20;
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v9 + 64) = v23;
  *v23 = v24;
  v23[1] = AutoShortcutDialogTemplating.appEnabled_preRFv2(appName:wasAlreadyEnabled:);
  v25 = *(v9 + 48);
  v26 = *(v9 + 80);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_82_2();

  return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36);
}

uint64_t AutoShortcutDialogTemplating.appDisabled(appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v1[7];
  *v4 = *v2;
  *(v3 + 64) = v0;

  v6 = v1[6];
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_54_7();
    OUTLINED_FUNCTION_87();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t AutoShortcutDialogTemplating.appDisabled(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[4];
  v11 = v9[5];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v10[8];
  v15 = v10[5];
  v16 = v10[6];
  v9[6] = OUTLINED_FUNCTION_17_25(v10);

  OUTLINED_FUNCTION_13_18();
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v17);
  OUTLINED_FUNCTION_84_0((v18 + class metadata base offset for AutoShortcutCATsSimple));
  v32 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v9[7] = v22;
  *v22 = v9;
  OUTLINED_FUNCTION_46_12(v22);
  OUTLINED_FUNCTION_82_2();

  return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
}

uint64_t AutoShortcutDialogTemplating.appDisabled_preRFv2(appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_32_4(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 72) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = *(v3 + 48);

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_87();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t AutoShortcutDialogTemplating.appDisabled_preRFv2(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v13 = *(v9 + 24);
  v12 = *(v9 + 32);
  v15 = v10[6];
  v14 = v10[7];
  v16 = v10[5];
  *(v9 + 56) = OUTLINED_FUNCTION_17_25(v10);

  OUTLINED_FUNCTION_13_18();
  v17 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v17);
  OUTLINED_FUNCTION_84_0((v18 + class metadata base offset for AutoShortcutCATs));
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v9 + 64) = v22;
  *v22 = v23;
  v22[1] = AutoShortcutDialogTemplating.appDisabled_preRFv2(appName:wasAlreadyEnabled:);
  v24 = *(v9 + 48);
  v25 = *(v9 + 80);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_82_2();

  return v30(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t AutoShortcutDialogTemplating.openInShortcuts()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34_13(*(v0 + 16));
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 144);
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_64_2(v6);

  return v8();
}

uint64_t AutoShortcutDialogTemplating.openInShortcuts_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutDialogTemplating.openInShortcuts_preRFv2()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10(*(v0 + 24));
  v2 = *(v1 + class metadata base offset for AutoShortcutCATs + 72);
  OUTLINED_FUNCTION_2_26();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = AutoShortcutDialogTemplating.openInShortcuts_preRFv2();
  v8 = OUTLINED_FUNCTION_52_1();

  return v10(v8);
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutAppEnabledPattern(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutAppEnabledPattern(appName:wasAlreadyEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = OUTLINED_FUNCTION_68_9();
  v11 = *(OUTLINED_FUNCTION_81_4(v10) + 32);
  OUTLINED_FUNCTION_6_17();
  v29 = v12 + *v12;
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_57_1(v15);
  *v16 = v17;
  v16[1] = AutoShortcutDialogTemplating.makeAutoShortcutAppEnabledPattern(appName:wasAlreadyEnabled:);
  v18 = *(v9 + 64);
  OUTLINED_FUNCTION_44_12();
  OUTLINED_FUNCTION_82_2();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, v29);
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutAppEnabledPattern(appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

uint64_t AutoShortcutDialogTemplating.enableAndCancel()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingSection();
  v1[6] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = OUTLINED_FUNCTION_35_13();
  v6(v5);
  RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v7 = OUTLINED_FUNCTION_31_11();
  v8(v7);
  v9 = v1[2];
  if (v0)
  {
    OUTLINED_FUNCTION_34_13(v9);
    v11 = *(v10 + class metadata base offset for AutoShortcutCATsSimple + 88);
    OUTLINED_FUNCTION_6_17();
    v40 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    OUTLINED_FUNCTION_64_2(v15);
    OUTLINED_FUNCTION_67_7();

    return v16(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_19_10(v9);
    v26 = *(v25 + class metadata base offset for AutoShortcutCATs + 40);
    OUTLINED_FUNCTION_6_17();
    v41 = v27 + *v27;
    v29 = *(v28 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v1[17] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_83_3(v30);
    OUTLINED_FUNCTION_67_7();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[14];
    v12 = v5[11];
    v13 = v5[8];
    v14 = v5[5];

    OUTLINED_FUNCTION_6_0();

    return v15();
  }

  else
  {
    v5[16] = v3;
    v17 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[11];
  v2 = *(TemplatingResult.sections.getter() + 16);

  if (v2 != 2)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v26 = 0;
    v22 = 0;
    v27 = 0xE000000000000000;
    v24 = 0xE000000000000000;
    goto LABEL_6;
  }

  v3 = v0[11];
  result = TemplatingResult.sections.getter();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[3];
  v9 = v0[4];
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v35 = *(v6 + 16);
  v35(v0[8], result + v32, v0[6]);

  TemplatingSection.content.getter();
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_9_3();
  v34 = v12;
  (v12)(v11);
  v13 = TemplatingText.text.getter();
  v15 = v14;
  v33 = *(v9 + 8);
  v33(v7, v8);
  result = TemplatingResult.sections.getter();
  if (*(result + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = v0[10];
  v17 = v0[8];
  v29 = v0[9];
  v30 = v0[11];
  v18 = v0[6];
  v19 = v0[5];
  v31 = v15;
  v20 = v13;
  v21 = v0[3];
  v35(v17, result + v32 + *(v0[7] + 72), v18);

  TemplatingSection.content.getter();
  v34(v17, v18);
  v22 = TemplatingText.text.getter();
  v24 = v23;
  v25 = v21;
  v26 = v20;
  v27 = v31;
  v33(v19, v25);
  (*(v16 + 8))(v30, v29);
LABEL_6:
  OUTLINED_FUNCTION_85_4();

  v28 = v0[1];

  return v28(v26, v27, v22, v24);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t AutoShortcutDialogTemplating.enableAndCancel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 128);
  *(v10 + 152) = 1;
  dispatch thunk of LabelExecutionResult.subscript.getter();
  *(v10 + 153) = 0;
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v12 = *(v10 + 112);
  v13 = *(v10 + 88);
  v14 = *(v10 + 64);
  v15 = *(v10 + 40);

  v16 = *(v10 + 8);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_21_0();

  return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t AutoShortcutDialogTemplating.disableAndCancel()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = type metadata accessor for TemplatingSection();
  v1[6] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[9] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[12] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_28();
  v18 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = OUTLINED_FUNCTION_35_13();
  v6(v5);
  RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v7 = OUTLINED_FUNCTION_31_11();
  v8(v7);
  v9 = v1[2];
  if (v0)
  {
    OUTLINED_FUNCTION_34_13(v9);
    v11 = *(v10 + class metadata base offset for AutoShortcutCATsSimple + 64);
    OUTLINED_FUNCTION_6_17();
    v40 = v12 + *v12;
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    OUTLINED_FUNCTION_64_2(v15);
    OUTLINED_FUNCTION_67_7();

    return v16(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_19_10(v9);
    v26 = *(v25 + class metadata base offset for AutoShortcutCATs + 32);
    OUTLINED_FUNCTION_6_17();
    v41 = v27 + *v27;
    v29 = *(v28 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v1[17] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_83_3(v30);
    OUTLINED_FUNCTION_67_7();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 120);
  *v4 = *v1;
  v3[16] = v7;

  if (v0)
  {
    v8 = v3[14];
    v9 = v3[11];
    v10 = v3[8];
    v11 = v3[5];

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
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t AutoShortcutDialogTemplating.disableAndCancel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = [*(v10 + 128) dialog];
  type metadata accessor for DialogElement();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.count.getter(v12);
  OUTLINED_FUNCTION_1_18();

  v13 = *(v10 + 128);
  if (v11 == &dword_0 + 2)
  {
    v14 = [v13 dialog];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v15 & 0xC000000000000001) == 0, v15);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = *(v10 + 128);

    v19 = [v17 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = [v18 dialog];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v21 & 0xC000000000000001) == 0, v21);
    if ((v21 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v21 + 40);
    }

    v23 = v22;
    v24 = *(v10 + 128);

    v25 = [v23 fullPrint];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  OUTLINED_FUNCTION_85_4();

  v26 = *(v10 + 8);
  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_21_0();

  return v32(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t AutoShortcutDialogTemplating.moreShortcuts(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for TemplatingText();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for TemplatingResult();
  v1[8] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[11] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[12] = v15;
  v17 = *(v16 + 64);
  v1[13] = OUTLINED_FUNCTION_28();
  v18 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[3];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  OUTLINED_FUNCTION_1_18();
  result = dispatch thunk of DeviceState.isPhone.getter();
  if ((result & 1) == 0)
  {
    v2 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    OUTLINED_FUNCTION_1_18();
    result = dispatch thunk of DeviceState.isPad.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v4 = v0[2];
  v5 = __OFSUB__(v4, 3);
  v6 = v4 - 3;
  if (v5)
  {
    __break(1u);
    return result;
  }

  if (v6 >= 1)
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = v6;
    v11 = OUTLINED_FUNCTION_35_13();
    v12(v11);
    RFFeatureFlags.ResponseFramework.isEnabled.getter();
    v13 = OUTLINED_FUNCTION_31_11();
    v14(v13);
    v15 = v0[3];
    if (v2)
    {
      v16 = *(**(v15 + 64) + class metadata base offset for AutoShortcutCATsSimple + 136);
      OUTLINED_FUNCTION_2_26();
      v33 = (v17 + *v17);
      v19 = *(v18 + 4);
      v20 = swift_task_alloc();
      v0[14] = v20;
      *v20 = v0;
      OUTLINED_FUNCTION_64_2(v20);

      return (v33)(*&v10, 0);
    }

    else
    {
      v26 = *(**(v15 + 56) + class metadata base offset for AutoShortcutCATs + 64);
      OUTLINED_FUNCTION_2_26();
      v34 = (v27 + *v27);
      v29 = *(v28 + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      v0[16] = v30;
      *v30 = v31;
      v30[1] = AutoShortcutDialogTemplating.moreShortcuts(numberOfShortcuts:);
      v32 = v0[10];

      return (v34)(v32, *&v10, 0);
    }
  }

  else
  {
LABEL_9:
    v21 = v0[13];
    v22 = v0[10];
    v24 = v0[6];
    v23 = v0[7];

    OUTLINED_FUNCTION_12_7();

    return v25(0, 0);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = v5[13];
    v12 = v5[10];
    v15 = v5 + 6;
    v13 = v5[6];
    v14 = v15[1];

    OUTLINED_FUNCTION_6_0();

    return v16();
  }

  else
  {
    v5[15] = v3;
    v18 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v18, v19, v20);
  }
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[15];
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_87();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[10];
  v2 = v0[7];
  v3 = TemplatingResult.sections.getter();
  specialized Collection.first.getter(v3, v2);

  v4 = type metadata accessor for TemplatingSection();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  if (EnumTagSinglePayload == 1)
  {
    v10 = *(v7 + 8);
    v11 = OUTLINED_FUNCTION_9_3();
    v12(v11);
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];
    TemplatingSection.content.getter();
    OUTLINED_FUNCTION_21_2(v4);
    (*(v18 + 8))(v8, v4);
    v13 = TemplatingText.text.getter();
    v14 = v19;
    (*(v16 + 8))(v15, v17);
    v20 = *(v7 + 8);
    v21 = OUTLINED_FUNCTION_9_3();
    v22(v21);
  }

  v23 = v0[13];
  v24 = v0[10];
  v26 = v0[6];
  v25 = v0[7];

  OUTLINED_FUNCTION_12_7();

  return v27(v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunPattern(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v4 = CATWrapper.__allocating_init(options:globals:)();
  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(*v4 + class metadata base offset for RunLinkActionCATPatternsExecutor + 32);
  OUTLINED_FUNCTION_6_17();
  v20 = v7 + *v7;
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = AutoShortcutDialogTemplating.makeAutoShortcutFirstRunPattern(app:);
  OUTLINED_FUNCTION_67_7();

  return v14(v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = v5[5];
    v15 = v5[6];
    v16 = v5[4];

    v17 = *(v9 + 8);

    return v17(v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[8];

  return v4();
}

uint64_t closure #1 in AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;

  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_74_1();
  type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  return outlined assign with take of SpeakableString?(v7, a1);
}

uint64_t AutoShortcutDialogTemplating.firstRun(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_29_15();
  OUTLINED_FUNCTION_8_26();
  v0 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v0);
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 96);
  OUTLINED_FUNCTION_6_17();
  v18 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_57_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_65_6(v7);
  OUTLINED_FUNCTION_67_7();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_43_9();
  v3 = *v2;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v6 = *(v3 + 48);
  *v5 = *v2;
  *(v4 + 56) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v3 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_54_7();

    return v10(v1);
  }
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[13];

  return v4();
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog(app:firstPhrase:secondPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[10];
  v15 = v14[11];
  v17 = v14[9];
  v18 = v14[7];
  v51 = v14[6];
  v20 = v14[4];
  v19 = v14[5];
  v21 = v14[2];
  v22 = v14[3];
  v23 = *(v14[8] + 64);

  OUTLINED_FUNCTION_74_1();
  v24 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);

  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);

  OUTLINED_FUNCTION_74_1();
  v31 = OUTLINED_FUNCTION_6_27();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v24);
  v34 = *(*v23 + class metadata base offset for AutoShortcutCATsSimple + 112);
  OUTLINED_FUNCTION_2_26();
  v52 = v35 + *v35;
  v37 = *(v36 + 4);
  v38 = swift_task_alloc();
  v14[12] = v38;
  *v38 = v14;
  v38[1] = AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog(app:firstPhrase:secondPhrase:);
  v39 = v14[10];
  v40 = v14[11];
  v41 = v14[9];
  OUTLINED_FUNCTION_6_1();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, v52, a12, a13, a14);
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog(app:firstPhrase:secondPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_4_1();
  *v14 = v13;
  v15 = v11[12];
  v16 = *v12;
  *v14 = *v12;
  *(v13 + 104) = v10;

  v17 = v11[11];
  v18 = v11[10];
  OUTLINED_FUNCTION_67_8(v11[9]);
  OUTLINED_FUNCTION_67_8(v18);
  OUTLINED_FUNCTION_67_8(v17);
  if (v10)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_21_0();

    return _swift_task_switch(v19, v20, v21);
  }

  else
  {

    v23 = *(v16 + 8);
    OUTLINED_FUNCTION_21_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog_preRFv2(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[14];

  return v4();
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog_preRFv2(app:firstPhrase:secondPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[11];
  v15 = v14[12];
  v17 = v14[10];
  v18 = v14[8];
  v52 = v14[7];
  v20 = v14[5];
  v19 = v14[6];
  v21 = v14[3];
  v22 = v14[4];
  v23 = *(v14[9] + 56);

  OUTLINED_FUNCTION_74_1();
  v24 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);

  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);

  OUTLINED_FUNCTION_74_1();
  v31 = OUTLINED_FUNCTION_6_27();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v24);
  v34 = *(*v23 + class metadata base offset for AutoShortcutCATs + 56);
  OUTLINED_FUNCTION_2_26();
  v53 = v35 + *v35;
  v37 = *(v36 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v14[13] = v38;
  *v38 = v39;
  v38[1] = AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog_preRFv2(app:firstPhrase:secondPhrase:);
  v41 = v14[11];
  v40 = v14[12];
  v42 = v14[10];
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_6_1();

  return v47(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, v53, a12, a13, a14);
}

uint64_t AutoShortcutDialogTemplating.makeAutoShortcutFirstRunHomePodDialog_preRFv2(app:firstPhrase:secondPhrase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v13 = v12;
  OUTLINED_FUNCTION_4_1();
  *v14 = v13;
  v16 = v15[13];
  v17 = v15[12];
  v18 = v15[11];
  v19 = v15[10];
  v20 = *v11;
  OUTLINED_FUNCTION_2_0();
  *v21 = v20;
  v13[14] = v10;

  OUTLINED_FUNCTION_67_8(v19);
  OUTLINED_FUNCTION_67_8(v18);
  OUTLINED_FUNCTION_67_8(v17);
  if (v10)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_21_0();

    return _swift_task_switch(v22, v23, v24);
  }

  else
  {
    v27 = v13[11];
    v26 = v13[12];
    v28 = v13[10];

    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_21_0();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtSgMd, &_sSi_11SiriKitFlow16TemplatingResultVtSgMR);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v4 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 48) = v5;
  *v5 = v6;
  v5[1] = AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v3, 0, 0, &async function pointer to partial apply for closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:), v2, v1);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for TemplatingText();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingSection();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtSgMd, &_sSi_11SiriKitFlow16TemplatingResultVtSgMR);
  v4[20] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v13 = type metadata accessor for TemplatingResult();
  v4[22] = v13;
  v14 = *(v13 - 8);
  v4[23] = v14;
  v15 = *(v14 + 64) + 15;
  v4[24] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtSgSgMd, &_sSi_11SiriKitFlow16TemplatingResultVtSgSgMR) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySi_11SiriKitFlow16TemplatingResultVtSg_GMd, &_sScG8IteratorVySi_11SiriKitFlow16TemplatingResultVtSg_GMR);
  v4[28] = v18;
  v19 = *(v18 - 8);
  v4[29] = v19;
  v20 = *(v19 + 64) + 15;
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:), 0, 0);
}

uint64_t closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = 0;
  v16 = *(v14 + 96);
  v17 = (v16 + 40);
  v58 = (v14 + 16);
  v59 = *(v16 + 16);
  while (v59 != v15)
  {
    v19 = *(v14 + 200);
    v18 = *(v14 + 208);
    v20 = *(v14 + 104);
    v22 = *(v17 - 1);
    v21 = *v17;
    a11 = v17;
    v23 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
    v27 = swift_allocObject();
    v27[2] = 0;
    v28 = v27 + 2;
    v27[3] = 0;
    v27[4] = v20;
    v27[5] = v22;
    v27[6] = v21;
    v27[7] = v15;
    outlined init with copy of TaskPriority?(v18, v19);
    LODWORD(v19) = __swift_getEnumTagSinglePayload(v19, 1, v23);

    v29 = *(v14 + 200);
    if (v19 == 1)
    {
      outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v14 + 200), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      OUTLINED_FUNCTION_21_2(v23);
      (*(v30 + 8))(v29, v23);
    }

    if (*v28)
    {
      v31 = v27[3];
      v32 = *v28;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v33 = dispatch thunk of Actor.unownedExecutor.getter();
      v35 = v34;
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v36 = **(v14 + 88);
    v37 = swift_allocObject();
    *(v37 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:);
    *(v37 + 24) = v27;

    if (v35 | v33)
    {
      v38 = v14 + 16;
      *v58 = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v33;
      *(v14 + 40) = v35;
    }

    else
    {
      v38 = 0;
    }

    v39 = *(v14 + 208);
    v40 = *(v14 + 160);
    *(v14 + 48) = 1;
    *(v14 + 56) = v38;
    *(v14 + 64) = v36;
    swift_task_create();

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v39, &_sScPSgMd, &_sScPSgMR);
    v17 = a11 + 2;
    ++v15;
  }

  v41 = *(v14 + 240);
  v42 = *(v14 + 160);
  v43 = *(v14 + 88);
  v44 = Dictionary.init(dictionaryLiteral:)();
  v45 = *v43;
  TaskGroup.makeAsyncIterator()();
  *(v14 + 248) = v44;
  *(v14 + 256) = v44;
  v46 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v14 + 264) = v47;
  *v47 = v48;
  OUTLINED_FUNCTION_24_16(v47);
  OUTLINED_FUNCTION_6_1();

  return TaskGroup.Iterator.next(isolation:)(v49, v50, v51, v52, v53, v54, v55, v56, v58, v59, a11, a12, a13, a14);
}

uint64_t closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21_1();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_30();
  a20 = v22;
  v25 = *(v22 + 216);
  if (__swift_getEnumTagSinglePayload(v25, 1, *(v22 + 160)) == 1)
  {
    v26 = *(v22 + 256);
    (*(*(v22 + 232) + 8))(*(v22 + 240), *(v22 + 224));
    a10 = specialized _copyCollectionToContiguousArray<A>(_:)(v26);
    specialized MutableCollection<>.sort(by:)(&a10);
    v63 = a10;
    v64 = a10[2];
    if (v64)
    {
      a9 = v22;
      a10 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v65 = 0;
      v66 = a10;
      v67 = a10[2];
      v68 = 2 * v67;
      do
      {
        v69 = v63;
        v71 = v63[v65 + 5];
        v70 = v63[v65 + 6];
        a10 = v66;
        v72 = v66[3];

        if (v67 >= v72 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v66 = a10;
        }

        v66[2] = v67 + 1;
        v73 = &v66[v68];
        v73[4] = v71;
        v73[5] = v70;
        v68 += 2;
        v65 += 3;
        ++v67;
        --v64;
        v63 = v69;
      }

      while (v64);
      v22 = a9;
      v74 = *(a9 + 256);
    }

    else
    {
      v76 = *(v22 + 256);

      v66 = _swiftEmptyArrayStorage;
    }

    v77 = *(v22 + 240);
    v78 = *(v22 + 208);
    v79 = *(v22 + 216);
    v81 = *(v22 + 192);
    v80 = *(v22 + 200);
    v82 = *(v22 + 168);
    v83 = *(v22 + 152);
    v84 = *(v22 + 128);
    **(v22 + 80) = v66;

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_1();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
  }

  v27 = *(v22 + 168);
  v28 = OUTLINED_FUNCTION_22_4();
  outlined init with take of (Int, TemplatingResult)?(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtMd, &_sSi_11SiriKitFlow16TemplatingResultVtMR);
  v30 = OUTLINED_FUNCTION_1_18();
  if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(*(v22 + 168), &_sSi_11SiriKitFlow16TemplatingResultVtSgMd, &_sSi_11SiriKitFlow16TemplatingResultVtSgMR);
    goto LABEL_30;
  }

  v31 = *(v22 + 168);
  v32 = *v31;
  (*(*(v22 + 184) + 32))(*(v22 + 192), v31 + *(v25 + 48), *(v22 + 176));
  v33 = TemplatingResult.sections.getter();
  if (!*(v33 + 16))
  {
    (*(*(v22 + 184) + 8))(*(v22 + 192), *(v22 + 176));

    v75 = *(v22 + 248);
LABEL_29:
    *(v22 + 248) = v75;
LABEL_30:
    v103 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v22 + 264) = v104;
    *v104 = v105;
    OUTLINED_FUNCTION_24_16();
    OUTLINED_FUNCTION_6_1();

    return TaskGroup.Iterator.next(isolation:)(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
  }

  v34 = *(v22 + 248);
  v36 = *(v22 + 144);
  v35 = *(v22 + 152);
  v38 = *(v22 + 128);
  v37 = *(v22 + 136);
  v39 = *(v22 + 112);
  v40 = *(v22 + 120);
  (*(v36 + 16))(v35, v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v37);

  TemplatingSection.content.getter();
  (*(v36 + 8))(v35, v37);
  v41 = TemplatingText.text.getter();
  v43 = v42;
  (*(v40 + 8))(v38, v39);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 72) = v34;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
  v53 = *(v34 + 16);
  v54 = (v46 & 1) == 0;
  v55 = v53 + v54;
  if (__OFADD__(v53, v54))
  {
    __break(1u);
    goto LABEL_34;
  }

  v56 = v45;
  v57 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySiSSGMd, &_ss17_NativeDictionaryVySiSSGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55))
  {
LABEL_24:
    v93 = *(v22 + 72);
    v94 = *(v22 + 192);
    v95 = *(v22 + 176);
    v96 = (*(v22 + 184) + 8);
    if (v57)
    {
      v97 = (v93[7] + 16 * v56);
      v98 = v97[1];
      *v97 = v41;
      v97[1] = v43;

      (*v96)(v94, v95);
LABEL_28:
      v75 = vdupq_n_s64(v93);
      goto LABEL_29;
    }

    v93[(v56 >> 6) + 8] |= 1 << v56;
    *(v93[6] + 8 * v56) = v32;
    v99 = (v93[7] + 16 * v56);
    *v99 = v41;
    v99[1] = v43;
    v45 = (*v96)(v94, v95);
    v100 = v93[2];
    v101 = __OFADD__(v100, 1);
    v102 = v100 + 1;
    if (!v101)
    {
      v93[2] = v102;
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    return TaskGroup.Iterator.next(isolation:)(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
  }

  v58 = *(v22 + 72);
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
  if ((v57 & 1) == (v60 & 1))
  {
    v56 = v59;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_6_1();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = type metadata accessor for TemplatingResult();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:), 0, 0);
}

uint64_t closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)()
{
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_15_2();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v0[3] + 56);

  OUTLINED_FUNCTION_8_26();
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_48(v5);
  v7 = *(v6 + class metadata base offset for AutoShortcutCATs + 80);
  OUTLINED_FUNCTION_6_17();
  v24 = v8 + *v8;
  v10 = *(v9 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[11] = v11;
  *v11 = v12;
  v11[1] = closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:);
  v13 = v0[10];
  v14 = v0[7];
  OUTLINED_FUNCTION_67_7();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 96) = v0;

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_2();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtMd, &_sSi_11SiriKitFlow16TemplatingResultVtMR);
  v7 = *(v6 + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v7], v1, v3);
  OUTLINED_FUNCTION_49_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = v0[10];
  v12 = v0[7];

  OUTLINED_FUNCTION_6_0();

  return v13();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[12];
  v2 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtMd, &_sSi_11SiriKitFlow16TemplatingResultVtMR);
  OUTLINED_FUNCTION_37_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = v0[10];
  v8 = v0[7];

  OUTLINED_FUNCTION_6_0();

  return v9();
}

uint64_t AutoShortcutDialogTemplating.makeUserDeniedDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_34_13(*(v0 + 16));
  v2 = *(v1 + class metadata base offset for AutoShortcutCATsSimple + 176);
  OUTLINED_FUNCTION_2_26();
  v8 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_64_2(v6);

  return v8();
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t AutoShortcutDialogTemplating.makeUserDeniedDialog_rfv1()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t AutoShortcutDialogTemplating.makeUserDeniedDialog_rfv1()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_10(*(v0 + 24));
  v2 = *(v1 + class metadata base offset for AutoShortcutCATs + 88);
  OUTLINED_FUNCTION_2_26();
  v10 = (v3 + *v3);
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = VoiceCommandParityFlow.execute();
  v8 = OUTLINED_FUNCTION_52_1();

  return v10(v8);
}

uint64_t *AutoShortcutDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  return v0;
}

uint64_t AutoShortcutDialogTemplating.__deallocating_deinit()
{
  AutoShortcutDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

Swift::Int specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_SS5valuetMd, &_sSi3key_SS5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

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
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Sd5valuetMd, &_sSS3key_Sd5valuetMR);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        *(v9 + 24) = *v9;
        result = *(v9 + 16);
        *(v9 + 40) = result;
        *v9 = v7;
        *(v9 + 8) = v10;
        *(v9 + 16) = v11;
        v9 -= 24;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = v12[3];
        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v90 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9);
        v11 = (*a3 + 24 * v7);
        v12 = 24 * v7;
        v15 = *v11;
        v14 = v11 + 6;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 3;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 24 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *(v25 + 2);
                v28 = *v25;
                v29 = *(v26 - 8);
                *v25 = *(v26 - 24);
                *(v25 + 2) = v29;
                *(v26 - 24) = v28;
                *(v26 - 8) = v27;
              }

              ++v23;
              v21 -= 24;
              v12 += 24;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9 - 24;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9);
              v34 = v32;
              v35 = v31;
              do
              {
                if (v33 >= *v35)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                *(v35 + 24) = *v35;
                *(v35 + 40) = *(v35 + 16);
                *v35 = v33;
                *(v35 + 8) = v36;
                *(v35 + 16) = v37;
                v35 -= 24;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v87 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v87;
      v88 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
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
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v88);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v90, *a1, a3);
LABEL_89:
}

{
  v5 = v4;
  v98 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v7 < v31)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v7 - 24;
            v95 = v9;
            v35 = v9 - v7;
            do
            {
              v36 = (v33 + 24 * v7);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == v40[1];
                if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = v40[3];
                v38 = v40[4];
                v42 = v40[5];
                v43 = v40[2];
                *(v40 + 3) = *v40;
                v40[5] = v43;
                *v40 = v37;
                v40[1] = v38;
                v40[2] = v42;
                v40 -= 3;
              }

              while (!__CFADD__(v39++, 1));
              ++v7;
              v34 += 24;
              --v35;
            }

            while (v7 != v32);
            v7 = v32;
            v9 = v95;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = v8[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v90;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v91;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v94 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v96);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v94;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v98, *a1, a3);
LABEL_103:
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 3) < *v15)
    {
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v17 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v17;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

void *specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[12] = a6;
  a5[13] = a7;
  __swift_allocate_boxed_opaque_existential_1(a5 + 9);
  OUTLINED_FUNCTION_21_2(a6);
  (*(v12 + 32))();
  outlined init with take of Output(a1, a5 + 2);
  a5[7] = a2;
  a5[8] = a3;
  return a5;
}

unint64_t type metadata accessor for DialogElement()
{
  result = lazy cache variable for type metadata for DialogElement;
  if (!lazy cache variable for type metadata for DialogElement)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DialogElement);
  }

  return result;
}

uint64_t partial apply for closure #1 in AutoShortcutDialogTemplating.makeAutoShortcutFirstRunPattern(app:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in AutoShortcutDialogTemplating.makeConfirmChangeEnablementPattern(appName:isEnabling:)(a1);
}

uint64_t partial apply for closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v5 = v4;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(v5, v3, v7, v6);
}

uint64_t sub_15458C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t partial apply for closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;
  OUTLINED_FUNCTION_21_0();

  return closure #1 in closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:)(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_154690()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_11SiriKitFlow16TemplatingResultVtSg_Tg5TA()
{
  OUTLINED_FUNCTION_12_0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSi_11SiriKitFlow16TemplatingResultVtSg_Tg5();
}

uint64_t outlined init with take of (Int, TemplatingResult)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_11SiriKitFlow16TemplatingResultVtSgMd, &_sSi_11SiriKitFlow16TemplatingResultVtSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_48(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
  v4 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_26()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_17_25@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), v1);

  return DeviceState.asSiriKitDeviceState()(v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_16(uint64_t a1)
{
  *(a1 + 8) = closure #1 in AutoShortcutDialogTemplating.makeShortcutPhrases(shortcutPhrases:);
  v2 = v1[30];
  result = v1[27];
  v4 = v1[28];
  return result;
}

uint64_t OUTLINED_FUNCTION_29_15()
{
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0[4] + 64);
}

uint64_t OUTLINED_FUNCTION_46_12(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 72);
  return v2;
}

uint64_t OUTLINED_FUNCTION_49_9()
{
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v0[5] + 56);
}

void *OUTLINED_FUNCTION_50_6()
{

  return specialized AutoShortcutDialogTemplating.init(deviceState:autoShortcutCATs:autoShortcutCATsSimple:linkActionPatterns:)(v3, v2, v1, v6, v0, v4, v5);
}

uint64_t OUTLINED_FUNCTION_51_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 64);
  return *(v2 + 40);
}

uint64_t OUTLINED_FUNCTION_58_6(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_8(uint64_t a1)
{

  return outlined destroy of Siri_Nlu_External_UserDialogAct?(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_68_9()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_69_7()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  return type metadata accessor for TemplatingResult();
}

uint64_t OUTLINED_FUNCTION_74_4(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

BOOL OUTLINED_FUNCTION_76_6()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_77_5()
{
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_85_4()
{
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
}

uint64_t AutoShortcutFirstRunWatchVisual.enableButtonLabel.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutFirstRunWatchVisual.cancelButtonLabel.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutFirstRunWatchVisual.moreShortcutsLabel.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutFirstRunWatchVisual.promptLabel.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_22();
}

uint64_t AutoShortcutAppEnabledVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[33] = v2;
  v1[34] = v0;
  v3 = type metadata accessor for CustomCanvas();
  v1[35] = v3;
  v4 = *(v3 - 8);
  v1[36] = v4;
  v5 = *(v4 + 64) + 15;
  v1[37] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutAppEnabledVisual.response.getter, 0, 0);
}

{
  v1 = v0[34];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
  v9 = *(v1 + 64);
  v0[13] = *v1;
  v0[14] = 3;
  v0[15] = v2;
  v0[16] = v8;
  v0[17] = v5;
  v0[18] = v3;
  v0[19] = v4;
  v0[20] = v6;
  v0[21] = v7;
  v0[22] = v9;
  v10 = *(v1 + 72);
  memcpy(v0 + 23, v0 + 13, 0x50uLL);
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = one-time initialization token for encoder;

  if (v12 != -1)
  {
    swift_once();
  }

  memcpy(v0 + 2, v0 + 23, 0x50uLL);
  *(v0 + 96) = v11;
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[36];
  v16 = v0[33];
  CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMd, &_ss23_ContiguousArrayStorageCy10SnippetKit18SectionConvertible_pGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_216850;
  *(v17 + 56) = v14;
  *(v17 + 64) = &protocol witness table for CustomCanvas;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  (*(v15 + 16))(boxed_opaque_existential_1, v13, v14);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  outlined destroy of AutoShortcutAppPhrasesViewModel((v0 + 13));
  (*(v15 + 8))(v13, v14);

  OUTLINED_FUNCTION_6_0();

  return v19();
}

uint64_t AutoShortcutAppEnabledVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = DisambiguationVisual.data.getter;

  return AutoShortcutAppEnabledVisual.response.getter();
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppEnabledVisual(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutAppEnabledVisual(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t UsoEntity_common_GeographicArea.toLocation()@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6CountyVSgMd, &_s13SiriInference6CountyVSgMR);
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_9();
  v124 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12LocationNameVSgMd, &_s13SiriInference12LocationNameVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_16_9();
  v123 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference16AddressReferenceVSgMd, &_s13SiriInference16AddressReferenceVSgMR);
  OUTLINED_FUNCTION_14(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_16_9();
  v122 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13ContinentNameVSgMd, &_s13SiriInference13ContinentNameVSgMR);
  OUTLINED_FUNCTION_14(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_16_9();
  v121 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference13StreetAddressVSgMd, &_s13SiriInference13StreetAddressVSgMR);
  OUTLINED_FUNCTION_14(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_16_9();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8LandmarkVSgMd, &_s13SiriInference8LandmarkVSgMR);
  OUTLINED_FUNCTION_14(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v30);
  OUTLINED_FUNCTION_16_9();
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference9ProximityVSgMd, &_s13SiriInference9ProximityVSgMR);
  OUTLINED_FUNCTION_14(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v36);
  v38 = v120 - v37;
  v120[0] = v120 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5PlaceVSgMd, &_s13SiriInference5PlaceVSgMR);
  OUTLINED_FUNCTION_14(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v42);
  v44 = v120 - v43;
  v120[1] = v120 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8CentroidVSgMd, &_s13SiriInference8CentroidVSgMR);
  OUTLINED_FUNCTION_14(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v48);
  v50 = v120 - v49;
  v120[2] = v120 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference4CityVSgMd, &_s13SiriInference4CityVSgMR);
  OUTLINED_FUNCTION_14(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v54);
  v56 = v120 - v55;
  v120[3] = v120 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference5StateVSgMd, &_s13SiriInference5StateVSgMR);
  OUTLINED_FUNCTION_14(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v60);
  v62 = v120 - v61;
  v120[4] = v120 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7ZipcodeVSgMd, &_s13SiriInference7ZipcodeVSgMR);
  OUTLINED_FUNCTION_14(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v66);
  v68 = v120 - v67;
  v120[5] = v120 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference7CountryVSgMd, &_s13SiriInference7CountryVSgMR);
  OUTLINED_FUNCTION_14(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v72);
  v74 = v120 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference6RadiusVSgMd, &_s13SiriInference6RadiusVSgMR);
  OUTLINED_FUNCTION_14(v75);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v78);
  v80 = v120 - v79;
  v81 = type metadata accessor for Radius();
  OUTLINED_FUNCTION_0_32(v80, v82, v83, v81);
  v84 = type metadata accessor for Country();
  OUTLINED_FUNCTION_0_32(v74, v85, v86, v84);
  v87 = type metadata accessor for Zipcode();
  OUTLINED_FUNCTION_0_32(v68, v88, v89, v87);
  v90 = type metadata accessor for State();
  OUTLINED_FUNCTION_0_32(v62, v91, v92, v90);
  v93 = type metadata accessor for City();
  OUTLINED_FUNCTION_0_32(v56, v94, v95, v93);
  v96 = type metadata accessor for Centroid();
  OUTLINED_FUNCTION_0_32(v50, v97, v98, v96);
  v99 = type metadata accessor for Place();
  OUTLINED_FUNCTION_0_32(v44, v100, v101, v99);
  v102 = type metadata accessor for Proximity();
  OUTLINED_FUNCTION_0_32(v38, v103, v104, v102);
  v105 = type metadata accessor for Landmark();
  OUTLINED_FUNCTION_0_32(v32, v106, v107, v105);
  v108 = type metadata accessor for StreetAddress();
  OUTLINED_FUNCTION_0_32(v26, v109, v110, v108);
  v111 = type metadata accessor for ContinentName();
  OUTLINED_FUNCTION_0_32(v121, v112, v113, v111);
  v114 = type metadata accessor for AddressReference();
  OUTLINED_FUNCTION_0_32(v122, v115, v116, v114);
  v117 = type metadata accessor for LocationName();
  __swift_storeEnumTagSinglePayload(v123, 1, 1, v117);
  dispatch thunk of UsoEntity_common_GeographicArea.name.getter();
  v118 = type metadata accessor for County();
  __swift_storeEnumTagSinglePayload(v124, 1, 1, v118);
  return Location.init(radius:country:zipcode:state:city:centroid:place:timezone:proximity:landmark:streetAddress:continentName:addressReference:locationName:locationLabel:county:locationAccuracy:)();
}

uint64_t CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[24] = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64);
  v1[29] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for DialogPhase();
  v1[30] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[31] = v8;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  v1[34] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[35] = v12;
  v14 = *(v13 + 64);
  v1[36] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for NLContextUpdate();
  v1[37] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[38] = v16;
  v18 = *(v17 + 64);
  v1[39] = OUTLINED_FUNCTION_28();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[26];
  v2 = *(v0[28] + 56);
  v0[40] = v2;
  v3 = INIntent.verb()();
  v0[41] = v3._object;
  v4 = *(*v2 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[42] = v6;
  *v6 = v0;
  v6[1] = CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:);

  return v8(v3._countAndFlagsBits, v3._object);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 336);
  *v4 = *v1;
  v3[43] = v7;
  v3[44] = v8;
  v3[45] = v9;
  v3[46] = v10;
  v3[47] = v0;

  if (!v0)
  {
    v11 = v3[41];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[25];
  type metadata accessor for WFDialogState();
  v4 = App.appIdentifier.getter();
  v6 = static WFDialogState.isAppFirstRun(appId:)(v4, v5);

  v13 = (*v1 + 320);
  v14 = (*v13 + **v13);
  v7 = (*v13)[1];
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:);
  v9 = v0[40];
  v11 = v0[25];
  v10 = v0[26];

  return (v14)(v11, v10, v2, v6 & 1);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 384);
  *v4 = *v1;
  v3[49] = v7;

  if (v0)
  {
    v8 = v3[46];
    v9 = v3[44];

    v10 = v3[39];
    v11 = v3[36];
    v13 = v3[32];
    v12 = v3[33];
    v14 = v3[29];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_87();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v17, v18, v19);
}

{
  v73 = v0[46];
  v74 = v0[49];
  v72 = v0[45];
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[36];
  v79 = v0[38];
  v80 = v0[37];
  v4 = v0[33];
  v75 = v0[32];
  v5 = v0[31];
  v76 = v0[30];
  v77 = v0[39];
  v78 = v0[29];
  v81 = v0[28];
  v7 = v0[26];
  v6 = v0[27];
  static Device.current.getter();
  type metadata accessor for CustomIntentNLContextProvider();
  inited = swift_initStackObject();
  outlined init with take of Output(v0 + 9, inited + 16);
  CustomIntentNLContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:acceptLabel:denyLabel:)(v7, v6, v2, v1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  static DialogPhase.confirmation.getter();
  v9 = [v74 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v75, v4, v76);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OUTLINED_FUNCTION_20_1();
  OutputGenerationManifest.responseViewId.setter();
  (*(v5 + 8))(v4, v76);
  (*(v79 + 16))(v78, v77, v80);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v80);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(*v81 + 160))(v7);
  OutputGenerationManifest.canUseServerTTS.setter();
  v10 = [v7 _metadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 showsWhenRun];

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[28];
  OUTLINED_FUNCTION_27_16();
  if (dispatch thunk of DeviceState.isCarPlay.getter() & 1) != 0 || (OUTLINED_FUNCTION_27_16(), ((dispatch thunk of DeviceState.isHomePod.getter() | v13)))
  {
    v15 = v0[49];
    v16 = v0[46];
    v17 = v0[44];

    v18 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v18);
    v0[62] = ResponseFactory.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = OUTLINED_FUNCTION_64();
    v0[63] = v19;
    *(v19 + 16) = xmmword_216010;
    *(v19 + 32) = v15;
    OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
    v20 = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[64] = v21;
    *v21 = v22;
    v21[1] = CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:);
    v23 = v0[36];
    v24 = v0[24];
    OUTLINED_FUNCTION_100();

    __asm { BR              X3 }
  }

  v27 = v0[26];
  v28 = v0[25];
  v29 = [v27 _title];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v0[50] = v32;
  v33 = [v27 _keyImage];
  v0[51] = v33;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v34 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  v0[52] = v34;
  v35 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    v37 = v0[45];
    v36 = v0[46];
    v82 = *(v0 + 43);
    v38 = v0[26];

    v39 = [v38 _title];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v0[17] = &type metadata for WorkflowDataModels.WatchModel;
    v0[18] = &protocol witness table for WorkflowDataModels.WatchModel;
    v43 = swift_allocObject();
    v0[14] = v43;

    *(v43 + 16) = v40;
    *(v43 + 24) = v42;
    *(v43 + 32) = v82;
    *(v43 + 48) = v37;
    *(v43 + 56) = v36;
    *(v43 + 64) = 0u;
    *(v43 + 80) = 0u;
    v44 = v0[49];
    v45 = type metadata accessor for ResponseFactory();
    OUTLINED_FUNCTION_66(v45);
    v46 = ResponseFactory.init()();
    v0[22] = OUTLINED_FUNCTION_16_26(v46);
    OUTLINED_FUNCTION_14_3();
    v0[23] = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v47, v48);
    __swift_allocate_boxed_opaque_existential_1(v0 + 19);
    v49 = OUTLINED_FUNCTION_20_1();
    v37(v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v50 = OUTLINED_FUNCTION_64();
    v0[60] = v50;
    *(v50 + 16) = xmmword_216010;
    *(v50 + 32) = v44;
    OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
    v51 = v44;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[61] = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_3_35(v52);
    OUTLINED_FUNCTION_100();

    __asm { BR              X4 }
  }

  v57 = v0[26];
  v56 = v0[27];
  v0[53] = v30;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
  v58 = v57;
  v59 = v56;
  v83.value.super.isa = v56;
  isa = INInteraction.__allocating_init(intent:response:)(v58, v83).super.isa;
  v0[54] = isa;
  v61 = type metadata accessor for WorkflowDataModels.CustomIntentConfirmationModel(0);
  v0[55] = v61;
  v0[17] = v61;
  v0[18] = &protocol witness table for WorkflowDataModels.CustomIntentConfirmationModel;
  v0[56] = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  v62 = v34;
  CodableAceObject.init(wrappedValue:)();
  v63 = type metadata accessor for WorkflowDataModels.CustomIntentModel(0);
  v0[57] = v63;
  v64 = *(v63 + 20);
  v65 = isa;
  CodableINInteraction.init(wrappedValue:)();
  v66 = *(v63 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[58] = v67;
  *v67 = v68;
  v67[1] = CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:);
  OUTLINED_FUNCTION_100();

  return INImage.convertToVisualProperty()(v69);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 464);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v5, v6, v7);
}

{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 432);
  v3 = *(v0 + 440);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v6 = *(v0 + 408);
  v25 = *(v0 + 360);
  v26 = *(v0 + 368);
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);

  v10 = (v1 + *(v2 + 28));
  *v10 = v5;
  v10[1] = v7;
  v11 = (v1 + *(v3 + 20));
  *v11 = v9;
  v11[1] = v8;
  v12 = (v1 + *(v3 + 24));
  *v12 = v25;
  v12[1] = v26;
  v13 = *(v0 + 392);
  v14 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v14);
  v15 = ResponseFactory.init()();
  *(v0 + 176) = OUTLINED_FUNCTION_16_26(v15);
  OUTLINED_FUNCTION_14_3();
  *(v0 + 184) = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(v16, v17);
  __swift_allocate_boxed_opaque_existential_1((v0 + 152));
  v18 = OUTLINED_FUNCTION_20_1();
  v7(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = OUTLINED_FUNCTION_64();
  *(v0 + 480) = v19;
  *(v19 + 16) = xmmword_216010;
  *(v19 + 32) = v13;
  v27 = OUTLINED_FUNCTION_16_4(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v20 = v13;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 488) = v21;
  *v21 = v22;
  v23 = OUTLINED_FUNCTION_3_35(v21);

  return (v27)(v23);
}

{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = v4[61];
  v6 = v4[60];
  v7 = v4[59];
  v8 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 152));
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_17();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  OUTLINED_FUNCTION_23_13();

  OUTLINED_FUNCTION_6_7();

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[64];
  v3 = v1[63];
  v4 = v1[62];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_24_17();
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_20_1();
  v4(v3);
  v5 = *(v0 + 8);
  v6 = OUTLINED_FUNCTION_22_4();
  v7(v6);
  OUTLINED_FUNCTION_23_13();

  OUTLINED_FUNCTION_6_7();

  return v8();
}

void CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[41];

  v2 = v0[47];
  v3 = v0[39];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[21] = v5;
  v6 = type metadata accessor for DialogPhase();
  v1[26] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[27] = v7;
  v9 = *(v8 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v1[30] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[31] = v11;
  v13 = *(v12 + 64);
  v1[32] = OUTLINED_FUNCTION_28();
  v14 = *(*(type metadata accessor for CATOption() - 8) + 64);
  v1[33] = OUTLINED_FUNCTION_28();
  v15 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[34] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[35] = v16;
  v18 = *(v17 + 64);
  v1[36] = OUTLINED_FUNCTION_28();
  v19 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v19, v20, v21);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[35];
  (*(v1 + 104))(v0[36], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[34]);
  v2 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);
  if (v2)
  {
    v6 = v0[33];
    static Device.current.getter();
    type metadata accessor for AutoShortcutCATs();
    static CATOption.defaultMode.getter();
    v7 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AutoShortcutCATsSimple();
    static CATOption.defaultMode.getter();
    v8 = CATWrapperSimple.__allocating_init(options:globals:)();
    v9 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
    static CATOption.defaultMode.getter();
    v10 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for AutoShortcutDialogTemplating();
    inited = swift_initStackObject();
    v0[37] = inited;
    inited[12] = v9;
    inited[13] = &protocol witness table for RunLinkActionCATPatternsExecutor;
    inited[9] = v10;
    outlined init with take of Output(v0 + 16, inited + 2);
    inited[7] = v7;
    inited[8] = v8;
    v12 = swift_task_alloc();
    v0[38] = v12;
    *v12 = v0;
    v12[1] = CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:);
    OUTLINED_FUNCTION_87();

    return AutoShortcutDialogTemplating.makeUserDeniedDialog()();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[44] = v15;
    *v15 = v16;
    v15[1] = CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:);
    v17 = v0[25];
    v18 = v0[23];
    v19 = v0[21];
    OUTLINED_FUNCTION_87();

    return CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse_rfv1(app:intent:intentResponse:)();
  }
}

{
  v1 = v0[40];
  v2 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  static DialogPhase.canceled.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 16))(v4, v3, v5);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v6 + 8))(v3, v5);
  v8 = type metadata accessor for ResponseFactory();
  OUTLINED_FUNCTION_66(v8);
  v0[41] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = OUTLINED_FUNCTION_64();
  v0[42] = v9;
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = v1;
  v10 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + 1);
  v17 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v11 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[43] = v12;
  *v12 = v13;
  v12[1] = CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:);
  v14 = v0[32];
  v15 = v0[21];

  return v17(v15, v9, v14);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1[43];
  v3 = v1[42];
  v4 = v1[41];
  v5 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_22_4();
  v6(v5);
  v7 = *(v0 + 288);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);

  OUTLINED_FUNCTION_6_7();

  return v12();
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = v1[36];
  v6 = v1[33];
  v7 = v1[32];
  v8 = v1[29];
  v9 = v1[28];

  v10 = *(v3 + 8);

  return v10();
}

uint64_t CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:)(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v5[39] = v1;

  if (!v1)
  {
    v11 = v5[37];
    v5[40] = a1;
    swift_setDeallocating();
    AutoShortcutDialogTemplating.deinit();
    swift_deallocClassInstance();
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

void CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[37];
  swift_setDeallocating();
  AutoShortcutDialogTemplating.deinit();
  swift_deallocClassInstance();
  v2 = v0[39];
  v3 = v0[36];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_87();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse_rfv1(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for ActivityType();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[16] = v5;
  v7 = *(v6 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v8 = type metadata accessor for TemplatingResult();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_28();
  v1[20] = v12;
  v13 = async function pointer to static ResponseTemplates.taskAborted()[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v1[21] = v14;
  *v14 = v15;
  v14[1] = CustomIntentConfirmIntentResponseGenerator.makeFlowCancelledResponse_rfv1(app:intent:intentResponse:);

  return static ResponseTemplates.taskAborted()(v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v0[15]);
  v5 = (*(*v3 + 152))(v1, v4);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_20_1();
  v8(v7);
  outlined init with copy of DeviceState((v3 + 2), (v0 + 2));
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  OUTLINED_FUNCTION_20_1();
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  if (v5)
  {
    v10 = type metadata accessor for DefaultFlowActivity();
    v11 = _s18SiriLinkFlowPlugin18WorkflowDataModelsOAC10SnippetKit0hD5ModelAAWlTm_0(&lazy protocol witness table cache variable for type DefaultFlowActivity and conformance DefaultFlowActivity, &type metadata accessor for DefaultFlowActivity);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v0[8] = 0;
    v0[9] = 0;
  }

  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[12];
  v0[7] = v5;
  v0[10] = v10;
  v0[11] = v11;
  v16[3] = type metadata accessor for AceOutput();
  v16[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v16);

  static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  (*(v13 + 8))(v12, v15);
  outlined destroy of FlowActivity?((v0 + 7));

  OUTLINED_FUNCTION_6_7();

  return v17();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[20];
  v2 = v0[17];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[22];

  return v3();
}

void *CustomIntentConfirmIntentResponseGenerator.__allocating_init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = swift_allocObject();
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_28_3();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v18 + 16))(v17);
  v27 = OUTLINED_FUNCTION_18_24(v19, v20, v21, v22, v23, v24, v25, v26, a9, v17, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v27;
}

void *CustomIntentConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_21_5(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = a10[3];
  v12 = a10[4];
  __swift_mutable_project_boxed_opaque_existential_1(a10, v11);
  OUTLINED_FUNCTION_28_3();
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(v18 + 16))(v17);
  v27 = OUTLINED_FUNCTION_18_24(v19, v20, v21, v22, v23, v24, v25, v26, a9, v17, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a10);
  return v27;
}

uint64_t sub_157C20()
{
  v1 = v0[3];

  if (v0[5])
  {

    v2 = v0[7];
  }

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

void *specialized CustomIntentConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v16 = *(a12 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v25 - v21;
  (*(v16 + 32))(&v25 - v21);
  outlined init with copy of DeviceState(a4, v30);
  (*(v16 + 16))(v20, v22, a12);
  v23 = specialized CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(a1, a2, v25, v30, v26, v27, v28, v29, a9, v20, a11, a12, a13);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  (*(v16 + 8))(v22, a12);
  return v23;
}

uint64_t outlined destroy of FlowActivity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t a1)
{
  *(a1 + 8) = CustomIntentConfirmIntentResponseGenerator.makePromptForConfirmation(app:intent:intentResponse:);
  v2 = *(v1 + 288);
  return *(v1 + 192);
}

uint64_t OUTLINED_FUNCTION_16_26(uint64_t a1)
{
  v1[59] = a1;
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  v3 = *(v2 + 8);

  return type metadata accessor for WorkflowDataModels(0);
}

void *OUTLINED_FUNCTION_18_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v19 = *(v17 - 112);
  v20 = *(v17 - 104);
  v21 = *(v17 - 96);
  v22 = *(v17 - 88);

  return specialized CustomIntentConfirmIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)(v16, v15, v14, v13, v19, v20, v21, v22, a9, a10, a11, a12, a13);
}
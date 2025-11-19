uint64_t sub_1146B0()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t lazy protocol witness table accessor for type LinkRCHFlow and conformance LinkRCHFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_114758()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_71();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ShortcutsUnlockDeviceStrategy) -> (@out GuardFlow)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow))?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed ShortcutsUnlockDeviceStrategy) -> (@owned GuardFlow)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_37(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return lazy protocol witness table accessor for type PromptResult<[LNValue]> and conformance PromptResult<A>(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_8_23()
{
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[98];
  v7 = v0[97];
}

uint64_t OUTLINED_FUNCTION_11_20@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_20()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_18_21()
{
  v3 = v1[12];
  v5 = v1[9];
  v4 = v1[10];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[2];

  static InstrumentationUtils.emitLinkFlowStartedInstrumentation(targetBundle:action:)();
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return OSSignpostIntervalState.init(id:isOpen:)();
}

uint64_t OUTLINED_FUNCTION_40_9()
{
  outlined init with take of AceServiceInvokerAsync((v3 - 152), v0 + v1);
  *(v0 + v2) = *(v3 - 184);
}

void OUTLINED_FUNCTION_46_11(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

double OUTLINED_FUNCTION_49_6()
{
  *(v0 - 152) = 2;
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_5()
{
  *(v3 - 216) = v2;
  *(v3 - 208) = v1;
  v4 = *(v2 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  result = v1;
  *(v2 - 208) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3()
{
  v2 = *(v0 - 216);

  return outlined init with copy of DeviceState(v2, v0 - 152);
}

uint64_t OUTLINED_FUNCTION_67_5(_WORD *a1)
{
  *a1 = 0;

  return OSSignpostID.rawValue.getter();
}

uint64_t OUTLINED_FUNCTION_68_6()
{
  v2 = *(v0 - 272);

  return Logger.logObject.getter();
}

uint64_t OUTLINED_FUNCTION_69_5()
{

  return OS_os_log.signpostsEnabled.getter();
}

uint64_t OUTLINED_FUNCTION_78_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 184) = a1;
  *(v2 - 200) = a2;

  return type metadata accessor for OSSignpostID();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return outlined init with copy of DeviceState(v0, v1 - 152);
}

void OUTLINED_FUNCTION_81_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional __swiftcall AutoShortcutCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_48_3();
  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t AutoShortcutCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 7:
    case 9:
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appDisabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_32_12(v4);
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

  OUTLINED_FUNCTION_2_35(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  OUTLINED_FUNCTION_32_13();
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

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v13;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v1[7] = v14;
  *v14 = v1;
  v14[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  v15 = v1[4];
  OUTLINED_FUNCTION_66_5();

  return v16();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional __swiftcall AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:), v3);
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

uint64_t AutoShortcutCATsSimple.AppDisabledDialogIds.rawValue.getter(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_27_15();
      break;
    case 2:
      result = 0x6C62616E45736177;
      break;
    case 3:
      result = 0x7361576863746177;
      break;
    default:
      return result;
  }

  return result;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.AppDisabledDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppDisabledDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.AppDisabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.AppDisabledDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.AppDisabledDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appDisabledAsLabels(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_32_12(v4);
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

  OUTLINED_FUNCTION_2_35(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  OUTLINED_FUNCTION_32_13();
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

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v13;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  v1[7] = v14;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  v14[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  v16 = v1[4];
  OUTLINED_FUNCTION_60_5();

  return v17();
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppDisabledDialogIds and conformance AutoShortcutCATsSimple.AppDisabledDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.appEnabled(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_32_12(v4);
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

  OUTLINED_FUNCTION_2_35(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  OUTLINED_FUNCTION_32_13();
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

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v13;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v1[7] = v14;
  *v14 = v1;
  v14[1] = RunLinkActionCATsSimple.needsDisambiguation(customDialog:items:);
  v15 = v1[4];
  OUTLINED_FUNCTION_66_5();

  return v16();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional __swiftcall AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:), v3);
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

uint64_t AutoShortcutCATsSimple.AppEnabledDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64656C62616E65;
  }

  if (a1 == 1)
  {
    return 0x6C62616E45736177;
  }

  return 0x6863746177;
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.AppEnabledDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::AppEnabledDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.AppEnabledDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.AppEnabledDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.AppEnabledDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.appEnabledAsLabels(device:appName:wasAlreadyEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_33_7(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v5 = OUTLINED_FUNCTION_32_12(v4);
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

  OUTLINED_FUNCTION_2_35(v6);
  OUTLINED_FUNCTION_35_2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v7);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_2(v8);
  OUTLINED_FUNCTION_32_13();
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

  OUTLINED_FUNCTION_36_8();
  v2[16] = 0xD000000000000011;
  v2[17] = v13;
  OUTLINED_FUNCTION_71_5(&type metadata for Bool);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v14 = swift_task_alloc();
  v1[7] = v14;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v14 = v15;
  v14[1] = RunLinkActionCATsSimple.needsDisambiguationAsLabels(customDialog:items:);
  v16 = v1[4];
  OUTLINED_FUNCTION_60_5();

  return v17();
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.AppEnabledDialogIds and conformance AutoShortcutCATsSimple.AppEnabledDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablement(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_9_22(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_64_4(v13);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_57_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_17_8(v15);
  v17 = OUTLINED_FUNCTION_15_9(36);

  return v18(v17);
}

uint64_t AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x656C62616E65;
  }

  else
  {
    return 0x656C6261736964;
  }
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementAsLabels(appName:isEnabling:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = *(v2 + 64);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_64_4(v14);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v15);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v16;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v17 = OUTLINED_FUNCTION_14_7(36);

  return v18(v17);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementDeclined(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_42_2();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_9_22(v4, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  v12 = *(v1 + 64);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_64_4(v13);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_57_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_17_8(v15);
  v17 = OUTLINED_FUNCTION_15_9(44);

  return v18(v17);
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional __swiftcall AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_28_5();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:), v3);
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

uint64_t AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_27_15();
  }

  if (a1 == 1)
  {
    return 0x66664F7470656BLL;
  }

  return 0x6E4F7470656BLL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::ConfirmChangeEnablementDeclinedDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.confirmChangeEnablementDeclinedAsLabels(appName:isEnabled:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_70_2(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v3;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_42_2();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  v6 = OUTLINED_FUNCTION_9_22(v5, xmmword_216840);
  OUTLINED_FUNCTION_54_0(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v8);
  if (v9)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = *(v2 + 64);
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_64_4(v14);
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v15);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v16;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v17 = OUTLINED_FUNCTION_14_7(44);

  return v18(v17);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds and conformance AutoShortcutCATsSimple.ConfirmChangeEnablementDeclinedDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.disableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();

  return v5(0xD00000000000001DLL, 0x800000000022E6F0, _swiftEmptyArrayStorage);
}

uint64_t AutoShortcutCATsSimple.DisableAndCancelDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x66664F6E727574;
  }

  else
  {
    return 0x6E4F657661656CLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::DisableAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::DisableAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.DisableAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.DisableAndCancelDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = 0xE700000000000000;
  return result;
}

uint64_t AutoShortcutCATsSimple.disableAndCancelAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  OUTLINED_FUNCTION_32_7();

  return v5(0xD00000000000001DLL);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.DisableAndCancelDialogIds and conformance AutoShortcutCATsSimple.DisableAndCancelDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.enableAndCancel()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_16_23();

  return v6(v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::EnableAndCancelDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::EnableAndCancelDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.EnableAndCancelDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds()
{
  OUTLINED_FUNCTION_46_3();
  AutoShortcutCATsSimple.EnableAndCancelDialogIds.rawValue.getter();
  *v0 = v1;
  v0[1] = 0xE600000000000000;
}

uint64_t AutoShortcutCATsSimple.enableAndCancelAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_17_21();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.EnableAndCancelDialogIds and conformance AutoShortcutCATsSimple.EnableAndCancelDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.firstRun(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v1;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = OUTLINED_FUNCTION_26_6(v2);
  v4 = OUTLINED_FUNCTION_12_21(v3, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v6);
  if (v7)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_24_4();
    v10();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_57_1(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_17_8(v12);
  v14 = OUTLINED_FUNCTION_15_9(21);

  return v15(v14);
}

BOOL AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.FirstRunDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AutoShortcutCATsSimple.FirstRunDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunAsLabels(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v17 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v12);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v13;
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_32_7();
  v14 = OUTLINED_FUNCTION_14_7(21);

  return v15(v14);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunDialogIds and conformance AutoShortcutCATsSimple.FirstRunDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunHomePod(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  v29 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[8];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v0[9] = v4;
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_218630);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[8];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_30_10();
  outlined init with copy of SpeakableString?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_16_7();
  v15 = v0[7];
  if (v14 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_29_14();
  outlined init with copy of SpeakableString?(v19, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v28 = v23;
  v24 = swift_task_alloc();
  v0[10] = v24;
  *v24 = v0;
  v24[1] = AutoShortcutCATsSimple.firstRunHomePod(app:firstPhrase:secondPhrase:);
  v25 = v0[5];
  v26 = OUTLINED_FUNCTION_16_23();

  return v28(v26);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
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
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_18_2();

    return v18(v17);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_6_0();
  v6 = v0[11];

  return v5();
}

uint64_t AutoShortcutCATsSimple.FirstRunHomePodDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7845657361726870;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

SiriLinkFlowPlugin::AutoShortcutCATsSimple::FirstRunHomePodDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds@<W0>(Swift::String *a1@<X0>, SiriLinkFlowPlugin::AutoShortcutCATsSimple::FirstRunHomePodDialogIds_optional *a2@<X8>)
{
  result.value = AutoShortcutCATsSimple.FirstRunHomePodDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds()
{
  v1 = OUTLINED_FUNCTION_46_3();
  result = AutoShortcutCATsSimple.FirstRunHomePodDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t AutoShortcutCATsSimple.firstRunHomePodAsLabels(app:firstPhrase:secondPhrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_64_0();
  v30 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = v0[8];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_69_3();
  v0[9] = v4;
  v5 = OUTLINED_FUNCTION_12_21(v4, xmmword_218630);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v0[8];
  if (v8 == 1)
  {
    outlined destroy of String?(v0[8], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_24_4();
    v12();
  }

  v13 = OUTLINED_FUNCTION_30_10();
  outlined init with copy of SpeakableString?(v13, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_16_7();
  v15 = v0[7];
  if (v14 == 1)
  {
    outlined destroy of String?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_13_2();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_24_4();
    v18();
  }

  v19 = OUTLINED_FUNCTION_29_14();
  outlined init with copy of SpeakableString?(v19, v15, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_16_7() == 1)
  {
    outlined destroy of String?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v3;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_13_2();
    v21 = *(v20 + 32);
    OUTLINED_FUNCTION_24_4();
    v22();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v29 = v23;
  v24 = swift_task_alloc();
  v0[10] = v24;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v24 = v25;
  v24[1] = AutoShortcutCATsSimple.firstRunHomePodAsLabels(app:firstPhrase:secondPhrase:);
  v26 = v0[5];
  v27 = OUTLINED_FUNCTION_17_21();

  return v29(v27);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
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
    v16 = v3 + 6;
    v14 = v3[6];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_18_2();

    return v18(v17);
  }
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.FirstRunHomePodDialogIds and conformance AutoShortcutCATsSimple.FirstRunHomePodDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.moreShortcuts(numberOfShortcuts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t AutoShortcutCATsSimple.moreShortcuts(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_64_0();
  v12 = v1;
  OUTLINED_FUNCTION_15_2();
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = v3;
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_216850;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x8000000000233620;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = &type metadata for Double;
  }

  *(v3 + 48) = v5;
  *(v3 + 72) = v6;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = v7;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = RunLinkActionCATsSimple.unsupportedOnPlatform(device:);
  v9 = *(v0 + 24);

  return v11(0xD00000000000001ALL, 0x800000000022E770, v4);
}

BOOL AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AutoShortcutCATsSimple.MoreShortcutsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.moreShortcutsAsLabels(numberOfShortcuts:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t AutoShortcutCATsSimple.moreShortcutsAsLabels(numberOfShortcuts:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_48_1();
  v3 = v2;
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_216850;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000233620;
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = &type metadata for Double;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v5;
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v10 = v6;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v7 = v8;
  OUTLINED_FUNCTION_44_3();

  return v10(0xD00000000000001ALL, 0x800000000022E770, v3, &type metadata for AutoShortcutCATsSimple.MoreShortcutsDialogIds);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.MoreShortcutsDialogIds and conformance AutoShortcutCATsSimple.MoreShortcutsDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.openInShortcuts()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_16_23();

  return v6(v4);
}

BOOL AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AutoShortcutCATsSimple.OpenInShortcutsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.openInShortcutsAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v6 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  v4 = OUTLINED_FUNCTION_17_21();

  return v6(v4);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.OpenInShortcutsDialogIds and conformance AutoShortcutCATsSimple.OpenInShortcutsDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.shortcutPhrases(phrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v20 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_41_8(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v19 = v12;
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_57_1(v13);
  *v14 = v15;
  v14[1] = RunLinkActionCATsSimple.errorDialog(customDialog:nonOptionalParameterIsNil:);
  v16 = *(v1 + 24);
  v17 = OUTLINED_FUNCTION_16_23();

  return v19(v17);
}

BOOL AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AutoShortcutCATsSimple.ShortcutPhrasesDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.shortcutPhrasesAsLabels(phrase:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_64_0();
  v18 = v2;
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_27_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_48_1();
  v4 = OUTLINED_FUNCTION_26_6(v3);
  v5 = OUTLINED_FUNCTION_41_8(v4, xmmword_216850);
  OUTLINED_FUNCTION_54_0(v5, v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_19(v7);
  if (v8)
  {
    outlined destroy of String?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_22_6();
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_13_2();
    v10 = *(v9 + 32);
    OUTLINED_FUNCTION_24_4();
    v11();
  }

  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v17 = v12;
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_53_0(v13);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v14;
  OUTLINED_FUNCTION_44_3();
  v15 = OUTLINED_FUNCTION_17_21();

  return v17(v15);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.ShortcutPhrasesDialogIds and conformance AutoShortcutCATsSimple.ShortcutPhrasesDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.userDenied()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_68_7(v1);
  *v2 = v3;
  v2[1] = AutoShortcutCATsSimple.userDenied();

  return v5(0xD000000000000017, 0x800000000022E7D0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

BOOL AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_28_5();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_48_3();
  return OUTLINED_FUNCTION_54_2();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance AutoShortcutCATsSimple.UserDeniedDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = AutoShortcutCATsSimple.UserDeniedDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t AutoShortcutCATsSimple.userDeniedAsLabels()()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_54(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_6(v2);
  lazy protocol witness table accessor for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds();
  OUTLINED_FUNCTION_23_3();
  *v0 = v3;
  v0[1] = AutoShortcutCATsSimple.disableAndCancelAsLabels();
  OUTLINED_FUNCTION_32_7();

  return v5(0xD000000000000017);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.UserDeniedDialogIds and conformance AutoShortcutCATsSimple.UserDeniedDialogIds);
  }

  return result;
}

uint64_t AutoShortcutCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_24_4();
  return AutoShortcutCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t AutoShortcutCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
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

uint64_t AutoShortcutCATsSimple.__allocating_init(useResponseMode:options:)()
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

uint64_t AutoShortcutCATsSimple.init(useResponseMode:options:)()
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

unint64_t lazy protocol witness table accessor for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutCATsSimple.Properties and conformance AutoShortcutCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for AutoShortcutCATsSimple()
{
  result = type metadata singleton initialization cache for AutoShortcutCATsSimple;
  if (!type metadata singleton initialization cache for AutoShortcutCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutCATsSimple.Properties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x118F44);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.AppDisabledDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x119048);
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

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.AppEnabledDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x11916CLL);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.ConfirmChangeEnablementDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1192A4);
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
          result = OUTLINED_FUNCTION_60_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutCATsSimple.FirstRunDialogIds(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1193A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_35(uint64_t result)
{
  v4 = *(v2 + 40);
  v5 = *(v2 + 24);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x656D614E707061;
  v3[11] = 0xE700000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_9_22(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E707061;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_12_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 7368801;
  result[2].n128_u64[1] = 0xE300000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_14()
{
  v2 = *(v0 + 48);
  result = *(v0 + 32);
  strcpy((v1 + 128), "secondPhrase");
  *(v1 + 141) = 0;
  *(v1 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_10()
{
  v2 = *(v0 + 56);
  result = *(v0 + 24);
  *(v1 + 80) = 0x7268507473726966;
  *(v1 + 88) = 0xEB00000000657361;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t result, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 72) = a3;
  *(v4 + 16) = result;
  return result;
}

__n128 *OUTLINED_FUNCTION_41_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x657361726870;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_2(uint64_t result, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = result;
  *(v3 + 24) = v2;
  return result;
}

uint64_t SiriWorkflowRunnerEvent.name.getter()
{
  v1 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  outlined init with copy of SiriWorkflowRunnerEvent(v0, v6 - v5, type metadata accessor for SiriWorkflowRunnerEvent);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v15 + 5;
      break;
    case 2u:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
      v10 = *(v7 + *(v9 + 48) + 8);

      v11 = *(v7 + *(v9 + 64) + 8);

      v12 = type metadata accessor for URL();
      OUTLINED_FUNCTION_7(v12);
      (*(v13 + 8))(v7);
      v0 = 0x4C52556E65706FLL;
      break;
    case 3u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v14 + 1;
      break;
    case 4u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x4965747563657865;
      break;
    case 5u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x6C616944776F6873;
      break;
    case 6u:
    case 0xAu:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v16 + 3;
      break;
    case 7u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x7070416E65706FLL;
      break;
    case 8u:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v17 | 2;
      break;
    case 0xBu:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      OUTLINED_FUNCTION_2_36();
      v0 = v8 + 11;
      break;
    case 0xCu:
      outlined destroy of SiriWorkflowRunnerEvent(v7, type metadata accessor for SiriWorkflowRunnerEvent);
      v0 = 0x7472617453646964;
      break;
    default:
      OUTLINED_FUNCTION_4_38();
      break;
  }

  return v0;
}

uint64_t static VoiceCmdsInstrumentations.emitWaitForRequest(type:logMessage:task:updateInfo:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 104) = v7;
  v8 = *(*(type metadata accessor for DurationUtil() - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();
  v9 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 96) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = DurationUtil.computeDuration()();
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v3, v7);
  static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v1, LODWORD(v6), v5);

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v3, v6);
  static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(v2, 0x100000000, v5);

  OUTLINED_FUNCTION_6_0();
  v8 = v0[12];

  return v7();
}

uint64_t WaitForRequestType.getDomainExecutionType()(char a1)
{
  if (a1)
  {
    return 401;
  }

  else
  {
    return 400;
  }
}

void static VoiceCmdsInstrumentations.emitWaitForRequestStarted(type:contextId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v30 = [objc_opt_self() sharedStream];
  v31 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo) init];
    if (v33)
    {
      v34 = v33;
      OUTLINED_FUNCTION_14_20(v33, "setContextId:");
      [v32 setStartedOrChanged:v34];
      [v30 emitMessage:v32];

      v32 = v34;
    }
  }

  v35 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v35)
  {
    v36 = v35;
    v37 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v37)
    {
      v38 = v37;
      v39 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionStarted) init];
      if (v39)
      {
        v40 = v39;
        if (v29)
        {
          v41 = 401;
        }

        else
        {
          v41 = 400;
        }

        [v39 setDomainExecutionType:v41];
        OUTLINED_FUNCTION_14_20([v38 setStartedOrChanged:v40], "setContextId:");
        [v36 setFlowDomainExecutionContext:v38];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v42 = v36;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

uint64_t static DurationUtil.computeDuration(task:logMessage:)()
{
  OUTLINED_FUNCTION_8_0();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = *(*(type metadata accessor for DurationUtil() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];

  DurationUtil.init(logMessage:)(v3, v1, v2);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = static DurationUtil.computeDuration(task:logMessage:);
  v7 = v0[3];

  return v9();
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  v2 = DurationUtil.computeDuration()();
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v1, v3);

  OUTLINED_FUNCTION_6_0();
  v5.n128_f32[0] = v2;

  return v4(v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_0_26();
  outlined destroy of SiriWorkflowRunnerEvent(v1, v2);

  OUTLINED_FUNCTION_6_0();
  v4 = *(v0 + 64);

  return v3();
}

uint64_t type metadata accessor for DurationUtil()
{
  result = type metadata singleton initialization cache for DurationUtil;
  if (!type metadata singleton initialization cache for DurationUtil)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [objc_opt_self() sharedStream];
  v37 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v39)
    {
      v40 = v39;
      [v38 setContextId:v35];
      closure #2 in WorkflowRunnerFlow.execute()(v40, v31, v29);
      if ((v33 & 0x100000000) == 0)
      {
        LODWORD(v41) = v33;
        [v40 setClockSeconds:v41];
      }

      [v38 setEnded:v40];
      [v36 emitMessage:v38];
    }

    else
    {
      v40 = v38;
    }
  }

  v42 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v44)
    {
      v45 = v44;
      v46 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v46)
      {
        v47 = v46;
        OUTLINED_FUNCTION_14_20([v45 setEnded:v46], "setContextId:");
        [v43 setFlowDomainExecutionContext:v45];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v48 = v43;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

{
  OUTLINED_FUNCTION_16_10();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v32 = [objc_opt_self() sharedStream];
  v33 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v35)
    {
      v36 = v35;
      OUTLINED_FUNCTION_14_20(v35, "setContextId:");
      if ((v29 & 0x100000000) == 0)
      {
        LODWORD(v37) = v29;
        [v36 setClockSeconds:v37];
      }

      [v34 setEnded:v36];
      [v32 emitMessage:v34];
    }

    else
    {
      v36 = v34;
    }
  }

  v38 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v42)
      {
        v43 = v42;
        [v41 setEnded:v42];
        [v41 setContextId:v31];
        [v39 setFlowDomainExecutionContext:v41];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(&a10, a13);
        type metadata accessor for SiriKitEvent();
        v44 = v39;
        OUTLINED_FUNCTION_1_40();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1Tm(&a10);
        OUTLINED_FUNCTION_15_10();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_15_10();

  swift_unknownObjectRelease();
}

uint64_t static VoiceCmdsInstrumentations.emitWaitForRequestEnded(contextId:duration:updateInfo:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = [objc_opt_self() sharedStream];
  v7 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContext) init];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo) init];
    if (v9)
    {
      v10 = v9;
      [v8 setContextId:a1];
      a3(v10);
      if ((a2 & 0x100000000) == 0)
      {
        LODWORD(v11) = a2;
        [v10 setClockSeconds:v11];
      }

      [v8 setEnded:v10];
      [v6 emitMessage:v8];
    }

    else
    {
      v10 = v8;
    }
  }

  v12 = [objc_allocWithZone(FLOWSchemaFLOWClientEvent) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionContext) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(FLOWSchemaFLOWDomainExecutionEnded) init];
      if (v16)
      {
        v17 = v16;
        [v15 setEnded:v16];
        [v15 setContextId:a1];
        [v13 setFlowDomainExecutionContext:v15];
        static SiriKitEventSender.current.getter();
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        type metadata accessor for SiriKitEvent();
        v18 = v13;
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        swift_unknownObjectRelease();

        return __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }
    }

    else
    {
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t DurationUtil.startInstant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContinuousClock.Instant();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t DurationUtil.innerMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for DurationUtil() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void DurationUtil.init(logMessage:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  static ContinuousClock.now.getter();
  if (one-time initialization token for lock != -1)
  {
    swift_once();
  }

  v7 = static DurationUtil.lock;
  [static DurationUtil.lock lock];
  v8 = static DurationUtil.nextId;
  if (static DurationUtil.nextId == -1)
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0();
    goto LABEL_7;
  }

  ++static DurationUtil.nextId;
  [v7 unlock];
  _StringGuts.grow(_:)(18);

  v22 = 0x6E6F697461727544;
  v23 = 0xEF5B235F6C697455;
  LODWORD(v21[0]) = v8;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 93;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v3 = 0x6E6F697461727544;
  v8 = 0xEF5B235F6C697455;
  if (a2)
  {
    v21[0] = 539831584;
    v21[1] = 0xE400000000000000;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 539831584;
    v12._object = 0xE400000000000000;
    String.append(_:)(v12);

    v3 = v22;
    v8 = v23;
  }

  v13 = (a3 + *(type metadata accessor for DurationUtil() + 20));
  *v13 = v3;
  v13[1] = v8;
  v14 = one-time initialization token for voiceCommands;

  if (v14 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.voiceCommands);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v8, v21);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_0, v16, v17, "started: %s ...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {
  }
}

uint64_t outlined destroy of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

Swift::Float __swiftcall DurationUtil.computeDuration()()
{
  v1 = type metadata accessor for DurationUtil();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  v14 = Duration.components.getter();
  v16 = v15 / 1.0e18;
  v17 = v14;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = v16 + v17;
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.voiceCommands);
  outlined init with copy of SiriWorkflowRunnerEvent(v0, v7, type metadata accessor for DurationUtil);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315394;
    v24 = (v7 + *(v1 + 20));
    v25 = *v24;
    v26 = v24[1];

    OUTLINED_FUNCTION_0_26();
    outlined destroy of SiriWorkflowRunnerEvent(v7, v27);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v31);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v18;
    _os_log_impl(&dword_0, v20, v21, "stopped: %s; duration=%fs", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  else
  {

    OUTLINED_FUNCTION_0_26();
    outlined destroy of SiriWorkflowRunnerEvent(v7, v29);
  }

  (*(v9 + 8))(v13, v8);
  return v18;
}

id one-time initialization function for lock()
{
  result = [objc_allocWithZone(NSLock) init];
  static DurationUtil.lock = result;
  return result;
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WaitForRequestType and conformance WaitForRequestType()
{
  result = lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType;
  if (!lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaitForRequestType and conformance WaitForRequestType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WaitForRequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x11B334);
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

uint64_t sub_11B390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContinuousClock.Instant();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_11B454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for DurationUtil()
{
  result = type metadata accessor for ContinuousClock.Instant();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_38()
{

  return outlined destroy of SiriWorkflowRunnerEvent(v0, type metadata accessor for SiriWorkflowRunnerEvent);
}

id OUTLINED_FUNCTION_14_20(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void CustomIntentsDialogTemplating.__allocating_init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_40_0();
  v47 = v21;
  v48 = v22;
  v46 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = swift_allocObject();
  v35 = a21[3];
  v36 = a21[4];
  v37 = OUTLINED_FUNCTION_48_2();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_28_3();
  v40 = *(v39 + 64);
  __chkstk_darwin(v41);
  v43 = &v45 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v43);
  specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(v33, v31, v29, v27 & 1, v25, v46, v47, v48, v43, v34, v35, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_42();
}

uint64_t static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(void *a1)
{
  v1 = [a1 typeName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  String.lowercased()();
  lazy protocol witness table accessor for type String and conformance String();
  v2 = OUTLINED_FUNCTION_0_18();

  if (v2 & 1) != 0 || (String.lowercased()(), v3 = OUTLINED_FUNCTION_0_18(), , (v3))
  {

    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_0_18();
  }

  return v4 & 1;
}

void CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_40_0();
  v47 = v22;
  v48 = v23;
  v46 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a21[3];
  v36 = a21[4];
  v37 = OUTLINED_FUNCTION_48_2();
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  OUTLINED_FUNCTION_28_3();
  v40 = *(v39 + 64);
  __chkstk_darwin(v41);
  v43 = &v45 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v43);
  specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(v34, v32, v30, v28 & 1, v26, v46, v47, v48, v43, v21, v35, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a21);
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)()
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
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[7];
  *v6 = *v1;
  v5[8] = v0;

  v8 = v4[6];
  v9 = v4[5];
  if (!v0)
  {
    v5[9] = v3;
  }

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  *(v0 + 80) = 2;
  dispatch thunk of LabelExecutionResult.subscript.getter();
  *(v0 + 81) = 0;
  dispatch thunk of LabelExecutionResult.subscript.getter();

  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_57();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[4];
  v11 = v9[5];
  v13 = v9[2];
  v12 = v9[3];
  v14 = v10[13];
  v15 = v10[5];
  v16 = v10[6];
  v17 = OUTLINED_FUNCTION_3_11(v10 + 2);
  v9[6] = OUTLINED_FUNCTION_105_0(v17);

  OUTLINED_FUNCTION_13_18();
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v18);
  v20 = *(v19 + class metadata base offset for RunVoiceCommandCATsSimple + 232);
  OUTLINED_FUNCTION_6_17();
  v35 = v21 + *v21;
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  v9[7] = v24;
  *v24 = v9;
  v24[1] = CustomIntentsDialogTemplating.yesAndCancel(intentVerb:);
  v25 = v9[5];
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_82_2();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35);
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for TemplatingResult();
  v1[18] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = OUTLINED_FUNCTION_28();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[17];
  v8 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  *(v10 + 184) = v0;

  outlined destroy of String?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[20];
  v2 = v0[17];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[23];

  return v3();
}

uint64_t CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v10 = v9[16];
  v11 = v9[17];
  v13 = v9[14];
  v12 = v9[15];
  v14 = v10[12];
  v15 = v10[5];
  v16 = v10[6];
  v17 = OUTLINED_FUNCTION_3_11(v10 + 2);
  v9[21] = OUTLINED_FUNCTION_105_0(v17);

  OUTLINED_FUNCTION_13_18();
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_8_24(v18);
  v20 = *(v19 + class metadata base offset for RunVoiceCommandCATs + 112);
  OUTLINED_FUNCTION_6_17();
  v37 = v21 + *v21;
  v23 = *(v22 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[22] = v24;
  *v24 = v25;
  v24[1] = CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:);
  v26 = v9[20];
  v27 = v9[17];
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_82_2();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37);
}

void *CustomIntentsDialogTemplating.yesAndCancel_rfv1(intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216840;
  *(inited + 32) = 7562617;
  *(inited + 40) = 0xE300000000000000;
  result = TemplatingResult.print.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = v10[20];
  v16 = result[4];
  v15 = result[5];

  *(inited + 48) = v16;
  *(inited + 56) = v15;
  *(inited + 64) = 0x6C65636E6163;
  *(inited + 72) = 0xE600000000000000;
  result = TemplatingResult.print.getter();
  if (result[2] < 2uLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v18 = v10[19];
  v17 = v10[20];
  v20 = v10[17];
  v19 = v10[18];
  v22 = result[6];
  v21 = result[7];

  *(inited + 80) = v22;
  *(inited + 88) = v21;
  Dictionary.init(dictionaryLiteral:)();
  (*(v18 + 8))(v17, v19);

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_25_2();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.inputErrorDialog()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 64);
  *(v0 + 184) = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v2 = v1[23];
  static Device.current.getter();
  type metadata accessor for RunLinkActionCATs();
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATsSimple();
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v4 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATs();
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v5 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple();
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v6 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_88_2();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_76_0();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  v1[24] = inited;
  inited[14] = v0;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v7;
  outlined init with take of Output(v1 + 18, inited + 2);
  inited[7] = v3;
  inited[8] = v4;
  inited[9] = v5;
  inited[10] = v6;
  v9 = swift_task_alloc();
  v1[25] = v9;
  *v9 = v1;
  v9[1] = CustomIntentsDialogTemplating.inputErrorDialog();
  OUTLINED_FUNCTION_21_0();

  return LinkActionDialogTemplating.makeGenericError()();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 208) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v14 = v3 + 184;
    v13 = *(v3 + 184);
    v12 = *(v14 + 8);
    swift_setDeallocating();
    LinkActionDialogTemplating.deinit();
    swift_deallocClassInstance();

    v15 = OUTLINED_FUNCTION_24_14();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[23];
  v2 = v0[24];
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();
  v4 = v0[26];

  return v3();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 176) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 64) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_27();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 144);
  v8 = v7[16];
  v9 = v7[15];
  v10 = v7[14];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 152) = v0;

  v14 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[3];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  v7 = OUTLINED_FUNCTION_6_4();

  return v8(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 160);
  v8 = *(v7 + 128);
  v9 = *(v7 + 104);
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 168) = v0;

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[16];

  v2 = v0[6];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = OUTLINED_FUNCTION_6_4();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[21];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v14 + 88);
  v15 = *(v14 + 96);
  v18 = *(v14 + 72);
  v17 = *(v14 + 80);
  v19 = *(v14 + 64);
  v21 = v15[5];
  v20 = v15[6];
  OUTLINED_FUNCTION_3_11(v15 + 2);
  OUTLINED_FUNCTION_101_0();
  *(v14 + 128) = DeviceState.asSiriKitDeviceState()(v22, v23);
  OUTLINED_FUNCTION_93_1();
  v28 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v24, v25, v26, v27, v16, 0);
  *(v14 + 136) = v28;
  if (v28)
  {
    v30 = *(v14 + 112);
    v29 = *(v14 + 120);
    v31 = *(v14 + 64);
    v32 = *(*(v14 + 96) + 88);
    v33 = *(*v28 + 112);

    v33(v34);
    v35 = type metadata accessor for SpeakableString();
    v36 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
    CustomIntentsDialogTemplating.getAppName(app:)(v31);
    v39 = OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
    v81 = (*v32 + class metadata base offset for RunCustomIntentCATsSimple + 368);
    v42 = *v81;
    OUTLINED_FUNCTION_16_1();
    v83 = v43 + *v43;
    v45 = *(v44 + 4);
    v46 = swift_task_alloc();
    *(v14 + 144) = v46;
    *v46 = v14;
    v46[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:);
    v48 = *(v14 + 112);
    v47 = *(v14 + 120);
    v49 = *(v14 + 176);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v54(v50, v51, v52, v53, v54, v55, v56, v57, a9, v81, v83, a12, a13, a14);
  }

  else
  {
    v59 = *(v14 + 104);
    v61 = *(v14 + 72);
    v60 = *(v14 + 80);
    v62 = *(*(v14 + 96) + 88);

    OUTLINED_FUNCTION_13_18();
    type metadata accessor for SpeakableString();
    v63 = OUTLINED_FUNCTION_16_11();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    v82 = (*v62 + class metadata base offset for RunCustomIntentCATsSimple + 352);
    v67 = *v82;
    OUTLINED_FUNCTION_16_1();
    v84 = v68 + *v68;
    v70 = *(v69 + 4);
    v71 = swift_task_alloc();
    *(v14 + 160) = v71;
    *v71 = v14;
    v71[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog(app:parameterName:intent:shouldShowAppAttribution:);
    v72 = *(v14 + 104);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v75(v73, v74, v75, v76, v77, v78, v79, v80, a9, v82, v84, a12, a13, a14);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 144) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_27();
  v11 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[13];
  v6 = v4[12];
  v7 = v4[10];
  v8 = v4[9];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 112) = v0;

  v12 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[11];

  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  OUTLINED_FUNCTION_6_7();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[16];
  v7 = v5[15];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[17] = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v3[9];
    v14 = v3[10];
    v16 = v3[8];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[11];

  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(0, *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), 0);
  *(v12 + 88) = v13;
  if (v13)
  {
    v14 = v13;
    v16 = *(v12 + 72);
    v15 = *(v12 + 80);
    v17 = *(v12 + 56);
    v18 = *(v12 + 24);
    v19 = v17[10];
    v20 = v17[5];
    v21 = v17[6];
    OUTLINED_FUNCTION_3_11(v17 + 2);
    OUTLINED_FUNCTION_42_9();
    *(v12 + 96) = DeviceState.asSiriKitDeviceState()(v22, v23);
    OUTLINED_FUNCTION_54_6();
    v25 = *(v24 + 112);
    OUTLINED_FUNCTION_119();
    v26();
    v27 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v27);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v28, v29, v30, v14);
    v32 = *(v31 + class metadata base offset for RunCustomIntentCATs + 184);
    OUTLINED_FUNCTION_6_17();
    v76 = v33 + *v33;
    v35 = *(v34 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 104) = v36;
    *v36 = v37;
    v36[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:);
    v39 = *(v12 + 72);
    v38 = *(v12 + 80);
    v40 = *(v12 + 144);
    v41 = *(v12 + 16);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v47(v42, v43, v44, v45, v46, v47, v48, v49, a9, v76, a11, a12);
  }

  else
  {
    v51 = *(v12 + 56);
    v52 = *(v12 + 64);
    v54 = *(v12 + 32);
    v53 = *(v12 + 40);
    v55 = v51[10];
    v56 = v51[5];
    v57 = v51[6];
    v58 = OUTLINED_FUNCTION_3_11(v51 + 2);
    *(v12 + 120) = OUTLINED_FUNCTION_105_0(v58);

    OUTLINED_FUNCTION_13_18();
    v59 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v59);
    v61 = *(v60 + class metadata base offset for RunCustomIntentCATs + 176);
    OUTLINED_FUNCTION_6_17();
    v77 = v62 + *v62;
    v64 = *(v63 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 128) = v65;
    *v65 = v66;
    v65[1] = CustomIntentsDialogTemplating.makeParameterPromptDialog_preRFv2(app:parameterName:intent:shouldShowAppAttribution:);
    v67 = *(v12 + 64);
    OUTLINED_FUNCTION_15_21();
    OUTLINED_FUNCTION_78();

    return v71(v68, v69, v70, v71, v72, v73, v74, v75, a9, v77, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.getCustomIntroductionPrompt(disambiguationList:app:parameterName:intent:tokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a1 + 16) >= 6uLL && (v8 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(2, a2, a3, a4, a5, a6)) != 0)
  {
    (*(*v8 + 112))(v8);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for SpeakableString();

  return __swift_storeEnumTagSinglePayload(a7, v9, 1, v10);
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 120) = v18;
  *(v1 + 128) = v0;
  *(v1 + 257) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 256) = v5;
  *(v1 + 88) = v6;
  *(v1 + 96) = v7;
  *(v1 + 80) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_27();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v12);
  *(v1 + 152) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[20];
  v7 = v4[18];
  v8 = v4[17];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v12 + 184) = v11;
  *(v12 + 192) = v0;

  v13 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_122();
  if (v1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = v0[9];

  outlined destroy of String?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v0[28] = v5;
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_49_7(v6);

  return CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *(v4 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v10 + 208) = v9;
  *(v10 + 216) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_122();
  if (v1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = v0[26];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v0[28] = v0[9];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_49_7(v3);

  return CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 232);
  *v4 = *v1;
  v3[30] = v7;
  v3[31] = v0;

  if (v0)
  {
    v8 = v3[28];
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  if (v0[30])
  {
    v1 = v0 + 9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v1 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_48_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v1 = v0 + 28;
  }

  v2 = *v1;
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];

  v7 = OUTLINED_FUNCTION_6_4();

  return v8(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  outlined destroy of String?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  OUTLINED_FUNCTION_6_0();

  return v8();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[20];

  v2 = v0[27];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[20];

  v2 = v0[31];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

void CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  *(v0 + 72) = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_89_0(inited, xmmword_216850)[3].n128_u64[0] = *(v2 + 16);
  v8 = Dictionary.init(dictionaryLiteral:)();
  v10 = v1[5];
  v9 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_101_0();
  *(v0 + 160) = DeviceState.asSiriKitDeviceState()(v11, v12);
  v13 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
  OUTLINED_FUNCTION_93_1();
  v18 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v14, v15, v16, v17, v3, v13);
  *(v0 + 168) = v18;

  if (v18)
  {
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v56 = *(v0 + 144);
    v58 = *(v0 + 136);
    v21 = *(v0 + 104);
    v55 = *(v0 + 112);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);
    v25 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);

    v26 = v21;
    v27 = v24;
    CustomIntentsDialogTemplating.getCustomIntroductionPrompt(disambiguationList:app:parameterName:intent:tokens:)(v26, v24, v23, v22, v55, v25, v19);

    v28 = *(v20 + 88);
    v29 = *(*v18 + 112);

    v29(v30);
    v31 = type metadata accessor for SpeakableString();
    v32 = OUTLINED_FUNCTION_26_17();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    CustomIntentsDialogTemplating.getAppName(app:)(v27);
    v35 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
    v38 = *(*v28 + class metadata base offset for RunCustomIntentCATsSimple + 96);
    OUTLINED_FUNCTION_16_1();
    v59 = v39 + *v39;
    v41 = *(v40 + 4);
    v42 = swift_task_alloc();
    *(v0 + 176) = v42;
    *v42 = v0;
    v42[1] = CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    v45 = *(v0 + 136);
    v46 = *(v0 + 257);
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X5, X16 }
  }

  v49 = *(v0 + 128);

  v50 = *(**(v49 + 88) + class metadata base offset for RunCustomIntentCATsSimple + 64);

  v57 = v50 + *v50;
  v51 = v50[1];
  v52 = swift_task_alloc();
  *(v0 + 200) = v52;
  *v52 = v0;
  v52[1] = CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:);
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentsDialogTemplating.offerMoreItems(remainingPages:nextPageSize:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.offerMoreItems(remainingPages:nextPageSize:)()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_3(*(v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_3_11((v4 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v5, v6);
  OUTLINED_FUNCTION_45_5();
  *(v1 + 40) = v7;
  v8 = *(*v0 + class metadata base offset for RunCustomIntentCATsSimple + 336);
  OUTLINED_FUNCTION_16_1();
  v17 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_57_1(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_21_14(v13);

  return (v17)(v15, v2, 0, v3, 0);
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
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_6_0();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_85_3(*(v1 + 16));
  OUTLINED_FUNCTION_3_11((v2 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v3, v4);
  OUTLINED_FUNCTION_45_5();
  *(v1 + 24) = v5;
  v6 = *(*v0 + class metadata base offset for RunCustomIntentCATsSimple + 48);
  OUTLINED_FUNCTION_2_26();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v1 + 32) = v10;
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_21_14(v10);

  return v13(v11);
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog_rfv1()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeUnlockDeviceDialog_rfv1()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[5];
  v4 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v5, v6);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v7;
  v8 = *(*v2 + class metadata base offset for RunCustomIntentCATs + 24);
  OUTLINED_FUNCTION_2_26();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v12;
  *v12 = v13;
  v12[1] = WorkflowDialogTemplating.makePromptForShortcutName_prerfv2();
  v14 = OUTLINED_FUNCTION_15_21();

  return v16(v14);
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = v2[6];
  v6 = *v1;
  *v4 = *v1;
  v3[7] = v0;

  v7 = v2[5];
  outlined destroy of String?(v2[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v8, v9, v10);
  }

  else
  {

    v12 = v6[1];
    OUTLINED_FUNCTION_87();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[3];
  v10 = v9[4];
  v12 = v9[2];
  v13 = v11[13];
  v14 = v11[5];
  v15 = v11[6];
  OUTLINED_FUNCTION_3_11(v11 + 2);
  OUTLINED_FUNCTION_42_9();
  v9[5] = DeviceState.asSiriKitDeviceState()(v16, v17);
  CustomIntentsDialogTemplating.getAppName(app:)(v12);
  type metadata accessor for SpeakableString();
  v18 = OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_24_11(v18, v19, v20, v21);
  v23 = *(v22 + class metadata base offset for RunVoiceCommandCATsSimple + 136);
  OUTLINED_FUNCTION_6_17();
  v40 = v24 + *v24;
  v26 = *(v25 + 4);
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_57_1(v27);
  *v28 = v29;
  v28[1] = CustomIntentsDialogTemplating.makeOpenAppDialogAsLabels(app:);
  v30 = v9[4];
  OUTLINED_FUNCTION_68_8();
  OUTLINED_FUNCTION_82_2();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40);
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:)()
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
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 64) = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = *(v3 + 40);

    v16 = *(v9 + 8);
    OUTLINED_FUNCTION_87();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_14_0();
  v11 = v9[4];
  v10 = v9[5];
  v12 = v9[3];
  v13 = v11[12];
  v14 = v11[5];
  v15 = v11[6];
  OUTLINED_FUNCTION_3_11(v11 + 2);
  OUTLINED_FUNCTION_42_9();
  v9[6] = DeviceState.asSiriKitDeviceState()(v16, v17);
  CustomIntentsDialogTemplating.getAppName(app:)(v12);
  type metadata accessor for SpeakableString();
  v18 = OUTLINED_FUNCTION_17_22();
  OUTLINED_FUNCTION_24_11(v18, v19, v20, v21);
  v23 = *(v22 + class metadata base offset for RunVoiceCommandCATs + 64);
  OUTLINED_FUNCTION_6_17();
  v40 = v24 + *v24;
  v26 = *(v25 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v9[7] = v27;
  *v27 = v28;
  v27[1] = CustomIntentsDialogTemplating.makeOpenAppDialog_rfv1(app:);
  v29 = v9[5];
  v30 = v9[2];
  OUTLINED_FUNCTION_38_13();
  OUTLINED_FUNCTION_82_2();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40);
}

uint64_t CustomIntentsDialogTemplating.makeReadDisambiguationList(disambiguationItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for SpeakableString();
  v1[15] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_28();
  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[21] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v4[18];
    v14 = v4[19];
    v15 = v4[17];

    OUTLINED_FUNCTION_6_6();

    return v16(v1);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[21];

  return v4();
}

void CustomIntentsDialogTemplating.makeReadDisambiguationList(disambiguationItems:)()
{
  object = *(v0 + 104);
  v3 = object[2];
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = *(v0 + 128);
    OUTLINED_FUNCTION_107();
    type metadata accessor for CATSpeakableString();
    OUTLINED_FUNCTION_98();
    do
    {
      v72 = v4;
      outlined init with copy of CustomIntentDisambiguationItem(v1, v0 + 16);
      v6 = *(v0 + 16);
      v7 = *(v0 + 24);
      v8 = OUTLINED_FUNCTION_92_1();
      static CATSpeakableString.stripTTSHint(print:)(v8, v9, v10, v11, v12, v13, v14, v15, v61, v64, v67);
      OUTLINED_FUNCTION_123();
      if (object)
      {
        v70 = v5;
        v16 = OUTLINED_FUNCTION_54_1();
        static CATSpeakableString.stripTTSHint(print:)(v16, v17, v18, v19, v20, v21, v22, v23, v62, v65, v68);
        v25 = v24;
        OUTLINED_FUNCTION_5_21();
        if (v26)
        {
          OUTLINED_FUNCTION_10_28();
          v27._object = v25;
          String.append(_:)(v27);

          String.append(_:)(v76);
          v4 = v75;
        }

        v5 = v70;
      }

      OUTLINED_FUNCTION_92_1();
      static CATSpeakableString.applyTTSHint(speak:)();
      OUTLINED_FUNCTION_120();
      v75 = v28;
      if (object)
      {
        OUTLINED_FUNCTION_54_1();
        static CATSpeakableString.applyTTSHint(speak:)();
        object = v29;
        OUTLINED_FUNCTION_5_21();
        if (v30)
        {
          OUTLINED_FUNCTION_10_28();
          v31._object = object;
          String.append(_:)(v31);

          object = v76._object;
          String.append(_:)(v76);
        }
      }

      v32 = *(v0 + 136);
      OUTLINED_FUNCTION_138();
      v33 = outlined destroy of CustomIntentDisambiguationItem(v0 + 16);
      OUTLINED_FUNCTION_99_0(v33, v34, v35, v36, v37, v38, v39, v40, v62, v65, v68, v70, v71, v72);
      if (v47)
      {
        OUTLINED_FUNCTION_104_0();
        v4 = v74;
      }

      v48 = OUTLINED_FUNCTION_59_7(v41, *(v0 + 136), *(v0 + 120), v42, v43, v44, v45, v46, v63, v66, v69);
      v49(v48);
      v1 += 88;
      --v3;
    }

    while (v3);
  }

  *(v0 + 144) = v4;
  OUTLINED_FUNCTION_85_3(*(v0 + 112));
  OUTLINED_FUNCTION_3_11((v50 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v51, v52);
  OUTLINED_FUNCTION_45_5();
  *(v0 + 152) = v53;
  v54 = *(*object + class metadata base offset for RunCustomIntentCATsSimple + 384);
  OUTLINED_FUNCTION_16_1();
  v73 = v55 + *v55;
  v57 = *(v56 + 4);
  v58 = swift_task_alloc();
  *(v0 + 160) = v58;
  *v58 = v0;
  OUTLINED_FUNCTION_21_14(v58);
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X2, X16 }
}

uint64_t CustomIntentsDialogTemplating.makeOfferMoreDisambiguationItem(app:parameterName:intent:remainingPages:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_28();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[7];
  v2 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(4, v0[2], v0[3], v0[4], v0[5], 0);
  v0[9] = v2;
  v3 = v1[11];
  v4 = v1[5];
  v5 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_42_9();
  v0[10] = DeviceState.asSiriKitDeviceState()(v6, v7);
  if (v2)
  {
    v8 = v0[8];
    OUTLINED_FUNCTION_54_6();
    v10 = *(v9 + 112);

    v10(v11);

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v0[8];
  v14 = v0[6];
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_24_11(v13, v12, 1, v15);
  v17 = *(v16 + class metadata base offset for RunCustomIntentCATsSimple + 320);
  OUTLINED_FUNCTION_16_1();
  v25 = (v18 + *v18);
  v20 = *(v19 + 4);
  v21 = swift_task_alloc();
  v0[11] = v21;
  *v21 = v0;
  v21[1] = CustomIntentsDialogTemplating.makeOfferMoreDisambiguationItem(app:parameterName:intent:remainingPages:);
  v22 = v0[8];
  v23 = OUTLINED_FUNCTION_70_3();

  return (v25)(v23, v14, 0);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[11];
  *v6 = *v1;
  v5[12] = v0;

  v8 = v4[10];
  v9 = v4[8];
  if (!v0)
  {
    v5[13] = v3;
  }

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_6_6();
  v4 = v0[13];

  return v3(v4);
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];

  OUTLINED_FUNCTION_6_0();
  v4 = v0[12];

  return v3();
}

uint64_t CustomIntentsDialogTemplating.makeIntroduceDisambiguationPagination(app:intent:parameterName:intentResolutionResult:paginatedItems:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v12 = *(v11 + 64);
  v1[19] = OUTLINED_FUNCTION_27();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[9] = v1;
  v2[10] = v4;
  v2[11] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 184);
  v8 = *(v7 + 176);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 192) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of String?(*(v0 + 168), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_140();

  v2 = OUTLINED_FUNCTION_6_4();

  return v3(v2);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[26];
  v7 = v5[25];
  v8 = v5[19];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[27] = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v16 = v3[20];
    v15 = v3[21];
    v19 = v3 + 18;
    v17 = v3[18];
    v18 = v19[1];

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_87();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  OUTLINED_FUNCTION_4_1();
  *v5 = v4;
  v7 = *(v6 + 232);
  v8 = *v2;
  OUTLINED_FUNCTION_2_0();
  *v9 = v8;
  v4[30] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v4[28];

    v15 = v4[20];
    v14 = v4[21];
    v18 = v4 + 18;
    v16 = v4[18];
    v17 = v18[1];

    OUTLINED_FUNCTION_6_6();

    return v19(v1);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  outlined destroy of String?(*(v0 + 168), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v2();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 224);

  v2 = *(v0 + 240);
  OUTLINED_FUNCTION_140();

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v4 = type metadata accessor for SpeakableString();
  v1[16] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[17] = v5;
  v7 = *(v6 + 64);
  v1[18] = OUTLINED_FUNCTION_28();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[19];
    v13 = v3[20];

    v14 = v3[18];

    v15 = OUTLINED_FUNCTION_8_11();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  OUTLINED_FUNCTION_6_0();
  v5 = v0[22];

  return v4();
}

void CustomIntentsDialogTemplating.makeJoinedSpeakableDisambiguationItemList(app:intent:parameterName:disambiguationList:deviceIsLocked:siriEnvironment:)()
{
  v2 = *(v0 + 112);
  if (static OutputUtils.shouldReadItemsInDisambiguationList(siriEnvironment:)())
  {
    object = *(v0 + 104);
    v4 = object[2];
    v5 = _swiftEmptyArrayStorage;
    if (v4)
    {
      v6 = *(v0 + 136);
      OUTLINED_FUNCTION_107();
      type metadata accessor for CATSpeakableString();
      OUTLINED_FUNCTION_98();
      do
      {
        v76 = v5;
        outlined init with copy of CustomIntentDisambiguationItem(v1, v0 + 16);
        v7 = *(v0 + 16);
        v8 = *(v0 + 24);
        v9 = OUTLINED_FUNCTION_92_1();
        static CATSpeakableString.stripTTSHint(print:)(v9, v10, v11, v12, v13, v14, v15, v16, v65, v68, v71);
        OUTLINED_FUNCTION_123();
        if (object)
        {
          v74 = v6;
          v17 = OUTLINED_FUNCTION_54_1();
          static CATSpeakableString.stripTTSHint(print:)(v17, v18, v19, v20, v21, v22, v23, v24, v66, v69, v72);
          v26 = v25;
          OUTLINED_FUNCTION_5_21();
          if (v27)
          {
            OUTLINED_FUNCTION_10_28();
            v28._object = v26;
            String.append(_:)(v28);

            String.append(_:)(v80);
            v5 = v79;
          }

          v6 = v74;
        }

        OUTLINED_FUNCTION_92_1();
        static CATSpeakableString.applyTTSHint(speak:)();
        OUTLINED_FUNCTION_120();
        v79 = v29;
        if (object)
        {
          OUTLINED_FUNCTION_54_1();
          static CATSpeakableString.applyTTSHint(speak:)();
          object = v30;
          OUTLINED_FUNCTION_5_21();
          if (v31)
          {
            OUTLINED_FUNCTION_10_28();
            v32._object = object;
            String.append(_:)(v32);

            object = v80._object;
            String.append(_:)(v80);
          }
        }

        v33 = *(v0 + 144);
        OUTLINED_FUNCTION_138();
        v34 = outlined destroy of CustomIntentDisambiguationItem(v0 + 16);
        OUTLINED_FUNCTION_99_0(v34, v35, v36, v37, v38, v39, v40, v41, v66, v69, v72, v74, v75, v76);
        if (v48)
        {
          OUTLINED_FUNCTION_104_0();
          v5 = v78;
        }

        v49 = OUTLINED_FUNCTION_59_7(v42, *(v0 + 144), *(v0 + 128), v43, v44, v45, v46, v47, v67, v70, v73);
        v50(v49);
        v1 += 88;
        --v4;
      }

      while (v4);
    }

    *(v0 + 152) = v5;
    OUTLINED_FUNCTION_85_3(*(v0 + 120));
    OUTLINED_FUNCTION_3_11((v54 + 16));
    OUTLINED_FUNCTION_42_9();
    DeviceState.asSiriKitDeviceState()(v55, v56);
    OUTLINED_FUNCTION_45_5();
    *(v0 + 160) = v57;
    v58 = *(*object + class metadata base offset for RunCustomIntentCATsSimple + 384);
    OUTLINED_FUNCTION_16_1();
    v77 = v59 + *v59;
    v61 = *(v60 + 4);
    v62 = swift_task_alloc();
    *(v0 + 168) = v62;
    *v62 = v0;
    OUTLINED_FUNCTION_21_14(v62);
    OUTLINED_FUNCTION_35_4();

    __asm { BRAA            X2, X16 }
  }

  v51 = *(v0 + 144);

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_35_4();

  __asm { BRAA            X2, X16 }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 344) = v2;
  *(v1 + 256) = v3;
  *(v1 + 264) = v0;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 224) = v6;
  *(v1 + 232) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_27();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[22] = v1;
  v2[23] = v4;
  v2[24] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 312);
  v8 = v7[37];
  v9 = v7[36];
  v10 = v7[35];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 320) = v0;

  v14 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[37];
  v2 = v0[38];

  v3 = v0[23];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[34];

  v7 = OUTLINED_FUNCTION_6_4();

  return v8(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[25] = v1;
  v2[26] = v4;
  v2[27] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 328);
  v8 = *(v7 + 296);
  v9 = *(v7 + 272);
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 336) = v0;

  outlined destroy of String?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[37];

  v2 = v0[26];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];

  v6 = OUTLINED_FUNCTION_6_4();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[38];

  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];

  OUTLINED_FUNCTION_6_0();

  return v7();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[42];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v14 + 256);
  v15 = *(v14 + 264);
  v18 = *(v14 + 232);
  v17 = *(v14 + 240);
  v20 = v15[5];
  v19 = v15[6];
  OUTLINED_FUNCTION_3_11(v15 + 2);
  OUTLINED_FUNCTION_101_0();
  *(v14 + 296) = DeviceState.asSiriKitDeviceState()(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_72_5(inited, xmmword_216840);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v16 valueForKey:v24];

  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v14 + 144), (inited + 48));
  }

  else
  {
    v27 = *(v14 + 232);
    v26 = *(v14 + 240);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v27;
    *(inited + 56) = v26;
  }

  v29 = *(v14 + 248);
  v28 = *(v14 + 256);
  v31 = *(v14 + 232);
  v30 = *(v14 + 240);
  v32 = *(v14 + 224);
  *(inited + 80) = v31;
  *(inited + 88) = v30;

  v33 = [v29 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v34 = Dictionary.init(dictionaryLiteral:)();
  v35 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(5, v32, v31, v30, v28, v34);
  *(v14 + 304) = v35;

  if (v35)
  {
    v37 = *(v14 + 280);
    v36 = *(v14 + 288);
    v38 = *(v14 + 224);
    v39 = *(*(v14 + 264) + 88);
    OUTLINED_FUNCTION_18_4();
    v41 = *(v40 + 112);

    v41(v42);
    v43 = type metadata accessor for SpeakableString();
    v44 = OUTLINED_FUNCTION_17_22();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    CustomIntentsDialogTemplating.getAppName(app:)(v38);
    v47 = OUTLINED_FUNCTION_22_14();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v43);
    v50 = *(*v39 + class metadata base offset for RunCustomIntentCATsSimple + 16);
    OUTLINED_FUNCTION_2_26();
    v90 = v51 + *v51;
    v53 = *(v52 + 4);
    v54 = swift_task_alloc();
    *(v14 + 312) = v54;
    *v54 = v14;
    v54[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v56 = *(v14 + 280);
    v55 = *(v14 + 288);
    v57 = *(v14 + 344);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v62(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, v90, a12, a13, a14);
  }

  else
  {
    v67 = *(v14 + 272);
    v69 = *(v14 + 232);
    v68 = *(v14 + 240);
    v70 = *(*(v14 + 264) + 88);

    OUTLINED_FUNCTION_13_18();
    type metadata accessor for SpeakableString();
    v71 = OUTLINED_FUNCTION_16_11();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    v89 = (*v70 + class metadata base offset for RunCustomIntentCATsSimple);
    v75 = *v89;
    OUTLINED_FUNCTION_16_1();
    v91 = v76 + *v76;
    v78 = *(v77 + 4);
    v79 = swift_task_alloc();
    *(v14 + 328) = v79;
    *v79 = v14;
    v79[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v80 = *(v14 + 272);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_6_1();

    return v83(v81, v82, v83, v84, v85, v86, v87, v88, a9, v89, v91, a12, a13, a14);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  *(v1 + 312) = v3;
  *(v1 + 200) = v4;
  *(v1 + 208) = v5;
  *(v1 + 184) = v6;
  *(v1 + 192) = v7;
  *(v1 + 176) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_27();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[31];
  v8 = v4[30];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 280) = v0;

  v12 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[32];

  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  OUTLINED_FUNCTION_6_7();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[37];
  v7 = v5[36];
  v8 = v5[29];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[38] = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v3[30];
    v14 = v3[31];
    v16 = v3[29];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[32];

  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[38];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 216);
  v15 = *(v12 + 192);
  v14 = *(v12 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_72_5(inited, xmmword_216840);
  OUTLINED_FUNCTION_73_3();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v13 valueForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v12 + 144), (inited + 48));
  }

  else
  {
    v20 = *(v12 + 192);
    v19 = *(v12 + 200);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v20;
    *(inited + 56) = v19;
  }

  v22 = *(v12 + 208);
  v21 = *(v12 + 216);
  v23 = *(v12 + 200);
  v24 = *(v12 + 184);
  *(inited + 80) = *(v12 + 192);
  *(inited + 88) = v23;

  v25 = [v22 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v26 = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_93_1();
  v31 = CustomIntentsDialogTemplating.localizedCustomPromptFor(promptDialogType:app:parameterName:intent:tokens:)(v27, v28, v29, v30, v21, v26);
  *(v12 + 256) = v31;

  if (v31)
  {
    v33 = *(v12 + 240);
    v32 = *(v12 + 248);
    v34 = *(v12 + 224);
    v35 = *(v12 + 184);
    v36 = v34[10];
    v37 = v34[5];
    v38 = v34[6];
    OUTLINED_FUNCTION_3_11(v34 + 2);
    OUTLINED_FUNCTION_42_9();
    *(v12 + 264) = DeviceState.asSiriKitDeviceState()(v39, v40);
    OUTLINED_FUNCTION_54_6();
    v42 = *(v41 + 112);
    OUTLINED_FUNCTION_119();
    v43();
    v44 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v44);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v45, v46, v47, v31);
    v49 = *(v48 + class metadata base offset for RunCustomIntentCATs + 8);
    OUTLINED_FUNCTION_6_17();
    v95 = v50 + *v50;
    v52 = *(v51 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 272) = v53;
    *v53 = v54;
    v53[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v56 = *(v12 + 240);
    v55 = *(v12 + 248);
    v57 = *(v12 + 312);
    v58 = *(v12 + 176);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v64(v59, v60, v61, v62, v63, v64, v65, v66, a9, v95, a11, a12);
  }

  else
  {
    v68 = *(v12 + 224);
    v69 = *(v12 + 232);
    v71 = *(v12 + 192);
    v70 = *(v12 + 200);
    v72 = v68[10];
    v73 = v68[5];
    v74 = v68[6];
    v75 = OUTLINED_FUNCTION_3_11(v68 + 2);
    *(v12 + 288) = OUTLINED_FUNCTION_105_0(v75);

    OUTLINED_FUNCTION_13_18();
    v76 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v76);
    v94 = v77 + class metadata base offset for RunCustomIntentCATs;
    v78 = *(v77 + class metadata base offset for RunCustomIntentCATs);
    OUTLINED_FUNCTION_16_1();
    v96 = v79 + *v79;
    v81 = *(v80 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 296) = v82;
    *v82 = v83;
    v82[1] = CustomIntentsDialogTemplating.makeParameterValueConfirmationDialog_preRFv2(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v84 = *(v12 + 232);
    v85 = *(v12 + 176);
    OUTLINED_FUNCTION_41_9();
    OUTLINED_FUNCTION_78();

    return v89(v86, v87, v88, v89, v90, v91, v92, v93, v94, v96, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 168) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v10 = *(v9 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_27();
  v11 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 128);
  v8 = v7[15];
  v9 = v7[13];
  v10 = v7[12];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 136) = v0;

  v14 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[14];

  v2 = v0[3];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  v6 = OUTLINED_FUNCTION_6_4();

  return v7(v6);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[19];
  v7 = v5[18];
  v8 = v5[11];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[20] = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_87();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v16 = v3[12];
    v15 = v3[13];
    v17 = v3[11];

    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_87();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[14];

  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[20];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 72);
  v15 = *(v12 + 48);
  v14 = *(v12 + 56);
  v16 = *(v12 + 40);
  [*(v12 + 64) unsupportedReason];
  OUTLINED_FUNCTION_40_10();
  CustomIntentsDialogTemplating.localizedCustomUnsupportendPromptFor(app:parameterName:unsupportedReasonCode:intent:tokens:)();
  *(v12 + 112) = v17;
  if (v17)
  {
    v18 = v17;
    v20 = *(v12 + 96);
    v19 = *(v12 + 104);
    v21 = *(v12 + 80);
    v22 = *(v12 + 40);
    v23 = v21[11];
    v24 = v21[5];
    v25 = v21[6];
    OUTLINED_FUNCTION_3_11(v21 + 2);
    OUTLINED_FUNCTION_42_9();
    *(v12 + 120) = DeviceState.asSiriKitDeviceState()(v26, v27);
    OUTLINED_FUNCTION_54_6();
    v29 = *(v28 + 112);
    OUTLINED_FUNCTION_119();
    v30();
    v31 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v31);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v32, v33, v34, v18);
    v77 = (v35 + class metadata base offset for RunCustomIntentCATsSimple + 416);
    v36 = *v77;
    OUTLINED_FUNCTION_16_1();
    v79 = v37 + *v37;
    v39 = *(v38 + 4);
    v40 = swift_task_alloc();
    *(v12 + 128) = v40;
    *v40 = v12;
    v40[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v42 = *(v12 + 96);
    v41 = *(v12 + 104);
    v43 = *(v12 + 168);
    OUTLINED_FUNCTION_68_8();
    OUTLINED_FUNCTION_78();

    return v48(v44, v45, v46, v47, v48, v49, v50, v51, v77, v79, a11, a12);
  }

  else
  {
    v53 = *(v12 + 80);
    v54 = *(v12 + 88);
    v56 = *(v12 + 48);
    v55 = *(v12 + 56);
    v57 = v53[11];
    v58 = v53[5];
    v59 = v53[6];
    v60 = OUTLINED_FUNCTION_3_11(v53 + 2);
    *(v12 + 144) = OUTLINED_FUNCTION_105_0(v60);

    OUTLINED_FUNCTION_13_18();
    v61 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v61);
    v78 = (v62 + class metadata base offset for RunCustomIntentCATsSimple + 400);
    v63 = *v78;
    OUTLINED_FUNCTION_16_1();
    v80 = v64 + *v64;
    v66 = *(v65 + 4);
    v67 = swift_task_alloc();
    *(v12 + 152) = v67;
    *v67 = v12;
    v67[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v68 = *(v12 + 88);
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_78();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, v78, v80, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 152) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_54_5(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_27();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v12);
  *(v1 + 88) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[11];
  v8 = v4[10];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 120) = v0;

  v12 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[12];

  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  OUTLINED_FUNCTION_6_7();

  return v5();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[9];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v3[18] = v0;

  outlined destroy of String?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v3[10];
    v14 = v3[11];
    v16 = v3[9];

    OUTLINED_FUNCTION_6_7();

    return v17();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[18];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  OUTLINED_FUNCTION_6_0();

  return v5();
}

uint64_t CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 56);
  v15 = *(v12 + 32);
  v14 = *(v12 + 40);
  v16 = *(v12 + 24);
  [*(v12 + 48) unsupportedReason];
  OUTLINED_FUNCTION_40_10();
  CustomIntentsDialogTemplating.localizedCustomUnsupportendPromptFor(app:parameterName:unsupportedReasonCode:intent:tokens:)();
  *(v12 + 96) = v17;
  if (v17)
  {
    v18 = v17;
    v20 = *(v12 + 80);
    v19 = *(v12 + 88);
    v21 = *(v12 + 64);
    v22 = *(v12 + 24);
    v23 = v21[10];
    v24 = v21[5];
    v25 = v21[6];
    OUTLINED_FUNCTION_3_11(v21 + 2);
    OUTLINED_FUNCTION_42_9();
    *(v12 + 104) = DeviceState.asSiriKitDeviceState()(v26, v27);
    OUTLINED_FUNCTION_54_6();
    v29 = *(v28 + 112);
    OUTLINED_FUNCTION_119();
    v30();
    v31 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_20_16(v31);
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_24_11(v32, v33, v34, v18);
    v36 = *(v35 + class metadata base offset for RunCustomIntentCATs + 208);
    OUTLINED_FUNCTION_6_17();
    v80 = v37 + *v37;
    v39 = *(v38 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 112) = v40;
    *v40 = v41;
    v40[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v43 = *(v12 + 80);
    v42 = *(v12 + 88);
    v44 = *(v12 + 152);
    v45 = *(v12 + 16);
    OUTLINED_FUNCTION_38_13();
    OUTLINED_FUNCTION_78();

    return v51(v46, v47, v48, v49, v50, v51, v52, v53, a9, v80, a11, a12);
  }

  else
  {
    v55 = *(v12 + 64);
    v56 = *(v12 + 72);
    v58 = *(v12 + 32);
    v57 = *(v12 + 40);
    v59 = v55[10];
    v60 = v55[5];
    v61 = v55[6];
    v62 = OUTLINED_FUNCTION_3_11(v55 + 2);
    *(v12 + 128) = OUTLINED_FUNCTION_105_0(v62);

    OUTLINED_FUNCTION_13_18();
    v63 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_8_24(v63);
    v65 = *(v64 + class metadata base offset for RunCustomIntentCATs + 200);
    OUTLINED_FUNCTION_6_17();
    v81 = v66 + *v66;
    v68 = *(v67 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 136) = v69;
    *v69 = v70;
    v69[1] = CustomIntentsDialogTemplating.makeParameterValueUnsupportedDialog_rfv1(app:parameterName:intentResolutionResult:intent:shouldShowAppAttribution:);
    v71 = *(v12 + 72);
    OUTLINED_FUNCTION_15_21();
    OUTLINED_FUNCTION_78();

    return v75(v72, v73, v74, v75, v76, v77, v78, v79, a9, v81, a11, a12);
  }
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 216) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v9);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v10);
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 176);
  v8 = v7[21];
  v9 = v7[18];
  v10 = v7[17];
  v11 = v7[16];
  v12 = v7[15];
  v13 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v14 = v13;
  *(v15 + 184) = v0;

  OUTLINED_FUNCTION_77_4(v12);
  v16 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v20, v21, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v22, v23, v24);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 200);
  v8 = v7[24];
  v9 = v7[14];
  v10 = v7[13];
  v11 = v7[12];
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;
  *(v14 + 208) = v0;

  OUTLINED_FUNCTION_83_2();
  v15 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[20];
  v12 = v10[10];

  v13 = v10[3];
  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_25_2();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[20];
  v12 = v10[10];

  v13 = v10[23];
  OUTLINED_FUNCTION_131();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 80);

  v14 = *(v12 + 48);
  v16 = *(v12 + 136);
  v15 = *(v12 + 144);
  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_27_0();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 152);

  v14 = *(v12 + 208);
  v16 = *(v12 + 136);
  v15 = *(v12 + 144);
  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 176) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_27();
  *(v1 + 64) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v10);
  *(v1 + 88) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v11);
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 144) = v0;

  OUTLINED_FUNCTION_77_4(v10);
  v14 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[19];
  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 168) = v0;

  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 120);
  v12 = *(v10 + 40);

  v13 = *(v10 + 104);
  v15 = *(v10 + 88);
  v14 = *(v10 + 96);
  v17 = *(v10 + 72);
  v16 = *(v10 + 80);
  v19 = *(v10 + 56);
  v18 = *(v10 + 64);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_21_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 40);

  v12 = *(v10 + 96);
  v13 = *(v10 + 104);
  v15 = *(v10 + 80);
  v14 = *(v10 + 88);
  v17 = *(v10 + 64);
  v16 = *(v10 + 72);
  v18 = *(v10 + 56);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_25_2();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 120);
  v12 = *(v10 + 40);

  v13 = *(v10 + 144);
  v14 = *(v10 + 104);
  v16 = *(v10 + 88);
  v15 = *(v10 + 96);
  v18 = *(v10 + 72);
  v17 = *(v10 + 80);
  v20 = *(v10 + 56);
  v19 = *(v10 + 64);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentConfirmationDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 112);

  v14 = *(v12 + 168);
  v16 = *(v12 + 96);
  v15 = *(v12 + 104);
  v18 = *(v12 + 80);
  v17 = *(v12 + 88);
  v20 = *(v12 + 64);
  v19 = *(v12 + 72);
  v21 = *(v12 + 56);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 208) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_27();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v9);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v10);
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  OUTLINED_FUNCTION_39_14(v4);
  v6 = *(v5 + 168);
  v8 = v7[20];
  v9 = v7[18];
  v10 = v7[17];
  v11 = v7[16];
  v12 = v7[15];
  v13 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v14 = v13;
  *(v15 + 176) = v0;

  OUTLINED_FUNCTION_77_4(v12);
  v16 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v20, v21, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v22, v23, v24);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_70();
  v6 = *(v5 + 192);
  v8 = v7[23];
  v9 = v7[14];
  v10 = v7[13];
  v11 = v7[12];
  v12 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v13 = v12;
  *(v14 + 200) = v0;

  OUTLINED_FUNCTION_83_2();
  v15 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v17 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v17, v18, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[19];

  v14 = v12[3];
  v15 = v12[9];
  type metadata accessor for CustomIntentsDialogTemplating();
  if (static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v15))
  {
    v16 = v12[10];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_15_6(v17, static Logger.voiceCommands);
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_40(&dword_0, v20, v21, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
    }

    v23 = v12[10];
    v22 = v12[11];

    v24 = *(v22 + 56);
    OUTLINED_FUNCTION_18_4();
    (*(v25 + 224))(0);
  }

  v27 = v12[17];
  v26 = v12[18];
  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[6];
  v14 = v12[9];
  type metadata accessor for CustomIntentsDialogTemplating();
  if (static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v14))
  {
    v15 = v12[10];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v16 = type metadata accessor for Logger();
    v17 = OUTLINED_FUNCTION_15_6(v16, static Logger.voiceCommands);
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      *OUTLINED_FUNCTION_52() = 0;
      OUTLINED_FUNCTION_40(&dword_0, v19, v20, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
    }

    v22 = v12[10];
    v21 = v12[11];

    v23 = *(v21 + 56);
    OUTLINED_FUNCTION_18_4();
    (*(v24 + 224))(0);
  }

  v26 = v12[17];
  v25 = v12[18];
  OUTLINED_FUNCTION_80_4();

  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_27_0();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[19];
  v12 = v10[10];

  v13 = v10[22];
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();

  v11 = *(v10 + 200);
  OUTLINED_FUNCTION_136();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 240) = v3;
  OUTLINED_FUNCTION_54_5(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_27();
  *(v1 + 64) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v1 + 80) = OUTLINED_FUNCTION_48_0(v10);
  *(v1 + 88) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v1 + 104) = OUTLINED_FUNCTION_115(v11);
  v12 = type metadata accessor for TemplatingResult();
  *(v1 + 112) = v12;
  OUTLINED_FUNCTION_5_0(v12);
  *(v1 + 120) = v13;
  v15 = *(v14 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_27();
  v16 = swift_task_alloc();
  *(v1 + 144) = OUTLINED_FUNCTION_142(v16);
  v17 = type metadata accessor for BehaviorAfterSpeaking();
  *(v1 + 152) = v17;
  OUTLINED_FUNCTION_5_0(v17);
  *(v1 + 160) = v18;
  v20 = *(v19 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_27();
  *(v1 + 176) = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v21, v22, v23);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[25];
  v6 = v4[24];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  v11 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v12 = v11;
  *(v13 + 208) = v0;

  OUTLINED_FUNCTION_77_4(v10);
  v14 = OUTLINED_FUNCTION_69_6();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v16 = OUTLINED_FUNCTION_73_3();
  outlined destroy of String?(v16, v17, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = OUTLINED_FUNCTION_9_3();
  outlined destroy of String?(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_21_0();

  return _swift_task_switch(v20, v21, v22);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[28];
  v6 = v4[27];
  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  v10 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v11 = v10;
  *(v12 + 232) = v0;

  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v15, v16, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t CustomIntentsDialogTemplating.makeIntentHandledDialog_rfv1(app:intent:intentResponse:shouldShowAppAttribution:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[23];

  v16 = v14[4];
  v17 = *(v14[15] + 32);
  (v17)(v14[18], v14[17], v14[14]);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v16) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v18 = type metadata accessor for Logger();
    v19 = OUTLINED_FUNCTION_15_6(v18, static Logger.voiceCommands);
    v20 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v20))
    {
      v21 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v21);
      OUTLINED_FUNCTION_26(&dword_0, v22, v23, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
      OUTLINED_FUNCTION_17();
    }

    v24 = v14[6];

    v25 = *(v24 + 56);
    OUTLINED_FUNCTION_18_4();
    (*(v26 + 224))(0);
  }

  OUTLINED_FUNCTION_134();
  v27 = OUTLINED_FUNCTION_118();
  v17(v27);
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[4];
  v16 = *(v14[15] + 32);
  (v16)(v14[18], v14[16], v14[14]);
  type metadata accessor for CustomIntentsDialogTemplating();
  if ((static CustomIntentsDialogTemplating.isShortcutsInternalCustomIntent(intent:)(v15) & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v17 = type metadata accessor for Logger();
    v18 = OUTLINED_FUNCTION_15_6(v17, static Logger.voiceCommands);
    v19 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_30_1(v19))
    {
      v20 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_45(v20);
      OUTLINED_FUNCTION_26(&dword_0, v21, v22, "CustomIntentDialogTemplating.makeIntentHandledDialog incrementing dialogCount");
      OUTLINED_FUNCTION_17();
    }

    v23 = v14[6];

    v24 = *(v23 + 56);
    OUTLINED_FUNCTION_18_4();
    (*(v25 + 224))(0);
  }

  OUTLINED_FUNCTION_134();
  v26 = OUTLINED_FUNCTION_118();
  v16(v26);
  OUTLINED_FUNCTION_37_9();

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_6_1();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[23];
  v16 = v14[5];

  v17 = v14[26];
  OUTLINED_FUNCTION_73_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();

  v15 = *(v14 + 232);
  OUTLINED_FUNCTION_73_5();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_27();
  v1[7] = swift_task_alloc();
  v8 = type metadata accessor for SpeakableString();
  v1[8] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[9] = v9;
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_28();
  v12 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = v4[13];
  v8 = v4[12];
  *v6 = *v1;
  v5[14] = v0;

  v9 = v4[7];
  v10 = v4[6];
  if (!v0)
  {
    v5[15] = v3;
  }

  OUTLINED_FUNCTION_86_0();
  outlined destroy of String?(v11, v12, v13);
  OUTLINED_FUNCTION_86_0();
  outlined destroy of String?(v14, v15, v16);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_57();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_133();

  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);

  OUTLINED_FUNCTION_6_6();
  v6 = *(v0 + 120);
  OUTLINED_FUNCTION_57();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_133();

  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);

  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 112);
  OUTLINED_FUNCTION_57();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t CustomIntentsDialogTemplating.makeFailureHandlingIntentDialog_prerfv2(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_54_5(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_27();
  v1[8] = swift_task_alloc();
  v9 = type metadata accessor for SpeakableString();
  v1[9] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13, v14, v15);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[8];
  v8 = v4[7];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v11 + 120) = v0;

  v12 = OUTLINED_FUNCTION_54_1();
  outlined destroy of String?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = OUTLINED_FUNCTION_48_2();
  outlined destroy of String?(v14, v15, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_87();

  return _swift_task_switch(v16, v17, v18);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_130();

  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_22_4();
  v4(v3);

  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_57();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_130();

  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);

  OUTLINED_FUNCTION_6_0();
  v6 = *(v0 + 120);
  OUTLINED_FUNCTION_57();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_85_3(*(v1 + 16));
  OUTLINED_FUNCTION_3_11((v2 + 16));
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v3, v4);
  OUTLINED_FUNCTION_45_5();
  *(v1 + 24) = v5;
  v6 = *(*v0 + class metadata base offset for RunCustomIntentCATsSimple + 208);
  OUTLINED_FUNCTION_2_26();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v1 + 32) = v10;
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_21_14(v10);

  return v13(v11);
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeHandoffDialog_preRFv2()()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[5];
  v4 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_42_9();
  DeviceState.asSiriKitDeviceState()(v5, v6);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v7;
  v8 = *(*v2 + class metadata base offset for RunCustomIntentCATs + 104);
  OUTLINED_FUNCTION_2_26();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[5] = v12;
  *v12 = v13;
  v12[1] = WorkflowDialogTemplating.makeHandoffDialog_preRFv2();
  v14 = OUTLINED_FUNCTION_15_21();

  return v16(v14);
}

uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_0_2();
}

{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[2];
  v3 = v1[5];
  v2 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_101_0();
  v4 = DeviceState.isActualHomePod.getter();
  v5 = v1[11];
  v6 = v1[5];
  v7 = v1[6];
  v8 = OUTLINED_FUNCTION_3_11(v1 + 2);
  DeviceState.asSiriKitDeviceState()(v8, v7);
  OUTLINED_FUNCTION_45_5();
  v0[3] = v9;
  v10 = *v5 + class metadata base offset for RunCustomIntentCATsSimple;
  if (v4)
  {
    v11 = *(v10 + 192);
    OUTLINED_FUNCTION_16_1();
    v26 = (v12 + *v12);
    v14 = *(v13 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_57_1(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_21_14(v16);
    v19 = v26;
  }

  else
  {
    v20 = *(v10 + 176);
    OUTLINED_FUNCTION_16_1();
    v27 = (v21 + *v21);
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v0[4] = v24;
    *v24 = v0;
    v18 = OUTLINED_FUNCTION_21_14(v24);
    v19 = v27;
  }

  return v19(v18);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_18_3();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
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
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_18_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = OUTLINED_FUNCTION_8_11();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2()()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0[3];
  v3 = v1[5];
  v2 = v1[6];
  OUTLINED_FUNCTION_3_11(v1 + 2);
  OUTLINED_FUNCTION_101_0();
  v4 = DeviceState.isActualHomePod.getter();
  v5 = v1[10];
  v6 = v1[5];
  v7 = v1[6];
  v8 = OUTLINED_FUNCTION_3_11(v1 + 2);
  DeviceState.asSiriKitDeviceState()(v8, v7);
  OUTLINED_FUNCTION_45_5();
  v0[4] = v9;
  v10 = *v5 + class metadata base offset for RunCustomIntentCATs;
  if (v4)
  {
    v11 = *(v10 + 96);
    OUTLINED_FUNCTION_16_1();
    v26 = (v12 + *v12);
    v14 = *(v13 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[5] = v15;
    *v15 = v16;
    v15[1] = CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2();
    v17 = OUTLINED_FUNCTION_15_21();
    v18 = v26;
  }

  else
  {
    v19 = *(v10 + 88);
    OUTLINED_FUNCTION_16_1();
    v27 = (v20 + *v20);
    v22 = *(v21 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[7] = v23;
    *v23 = v24;
    v23[1] = CustomIntentsDialogTemplating.makeNotificationMessageForHandoff_preRFv2();
    v17 = OUTLINED_FUNCTION_15_21();
    v18 = v27;
  }

  return v18(v17);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
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
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_6_0();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t CustomIntentsDialogTemplating.doneButton()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for RFFeatureFlags.ResponseFramework();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[4];
  (*(v1 + 104))(v0[5], enum case for RFFeatureFlags.ResponseFramework._SMART(_:), v0[3]);
  v2 = RFFeatureFlags.ResponseFramework.isEnabled.getter();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_22_4();
  v5(v4);
  if (v2)
  {
    v6 = *(v0[2] + 88);
    OUTLINED_FUNCTION_18_4();
    v8 = *(v7 + class metadata base offset for RunCustomIntentCATsSimple + 120);
    OUTLINED_FUNCTION_6_17();
    v18 = (v9 + *v9);
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_57_1(v12);
    *v13 = v14;
    v13[1] = CustomIntentsDialogTemplating.doneButton();

    return v18();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = CustomIntentsDialogTemplating.doneButton();
    v17 = v0[2];

    return CustomIntentsDialogTemplating.doneButton_rfv1()();
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 40);

    v12 = *(v9 + 8);

    return v12();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v14, v15, v16);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[7];
  dispatch thunk of LabelExecutionResult.subscript.getter();
  OUTLINED_FUNCTION_71_6();

  v2 = v0[5];

  v3 = v0[1];
  v4 = OUTLINED_FUNCTION_9_3();

  return v5(v4);
}

{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_2();
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 40);

  v7 = *(v4 + 8);
  if (!v0)
  {
    OUTLINED_FUNCTION_48_2();
  }

  OUTLINED_FUNCTION_87();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t CustomIntentsDialogTemplating.doneButton_rfv1()()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v0;
  v2 = type metadata accessor for TemplatingText();
  v1[3] = v2;
  OUTLINED_FUNCTION_5_0(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for TemplatingSection();
  v1[7] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_28();
  v13 = type metadata accessor for TemplatingResult();
  v1[10] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[11] = v14;
  v16 = *(v15 + 64);
  v1[12] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17, v18, v19);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0[2] + 80);
  OUTLINED_FUNCTION_18_4();
  v3 = *(v2 + class metadata base offset for RunCustomIntentCATs + 56);
  OUTLINED_FUNCTION_2_26();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[13] = v7;
  *v7 = v8;
  v7[1] = CustomIntentsDialogTemplating.doneButton_rfv1();
  v9 = v0[12];

  return v11(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[5];
  v4 = v0[6];

  OUTLINED_FUNCTION_6_0();

  return v6();
}

void CustomIntentsDialogTemplating.doneButton_rfv1()()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  TemplatingResult.sections.getter();
  OUTLINED_FUNCTION_88_2();
  specialized Collection.first.getter(v4, v5);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v2);
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v0[6], &_s11SiriKitFlow17TemplatingSectionVSgMd, &_s11SiriKitFlow17TemplatingSectionVSgMR);
    lazy protocol witness table accessor for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError();
    swift_allocError();
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v10 = v0[12];
    v11 = v0[9];
    v13 = v0[5];
    v12 = v0[6];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v28 = v0[10];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  v29 = v0[6];
  v19 = v0[4];
  v20 = v0[5];
  v21 = v0[3];
  (*(v17 + 32))(v16);
  TemplatingSection.content.getter();
  TemplatingText.text.getter();
  v22 = *(v19 + 8);
  v23 = OUTLINED_FUNCTION_60_0();
  v24(v23);
  (*(v17 + 8))(v16, v18);
  (*(v8 + 8))(v7, v28);

  v25 = v0[1];
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X3, X16 }
}

void CustomIntentsDialogTemplating.localizedCustomUnsupportendPromptFor(app:parameterName:unsupportedReasonCode:intent:tokens:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = [v3 _codableDescription];
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_86_0();
  v11 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byName:)(v8, v9, v10);

  if (v11)
  {
    v12 = static SAAppInfoFactory.createAppInfo(app:)();
    v13 = INCodableAttribute.localizedUnsupportedDialog(unsupportedReasonCode:intent:appInfo:tokens:)(v6, v4, v12, v2);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      OUTLINED_FUNCTION_5_21();
      if (v17)
      {
        v18 = INCodableAttribute.localizedUnsupportedDialogTemplate(unsupportedReasonCode:appInfo:)(v6, v12);
        if (v19)
        {
          v20 = v18;
          v21 = v19;
          OUTLINED_FUNCTION_5_21();
          if (v22)
          {
            type metadata accessor for CATSpeakableString();
            v23 = static CATSpeakableString.getPropertiesWithWrapperInTemplateString(templateString:)(v20, v21);
            v24 = static CATSpeakableString.applyPronunciationHints(template:variablesWithWrapper:intent:intentResponse:tokens:)(v20, v21, v23, v4, 0, v2);
            v26 = v25;

            OUTLINED_FUNCTION_1_6();
            v27 = v15;
            v28 = v16;
            v29 = v24;
            v30 = v26;
LABEL_12:
            CATSpeakableString.init(_:speak:)(v27, v28, v29, v30);

            goto LABEL_13;
          }
        }

        type metadata accessor for CATSpeakableString();
        OUTLINED_FUNCTION_1_6();
        OUTLINED_FUNCTION_62_5();
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_42();
}

uint64_t CustomIntentsDialogTemplating.getAppName(app:)(uint64_t a1)
{
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  (*(v4 + 8))(a1, v3, v4);
  OUTLINED_FUNCTION_62_5();

  return SpeakableString.init(print:speak:)();
}

void CustomIntentsDialogTemplating.copyPropertiesFromIntentToResponse(intent:intentResponse:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  if (!v1)
  {
    goto LABEL_44;
  }

  v3 = v0;
  v4 = v1;
  v5 = [v3 _dictionaryRepresentation];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v3 typeName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  INIntentResponse.localizedResponseTemplate(intentName:)(v11);

  type metadata accessor for CATSpeakableString();
  OUTLINED_FUNCTION_42_9();
  v14 = static CATSpeakableString.getPropertiesInTemplateString(templateString:)(v12, v13);

  v63 = v4;
  v15 = [v4 _codableDescription];
  if (!v15)
  {

LABEL_44:
    OUTLINED_FUNCTION_42();
    return;
  }

  v16 = v15;
  v64 = v6;
  v17 = outlined bridged method (pb) of @objc INCodableDescription.attributes.getter(v15);
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = v17;
  v62 = v14;
  v61 = v2;
  v60 = v16;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = __CocoaDictionary.makeIterator()();
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v18 = v19 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v20 = v17 + 64;
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v17 + 64);
  }

  v26 = 0;
  v59 = v21;
  v27 = (v21 + 64) >> 6;
  while (1)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      v35 = __CocoaDictionary.Iterator.next()();
      if (!v35)
      {
        goto LABEL_43;
      }

      v37 = v36;
      *&v71[0] = v35;
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      swift_dynamicCast();
      v33 = v70[0];
      *&v71[0] = v37;
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr);
      swift_dynamicCast();
      v34 = v70[0];
      v30 = v26;
      v65 = v22;
      if (!v33)
      {
LABEL_43:
        OUTLINED_FUNCTION_60_0();
        outlined consume of Set<String>.Iterator._Variant();

        goto LABEL_44;
      }

      goto LABEL_21;
    }

    v28 = v26;
    v29 = v22;
    v30 = v26;
    if (!v22)
    {
      break;
    }

LABEL_17:
    v65 = (v29 - 1) & v29;
    v31 = (v30 << 9) | (8 * __clz(__rbit64(v29)));
    v32 = *(*(v18 + 56) + v31);
    v33 = *(*(v18 + 48) + v31);
    v34 = v32;
    if (!v33)
    {
      goto LABEL_43;
    }

LABEL_21:
    v38 = outlined bridged method (pb) of @objc INCodableAttribute.propertyName.getter(v34);
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      *&v68 = v38;
      *(&v68 + 1) = v39;

      AnyHashable.init<A>(_:)();
      if (!*(v64 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(v70), (v43 & 1) == 0))
      {

        outlined destroy of AnyHashable(v70);
        goto LABEL_36;
      }

      outlined init with copy of Any(*(v64 + 56) + 32 * v42, &v68);
      outlined destroy of AnyHashable(v70);
      outlined init with take of Any(&v68, v71);
      *&v68 = v40;
      *(&v68 + 1) = v41;

      AnyHashable.init<A>(_:)();
      v44 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v63);
      if (!v44)
      {
        goto LABEL_46;
      }

      v45 = v44;
      if (*(v44 + 16))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v70);
        if (v47)
        {
          outlined init with copy of Any(*(v45 + 56) + 32 * v46, &v68);
          outlined destroy of AnyHashable(v70);

          outlined destroy of String?(&v68, &_sypSgMd, &_sypSgMR);
LABEL_34:
          __swift_destroy_boxed_opaque_existential_1Tm(v71);

          goto LABEL_35;
        }
      }

      outlined destroy of AnyHashable(v70);
      v68 = 0u;
      v69 = 0u;
      v48 = outlined destroy of String?(&v68, &_sypSgMd, &_sypSgMR);
      v70[0] = v40;
      v70[1] = v41;
      __chkstk_darwin(v48);
      v58[2] = v70;
      if (!specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v58, v62))
      {
        goto LABEL_34;
      }

      *&v68 = v40;
      *(&v68 + 1) = v41;

      AnyHashable.init<A>(_:)();
      outlined init with copy of Any(v71, &v68);
      v49 = outlined bridged method (pb) of @objc INIntentResponse.propertiesByName.getter(v63);
      if (!v49)
      {
        goto LABEL_48;
      }

      v50 = v49;

      if (*(&v69 + 1))
      {
        outlined init with take of Any(&v68, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v50;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v70, isUniquelyReferenced_nonNull_native);
        outlined destroy of AnyHashable(v70);
        v22 = v65;
        if (v66)
        {
          goto LABEL_33;
        }
      }

      else
      {
        outlined destroy of String?(&v68, &_sypSgMd, &_sypSgMR);
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v70);
        if (v54)
        {
          v55 = v53;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v66 = v50;
          v57 = *(v50 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v56, v57);
          v50 = v66;
          outlined destroy of AnyHashable(*(v66 + 48) + 40 * v55);
          outlined init with take of Any((*(v50 + 56) + 32 * v55), v67);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v67, 0, 32);
        }

        v22 = v65;
        outlined destroy of String?(v67, &_sypSgMd, &_sypSgMR);
        outlined destroy of AnyHashable(v70);
        if (v50)
        {
LABEL_33:
          v52.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          goto LABEL_42;
        }
      }

      v52.super.isa = 0;
LABEL_42:
      [v63 setPropertiesByName:{v52.super.isa, v59, v60}];

      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      v26 = v30;
    }

    else
    {
LABEL_35:

LABEL_36:
      v26 = v30;
      v22 = v65;
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      goto LABEL_43;
    }

    v29 = *(v20 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t *CustomIntentsDialogTemplating.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  return v0;
}

uint64_t CustomIntentsDialogTemplating.__deallocating_deinit()
{
  CustomIntentsDialogTemplating.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DisambiguationItemProtocol.toDisplayString()()
{
  type metadata accessor for CATSpeakableString();
  v1 = v0[2];
  v2 = v0[3];
  static CATSpeakableString.stripTTSHint(print:)(*v0, v0[1], v3, v4, v5, v6, v7, v8, v18, v21, v23);
  OUTLINED_FUNCTION_71_6();
  if (v2)
  {
    static CATSpeakableString.stripTTSHint(print:)(v1, v2, v10, v11, v12, v13, v14, v15, v19, v22, v9);
    OUTLINED_FUNCTION_5_21();
    if (v16)
    {
      OUTLINED_FUNCTION_90_1();

      String.append(_:)(v20);
    }
  }

  return OUTLINED_FUNCTION_9_3();
}

{
  type metadata accessor for CATSpeakableString();
  static CATSpeakableString.stripTTSHint(print:)(*v0, v0[1], v1, v2, v3, v4, v5, v6, v17, v20, v22);
  OUTLINED_FUNCTION_71_6();
  v14 = v0[3];
  if (v14)
  {
    static CATSpeakableString.stripTTSHint(print:)(v0[2], v14, v8, v9, v10, v11, v12, v13, v18, v21, v7);
    OUTLINED_FUNCTION_5_21();
    if (v15)
    {
      OUTLINED_FUNCTION_90_1();

      String.append(_:)(v19);
    }
  }

  return OUTLINED_FUNCTION_9_3();
}

uint64_t outlined bridged method (pb) of @objc INCodableDescription.attributes.getter(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for INCodableAttribute, INCodableAttribute_ptr);
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (pb) of @objc INCodableAttribute.propertyName.getter(void *a1)
{
  v1 = [a1 propertyName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a10 + 136) = a11;
  *(a10 + 144) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a10 + 112));
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a9, a11);
  *(a10 + 56) = a2;
  outlined init with take of Output(a1, a10 + 16);
  *(a10 + 64) = a3;
  *(a10 + 72) = a4 & 1;
  *(a10 + 80) = a5;
  *(a10 + 88) = a6;
  *(a10 + 96) = a7;
  *(a10 + 104) = a8;
  return a10;
}

unint64_t lazy protocol witness table accessor for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError()
{
  result = lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError;
  if (!lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentsDialogTemplatingError and conformance CustomIntentsDialogTemplatingError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentsDialogTemplatingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x129B1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSNumber and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSNumber and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSNumber and conformance NSObject)
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNumber and conformance NSObject);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_24(uint64_t a1)
{
  result = __swift_storeEnumTagSinglePayload(v2, 0, 1, a1);
  v4 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_20_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return CustomIntentsDialogTemplating.getAppName(app:)(v2);
}

uint64_t OUTLINED_FUNCTION_37_9()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  v13 = v0[7];
}

uint64_t OUTLINED_FUNCTION_39_14(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t result)
{
  *(result + 8) = CustomIntentsDialogTemplating.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:shouldShowAppAttribution:siriEnvironment:);
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[13];
  return result;
}

unint64_t OUTLINED_FUNCTION_59_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v13 + 16) = v11;
  result = v13 + ((*(a11 + 80) + 32) & ~*(a11 + 80)) + *(a11 + 72) * v12;
  v15 = *(a11 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{

  return DeviceState.isVox.getter();
}

id OUTLINED_FUNCTION_65_5()
{
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);

  return v0;
}

__n128 *OUTLINED_FUNCTION_72_5(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6574656D61726170;
  result[2].n128_u64[1] = 0xE900000000000072;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_5()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v13 = v0[8];
  v14 = v0[7];
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v12 = *a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1)
{

  return outlined destroy of String?(a1, v1, v2);
}

void OUTLINED_FUNCTION_80_4()
{
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
}

uint64_t OUTLINED_FUNCTION_82_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return CustomIntentsDialogTemplating.getAppName(app:)(a11);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return outlined destroy of String?(v1, v0, v2);
}

void OUTLINED_FUNCTION_85_3(void *a1@<X8>)
{
  v1 = a1[11];
  v2 = a1[5];
  v3 = a1[6];
}

__n128 *OUTLINED_FUNCTION_89_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E756F63;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1, char *a2)
{

  return static LocaleUtils.getContentLocale(dialogLocale:appInfo:formatString:)(v2, v4, v3, a1, a2);
}

void OUTLINED_FUNCTION_104_0()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1)
{

  return DeviceState.asSiriKitDeviceState()(a1, v1);
}

void OUTLINED_FUNCTION_107()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_115(uint64_t a1)
{
  *(v1 + 96) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_130()
{
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
}

void OUTLINED_FUNCTION_131()
{
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
}

void OUTLINED_FUNCTION_133()
{
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
}

void OUTLINED_FUNCTION_134()
{
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[5];
  v6 = v0[2];
}

uint64_t OUTLINED_FUNCTION_136()
{
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
}

uint64_t OUTLINED_FUNCTION_138()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_140()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
}

uint64_t OUTLINED_FUNCTION_142(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_143()
{
}

Swift::String __swiftcall DisambiguationItemProtocol.getDisplayTitle()()
{
  v2 = DisambiguationItemProtocol.getDisplayTitle()(v0, v1, static CATSpeakableString.stripTTSHint(print:));
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void *specialized DisambiguationItemProtocol.getVoiceCommandPayloadsForItem()()
{
  v1 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = UsoEntityBuilder_common_VoiceCommandPayload.init()();
  type metadata accessor for CATSpeakableString();
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[5];

  static CATSpeakableString.stripTTSHint(print:)(v5, v6, v8, v9, v10, v11, v12, v13, v20, v21, v22);

  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_216010;
  *(v14 + 32) = v4;
  v23 = v7;
  v15 = *(v7 + 16);
  if (v15)
  {
    v22 = _swiftEmptyArrayStorage;

    outlined init with copy of [String](&v23, &v21);
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = v7 + 40;
    do
    {
      OUTLINED_FUNCTION_6_25();

      UsoEntityBuilder_common_VoiceCommandPayload.init()();
      OUTLINED_FUNCTION_5_22();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = v22[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += 16;
      --v15;
    }

    while (v15);
    outlined destroy of String?(&v23, &_sSaySSGMd, &_sSaySSGMR);
    v18 = v22;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v22 = v14;
  specialized Array.append<A>(contentsOf:)(v18);

  return v22;
}

uint64_t DisambiguationItemProtocol.getVoiceCommandPayloadsForItem()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsoEntityBuilder_common_VoiceCommandPayload();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = UsoEntityBuilder_common_VoiceCommandPayload.init()();
  (*(a2 + 32))(a1, a2);
  dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v7;
  v9 = *(a2 + 8);

  v9(v15, a1, a2);
  v10 = v17;
  v21 = v17;
  v20 = v15[0];

  outlined destroy of String(&v20);
  v19 = v15[1];
  outlined destroy of String?(&v19, &_sSSSgMd, &_sSSSgMR);
  v18 = v16;
  outlined destroy of String?(&v18, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  outlined destroy of String?(&v21, &_sSaySSGMd, &_sSaySSGMR);
  v11 = *(v10 + 16);
  if (v11)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = v10 + 40;
    do
    {
      OUTLINED_FUNCTION_6_25();

      UsoEntityBuilder_common_VoiceCommandPayload.init()();
      OUTLINED_FUNCTION_5_22();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  outlined destroy of String?(&v21, &_sSaySSGMd, &_sSaySSGMR);
  specialized Array.append<A>(contentsOf:)(_swiftEmptyArrayStorage);

  return v8;
}

Swift::String __swiftcall DisambiguationItemProtocol.toSpeakString()()
{
  DisambiguationItemProtocol.getDisplayTitle()(v0, v1, static CATSpeakableString.applyTTSHint(speak:));
  v4 = OUTLINED_FUNCTION_2_37();
  DisambiguationItemProtocol.getDisplaySubtitle()(v4, v5, static CATSpeakableString.applyTTSHint(speak:));
  if (v6)
  {
    OUTLINED_FUNCTION_3_30();
    if (v7)
    {
      OUTLINED_FUNCTION_90_1();

      String.append(_:)(v11);

      v2 = v12;
      v3 = v13;
    }

    else
    {
    }
  }

  v8 = v2;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t DisambiguationItemProtocol.asSpeakableString()()
{
  DisambiguationItemProtocol.toDisplayString()();
  DisambiguationItemProtocol.toSpeakString()();

  return SpeakableString.init(print:speak:)();
}

uint64_t DisambiguationItemComponent.synonyms.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

Swift::String __swiftcall DisambiguationItemProtocol.toDisplayString()()
{
  (*(v0 + 32))();
  OUTLINED_FUNCTION_2_37();
  if (DisambiguationItemProtocol.getDisplaySubtitle()().value._object)
  {
    OUTLINED_FUNCTION_3_30();
    if (v3)
    {
      OUTLINED_FUNCTION_90_1();

      String.append(_:)(v7);

      v1 = v8;
      v2 = v9;
    }

    else
    {
    }
  }

  v4 = v1;
  v5 = v2;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall DisambiguationItemProtocol.getDisplaySubtitle()()
{
  v2 = DisambiguationItemProtocol.getDisplaySubtitle()(v0, v1, static CATSpeakableString.stripTTSHint(print:));
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t DisambiguationItemProtocol.getDisplayTitle()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for CATSpeakableString();
  (*(a2 + 8))(v9, a1, a2);
  v6 = v9[0];
  v7 = v9[1];
  v15 = v10;
  outlined destroy of String?(&v15, &_sSSSgMd, &_sSSSgMR);
  v14 = v11;
  outlined destroy of String?(&v14, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v13 = v12;
  outlined destroy of String?(&v13, &_sSaySSGMd, &_sSaySSGMR);
  a3(v6, v7);

  return OUTLINED_FUNCTION_22();
}

uint64_t DisambiguationItemProtocol.getDisplaySubtitle()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(&v7);
  v4 = v8;
  v5 = v9;
  v14 = v7;
  outlined destroy of String(&v14);
  v13 = v10;
  outlined destroy of String?(&v13, &_sSo7INImageCSgMd, &_sSo7INImageCSgMR);
  v12 = v11;
  outlined destroy of String?(&v12, &_sSaySSGMd, &_sSaySSGMR);
  if (v5)
  {
    type metadata accessor for CATSpeakableString();
    a3(v4, v5);
  }

  return OUTLINED_FUNCTION_22();
}

uint64_t outlined init with copy of [String](uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_0_27()
{
  v2 = *v0;
  v3 = v0[1];
  result = v0[2];
  v4 = *(v0 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_22()
{

  return dispatch thunk of UsoEntityBuilder_common_VoiceCommandPayload.setStringValue(value:)();
}

uint64_t OUTLINED_FUNCTION_6_25()
{
  v3 = *(v1 - 1);
  v4 = *v1;
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:), 0, 0);
}

uint64_t CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *(v0[5] + 16);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = DeviceState.asSiriKitDeviceState()(v6, v7);
  v0[10] = v8;

  SpeakableString.init(print:speak:)();
  v9 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v9);
  v10 = *(*v5 + class metadata base offset for RunVoiceCommandCATs + 112);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  v13 = v0[9];
  v14 = v0[6];

  return v16(v13, v8, v14);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 96) = v0;

  outlined destroy of SpeakableString?(v4);

  if (v0)
  {
    v5 = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  }

  else
  {
    v5 = CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = TemplatingResult.print.getter();
  (*(v2 + 8))(v1, v3);
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7(v4);
}

{
  v1 = v0[12];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4(&outlined read-only object #0 of CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:));
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModeInfoProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ModeInfoProvider.init()();
  return v0;
}

id ModeInfoProvider.init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_3();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.background.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  objc_allocWithZone(AFNotifyObserver);
  v11 = v10;
  result = @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(0xD000000000000021, 0x80000000002338D0, 1, v10, 0);
  if (result)
  {
    v13 = result;

    result = v14;
    v14[2] = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

id @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
}

id static LNSnippetEnvironment.make(size:)(double a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = objc_allocWithZone(LNSnippetEnvironment);
  return @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v7, -1, -1, -1, -1, -1, -1, 0, a1, a2, 1.0, 0, 0, 0);
}

id static LNSnippetEnvironment.make(from:localeIdentifier:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = [a1 estimatedVisibleSnippetDisplaySize];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 width];
  v9 = [v7 height];

  Locale.init(identifier:)();
  v10 = type metadata accessor for Locale();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  v11 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_dynamicTypeSize);
  v37 = static LNSnippetEnvironmentDynamicTypeSize.make(from:)(v11, v12);

  v13 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_textLegibilityWeight);
  v36 = static LNSnippetEnvironmentLegibilityWeight.make(from:)(v13, v14);

  v15 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_textDirection);
  v17 = static LNSnippetEnvironmentLayoutDirection.make(from:)(v15, v16);

  v18 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayColorScheme);
  v20 = static LNSnippetEnvironmentColorScheme.make(from:)(v18, v19);

  v21 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayContrast);
  v23 = static LNSnippetEnvironmentColorSchemeContrast.make(from:)(v21, v22);

  [v7 scale];
  v25 = v24;
  v26 = outlined bridged method (pb) of @objc INIntent.identifier.getter(a1, &selRef_displayGamut);
  v28 = static LNSnippetEnvironmentDisplayGamut.make(from:)(v26, v27);

  v29 = [a1 accessibilityDifferentiateWithoutColor];
  v30 = [a1 accessibilityInvertColors];
  v31 = [a1 accessibilityReduceMotion];
  v32 = [a1 accessibilityReduceTransparency];
  v33 = objc_allocWithZone(LNSnippetEnvironment);
  v34 = @nonobjc LNSnippetEnvironment.init(size:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:)(v5, v37, v36, v17, v20, v23, v28, v29, v8, v9, v25, v30, v31, v32);

  return v34;
}

uint64_t static LNSnippetEnvironmentDynamicTypeSize.make(from:)(uint64_t a1, uint64_t a2)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v5 == a1 && v6 == a2)
    {
LABEL_124:

      return -1;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return -1;
    }
  }

  else
  {
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v8 == a1 && v9 == a2)
    {

      return 1;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 1;
    }
  }

  else
  {
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v11 == a1 && v12 == a2)
    {

      return 2;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 2;
    }
  }

  else
  {
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v15 == a1 && v16 == a2)
    {

      return 0;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 0;
    }
  }

  else
  {
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v18 == a1 && v19 == a2)
    {

      return 3;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 3;
    }
  }

  else
  {
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v21 == a1 && v22 == a2)
    {

      return 4;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 4;
    }
  }

  else
  {
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v24 == a1 && v25 == a2)
    {

      return 5;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 5;
    }
  }

  else
  {
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v27 == a1 && v28 == a2)
    {

      return 6;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 6;
    }
  }

  else
  {
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v30 == a1 && v31 == a2)
    {

      return 7;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 7;
    }
  }

  else
  {
  }

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v33 == a1 && v34 == a2)
    {

      return 8;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 8;
    }
  }

  else
  {
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v36 == a1 && v37 == a2)
    {

      return 9;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 9;
    }
  }

  else
  {
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v39 == a1 && v40 == a2)
    {

      return 10;
    }

    OUTLINED_FUNCTION_0_28();
    OUTLINED_FUNCTION_1_41();
    if (v2)
    {
      return 10;
    }
  }

  else
  {
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_124;
  }

  if (v42 != a1 || v43 != a2)
  {
    v45 = OUTLINED_FUNCTION_0_28();

    if (v45)
    {
      return 11;
    }

    return -1;
  }

  return 11;
}

uint64_t static LNSnippetEnvironmentLegibilityWeight.make(from:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v10 == a1 && v11 == a2)
    {
LABEL_27:

      return -1;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return -1;
    }
  }

  else
  {
  }

  v14 = *a4;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    if (v15 == a1 && v16 == a2)
    {

      return 0;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      return 0;
    }
  }

  else
  {
  }

  v19 = *a5;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!a2)
  {
    goto LABEL_27;
  }

  if (v20 != a1 || v21 != a2)
  {
    v23 = OUTLINED_FUNCTION_0_28();

    if (v23)
    {
      return 1;
    }

    return -1;
  }

  return 1;
}
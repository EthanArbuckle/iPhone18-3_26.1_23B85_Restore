uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.getter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t SearchCallHistoryBinaryButtonModel.secondaryAction.setter()
{
  v0 = *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*SearchCallHistoryBinaryButtonModel.secondaryAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_4_76(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchCallHistoryBinaryButtonModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchCallHistoryBinaryButtonModel() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void SearchCallHistoryBinaryButtonModel.init(primaryText:primaryAction:secondaryText:secondaryAction:)(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v5 = (a2 + v4[8]);
  *v5 = 0xD000000000000021;
  v5[1] = 0x8000000000456CA0;
  Loggable.init(wrappedValue:)();
  v6 = v4[5];
  type metadata accessor for SABaseClientBoundCommand();
  v7 = a1;
  CodableAceObject.init(wrappedValue:)();
  v8 = v4[6];
  Loggable.init(wrappedValue:)();
  v9 = a2 + v4[7];
  CodableAceObject.init(wrappedValue:)();
}

uint64_t SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x547972616D697270 && a2 == 0xEB00000000747865;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E6F636573 && a2 == 0xED00007478655479;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F6974634179;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
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

uint64_t SearchCallHistoryBinaryButtonModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x417972616D697270;
      break;
    case 2:
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchCallHistoryBinaryButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchCallHistoryBinaryButtonModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchCallHistoryBinaryButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SearchCallHistoryBinaryButtonModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v26 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  OUTLINED_FUNCTION_5_3();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v28 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
    v14 = v28[5];
    v32 = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    v16 = lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>);
    v17 = v3;
    v18 = v16;
    v27 = v17;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26[0] = v18;
    v26[1] = v15;
    v19 = v27;
    v20 = v28[6];
    v31 = 2;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = v28[7];
    v30 = 3;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = (v19 + v28[8]);
    v23 = *v22;
    v24 = v22[1];
    v29 = 4;
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys);
  }

  return result;
}

uint64_t SearchCallHistoryBinaryButtonModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
  v3 = OUTLINED_FUNCTION_7(v66);
  v61 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v11 = OUTLINED_FUNCTION_7(v10);
  v62 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = &v52 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin06SearchE24HistoryBinaryButtonModelV10CodingKeys33_6699B77160E9E8CEC219BB3B249C7119LLOGMR);
  v19 = OUTLINED_FUNCTION_7(v68);
  v65 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v52 - v23;
  v25 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel.CodingKeys and conformance SearchCallHistoryBinaryButtonModel.CodingKeys();
  v67 = v24;
  v30 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v63;
  v57 = v16;
  v58 = v25;
  v32 = v28;
  v69 = a1;
  v33 = v66;
  v74 = 0;
  v34 = _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>);
  v35 = v64;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = v34;
  v36 = v10;
  v37 = *(v62 + 32);
  v56 = v32;
  v37(v32, v35, v36);
  v73 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>);
  v38 = v31;
  v39 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v55 = v36;
  v53 = v37;
  v40 = (v61 + 32);
  v41 = *(v61 + 32);
  v41(v56 + v58[5], v38, v39);
  v72 = 2;
  v42 = v57;
  v64 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v54 = v41;
  v63 = v40;
  v53(v56 + v58[6], v42, v36);
  v71 = 3;
  v43 = v60;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v39;
  v45 = v65;
  v46 = v56;
  v54(v56 + v58[7], v43, v44);
  v70 = 4;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v48;
  v50 = (v46 + v58[8]);
  (*(v45 + 8))(v67, v68);
  *v50 = v47;
  v50[1] = v49;
  outlined init with copy of SearchCallHistoryBinaryButtonModel(v46, v59);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return outlined destroy of SearchCallHistoryBinaryButtonModel(v46);
}

uint64_t _s10SnippetKit8LoggableVySSGACyxGSEAASeRzSERzlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SABaseClientBoundCommand> and conformance CodableAceObject<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMd, &_s10SnippetKit16CodableAceObjectVySo24SABaseClientBoundCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SearchCallHistoryBinaryButtonModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  v2 = type metadata accessor for SearchCallHistoryBinaryButtonModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SearchCallHistoryBinaryButtonModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(&lazy protocol witness table cache variable for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SearchCallHistoryBinaryButtonModel and conformance SearchCallHistoryBinaryButtonModel(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchCallHistoryBinaryButtonModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryBinaryButtonModel()
{
  type metadata accessor for Loggable<String>();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for CodableAceObject<SABaseClientBoundCommand>();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata accessor for CodableAceObject<SABaseClientBoundCommand>()
{
  if (!lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>)
  {
    type metadata accessor for SABaseClientBoundCommand();
    v0 = type metadata accessor for CodableAceObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableAceObject<SABaseClientBoundCommand>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryBinaryButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *static SearchCallHistoryCatParameterHelper.getFormattedContactsAsList(app:intent:intentResponse:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  if (!App.isFirstParty()())
  {
    v15 = [a2 recipient];
    if (v15)
    {
      v16 = v15;
      type metadata accessor for PhonePerson(0);
      v17 = v16;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_17_44();
      v21 = static PhonePerson.make(phonePerson:options:locale:)(v18, v19, v20);

      (*(v8 + 8))(v13, v5);
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_426260;
        *(v22 + 32) = v21;

        return v22;
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(a2, a3);
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(intent:recipients:)(void *a1, uint64_t a2)
{
  v54 = a2;
  v57 = type metadata accessor for SpeakableString();
  v3 = OUTLINED_FUNCTION_7(v57);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v53 - v15;
  v56 = a1;
  [a1 callTypes];
  OUTLINED_FUNCTION_19_6();
  v17 = swift_allocObject();
  *(v17 + 16) = _swiftEmptyArrayStorage;
  v18 = (v17 + 16);
  OUTLINED_FUNCTION_1_105(v17);
  v60 = 1107296256;
  OUTLINED_FUNCTION_4_77();
  v61 = v19;
  v62 = &block_descriptor_8;
  v20 = _Block_copy(&aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v20);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v21 = *v18;

  v22 = *(v21 + 16);
  v55 = v16;
  if (v22)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v23 = aBlock;
    v53 = v21;
    v24 = (v21 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v23;
      v28 = v23[2];
      v27 = v23[3];
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_76(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = aBlock;
      }

      v23[2] = v28 + 1;
      v29 = *(v5 + 80);
      OUTLINED_FUNCTION_19_1();
      (*(v5 + 32))(v23 + v30 + *(v5 + 72) * v28, v12, v57);
      v24 += 2;
      --v22;
    }

    while (v22);

    v16 = v55;
    v31 = v56;
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
    v31 = v56;
  }

  if (![v31 preferredCallProvider])
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_19;
  }

  v32 = INPreferredCallProviderGetBackingType();
  switch(v32)
  {
    case 4:
      v33 = @"THIRD_PARTY_PROVIDER";
      break;
    case 3:
      v33 = @"FACETIME_PROVIDER";
      break;
    case 2:
      v33 = @"TELEPHONY_PROVIDER";
      break;
    default:
      v33 = [NSString stringWithFormat:@"(unknown: %i)", v32];
      goto LABEL_18;
  }

  v34 = v33;
LABEL_18:
  v35 = v33;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v57);
  [v31 callCapabilities];
  OUTLINED_FUNCTION_19_6();
  v36 = swift_allocObject();
  *(v36 + 16) = _swiftEmptyArrayStorage;
  v37 = (v36 + 16);
  OUTLINED_FUNCTION_1_105(v36);
  v60 = 1107296256;
  OUTLINED_FUNCTION_3_96();
  v61 = v38;
  v62 = &block_descriptor_4_0;
  v39 = _Block_copy(&aBlock);

  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v39);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v40 = *v37;

  v41 = *(v40 + 16);
  if (v41)
  {
    v58 = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v42 = v58;
    v53 = v40;
    v43 = (v40 + 40);
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43;

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      v58 = v42;
      v47 = v42[2];
      v46 = v42[3];
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_76(v46);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v42 = v58;
      }

      v42[2] = v47 + 1;
      v48 = *(v5 + 80);
      OUTLINED_FUNCTION_19_1();
      (*(v5 + 32))(v42 + v49 + *(v5 + 72) * v47, v10, v57);
      v43 += 2;
      --v41;
    }

    while (v41);

    v50 = v55;
    v31 = v56;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
    v50 = v16;
  }

  v51 = PhoneSearchCallHistoryIntent.__allocating_init(callTypes:preferredCallProvider:callCapabilities:recipient:)(v23, v50, v42, v54);

  return v51;
}

uint64_t PhoneSearchCallHistoryIntent.__allocating_init(intent:)(id a1)
{
  v73 = type metadata accessor for Locale();
  v2 = OUTLINED_FUNCTION_7(v73);
  v69 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v72 = v7 - v6;
  v75 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_7(v75);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v19 = *(*(v18 - 8) + 64);
  *&v20 = __chkstk_darwin(v18 - 8).n128_u64[0];
  v70 = &v68 - v21;
  [a1 callTypes];
  OUTLINED_FUNCTION_19_6();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyArrayStorage;
  v23 = (v22 + 16);
  OUTLINED_FUNCTION_2_102(v22);
  v78 = 1107296256;
  OUTLINED_FUNCTION_4_77();
  v79 = v24;
  v80 = &block_descriptor_9_0;
  v25 = _Block_copy(&aBlock);

  INCallRecordTypeOptionsEnumerateBackingTypes();
  _Block_release(v25);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v26 = *v23;

  v27 = v26[2];
  v71 = a1;
  v74 = _swiftEmptyArrayStorage;
  if (v27)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v28 = aBlock;
    OUTLINED_FUNCTION_21_39();
    do
    {
      v29 = *(v26 - 1);
      v30 = *v26;

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v28;
      v32 = v28[2];
      v31 = v28[3];
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_76(v31);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v28 = aBlock;
      }

      v28[2] = v32 + 1;
      v33 = *(v10 + 80);
      OUTLINED_FUNCTION_19_1();
      (*(v10 + 32))(v28 + v34 + *(v10 + 72) * v32, v17, v75);
      v26 += 2;
      --v27;
    }

    while (v27);

    a1 = v71;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  if (![a1 preferredCallProvider])
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_19;
  }

  v35 = INPreferredCallProviderGetBackingType();
  if (v35 == 4)
  {
    v36 = @"THIRD_PARTY_PROVIDER";
  }

  else
  {
    if (v35 != 3)
    {
      if (v35 == 2)
      {
        v36 = @"TELEPHONY_PROVIDER";
        v37 = @"TELEPHONY_PROVIDER";
      }

      else
      {
        v36 = [NSString stringWithFormat:@"(unknown: %i)", v35];
      }

      goto LABEL_18;
    }

    v36 = @"FACETIME_PROVIDER";
  }

  v38 = v36;
LABEL_18:
  v39 = v36;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_19:
  v40 = v70;
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v75);
  [a1 callCapabilities];
  OUTLINED_FUNCTION_19_6();
  v41 = swift_allocObject();
  *(v41 + 16) = _swiftEmptyArrayStorage;
  v42 = (v41 + 16);
  OUTLINED_FUNCTION_2_102(v41);
  v78 = 1107296256;
  OUTLINED_FUNCTION_3_96();
  v79 = v43;
  v80 = &block_descriptor_14;
  v44 = _Block_copy(&aBlock);

  INCallCapabilityOptionsEnumerateBackingTypes();
  _Block_release(v44);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  v45 = *v42;

  v46 = v45[2];
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_11_54();
    v47 = aBlock;
    OUTLINED_FUNCTION_21_39();
    do
    {
      v48 = *(v45 - 1);
      v49 = *v45;

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      aBlock = v47;
      v51 = v47[2];
      v50 = v47[3];
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_76(v50);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v47 = aBlock;
      }

      v47[2] = v51 + 1;
      v52 = *(v10 + 80);
      OUTLINED_FUNCTION_19_1();
      (*(v10 + 32))(v47 + v53 + *(v10 + 72) * v51, v14, v75);
      v45 += 2;
      --v46;
    }

    while (v46);

    a1 = v71;
  }

  else
  {

    v47 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8INPersonCSgGMd, &_ss23_ContiguousArrayStorageCySo8INPersonCSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  v55 = [a1 recipient];
  v75 = inited;
  v76 = _swiftEmptyArrayStorage;
  *(inited + 32) = v55;
  v56 = (v69 + 8);
  v57 = *(v75 + 32);
  type metadata accessor for PhonePerson(0);
  v58 = v57;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&aBlock, v80);
  v59 = v72;
  dispatch thunk of DeviceState.siriLocale.getter();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  OUTLINED_FUNCTION_17_44();
  v63 = static PhonePerson.make(phonePerson:options:locale:)(v60, v61, v62);

  (*v56)(v59, v73);
  if (v63)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v64 = *(&dword_18 + (v76 & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (v76 & 0xFFFFFFFFFFFFFF8)) >= v64 >> 1)
    {
      OUTLINED_FUNCTION_76(v64);
      OUTLINED_FUNCTION_22_29();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v74 = v76;
  }

  type metadata accessor for PhonePersonList();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v65 = PhonePersonList.__allocating_init(list:)(v74);
  v66 = PhoneSearchCallHistoryIntent.__allocating_init(callTypes:preferredCallProvider:callCapabilities:recipient:)(v28, v70, v47, v65);

  return v66;
}

void *static SearchCallHistoryCatParameterHelper.makePhonePersons1P(intent:intentResponse:)(void *a1, uint64_t a2)
{
  v127 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7(v127);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v126 = v11 - v10;
  v12 = [a1 recipient];
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v117 = v12;
  v14 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v12);
  if (!v14)
  {
LABEL_40:
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_41:
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Logger.siriPhone);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_19_9(v47))
      {
        v48 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_53_0(v48);
        OUTLINED_FUNCTION_6_75(&dword_0, v49, v50, "Formatting contacts with no siriMatches");
        OUTLINED_FUNCTION_4_5();
      }

      type metadata accessor for PhonePerson(0);
      v51 = v117;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v129, v130);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v129);
      OUTLINED_FUNCTION_17_44();
      v55 = static PhonePerson.make(phonePerson:options:locale:)(v52, v53, v54);

      (*(v7 + 8))(v2, v127);
      if (v55)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v13 = swift_allocObject();
        *(v13 + 1) = xmmword_426260;
        v13[4] = v55;
      }

      return v13;
    }

LABEL_122:
    OUTLINED_FUNCTION_6_2();
    goto LABEL_41;
  }

  v15 = v14;
  v128 = specialized Array.count.getter(v14);
  if (!v128)
  {

    goto LABEL_40;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.siriPhone);
  v2 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v17))
  {
    v18 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_53_0(v18);
    _os_log_impl(&dword_0, v2, v17, "Formatting contacts with multiple siriMatches", &dword_54B000, 2u);
    OUTLINED_FUNCTION_4_5();
  }

  v125 = v15;
  if (!a2 || (v19 = outlined bridged method (pb) of @objc INSearchCallHistoryIntentResponse.callRecords.getter(a2)) == 0)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v34))
    {
      v35 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v35);
      OUTLINED_FUNCTION_6_75(&dword_0, v36, v37, "No callRecords found. Dialoguing about all SiriMatches without filtering.");
      OUTLINED_FUNCTION_4_5();
    }

    v38 = 0;
    v132 = _swiftEmptyArrayStorage;
    v120 = _swiftEmptyArrayStorage;
    v123 = v15 & 0xC000000000000001;
    v39 = v15 & 0xFFFFFFFFFFFFFF8;
    v13 = (v7 + 8);
    while (1)
    {
      if (v128 == v38)
      {

        return v120;
      }

      if (v123)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *(v39 + 16))
        {
          goto LABEL_111;
        }

        v40 = *(v15 + 8 * v38 + 32);
      }

      v41 = v40;
      v2 = (&v38->isa + 1);
      if (__OFADD__(v38, 1))
      {
        break;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v7 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v129);
      v42 = static PhonePerson.make(phonePerson:options:locale:)(v41, 0, v126);

      v15 = v125;
      (*v13)(v126, v127);
      v38 = (v38 + 1);
      if (v42)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v44)
        {
          OUTLINED_FUNCTION_76(v43);
          OUTLINED_FUNCTION_22_29();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v120 = v132;
        v38 = v2;
      }
    }

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
    goto LABEL_122;
  }

  v20 = v19;
  v116 = v7;
  v21 = specialized Array.count.getter(v19);
  v7 = 0;
  v122 = _swiftEmptyArrayStorage;
  while (v21 != v7)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_113;
      }

      v22 = *(v20 + 8 * v7 + 32);
    }

    v23 = v22;
    v2 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_112;
    }

    v24 = [v22 caller];
    if (v24)
    {
      v25 = outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(v24);
      v13 = v26;

      if (!v13)
      {
        goto LABEL_24;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = v122[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v122 = v31;
      }

      v28 = v122[2];
      v27 = v122[3];
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_76(v27);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v122 = v32;
      }

      v122[2] = v28 + 1;
      v29 = &v122[2 * v28];
      v29[4] = v25;
      v29[5] = v13;
      v7 = v2;
    }

    else
    {

LABEL_24:
      ++v7;
    }
  }

  v56 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v122);
  v57 = 0;
  v132 = _swiftEmptyArrayStorage;
  v2 = (v15 & 0xC000000000000001);
  v121 = v15 & 0xFFFFFFFFFFFFFF8;
  v58 = v15 + 32;
LABEL_48:
  while (v57 != v128)
  {
    if (v2)
    {
      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v57 >= *(v121 + 16))
      {
        goto LABEL_115;
      }

      v59 = *(v58 + 8 * v57);
    }

    v7 = v59;
    if (__OFADD__(v57++, 1))
    {
      goto LABEL_114;
    }

    v61 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v59);
    if (v62)
    {
      v13 = v62;
      if (*(v56 + 16))
      {
        v63 = v61;
        v64 = *(v56 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v65 = Hasher._finalize()();
        v66 = ~(-1 << *(v56 + 32));
        while (1)
        {
          v67 = v65 & v66;
          if (((*(v56 + 56 + (((v65 & v66) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v65 & v66)) & 1) == 0)
          {
            break;
          }

          v68 = (*(v56 + 48) + 16 * v67);
          if (*v68 != v63 || v13 != v68[1])
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v65 = v67 + 1;
            if ((v70 & 1) == 0)
            {
              continue;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v71 = *(v132 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_48;
        }
      }
    }
  }

  v118 = v2;
  v7 = v132;
  v124 = specialized Array.count.getter(v132);
  v72 = 0;
  v119 = v132 & 0xC000000000000001;
  v13 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  while (v124 != v72)
  {
    if (v119)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v72 >= *(v7 + 16))
      {
        goto LABEL_117;
      }

      v74 = *(v7 + 8 * v72 + 32);
    }

    v75 = v74;
    v2 = (&v72->isa + 1);
    if (__OFADD__(v72, 1))
    {
      goto LABEL_116;
    }

    v76 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v74);
    v78 = v77;

    v72 = (v72 + 1);
    if (v78)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v73[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v73 = v83;
      }

      v80 = v73[2];
      v79 = v73[3];
      if (v80 >= v79 >> 1)
      {
        OUTLINED_FUNCTION_76(v79);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v73 = v84;
      }

      v73[2] = v80 + 1;
      v81 = &v73[2 * v80];
      v81[4] = v76;
      v81[5] = v78;
      v72 = v2;
    }
  }

  v85 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v73);
  v86 = *(v56 + 16);

  v2 = *(v85 + 16);

  if (v86 == v2)
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v88))
    {
      v89 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v89);
      OUTLINED_FUNCTION_6_75(&dword_0, v90, v91, "Filtering for contacts with matching call records.");
      OUTLINED_FUNCTION_4_5();
    }

    v92 = 0;
    v120 = _swiftEmptyArrayStorage;
    v132 = _swiftEmptyArrayStorage;
    while (v124 != v92)
    {
      if (v119)
      {
        v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v92 >= *(v7 + 16))
        {
          goto LABEL_120;
        }

        v93 = *(v7 + 8 * v92 + 32);
      }

      v94 = v93;
      v13 = (v92 + 1);
      if (__OFADD__(v92, 1))
      {
        goto LABEL_118;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v129, v130);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v129);
      OUTLINED_FUNCTION_17_44();
      v98 = static PhonePerson.make(phonePerson:options:locale:)(v95, v96, v97);

      (*(v116 + 8))(v2, v127);
      ++v92;
      if (v98)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v44)
        {
          OUTLINED_FUNCTION_76(v99);
          OUTLINED_FUNCTION_22_29();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v120 = v132;
        v92 = v13;
      }
    }

    return v120;
  }

  else
  {

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_19_9(v101))
    {
      v102 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_53_0(v102);
      OUTLINED_FUNCTION_6_75(&dword_0, v103, v104, "Not all callRecord identifiers matched. Dialoguing about all SiriMatches without filtering.");
      OUTLINED_FUNCTION_4_5();
    }

    v105 = 0;
    v132 = _swiftEmptyArrayStorage;
    v106 = v118;
    while (v128 != v105)
    {
      if (v106)
      {
        v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v105 >= *(v121 + 16))
        {
          goto LABEL_121;
        }

        v107 = *(v125 + 8 * v105 + 32);
      }

      v108 = v107;
      v109 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_119;
      }

      type metadata accessor for PhonePerson(0);
      static Device.current.getter();
      v7 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      OUTLINED_FUNCTION_13_53();
      dispatch thunk of DeviceState.siriLocale.getter();
      __swift_destroy_boxed_opaque_existential_1(v129);
      OUTLINED_FUNCTION_17_44();
      v113 = static PhonePerson.make(phonePerson:options:locale:)(v110, v111, v112);

      v106 = v118;
      (*(v116 + 8))(v2, v127);
      ++v105;
      if (v113)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        OUTLINED_FUNCTION_8_65();
        if (v44)
        {
          OUTLINED_FUNCTION_76(v114);
          OUTLINED_FUNCTION_22_29();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v132;
        v105 = v109;
      }
    }
  }

  return v13;
}

uint64_t outlined bridged method (ob) of @objc INPerson.contactIdentifier.getter(void *a1)
{
  v2 = [a1 contactIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional __swiftcall SearchCallHistoryCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchCallHistoryCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t SearchCallHistoryCATPatternsIdentifiers.rawValue.getter(char a1)
{
  result = 0xD00000000000002CLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ALL;
      break;
    case 2:
    case 3:
      result = 0xD000000000000029;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000034;
      break;
    case 8:
      result = 0xD00000000000002BLL;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void SearchCallHistoryReadCannotFindCallRecordParameters.callRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 20));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.getter()
{
  return SearchCallHistoryReadCannotFindCallRecordParameters.device.getter();
}

{
  v1 = OUTLINED_FUNCTION_76_8();
  v3 = *(v0 + *(v2(v1) + 24));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.setter()
{
  return SearchCallHistoryReadCannotFindCallRecordParameters.device.setter();
}

{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(0) + 28));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadCannotFindCallRecordParameters.totalCallRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 40));
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v0) + 40);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindCallRecordParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_431D00;
  OUTLINED_FUNCTION_35_23();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v11, v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v6);
  if (v15)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v7 + 72) = v14;
    __swift_allocate_boxed_opaque_existential_1((v7 + 48));
    OUTLINED_FUNCTION_2_9();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_80_8();
    v18();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  v20 = OUTLINED_FUNCTION_78_10(v19);
  v21 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v20);
  OUTLINED_FUNCTION_64_14(v21[5]);
  if (v23)
  {
    v24 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
    v25 = 0;
  }

  else
  {
    v25 = *v22;
    v24 = &type metadata for Double;
  }

  *(v7 + 96) = v25;
  *(v7 + 120) = v24;
  *(v7 + 128) = 0x656369766564;
  *(v7 + 136) = 0xE600000000000000;
  v26 = *(v0 + v21[6]);
  if (v26)
  {
    type metadata accessor for SirikitDeviceState();
    v27 = v26;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
  }

  *(v7 + 144) = v27;
  OUTLINED_FUNCTION_14_8();
  *(v7 + 168) = v28;
  *(v7 + 176) = v29;
  *(v7 + 184) = 0xE600000000000000;
  v30 = *(v0 + v21[7]);
  if (v30)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v31 = v30;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v31;
  OUTLINED_FUNCTION_57_21();
  *(v7 + 216) = v33;
  *(v7 + 224) = v32 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v7 + 232) = v34;
  *(v7 + 240) = *(v0 + v21[8]);
  OUTLINED_FUNCTION_27_2();
  *(v7 + 264) = v35;
  *(v7 + 272) = 0xD000000000000013;
  *(v7 + 280) = v36;
  *(v7 + 288) = *(v0 + v21[9]);
  OUTLINED_FUNCTION_27_2();
  *(v7 + 312) = v38;
  *(v7 + 320) = v37 + 1;
  *(v7 + 328) = v39;
  OUTLINED_FUNCTION_64_14(v21[10]);
  if (v41)
  {
    v42 = 0;
    *(v7 + 344) = 0;
    *(v7 + 352) = 0;
    v43 = 0;
  }

  else
  {
    v43 = *v40;
    v42 = &type metadata for Double;
  }

  *(v7 + 336) = v43;
  *(v7 + 360) = v42;

  return OUTLINED_FUNCTION_96_4();
}

void SearchCallHistoryReadCannotFindCallRecordParameters.init(appName:callRecordCount:device:intent:isFirstPartyApp:isShowingMissedCall:totalCallRecordCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_66();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  outlined init with take of SpeakableString?(v37, v35);
  v38 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(0);
  v39 = v36 + v38[5];
  *v39 = v34;
  *(v39 + 8) = v32 & 1;
  *(v36 + v38[6]) = v30;
  *(v36 + v38[7]) = v28;
  *(v36 + v38[8]) = v26;
  *(v36 + v38[9]) = v24;
  v40 = v36 + v38[10];
  *v40 = v22;
  *(v40 + 8) = a21 & 1;
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.newRecordsCount.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.newRecordsCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.savedRecordsCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void SearchCallHistoryReadCannotFindVoicemailParameters.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.init(intent:newRecordsCount:savedRecordsCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.appName.getter();
}

{
  v0 = OUTLINED_FUNCTION_29_7();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v2 + 20));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.setter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.appName.setter();
}

{
  v0 = OUTLINED_FUNCTION_2_4();
  v2 = *(v1(v0) + 20);
  v3 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v3, v4);
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.appName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_57_16(*(v2 + 24));
}

void SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.setter()
{
  SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.setter();
}

{
  v0 = OUTLINED_FUNCTION_12_57();
  v2 = v1(v0);
  OUTLINED_FUNCTION_10_13(*(v2 + 24));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecords.getter()
{
  return SearchCallHistoryReadMultipleCallRecordsParameters.callRecords.getter();
}

{
  v1 = OUTLINED_FUNCTION_76_8();
  v3 = *(v0 + *(v2(v1) + 28));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem1.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 32));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem2.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 36));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem3.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 40));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.callRecordsItem4.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 44));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 48));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v2) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 48);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0) + 52));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v2) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 52);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.totalCallRecordCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 80));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 80);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.windowSize.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 84));
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.windowSize.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v0) + 84);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleCallRecordsParameters.asKeyValuePairs()()
{
  OUTLINED_FUNCTION_66();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = v70 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v11, xmmword_4441C0);
  OUTLINED_FUNCTION_143_0();
  outlined init with copy of SpeakableString?(v12, v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v10);
  if (v16)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v11 + 72) = v15;
    __swift_allocate_boxed_opaque_existential_1((v11 + 48));
    OUTLINED_FUNCTION_40(v15);
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_143_0();
    v19();
  }

  OUTLINED_FUNCTION_35_23();
  v21 = OUTLINED_FUNCTION_78_10(v20);
  v22 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(v21);
  outlined init with copy of SpeakableString?(v0 + v22[5], v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v7);
  if (v16)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v15;
    __swift_allocate_boxed_opaque_existential_1((v11 + 96));
    OUTLINED_FUNCTION_40(v15);
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_40_4();
    v25();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_87_6(v26);
  if (v29)
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
    v30 = 0.0;
  }

  else
  {
    v30 = *v28;
  }

  OUTLINED_FUNCTION_63_14(v27, v30);
  v32 = *(v0 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v70[1] = v32;
  *(v11 + 192) = v32;
  OUTLINED_FUNCTION_27_2();
  *(v11 + 216) = v33;
  *(v11 + 224) = 0xD000000000000010;
  *(v11 + 232) = v34;
  *(v11 + 240) = *(v0 + v22[8]);
  OUTLINED_FUNCTION_27_2();
  *(v11 + 264) = v35;
  *(v11 + 272) = 0xD000000000000010;
  *(v11 + 280) = v36;
  *(v11 + 288) = *(v0 + v22[9]);
  OUTLINED_FUNCTION_27_2();
  *(v11 + 312) = v37;
  *(v11 + 320) = 0xD000000000000010;
  *(v11 + 328) = v38;
  *(v11 + 336) = *(v0 + v22[10]);
  OUTLINED_FUNCTION_27_2();
  *(v11 + 360) = v39;
  *(v11 + 368) = 0xD000000000000010;
  *(v11 + 376) = v40;
  *(v11 + 384) = *(v0 + v22[11]);
  *(v11 + 408) = v39;
  *(v11 + 416) = 0x656369766564;
  *(v11 + 424) = 0xE600000000000000;
  v41 = *(v0 + v22[12]);
  if (v41)
  {
    type metadata accessor for SirikitDeviceState();
    v42 = v41;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v11 + 440) = 0;
    *(v11 + 448) = 0;
  }

  *(v11 + 432) = v42;
  OUTLINED_FUNCTION_14_8();
  *(v11 + 456) = v43;
  *(v11 + 464) = v44;
  *(v11 + 472) = 0xE600000000000000;
  v45 = *(v0 + v22[13]);
  if (v45)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v46 = v45;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v11 + 488) = 0;
    *(v11 + 496) = 0;
  }

  *(v11 + 480) = v46;
  OUTLINED_FUNCTION_57_21();
  *(v11 + 504) = v48;
  *(v11 + 512) = v47 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v11 + 520) = v49;
  LOBYTE(v49) = *(v0 + v22[14]);
  *(v11 + 552) = &type metadata for Bool;
  *(v11 + 528) = v49;
  OUTLINED_FUNCTION_57_21();
  *(v11 + 560) = v50 & 0xFFFFFFFFFFFFLL | 0x5774000000000000;
  *(v11 + 568) = 0xED0000776F646E69;
  LOBYTE(v50) = *(v0 + v22[15]);
  *(v11 + 600) = v51;
  *(v11 + 576) = v50;
  OUTLINED_FUNCTION_74_0();
  *(v11 + 608) = v52 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(v11 + 616) = 0xEC000000776F646ELL;
  LOBYTE(v52) = *(v0 + v22[16]);
  *(v11 + 648) = v53;
  *(v11 + 624) = v52;
  OUTLINED_FUNCTION_27_2();
  *(v11 + 656) = 0xD000000000000013;
  *(v11 + 664) = v54;
  LOBYTE(v54) = *(v0 + v22[17]);
  *(v11 + 696) = v55;
  *(v11 + 672) = v54;
  OUTLINED_FUNCTION_27_2();
  *(v11 + 704) = v56;
  *(v11 + 712) = v57;
  LOBYTE(v57) = *(v0 + v22[18]);
  *(v11 + 744) = v58;
  *(v11 + 720) = v57;
  OUTLINED_FUNCTION_27_2();
  *(v11 + 752) = 0xD000000000000012;
  *(v11 + 760) = v59;
  LOBYTE(v59) = *(v0 + v22[19]);
  *(v11 + 792) = v60;
  *(v11 + 768) = v59;
  OUTLINED_FUNCTION_27_2();
  *(v11 + 800) = 0xD000000000000014;
  *(v11 + 808) = v61;
  OUTLINED_FUNCTION_64_14(v22[20]);
  if (v63)
  {
    v64 = 0;
    *(v11 + 824) = 0u;
    v65 = 0;
  }

  else
  {
    v65 = *v62;
    v64 = &type metadata for Double;
  }

  *(v11 + 816) = v65;
  *(v11 + 840) = v64;
  *(v11 + 848) = 0x6953776F646E6977;
  *(v11 + 856) = 0xEA0000000000657ALL;
  OUTLINED_FUNCTION_64_14(v22[21]);
  if (v67)
  {
    v68 = 0;
    *(v11 + 872) = 0u;
    v69 = 0;
  }

  else
  {
    v69 = *v66;
    v68 = &type metadata for Double;
  }

  *(v11 + 864) = v69;
  *(v11 + 888) = v68;

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryReadMultipleCallRecordsParameters.init(appBundleId:appName:callRecordCount:callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:device:intent:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:totalCallRecordCount:windowSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  outlined init with take of SpeakableString?(a1, a9);
  v27 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
  result = outlined init with take of SpeakableString?(a2, a9 + v27[5]);
  v29 = a9 + v27[6];
  *v29 = a3;
  *(v29 + 8) = a4 & 1;
  *(a9 + v27[7]) = a5;
  *(a9 + v27[8]) = a6;
  *(a9 + v27[9]) = a7;
  *(a9 + v27[10]) = a8;
  *(a9 + v27[11]) = a10;
  *(a9 + v27[12]) = a11;
  *(a9 + v27[13]) = a12;
  *(a9 + v27[14]) = a13;
  *(a9 + v27[15]) = a14;
  *(a9 + v27[16]) = a15;
  *(a9 + v27[17]) = a16;
  *(a9 + v27[18]) = a17;
  *(a9 + v27[19]) = a18;
  v30 = a9 + v27[20];
  *v30 = a19;
  *(v30 + 8) = a20 & 1;
  v31 = a9 + v27[21];
  *v31 = a21;
  *(v31 + 8) = a22 & 1;
  return result;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.getter()
{
  return SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.getter();
}

{
  v1 = OUTLINED_FUNCTION_76_8();
  v3 = *(v0 + *(v2(v1) + 20));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.setter()
{
  return SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.setter();
}

{
  v2 = OUTLINED_FUNCTION_2_4();
  v4 = *(v3(v2) + 20);
  v5 = *(v1 + v4);

  *(v1 + v4) = v0;
  return result;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryReadMultipleVoiceMailRecordsParameters.newRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 44));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.newRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 44);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.getter()
{
  return SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.getter();
}

{
  v0 = OUTLINED_FUNCTION_76_8();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_57_16(*(v2 + 48));
}

void SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.setter()
{
  SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.setter();
}

{
  v0 = OUTLINED_FUNCTION_12_57();
  v2 = v1(v0);
  OUTLINED_FUNCTION_10_13(*(v2 + 48));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.savedRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 48);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 52));
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 52);
  v2 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.voiceMailPosition.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v0) + 52);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.asKeyValuePairs()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_12_5();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v12, xmmword_4441D0);
  outlined init with copy of SpeakableString?(v1, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v11);
  if (v14)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    __swift_allocate_boxed_opaque_existential_1((v12 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_3_97();
  *(v12 + 80) = v17;
  *(v12 + 88) = v16 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
  v18 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(0);
  v19 = *(v1 + v18[5]);
  if (v19)
  {
    type metadata accessor for PhoneCallRecord(0);
    v20 = v19;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v20;
  OUTLINED_FUNCTION_14_8();
  *(v12 + 120) = v21;
  *(v12 + 128) = v22;
  *(v12 + 136) = 0xE600000000000000;
  v23 = *(v1 + v18[6]);
  if (v23)
  {
    v24 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  *(v12 + 144) = v25;
  *(v12 + 168) = v24;
  *(v12 + 176) = 0xD000000000000021;
  *(v12 + 184) = 0x800000000045AF80;
  *(v12 + 192) = *(v1 + v18[7]);
  *(v12 + 216) = &type metadata for Bool;
  strcpy((v12 + 224), "isNewVoicemail");
  *(v12 + 239) = -18;
  *(v12 + 240) = *(v1 + v18[8]);
  OUTLINED_FUNCTION_39_0();
  *(v12 + 264) = v27;
  *(v12 + 272) = v26 | 2;
  *(v12 + 280) = v28;
  *(v12 + 288) = *(v1 + v18[9]);
  OUTLINED_FUNCTION_39_0();
  *(v12 + 312) = v30;
  *(v12 + 320) = v29 + 1;
  *(v12 + 328) = v31;
  *(v12 + 336) = *(v1 + v18[10]);
  *(v12 + 360) = v30;
  *(v12 + 368) = 0x726F63655277656ELL;
  OUTLINED_FUNCTION_59_13();
  *(v12 + 376) = v33;
  v34 = v1 + v18[11];
  if (*(v34 + 8))
  {
    v35 = 0;
    *(v12 + 392) = 0;
    *(v12 + 400) = 0;
    v36 = 0;
  }

  else
  {
    v36 = *v34;
    v35 = &type metadata for Double;
  }

  *(v12 + 384) = v36;
  *(v12 + 408) = v35;
  *(v12 + 416) = v32;
  *(v12 + 424) = 0x8000000000460E40;
  v37 = v1 + v18[12];
  if (*(v37 + 8))
  {
    v38 = 0;
    *(v12 + 440) = 0;
    *(v12 + 448) = 0;
    v39 = 0;
  }

  else
  {
    v39 = *v37;
    v38 = &type metadata for Double;
  }

  *(v12 + 432) = v39;
  *(v12 + 456) = v38;
  *(v12 + 464) = v32;
  *(v12 + 472) = 0x8000000000460F20;
  outlined init with copy of SpeakableString?(v1 + v18[13], v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v8);
  if (v14)
  {

    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 480) = 0u;
    *(v12 + 496) = 0u;
  }

  else
  {
    *(v12 + 504) = v13;
    __swift_allocate_boxed_opaque_existential_1((v12 + 480));
    OUTLINED_FUNCTION_2_9();
    (*(v40 + 32))();
  }

  return v12;
}

uint64_t SearchCallHistoryReadMultipleVoiceMailRecordsParameters.init(appBundleId:callRecord:intent:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:newRecordsCount:savedRecordsCount:voiceMailPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12)
{
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v19, v14);
  v20 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(0);
  *(v14 + v20[5]) = v13;
  *(v14 + v20[6]) = v12;
  *(v14 + v20[7]) = a4;
  *(v14 + v20[8]) = a5;
  *(v14 + v20[9]) = a6;
  *(v14 + v20[10]) = a7;
  v21 = v14 + v20[11];
  *v21 = a8;
  *(v21 + 8) = a9 & 1;
  v22 = v14 + v20[12];
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  v23 = v14 + v20[13];

  return outlined init with take of SpeakableString?(a12, v23);
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleCallRecordParameters.asKeyValuePairs()(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v9, xmmword_42BF20);
  OUTLINED_FUNCTION_40_4();
  outlined init with copy of SpeakableString?(v10, v11, v12, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v13 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v8);
  if (v14)
  {
    outlined destroy of SpeakableString?(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    v9[4].n128_u64[1] = v13;
    __swift_allocate_boxed_opaque_existential_1(&v9[3]);
    OUTLINED_FUNCTION_40(v13);
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_40_4();
    v17();
  }

  OUTLINED_FUNCTION_3_97();
  v19 = OUTLINED_FUNCTION_78_10(v18);
  v20 = a1(v19);
  v21 = *(v1 + v20[5]);
  if (v21)
  {
    type metadata accessor for PhoneCallRecord(0);
    v22 = v21;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v9[6].n128_u64[1] = 0;
    v9[7].n128_u64[0] = 0;
  }

  v9[6].n128_u64[0] = v22;
  OUTLINED_FUNCTION_14_8();
  v9[7].n128_u64[1] = v23;
  v9[8].n128_u64[0] = v24;
  v9[8].n128_u64[1] = 0xE600000000000000;
  v25 = *(v1 + v20[6]);
  if (v25)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v9[9].n128_u64[1] = 0;
    v9[10].n128_u64[0] = 0;
  }

  v9[9].n128_u64[0] = v25;
  OUTLINED_FUNCTION_27_2();
  v9[10].n128_u64[1] = v26;
  v9[11].n128_u64[0] = 0xD000000000000013;
  v9[11].n128_u64[1] = v27;
  v9[12].n128_u8[0] = *(v1 + v20[7]);
  OUTLINED_FUNCTION_27_2();
  v9[13].n128_u64[1] = v29;
  v9[14].n128_u64[0] = v28;
  v9[14].n128_u64[1] = v30;
  LOBYTE(v30) = *(v1 + v20[8]);
  v9[16].n128_u64[1] = v29;
  v9[15].n128_u8[0] = v30;

  return OUTLINED_FUNCTION_96_4();
}

int *SearchCallHistoryReadSingleCallRecordParameters.init(appBundleId:callRecord:intent:isSingleDateRequest:isTimeRangeRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of SpeakableString?(a1, a7);
  result = a6(0);
  *(a7 + result[5]) = a2;
  *(a7 + result[6]) = a3;
  *(a7 + result[7]) = a4;
  *(a7 + result[8]) = a5;
  return result;
}

uint64_t SearchCallHistoryReadSingleVoiceMailRecordParameters.callRecord.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadSingleVoiceMailRecordParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryReadCannotFindVoicemailParameters.asKeyValuePairs()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v2 + 32) = v3;
  *(v2 + 40) = 0xE600000000000000;
  v4 = *v0;
  v15 = v4;
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_29_8();
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  OUTLINED_FUNCTION_28_25();
  *(v1 + 88) = v7;
  if (v0[2])
  {
    v8 = 0;
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  else
  {
    v8 = v0[1];
  }

  *(v1 + 96) = v8;
  OUTLINED_FUNCTION_39_0();
  *(v1 + 120) = v9;
  *(v1 + 128) = 0xD000000000000011;
  *(v1 + 136) = v10;
  if (v0[4])
  {
    v11 = 0;
    v12 = 0;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  else
  {
    v11 = v0[3];
    v12 = &type metadata for Double;
  }

  *(v1 + 144) = v11;
  *(v1 + 168) = v12;
  outlined init with copy of SpeakableString?(&v15, &v14, &_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCSgMd, &_s27PhoneCallFlowDelegatePlugin0a6SearchB13HistoryIntentCSgMR);
  return v1;
}

uint64_t SearchCallHistoryShowCallHistoryParameters.appName.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.callRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0) + 32));
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v2) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryShowCallHistoryParameters.device.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0) + 36));
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.setter()
{
  v2 = OUTLINED_FUNCTION_2_4();
  v3 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchCallHistoryShowCallHistoryParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0) + 36);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.totalCallRecordCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v0) + 48);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v11, xmmword_4441E0);
  OUTLINED_FUNCTION_143_0();
  outlined init with copy of SpeakableString?(v12, v13, v14, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_21_3(v10);
  if (v16)
  {
    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    *(v11 + 72) = v15;
    __swift_allocate_boxed_opaque_existential_1((v11 + 48));
    OUTLINED_FUNCTION_40(v15);
    v18 = *(v17 + 32);
    OUTLINED_FUNCTION_143_0();
    v19();
  }

  OUTLINED_FUNCTION_35_23();
  v21 = OUTLINED_FUNCTION_78_10(v20);
  v22 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(v21);
  outlined init with copy of SpeakableString?(v0 + v22[5], v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21_3(v7);
  if (v16)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
  }

  else
  {
    *(v11 + 120) = v15;
    __swift_allocate_boxed_opaque_existential_1((v11 + 96));
    OUTLINED_FUNCTION_40(v15);
    v24 = *(v23 + 32);
    OUTLINED_FUNCTION_40_4();
    v25();
  }

  OUTLINED_FUNCTION_3_97();
  OUTLINED_FUNCTION_59_13();
  OUTLINED_FUNCTION_87_6(v26);
  if (v29)
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
    v30 = 0.0;
  }

  else
  {
    v30 = *v28;
  }

  OUTLINED_FUNCTION_63_14(v27, v30);
  v32 = *(v0 + v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  *(v11 + 192) = v32;
  *(v11 + 216) = v33;
  *(v11 + 224) = 0x656369766564;
  *(v11 + 232) = 0xE600000000000000;
  v34 = *(v0 + v22[8]);
  if (v34)
  {
    type metadata accessor for SirikitDeviceState();
    v35 = v34;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
  }

  *(v11 + 240) = v35;
  OUTLINED_FUNCTION_14_8();
  *(v11 + 264) = v36;
  *(v11 + 272) = v37;
  *(v11 + 280) = 0xE600000000000000;
  v38 = *(v0 + v22[9]);
  if (v38)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v39 = v38;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
  }

  *(v11 + 288) = v39;
  OUTLINED_FUNCTION_57_21();
  *(v11 + 312) = v41;
  *(v11 + 320) = v40 & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  OUTLINED_FUNCTION_56_12();
  *(v11 + 328) = v42;
  *(v11 + 336) = *(v0 + v22[10]);
  OUTLINED_FUNCTION_27_2();
  *(v11 + 360) = v43;
  *(v11 + 368) = 0xD000000000000013;
  *(v11 + 376) = v44;
  *(v11 + 384) = *(v0 + v22[11]);
  OUTLINED_FUNCTION_27_2();
  *(v11 + 408) = v46;
  *(v11 + 416) = v45 + 1;
  *(v11 + 424) = v47;
  OUTLINED_FUNCTION_64_14(v22[12]);
  if (v49)
  {
    v50 = 0;
    *(v11 + 440) = 0;
    *(v11 + 448) = 0;
    v51 = 0;
  }

  else
  {
    v51 = *v48;
    v50 = &type metadata for Double;
  }

  *(v11 + 432) = v51;
  *(v11 + 456) = v50;

  return OUTLINED_FUNCTION_96_4();
}

uint64_t SearchCallHistoryShowCallHistoryParameters.init(appBundleId:appName:callRecordCount:callRecords:device:intent:isFirstPartyApp:isShowingMissedCall:totalCallRecordCount:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v18, v12);
  v19 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
  result = OUTLINED_FUNCTION_99_3(v19);
  v21 = v12 + v13[6];
  *v21 = v11;
  *(v21 + 8) = a4 & 1;
  *(v12 + v13[7]) = a5;
  *(v12 + v13[8]) = a6;
  *(v12 + v13[9]) = a7;
  *(v12 + v13[10]) = a8;
  *(v12 + v13[11]) = a9;
  v22 = v12 + v13[12];
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  return result;
}

uint64_t SearchCallHistoryShowVoicemailsParameters.callRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0) + 20));
}

uint64_t SearchCallHistoryShowVoicemailsParameters.intent.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryShowVoicemailsParameters.newRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 28));
}

uint64_t SearchCallHistoryShowVoicemailsParameters.newRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

void SearchCallHistoryShowVoicemailsParameters.savedRecordsCount.setter()
{
  v0 = OUTLINED_FUNCTION_12_57();
  v1 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0);
  OUTLINED_FUNCTION_10_13(*(v1 + 32));
}

uint64_t SearchCallHistoryShowVoicemailsParameters.savedRecordsCount.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v0) + 32);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryShowVoicemailsParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v7, xmmword_42BF20);
  OUTLINED_FUNCTION_80_8();
  outlined init with copy of SpeakableString?(v8, v9, v10, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v11 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v6);
  if (v12)
  {
    outlined destroy of SpeakableString?(v6, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_79_7();
  }

  else
  {
    v7[4].n128_u64[1] = v11;
    __swift_allocate_boxed_opaque_existential_1(&v7[3]);
    OUTLINED_FUNCTION_2_9();
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_80_8();
    v15();
  }

  OUTLINED_FUNCTION_3_97();
  v17 = OUTLINED_FUNCTION_78_10(v16);
  v18 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(v17);
  v19 = *(v0 + v18[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v7[6].n128_u64[0] = v19;
  OUTLINED_FUNCTION_14_8();
  v7[7].n128_u64[1] = v20;
  v7[8].n128_u64[0] = v21;
  v7[8].n128_u64[1] = 0xE600000000000000;
  v22 = *(v0 + v18[6]);
  if (v22)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v23 = v22;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v7[9].n128_u64[1] = 0;
    v7[10].n128_u64[0] = 0;
  }

  v7[9].n128_u64[0] = v23;
  OUTLINED_FUNCTION_29_8();
  v7[10].n128_u64[1] = v24;
  v7[11].n128_u64[0] = v25;
  OUTLINED_FUNCTION_28_25();
  v7[11].n128_u64[1] = v26;
  OUTLINED_FUNCTION_64_14(v18[7]);
  if (v28)
  {
    v7[12].n128_u64[1] = 0;
    v7[13].n128_u64[0] = 0;
    v29 = 0;
  }

  else
  {
    v29 = *v27;
  }

  v7[12].n128_u64[0] = v29;
  OUTLINED_FUNCTION_39_0();
  v7[13].n128_u64[1] = v30;
  v7[14].n128_u64[0] = 0xD000000000000011;
  v7[14].n128_u64[1] = v31;
  OUTLINED_FUNCTION_64_14(v18[8]);
  if (v33)
  {
    v34 = 0;
    v7[15].n128_u64[1] = 0;
    v7[16].n128_u64[0] = 0;
    v35 = 0;
  }

  else
  {
    v35 = *v32;
    v34 = &type metadata for Double;
  }

  v7[15].n128_u64[0] = v35;
  v7[16].n128_u64[1] = v34;

  return OUTLINED_FUNCTION_96_4();
}

int *SearchCallHistoryShowVoicemailsParameters.init(appBundleId:callRecords:intent:newRecordsCount:savedRecordsCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  outlined init with take of SpeakableString?(a1, a8);
  result = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = a3;
  v16 = a8 + result[7];
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  v17 = a8 + result[8];
  *v17 = a6;
  *(v17 + 8) = a7 & 1;
  return result;
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.confirmAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 20);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.contactToConfirm.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 24);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 28));
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 28);
  v2 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.displayText.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 28);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.getter()
{
  v0 = OUTLINED_FUNCTION_29_7();
  v1 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0);
  return OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, *(v1 + 44));
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.setter()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 44);
  v2 = OUTLINED_FUNCTION_91_0();

  return outlined assign with take of SpeakableString?(v2, v3);
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.rejectAction.modify()
{
  v0 = OUTLINED_FUNCTION_2_4();
  v1 = *(type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v0) + 44);
  return OUTLINED_FUNCTION_9_11();
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.asKeyValuePairs()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = OUTLINED_FUNCTION_21(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_12_5();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_0_103(v17, xmmword_43CD90);
  outlined init with copy of SpeakableString?(v0, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v18 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_6_1(v16);
  if (v19)
  {
    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 48) = 0u;
    *(v17 + 64) = 0u;
  }

  else
  {
    *(v17 + 72) = v18;
    __swift_allocate_boxed_opaque_existential_1((v17 + 48));
    OUTLINED_FUNCTION_2_9();
    (*(v20 + 32))();
  }

  strcpy((v17 + 80), "confirmAction");
  *(v17 + 94) = -4864;
  v21 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(0);
  outlined init with copy of SpeakableString?(v0 + v21[5], v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v13);
  if (v19)
  {
    outlined destroy of SpeakableString?(v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
  }

  else
  {
    *(v17 + 120) = v18;
    __swift_allocate_boxed_opaque_existential_1((v17 + 96));
    OUTLINED_FUNCTION_2_9();
    (*(v22 + 32))();
  }

  OUTLINED_FUNCTION_27_2();
  *(v17 + 128) = 0xD000000000000010;
  *(v17 + 136) = v23;
  v24 = *(v0 + v21[6]);
  if (v24)
  {
    v25 = type metadata accessor for DialogPerson();
    v26 = v24;
  }

  else
  {
    v25 = OUTLINED_FUNCTION_18_2();
    *(v17 + 152) = 0;
    *(v17 + 160) = 0;
  }

  *(v17 + 144) = v26;
  *(v17 + 168) = v25;
  *(v17 + 176) = 0x5479616C70736964;
  *(v17 + 184) = 0xEB00000000747865;
  outlined init with copy of SpeakableString?(v0 + v21[7], v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_6_1(v10);
  if (v19)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 192) = 0u;
    *(v17 + 208) = 0u;
  }

  else
  {
    *(v17 + 216) = v18;
    __swift_allocate_boxed_opaque_existential_1((v17 + 192));
    OUTLINED_FUNCTION_2_9();
    (*(v27 + 32))();
  }

  *(v17 + 224) = 0x74736574614C7369;
  *(v17 + 232) = 0xE800000000000000;
  *(v17 + 240) = *(v0 + v21[8]);
  *(v17 + 264) = &type metadata for Bool;
  *(v17 + 272) = 0x64657373694D7369;
  *(v17 + 280) = 0xE800000000000000;
  *(v17 + 288) = *(v0 + v21[9]);
  *(v17 + 312) = &type metadata for Bool;
  *(v17 + 320) = 0x6D6563696F567369;
  *(v17 + 328) = 0xEB000000006C6961;
  *(v17 + 336) = *(v0 + v21[10]);
  *(v17 + 360) = &type metadata for Bool;
  strcpy((v17 + 368), "rejectAction");
  *(v17 + 381) = 0;
  *(v17 + 382) = -5120;
  OUTLINED_FUNCTION_85_5(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v21[11]);
  OUTLINED_FUNCTION_6_1(v7);
  if (v19)
  {
    outlined destroy of SpeakableString?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 384) = 0u;
    *(v17 + 400) = 0u;
  }

  else
  {
    *(v17 + 408) = v18;
    __swift_allocate_boxed_opaque_existential_1((v17 + 384));
    OUTLINED_FUNCTION_2_9();
    (*(v28 + 32))();
  }

  return v17;
}

uint64_t SearchCallHistoryUnsupportedSearchParametersParameters.init(appBundleId:confirmAction:contactToConfirm:displayText:isLatest:isMissed:isVoicemail:rejectAction:)()
{
  OUTLINED_FUNCTION_66();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_73_8();
  outlined init with take of SpeakableString?(v11, v12);
  v13 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(0);
  OUTLINED_FUNCTION_99_3(v13);
  *(v1 + v2[6]) = v0;
  outlined init with take of SpeakableString?(v10, v1 + v2[7]);
  *(v1 + v2[8]) = v8;
  *(v1 + v2[9]) = v6;
  *(v1 + v2[10]) = v4;
  v14 = v2[11];
  OUTLINED_FUNCTION_65();

  return outlined init with take of SpeakableString?(v15, v16);
}

double SearchCallHistoryOfferToReadMoreCallRecordsParameters.asKeyValuePairs()(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_424FD0;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 72) = &type metadata for Bool;
  *(v6 + 48) = a1;
  return result;
}

uint64_t SearchCallHistoryCATPatternsExecutor.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v4 + 32) = v3 & 0xFFFFFFFFFFFFLL | 0x6957000000000000;
  *(v4 + 40) = 0xEC000000776F646ELL;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = AddCallParticipantCATs.promptForParticipant(isUnsupportedFollowup:);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_41_30();
  v8 = OUTLINED_FUNCTION_34_21(44);

  return v9(v8);
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindCallRecord(isFirstPartyApp:isShowingMissedCall:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadCannotFindCallRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v5 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_40_27(v1[5]);
  *(v9 + 8) = 1;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = 0;
  *(v0 + v1[8]) = v4;
  *(v0 + v1[9]) = v3;
  OUTLINED_FUNCTION_40_27(v1[10]);
  *(v10 + 8) = 1;
  v2(v0);
  OUTLINED_FUNCTION_60_0();
  v11 = SearchCallHistoryReadCannotFindCallRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v11);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_68(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_10_66(v13);
  v15 = OUTLINED_FUNCTION_34_21(42);

  return v16(v15);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_49_24();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_49_24();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:)()
{
  OUTLINED_FUNCTION_24_1();
  v7 = OUTLINED_FUNCTION_61_20();
  v8(v7);
  OUTLINED_FUNCTION_70_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  *(v2 + 72) = v9;
  *(v9 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 32) = v11;
  *(v10 + 40) = 0xE600000000000000;
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v12;
  OUTLINED_FUNCTION_29_8();
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  OUTLINED_FUNCTION_28_25();
  *(v9 + 88) = v15;
  if (v4)
  {
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    v6 = 0;
  }

  *(v9 + 96) = v6;
  OUTLINED_FUNCTION_39_0();
  *(v9 + 120) = v16;
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = v17;
  if (v1)
  {
    v18 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v5 = 0;
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v9 + 144) = v5;
  *(v9 + 168) = v18;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = swift_task_alloc();
  *(v3 + 96) = v19;
  *v19 = v3;
  v19[1] = SearchCallHistoryCATPatternsExecutor.readCannotFindVoicemail(_:);
  v20 = *(v3 + 72);
  OUTLINED_FUNCTION_92_4();

  return v21();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *(v6 + 88);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_17_5();
  v3 = *(v0 + 112);

  return v2(v3);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 64) = v22;
  *(v1 + 72) = v0;
  *(v1 + 133) = v20;
  *(v1 + 132) = v19;
  *(v1 + 131) = v18;
  *(v1 + 130) = v2;
  *(v1 + 129) = v3;
  *(v1 + 128) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v21;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for SearchCallHistoryReadMultipleCallRecordsParameters(0);
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v13, v14, v15);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v29 = *(v0 + 132);
  v30 = *(v0 + 133);
  v27 = *(v0 + 130);
  v28 = *(v0 + 131);
  v26 = *(v0 + 129);
  v3 = *(v0 + 128);
  v4 = *(v0 + 48);
  v31 = *(v0 + 56);
  v32 = *(v0 + 64);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  OUTLINED_FUNCTION_40_27(v2[6]);
  *(v16 + 8) = 1;
  *(v1 + v2[7]) = v8;
  *(v1 + v2[8]) = v7;
  *(v1 + v2[9]) = v6;
  *(v1 + v2[10]) = v5;
  *(v1 + v2[11]) = v4;
  *(v1 + v2[12]) = 0;
  *(v1 + v2[13]) = 0;
  *(v1 + v2[14]) = v3;
  *(v1 + v2[15]) = v26;
  *(v1 + v2[16]) = v27;
  *(v1 + v2[17]) = v28;
  *(v1 + v2[18]) = v29;
  *(v1 + v2[19]) = v30;
  OUTLINED_FUNCTION_40_27(v2[20]);
  *(v17 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v2[21]);
  *(v18 + 8) = v19;

  v31(v1);
  OUTLINED_FUNCTION_60_0();
  SearchCallHistoryReadMultipleCallRecordsParameters.asKeyValuePairs()();
  *(v0 + 96) = v20;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v33 = v21;
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = SearchCallHistoryCATPatternsExecutor.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:);
  v23 = *(v0 + 72);
  OUTLINED_FUNCTION_41_30();
  v24 = OUTLINED_FUNCTION_42_23(41);

  return v33(v24);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_23();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 120);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_23();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 112);

  return v1();
}

uint64_t outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters()
{
  v1 = OUTLINED_FUNCTION_2_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t SearchCallHistoryCATPatternsExecutor.readMultipleVoiceMailRecords(isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 91) = v4;
  v8 = OUTLINED_FUNCTION_94_7(v5, v6, v7);
  v9 = type metadata accessor for SearchCallHistoryReadMultipleVoiceMailRecordsParameters(v8);
  OUTLINED_FUNCTION_24_4(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v12, v13, v14);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 91);
  v6 = *(v0 + 90);
  v7 = *(v0 + 89);
  v8 = *(v0 + 88);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = OUTLINED_FUNCTION_23_30(v2[13]);
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = v8;
  OUTLINED_FUNCTION_72_9();
  OUTLINED_FUNCTION_40_27(v2[11]);
  *(v16 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v2[12]);
  *(v17 + 8) = v18;
  v4(v1);
  OUTLINED_FUNCTION_60_0();
  v19 = SearchCallHistoryReadMultipleVoiceMailRecordsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v19);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_68(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_10_66(v21);
  v23 = OUTLINED_FUNCTION_34_21(46);

  return v24(v23);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_48_22();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_48_22();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v4(0xD00000000000002CLL, 0x8000000000453C80, _swiftEmptyArrayStorage);
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleCallRecord(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleCallRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleCallRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(38);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_44_18();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_44_18();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleCallRecordDisplayForward(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleCallRecordDisplayForwardParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleCallRecordDisplayForwardParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(52);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_23();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_47_23();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readSingleVoiceMailRecord(isSingleDateRequest:isTimeRangeRequest:_:)()
{
  OUTLINED_FUNCTION_15();
  v5 = OUTLINED_FUNCTION_16_49(v1, v2, v3, v4);
  v6 = type metadata accessor for SearchCallHistoryReadSingleVoiceMailRecordParameters(v5);
  OUTLINED_FUNCTION_24_4(v6);
  v8 = *(v7 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_48_4();
  v15 = v1;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30_34();
  v2 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_11_55();
  v0(v6);
  OUTLINED_FUNCTION_60_0();
  v7 = SearchCallHistoryReadSingleVoiceMailRecordParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v7);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v14 = v8;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_68(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_10_66(v10);
  v12 = OUTLINED_FUNCTION_42_23(43);

  return v14(v12);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_18();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_45_18();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:)()
{
  OUTLINED_FUNCTION_24_1();
  v7 = OUTLINED_FUNCTION_61_20();
  v8(v7);
  OUTLINED_FUNCTION_70_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = swift_allocObject();
  *(v2 + 72) = v9;
  *(v9 + 16) = xmmword_426980;
  OUTLINED_FUNCTION_14_8();
  *(v10 + 32) = v11;
  *(v10 + 40) = 0xE600000000000000;
  if (v0)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v12 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  *(v9 + 48) = v12;
  OUTLINED_FUNCTION_29_8();
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  OUTLINED_FUNCTION_28_25();
  *(v9 + 88) = v15;
  if (v4)
  {
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
    v6 = 0;
  }

  *(v9 + 96) = v6;
  OUTLINED_FUNCTION_39_0();
  *(v9 + 120) = v16;
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = v17;
  if (v1)
  {
    v18 = 0;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
    v5 = 0;
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v9 + 144) = v5;
  *(v9 + 168) = v18;
  OUTLINED_FUNCTION_9_13(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v19 = swift_task_alloc();
  *(v3 + 96) = v19;
  *v19 = v3;
  v19[1] = SearchCallHistoryCATPatternsExecutor.readVoicemailsIntroduction(_:);
  v20 = *(v3 + 72);
  OUTLINED_FUNCTION_92_4();

  return v21();
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *(v6 + 88);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t SearchCallHistoryCATPatternsExecutor.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 97) = v3;
  *(v1 + 96) = v4;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = type metadata accessor for SearchCallHistoryShowCallHistoryParameters(0);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 97);
  v6 = *(v0 + 96);
  v7 = *(v0 + 16);
  v8 = type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  OUTLINED_FUNCTION_40_27(v2[6]);
  *(v15 + 8) = 1;
  *(v1 + v2[7]) = v7;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  *(v1 + v2[10]) = v6;
  *(v1 + v2[11]) = v5;
  OUTLINED_FUNCTION_40_27(v2[12]);
  *(v16 + 8) = 1;

  v4(v1);
  OUTLINED_FUNCTION_60_0();
  *(v0 + 64) = SearchCallHistoryShowCallHistoryParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v17 = swift_task_alloc();
  *(v0 + 72) = v17;
  *v17 = v0;
  v17[1] = SearchCallHistoryCATPatternsExecutor.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:);
  v18 = *(v0 + 40);
  OUTLINED_FUNCTION_41_30();
  v19 = OUTLINED_FUNCTION_34_21(33);

  return v20(v19);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_52_18();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t SearchCallHistoryCATPatternsExecutor.showVoicemails(callRecords:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SearchCallHistoryShowVoicemailsParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_48_4();
  v19 = v1;
  OUTLINED_FUNCTION_31();
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v2 + v3[5]) = v6;
  *(v2 + v3[6]) = 0;
  OUTLINED_FUNCTION_40_27(v3[7]);
  *(v11 + 8) = 1;
  OUTLINED_FUNCTION_40_27(v3[8]);
  *(v12 + 8) = 1;

  v5(v2);
  OUTLINED_FUNCTION_60_0();
  v0[8] = SearchCallHistoryShowVoicemailsParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v18 = v13;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = SearchCallHistoryCATPatternsExecutor.showVoicemails(callRecords:_:);
  v15 = v0[5];
  OUTLINED_FUNCTION_41_30();
  v16 = OUTLINED_FUNCTION_42_23(32);

  return v18(v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *(v6 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_51_26();

  OUTLINED_FUNCTION_17_5();
  v2 = *(v0 + 88);

  return v1(v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_51_26();

  OUTLINED_FUNCTION_11();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t SearchCallHistoryCATPatternsExecutor.unsupportedSearchParameters(isLatest:isMissed:isVoicemail:_:)()
{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v7 = OUTLINED_FUNCTION_94_7(v4, v5, v6);
  v8 = type metadata accessor for SearchCallHistoryUnsupportedSearchParametersParameters(v7);
  OUTLINED_FUNCTION_24_4(v8);
  v10 = *(v9 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 90);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);
  v8 = type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_15_47();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = OUTLINED_FUNCTION_23_30(v2[5]);
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  v15 = OUTLINED_FUNCTION_23_30(v2[7]);
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v8);
  v18 = OUTLINED_FUNCTION_23_30(v2[11]);
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  *(v1 + v2[6]) = 0;
  OUTLINED_FUNCTION_72_9();
  v4(v1);
  OUTLINED_FUNCTION_60_0();
  v21 = SearchCallHistoryUnsupportedSearchParametersParameters.asKeyValuePairs()();
  OUTLINED_FUNCTION_66_3(v21);
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v28 = v22;
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_68(v23);
  *v24 = v25;
  OUTLINED_FUNCTION_10_66(v24);
  v26 = OUTLINED_FUNCTION_42_23(45);

  return v28(v26);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_10_4();
  v4 = v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_65_1();

  return _swift_task_switch(v11, v12, v13);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_46_23();

  v0 = OUTLINED_FUNCTION_9_4();

  return v1(v0);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_46_23();

  OUTLINED_FUNCTION_22_0();

  return v0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailOfferToFollowUpAction(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailOfferToFollowUpAction(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v4 + 32) = v3 & 0xFFFFFFFFFFFFLL | 0x6150000000000000;
  *(v4 + 40) = 0xEA00000000006567;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 48) = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = AddCallParticipantCATsSimple.promptForParticipantAsLabels(isUnsupportedFollowup:);
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_41_30();
  v8 = OUTLINED_FUNCTION_34_21(48);

  return v9(v8);
}

uint64_t SearchCallHistoryCATPatternsExecutor.voiceMailPromptToPlay()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = SearchCallHistoryCATPatternsExecutor.voiceMailPromptToPlay();

  return v4(0xD000000000000027, 0x8000000000453E50, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  OUTLINED_FUNCTION_17_5();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

void SearchCallHistoryCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_2_4();
  v25 = type metadata accessor for CATOption();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v20, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v26 + 16);
  OUTLINED_FUNCTION_80_8();
  v34();
  CATWrapper.init(templateDir:options:globals:)();
  (*(v26 + 8))(v24, v25);
  outlined destroy of SpeakableString?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchCallHistoryCATPatternsIdentifiers and conformance SearchCallHistoryCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.offerToReadMoreCallRecords(isLastWindow:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1)
{
  v7 = (**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v8(a1);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readCannotFindCallRecord(isFirstPartyApp:isShowingMissedCall:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readCannotFindVoicemail(_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 16);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readMultipleCallRecords(callRecords:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:isFirstPartyApp:isFirstWindow:isLastWindow:isShowingMissedCall:isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9)
{
  v13 = *(**v9 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v10 + 16) = v15;
  *v15 = v10;
  v15[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();
  BYTE2(a9) = v26;
  LOWORD(a9) = v25;

  return (v17)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readMultipleVoiceMailRecords(isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 32);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readPlayVoiceMailPrePrompt() in conformance SearchCallHistoryCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 40);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleCallRecord(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 48);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleCallRecordDisplayForward(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 56);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readSingleVoiceMailRecord(isSingleDateRequest:isTimeRangeRequest:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 64);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.readVoicemailsIntroduction(_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 72);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v10(a1, a2);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.showCallHistory(callRecords:isFirstPartyApp:isShowingMissedCall:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.showVoicemails(callRecords:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(**v3 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 88);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v12(a1, a2, a3);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.unsupportedSearchParameters(isLatest:isMissed:isVoicemail:_:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 96);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.voiceMailOfferToFollowUpAction(isLastPage:) in conformance SearchCallHistoryCATPatternsExecutor(uint64_t a1)
{
  v4 = *(**v1 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v8(a1);
}

uint64_t protocol witness for SearchCallHistoryCATPatternsExecuting.voiceMailPromptToPlay() in conformance SearchCallHistoryCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for SearchCallHistoryCATPatternsExecutor + 112);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = SearchCallHistoryCATPatternsExecutor.readPlayVoiceMailPrePrompt();

  return v6();
}

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryReadCannotFindCallRecordParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for Double?();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t type metadata completion function for SearchCallHistoryReadMultipleCallRecordsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for Double?();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t type metadata completion function for SearchCallHistoryReadMultipleVoiceMailRecordsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneCallRecord?, type metadata accessor for PhoneCallRecord, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    type metadata accessor for Double?();
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void type metadata completion function for SearchCallHistoryReadSingleCallRecordParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneCallRecord?, type metadata accessor for PhoneCallRecord, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_76Tm()
{
  OUTLINED_FUNCTION_55_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_26_31(*(v1 + 20));
    return OUTLINED_FUNCTION_89_3(v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_77Tm()
{
  OUTLINED_FUNCTION_25_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchCallHistoryReadCannotFindVoicemailParameters(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCallHistoryReadCannotFindVoicemailParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_67Tm()
{
  OUTLINED_FUNCTION_55_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_26_31(*(v1 + 28));
    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_68Tm()
{
  OUTLINED_FUNCTION_25_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryShowCallHistoryParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for Double?();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
      if (v6 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SirikitDeviceState?, &type metadata accessor for SirikitDeviceState, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v5;
      }

      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata completion function for SearchCallHistoryShowVoicemailsParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for [PhoneCallRecord], type metadata accessor for PhoneCallRecord, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for PhoneSearchCallHistoryIntent?, type metadata accessor for PhoneSearchCallHistoryIntent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_55_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_20_3(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_58_12();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_26_31(*(v1 + 24));
    return OUTLINED_FUNCTION_89_3(v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0()
{
  OUTLINED_FUNCTION_25_32();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  result = OUTLINED_FUNCTION_20_3(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_27_32();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }

  return result;
}

uint64_t type metadata completion function for SearchCallHistoryUnsupportedSearchParametersParameters()
{
  _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for SpeakableString?, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(319, &lazy cache variable for type metadata for DialogPerson?, &type metadata accessor for DialogPerson, &type metadata accessor for Optional);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void _s16SiriDialogEngine15SpeakableStringVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for SearchCallHistoryOfferToReadMoreCallRecordsParameters(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_45_18()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_47_23()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_50_23()
{
  v2 = *(v0 + 88);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_51_26()
{
  v2 = *(v0 + 56);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

void OUTLINED_FUNCTION_70_8()
{
  *(v0 + 64) = *v0;
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
}

void OUTLINED_FUNCTION_72_9()
{
  *(v0 + v1[8]) = v4;
  *(v0 + v1[9]) = v3;
  *(v0 + v1[10]) = v2;
}

uint64_t OUTLINED_FUNCTION_78_10@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return 0;
}

double OUTLINED_FUNCTION_79_7()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_85_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of SpeakableString?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_89_3@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_94_7(char a1, char a2, char a3)
{
  v3[90] = a3;
  v3[89] = a2;
  v3[88] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_99_3(uint64_t a1)
{
  v4 = v2 + *(a1 + 20);

  return outlined init with take of SpeakableString?(v1, v4);
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional __swiftcall SearchCallHistoryCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v1;
  }
}

unint64_t SearchCallHistoryCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000027;
  switch(a1)
  {
    case 1:
    case 12:
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 2:
    case 4:
      result = 0xD000000000000022;
      break;
    case 3:
    case 13:
    case 15:
      result = 0xD000000000000024;
      break;
    case 5:
    case 6:
    case 35:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000037;
      break;
    case 8:
    case 38:
      result = 0xD000000000000027;
      break;
    case 9:
    case 36:
      result = 0xD000000000000031;
      break;
    case 10:
    case 16:
      result = 0xD000000000000021;
      break;
    case 11:
    case 21:
    case 31:
      result = 0xD000000000000028;
      break;
    case 14:
    case 25:
    case 28:
    case 29:
    case 30:
    case 32:
      result = 0xD000000000000026;
      break;
    case 17:
      result = 0xD000000000000020;
      break;
    case 18:
    case 24:
      result = 0xD000000000000033;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD00000000000002FLL;
      break;
    case 23:
      result = 0xD00000000000002ALL;
      break;
    case 26:
      result = 0xD00000000000002BLL;
      break;
    case 27:
      result = 0xD000000000000032;
      break;
    case 33:
      result = 0xD00000000000002DLL;
      break;
    case 34:
      result = 0xD000000000000023;
      break;
    case 37:
      result = 0xD000000000000030;
      break;
    case 39:
      result = 0xD000000000000036;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SearchCallHistoryCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SearchCallHistoryCATs::Properties_optional *a2@<X8>)
{
  result.value = SearchCallHistoryCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchCallHistoryCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = SearchCallHistoryCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_106(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_24(v7);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(39);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_106(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDetail(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_106(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_24(v7);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_1_106(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(44);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_106(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneCallRecord(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.buildCallRecordDisplayName(callRecord:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

void SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:completion:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_45_0();
  *(v12 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v13 + 32) = 0xD000000000000011;
  *(v13 + 40) = v14;
  outlined init with copy of SpeakableString?(v5, v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v15 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
  {
    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v15;
    __swift_allocate_boxed_opaque_existential_1((v12 + 48));
    OUTLINED_FUNCTION_40(v15);
    (*(v16 + 32))();
  }

  OUTLINED_FUNCTION_143_1();
  *(v12 + 80) = v17;
  *(v12 + 88) = v18;
  if (v1)
  {
    v3 = 0;
    v19 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    v19 = &type metadata for Double;
  }

  *(v12 + 96) = v3;
  *(v12 + 120) = v19;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_15();
  *(v1 + 80) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_45();
  v9 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v9, v10, v11);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_197(v5) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = v2;
  *(v6 + 40) = v7;
  OUTLINED_FUNCTION_54_2(v6, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_58(v9);
  v11 = *(v0 + 48);
  if (v10 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 48), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_16_0();
    v14();
  }

  v15 = *(v0 + 80);
  OUTLINED_FUNCTION_136_2();
  if (v16)
  {
    OUTLINED_FUNCTION_160_0();
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v17 = *(v0 + 32);
    v18 = &type metadata for Double;
  }

  v1[12] = v17;
  v1[15] = v18;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 64) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_44_2(v19);
  OUTLINED_FUNCTION_65_1();

  return v25(v21, v22, v23, v24, v25, v26, v27, v28);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_125_2();
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_46_15(v5) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v6 + 32) = v2;
  *(v6 + 40) = v7;
  OUTLINED_FUNCTION_54_2(v6, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_58(v9);
  v11 = *(v0 + 40);
  if (v10 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 40), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_16_0();
    v14();
  }

  v15 = *(v0 + 72);
  OUTLINED_FUNCTION_136_2();
  if (v16)
  {
    OUTLINED_FUNCTION_160_0();
    v1[13] = 0;
    v1[14] = 0;
  }

  else
  {
    v17 = *(v0 + 24);
    v18 = &type metadata for Double;
  }

  v1[12] = v17;
  v1[15] = v18;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_22_19(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_114_0(v20);
  OUTLINED_FUNCTION_65_1();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29);
}

void SearchCallHistoryCATs.confirmCallTypes(callTypeToConfirm:callTypesCount:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  *(v9 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v10 + 32) = 0xD000000000000011;
  *(v10 + 40) = v11;
  v12 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v12, v13, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    *(v9 + 72) = v14;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40(v14);
    (*(v15 + 32))();
  }

  OUTLINED_FUNCTION_143_1();
  *(v9 + 80) = v16;
  *(v9 + 88) = v17;
  if (v2)
  {
    v4 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v18 = &type metadata for Double;
  }

  *(v9 + 96) = v4;
  *(v9 + 120) = v18;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(v4 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = 0xD000000000000014;
  *(v5 + 40) = v6;
  if (v3)
  {
    type metadata accessor for DialogCalendar();
    v7 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  *(v4 + 48) = v7;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 72) = v8;
  *(v4 + 80) = 0xD000000000000011;
  *(v4 + 88) = v9;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 96) = v1 & 1;

  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125_2();
  v13 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_50_0(v14) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 32) = v12 + 3;
  *(v15 + 40) = v16;
  if (v13)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  v17 = *(v10 + 64);
  *(v11 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v18;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v19;
  OUTLINED_FUNCTION_218(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v11 + 72) = v20;
  *(v11 + 80) = v12;

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_16_12(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_24(v22);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125_2();
  v13 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_45_0();
  *(OUTLINED_FUNCTION_51(v14) + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 32) = v12 + 3;
  *(v15 + 40) = v16;
  if (v13)
  {
    type metadata accessor for DialogCalendar();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  v17 = *(v10 + 56);
  *(v11 + 48) = v13;
  OUTLINED_FUNCTION_39_0();
  *(v11 + 88) = v18;
  *(v11 + 120) = &type metadata for Bool;
  *(v11 + 96) = v19;
  OUTLINED_FUNCTION_218(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v11 + 72) = v20;
  *(v11 + 80) = v12;

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_76_9(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_39(v22);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmDateCreated(dateCreatedToConfirm:isTimeDescriptive:)()
{
  OUTLINED_FUNCTION_61_6();
  v3 = v2;
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_125_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  *(v4 + 16) = xmmword_424FF0;
  OUTLINED_FUNCTION_27_2();
  *(v5 + 32) = v1 + 3;
  *(v5 + 40) = v6;
  if (v0)
  {
    type metadata accessor for DialogCalendar();
    v7 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v7;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 72) = v8;
  *(v4 + 80) = v1;
  *(v4 + 88) = v9;
  *(v4 + 120) = &type metadata for Bool;
  *(v4 + 96) = v3 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:completion:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  *(v1 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = v3;
  if (v0)
  {
    v4 = type metadata accessor for DialogPerson();
    v5 = v0;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_54_6(v4, v5);

  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_50_0(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v12)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_16_12(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_24(v18);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_35_1();
  *(OUTLINED_FUNCTION_51(v13) + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v14 + 32) = 0xD000000000000012;
  *(v14 + 40) = v15;
  v16 = 0;
  if (v12)
  {
    v16 = type metadata accessor for DialogPerson();
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v16);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_76_9(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_39(v18);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmRecipient(recipientToConfirm:)()
{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  *(OUTLINED_FUNCTION_35_1() + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_27_2();
  *(v1 + 32) = 0xD000000000000012;
  *(v1 + 40) = v2;
  if (v0)
  {
    v3 = type metadata accessor for DialogPerson();
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v3, v4);

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_18_2();
    v1[3].n128_u64[1] = 0;
    v1[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_54_6(v2, v3);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_50_0(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_12(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_24(v7);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v13(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1();
  v4 = OUTLINED_FUNCTION_51(v3);
  OUTLINED_FUNCTION_12_6(v4, xmmword_424FD0);
  v5 = 0;
  if (v2)
  {
    v5 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v5);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_117(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_30(v7);
  OUTLINED_FUNCTION_43_4(31);
  OUTLINED_FUNCTION_65_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

{
  OUTLINED_FUNCTION_37_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_12_6(v1, xmmword_424FD0);
  if (v0)
  {
    v2 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v3 = v0;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_68_11();
  }

  OUTLINED_FUNCTION_55_3(v2, v3);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.confirmUnseen(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.errorWithCode()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(31);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

void SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v7, xmmword_424FF0);
  v8 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v8, v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    v7[4].n128_u64[1] = v10;
    __swift_allocate_boxed_opaque_existential_1(&v7[3]);
    OUTLINED_FUNCTION_40(v10);
    (*(v11 + 32))();
  }

  OUTLINED_FUNCTION_15_48();
  v7[5].n128_u64[0] = v12;
  v7[5].n128_u64[1] = v13;
  if (v2)
  {
    v14 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v15 = v2;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_18_2();
    v7[6].n128_u64[1] = 0;
    v7[7].n128_u64[0] = 0;
  }

  v7[6].n128_u64[0] = v15;
  v7[7].n128_u64[1] = v14;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[6];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_197(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_58(v8);
  v10 = v0[6];
  if (v9 == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[4];
  OUTLINED_FUNCTION_15_48();
  v1[10] = v15;
  v1[11] = v16;
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v14;
  v1[15] = v17;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[8] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_44_2(v18);
  OUTLINED_FUNCTION_53_6();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_65_1();

  return v24(v20, v21, v22, v23, v24, v25, v26, v27);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[6];
    v12 = v3[7];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  v2 = v0[5];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_45_0();
  v5 = OUTLINED_FUNCTION_46_15(v4);
  v6 = OUTLINED_FUNCTION_0_4(v5, xmmword_424FF0);
  OUTLINED_FUNCTION_54_2(v6, v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v8 = type metadata accessor for SpeakableString();
  v9 = OUTLINED_FUNCTION_58(v8);
  v10 = v0[5];
  if (v9 == 1)
  {
    outlined destroy of SpeakableString?(v0[5], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = v0[3];
  OUTLINED_FUNCTION_15_48();
  v1[10] = v15;
  v1[11] = v16;
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  v1[12] = v14;
  v1[15] = v17;
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_46_1();
  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_114_0(v18);
  OUTLINED_FUNCTION_43_4(55);
  OUTLINED_FUNCTION_65_1();

  return v22(v19, v20, v21, v22, v23, v24, v25, v26);
}

void SearchCallHistoryCATs.errorWithCodeAppConfigurationRequired(appName:intent:)()
{
  OUTLINED_FUNCTION_61_6();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v9 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_0_4(v9, xmmword_424FF0);
  outlined init with copy of SpeakableString?(v4, v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v10 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v10);
  if (v11)
  {
    outlined destroy of SpeakableString?(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v9 + 48));
    OUTLINED_FUNCTION_40(v4);
    v13 = *(v12 + 32);
    OUTLINED_FUNCTION_47_15();
    v14();
  }

  OUTLINED_FUNCTION_15_48();
  *(v9 + 80) = v15;
  *(v9 + 88) = v16;
  if (v2)
  {
    v17 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v18 = v2;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_18_2();
    *(v9 + 104) = 0;
    *(v9 + 112) = 0;
  }

  *(v9 + 96) = v18;
  *(v9 + 120) = v17;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  OUTLINED_FUNCTION_180();

  OUTLINED_FUNCTION_60_1();
}

void SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:completion:)()
{
  OUTLINED_FUNCTION_66();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_200();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v16 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_0_104(v16, xmmword_427BC0);
  if (v2)
  {
    v5 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  *(v16 + 48) = v5;
  OUTLINED_FUNCTION_39_0();
  *(v16 + 72) = v17;
  *(v16 + 80) = 0xD000000000000014;
  *(v16 + 88) = v18;
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  *(v16 + 96) = v3;
  OUTLINED_FUNCTION_71_8();
  *(v16 + 120) = v19;
  *(v16 + 128) = v20;
  *(v16 + 136) = 0xE600000000000000;
  if (v0)
  {
    type metadata accessor for SirikitDeviceState();
    v21 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v16 + 152) = 0;
    *(v16 + 160) = 0;
  }

  *(v16 + 144) = v21;
  OUTLINED_FUNCTION_14_8();
  *(v16 + 168) = v22;
  *(v16 + 176) = v23;
  *(v16 + 184) = 0xE600000000000000;
  if (v11)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v24 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
  }

  *(v16 + 192) = v24;
  OUTLINED_FUNCTION_55_22();
  *(v16 + 216) = v25;
  *(v16 + 224) = v26;
  OUTLINED_FUNCTION_56_12();
  *(v16 + 232) = v27;
  *(v16 + 240) = v9 & 1;
  OUTLINED_FUNCTION_21_40();
  *(v16 + 264) = v28;
  *(v16 + 272) = v29;
  *(v16 + 280) = 0xE700000000000000;
  outlined init with copy of SpeakableString?(v7, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v30 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v30);
  if (v31)
  {

    outlined destroy of SpeakableString?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v16 + 288) = 0u;
    *(v16 + 304) = 0u;
  }

  else
  {
    *(v16 + 312) = v2;
    __swift_allocate_boxed_opaque_existential_1((v16 + 288));
    OUTLINED_FUNCTION_40(v2);
    v33 = *(v32 + 32);
    OUTLINED_FUNCTION_47_15();
    v34();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_15();
  v10[7] = a9;
  v10[8] = v9;
  OUTLINED_FUNCTION_157_0(v11, v12, v13, v14, v15, v16, v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v19);
  v21 = *(v20 + 64);
  v10[9] = OUTLINED_FUNCTION_45();
  v22 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v22, v23, v24);
}

uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v10 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_19_16();
  v15 = OUTLINED_FUNCTION_193(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v16 = *(v10 + 24);
  }

  OUTLINED_FUNCTION_219();
  v17 = *(v10 + 105);
  *(v11 + 48) = v18;
  OUTLINED_FUNCTION_104_3();
  *(v11 + 72) = v19;
  *(v11 + 80) = v12;
  *(v11 + 88) = v20;
  if (v21)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v23 = *(v10 + 32);
    v22 = &type metadata for Double;
  }

  v24 = *(v10 + 40);
  OUTLINED_FUNCTION_36_26(v22);
  if (v24)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v25 = *(v10 + 48);
  *(v11 + 144) = v24;
  OUTLINED_FUNCTION_14_8();
  v28 = OUTLINED_FUNCTION_98_5(v26, v27);
  if (v25)
  {
    v28 = type metadata accessor for PhoneSearchCallHistoryIntent(v28);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  v29 = *(v10 + 72);
  v30 = *(v10 + 56);
  v31 = *(v10 + 106);
  OUTLINED_FUNCTION_20_40(v28);
  *(v11 + 240) = v32;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = v34;
  *(v11 + 272) = v33;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v35);
  v36 = type metadata accessor for SpeakableString();
  v37 = OUTLINED_FUNCTION_69_12(v36);
  v38 = *(v10 + 72);
  v39 = *(v10 + 40);
  v40 = *(v10 + 48);
  if (v37 == 1)
  {
    v41 = *(v10 + 48);

    outlined destroy of SpeakableString?(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v43 = *(v42 + 32);
    OUTLINED_FUNCTION_123_0();
    v44();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 88) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_109_3(v45);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v10 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_19_16();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_0_104(v15, xmmword_427BC0);
  if (v13)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  else
  {
    v16 = *(v10 + 16);
  }

  OUTLINED_FUNCTION_219();
  v17 = *(v10 + 97);
  *(v11 + 48) = v18;
  OUTLINED_FUNCTION_104_3();
  *(v11 + 72) = v19;
  *(v11 + 80) = v12;
  *(v11 + 88) = v20;
  if (v21)
  {
    OUTLINED_FUNCTION_5_15();
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v23 = *(v10 + 24);
    v22 = &type metadata for Double;
  }

  v24 = *(v10 + 32);
  OUTLINED_FUNCTION_36_26(v22);
  if (v24)
  {
    type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  v25 = *(v10 + 40);
  *(v11 + 144) = v24;
  OUTLINED_FUNCTION_14_8();
  v28 = OUTLINED_FUNCTION_98_5(v26, v27);
  if (v25)
  {
    v28 = type metadata accessor for PhoneSearchCallHistoryIntent(v28);
  }

  else
  {
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  v29 = *(v10 + 64);
  v30 = *(v10 + 48);
  v31 = *(v10 + 98);
  OUTLINED_FUNCTION_20_40(v28);
  *(v11 + 240) = v32;
  OUTLINED_FUNCTION_21_40();
  *(v11 + 264) = v34;
  *(v11 + 272) = v33;
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v35);
  v36 = type metadata accessor for SpeakableString();
  v37 = OUTLINED_FUNCTION_69_12(v36);
  v38 = *(v10 + 64);
  v39 = *(v10 + 32);
  v40 = *(v10 + 40);
  if (v37 == 1)
  {
    v41 = *(v10 + 40);

    outlined destroy of SpeakableString?(v38, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_225();
  }

  else
  {
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_19_12();
    v43 = *(v42 + 32);
    OUTLINED_FUNCTION_123_0();
    v44();
  }

  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v45 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_77_12(v45);
  *v46 = v47;
  OUTLINED_FUNCTION_156_0(v46);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
}

uint64_t SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_61_3(v1, v2, v3, v4, v5, v6, v7, v8);
  *(v0 + 96) = v9;
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_45();
  v15 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v15, v16, v17);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

void SearchCallHistoryCATs.intentHandledResponse(callRecordCount:totalCallRecordCount:device:intent:isFirstPartyApp:appName:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_133_2(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_2_48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_0_104(v13, xmmword_427BC0);
  if (v1)
  {
    v0 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  *(v13 + 48) = v0;
  OUTLINED_FUNCTION_39_0();
  *(v13 + 72) = v14;
  *(v13 + 80) = 0xD000000000000014;
  *(v13 + 88) = v15;
  if (v7)
  {
    v6 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  *(v13 + 96) = v6;
  OUTLINED_FUNCTION_71_8();
  *(v13 + 120) = v16;
  *(v13 + 128) = v17;
  *(v13 + 136) = 0xE600000000000000;
  if (v2)
  {
    type metadata accessor for SirikitDeviceState();
    v18 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  *(v13 + 144) = v18;
  OUTLINED_FUNCTION_14_8();
  *(v13 + 168) = v19;
  *(v13 + 176) = v20;
  *(v13 + 184) = 0xE600000000000000;
  if (v3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v21 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  *(v13 + 192) = v21;
  OUTLINED_FUNCTION_55_22();
  *(v13 + 216) = v22;
  *(v13 + 224) = v23;
  OUTLINED_FUNCTION_56_12();
  *(v13 + 232) = v24;
  *(v13 + 240) = v5 & 1;
  OUTLINED_FUNCTION_21_40();
  *(v13 + 264) = v25;
  *(v13 + 272) = v26;
  *(v13 + 280) = 0xE700000000000000;
  v27 = OUTLINED_FUNCTION_69();
  outlined init with copy of SpeakableString?(v27, v28, v29, v30);
  v31 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v4);
  if (v32)
  {

    outlined destroy of SpeakableString?(v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v31;
    __swift_allocate_boxed_opaque_existential_1((v13 + 288));
    OUTLINED_FUNCTION_6_0();
    (*(v33 + 32))();
  }

  OUTLINED_FUNCTION_205();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_104(v5, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  v5[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v5[4].n128_u64[1] = v6;
  v5[5].n128_u64[0] = 0xD000000000000014;
  v5[5].n128_u64[1] = v7;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v8 = &type metadata for Double;
  }

  v5[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_8_66(v8);
  if (v0)
  {
    v9 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v10 = v0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v10;
  v5[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_197(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v15 = *(v10 + 24);
  }

  OUTLINED_FUNCTION_213();
  v16 = *(v10 + 81);
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 32);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 40);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_175(v23);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_46_15(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v15 = *(v10 + 16);
  }

  OUTLINED_FUNCTION_213();
  v16 = *(v10 + 73);
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 32);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_22_19(v23);
  *v24 = v25;
  v24[1] = SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:);
  v26 = *(v10 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_104(v5, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  OUTLINED_FUNCTION_219();
  v5[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v5[4].n128_u64[1] = v6;
  v5[5].n128_u64[0] = v4;
  v5[5].n128_u64[1] = v7;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v8 = &type metadata for Double;
  }

  v5[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_29_29(v8);
  if (v0)
  {
    v9 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v10 = v0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v10;
  v5[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.intentHandledResponseMissedCall(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToCallBack()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  *(v0 + 16) = xmmword_424FD0;
  v1 = OUTLINED_FUNCTION_3_98(v0);
  OUTLINED_FUNCTION_182(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_76_9(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_134_0(v6);
  OUTLINED_FUNCTION_174();

  return v8();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_3_98(v2);
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_135_1(v5);
  v6 = OUTLINED_FUNCTION_34_21(40);

  return v7(v6);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  *(v0 + 16) = xmmword_424FD0;
  v1 = OUTLINED_FUNCTION_3_98(v0);
  OUTLINED_FUNCTION_138_2(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.offerToContinueReading(isLastPage:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_23_31(v0, xmmword_424FD0);
  OUTLINED_FUNCTION_70_9();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  OUTLINED_FUNCTION_182(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_78_0();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_70_9();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  *(v0 + 32) = v2;
  *(v2 + 16) = v6;
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_76_9(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_134_0(v8);
  OUTLINED_FUNCTION_174();

  return v10();
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_70_9();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = v6;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_135_1(v7);
  v8 = OUTLINED_FUNCTION_34_21(44);

  return v9(v8);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v0 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_23_31(v0, xmmword_424FD0);
  OUTLINED_FUNCTION_70_9();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  OUTLINED_FUNCTION_138_2(v1, &type metadata for Bool);
  OUTLINED_FUNCTION_180();
}

uint64_t SearchCallHistoryCATs.offerToReadMoreCallRecords(isLastWindow:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.promptForCallTypes()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.promptForDateCreated()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  v3 = OUTLINED_FUNCTION_65_17();

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.promptForRecipient()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(36);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.promptForUnseen()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  v1[1] = closure #1 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_35_14();

  return v3();
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_36_1(33);

  return v4(v3);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:completion:)(unint64_t a1, char a2, unint64_t a3, char a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v10 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_1_106(v10, xmmword_42BF20);
  if (a1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v11 = a1;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v10[3].n128_u64[1] = 0;
    v10[4].n128_u64[0] = 0;
  }

  v10[3].n128_u64[0] = v11;
  OUTLINED_FUNCTION_74_0();
  v10[4].n128_u64[1] = v13;
  v10[5].n128_u64[0] = v12 & 0xFFFFFFFFFFFFLL | 0x664F000000000000;
  v10[5].n128_u64[1] = 0xED000070756F7247;
  v10[6].n128_u8[0] = a2 & 1;
  OUTLINED_FUNCTION_14_8();
  v10[7].n128_u64[1] = &type metadata for Bool;
  v10[8].n128_u64[0] = v14;
  v10[8].n128_u64[1] = 0xE600000000000000;
  if (a3)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v15 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v10[9].n128_u64[1] = 0;
    v10[10].n128_u64[0] = 0;
  }

  v10[9].n128_u64[0] = v15;
  OUTLINED_FUNCTION_27_2();
  v10[10].n128_u64[1] = v16;
  v10[11].n128_u64[0] = 0xD000000000000013;
  v10[11].n128_u64[1] = v17;
  v10[12].n128_u8[0] = a4 & 1;
  OUTLINED_FUNCTION_27_2();
  v10[13].n128_u64[1] = &type metadata for Bool;
  v10[14].n128_u64[0] = 0xD000000000000012;
  v10[14].n128_u64[1] = v18;
  v10[16].n128_u64[1] = &type metadata for Bool;
  v10[15].n128_u8[0] = a5 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 74) = a6;
  *(v7 + 73) = a5;
  *(v7 + 32) = a4;
  *(v7 + 40) = v6;
  *(v7 + 72) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_187();
  *(v10 + 48) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF20);
  if (v11)
  {
    type metadata accessor for PhoneCallRecord(0);
    v13 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v14 = *(v10 + 32);
  v15 = *(v10 + 72);
  v12[3].n128_u64[0] = v13;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v16, v17);
  v12[6].n128_u8[0] = v18;
  OUTLINED_FUNCTION_14_8();
  v12[7].n128_u64[1] = &type metadata for Bool;
  v12[8].n128_u64[0] = v19;
  v20 = OUTLINED_FUNCTION_137_2();
  if (v14)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[9].n128_u64[1] = 0;
    v12[10].n128_u64[0] = 0;
  }

  v21 = *(v10 + 74);
  v22 = *(v10 + 73);
  v12[9].n128_u64[0] = v14;
  OUTLINED_FUNCTION_30_2();
  v12[10].n128_u64[1] = v23;
  v12[11].n128_u64[0] = v24;
  v12[11].n128_u64[1] = v25;
  v12[12].n128_u8[0] = v26;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v27);
  v28 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_22_19(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_44_2(v30);
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_60();

  return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v12 = OUTLINED_FUNCTION_187();
  *(v10 + 40) = v12;
  OUTLINED_FUNCTION_1_106(v12, xmmword_42BF20);
  if (v11)
  {
    type metadata accessor for PhoneCallRecord(0);
    v13 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v14 = *(v10 + 24);
  v15 = *(v10 + 64);
  v12[3].n128_u64[0] = v13;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v16, v17);
  v12[6].n128_u8[0] = v18;
  OUTLINED_FUNCTION_14_8();
  v12[7].n128_u64[1] = &type metadata for Bool;
  v12[8].n128_u64[0] = v19;
  v20 = OUTLINED_FUNCTION_137_2();
  if (v14)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v20);
  }

  else
  {
    v12[9].n128_u64[1] = 0;
    v12[10].n128_u64[0] = 0;
  }

  v21 = *(v10 + 66);
  v22 = *(v10 + 65);
  v12[9].n128_u64[0] = v14;
  OUTLINED_FUNCTION_30_2();
  v12[10].n128_u64[1] = v23;
  v12[11].n128_u64[0] = v24;
  v12[11].n128_u64[1] = v25;
  v12[12].n128_u8[0] = v26;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_217(v27);
  v28 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_16_12(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_114_0(v30);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_60();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a4;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readCallRecord(callRecord:isLastOfGroup:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v11 = OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_1_106(v11, xmmword_42BF20);
  if (v10)
  {
    type metadata accessor for PhoneCallRecord(0);
    v12 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_14();
  }

  v11[3].n128_u64[0] = v12;
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_79_0(v13, v14);
  v11[6].n128_u8[0] = v8 & 1;
  OUTLINED_FUNCTION_14_8();
  v11[7].n128_u64[1] = &type metadata for Bool;
  v11[8].n128_u64[0] = v15;
  v11[8].n128_u64[1] = 0xE600000000000000;
  if (v6)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v16 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v11[9].n128_u64[1] = 0;
    v11[10].n128_u64[0] = 0;
  }

  v11[9].n128_u64[0] = v16;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_172();
  v11[10].n128_u64[1] = v17;
  v11[11].n128_u64[0] = v18;
  v11[11].n128_u64[1] = v19;
  v11[12].n128_u8[0] = v4 & 1;
  OUTLINED_FUNCTION_27_2();
  v11[13].n128_u64[1] = &type metadata for Bool;
  v11[14].n128_u64[0] = v0;
  v11[14].n128_u64[1] = v20;
  v11[16].n128_u64[1] = &type metadata for Bool;
  v11[15].n128_u8[0] = v2 & 1;

  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_75_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_104(v5, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_120_2();
  }

  v5[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v5[4].n128_u64[1] = v6;
  v5[5].n128_u64[0] = 0xD000000000000014;
  v5[5].n128_u64[1] = v7;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_118_3();
  }

  else
  {
    v8 = &type metadata for Double;
  }

  v5[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_8_66(v8);
  if (v0)
  {
    v9 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v10 = v0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v10;
  v5[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_197(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v15 = *(v10 + 24);
  }

  OUTLINED_FUNCTION_213();
  v16 = *(v10 + 81);
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 32);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 40);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  OUTLINED_FUNCTION_168();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 64) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_175(v23);
  OUTLINED_FUNCTION_50_24();
  OUTLINED_FUNCTION_65_2();

  return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

{
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v10 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v13 = OUTLINED_FUNCTION_47();
  v14 = OUTLINED_FUNCTION_46_15(v13);
  OUTLINED_FUNCTION_0_104(v14, xmmword_426980);
  if (v12)
  {
    OUTLINED_FUNCTION_5_15();
    v11[7] = 0;
    v11[8] = 0;
  }

  else
  {
    v15 = *(v10 + 16);
  }

  OUTLINED_FUNCTION_213();
  v16 = *(v10 + 73);
  OUTLINED_FUNCTION_28_26(v17);
  if (v18)
  {
    OUTLINED_FUNCTION_5_15();
    v11[13] = 0;
    v11[14] = 0;
  }

  else
  {
    v20 = *(v10 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 32);
  v11[12] = v20;
  OUTLINED_FUNCTION_8_66(v19);
  v22 = 0;
  if (v21)
  {
    v22 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  OUTLINED_FUNCTION_166(v22);
  OUTLINED_FUNCTION_11_3(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  OUTLINED_FUNCTION_168();
  v23 = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_22_19(v23);
  *v24 = v25;
  v24[1] = SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:);
  v26 = *(v10 + 40);
  OUTLINED_FUNCTION_49_25();
  OUTLINED_FUNCTION_65_2();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_94_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_104(v5, xmmword_426980);
  if (v4)
  {
    v3 = 0;
    OUTLINED_FUNCTION_158_0();
  }

  OUTLINED_FUNCTION_219();
  v5[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_39_0();
  v5[4].n128_u64[1] = v6;
  v5[5].n128_u64[0] = v4;
  v5[5].n128_u64[1] = v7;
  if (v2)
  {
    v1 = 0;
    OUTLINED_FUNCTION_159_0();
  }

  else
  {
    v8 = &type metadata for Double;
  }

  v5[6].n128_u64[0] = v1;
  OUTLINED_FUNCTION_29_29(v8);
  if (v0)
  {
    v9 = type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v10 = v0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_18_2();
    v5[9].n128_u64[1] = 0;
    v5[10].n128_u64[0] = 0;
  }

  v5[9].n128_u64[0] = v10;
  v5[10].n128_u64[1] = v9;
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_131_2();
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
  OUTLINED_FUNCTION_60_1();
}

uint64_t SearchCallHistoryCATs.readMissedCallHistoryIntroduction(callRecordCount:totalCallRecordCount:intent:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 73) = a4;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:completion:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, char a8, char a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_38_25(v17, xmmword_43CD90);
  if (a2)
  {
    a1 = 0;
    v17[3].n128_u64[1] = 0;
    v17[4].n128_u64[0] = 0;
  }

  v17[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v17[4].n128_u64[1] = v18;
  v17[5].n128_u64[0] = 0xD000000000000010;
  v17[5].n128_u64[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v17[6].n128_u64[0] = a3;
  OUTLINED_FUNCTION_27_2();
  v17[7].n128_u64[1] = v20;
  v17[8].n128_u64[0] = 0xD000000000000010;
  v17[8].n128_u64[1] = v21;
  v17[9].n128_u64[0] = a4;
  OUTLINED_FUNCTION_27_2();
  v17[10].n128_u64[1] = v22;
  v17[11].n128_u64[0] = 0xD000000000000010;
  v17[11].n128_u64[1] = v23;
  v17[12].n128_u64[0] = a5;
  OUTLINED_FUNCTION_36_7();
  v17[13].n128_u64[1] = v24;
  v17[14].n128_u64[0] = 0xD000000000000010;
  v17[14].n128_u64[1] = v25;
  v17[15].n128_u64[0] = a6;
  OUTLINED_FUNCTION_14_8();
  v17[16].n128_u64[1] = v26;
  v17[17].n128_u64[0] = v27;
  v17[17].n128_u64[1] = 0xE600000000000000;
  if (a7)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v28 = a7;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v17[18].n128_u64[1] = 0;
    v17[19].n128_u64[0] = 0;
  }

  v17[18].n128_u64[0] = v28;
  OUTLINED_FUNCTION_27_2();
  v17[19].n128_u64[1] = v29;
  v17[20].n128_u64[0] = 0xD000000000000013;
  v17[20].n128_u64[1] = v30;
  v17[21].n128_u8[0] = a8 & 1;
  OUTLINED_FUNCTION_39_0();
  v17[22].n128_u64[1] = v31;
  v17[23].n128_u64[0] = 0xD000000000000012;
  v17[23].n128_u64[1] = v32;
  v17[25].n128_u64[1] = v31;
  v17[24].n128_u8[0] = a9 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  *(v10 + 105) = a9;
  *(v10 + 64) = a8;
  *(v10 + 72) = v9;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 104) = a3;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v11, v12, v13);
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)()
{
  v1 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_185();
  *(v0 + 80) = v2;
  OUTLINED_FUNCTION_38_25(v2, xmmword_43CD90);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  else
  {
    v3 = *(v0 + 24);
  }

  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_119_3();
  v2[4].n128_u64[1] = v9;
  v2[5].n128_u64[0] = 0xD000000000000010;
  v2[5].n128_u64[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v2[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  v2[7].n128_u64[1] = v11;
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = v12;
  v2[9].n128_u64[0] = v7;
  OUTLINED_FUNCTION_27_2();
  v2[10].n128_u64[1] = v13;
  v2[11].n128_u64[0] = 0xD000000000000010;
  v2[11].n128_u64[1] = v14;
  v2[12].n128_u64[0] = v6;
  OUTLINED_FUNCTION_36_7();
  v2[13].n128_u64[1] = v15;
  v2[14].n128_u64[0] = 0xD000000000000010;
  v2[14].n128_u64[1] = v16;
  v2[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_223(v17, v18);
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    v2[18].n128_u64[1] = 0;
    v2[19].n128_u64[0] = 0;
  }

  v20 = *(v0 + 106);
  v21 = *(v0 + 105);
  v2[18].n128_u64[0] = v4;
  OUTLINED_FUNCTION_13_10();
  v2[19].n128_u64[1] = v22;
  v2[20].n128_u64[0] = 0xD000000000000013;
  v2[20].n128_u64[1] = v23;
  v2[21].n128_u8[0] = v24;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v25);
  v26 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 88) = v27;
  *v27 = v28;
  v27[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  v29 = *(v0 + 72);
  v30 = *(v0 + 16);

  return v32(v30, 0xD000000000000029, 0x8000000000453C20, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 96);

  return v2();
}

{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_185();
  *(v0 + 72) = v2;
  OUTLINED_FUNCTION_38_25(v2, xmmword_43CD90);
  if (v1)
  {
    OUTLINED_FUNCTION_5_15();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  else
  {
    v3 = *(v0 + 16);
  }

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 24);
  v2[3].n128_u64[0] = v3;
  OUTLINED_FUNCTION_119_3();
  v2[4].n128_u64[1] = v9;
  v2[5].n128_u64[0] = 0xD000000000000010;
  v2[5].n128_u64[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v2[6].n128_u64[0] = v8;
  OUTLINED_FUNCTION_27_2();
  v2[7].n128_u64[1] = v11;
  v2[8].n128_u64[0] = 0xD000000000000010;
  v2[8].n128_u64[1] = v12;
  v2[9].n128_u64[0] = v7;
  OUTLINED_FUNCTION_27_2();
  v2[10].n128_u64[1] = v13;
  v2[11].n128_u64[0] = 0xD000000000000010;
  v2[11].n128_u64[1] = v14;
  v2[12].n128_u64[0] = v6;
  OUTLINED_FUNCTION_36_7();
  v2[13].n128_u64[1] = v15;
  v2[14].n128_u64[0] = 0xD000000000000010;
  v2[14].n128_u64[1] = v16;
  v2[15].n128_u64[0] = v5;
  OUTLINED_FUNCTION_14_8();
  v19 = OUTLINED_FUNCTION_223(v17, v18);
  if (v4)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(v19);
  }

  else
  {
    v2[18].n128_u64[1] = 0;
    v2[19].n128_u64[0] = 0;
  }

  v20 = *(v0 + 98);
  v21 = *(v0 + 97);
  v2[18].n128_u64[0] = v4;
  OUTLINED_FUNCTION_13_10();
  v2[19].n128_u64[1] = v22;
  v2[20].n128_u64[0] = 0xD000000000000013;
  v2[20].n128_u64[1] = v23;
  v2[21].n128_u8[0] = v24;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_195(v25);
  v26 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  OUTLINED_FUNCTION_40_28(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_77_12(v27);
  *v28 = v29;
  v28[1] = SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:);
  v30 = *(v0 + 64);

  return v32(0xD000000000000029, 0x8000000000453C20, v2);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = OUTLINED_FUNCTION_5_2();

    return v14(v13);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_11();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  *(v10 + 56) = a7;
  *(v10 + 64) = v9;
  *(v10 + 98) = a9;
  *(v10 + 97) = a8;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 96) = a2;
  *(v10 + 16) = a1;
  v11 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v11, v12, v13);
}

uint64_t SearchCallHistoryCATs.readMultipleCallRecords(windowSize:callRecordsItem1:callRecordsItem2:callRecordsItem3:callRecordsItem4:intent:isSingleDateRequest:isTimeRangeRequest:)(unint64_t a1, char a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, char a8, char a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_38_25(v17, xmmword_43CD90);
  if (a2)
  {
    a1 = 0;
    v17[3].n128_u64[1] = 0;
    v17[4].n128_u64[0] = 0;
  }

  v17[3].n128_u64[0] = a1;
  OUTLINED_FUNCTION_39_0();
  v17[4].n128_u64[1] = v18;
  v17[5].n128_u64[0] = 0xD000000000000010;
  v17[5].n128_u64[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMd, &_sSay27PhoneCallFlowDelegatePlugin0aB6RecordCGMR);
  v17[6].n128_u64[0] = a3;
  OUTLINED_FUNCTION_27_2();
  v17[7].n128_u64[1] = v20;
  v17[8].n128_u64[0] = 0xD000000000000010;
  v17[8].n128_u64[1] = v21;
  v17[9].n128_u64[0] = a4;
  OUTLINED_FUNCTION_27_2();
  v17[10].n128_u64[1] = v22;
  v17[11].n128_u64[0] = 0xD000000000000010;
  v17[11].n128_u64[1] = v23;
  v17[12].n128_u64[0] = a5;
  OUTLINED_FUNCTION_36_7();
  v17[13].n128_u64[1] = v24;
  v17[14].n128_u64[0] = 0xD000000000000010;
  v17[14].n128_u64[1] = v25;
  v17[15].n128_u64[0] = a6;
  OUTLINED_FUNCTION_14_8();
  v17[16].n128_u64[1] = v26;
  v17[17].n128_u64[0] = v27;
  v17[17].n128_u64[1] = 0xE600000000000000;
  if (a7)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v28 = a7;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v17[18].n128_u64[1] = 0;
    v17[19].n128_u64[0] = 0;
  }

  v17[18].n128_u64[0] = v28;
  OUTLINED_FUNCTION_27_2();
  v17[19].n128_u64[1] = v29;
  v17[20].n128_u64[0] = 0xD000000000000013;
  v17[20].n128_u64[1] = v30;
  v17[21].n128_u8[0] = a8 & 1;
  OUTLINED_FUNCTION_39_0();
  v17[22].n128_u64[1] = v31;
  v17[23].n128_u64[0] = 0xD000000000000012;
  v17[23].n128_u64[1] = v32;
  v17[25].n128_u64[1] = v31;
  v17[24].n128_u8[0] = a9 & 1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22)
{
  OUTLINED_FUNCTION_66();
  v57 = v27;
  v58 = v28;
  v30 = v29;
  OUTLINED_FUNCTION_107_4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  OUTLINED_FUNCTION_170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v35 = OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_1_106(v35, xmmword_4441E0);
  if (v23)
  {
    type metadata accessor for PhoneCallRecord(0);
    v36 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
  }

  *(v35 + 48) = v36;
  OUTLINED_FUNCTION_14_8();
  *(v35 + 72) = v37;
  *(v35 + 80) = v38;
  *(v35 + 88) = 0xE600000000000000;
  if (v24)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v39 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    *(v35 + 104) = 0;
    *(v35 + 112) = 0;
  }

  *(v35 + 96) = v39;
  OUTLINED_FUNCTION_27_2();
  *(v35 + 120) = v40;
  *(v35 + 128) = 0xD000000000000013;
  *(v35 + 136) = v41;
  *(v35 + 144) = v22 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_216(v42);
  *(v35 + 192) = v43;
  OUTLINED_FUNCTION_36_7();
  *(v35 + 216) = &type metadata for Bool;
  *(v35 + 224) = 0xD000000000000011;
  *(v35 + 232) = v44;
  outlined init with copy of SpeakableString?(v26, v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v45 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v45);
  if (v46)
  {

    outlined destroy of SpeakableString?(v25, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v35 + 240) = 0u;
    *(v35 + 256) = 0u;
  }

  else
  {
    *(v35 + 264) = v22;
    __swift_allocate_boxed_opaque_existential_1((v35 + 240));
    OUTLINED_FUNCTION_19_12();
    (*(v47 + 32))();
  }

  OUTLINED_FUNCTION_11_56();
  *(v35 + 272) = v49;
  *(v35 + 280) = v50;
  if (v58)
  {
    v30 = 0;
    v51 = 0;
    *(v35 + 296) = 0;
    *(v35 + 304) = 0;
  }

  else
  {
    v51 = &type metadata for Double;
  }

  *(v35 + 288) = v30;
  *(v35 + 312) = v51;
  *(v35 + 320) = 0xD000000000000011;
  *(v35 + 328) = 0x8000000000460E40;
  if (v48)
  {
    v52 = 0;
    v53 = 0;
    *(v35 + 344) = 0;
    *(v35 + 352) = 0;
  }

  else
  {
    v53 = &type metadata for Double;
    v52 = v57;
  }

  *(v35 + 336) = v52;
  *(v35 + 360) = v53;
  *(v35 + 368) = 0xD000000000000021;
  *(v35 + 376) = 0x800000000045AF80;
  *(v35 + 384) = a22 & 1;
  OUTLINED_FUNCTION_215();
  *(v35 + 408) = &type metadata for Bool;
  *(v35 + 416) = v54;
  OUTLINED_FUNCTION_214();
  *(v35 + 424) = v55;
  *(v35 + 456) = &type metadata for Bool;
  *(v35 + 432) = v56 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  *(v13 + 56) = v14;
  *(v13 + 64) = v12;
  *(v13 + 109) = a12;
  *(v13 + 108) = a11;
  OUTLINED_FUNCTION_82_7(v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  *(v13 + 72) = OUTLINED_FUNCTION_45();
  v26 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v26, v27, v28);
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_228();
  v15 = OUTLINED_FUNCTION_193(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_4441E0);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 32);
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v16);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v18);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v19);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v20);
  OUTLINED_FUNCTION_176();
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  v25 = *(v11 + 106);
  OUTLINED_FUNCTION_4_78();
  v12[34] = v26;
  v12[35] = v27;
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v30 = *(v11 + 48);
    v29 = &type metadata for Double;
  }

  v31 = *(v11 + 107);
  OUTLINED_FUNCTION_33_5(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v33 = *(v11 + 56);
  }

  v34 = *(v11 + 109);
  v35 = *(v11 + 108);
  v12[42] = v33;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v36);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 88) = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_109_3(v37);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v43(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v13 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v14 = OUTLINED_FUNCTION_228();
  v15 = OUTLINED_FUNCTION_192(v14);
  OUTLINED_FUNCTION_1_106(v15, xmmword_4441E0);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 24);
  v12[6] = v13;
  OUTLINED_FUNCTION_10_67(v16);
  if (v17)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    v12[13] = 0;
    v12[14] = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v18);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_72_10();
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v19);
  v20 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v20);
  OUTLINED_FUNCTION_173();
  if (v21)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_123_0();
    v24();
  }

  v25 = *(v11 + 98);
  OUTLINED_FUNCTION_4_78();
  v12[34] = v26;
  v12[35] = v27;
  if (v28)
  {
    OUTLINED_FUNCTION_5_15();
    v12[37] = 0;
    v12[38] = 0;
  }

  else
  {
    v30 = *(v11 + 40);
    v29 = &type metadata for Double;
  }

  v31 = *(v11 + 99);
  OUTLINED_FUNCTION_33_5(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_5_15();
    v12[43] = 0;
    v12[44] = 0;
  }

  else
  {
    v33 = *(v11 + 48);
  }

  v34 = *(v11 + 101);
  v35 = *(v11 + 100);
  v12[42] = v33;
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_105(v36);
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_77_12(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_156_0(v38);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v43(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10, unsigned __int8 a11)
{
  OUTLINED_FUNCTION_15();
  *(v11 + 100) = __PAIR16__(a11, a10);
  *(v11 + 99) = a9;
  OUTLINED_FUNCTION_61_3(v12, v13, v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_222(v20, v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v23);
  v25 = *(v24 + 64);
  *(v11 + 64) = OUTLINED_FUNCTION_45();
  v26 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v26, v27, v28);
}

void SearchCallHistoryCATs.readNewOrSavedVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:isLeadingSavedVoiceMailPostPrompt:isNewVoicemail:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, char a22)
{
  OUTLINED_FUNCTION_66();
  v58 = v28;
  v59 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_111_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v35);
  OUTLINED_FUNCTION_129_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v36 = OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_1_106(v36, xmmword_4441E0);
  if (v24)
  {
    type metadata accessor for PhoneCallRecord(0);
    v37 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v36[3].n128_u64[0] = v37;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v38, v39);
  if (v25)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v36[6].n128_u64[1] = 0;
    v36[7].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_125_2();
  v36[6].n128_u64[0] = v40;
  OUTLINED_FUNCTION_27_2();
  v36[7].n128_u64[1] = v41;
  v36[8].n128_u64[0] = v23 | 2;
  v36[8].n128_u64[1] = v42;
  v36[9].n128_u8[0] = v22 & 1;
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_220(v43);
  v36[12].n128_u8[0] = v44;
  OUTLINED_FUNCTION_36_7();
  v36[13].n128_u64[1] = &type metadata for Bool;
  v36[14].n128_u64[0] = v23;
  v36[14].n128_u64[1] = v45;
  outlined init with copy of SpeakableString?(v27, v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v46 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_0(v26);
  if (v47)
  {

    outlined destroy of SpeakableString?(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v36[16].n128_u64[1] = v46;
    __swift_allocate_boxed_opaque_existential_1(&v36[15]);
    OUTLINED_FUNCTION_6_0();
    (*(v48 + 32))();
  }

  OUTLINED_FUNCTION_11_56();
  v36[17].n128_u64[0] = v50;
  v36[17].n128_u64[1] = v51;
  if (v59)
  {
    v31 = 0;
    v52 = 0;
    v36[18].n128_u64[1] = 0;
    v36[19].n128_u64[0] = 0;
  }

  else
  {
    v52 = &type metadata for Double;
  }

  v36[18].n128_u64[0] = v31;
  v36[19].n128_u64[1] = v52;
  v36[20].n128_u64[0] = v23;
  v36[20].n128_u64[1] = 0x8000000000460E40;
  if (v49)
  {
    v53 = 0;
    v54 = 0;
    v36[21].n128_u64[1] = 0;
    v36[22].n128_u64[0] = 0;
  }

  else
  {
    v54 = &type metadata for Double;
    v53 = v58;
  }

  v36[21].n128_u64[0] = v53;
  v36[22].n128_u64[1] = v54;
  v36[23].n128_u64[0] = v23 + 16;
  v36[23].n128_u64[1] = 0x800000000045AF80;
  v36[24].n128_u8[0] = a22 & 1;
  OUTLINED_FUNCTION_215();
  v36[25].n128_u64[1] = &type metadata for Bool;
  v36[26].n128_u64[0] = v55;
  OUTLINED_FUNCTION_214();
  v36[26].n128_u64[1] = v56;
  v36[28].n128_u64[1] = &type metadata for Bool;
  v36[27].n128_u8[0] = v57 & 1;
  dispatch thunk of CATWrapper.execute(catId:parameters:)();

  OUTLINED_FUNCTION_65();
}

void SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:completion:)()
{
  OUTLINED_FUNCTION_66();
  v7 = v6;
  v35 = v8;
  v10 = v9;
  OUTLINED_FUNCTION_107_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_1_106(v15, xmmword_431D00);
  if (v1)
  {
    type metadata accessor for PhoneCallRecord(0);
    v16 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_68_11();
  }

  v15[3].n128_u64[0] = v16;
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_177(v17, v18);
  if (v2)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
    v19 = v2;
  }

  else
  {
    OUTLINED_FUNCTION_18_2();
    v15[6].n128_u64[1] = 0;
    v15[7].n128_u64[0] = 0;
  }

  v15[6].n128_u64[0] = v19;
  OUTLINED_FUNCTION_27_2();
  v15[7].n128_u64[1] = v20;
  v15[8].n128_u64[0] = 0xD000000000000013;
  v15[8].n128_u64[1] = v21;
  v15[9].n128_u8[0] = v0 & 1;
  OUTLINED_FUNCTION_39_0();
  v15[10].n128_u64[1] = v22;
  v15[11].n128_u64[0] = 0xD000000000000012;
  v15[11].n128_u64[1] = v23;
  v15[12].n128_u8[0] = v5 & 1;
  OUTLINED_FUNCTION_119_3();
  v15[13].n128_u64[1] = v24;
  v15[14].n128_u64[0] = 0xD000000000000011;
  v15[14].n128_u64[1] = v25;
  outlined init with copy of SpeakableString?(v4, v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v26 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_150_0(v26);
  if (v27)
  {

    outlined destroy of SpeakableString?(v3, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_202();
  }

  else
  {
    v15[16].n128_u64[1] = v0;
    __swift_allocate_boxed_opaque_existential_1(&v15[15]);
    OUTLINED_FUNCTION_19_12();
    (*(v28 + 32))();
  }

  OUTLINED_FUNCTION_4_78();
  v15[17].n128_u64[0] = v29;
  v15[17].n128_u64[1] = v30;
  if (v35)
  {
    v10 = 0;
    v15[18].n128_u64[1] = 0;
    v15[19].n128_u64[0] = 0;
  }

  v15[18].n128_u64[0] = v10;
  OUTLINED_FUNCTION_13_10();
  v15[19].n128_u64[1] = v31;
  v15[20].n128_u64[0] = 0xD000000000000011;
  v15[20].n128_u64[1] = v32;
  if (v33)
  {
    v7 = 0;
    v34 = 0;
    v15[21].n128_u64[1] = 0;
    v15[22].n128_u64[0] = 0;
  }

  else
  {
    v34 = &type metadata for Double;
  }

  v15[21].n128_u64[0] = v7;
  v15[22].n128_u64[1] = v34;
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();

  OUTLINED_FUNCTION_65();
}

uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_221();
  v1[7] = v2;
  v1[8] = v0;
  OUTLINED_FUNCTION_82_7(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_10();
  return OUTLINED_FUNCTION_17_1(v14, v15, v16);
}

uint64_t SearchCallHistoryCATs.readNewVoiceMailRecord(callRecord:intent:isSingleDateRequest:isTimeRangeRequest:voiceMailPosition:newRecordsCount:savedRecordsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186();
  v16 = OUTLINED_FUNCTION_193(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_431D00);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v18 = *(v11 + 32);
  *(v12 + 48) = v14;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v12 + 168) = v20;
  *(v12 + 176) = v13 + 1;
  *(v12 + 184) = v21;
  *(v12 + 192) = v22;
  OUTLINED_FUNCTION_119_3();
  *(v12 + 216) = v23;
  *(v12 + 224) = v13;
  *(v12 + 232) = v24;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v25);
  v26 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v26);
  OUTLINED_FUNCTION_176();
  if (v27)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_123_0();
    v30();
  }

  v31 = *(v11 + 106);
  OUTLINED_FUNCTION_4_78();
  *(v12 + 272) = v32;
  *(v12 + 280) = v33;
  if (v34)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  else
  {
    v36 = *(v11 + 48);
    v35 = &type metadata for Double;
  }

  v37 = *(v11 + 107);
  OUTLINED_FUNCTION_33_5(v35);
  if (v38)
  {
    OUTLINED_FUNCTION_160_0();
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
  }

  else
  {
    v39 = *(v11 + 56);
    v40 = &type metadata for Double;
  }

  *(v12 + 336) = v39;
  *(v12 + 360) = v40;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v11 + 88) = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_109_3(v41);
  OUTLINED_FUNCTION_66_15();
  OUTLINED_FUNCTION_60();

  return v47(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
}

{
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_31();
  v14 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_186();
  v16 = OUTLINED_FUNCTION_192(v15);
  OUTLINED_FUNCTION_1_106(v16, xmmword_431D00);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v18 = *(v11 + 24);
  *(v12 + 48) = v14;
  OUTLINED_FUNCTION_10_67(v17);
  if (v18)
  {
    type metadata accessor for PhoneSearchCallHistoryIntent(0);
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_57_22(v19);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_13_10();
  *(v12 + 168) = v20;
  *(v12 + 176) = v13 + 1;
  *(v12 + 184) = v21;
  *(v12 + 192) = v22;
  OUTLINED_FUNCTION_119_3();
  *(v12 + 216) = v23;
  *(v12 + 224) = v13;
  *(v12 + 232) = v24;
  OUTLINED_FUNCTION_169(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR, v25);
  v26 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_69_12(v26);
  OUTLINED_FUNCTION_173();
  if (v27)
  {

    outlined destroy of SpeakableString?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_165_0();
  }

  else
  {
    OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_19_12();
    v29 = *(v28 + 32);
    OUTLINED_FUNCTION_123_0();
    v30();
  }

  v31 = *(v11 + 98);
  OUTLINED_FUNCTION_4_78();
  *(v12 + 272) = v32;
  *(v12 + 280) = v33;
  if (v34)
  {
    OUTLINED_FUNCTION_5_15();
    *(v12 + 296) = 0;
    *(v12 + 304) = 0;
  }

  else
  {
    v36 = *(v11 + 40);
    v35 = &type metadata for Double;
  }

  v37 = *(v11 + 99);
  OUTLINED_FUNCTION_33_5(v35);
  if (v38)
  {
    OUTLINED_FUNCTION_160_0();
    *(v12 + 344) = 0;
    *(v12 + 352) = 0;
  }

  else
  {
    v39 = *(v11 + 48);
    v40 = &type metadata for Double;
  }

  *(v12 + 336) = v39;
  *(v12 + 360) = v40;
  OUTLINED_FUNCTION_7_67(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v41 = swift_task_alloc();
  v42 = OUTLINED_FUNCTION_77_12(v41);
  *v42 = v43;
  OUTLINED_FUNCTION_156_0(v42);
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_60();

  return v47(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10);
}